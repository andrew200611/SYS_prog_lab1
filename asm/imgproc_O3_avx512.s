	.file	"imgproc.cpp"
	.intel_syntax noprefix
	.text
	.p2align 4
	.type	_ZN7imgproc6blur_vEPKfPfii.constprop.0, @function
_ZN7imgproc6blur_vEPKfPfii.constprop.0:
.LFB2278:
	.cfi_startproc
	lea	r10, -4[rsi]
	mov	r8, rdi
	mov	r9, rsi
	xor	eax, eax
	sub	r10, rdi
	cmp	r10, 56
	jbe	.L2
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L3:
	vmovups	zmm0, ZMMWORD PTR [r8+rax]
	vmovups	ZMMWORD PTR [r9+rax], zmm0
	add	rax, 64
	cmp	rax, 4096
	jne	.L3
.L4:
	vmovss	xmm4, DWORD PTR .LC1[rip]
	vmovss	xmm3, DWORD PTR .LC3[rip]
	lea	rsi, 4096[r9]
	lea	rdx, 4096[r8]
	lea	rcx, 8192[r8]
	lea	r11, 4190208[r8]
	vbroadcastss	zmm2, xmm4
	vbroadcastss	zmm1, xmm3
	.p2align 4,,10
	.p2align 3
.L8:
	lea	rdi, -4092[rdx]
	mov	rax, rsi
	sub	rax, rdi
	cmp	rax, 8248
	jbe	.L13
	lea	rdi, -4096[rdx]
	xor	eax, eax
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L6:
	vmulps	zmm0, zmm2, ZMMWORD PTR [rdx+rax]
	vfmadd231ps	zmm0, zmm1, ZMMWORD PTR [rdi+rax]
	vfmadd231ps	zmm0, zmm1, ZMMWORD PTR [rcx+rax]
	vmovups	ZMMWORD PTR [rsi+rax], zmm0
	add	rax, 64
	cmp	rax, 4096
	jne	.L6
.L7:
	add	rdx, 4096
	add	rsi, 4096
	add	rcx, 4096
	cmp	r11, rdx
	jne	.L8
	xor	eax, eax
	cmp	r10, 56
	jbe	.L9
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L10:
	vmovups	zmm0, ZMMWORD PTR 4190208[r8+rax]
	vmovups	ZMMWORD PTR 4190208[r9+rax], zmm0
	add	rax, 64
	cmp	rax, 4096
	jne	.L10
.L22:
	vzeroupper
	ret
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L2:
	vmovss	xmm0, DWORD PTR [r8+rax]
	vmovss	DWORD PTR [r9+rax], xmm0
	add	rax, 4
	cmp	rax, 4096
	jne	.L2
	jmp	.L4
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L9:
	vmovss	xmm0, DWORD PTR 4190208[r8+rax]
	vmovss	DWORD PTR 4190208[r9+rax], xmm0
	add	rax, 4
	cmp	rax, 4096
	jne	.L9
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L13:
	mov	rdi, rsi
	mov	rax, rdx
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L5:
	vmulss	xmm0, xmm4, DWORD PTR [rax]
	add	rax, 4
	add	rdi, 4
	vfmadd231ss	xmm0, xmm3, DWORD PTR -4100[rax]
	vfmadd231ss	xmm0, xmm3, DWORD PTR 4092[rax]
	vmovss	DWORD PTR -4[rdi], xmm0
	cmp	rcx, rax
	jne	.L5
	jmp	.L7
	.cfi_endproc
.LFE2278:
	.size	_ZN7imgproc6blur_vEPKfPfii.constprop.0, .-_ZN7imgproc6blur_vEPKfPfii.constprop.0
	.p2align 4
	.type	_ZN7imgproc6blur_hEPKfPfii.constprop.0, @function
_ZN7imgproc6blur_hEPKfPfii.constprop.0:
.LFB2279:
	.cfi_startproc
	vmovss	xmm4, DWORD PTR .LC1[rip]
	vmovss	xmm2, DWORD PTR .LC3[rip]
	lea	rcx, 4[rsi]
	lea	rdx, 4[rdi]
	lea	r8, 4194308[rsi]
	vbroadcastss	zmm3, xmm4
	vbroadcastss	zmm1, xmm2
	vbroadcastss	ymm6, xmm4
	vbroadcastss	ymm5, xmm2
	.p2align 4,,10
	.p2align 3
.L29:
	vmovss	xmm0, DWORD PTR -4[rdx]
	mov	rax, rcx
	lea	rsi, -4[rdx]
	sub	rax, rdx
	vmovss	DWORD PTR -4[rcx], xmm0
	cmp	rax, 64
	jbe	.L25
	lea	rdi, 4[rdx]
	xor	eax, eax
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L26:
	vmulps	zmm0, zmm3, ZMMWORD PTR [rdx+rax]
	vfmadd231ps	zmm0, zmm1, ZMMWORD PTR [rsi+rax]
	vfmadd231ps	zmm0, zmm1, ZMMWORD PTR [rdi+rax]
	vmovups	ZMMWORD PTR [rcx+rax], zmm0
	add	rax, 64
	cmp	rax, 4032
	jne	.L26
	vmulps	ymm0, ymm6, YMMWORD PTR 4032[rdx]
	vfmadd231ps	ymm0, ymm5, YMMWORD PTR 4028[rdx]
	vfmadd231ps	ymm0, ymm5, YMMWORD PTR 4036[rdx]
	vmovups	YMMWORD PTR 4032[rcx], ymm0
	vmulss	xmm0, xmm4, DWORD PTR 4064[rdx]
	vfmadd231ss	xmm0, xmm2, DWORD PTR 4060[rdx]
	vfmadd231ss	xmm0, xmm2, DWORD PTR 4068[rdx]
	vmovss	DWORD PTR 4064[rcx], xmm0
	vmulss	xmm0, xmm4, DWORD PTR 4068[rdx]
	vfmadd231ss	xmm0, xmm2, DWORD PTR 4064[rdx]
	vfmadd231ss	xmm0, xmm2, DWORD PTR 4072[rdx]
	vmovss	DWORD PTR 4068[rcx], xmm0
	vmulss	xmm0, xmm4, DWORD PTR 4072[rdx]
	vfmadd231ss	xmm0, xmm2, DWORD PTR 4068[rdx]
	vfmadd231ss	xmm0, xmm2, DWORD PTR 4076[rdx]
	vmovss	DWORD PTR 4072[rcx], xmm0
	vmulss	xmm0, xmm4, DWORD PTR 4076[rdx]
	vfmadd231ss	xmm0, xmm2, DWORD PTR 4072[rdx]
	vfmadd231ss	xmm0, xmm2, DWORD PTR 4080[rdx]
	vmovss	DWORD PTR 4076[rcx], xmm0
	vmulss	xmm0, xmm4, DWORD PTR 4080[rdx]
	vfmadd231ss	xmm0, xmm2, DWORD PTR 4076[rdx]
	vfmadd231ss	xmm0, xmm2, DWORD PTR 4084[rdx]
	vmovss	DWORD PTR 4080[rcx], xmm0
	vmulss	xmm0, xmm4, DWORD PTR 4084[rdx]
	vfmadd231ss	xmm0, xmm2, DWORD PTR 4080[rdx]
	vfmadd231ss	xmm0, xmm2, DWORD PTR 4088[rdx]
	vmovss	DWORD PTR 4084[rcx], xmm0
.L27:
	vmovss	xmm0, DWORD PTR 4088[rdx]
	add	rcx, 4096
	add	rdx, 4096
	vmovss	DWORD PTR -8[rcx], xmm0
	cmp	r8, rcx
	jne	.L29
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	lea	rdi, -4[rcx]
	xor	eax, eax
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L28:
	vmulss	xmm0, xmm4, DWORD PTR 4[rsi+rax]
	vfmadd231ss	xmm0, xmm2, DWORD PTR [rsi+rax]
	vfmadd231ss	xmm0, xmm2, DWORD PTR 8[rsi+rax]
	vmovss	DWORD PTR 4[rdi+rax], xmm0
	add	rax, 4
	cmp	rax, 4088
	jne	.L28
	jmp	.L27
	.cfi_endproc
.LFE2279:
	.size	_ZN7imgproc6blur_hEPKfPfii.constprop.0, .-_ZN7imgproc6blur_hEPKfPfii.constprop.0
	.p2align 4
	.globl	_ZN7imgproc8rng_nextEv
	.type	_ZN7imgproc8rng_nextEv, @function
_ZN7imgproc8rng_nextEv:
.LFB1954:
	.cfi_startproc
	endbr64
	imul	eax, DWORD PTR _ZN7imgproc9rng_stateE[rip], 1103515245
	add	eax, 12345
	mov	DWORD PTR _ZN7imgproc9rng_stateE[rip], eax
	shr	eax, 16
	and	eax, 32767
	ret
	.cfi_endproc
.LFE1954:
	.size	_ZN7imgproc8rng_nextEv, .-_ZN7imgproc8rng_nextEv
	.p2align 4
	.globl	_ZN7imgproc10make_imageEPhi
	.type	_ZN7imgproc10make_imageEPhi, @function
_ZN7imgproc10make_imageEPhi:
.LFB1955:
	.cfi_startproc
	endbr64
	test	esi, esi
	jle	.L38
	movsxd	rcx, esi
	xor	edx, edx
	mov	esi, 3352169597
	.p2align 4,,10
	.p2align 3
.L36:
	imul	eax, DWORD PTR _ZN7imgproc9rng_stateE[rip], 1103515245
	add	eax, 12345
	mov	DWORD PTR _ZN7imgproc9rng_stateE[rip], eax
	shr	eax, 16
	mov	r8d, eax
	and	eax, 32767
	imul	rax, rsi
	and	r8d, 32767
	shr	rax, 37
	lea	r9d, [rax+rax*4]
	lea	eax, [rax+r9*8]
	mov	r9d, edx
	sub	r8d, eax
	movsxd	rax, edx
	sar	r9d, 31
	imul	rax, rax, 354224107
	sar	rax, 35
	sub	eax, r9d
	mov	r9d, edx
	imul	eax, eax, 97
	sub	r9d, eax
	lea	eax, -20[r8+r9*2]
	xor	r8d, r8d
	test	eax, eax
	cmovs	eax, r8d
	mov	BYTE PTR [rdi+rdx], al
	inc	rdx
	cmp	rdx, rcx
	jne	.L36
.L38:
	ret
	.cfi_endproc
.LFE1955:
	.size	_ZN7imgproc10make_imageEPhi, .-_ZN7imgproc10make_imageEPhi
	.p2align 4
	.globl	_ZN7imgproc8to_floatEPKhPfi
	.type	_ZN7imgproc8to_floatEPKhPfi, @function
_ZN7imgproc8to_floatEPKhPfi:
.LFB1956:
	.cfi_startproc
	endbr64
	mov	ecx, edx
	test	edx, edx
	jle	.L66
	lea	eax, -1[rdx]
	vxorps	xmm3, xmm3, xmm3
	movsxd	r8, edx
	cmp	eax, 30
	jbe	.L41
	lea	r9, [rsi+r8*4]
	cmp	rdi, r9
	jnb	.L52
	lea	r9, [rdi+r8]
	cmp	rsi, r9
	jb	.L41
.L52:
	cmp	eax, 62
	jbe	.L51
	mov	r8d, ecx
	mov	rdx, rdi
	mov	rax, rsi
	shr	r8d, 6
	sal	r8, 6
	add	r8, rdi
	.p2align 4,,10
	.p2align 3
.L44:
	vmovdqu8	zmm0, ZMMWORD PTR [rdx]
	add	rdx, 64
	add	rax, 256
	vpmovzxbw	zmm1, ymm0
	vextracti64x4	ymm0, zmm0, 0x1
	vpmovsxwd	zmm2, ymm1
	vextracti64x4	ymm1, zmm1, 0x1
	vpmovzxbw	zmm0, ymm0
	vpmovsxwd	zmm1, ymm1
	vcvtdq2ps	zmm2, zmm2
	vmovups	ZMMWORD PTR -256[rax], zmm2
	vcvtdq2ps	zmm1, zmm1
	vmovups	ZMMWORD PTR -192[rax], zmm1
	vpmovsxwd	zmm1, ymm0
	vextracti64x4	ymm0, zmm0, 0x1
	vpmovsxwd	zmm0, ymm0
	vcvtdq2ps	zmm1, zmm1
	vmovups	ZMMWORD PTR -128[rax], zmm1
	vcvtdq2ps	zmm0, zmm0
	vmovups	ZMMWORD PTR -64[rax], zmm0
	cmp	r8, rdx
	jne	.L44
	mov	eax, ecx
	and	eax, -64
	mov	r8d, eax
	cmp	ecx, eax
	je	.L65
	mov	edx, ecx
	sub	edx, eax
	lea	r9d, -1[rdx]
	cmp	r9d, 30
	jbe	.L46
.L43:
	vmovdqu8	ymm0, YMMWORD PTR [rdi+r8]
	vpmovzxbw	ymm1, xmm0
	vextracti32x4	xmm0, ymm0, 0x1
	vpmovsxwd	ymm2, xmm1
	vextracti32x4	xmm1, ymm1, 0x1
	vpmovzxbw	ymm0, xmm0
	vpmovsxwd	ymm1, xmm1
	vcvtdq2ps	ymm2, ymm2
	vmovups	YMMWORD PTR [rsi+r8*4], ymm2
	vcvtdq2ps	ymm1, ymm1
	vmovups	YMMWORD PTR 32[rsi+r8*4], ymm1
	vpmovsxwd	ymm1, xmm0
	vextracti32x4	xmm0, ymm0, 0x1
	vpmovsxwd	ymm0, xmm0
	vcvtdq2ps	ymm1, ymm1
	vmovups	YMMWORD PTR 64[rsi+r8*4], ymm1
	vcvtdq2ps	ymm0, ymm0
	vmovups	YMMWORD PTR 96[rsi+r8*4], ymm0
	test	dl, 31
	je	.L65
	and	edx, -32
	add	eax, edx
