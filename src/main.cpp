#include <iostream>
#include <vector>
#include <chrono>
#include <fstream>
#include <cstdint>
#include <algorithm>

#pragma pack(push, 1)
struct BMPHeader {
    uint16_t file_type{0x4D42};
    uint32_t file_size{0};
    uint16_t reserved1{0};
    uint16_t reserved2{0};
    uint32_t offset_data{54};
};

struct BMPInfoHeader {
    uint32_t size{40};
    int32_t width{0};
    int32_t height{0};
    uint16_t planes{1};
    uint16_t bit_count{24};
    uint32_t compression{0};
    uint32_t size_image{0};
    int32_t x_pixels_per_meter{0};
    int32_t y_pixels_per_meter{0};
    uint32_t colors_used{0};
    uint32_t colors_important{0};
};
#pragma pack(pop)

struct Pixel {
    float r, g, b;
};

// Зчитування 24-бітного BMP файлу
bool load_bmp(const std::string& filename, std::vector<Pixel>& image, int& width, int& height) {
    std::ifstream file(filename, std::ios::binary);
    if (!file) return false;

    BMPHeader header;
    BMPInfoHeader info;
    file.read(reinterpret_cast<char*>(&header), sizeof(header));
    file.read(reinterpret_cast<char*>(&info), sizeof(info));

    if (header.file_type != 0x4D42 || info.bit_count != 24) {
        std::cerr << "Підтримуються лише 24-бітні BMP файли!" << std::endl;
        return false;
    }

    width = info.width;
    height = std::abs(info.height);
    image.resize(width * height);

    int row_padding = (4 - (width * 3) % 4) % 4;
    file.seekg(header.offset_data, std::ios::beg);

    bool top_down = info.height < 0;

    for (int y = 0; y < height; ++y) {
        int row = top_down ? y : (height - 1 - y);
        for (int x = 0; x < width; ++x) {
            uint8_t bgr[3];
            file.read(reinterpret_cast<char*>(bgr), 3);
            image[row * width + x] = {
                static_cast<float>(bgr[2]),
                static_cast<float>(bgr[1]),
                static_cast<float>(bgr[0])
            };
        }
        file.seekg(row_padding, std::ios::cur);
    }
    return true;
}

// Збереження 24-бітного BMP файлу
bool save_bmp(const std::string& filename, const std::vector<Pixel>& image, int width, int height) {
    std::ofstream file(filename, std::ios::binary);
    if (!file) return false;

    int row_padding = (4 - (width * 3) % 4) % 4;
    uint32_t data_size = (width * 3 + row_padding) * height;

    BMPHeader header;
    header.file_size = sizeof(BMPHeader) + sizeof(BMPInfoHeader) + data_size;

    BMPInfoHeader info;
    info.width = width;
    info.height = height;
    info.size_image = data_size;

    file.write(reinterpret_cast<const char*>(&header), sizeof(header));
    file.write(reinterpret_cast<const char*>(&info), sizeof(info));

    uint8_t padding[3] = {0, 0, 0};

    for (int y = height - 1; y >= 0; --y) {
        for (int x = 0; x < width; ++x) {
            const auto& px = image[y * width + x];
            uint8_t bgr[3] = {
                static_cast<uint8_t>(std::clamp(px.b, 0.0f, 255.0f)),
                static_cast<uint8_t>(std::clamp(px.g, 0.0f, 255.0f)),
                static_cast<uint8_t>(std::clamp(px.r, 0.0f, 255.0f))
            };
            file.write(reinterpret_cast<const char*>(bgr), 3);
        }
        file.write(reinterpret_cast<const char*>(padding), row_padding);
    }
    return true;
}

// Обчислювальне ядро (Box Blur)
__attribute__((noinline))
void apply_box_blur(const std::vector<Pixel>& input, std::vector<Pixel>& output, int width, int height, int passes) {
    std::vector<Pixel> temp_in = input;
    std::vector<Pixel> temp_out = input;

    for (int p = 0; p < passes; ++p) {
        for (int y = 1; y < height - 1; ++y) {
            for (int x = 1; x < width - 1; ++x) {
                float r = 0.0f, g = 0.0f, b = 0.0f;

                for (int ky = -1; ky <= 1; ++ky) {
                    for (int kx = -1; kx <= 1; ++kx) {
                        const auto& px = temp_in[(y + ky) * width + (x + kx)];
                        r += px.r;
                        g += px.g;
                        b += px.b;
                    }
                }

                temp_out[y * width + x] = { r / 9.0f, g / 9.0f, b / 9.0f };
            }
        }
        temp_in = temp_out;
    }
    output = temp_out;
}

int main() {
    int width = 0, height = 0;
    std::vector<Pixel> input;

    if (!load_bmp("input.bmp", input, width, height)) {
        std::cerr << "Помилка: не вдалося відкрити input.bmp!" << std::endl;
        return 1;
    }

    std::vector<Pixel> output(width * height);
    const int PASSES = 10; // Кількість проходів розмиття

    auto start = std::chrono::high_resolution_clock::now();
    apply_box_blur(input, output, width, height, PASSES);
    auto end = std::chrono::high_resolution_clock::now();

    std::chrono::duration<double> diff = end - start;
    std::cout << "Time: " << diff.count() << " s | Status: Blur Completed" << std::endl;

    if (save_bmp("output.bmp", output, width, height)) {
        std::cout << "Saved to output.bmp (" << width << "x" << height << ")" << std::endl;
    }

    return 0;
}
