#include <cstdio>
#include <cstring>
#include <cmath>
#include <cstdint>
#include <vector>

using namespace std;

namespace imgproc {

constexpr int W = 1024;
constexpr int H = 1024;
constexpr int N = W * H;

#ifndef PASSES
#define PASSES 200
#endif

uint32_t rng_state = 12345u;

uint32_t rng_next()
{
    rng_state = rng_state * 1103515245u + 12345u;
    return (rng_state >> 16) & 0x7fffu;
}

void make_image(uint8_t *p, int n)
{
    for (int i = 0; i < n; ++i) {
        uint32_t v = rng_next();
        int base = (i % 97) * 2;
        int val  = base + static_cast<int>(v % 41) - 20;
        if (val < 0)   val = 0;
        if (val > 255) val = 255;
        p[i] = static_cast<uint8_t>(val);
    }
}

void to_float(const uint8_t *in, float *out, int n)
{
    for (int i = 0; i < n; ++i)
        out[i] = static_cast<float>(in[i]);
}

void blur_h(const float *in, float *out, int w, int h)
{
    for (int y = 0; y < h; ++y) {
        const float *r = in  + static_cast<size_t>(y) * w;
        float       *o = out + static_cast<size_t>(y) * w;
        o[0] = r[0];
        for (int x = 1; x < w - 1; ++x)
            o[x] = 0.25f * r[x - 1] + 0.5f * r[x] + 0.25f * r[x + 1];
        o[w - 1] = r[w - 1];
    }
}

void blur_v(const float *in, float *out, int w, int h)
{
    for (int x = 0; x < w; ++x)
        out[x] = in[x];
    for (int y = 1; y < h - 1; ++y) {
        const float *u = in  + static_cast<size_t>(y - 1) * w;
        const float *c = in  + static_cast<size_t>(y)     * w;
        const float *d = in  + static_cast<size_t>(y + 1) * w;
        float       *o = out + static_cast<size_t>(y)     * w;
        for (int x = 0; x < w; ++x)
            o[x] = 0.25f * u[x] + 0.5f * c[x] + 0.25f * d[x];
    }
    for (int x = 0; x < w; ++x)
        out[static_cast<size_t>(h - 1) * w + x] =
            in[static_cast<size_t>(h - 1) * w + x];
}

void sobel_mag(const float *in, uint8_t *out, int w, int h)
{
    for (int y = 1; y < h - 1; ++y) {
        const float *u = in  + static_cast<size_t>(y - 1) * w;
        const float *c = in  + static_cast<size_t>(y)     * w;
        const float *d = in  + static_cast<size_t>(y + 1) * w;
        uint8_t     *o = out + static_cast<size_t>(y)     * w;
        for (int x = 1; x < w - 1; ++x) {
            float gx = (u[x + 1] + 2.0f * c[x + 1] + d[x + 1])
                     - (u[x - 1] + 2.0f * c[x - 1] + d[x - 1]);
            float gy = (d[x - 1] + 2.0f * d[x] + d[x + 1])
                     - (u[x - 1] + 2.0f * u[x] + u[x + 1]);
            float m  = sqrt(gx * gx + gy * gy);
            o[x] = static_cast<uint8_t>(m > 255.0f ? 255.0f : m);
        }
    }
}

void histogram(const uint8_t *in, int n, unsigned long *hist)
{
    memset(hist, 0, 256 * sizeof(unsigned long));
    for (int i = 0; i < n; ++i)
        ++hist[in[i]];
}

unsigned long checksum(const uint8_t *p, int n)
{
    unsigned long s = 0;
    for (int i = 0; i < n; ++i)
        s += static_cast<unsigned long>(p[i]) * static_cast<unsigned long>(i & 0xff);
    return s;
}

void save_bmp(const char *path, const uint8_t *gray, int w, int h)
{
    FILE *f = fopen(path, "wb");
    if (!f) return;

    const int row      = (w * 3 + 3) & ~3;
    const int imgSize  = row * h;
    const int fileSize = 54 + imgSize;
    const int off = 54, dib = 40, ppm = 2835;
    const short planes = 1, bpp = 24;

    uint8_t hdr[54] = {0};
    hdr[0] = 'B'; hdr[1] = 'M';
    memcpy(&hdr[2],  &fileSize, 4);
    memcpy(&hdr[10], &off, 4);
    memcpy(&hdr[14], &dib, 4);
    memcpy(&hdr[18], &w, 4);
    memcpy(&hdr[22], &h, 4);
    memcpy(&hdr[26], &planes, 2);
    memcpy(&hdr[28], &bpp, 2);
    memcpy(&hdr[34], &imgSize, 4);
    memcpy(&hdr[38], &ppm, 4);
    memcpy(&hdr[42], &ppm, 4);
    fwrite(hdr, 1, 54, f);

    vector<uint8_t> line(row, 0);
    for (int y = h - 1; y >= 0; --y) {
        const uint8_t *src = gray + static_cast<size_t>(y) * w;
        for (int x = 0; x < w; ++x) {
            line[x * 3 + 0] = src[x];
            line[x * 3 + 1] = src[x];
            line[x * 3 + 2] = src[x];
        }
        fwrite(line.data(), 1, row, f);
    }
    fclose(f);
    printf("saved %s\n", path);
}

} // namespace imgproc

using namespace imgproc;

int main(int argc, char **argv)
{
    vector<uint8_t> img(N);
    vector<uint8_t> edges(N);
    vector<float>   plane_a(N);
    vector<float>   plane_b(N);
    unsigned long   hist[256];

    make_image(img.data(), N);
    to_float(img.data(), plane_a.data(), N);

    for (int it = 0; it < PASSES; ++it) {
        blur_h(plane_a.data(), plane_b.data(), W, H);
        blur_v(plane_b.data(), plane_a.data(), W, H);
    }

    sobel_mag(plane_a.data(), edges.data(), W, H);
    histogram(edges.data(), N, hist);
    unsigned long sum = checksum(edges.data(), N);

    printf("checksum=%lu edges_mean=%lu passes=%d size=%dx%d\n",
           sum, hist[128], PASSES, W, H);

    if (argc > 1 && strcmp(argv[1], "--save") == 0) {
        vector<uint8_t> tmp(N);
        for (int i = 0; i < N; ++i)
            tmp[i] = static_cast<uint8_t>(plane_a[i] + 0.5f);
        save_bmp("out_1_original.bmp", img.data(), W, H);
        save_bmp("out_2_blurred.bmp", tmp.data(), W, H);
        save_bmp("out_3_edges.bmp", edges.data(), W, H);

        vector<float> c(N);
        to_float(img.data(), c.data(), N);
        blur_h(c.data(), plane_b.data(), W, H);
        blur_v(plane_b.data(), c.data(), W, H);
        blur_h(c.data(), plane_b.data(), W, H);
        blur_v(plane_b.data(), c.data(), W, H);
        for (int i = 0; i < N; ++i)
            tmp[i] = static_cast<uint8_t>(c[i] + 0.5f);
        save_bmp("out_2b_blurred_2pass.bmp", tmp.data(), W, H);
    }
    return 0;
}