.L46:
	cdqe
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L48:
	movzx	edx, BYTE PTR [rdi+rax]
	vcvtusi2ss	xmm0, xmm3, edx
	vmovss	DWORD PTR [rsi+rax*4], xmm0
	inc	rax
	cmp	ecx, eax
	jg	.L48
.L65:
	vzeroupper
.L66:
	ret
	.p2align 4,,10
	.p2align 3
.L41:
	xor	eax, eax
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L49:
	movzx	edx, BYTE PTR [rdi+rax]
	vcvtusi2ss	xmm0, xmm3, edx
	vmovss	DWORD PTR [rsi+rax*4], xmm0
	inc	rax
	cmp	r8, rax
	jne	.L49
	ret
.L51:
	xor	r8d, r8d
	xor	eax, eax
	jmp	.L43
	.cfi_endproc
.LFE1956:
	.size	_ZN7imgproc8to_floatEPKhPfi, .-_ZN7imgproc8to_floatEPKhPfi
	.p2align 4
	.globl	_ZN7imgproc6blur_hEPKfPfii
	.type	_ZN7imgproc6blur_hEPKfPfii, @function
_ZN7imgproc6blur_hEPKfPfii:
.LFB1957:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	and	rsp, -64
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	mov	QWORD PTR -24[rsp], rdi
	mov	QWORD PTR -32[rsp], rsi
	mov	DWORD PTR -8[rsp], edx
	mov	DWORD PTR -16[rsp], ecx
	test	ecx, ecx
	jle	.L92
	mov	eax, edx
	movsxd	r9, edx
	lea	ebx, -1[rdx]
	vmovss	xmm6, DWORD PTR .LC1[rip]
	lea	rdx, 4[rdi]
	lea	edi, -3[rax]
	vmovss	xmm5, DWORD PTR .LC3[rip]
	xor	r11d, r11d
	mov	DWORD PTR -12[rsp], edi
	lea	edi, -2[rax]
	lea	r13, 0[0+r9*4]
	xor	r10d, r10d
	mov	DWORD PTR -4[rsp], edi
	and	edi, -16
	lea	rcx, 4[rsi]
	vbroadcastss	ymm8, xmm6
	sub	eax, edi
	mov	DWORD PTR -36[rsp], edi
	vbroadcastss	ymm7, xmm5
	vbroadcastss	zmm2, xmm6
	mov	DWORD PTR -44[rsp], eax
	sub	eax, 3
	vbroadcastss	zmm1, xmm5
	mov	DWORD PTR -40[rsp], eax
	.p2align 4,,10
	.p2align 3
.L70:
	vmovss	xmm0, DWORD PTR -4[rdx]
	cmp	DWORD PTR -8[rsp], 2
	vmovss	DWORD PTR -4[rcx], xmm0
	jle	.L76
	mov	r15d, DWORD PTR -12[rsp]
	lea	rax, -4[rdx]
	lea	rdi, -4[rcx]
	cmp	r15d, 6
	jbe	.L72
	mov	rsi, rcx
	sub	rsi, rdx
	cmp	rsi, 64
	jbe	.L72
	cmp	r15d, 14
	jbe	.L73
	mov	r8d, DWORD PTR -4[rsp]
	lea	r12, 4[rdx]
	xor	esi, esi
	shr	r8d, 4
	sal	r8, 6
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L74:
	vmulps	zmm0, zmm2, ZMMWORD PTR [rdx+rsi]
	vfmadd231ps	zmm0, zmm1, ZMMWORD PTR [rax+rsi]
	vfmadd231ps	zmm0, zmm1, ZMMWORD PTR [r12+rsi]
	vmovups	ZMMWORD PTR [rcx+rsi], zmm0
	add	rsi, 64
	cmp	r8, rsi
	jne	.L74
	test	BYTE PTR -4[rsp], 15
	je	.L76
	mov	esi, DWORD PTR -36[rsp]
	mov	r8d, esi
	inc	esi
	cmp	DWORD PTR -40[rsp], 6
	jbe	.L78
	mov	r15d, DWORD PTR -44[rsp]
	lea	r12d, -2[r15]
.L82:
	mov	r14, QWORD PTR -24[rsp]
	add	r8, r11
	mov	r15, QWORD PTR -32[rsp]
	vmulps	ymm0, ymm8, YMMWORD PTR 4[r14+r8*4]
	vfmadd231ps	ymm0, ymm7, YMMWORD PTR [r14+r8*4]
	vfmadd231ps	ymm0, ymm7, YMMWORD PTR 8[r14+r8*4]
	vmovups	YMMWORD PTR 4[r15+r8*4], ymm0
	test	r12b, 7
	je	.L76
	and	r12d, -8
	add	esi, r12d
.L78:
	movsxd	r14, esi
	vmovss	xmm3, DWORD PTR .LC1[rip]
	vmovss	xmm0, DWORD PTR .LC3[rip]
	lea	r8, 0[0+r14*4]
	lea	r15, [rax+r8]
	lea	r12, 4[rax+r8]
	vmulss	xmm4, xmm3, DWORD PTR [r15]
	vfmadd231ss	xmm4, xmm0, DWORD PTR -4[rax+r14*4]
	lea	r14d, 1[rsi]
	vfmadd231ss	xmm4, xmm0, DWORD PTR [r12]
	vmovss	DWORD PTR [rdi+r8], xmm4
	cmp	r14d, ebx
	jge	.L76
	vmulss	xmm4, xmm3, DWORD PTR [r12]
	lea	r14, 8[rax+r8]
	vfmadd231ss	xmm4, xmm0, DWORD PTR [r15]
	lea	r15d, 2[rsi]
	vfmadd231ss	xmm4, xmm0, DWORD PTR [r14]
	vmovss	DWORD PTR 4[rdi+r8], xmm4
	cmp	ebx, r15d
	jle	.L76
	vmulss	xmm4, xmm3, DWORD PTR [r14]
	vfmadd231ss	xmm4, xmm0, DWORD PTR [r12]
	vfmadd231ss	xmm4, xmm0, DWORD PTR 12[rax+r8]
	vmovss	DWORD PTR 8[rdi+r8], xmm4
	lea	r8d, 3[rsi]
	cmp	ebx, r8d
	jle	.L76
	movsxd	r8, r8d
	vmulss	xmm4, xmm3, DWORD PTR [rax+r8*4]
	vfmadd231ss	xmm4, xmm0, DWORD PTR -4[rax+r8*4]
	vfmadd231ss	xmm4, xmm0, DWORD PTR 4[rax+r8*4]
	vmovss	DWORD PTR [rdi+r8*4], xmm4
	lea	r8d, 4[rsi]
	cmp	ebx, r8d
	jle	.L76
	movsxd	r8, r8d
	vmulss	xmm4, xmm3, DWORD PTR [rax+r8*4]
	vfmadd231ss	xmm4, xmm0, DWORD PTR -4[rax+r8*4]
	vfmadd231ss	xmm4, xmm0, DWORD PTR 4[rax+r8*4]
	vmovss	DWORD PTR [rdi+r8*4], xmm4
	lea	r8d, 5[rsi]
	cmp	ebx, r8d
	jle	.L76
	movsxd	r8, r8d
	add	esi, 6
	vmulss	xmm4, xmm3, DWORD PTR [rax+r8*4]
	vfmadd231ss	xmm4, xmm0, DWORD PTR -4[rax+r8*4]
	vfmadd231ss	xmm4, xmm0, DWORD PTR 4[rax+r8*4]
	vmovss	DWORD PTR [rdi+r8*4], xmm4
	cmp	ebx, esi
	jle	.L76
	movsxd	rsi, esi
	vmulss	xmm3, xmm3, DWORD PTR [rax+rsi*4]
	vfmadd231ss	xmm3, xmm0, DWORD PTR -4[rax+rsi*4]
	vfmadd132ss	xmm0, xmm3, DWORD PTR 4[rax+rsi*4]
	vmovss	DWORD PTR [rdi+rsi*4], xmm0
.L76:
	vmovss	xmm0, DWORD PTR -8[rdx+r9*4]
	inc	r10d
	add	rdx, r13
	add	r11, r9
	vmovss	DWORD PTR -8[rcx+r9*4], xmm0
	add	rcx, r13
	cmp	DWORD PTR -16[rsp], r10d
	jne	.L70
	vzeroupper
.L92:
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L72:
	.cfi_restore_state
	mov	r8d, DWORD PTR -12[rsp]
	mov	esi, 1
	add	r8, 2
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L80:
	vmulss	xmm0, xmm6, DWORD PTR [rax+rsi*4]
	vfmadd231ss	xmm0, xmm5, DWORD PTR -4[rax+rsi*4]
	vfmadd231ss	xmm0, xmm5, DWORD PTR 4[rax+rsi*4]
	vmovss	DWORD PTR [rdi+rsi*4], xmm0
	inc	rsi
	cmp	r8, rsi
	jne	.L80
	jmp	.L76
.L73:
	mov	esi, DWORD PTR -8[rsp]
	xor	r8d, r8d
	lea	r12d, -2[rsi]
	mov	esi, 1
	jmp	.L82
	.cfi_endproc
.LFE1957:
	.size	_ZN7imgproc6blur_hEPKfPfii, .-_ZN7imgproc6blur_hEPKfPfii
	.p2align 4
	.globl	_ZN7imgproc6blur_vEPKfPfii
	.type	_ZN7imgproc6blur_vEPKfPfii, @function
_ZN7imgproc6blur_vEPKfPfii:
.LFB1958:
	.cfi_startproc
	endbr64
	test	edx, edx
	jle	.L170
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	r10d, edx
	lea	edx, -1[rdx]
	mov	r8, rsi
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	and	rsp, -64
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	mov	DWORD PTR -8[rsp], edx
	cmp	edx, 6
	jbe	.L96
	lea	rax, -4[rsi]
	sub	rax, rdi
	cmp	rax, 56
	jbe	.L96
	cmp	edx, 14
	mov	edx, r10d
	jbe	.L126
	shr	edx, 4
	xor	eax, eax
	sal	rdx, 6
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L98:
	vmovups	zmm0, ZMMWORD PTR [rdi+rax]
	vmovups	ZMMWORD PTR [r8+rax], zmm0
	add	rax, 64
	cmp	rax, rdx
	jne	.L98
	mov	eax, r10d
	and	eax, -16
	mov	esi, eax
	cmp	r10d, eax
	je	.L99
	mov	edx, r10d
	sub	edx, eax
	lea	r9d, -1[rdx]
	cmp	r9d, 6
	jbe	.L100
.L97:
	vmovups	ymm0, YMMWORD PTR [rdi+rsi*4]
	vmovups	YMMWORD PTR [r8+rsi*4], ymm0
	test	dl, 7
	je	.L99
	and	edx, -8
	add	eax, edx
.L100:
	movsxd	rdx, eax
	lea	esi, 1[rax]
	vmovss	xmm0, DWORD PTR [rdi+rdx*4]
	vmovss	DWORD PTR [r8+rdx*4], xmm0
	cmp	r10d, esi
	jle	.L99
	vmovss	xmm0, DWORD PTR 4[rdi+rdx*4]
	lea	esi, 2[rax]
	vmovss	DWORD PTR 4[r8+rdx*4], xmm0
	cmp	r10d, esi
	jle	.L99
	vmovss	xmm0, DWORD PTR 8[rdi+rdx*4]
	lea	esi, 3[rax]
	vmovss	DWORD PTR 8[r8+rdx*4], xmm0
	cmp	r10d, esi
	jle	.L99
	vmovss	xmm0, DWORD PTR 12[rdi+rdx*4]
	lea	esi, 4[rax]
	vmovss	DWORD PTR 12[r8+rdx*4], xmm0
	cmp	r10d, esi
	jle	.L99
	vmovss	xmm0, DWORD PTR 16[rdi+rdx*4]
	lea	esi, 5[rax]
	vmovss	DWORD PTR 16[r8+rdx*4], xmm0
	cmp	r10d, esi
	jle	.L99
	vmovss	xmm0, DWORD PTR 20[rdi+rdx*4]
	add	eax, 6
	vmovss	DWORD PTR 20[r8+rdx*4], xmm0
	cmp	r10d, eax
	jle	.L99
	vmovss	xmm0, DWORD PTR 24[rdi+rdx*4]
	vmovss	DWORD PTR 24[r8+rdx*4], xmm0
.L99:
	lea	eax, -1[rcx]
	movsxd	rcx, r10d
	mov	DWORD PTR -24[rsp], eax
	mov	QWORD PTR -16[rsp], rcx
	cmp	eax, 1
	jle	.L173
.L105:
	mov	ebx, r10d
	mov	r11, QWORD PTR -16[rsp]
	vmovss	xmm4, DWORD PTR .LC1[rip]
	mov	DWORD PTR -20[rsp], 1
	shr	ebx, 4
	vmovss	xmm2, DWORD PTR .LC3[rip]
	mov	rdx, rdi
	mov	r14d, r10d
	mov	QWORD PTR -32[rsp], rbx
	lea	r15, 0[0+r11*4]
	lea	rcx, [rdi+r11*8]
	vbroadcastss	ymm6, xmm4
	lea	rax, [rdi+r15]
	vbroadcastss	ymm5, xmm2
	vbroadcastss	zmm3, xmm4
	vbroadcastss	zmm1, xmm2
	.p2align 4,,10
	.p2align 3
.L104:
	mov	r9, r11
	inc	DWORD PTR -20[rsp]
	add	r11, QWORD PTR -16[rsp]
	cmp	DWORD PTR -8[rsp], 6
	lea	r10, 0[0+r9*4]
	jbe	.L108
	lea	rsi, [r8+r10]
	lea	r12, 4[rdx]
	mov	rbx, rsi
	lea	r13, 4[rax]
	sub	rbx, r12
	mov	r12, rsi
	cmp	rbx, 56
	seta	bl
	sub	r12, r13
	cmp	r12, 56
	seta	r12b
	test	bl, r12b
	je	.L108
	lea	r12, 4[rcx]
	mov	rbx, rsi
	sub	rbx, r12
	cmp	rbx, 56
	jbe	.L108
	mov	rbx, r9
	sub	rbx, QWORD PTR -16[rsp]
	cmp	DWORD PTR -8[rsp], 14
	jbe	.L127
	mov	r12, QWORD PTR -32[rsp]
	xor	r10d, r10d
	sal	r12, 6
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L110:
	vmulps	zmm0, zmm3, ZMMWORD PTR [rax+r10]
	vfmadd231ps	zmm0, zmm1, ZMMWORD PTR [rdx+r10]
	vfmadd231ps	zmm0, zmm1, ZMMWORD PTR [rcx+r10]
	vmovups	ZMMWORD PTR [rsi+r10], zmm0
	add	r10, 64
	cmp	r12, r10
	jne	.L110
	mov	esi, r14d
	and	esi, -16
	mov	r10d, esi
	cmp	esi, r14d
	je	.L116
	mov	r12d, r14d
	sub	r12d, esi
	lea	r13d, -1[r12]
	mov	DWORD PTR -4[rsp], r12d
	cmp	r13d, 6
	jbe	.L113
.L109:
	lea	r12, [r10+r9]
	lea	r13, [r11+r10]
	add	r10, rbx
	vmulps	ymm0, ymm6, YMMWORD PTR [rdi+r12*4]
	vfmadd231ps	ymm0, ymm5, YMMWORD PTR [rdi+r10*4]
	vfmadd231ps	ymm0, ymm5, YMMWORD PTR [rdi+r13*4]
	vmovups	YMMWORD PTR [r8+r12*4], ymm0
	test	BYTE PTR -4[rsp], 7
	je	.L116
	mov	r12d, DWORD PTR -4[rsp]
	and	r12d, -8
	add	esi, r12d
.L113:
	movsxd	r10, esi
	lea	r12, [r10+r9]
	lea	r13, [r11+r10]
	add	r10, rbx
	vmulss	xmm0, xmm4, DWORD PTR [rdi+r12*4]
	vfmadd231ss	xmm0, xmm2, DWORD PTR [rdi+r10*4]
	lea	r10d, 1[rsi]
	vfmadd231ss	xmm0, xmm2, DWORD PTR [rdi+r13*4]
	vmovss	DWORD PTR [r8+r12*4], xmm0
	cmp	r14d, r10d
	jle	.L116
	movsxd	r10, r10d
	lea	r12, [r10+r9]
	lea	r13, [r11+r10]
	add	r10, rbx
	vmulss	xmm0, xmm4, DWORD PTR [rdi+r12*4]
	vfmadd231ss	xmm0, xmm2, DWORD PTR [rdi+r10*4]
	lea	r10d, 2[rsi]
	vfmadd231ss	xmm0, xmm2, DWORD PTR [rdi+r13*4]
	vmovss	DWORD PTR [r8+r12*4], xmm0
	cmp	r14d, r10d
	jle	.L116
	movsxd	r10, r10d
	lea	r12, [r9+r10]
	lea	r13, [r11+r10]
	add	r10, rbx
	vmulss	xmm0, xmm4, DWORD PTR [rdi+r12*4]
	vfmadd231ss	xmm0, xmm2, DWORD PTR [rdi+r10*4]
	lea	r10d, 3[rsi]
	vfmadd231ss	xmm0, xmm2, DWORD PTR [rdi+r13*4]
	vmovss	DWORD PTR [r8+r12*4], xmm0
	cmp	r14d, r10d
	jle	.L116
	movsxd	r10, r10d
	lea	r12, [r9+r10]
	lea	r13, [r11+r10]
	add	r10, rbx
	vmulss	xmm0, xmm4, DWORD PTR [rdi+r12*4]
	vfmadd231ss	xmm0, xmm2, DWORD PTR [rdi+r10*4]
	lea	r10d, 4[rsi]
	vfmadd231ss	xmm0, xmm2, DWORD PTR [rdi+r13*4]
	vmovss	DWORD PTR [r8+r12*4], xmm0
	cmp	r14d, r10d
	jle	.L116
	movsxd	r10, r10d
	lea	r12, [r9+r10]
	lea	r13, [r11+r10]
	add	r10, rbx
	vmulss	xmm0, xmm4, DWORD PTR [rdi+r12*4]
	vfmadd231ss	xmm0, xmm2, DWORD PTR [rdi+r10*4]
	lea	r10d, 5[rsi]
	vfmadd231ss	xmm0, xmm2, DWORD PTR [rdi+r13*4]
	vmovss	DWORD PTR [r8+r12*4], xmm0
	cmp	r14d, r10d
	jle	.L116
	movsxd	r10, r10d
	add	esi, 6
	lea	r12, [r9+r10]
	lea	r13, [r11+r10]
	add	r10, rbx
	vmulss	xmm0, xmm4, DWORD PTR [rdi+r12*4]
	vfmadd231ss	xmm0, xmm2, DWORD PTR [rdi+r10*4]
	vfmadd231ss	xmm0, xmm2, DWORD PTR [rdi+r13*4]
	vmovss	DWORD PTR [r8+r12*4], xmm0
	cmp	r14d, esi
	jle	.L116
	movsxd	rsi, esi
	add	r9, rsi
	add	rbx, rsi
	lea	r10, [r11+rsi]
	vmulss	xmm0, xmm4, DWORD PTR [rdi+r9*4]
	vfmadd231ss	xmm0, xmm2, DWORD PTR [rdi+rbx*4]
	vfmadd231ss	xmm0, xmm2, DWORD PTR [rdi+r10*4]
	vmovss	DWORD PTR [r8+r9*4], xmm0
.L116:
	mov	esi, DWORD PTR -24[rsp]
	add	rdx, r15
	add	rax, r15
	add	rcx, r15
	cmp	DWORD PTR -20[rsp], esi
	jl	.L104
	mov	r10d, r14d
.L107:
	mov	rax, QWORD PTR -16[rsp]
	movsxd	rdx, DWORD PTR -24[rsp]
	mov	esi, r10d
	imul	rdx, rax
	cmp	DWORD PTR -8[rsp], 6
	lea	rcx, 0[0+rdx*4]
	jbe	.L117
.L106:
	lea	rcx, 0[0+rdx*4]
	lea	r9, [r8+rcx]
	lea	rbx, 4[rdi+rcx]
	mov	r11, r9
	sub	r11, rbx
	cmp	r11, 56
	jbe	.L117
	cmp	DWORD PTR -8[rsp], 14
	jbe	.L128
	mov	esi, r10d
	add	rcx, rdi
	xor	eax, eax
	shr	esi, 4
	sal	rsi, 6
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L119:
	vmovups	zmm0, ZMMWORD PTR [rcx+rax]
	vmovups	ZMMWORD PTR [r9+rax], zmm0
	add	rax, 64
	cmp	rax, rsi
	jne	.L119
	test	r10b, 15
	je	.L167
	mov	ecx, r10d
	mov	esi, r10d
	and	ecx, -16
	sub	esi, ecx
	mov	eax, ecx
	lea	r9d, -1[rsi]
	cmp	r9d, 6
	jbe	.L122
.L118:
	add	rcx, rdx
	vmovups	ymm0, YMMWORD PTR [rdi+rcx*4]
	vmovups	YMMWORD PTR [r8+rcx*4], ymm0
	test	sil, 7
	je	.L167
	and	esi, -8
	add	eax, esi
.L122:
	movsxd	rcx, eax
	add	rcx, rdx
	vmovss	xmm0, DWORD PTR [rdi+rcx*4]
	vmovss	DWORD PTR [r8+rcx*4], xmm0
	lea	ecx, 1[rax]
	cmp	r10d, ecx
	jle	.L167
	movsxd	rcx, ecx
	add	rcx, rdx
	vmovss	xmm0, DWORD PTR [rdi+rcx*4]
	vmovss	DWORD PTR [r8+rcx*4], xmm0
	lea	ecx, 2[rax]
	cmp	ecx, r10d
	jge	.L167
	movsxd	rcx, ecx
	add	rcx, rdx
	vmovss	xmm0, DWORD PTR [rdi+rcx*4]
	vmovss	DWORD PTR [r8+rcx*4], xmm0
	lea	ecx, 3[rax]
	cmp	r10d, ecx
	jle	.L167
	movsxd	rcx, ecx
	add	rcx, rdx
	vmovss	xmm0, DWORD PTR [rdi+rcx*4]
	vmovss	DWORD PTR [r8+rcx*4], xmm0
	lea	ecx, 4[rax]
	cmp	ecx, r10d
	jge	.L167
	movsxd	rcx, ecx
	add	rcx, rdx
	vmovss	xmm0, DWORD PTR [rdi+rcx*4]
	vmovss	DWORD PTR [r8+rcx*4], xmm0
	lea	ecx, 5[rax]
	cmp	ecx, r10d
	jge	.L167
	movsxd	rcx, ecx
	add	eax, 6
	add	rcx, rdx
	vmovss	xmm0, DWORD PTR [rdi+rcx*4]
	vmovss	DWORD PTR [r8+rcx*4], xmm0
	cmp	r10d, eax
	jle	.L167
	cdqe
	add	rax, rdx
	vmovss	xmm0, DWORD PTR [rdi+rax*4]
	vmovss	DWORD PTR [r8+rax*4], xmm0
	vzeroupper
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L117:
	.cfi_restore_state
	sal	rax, 2
	add	rdi, rcx
	add	r8, rcx
	xor	edx, edx
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L124:
	vmovss	xmm0, DWORD PTR [rdi+rdx]
	vmovss	DWORD PTR [r8+rdx], xmm0
	add	rdx, 4
	cmp	rdx, rax
	jne	.L124
.L167:
	vzeroupper
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L108:
	.cfi_restore_state
	add	r10, r8
	xor	esi, esi
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L115:
	vmulss	xmm0, xmm4, DWORD PTR [rax+rsi]
	vfmadd231ss	xmm0, xmm2, DWORD PTR [rdx+rsi]
	vfmadd231ss	xmm0, xmm2, DWORD PTR [rcx+rsi]
	vmovss	DWORD PTR [r10+rsi], xmm0
	add	rsi, 4
	cmp	rsi, r15
	jne	.L115
	jmp	.L116
.L127:
	mov	DWORD PTR -4[rsp], r14d
	xor	r10d, r10d
	xor	esi, esi
	jmp	.L109
.L96:
	movsxd	rax, r10d
	mov	QWORD PTR -16[rsp], rax
	lea	rdx, 0[0+rax*4]
	xor	eax, eax
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L102:
	vmovss	xmm0, DWORD PTR [rdi+rax]
	vmovss	DWORD PTR [r8+rax], xmm0
	add	rax, 4
	cmp	rax, rdx
	jne	.L102
	lea	eax, -1[rcx]
	mov	DWORD PTR -24[rsp], eax
	cmp	eax, 1
	jg	.L105
	jmp	.L107
.L170:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	ret
.L173:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -56
	.cfi_offset 6, -16
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	movsxd	rdx, DWORD PTR -24[rsp]
	mov	rax, rcx
	mov	esi, r10d
	imul	rdx, rcx
	jmp	.L106
.L126:
	xor	esi, esi
	xor	eax, eax
	jmp	.L97
.L128:
	xor	eax, eax
	xor	ecx, ecx
	jmp	.L118
	.cfi_endproc
.LFE1958:
	.size	_ZN7imgproc6blur_vEPKfPfii, .-_ZN7imgproc6blur_vEPKfPfii
	.p2align 4
	.globl	_ZN7imgproc9sobel_magEPKfPhii
	.type	_ZN7imgproc9sobel_magEPKfPhii, @function
_ZN7imgproc9sobel_magEPKfPhii:
.LFB1959:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	and	rsp, -64
	sub	rsp, 8
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	mov	QWORD PTR -48[rsp], rsi
	mov	DWORD PTR -112[rsp], edx
	cmp	ecx, 2
	jle	.L213
	cmp	edx, 2
	jle	.L213
	movsxd	r14, edx
	mov	rbx, rdi
	lea	eax, -1[rdx]
	dec	ecx
	lea	r13, 1[rsi+r14]
	lea	rdi, 8[rdi]
	mov	DWORD PTR -108[rsp], eax
	vmovss	xmm25, DWORD PTR .LC7[rip]
	lea	rsi, 0[0+r14*4]
	lea	eax, -2[rdx]
	mov	DWORD PTR -88[rsp], ecx
	vbroadcastss	ymm30, DWORD PTR .LC9[rip]
	mov	QWORD PTR -96[rsp], rsi
	lea	ecx, -3[rdx]
	add	rsi, rdi
	lea	r12, 0[r13+rax]
	mov	DWORD PTR -40[rsp], eax
	sal	rax, 2
	vmovdqa64	ymm31, YMMWORD PTR .LC14[rip]
	mov	r11, rsi
	mov	QWORD PTR -32[rsp], rsi
	vbroadcastss	zmm15, DWORD PTR .LC9[rip]
	lea	r15, [rdi+r14*8]
	vbroadcastss	ymm27, xmm25
	vmovdqa64	zmm26, ZMMWORD PTR .LC10[rip]
	vmovdqa64	zmm29, ZMMWORD PTR .LC11[rip]
	mov	DWORD PTR -36[rsp], ecx
	vbroadcastss	zmm1, xmm25
	mov	QWORD PTR [rsp], r14
	mov	DWORD PTR -16[rsp], 1
	mov	QWORD PTR -104[rsp], rax
	mov	rax, rbx
	mov	rbx, r13
	mov	r13, rax
	.p2align 4,,10
	.p2align 3
.L177:
	mov	rax, QWORD PTR [rsp]
	inc	DWORD PTR -16[rsp]
	lea	rdx, -8[rdi]
	lea	rcx, -8[r11]
	mov	QWORD PTR -8[rsp], rax
	add	rax, r14
	cmp	DWORD PTR -36[rsp], 30
	mov	QWORD PTR [rsp], rax
	lea	rax, -8[r15]
	jbe	.L179
	mov	r10, QWORD PTR -104[rsp]
	lea	rsi, [r15+r10]
	cmp	rbx, rsi
	setnb	r8b
	cmp	rax, r12
	setnb	sil
	or	r8d, esi
	lea	rsi, [r11+r10]
	cmp	rbx, rsi
	setnb	sil
	cmp	rcx, r12
	setnb	r9b
	or	esi, r9d
	test	r8b, sil
	je	.L179
	lea	rsi, [rdi+r10]
	cmp	rbx, rsi
	setnb	r8b
	cmp	rdx, r12
	setnb	sil
	or	sil, r8b
	je	.L179
	cmp	DWORD PTR -36[rsp], 62
	jbe	.L180
	mov	r10d, DWORD PTR -40[rsp]
	vpxor	xmm6, xmm6, xmm6
	lea	r9, -4[r15]
	lea	r8, -4[rdi]
	xor	esi, esi
	vpternlogd	zmm6, zmm6, zmm6, 0xFF
	shr	r10d, 6
	sal	r10, 6
	.p2align 4,,10
	.p2align 3
.L181:
	vmovups	zmm11, ZMMWORD PTR 128[rdi+rsi*4]
	vmovups	zmm12, ZMMWORD PTR 128[rdx+rsi*4]
	vmovaps	zmm2, zmm1
	vmovaps	zmm23, zmm1
	vmovups	zmm7, ZMMWORD PTR 128[r15+rsi*4]
	vmovups	zmm19, ZMMWORD PTR 128[rax+rsi*4]
	vmovaps	zmm28, zmm1
	vmovaps	zmm24, zmm1
	vfmadd132ps	zmm2, zmm11, ZMMWORD PTR 128[r11+rsi*4]
	vfmadd132ps	zmm23, zmm12, ZMMWORD PTR 128[rcx+rsi*4]
	vmovaps	zmm0, zmm1
	vmovups	zmm18, ZMMWORD PTR [rdx+rsi*4]
	vmovups	zmm14, ZMMWORD PTR 64[rdx+rsi*4]
	vmovaps	zmm4, zmm1
	vmovaps	zmm3, zmm1
	vmovups	zmm10, ZMMWORD PTR 192[rdx+rsi*4]
	vmovups	zmm16, ZMMWORD PTR [rdi+rsi*4]
	vfmadd132ps	zmm28, zmm18, ZMMWORD PTR [rcx+rsi*4]
	vfmadd132ps	zmm24, zmm14, ZMMWORD PTR 64[rcx+rsi*4]
	vmovups	zmm13, ZMMWORD PTR 64[rdi+rsi*4]
	vmovups	zmm21, ZMMWORD PTR [rax+rsi*4]
	vaddps	zmm23, zmm23, zmm19
	vaddps	zmm2, zmm2, zmm7
	vmovups	zmm20, ZMMWORD PTR 64[rax+rsi*4]
	vfmadd132ps	zmm0, zmm16, ZMMWORD PTR [r11+rsi*4]
	vfmadd132ps	zmm4, zmm13, ZMMWORD PTR 64[r11+rsi*4]
	vfmadd231ps	zmm18, zmm1, ZMMWORD PTR [r8+rsi*4]
	vfmadd231ps	zmm14, zmm1, ZMMWORD PTR 64[r8+rsi*4]
	vmovups	zmm5, ZMMWORD PTR 192[rax+rsi*4]
	vsubps	zmm2, zmm2, zmm23
	vmovaps	zmm23, zmm1
	vaddps	zmm28, zmm28, zmm21
	vmovups	zmm9, ZMMWORD PTR [r15+rsi*4]
	vfmadd132ps	zmm23, zmm10, ZMMWORD PTR 192[rcx+rsi*4]
	vfmadd231ps	zmm21, zmm1, ZMMWORD PTR [r9+rsi*4]
	vaddps	zmm24, zmm24, zmm20
	vfmadd231ps	zmm20, zmm1, ZMMWORD PTR 64[r9+rsi*4]
	vmovups	zmm8, ZMMWORD PTR 64[r15+rsi*4]
	vaddps	zmm0, zmm0, zmm9
	vfmadd231ps	zmm19, zmm1, ZMMWORD PTR 128[r9+rsi*4]
	vfmadd231ps	zmm12, zmm1, ZMMWORD PTR 128[r8+rsi*4]
	vaddps	zmm16, zmm16, zmm18
	vfmadd231ps	zmm10, zmm1, ZMMWORD PTR 192[r8+rsi*4]
	vaddps	zmm4, zmm4, zmm8
	vaddps	zmm13, zmm13, zmm14
	vmovups	zmm17, ZMMWORD PTR 192[rdi+rsi*4]
	vmovups	zmm22, ZMMWORD PTR 192[r15+rsi*4]
	vsubps	zmm0, zmm0, zmm28
	vaddps	zmm23, zmm23, zmm5
	vfmadd231ps	zmm5, zmm1, ZMMWORD PTR 192[r9+rsi*4]
	vaddps	zmm9, zmm9, zmm21
	vaddps	zmm8, zmm8, zmm20
	vfmadd132ps	zmm3, zmm17, ZMMWORD PTR 192[r11+rsi*4]
	vsubps	zmm4, zmm4, zmm24
	vaddps	zmm7, zmm7, zmm19
	vaddps	zmm11, zmm11, zmm12
	vsubps	zmm9, zmm9, zmm16
	vaddps	zmm10, zmm10, zmm17
	vsubps	zmm8, zmm8, zmm13
	vaddps	zmm5, zmm5, zmm22
	vsubps	zmm7, zmm7, zmm11
	vmulps	zmm9, zmm9, zmm9
	vaddps	zmm3, zmm3, zmm22
	vmulps	zmm8, zmm8, zmm8
	vsubps	zmm5, zmm5, zmm10
	vmulps	zmm7, zmm7, zmm7
	vsubps	zmm3, zmm3, zmm23
	vmulps	zmm5, zmm5, zmm5
	vfmadd132ps	zmm0, zmm9, zmm0
	vfmadd132ps	zmm4, zmm8, zmm4
	vfmadd132ps	zmm2, zmm7, zmm2
	vfmadd132ps	zmm3, zmm5, zmm3
	vsqrtps	zmm0, zmm0
	vcmpps	k1, zmm0, zmm15, 14
	vcvttps2dq	zmm0, zmm0
	vsqrtps	zmm4, zmm4
	vcmpps	k0, zmm4, zmm15, 14
	vcvttps2dq	zmm4, zmm4
	vpermt2w	zmm0, zmm26, zmm4
	vsqrtps	zmm2, zmm2
	vcmpps	k2, zmm2, zmm15, 14
	vcvttps2dq	zmm2, zmm2
	kunpckwd	k0, k0, k1
	vsqrtps	zmm3, zmm3
	vcmpps	k1, zmm3, zmm15, 14
	vcvttps2dq	zmm3, zmm3
	vpermt2w	zmm2, zmm26, zmm3
	vpermt2b	zmm0, zmm29, zmm2
	kunpckwd	k1, k1, k2
	kunpckdq	k1, k1, k0
	vmovdqu8	zmm0{k1}, zmm6
	vmovdqu8	ZMMWORD PTR [rbx+rsi], zmm0
	add	rsi, 64
	cmp	rsi, r10
	jne	.L181
	mov	edi, DWORD PTR -40[rsp]
	test	dil, 63
	je	.L191
	mov	esi, edi
	and	esi, -64
	lea	edi, 1[rsi]
	mov	DWORD PTR -12[rsp], edi
	mov	edi, DWORD PTR -112[rsp]
	sub	edi, esi
	lea	r8d, -3[rdi]
	cmp	r8d, 30
	jbe	.L183
	sub	edi, 2
	mov	DWORD PTR -84[rsp], edi
.L192:
	mov	r9, QWORD PTR -8[rsp]
	vmovaps	ymm0, ymm27
	vmovaps	ymm4, ymm27
	vmovaps	ymm2, ymm27
	vmovaps	ymm3, ymm27
	vmovaps	ymm22, ymm27
	vmovaps	ymm24, ymm27
	mov	rdi, r9
	vmovaps	ymm23, ymm27
	sub	rdi, r14
	add	rdi, rsi
	lea	r10, 8[r13+rdi*4]
	sal	rdi, 2
	mov	QWORD PTR -56[rsp], r10
	lea	r10, [r9+rsi]
	add	rsi, QWORD PTR [rsp]
	lea	r9, 8[r13+r10*4]
	mov	QWORD PTR -24[rsp], r10
	lea	r10, 0[r13+r10*4]
	mov	QWORD PTR -64[rsp], r9
	lea	r9, 0[r13+rdi]
	lea	r8, 8[r13+rsi*4]
	sal	rsi, 2
	vmovups	ymm8, YMMWORD PTR [r8]
	vmovups	ymm7, YMMWORD PTR 32[r8]
	mov	QWORD PTR -72[rsp], r9
	lea	r9, 0[r13+rsi]
	mov	QWORD PTR -80[rsp], r10
	mov	r10, QWORD PTR -56[rsp]
	lea	rdi, 4[r13+rdi]
	lea	rsi, 4[r13+rsi]
	vmovups	ymm6, YMMWORD PTR 64[r8]
	vmovups	ymm21, YMMWORD PTR 96[r8]
	vmovups	ymm14, YMMWORD PTR [r10]
	mov	r8, QWORD PTR -72[rsp]
	vmovups	ymm12, YMMWORD PTR 32[r10]
	vmovups	ymm10, YMMWORD PTR 64[r10]
	vmovups	ymm16, YMMWORD PTR 96[r10]
	mov	r10, QWORD PTR -64[rsp]
	vmovups	ymm11, YMMWORD PTR 64[r8]
	vmovups	ymm17, YMMWORD PTR [r8]
	vfmadd132ps	ymm0, ymm14, YMMWORD PTR [r10]
	vfmadd132ps	ymm4, ymm12, YMMWORD PTR 32[r10]
	vfmadd132ps	ymm2, ymm10, YMMWORD PTR 64[r10]
	vfmadd132ps	ymm3, ymm16, YMMWORD PTR 96[r10]
	mov	r10, QWORD PTR -80[rsp]
	vmovups	ymm13, YMMWORD PTR 32[r8]
	vmovups	ymm9, YMMWORD PTR 96[r8]
	vmovups	ymm20, YMMWORD PTR [r9]
	vfmadd132ps	ymm22, ymm11, YMMWORD PTR 64[r10]
	vfmadd132ps	ymm24, ymm17, YMMWORD PTR [r10]
	vfmadd132ps	ymm23, ymm13, YMMWORD PTR 32[r10]
	vmovups	ymm19, YMMWORD PTR 32[r9]
	vaddps	ymm0, ymm0, ymm8
	vaddps	ymm4, ymm4, ymm7
	vmovups	ymm18, YMMWORD PTR 64[r9]
	vaddps	ymm2, ymm2, ymm6
	vfmadd231ps	ymm17, ymm27, YMMWORD PTR [rdi]
	vaddps	ymm3, ymm3, ymm21
	vfmadd231ps	ymm13, ymm27, YMMWORD PTR 32[rdi]
	vmovups	ymm5, YMMWORD PTR 96[r9]
	vfmadd231ps	ymm11, ymm27, YMMWORD PTR 64[rdi]
	vaddps	ymm22, ymm22, ymm18
	vaddps	ymm24, ymm24, ymm20
	vfmadd231ps	ymm20, ymm27, YMMWORD PTR [rsi]
	vaddps	ymm23, ymm23, ymm19
	vfmadd231ps	ymm19, ymm27, YMMWORD PTR 32[rsi]
	vfmadd231ps	ymm18, ymm27, YMMWORD PTR 64[rsi]
	vaddps	ymm14, ymm14, ymm17
	vsubps	ymm2, ymm2, ymm22
	vmovaps	ymm22, ymm27
	vaddps	ymm12, ymm12, ymm13
	vfmadd132ps	ymm22, ymm9, YMMWORD PTR 96[r10]
	vfmadd231ps	ymm9, ymm27, YMMWORD PTR 96[rdi]
	vaddps	ymm10, ymm10, ymm11
	vaddps	ymm8, ymm8, ymm20
	vsubps	ymm0, ymm0, ymm24
	mov	rdi, QWORD PTR -48[rsp]
	mov	r10, QWORD PTR -24[rsp]
	vaddps	ymm7, ymm7, ymm19
	vsubps	ymm4, ymm4, ymm23
	vaddps	ymm6, ymm6, ymm18
	vsubps	ymm8, ymm8, ymm14
	vaddps	ymm22, ymm22, ymm5
	vfmadd231ps	ymm5, ymm27, YMMWORD PTR 96[rsi]
	vsubps	ymm7, ymm7, ymm12
	vaddps	ymm9, ymm9, ymm16
	vsubps	ymm6, ymm6, ymm10
	vmulps	ymm8, ymm8, ymm8
	vmulps	ymm7, ymm7, ymm7
	vsubps	ymm3, ymm3, ymm22
	vmulps	ymm6, ymm6, ymm6
	vaddps	ymm5, ymm5, ymm21
	vfmadd132ps	ymm0, ymm8, ymm0
	vsubps	ymm5, ymm5, ymm9
	vfmadd132ps	ymm4, ymm7, ymm4
	vfmadd132ps	ymm2, ymm6, ymm2
	vmovdqa	ymm6, YMMWORD PTR .LC15[rip]
	vmulps	ymm5, ymm5, ymm5
	vsqrtps	ymm0, ymm0
	vsqrtps	ymm4, ymm4
	vsqrtps	ymm2, ymm2
	vfmadd132ps	ymm3, ymm5, ymm3
	vcmpps	k1, ymm0, ymm30, 14
	vcvttps2dq	ymm0, ymm0
	vcmpps	k0, ymm4, ymm30, 14
	vcvttps2dq	ymm4, ymm4
	vpermt2w	ymm0, ymm31, ymm4
	vcmpps	k2, ymm2, ymm30, 14
	vcvttps2dq	ymm2, ymm2
	kunpckbw	k0, k0, k1
	vsqrtps	ymm3, ymm3
	vcmpps	k1, ymm3, ymm30, 14
	vcvttps2dq	ymm3, ymm3
	vpermt2w	ymm2, ymm31, ymm3
	vpermt2b	ymm0, ymm6, ymm2
	vpcmpeqd	ymm2, ymm2, ymm2
	kunpckbw	k1, k1, k2
	kunpckwd	k1, k1, k0
	vmovdqu8	ymm0{k1}, ymm2
	vmovdqu8	YMMWORD PTR 1[rdi+r10], ymm0
	mov	edi, DWORD PTR -84[rsp]
	test	dil, 31
	je	.L191
	and	edi, -32
	add	DWORD PTR -12[rsp], edi
.L183:
	mov	rdi, QWORD PTR -48[rsp]
	mov	r10, QWORD PTR -8[rsp]
	movsxd	rsi, DWORD PTR -12[rsp]
	lea	r8, [rdi+r10]
	mov	edi, DWORD PTR -108[rsp]
.L187:
	vmovss	xmm3, DWORD PTR -4[rdx+rsi*4]
	vmovaps	xmm4, xmm25
	vmovss	xmm0, DWORD PTR -4[rax+rsi*4]
	vmovaps	xmm2, xmm25
	vmovss	xmm5, DWORD PTR 4[rdx+rsi*4]
	vmovss	xmm6, DWORD PTR 4[rax+rsi*4]
	mov	r9d, -1
	vfmadd132ss	xmm4, xmm3, DWORD PTR -4[rcx+rsi*4]
	vfmadd231ss	xmm3, xmm25, DWORD PTR [rdx+rsi*4]
	vfmadd132ss	xmm2, xmm5, DWORD PTR 4[rcx+rsi*4]
	vaddss	xmm4, xmm4, xmm0
	vfmadd231ss	xmm0, xmm25, DWORD PTR [rax+rsi*4]
	vaddss	xmm3, xmm3, xmm5
	vaddss	xmm2, xmm2, xmm6
	vsubss	xmm2, xmm2, xmm4
	vaddss	xmm0, xmm0, xmm6
	vsubss	xmm0, xmm0, xmm3
	vmulss	xmm0, xmm0, xmm0
	vfmadd132ss	xmm2, xmm0, xmm2
	vsqrtss	xmm2, xmm2, xmm2
	vcomiss	xmm2, DWORD PTR .LC9[rip]
	ja	.L188
	vcvttss2si	r9d, xmm2
.L188:
	mov	BYTE PTR [r8+rsi], r9b
	inc	rsi
	cmp	edi, esi
	jg	.L187
.L191:
	mov	rax, QWORD PTR -96[rsp]
	mov	rcx, QWORD PTR -32[rsp]
	add	rbx, r14
	add	r12, r14
	mov	esi, DWORD PTR -88[rsp]
	mov	rdi, rcx
	add	r11, rax
	add	r15, rax
	cmp	DWORD PTR -16[rsp], esi
	je	.L212
	add	rax, rcx
	mov	QWORD PTR -32[rsp], rax
	jmp	.L177
	.p2align 4,,10
	.p2align 3
.L179:
	mov	r10, QWORD PTR -48[rsp]
	mov	r8, QWORD PTR -8[rsp]
	xor	esi, esi
	mov	edi, DWORD PTR -40[rsp]
	add	r8, r10
	.p2align 4,,10
	.p2align 3
.L190:
	vmovss	xmm3, DWORD PTR [rdx+rsi*4]
	vmovaps	xmm4, xmm25
	vmovss	xmm0, DWORD PTR [rax+rsi*4]
	vmovaps	xmm2, xmm25
	vmovss	xmm5, DWORD PTR 8[rdx+rsi*4]
	vmovss	xmm6, DWORD PTR 8[rax+rsi*4]
	mov	r9d, -1
	vfmadd132ss	xmm4, xmm3, DWORD PTR [rcx+rsi*4]
	vfmadd231ss	xmm3, xmm25, DWORD PTR 4[rdx+rsi*4]
	vfmadd132ss	xmm2, xmm5, DWORD PTR 8[rcx+rsi*4]
	vaddss	xmm4, xmm4, xmm0
	vfmadd231ss	xmm0, xmm25, DWORD PTR 4[rax+rsi*4]
	vaddss	xmm3, xmm3, xmm5
	vaddss	xmm2, xmm2, xmm6
	vsubss	xmm2, xmm2, xmm4
	vaddss	xmm0, xmm0, xmm6
	vsubss	xmm0, xmm0, xmm3
	vmulss	xmm0, xmm0, xmm0
	vfmadd132ss	xmm2, xmm0, xmm2
	vsqrtss	xmm2, xmm2, xmm2
	vcomiss	xmm2, DWORD PTR .LC9[rip]
	ja	.L189
	vcvttss2si	r9d, xmm2
.L189:
	mov	BYTE PTR 1[r8+rsi], r9b
	inc	rsi
	cmp	rdi, rsi
	jne	.L190
	jmp	.L191
	.p2align 4,,10
	.p2align 3
.L212:
	vzeroupper
.L213:
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L180:
	.cfi_restore_state
	mov	edi, DWORD PTR -40[rsp]
	mov	DWORD PTR -12[rsp], 1
	xor	esi, esi
	mov	DWORD PTR -84[rsp], edi
	jmp	.L192
	.cfi_endproc
.LFE1959:
	.size	_ZN7imgproc9sobel_magEPKfPhii, .-_ZN7imgproc9sobel_magEPKfPhii
	.p2align 4
	.globl	_ZN7imgproc9histogramEPKhiPm
	.type	_ZN7imgproc9histogramEPKhiPm, @function
_ZN7imgproc9histogramEPKhiPm:
.LFB1960:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	ebp, esi
	xor	esi, esi
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rdi
	mov	rdi, rdx
	mov	edx, 2048
	sub	rsp, 8
	.cfi_def_cfa_offset 32
	call	memset@PLT
	test	ebp, ebp
	jle	.L219
	movsxd	rsi, ebp
	mov	rcx, rax
	mov	rax, rbx
	add	rsi, rbx
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L217:
	movzx	edx, BYTE PTR [rax]
	inc	rax
	inc	QWORD PTR [rcx+rdx*8]
	cmp	rsi, rax
	jne	.L217
.L219:
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1960:
	.size	_ZN7imgproc9histogramEPKhiPm, .-_ZN7imgproc9histogramEPKhiPm
	.p2align 4
	.globl	_ZN7imgproc8checksumEPKhi
	.type	_ZN7imgproc8checksumEPKhi, @function
_ZN7imgproc8checksumEPKhi:
.LFB1961:
	.cfi_startproc
	endbr64
	mov	r8, rdi
	mov	edi, esi
	test	esi, esi
	jle	.L230
	lea	eax, -1[rsi]
	cmp	eax, 62
	jbe	.L231
	mov	ecx, 16
	mov	edx, esi
	vpxor	xmm6, xmm6, xmm6
	vmovdqa32	zmm5, ZMMWORD PTR .LC16[rip]
	vpbroadcastd	zmm11, ecx
	mov	ecx, 32
	shr	edx, 6
	vpternlogd	zmm6, zmm6, zmm6, 0xFF
	vpbroadcastd	zmm10, ecx
	mov	ecx, 48
	sal	rdx, 6
	mov	rax, r8
	vpbroadcastd	zmm9, ecx
	mov	ecx, 64
	vpxor	xmm7, xmm7, xmm7
	add	rdx, r8
	vpsrld	zmm6, zmm6, 24
	vpbroadcastd	zmm8, ecx
	.p2align 4,,10
	.p2align 3
.L224:
	vmovdqu8	zmm0, ZMMWORD PTR [rax]
	vpaddd	zmm3, zmm5, zmm11
	vpandd	zmm2, zmm5, zmm6
	add	rax, 64
	vpandd	zmm3, zmm3, zmm6
	vpmovzxbw	zmm1, ymm0
	vextracti64x4	ymm0, zmm0, 0x1
	vpmovzxwd	zmm4, ymm1
	vextracti64x4	ymm1, zmm1, 0x1
	vpmovzxbw	zmm0, ymm0
	vpmovzxwd	zmm1, ymm1
	vpmulld	zmm4, zmm4, zmm2
	vpmovzxwd	zmm2, ymm0
	vpmulld	zmm3, zmm3, zmm1
	vpaddd	zmm1, zmm5, zmm10
	vextracti64x4	ymm0, zmm0, 0x1
	vpandd	zmm1, zmm1, zmm6
	vpmovzxwd	zmm0, ymm0
	vpmulld	zmm1, zmm1, zmm2
	vpaddd	zmm2, zmm5, zmm9
	vpaddd	zmm5, zmm5, zmm8
	vpandd	zmm2, zmm2, zmm6
	vpmulld	zmm2, zmm2, zmm0
	vpmovzxdq	zmm0, ymm4
	vextracti32x8	ymm4, zmm4, 0x1
	vpmovzxdq	zmm4, ymm4
	vpaddq	zmm0, zmm0, zmm4
	vpmovzxdq	zmm4, ymm1
	vextracti32x8	ymm1, zmm1, 0x1
	vpaddq	zmm0, zmm0, zmm4
	vpmovzxdq	zmm1, ymm1
	vpmovzxdq	zmm4, ymm2
	vextracti32x8	ymm2, zmm2, 0x1
	vpaddq	zmm0, zmm0, zmm4
	vpmovzxdq	zmm4, ymm3
	vextracti32x8	ymm3, zmm3, 0x1
	vpmovzxdq	zmm3, ymm3
	vpmovzxdq	zmm2, ymm2
	vpaddq	zmm3, zmm4, zmm3
	vpaddq	zmm2, zmm3, zmm2
	vpaddq	zmm1, zmm2, zmm1
	vpaddq	zmm0, zmm0, zmm1
	vpaddq	zmm7, zmm7, zmm0
	cmp	rax, rdx
	jne	.L224
	vextracti64x4	ymm5, zmm7, 0x1
	mov	eax, edi
	vpaddq	ymm5, ymm5, ymm7
	and	eax, -64
	vextracti64x2	xmm0, ymm5, 0x1
	mov	esi, eax
	vpaddq	xmm0, xmm0, xmm5
	vpsrldq	xmm1, xmm0, 8
	vpaddq	xmm0, xmm0, xmm1
	vmovq	rcx, xmm0
	cmp	edi, eax
	je	.L238
.L223:
	mov	edx, edi
	sub	edx, esi
	lea	r9d, -1[rdx]
	cmp	r9d, 30
	jbe	.L227
	vpbroadcastd	ymm0, eax
	vmovdqu8	ymm1, YMMWORD PTR [r8+rsi]
	vpcmpeqd	ymm6, ymm6, ymm6
	vpaddd	ymm4, ymm0, YMMWORD PTR .LC22[rip]
	vpsrld	ymm6, ymm6, 24
	vpmovzxbw	ymm2, xmm1
	vextracti32x4	xmm1, ymm1, 0x1
	vpmovzxwd	ymm3, xmm2
	vpandd	ymm4, ymm4, ymm6
	vextracti32x4	xmm2, ymm2, 0x1
	vpmulld	ymm4, ymm4, ymm3
	vpaddd	ymm3, ymm0, YMMWORD PTR .LC24[rip]
	vpmovzxwd	ymm2, xmm2
	vpmovzxbw	ymm1, xmm1
	vpandd	ymm3, ymm3, ymm6
	vpmovzxwd	ymm7, xmm1
	vextracti32x4	xmm1, ymm1, 0x1
	vpmulld	ymm3, ymm3, ymm2
	vpaddd	ymm2, ymm0, YMMWORD PTR .LC25[rip]
	vpaddd	ymm0, ymm0, YMMWORD PTR .LC26[rip]
	vpmovzxwd	ymm1, xmm1
	vpandd	ymm2, ymm2, ymm6
	vpandd	ymm0, ymm0, ymm6
	vpmulld	ymm2, ymm2, ymm7
	vpmulld	ymm0, ymm0, ymm1
	vpmovzxdq	ymm1, xmm4
	vextracti32x4	xmm4, ymm4, 0x1
	vpmovzxdq	ymm4, xmm4
	vpaddq	ymm1, ymm1, ymm4
	vextracti32x4	xmm4, ymm2, 0x1
	vpmovzxdq	ymm2, xmm2
	vpmovzxdq	ymm4, xmm4
	vpaddq	ymm1, ymm1, ymm4
	vextracti32x4	xmm4, ymm0, 0x1
	vpmovzxdq	ymm0, xmm0
	vpmovzxdq	ymm4, xmm4
	vpaddq	ymm1, ymm1, ymm4
	vpmovzxdq	ymm4, xmm3
	vextracti32x4	xmm3, ymm3, 0x1
	vpmovzxdq	ymm3, xmm3
	vpaddq	ymm1, ymm1, ymm5
	vpaddq	ymm3, ymm4, ymm3
	vpaddq	ymm2, ymm3, ymm2
	vpaddq	ymm0, ymm2, ymm0
	vpaddq	ymm1, ymm1, ymm0
	vextracti64x2	xmm0, ymm1, 0x1
	vpaddq	xmm0, xmm0, xmm1
	vpsrldq	xmm1, xmm0, 8
	vpaddq	xmm0, xmm0, xmm1
	vmovq	rcx, xmm0
	test	dl, 31
	je	.L238
	and	edx, -32
	add	eax, edx
.L227:
	cdqe
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L229:
	movzx	edx, BYTE PTR [r8+rax]
	movzx	esi, al
	inc	rax
	imul	rdx, rsi
	add	rcx, rdx
	cmp	edi, eax
	jg	.L229
.L238:
	mov	rax, rcx
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L230:
	xor	ecx, ecx
	mov	rax, rcx
	ret
.L231:
	vpxor	xmm5, xmm5, xmm5
	xor	esi, esi
	xor	eax, eax
	xor	ecx, ecx
	jmp	.L223
	.cfi_endproc
.LFE1961:
	.size	_ZN7imgproc8checksumEPKhi, .-_ZN7imgproc8checksumEPKhi
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC27:
	.string	"wb"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC31:
	.string	"cannot create std::vector larger than max_size()"
	.section	.rodata.str1.1
.LC38:
	.string	"saved %s\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB39:
	.text
.LHOTB39:
	.p2align 4
	.globl	_ZN7imgproc8save_bmpEPKcPKhii
	.type	_ZN7imgproc8save_bmpEPKcPKhii, @function
_ZN7imgproc8save_bmpEPKcPKhii:
.LFB1962:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1962
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r15
	.cfi_offset 15, -24
	mov	r15, rsi
	lea	rsi, .LC27[rip]
	push	r14
	push	r13
	push	r12
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	mov	r12d, edx
	push	rbx
	and	rsp, -64
	add	rsp, -128
	.cfi_offset 3, -56
	mov	QWORD PTR 24[rsp], rdi
	mov	r13, QWORD PTR fs:40
	mov	QWORD PTR 120[rsp], r13
	mov	r13d, ecx
.LEHB0:
	call	fopen@PLT
	mov	QWORD PTR 40[rsp], rax
	test	rax, rax
	je	.L239
	lea	ebx, 3[r12+r12*2]
	mov	rcx, rax
	vpxor	xmm0, xmm0, xmm0
	mov	edx, 19778
	and	ebx, -4
	vmovdqa	YMMWORD PTR 64[rsp], ymm0
	vmovd	xmm5, r12d
	lea	rdi, 64[rsp]
	mov	eax, ebx
	mov	WORD PTR 64[rsp], dx
	mov	esi, 1
	imul	eax, r13d
	vmovdqu	YMMWORD PTR 86[rsp], ymm0
	vpinsrd	xmm0, xmm5, r13d, 1
	mov	DWORD PTR 90[rsp], 1572865
	vmovq	QWORD PTR 82[rsp], xmm0
	lea	edx, 54[rax]
	mov	DWORD PTR 98[rsp], eax
	movabs	rax, 12176232286995
	mov	DWORD PTR 66[rsp], edx
	mov	rdx, QWORD PTR .LC29[rip]
	mov	QWORD PTR 102[rsp], rax
	mov	QWORD PTR 74[rsp], rdx
	mov	edx, 54
	vzeroupper
	call	fwrite@PLT
	movsxd	rax, ebx
	mov	QWORD PTR 48[rsp], rax
	test	ebx, ebx
	js	.L280
	mov	QWORD PTR 56[rsp], 0
	mov	rbx, rax
	test	rax, rax
	je	.L243
	mov	rdi, rax
	call	_Znwm@PLT
.LEHE0:
	mov	rdx, rbx
	xor	esi, esi
	mov	rdi, rax
	mov	QWORD PTR 56[rsp], rax
	call	memset@PLT
.L243:
	dec	r13d
	js	.L289
	movsxd	r14, r12d
	movsxd	r9, r13d
	lea	eax, -1[r12]
	vmovdqa64	zmm2, ZMMWORD PTR .LC32[rip]
	imul	r9, r14
	vmovdqa64	zmm3, ZMMWORD PTR .LC33[rip]
	vmovdqa64	zmm4, ZMMWORD PTR .LC34[rip]
	mov	DWORD PTR 36[rsp], eax
	add	r15, r9
	.p2align 4,,10
	.p2align 3
.L256:
	test	r12d, r12d
	jle	.L251
	cmp	DWORD PTR 36[rsp], 62
	jbe	.L265
	mov	ecx, r12d
	mov	rax, QWORD PTR 56[rsp]
	mov	rdx, r15
	shr	ecx, 6
	sal	rcx, 6
	add	rcx, r15
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L249:
	vmovdqu8	zmm0, ZMMWORD PTR [rdx]
	add	rdx, 64
	add	rax, 192
	vpermb	zmm1, zmm2, zmm0
	vmovdqu8	ZMMWORD PTR -192[rax], zmm1
	vpermb	zmm1, zmm3, zmm0
	vpermb	zmm0, zmm4, zmm0
	vmovdqu8	ZMMWORD PTR -128[rax], zmm1
	vmovdqu8	ZMMWORD PTR -64[rax], zmm0
	cmp	rdx, rcx
	jne	.L249
	mov	eax, r12d
	and	eax, -64
	mov	edx, eax
	cmp	r12d, eax
	je	.L251
.L248:
	mov	ecx, r12d
	sub	ecx, edx
	lea	esi, -1[rcx]
	cmp	esi, 30
	jbe	.L253
	vmovdqu8	ymm0, YMMWORD PTR [r15+rdx]
	vmovdqa	ymm6, YMMWORD PTR .LC35[rip]
	lea	rsi, [rdx+rdx*2]
	vmovdqa	ymm7, YMMWORD PTR .LC37[rip]
	add	rsi, QWORD PTR 56[rsp]
	vpermb	ymm1, ymm6, ymm0
	vmovdqu8	YMMWORD PTR [rsi], ymm1
	vpshufb	ymm1, ymm0, YMMWORD PTR .LC36[rip]
	vpermb	ymm0, ymm7, ymm0
	vmovdqu8	YMMWORD PTR 32[rsi], ymm1
	vmovdqu8	YMMWORD PTR 64[rsi], ymm0
	test	cl, 31
	je	.L251
	and	ecx, -32
	add	eax, ecx
.L253:
	cdqe
	lea	rdx, [rax+rax*2]
	add	rdx, QWORD PTR 56[rsp]
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L255:
	movzx	ecx, BYTE PTR [r15+rax]
	inc	rax
	add	rdx, 3
	movzx	ebx, cl
	mov	BYTE PTR -1[rdx], cl
	mov	bh, cl
	mov	WORD PTR -3[rdx], bx
	cmp	r12d, eax
	jg	.L255
.L251:
	mov	rcx, QWORD PTR 40[rsp]
	mov	rdx, QWORD PTR 48[rsp]
	mov	esi, 1
	mov	rdi, QWORD PTR 56[rsp]
	vzeroupper
.LEHB1:
	call	fwrite@PLT
	dec	r13d
	vmovdqa64	zmm2, ZMMWORD PTR .LC32[rip]
	vmovdqa64	zmm3, ZMMWORD PTR .LC33[rip]
	sub	r15, r14
	vmovdqa64	zmm4, ZMMWORD PTR .LC34[rip]
	cmp	r13d, -1
	jne	.L256
	mov	rdi, QWORD PTR 40[rsp]
	vzeroupper
	call	fclose@PLT
	mov	rdx, QWORD PTR 24[rsp]
	lea	rsi, .LC38[rip]
	mov	edi, 2
	xor	eax, eax
	call	__printf_chk@PLT
.LEHE1:
.L257:
	mov	rax, QWORD PTR 120[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L288
	mov	rsi, QWORD PTR 48[rsp]
	mov	rdi, QWORD PTR 56[rsp]
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
.LEHB2:
	jmp	_ZdlPvm@PLT
.LEHE2:
.L265:
	.cfi_restore_state
	xor	edx, edx
	xor	eax, eax
	jmp	.L248
.L289:
	mov	rdi, QWORD PTR 40[rsp]
.LEHB3:
	call	fclose@PLT
	mov	rdx, QWORD PTR 24[rsp]
	lea	rsi, .LC38[rip]
	mov	edi, 2
	xor	eax, eax
	call	__printf_chk@PLT
.LEHE3:
	cmp	QWORD PTR 56[rsp], 0
	jne	.L257
.L239:
	mov	rax, QWORD PTR 120[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L288
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L288:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L266:
	endbr64
	mov	r13, rax
	jmp	.L260
	.section	.gcc_except_table,"a",@progbits
.LLSDA1962:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1962-.LLSDACSB1962
.LLSDACSB1962:
	.uleb128 .LEHB0-.LFB1962
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1962
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L266-.LFB1962
	.uleb128 0
	.uleb128 .LEHB2-.LFB1962
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB1962
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L266-.LFB1962
	.uleb128 0
.LLSDACSE1962:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1962
	.type	_ZN7imgproc8save_bmpEPKcPKhii.cold, @function
_ZN7imgproc8save_bmpEPKcPKhii.cold:
.LFSB1962:
.L280:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -56
	.cfi_offset 6, -16
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	mov	rax, QWORD PTR 120[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L287
	lea	rdi, .LC31[rip]
.LEHB4:
	call	_ZSt20__throw_length_errorPKc@PLT
.L260:
	cmp	QWORD PTR 56[rsp], 0
	je	.L284
	mov	rsi, QWORD PTR 48[rsp]
	mov	rdi, QWORD PTR 56[rsp]
	vzeroupper
	call	_ZdlPvm@PLT
.L261:
	mov	rax, QWORD PTR 120[rsp]
	sub	rax, QWORD PTR fs:40
	je	.L262
.L287:
	call	__stack_chk_fail@PLT
.L284:
	vzeroupper
	jmp	.L261
.L262:
	mov	rdi, r13
	call	_Unwind_Resume@PLT
.LEHE4:
	.cfi_endproc
.LFE1962:
	.section	.gcc_except_table
.LLSDAC1962:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1962-.LLSDACSBC1962
.LLSDACSBC1962:
	.uleb128 .LEHB4-.LCOLDB39
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSEC1962:
	.section	.text.unlikely
	.text
	.size	_ZN7imgproc8save_bmpEPKcPKhii, .-_ZN7imgproc8save_bmpEPKcPKhii
	.section	.text.unlikely
	.size	_ZN7imgproc8save_bmpEPKcPKhii.cold, .-_ZN7imgproc8save_bmpEPKcPKhii.cold
.LCOLDE39:
	.text
.LHOTE39:
	.section	.rodata.str1.8
	.align 8
.LC45:
	.string	"checksum=%lu edges_mean=%lu passes=%d size=%dx%d\n"
	.section	.rodata.str1.1
.LC46:
	.string	"--save"
.LC47:
	.string	"out_1_original.bmp"
.LC48:
	.string	"out_2_blurred.bmp"
.LC49:
	.string	"out_3_edges.bmp"
.LC50:
	.string	"out_2b_blurred_2pass.bmp"
	.section	.text.unlikely
.LCOLDB53:
	.section	.text.startup,"ax",@progbits
.LHOTB53:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB1963:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1963
	endbr64
	lea	r10, 8[rsp]
	.cfi_def_cfa 10, 0
	and	rsp, -64
	push	QWORD PTR -8[r10]
	push	rbp
	mov	rbp, rsp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	push	r15
	push	r14
	push	r13
	push	r12
	push	r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	push	rbx
	sub	rsp, 2112
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	mov	QWORD PTR -2144[rbp], rsi
	mov	DWORD PTR -2136[rbp], edi
	mov	rdi, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], rdi
	mov	edi, 1048576
.LEHB5:
	call	_Znwm@PLT
.LEHE5:
	mov	edx, 1048575
	xor	esi, esi
	mov	BYTE PTR [rax], 0
	lea	rdi, 1[rax]
	mov	QWORD PTR -2120[rbp], rax
	call	memset@PLT
	mov	edi, 1048576
.LEHB6:
	call	_Znwm@PLT
.LEHE6:
	mov	BYTE PTR [rax], 0
	lea	rdi, 1[rax]
	mov	edx, 1048575
	xor	esi, esi
	mov	QWORD PTR -2128[rbp], rax
	call	memset@PLT
	mov	edi, 4194304
.LEHB7:
	call	_Znwm@PLT
.LEHE7:
	mov	DWORD PTR [rax], 0x00000000
	lea	rdi, 4[rax]
	mov	edx, 4194300
	xor	esi, esi
	mov	rbx, rax
	call	memset@PLT
	mov	edi, 4194304
.LEHB8:
	call	_Znwm@PLT
.LEHE8:
	mov	DWORD PTR [rax], 0x00000000
	mov	edx, 4194300
	xor	esi, esi
	lea	rdi, 4[rax]
	mov	r13, rax
	call	memset@PLT
	mov	ecx, DWORD PTR _ZN7imgproc9rng_stateE[rip]
	xor	edx, edx
	mov	esi, 3352169597
.L291:
	imul	ecx, ecx, 1103515245
	add	ecx, 12345
	mov	eax, ecx
	shr	eax, 16
	mov	edi, eax
	and	eax, 32767
	imul	rax, rsi
	and	edi, 32767
	shr	rax, 37
	lea	r8d, [rax+rax*4]
	lea	eax, [rax+r8*8]
	mov	r8d, edx
	sub	edi, eax
	movsxd	rax, edx
	sar	r8d, 31
	imul	rax, rax, 354224107
	sar	rax, 35
	sub	eax, r8d
	mov	r8d, edx
	imul	eax, eax, 97
	sub	r8d, eax
	lea	eax, -20[rdi+r8*2]
	xor	edi, edi
	test	eax, eax
	cmovs	eax, edi
	mov	rdi, QWORD PTR -2120[rbp]
	mov	BYTE PTR [rdi+rdx], al
	inc	rdx
	cmp	rdx, 1048576
	jne	.L291
	mov	DWORD PTR _ZN7imgproc9rng_stateE[rip], ecx
	xor	eax, eax
.L292:
	mov	rsi, QWORD PTR -2120[rbp]
	vmovdqu8	zmm0, ZMMWORD PTR [rsi+rax]
	vpmovzxbw	zmm1, ymm0
	vextracti64x4	ymm0, zmm0, 0x1
	vpmovsxwd	zmm2, ymm1
	vextracti64x4	ymm1, zmm1, 0x1
	vpmovzxbw	zmm0, ymm0
	vpmovsxwd	zmm1, ymm1
	vcvtdq2ps	zmm2, zmm2
	vmovups	ZMMWORD PTR [rbx+rax*4], zmm2
	vcvtdq2ps	zmm1, zmm1
	vmovups	ZMMWORD PTR 64[rbx+rax*4], zmm1
	vpmovsxwd	zmm1, ymm0
	vextracti64x4	ymm0, zmm0, 0x1
	vpmovsxwd	zmm0, ymm0
	vcvtdq2ps	zmm1, zmm1
	vmovups	ZMMWORD PTR 128[rbx+rax*4], zmm1
	vcvtdq2ps	zmm0, zmm0
	vmovups	ZMMWORD PTR 192[rbx+rax*4], zmm0
	add	rax, 64
	cmp	rax, 1048576
	jne	.L292
	vbroadcastss	zmm1, DWORD PTR .LC1[rip]
	vbroadcastss	zmm16, DWORD PTR .LC3[rip]
	mov	r12d, 200
	lea	r14, 4194304[rbx]
	vbroadcastss	ymm21, DWORD PTR .LC1[rip]
	vbroadcastss	ymm18, DWORD PTR .LC3[rip]
	vbroadcastss	xmm20, DWORD PTR .LC1[rip]
	vbroadcastss	xmm17, DWORD PTR .LC3[rip]
	vmovaps	xmm19, XMMWORD PTR .LC51[rip]
	.p2align 4,,10
	.p2align 3
.L293:
	vmovq	xmm4, QWORD PTR .LC44[rip]
	mov	rdx, rbx
	lea	rcx, 4[r13]
	.p2align 4,,10
	.p2align 3
.L295:
	vmovss	xmm0, DWORD PTR [rdx]
	lea	rdi, 4[rdx]
	lea	rsi, 8[rdx]
	xor	eax, eax
	vmovss	DWORD PTR -4[rcx], xmm0
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L294:
	vmulps	zmm0, zmm1, ZMMWORD PTR [rdi+rax]
	vfmadd231ps	zmm0, zmm16, ZMMWORD PTR [rdx+rax]
	vfmadd231ps	zmm0, zmm16, ZMMWORD PTR [rsi+rax]
	vmovups	ZMMWORD PTR [rcx+rax], zmm0
	add	rax, 64
	cmp	rax, 4032
	jne	.L294
	vmulps	ymm0, ymm21, YMMWORD PTR 4036[rdx]
	add	rdx, 4096
	add	rcx, 4096
	vmulps	xmm2, xmm20, XMMWORD PTR -28[rdx]
	vfmadd231ps	ymm0, ymm18, YMMWORD PTR -64[rdx]
	vfmadd231ps	xmm2, xmm17, XMMWORD PTR -32[rdx]
	vfmadd231ps	ymm0, ymm18, YMMWORD PTR -56[rdx]
	vfmadd231ps	xmm2, xmm17, XMMWORD PTR -24[rdx]
	vmovups	YMMWORD PTR -64[rcx], ymm0
	vmovq	xmm0, QWORD PTR -12[rdx]
	vmovups	XMMWORD PTR -32[rcx], xmm2
	vmulps	xmm0, xmm0, xmm19
	vmovq	xmm3, xmm0
	vmovq	xmm0, QWORD PTR -16[rdx]
	vfmadd132ps	xmm0, xmm3, xmm4
	vmovq	xmm3, QWORD PTR -8[rdx]
	vmovshdup	xmm5, xmm3
	vmovq	xmm2, xmm0
	vmovq	xmm0, xmm3
	vfmadd132ps	xmm0, xmm2, xmm4
	vmovss	DWORD PTR -8[rcx], xmm5
	vmovlps	QWORD PTR -16[rcx], xmm0
	cmp	r14, rdx
	jne	.L295
	mov	rsi, rbx
	mov	rdi, r13
	vzeroupper
	call	_ZN7imgproc6blur_vEPKfPfii.constprop.0
	dec	r12d
	vmovaps	zmm1, ZMMWORD PTR .LC0[rip]
	jne	.L293
	mov	r15, QWORD PTR -2128[rbp]
	mov	ecx, 1024
	mov	edx, 1024
	mov	rdi, rbx
	vzeroupper
	mov	rsi, r15
	call	_ZN7imgproc9sobel_magEPKfPhii
	lea	rdx, -2112[rbp]
	mov	esi, 1048576
	mov	rdi, r15
	call	_ZN7imgproc9histogramEPKhiPm
	mov	edx, 16
	vpxor	xmm6, xmm6, xmm6
	vmovdqa32	zmm7, ZMMWORD PTR .LC16[rip]
	vpbroadcastd	zmm11, edx
	mov	edx, 32
	vpternlogd	zmm6, zmm6, zmm6, 0xFF
	mov	rax, r15
	vpbroadcastd	zmm10, edx
	lea	rcx, 1048576[r15]
	vpxor	xmm5, xmm5, xmm5
	mov	edx, 48
	vpbroadcastd	zmm9, edx
	vpsrld	zmm6, zmm6, 24
	mov	edx, 64
	vpbroadcastd	zmm8, edx
.L297:
	vmovdqu8	zmm0, ZMMWORD PTR [rax]
	vpandd	zmm3, zmm7, zmm6
	vpaddd	zmm4, zmm7, zmm11
	add	rax, 64
	vpandd	zmm4, zmm4, zmm6
	vpmovzxbw	zmm2, ymm0
	vextracti64x4	ymm0, zmm0, 0x1
	vpmovzxwd	zmm12, ymm2
	vextracti64x4	ymm2, zmm2, 0x1
	vpmovzxbw	zmm0, ymm0
	vpmulld	zmm12, zmm12, zmm3
	vpmovzxwd	zmm2, ymm2
	vpaddd	zmm3, zmm7, zmm10
	vpmulld	zmm4, zmm4, zmm2
	vpandd	zmm3, zmm3, zmm6
	vpmovzxwd	zmm2, ymm0
	vpmulld	zmm3, zmm3, zmm2
	vextracti64x4	ymm0, zmm0, 0x1
	vpaddd	zmm2, zmm7, zmm9
	vpmovzxwd	zmm0, ymm0
	vpandd	zmm2, zmm2, zmm6
	vpaddd	zmm7, zmm7, zmm8
	vpmulld	zmm2, zmm2, zmm0
	vextracti32x8	ymm0, zmm4, 0x1
	vpmovzxdq	zmm4, ymm4
	vpmovzxdq	zmm0, ymm0
	vpaddq	zmm0, zmm0, zmm4
	vextracti32x8	ymm4, zmm2, 0x1
	vpmovzxdq	zmm2, ymm2
	vpmovzxdq	zmm4, ymm4
	vpaddq	zmm0, zmm0, zmm4
	vextracti32x8	ymm4, zmm3, 0x1
	vpmovzxdq	zmm3, ymm3
	vpmovzxdq	zmm4, ymm4
	vpaddq	zmm0, zmm0, zmm4
	vextracti32x8	ymm4, zmm12, 0x1
	vpmovzxdq	zmm12, ymm12
	vpmovzxdq	zmm4, ymm4
	vpaddq	zmm4, zmm4, zmm12
	vpaddq	zmm3, zmm4, zmm3
	vpaddq	zmm2, zmm3, zmm2
	vpaddq	zmm0, zmm0, zmm2
	vpaddq	zmm5, zmm5, zmm0
	cmp	rcx, rax
	jne	.L297
	vextracti64x4	ymm2, zmm5, 0x1
	sub	rsp, 8
	mov	rcx, QWORD PTR -1088[rbp]
	mov	r9d, 1024
	vpaddq	ymm2, ymm2, ymm5
	push	1024
	mov	r8d, 200
	lea	rsi, .LC45[rip]
	vextracti64x2	xmm0, ymm2, 0x1
	mov	edi, 2
	xor	eax, eax
	vpaddq	xmm0, xmm0, xmm2
	vpsrldq	xmm2, xmm0, 8
	vpaddq	xmm0, xmm0, xmm2
	vmovq	rdx, xmm0
	vzeroupper
.LEHB9:
	.cfi_escape 0x2e,0x10
	call	__printf_chk@PLT
	pop	rax
	cmp	DWORD PTR -2136[rbp], 1
	pop	rdx
	jle	.L298
	mov	rax, QWORD PTR -2144[rbp]
	lea	rsi, .LC46[rip]
	mov	rdi, QWORD PTR 8[rax]
	call	strcmp@PLT
	test	eax, eax
	je	.L326
.L298:
	mov	esi, 4194304
	mov	rdi, r13
	call	_ZdlPvm@PLT
	mov	esi, 4194304
	mov	rdi, rbx
	call	_ZdlPvm@PLT
	mov	rdi, QWORD PTR -2128[rbp]
	mov	esi, 1048576
	call	_ZdlPvm@PLT
	mov	rdi, QWORD PTR -2120[rbp]
	mov	esi, 1048576
	call	_ZdlPvm@PLT
	mov	rax, QWORD PTR -56[rbp]
	sub	rax, QWORD PTR fs:40
	jne	.L327
	lea	rsp, -48[rbp]
	xor	eax, eax
	pop	rbx
	pop	r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsp, -8[r10]
	.cfi_def_cfa 7, 8
	ret
.L326:
	.cfi_restore_state
	mov	edi, 1048576
	.cfi_escape 0x2e,0
	call	_Znwm@PLT
.LEHE9:
	mov	BYTE PTR [rax], 0
	lea	rdi, 1[rax]
	mov	edx, 1048575
	xor	esi, esi
	mov	r15, rax
	call	memset@PLT
	vmovdqa64	zmm3, ZMMWORD PTR .LC10[rip]
	vmovaps	zmm1, ZMMWORD PTR .LC0[rip]
	xor	eax, eax
.L299:
	vaddps	zmm0, zmm1, ZMMWORD PTR [rbx+rax*4]
	vaddps	zmm2, zmm1, ZMMWORD PTR 64[rbx+rax*4]
	vaddps	zmm4, zmm1, ZMMWORD PTR 192[rbx+rax*4]
	vmovdqa64	zmm7, ZMMWORD PTR .LC11[rip]
	vcvttps2dq	zmm2, zmm2
	vcvttps2dq	zmm0, zmm0
	vpermt2w	zmm0, zmm3, zmm2
	vaddps	zmm2, zmm1, ZMMWORD PTR 128[rbx+rax*4]
	vcvttps2dq	zmm4, zmm4
	vcvttps2dq	zmm2, zmm2
	vpermt2w	zmm2, zmm3, zmm4
	vpermt2b	zmm0, zmm7, zmm2
	vmovdqu8	ZMMWORD PTR [r15+rax], zmm0
	add	rax, 64
	cmp	rax, 1048576
	jne	.L299
	mov	rsi, QWORD PTR -2120[rbp]
	mov	ecx, 1024
	mov	edx, 1024
	lea	rdi, .LC47[rip]
	vzeroupper
.LEHB10:
	call	_ZN7imgproc8save_bmpEPKcPKhii
	mov	ecx, 1024
	mov	edx, 1024
	lea	rdi, .LC48[rip]
	mov	rsi, r15
	call	_ZN7imgproc8save_bmpEPKcPKhii
	mov	rsi, QWORD PTR -2128[rbp]
	mov	ecx, 1024
	mov	edx, 1024
	lea	rdi, .LC49[rip]
	call	_ZN7imgproc8save_bmpEPKcPKhii
	mov	edi, 4194304
	call	_Znwm@PLT
.LEHE10:
	mov	DWORD PTR [rax], 0x00000000
	lea	rdi, 4[rax]
	mov	edx, 4194300
	xor	esi, esi
	mov	r12, rax
	call	memset@PLT
	xor	eax, eax
.L300:
	mov	rsi, QWORD PTR -2120[rbp]
	vmovdqu8	zmm0, ZMMWORD PTR [rsi+rax]
	vpmovzxbw	zmm2, ymm0
	vextracti64x4	ymm0, zmm0, 0x1
	vpmovsxwd	zmm4, ymm2
	vextracti64x4	ymm2, zmm2, 0x1
	vpmovzxbw	zmm0, ymm0
	vpmovsxwd	zmm2, ymm2
	vcvtdq2ps	zmm4, zmm4
	vmovups	ZMMWORD PTR [r12+rax*4], zmm4
	vcvtdq2ps	zmm2, zmm2
	vmovups	ZMMWORD PTR 64[r12+rax*4], zmm2
	vpmovsxwd	zmm2, ymm0
	vextracti64x4	ymm0, zmm0, 0x1
	vpmovsxwd	zmm0, ymm0
	vcvtdq2ps	zmm2, zmm2
	vmovups	ZMMWORD PTR 128[r12+rax*4], zmm2
	vcvtdq2ps	zmm0, zmm0
	vmovups	ZMMWORD PTR 192[r12+rax*4], zmm0
	add	rax, 64
	cmp	rax, 1048576
	jne	.L300
	mov	rsi, r13
	mov	rdi, r12
	vzeroupper
	call	_ZN7imgproc6blur_hEPKfPfii.constprop.0
	mov	rsi, r12
	mov	rdi, r13
	call	_ZN7imgproc6blur_vEPKfPfii.constprop.0
	mov	rsi, r13
	mov	rdi, r12
	call	_ZN7imgproc6blur_hEPKfPfii.constprop.0
	mov	rsi, r12
	mov	rdi, r13
	call	_ZN7imgproc6blur_vEPKfPfii.constprop.0
	vmovaps	zmm1, ZMMWORD PTR .LC0[rip]
	vmovdqa64	zmm3, ZMMWORD PTR .LC10[rip]
	xor	eax, eax
.L301:
	vaddps	zmm0, zmm1, ZMMWORD PTR [r12+rax*4]
	vaddps	zmm2, zmm1, ZMMWORD PTR 64[r12+rax*4]
	vaddps	zmm4, zmm1, ZMMWORD PTR 192[r12+rax*4]
	vmovdqa64	zmm6, ZMMWORD PTR .LC11[rip]
	vcvttps2dq	zmm2, zmm2
	vcvttps2dq	zmm0, zmm0
	vpermt2w	zmm0, zmm3, zmm2
	vaddps	zmm2, zmm1, ZMMWORD PTR 128[r12+rax*4]
	vcvttps2dq	zmm4, zmm4
	vcvttps2dq	zmm2, zmm2
	vpermt2w	zmm2, zmm3, zmm4
	vpermt2b	zmm0, zmm6, zmm2
	vmovdqu8	ZMMWORD PTR [r15+rax], zmm0
	add	rax, 64
	cmp	rax, 1048576
	jne	.L301
	mov	ecx, 1024
	mov	edx, 1024
	lea	rdi, .LC50[rip]
	mov	rsi, r15
	vzeroupper
.LEHB11:
	call	_ZN7imgproc8save_bmpEPKcPKhii
.LEHE11:
	mov	rdi, r12
	mov	esi, 4194304
	call	_ZdlPvm@PLT
	mov	esi, 1048576
	mov	rdi, r15
	call	_ZdlPvm@PLT
	jmp	.L298
.L327:
	call	__stack_chk_fail@PLT
.L310:
	endbr64
	mov	rbx, rax
	vzeroupper
	jmp	.L307
.L312:
	endbr64
	mov	r12, rax
	vzeroupper
	jmp	.L305
.L313:
	endbr64
	mov	r12, rax
	vzeroupper
	jmp	.L304
.L311:
	endbr64
	mov	rbx, rax
	vzeroupper
	jmp	.L306
.L315:
	endbr64
	jmp	.L302
.L314:
	endbr64
	mov	r12, rax
	vzeroupper
	jmp	.L303
	.section	.gcc_except_table
.LLSDA1963:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1963-.LLSDACSB1963
.LLSDACSB1963:
	.uleb128 .LEHB5-.LFB1963
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB1963
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L310-.LFB1963
	.uleb128 0
	.uleb128 .LEHB7-.LFB1963
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L311-.LFB1963
	.uleb128 0
	.uleb128 .LEHB8-.LFB1963
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L312-.LFB1963
	.uleb128 0
	.uleb128 .LEHB9-.LFB1963
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L313-.LFB1963
	.uleb128 0
	.uleb128 .LEHB10-.LFB1963
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L314-.LFB1963
	.uleb128 0
	.uleb128 .LEHB11-.LFB1963
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L315-.LFB1963
	.uleb128 0
.LLSDACSE1963:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1963
	.type	main.cold, @function
main.cold:
.LFSB1963:
.L302:
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	.cfi_escape 0x10,0x6,0x2,0x76,0
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	mov	QWORD PTR -2136[rbp], rax
	mov	rdi, r12
	mov	esi, 4194304
	vzeroupper
	call	_ZdlPvm@PLT
	mov	r12, QWORD PTR -2136[rbp]
.L303:
	mov	esi, 1048576
	mov	rdi, r15
	call	_ZdlPvm@PLT
.L304:
	mov	esi, 4194304
	mov	rdi, r13
	call	_ZdlPvm@PLT
.L305:
	mov	rdi, rbx
	mov	esi, 4194304
	mov	rbx, r12
	call	_ZdlPvm@PLT
.L306:
	mov	rdi, QWORD PTR -2128[rbp]
	mov	esi, 1048576
	call	_ZdlPvm@PLT
.L307:
	mov	rdi, QWORD PTR -2120[rbp]
	mov	esi, 1048576
	call	_ZdlPvm@PLT
	mov	rax, QWORD PTR -56[rbp]
	sub	rax, QWORD PTR fs:40
	jne	.L328
	mov	rdi, rbx
.LEHB12:
	call	_Unwind_Resume@PLT
.LEHE12:
.L328:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1963:
	.section	.gcc_except_table
.LLSDAC1963:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1963-.LLSDACSBC1963
.LLSDACSBC1963:
	.uleb128 .LEHB12-.LCOLDB53
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSEC1963:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE53:
	.section	.text.startup
.LHOTE53:
	.globl	_ZN7imgproc9rng_stateE
	.data
	.align 4
	.type	_ZN7imgproc9rng_stateE, @object
	.size	_ZN7imgproc9rng_stateE, 4
_ZN7imgproc9rng_stateE:
	.long	12345
	.section	.rodata
	.align 64
.LC0:
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.set	.LC1,.LC0
	.set	.LC3,.LC44
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC7:
	.long	1073741824
	.align 4
.LC9:
	.long	1132396544
	.section	.rodata
	.align 64
.LC10:
	.value	0
	.value	2
	.value	4
	.value	6
	.value	8
	.value	10
	.value	12
	.value	14
	.value	16
	.value	18
	.value	20
	.value	22
	.value	24
	.value	26
	.value	28
	.value	30
	.value	32
	.value	34
	.value	36
	.value	38
	.value	40
	.value	42
	.value	44
	.value	46
	.value	48
	.value	50
	.value	52
	.value	54
	.value	56
	.value	58
	.value	60
	.value	62
	.align 64
.LC11:
	.byte	0
	.byte	2
	.byte	4
	.byte	6
	.byte	8
	.byte	10
	.byte	12
	.byte	14
	.byte	16
	.byte	18
	.byte	20
	.byte	22
	.byte	24
	.byte	26
	.byte	28
	.byte	30
	.byte	32
	.byte	34
	.byte	36
	.byte	38
	.byte	40
	.byte	42
	.byte	44
	.byte	46
	.byte	48
	.byte	50
	.byte	52
	.byte	54
	.byte	56
	.byte	58
	.byte	60
	.byte	62
	.byte	64
	.byte	66
	.byte	68
	.byte	70
	.byte	72
	.byte	74
	.byte	76
	.byte	78
	.byte	80
	.byte	82
	.byte	84
	.byte	86
	.byte	88
	.byte	90
	.byte	92
	.byte	94
	.byte	96
	.byte	98
	.byte	100
	.byte	102
	.byte	104
	.byte	106
	.byte	108
	.byte	110
	.byte	112
	.byte	114
	.byte	116
	.byte	118
	.byte	120
	.byte	122
	.byte	124
	.byte	126
	.set	.LC14,.LC10
	.set	.LC15,.LC11
	.align 64
.LC16:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	12
	.long	13
	.long	14
	.long	15
	.set	.LC22,.LC16
	.set	.LC24,.LC16+32
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC25:
	.long	16
	.long	17
	.long	18
	.long	19
	.long	20
	.long	21
	.long	22
	.long	23
	.align 32
.LC26:
	.long	24
	.long	25
	.long	26
	.long	27
	.long	28
	.long	29
	.long	30
	.long	31
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC29:
	.long	54
	.long	40
	.section	.rodata
	.align 64
.LC32:
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	5
	.byte	6
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.byte	8
	.byte	9
	.byte	9
	.byte	9
	.byte	10
	.byte	10
	.byte	10
	.byte	11
	.byte	11
	.byte	11
	.byte	12
	.byte	12
	.byte	12
	.byte	13
	.byte	13
	.byte	13
	.byte	14
	.byte	14
	.byte	14
	.byte	15
	.byte	15
	.byte	15
	.byte	16
	.byte	16
	.byte	16
	.byte	17
	.byte	17
	.byte	17
	.byte	18
	.byte	18
	.byte	18
	.byte	19
	.byte	19
	.byte	19
	.byte	20
	.byte	20
	.byte	20
	.byte	21
	.align 64
.LC33:
	.byte	21
	.byte	21
	.byte	22
	.byte	22
	.byte	22
	.byte	23
	.byte	23
	.byte	23
	.byte	24
	.byte	24
	.byte	24
	.byte	25
	.byte	25
	.byte	25
	.byte	26
	.byte	26
	.byte	26
	.byte	27
	.byte	27
	.byte	27
	.byte	28
	.byte	28
	.byte	28
	.byte	29
	.byte	29
	.byte	29
	.byte	30
	.byte	30
	.byte	30
	.byte	31
	.byte	31
	.byte	31
	.byte	32
	.byte	32
	.byte	32
	.byte	33
	.byte	33
	.byte	33
	.byte	34
	.byte	34
	.byte	34
	.byte	35
	.byte	35
	.byte	35
	.byte	36
	.byte	36
	.byte	36
	.byte	37
	.byte	37
	.byte	37
	.byte	38
	.byte	38
	.byte	38
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	41
	.byte	41
	.byte	41
	.byte	42
	.byte	42
	.align 64
.LC34:
	.byte	42
	.byte	43
	.byte	43
	.byte	43
	.byte	44
	.byte	44
	.byte	44
	.byte	45
	.byte	45
	.byte	45
	.byte	46
	.byte	46
	.byte	46
	.byte	47
	.byte	47
	.byte	47
	.byte	48
	.byte	48
	.byte	48
	.byte	49
	.byte	49
	.byte	49
	.byte	50
	.byte	50
	.byte	50
	.byte	51
	.byte	51
	.byte	51
	.byte	52
	.byte	52
	.byte	52
	.byte	53
	.byte	53
	.byte	53
	.byte	54
	.byte	54
	.byte	54
	.byte	55
	.byte	55
	.byte	55
	.byte	56
	.byte	56
	.byte	56
	.byte	57
	.byte	57
	.byte	57
	.byte	58
	.byte	58
	.byte	58
	.byte	59
	.byte	59
	.byte	59
	.byte	60
	.byte	60
	.byte	60
	.byte	61
	.byte	61
	.byte	61
	.byte	62
	.byte	62
	.byte	62
	.byte	63
	.byte	63
	.byte	63
	.set	.LC35,.LC32
	.section	.rodata.cst32
	.align 32
.LC36:
	.byte	10
	.byte	11
	.byte	11
	.byte	11
	.byte	12
	.byte	12
	.byte	12
	.byte	13
	.byte	13
	.byte	13
	.byte	14
	.byte	14
	.byte	14
	.byte	15
	.byte	15
	.byte	15
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.set	.LC37,.LC33
	.section	.rodata.cst8
	.align 8
.LC44:
	.long	1048576000
	.long	1048576000
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC51:
	.long	1056964608
	.long	1056964608
	.long	0
	.long	0
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.globl	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 15.2.0-16ubuntu1) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
