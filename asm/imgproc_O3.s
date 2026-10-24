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
	cmp	r10, 24
	jbe	.L2
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L3:
	vmovups	ymm0, YMMWORD PTR [r8+rax]
	vmovups	YMMWORD PTR [r9+rax], ymm0
	add	rax, 32
	cmp	rax, 4096
	jne	.L3
.L4:
	vmovss	xmm4, DWORD PTR .LC1[rip]
	vmovss	xmm3, DWORD PTR .LC3[rip]
	lea	rsi, 4096[r9]
	lea	rdx, 4096[r8]
	lea	rcx, 8192[r8]
	lea	r11, 4190208[r8]
	vbroadcastss	ymm2, xmm4
	vbroadcastss	ymm1, xmm3
	.p2align 4,,10
	.p2align 3
.L8:
	lea	rdi, -4092[rdx]
	mov	rax, rsi
	sub	rax, rdi
	cmp	rax, 8216
	jbe	.L13
	lea	rdi, -4096[rdx]
	xor	eax, eax
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L6:
	vmulps	ymm0, ymm2, YMMWORD PTR [rdx+rax]
	vfmadd231ps	ymm0, ymm1, YMMWORD PTR [rdi+rax]
	vfmadd231ps	ymm0, ymm1, YMMWORD PTR [rcx+rax]
	vmovups	YMMWORD PTR [rsi+rax], ymm0
	add	rax, 32
	cmp	rax, 4096
	jne	.L6
.L7:
	add	rdx, 4096
	add	rsi, 4096
	add	rcx, 4096
	cmp	r11, rdx
	jne	.L8
	xor	eax, eax
	cmp	r10, 24
	jbe	.L9
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L10:
	vmovups	ymm0, YMMWORD PTR 4190208[r8+rax]
	vmovups	YMMWORD PTR 4190208[r9+rax], ymm0
	add	rax, 32
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
	vmovss	xmm3, DWORD PTR .LC3[rip]
	lea	rcx, 4[rsi]
	lea	rdx, 4[rdi]
	lea	r8, 4194308[rsi]
	vbroadcastss	ymm2, xmm4
	vbroadcastss	ymm1, xmm3
	vbroadcastss	xmm6, xmm4
	vbroadcastss	xmm5, xmm3
	.p2align 4,,10
	.p2align 3
.L29:
	vmovss	xmm0, DWORD PTR -4[rdx]
	mov	rax, rcx
	lea	rsi, -4[rdx]
	sub	rax, rdx
	vmovss	DWORD PTR -4[rcx], xmm0
	cmp	rax, 32
	jbe	.L25
	lea	rdi, 4[rdx]
	xor	eax, eax
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L26:
	vmulps	ymm0, ymm2, YMMWORD PTR [rdx+rax]
	vfmadd231ps	ymm0, ymm1, YMMWORD PTR [rsi+rax]
	vfmadd231ps	ymm0, ymm1, YMMWORD PTR [rdi+rax]
	vmovups	YMMWORD PTR [rcx+rax], ymm0
	add	rax, 32
	cmp	rax, 4064
	jne	.L26
	vmulps	xmm0, xmm6, XMMWORD PTR 4064[rdx]
	vfmadd231ps	xmm0, xmm5, XMMWORD PTR 4060[rdx]
	vfmadd231ps	xmm0, xmm5, XMMWORD PTR 4068[rdx]
	vmovups	XMMWORD PTR 4064[rcx], xmm0
	vmulss	xmm0, xmm4, DWORD PTR 4080[rdx]
	vfmadd231ss	xmm0, xmm3, DWORD PTR 4076[rdx]
	vfmadd231ss	xmm0, xmm3, DWORD PTR 4084[rdx]
	vmovss	DWORD PTR 4080[rcx], xmm0
	vmulss	xmm0, xmm4, DWORD PTR 4084[rdx]
	vfmadd231ss	xmm0, xmm3, DWORD PTR 4080[rdx]
	vfmadd231ss	xmm0, xmm3, DWORD PTR 4088[rdx]
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
	vfmadd231ss	xmm0, xmm3, DWORD PTR [rsi+rax]
	vfmadd231ss	xmm0, xmm3, DWORD PTR 8[rsi+rax]
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
	mov	r8d, edx
	test	edx, edx
	jle	.L64
	movsxd	rdx, edx
	vxorps	xmm3, xmm3, xmm3
	lea	rax, [rsi+rdx*4]
	cmp	rdi, rax
	jnb	.L54
	lea	rax, [rdi+rdx]
	cmp	rsi, rax
	jb	.L41
.L54:
	lea	eax, -1[r8]
	cmp	eax, 30
	jbe	.L52
	mov	ecx, r8d
	mov	rdx, rdi
	mov	rax, rsi
	shr	ecx, 5
	sal	rcx, 5
	add	rcx, rdi
	.p2align 4,,10
	.p2align 3
.L44:
	vmovdqu8	ymm0, YMMWORD PTR [rdx]
	add	rdx, 32
	sub	rax, -128
	vpmovzxbw	ymm1, xmm0
	vextracti32x4	xmm0, ymm0, 0x1
	vpmovsxwd	ymm2, xmm1
	vextracti32x4	xmm1, ymm1, 0x1
	vpmovzxbw	ymm0, xmm0
	vpmovsxwd	ymm1, xmm1
	vcvtdq2ps	ymm2, ymm2
	vmovups	YMMWORD PTR -128[rax], ymm2
	vcvtdq2ps	ymm1, ymm1
	vmovups	YMMWORD PTR -96[rax], ymm1
	vpmovsxwd	ymm1, xmm0
	vextracti32x4	xmm0, ymm0, 0x1
	vpmovsxwd	ymm0, xmm0
	vcvtdq2ps	ymm1, ymm1
	vmovups	YMMWORD PTR -64[rax], ymm1
	vcvtdq2ps	ymm0, ymm0
	vmovups	YMMWORD PTR -32[rax], ymm0
	cmp	rcx, rdx
	jne	.L44
	mov	edx, r8d
	and	edx, -32
	mov	eax, edx
	cmp	r8d, edx
	je	.L65
	vzeroupper
.L43:
	mov	ecx, r8d
	sub	ecx, eax
	lea	r9d, -1[rcx]
	cmp	r9d, 14
	jbe	.L53
	mov	r10d, eax
	vmovdqu8	xmm0, XMMWORD PTR [rdi+r10]
	vpmovzxbw	xmm1, xmm0
	vpsrldq	xmm0, xmm0, 8
	vpmovsxwd	xmm2, xmm1
	vpsrldq	xmm1, xmm1, 8
	vpmovzxbw	xmm0, xmm0
	vpmovsxwd	xmm1, xmm1
	vcvtdq2ps	xmm2, xmm2
	vmovups	XMMWORD PTR [rsi+r10*4], xmm2
	vcvtdq2ps	xmm1, xmm1
	vmovups	XMMWORD PTR 16[rsi+r10*4], xmm1
	vpmovsxwd	xmm1, xmm0
	vpsrldq	xmm0, xmm0, 8
	vpmovsxwd	xmm0, xmm0
	vcvtdq2ps	xmm1, xmm1
	vmovups	XMMWORD PTR 32[rsi+r10*4], xmm1
	vcvtdq2ps	xmm0, xmm0
	vmovups	XMMWORD PTR 48[rsi+r10*4], xmm0
	test	cl, 15
	je	.L64
	mov	r9d, ecx
	and	r9d, -16
	add	edx, r9d
.L46:
	sub	ecx, r9d
	lea	r10d, -1[rcx]
	cmp	r10d, 6
	jbe	.L48
	add	eax, r9d
	mov	eax, eax
	vmovq	xmm0, QWORD PTR [rdi+rax]
	lea	r9, [rsi+rax*4]
	vpmovzxbw	xmm1, xmm0
	vpsrlq	xmm0, xmm0, 32
	vpmovzxwd	xmm2, xmm1
	vpsrlq	xmm1, xmm1, 32
	vpmovzxbw	xmm0, xmm0
	vpmovzxwd	xmm1, xmm1
	vmovq	xmm2, xmm2
	vmovq	xmm1, xmm1
	vcvtdq2ps	xmm2, xmm2
	vmovlps	QWORD PTR [r9], xmm2
	vcvtdq2ps	xmm1, xmm1
	vmovlps	QWORD PTR 8[r9], xmm1
	vpmovzxwd	xmm1, xmm0
	vpsrlq	xmm0, xmm0, 32
	vpmovzxwd	xmm0, xmm0
	vmovq	xmm1, xmm1
	vmovq	xmm0, xmm0
	vcvtdq2ps	xmm1, xmm1
	vmovlps	QWORD PTR 16[r9], xmm1
	vcvtdq2ps	xmm0, xmm0
	vmovlps	QWORD PTR 24[r9], xmm0
	test	cl, 7
	je	.L64
	and	ecx, -8
	add	edx, ecx
.L48:
	movsxd	rax, edx
	movzx	ecx, BYTE PTR [rdi+rax]
	vcvtusi2ss	xmm0, xmm3, ecx
	lea	ecx, 1[rdx]
	vmovss	DWORD PTR [rsi+rax*4], xmm0
	cmp	r8d, ecx
	jle	.L64
	movsxd	rcx, ecx
	movzx	ecx, BYTE PTR [rdi+rcx]
	vcvtusi2ss	xmm0, xmm3, ecx
	lea	ecx, 2[rdx]
	vmovss	DWORD PTR 4[rsi+rax*4], xmm0
	cmp	r8d, ecx
	jle	.L64
	movsxd	rcx, ecx
	movzx	ecx, BYTE PTR [rdi+rcx]
	vcvtusi2ss	xmm0, xmm3, ecx
	lea	ecx, 3[rdx]
	vmovss	DWORD PTR 8[rsi+rax*4], xmm0
	cmp	r8d, ecx
	jle	.L64
	movsxd	rcx, ecx
	movzx	ecx, BYTE PTR [rdi+rcx]
	vcvtusi2ss	xmm0, xmm3, ecx
	lea	ecx, 4[rdx]
	vmovss	DWORD PTR 12[rsi+rax*4], xmm0
	cmp	r8d, ecx
	jle	.L64
	movsxd	rcx, ecx
	movzx	ecx, BYTE PTR [rdi+rcx]
	vcvtusi2ss	xmm0, xmm3, ecx
	lea	ecx, 5[rdx]
	vmovss	DWORD PTR 16[rsi+rax*4], xmm0
	cmp	r8d, ecx
	jle	.L64
	movsxd	rcx, ecx
	add	edx, 6
	movzx	ecx, BYTE PTR [rdi+rcx]
	vcvtusi2ss	xmm0, xmm3, ecx
	vmovss	DWORD PTR 20[rsi+rax*4], xmm0
	cmp	r8d, edx
	jle	.L64
	movsxd	rdx, edx
	movzx	edx, BYTE PTR [rdi+rdx]
	vcvtusi2ss	xmm3, xmm3, edx
	vmovss	DWORD PTR 24[rsi+rax*4], xmm3
	ret
	.p2align 4,,10
	.p2align 3
.L41:
	xor	eax, eax
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L50:
	movzx	ecx, BYTE PTR [rdi+rax]
	vcvtusi2ss	xmm0, xmm3, ecx
	vmovss	DWORD PTR [rsi+rax*4], xmm0
	inc	rax
	cmp	rax, rdx
	jne	.L50
.L64:
	ret
.L52:
	xor	eax, eax
	xor	edx, edx
	jmp	.L43
.L53:
	xor	r9d, r9d
	jmp	.L46
.L65:
	vzeroupper
	ret
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
	and	rsp, -32
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	mov	QWORD PTR -32[rsp], rsi
	mov	DWORD PTR -8[rsp], edx
	mov	DWORD PTR -16[rsp], ecx
	test	ecx, ecx
	jle	.L91
	mov	eax, edx
	lea	rcx, 4[rsi]
	vmovss	xmm6, DWORD PTR .LC1[rip]
	vmovss	xmm3, DWORD PTR .LC3[rip]
	lea	esi, -3[rax]
	lea	ebx, -1[rdx]
	movsxd	r8, edx
	mov	r12, rdi
	mov	DWORD PTR -12[rsp], esi
	lea	esi, -2[rax]
	lea	rdx, 4[rdi]
	xor	r11d, r11d
	mov	DWORD PTR -4[rsp], esi
	and	esi, -8
	xor	r9d, r9d
	vbroadcastss	xmm8, xmm6
	sub	eax, esi
	mov	DWORD PTR -24[rsp], esi
	vbroadcastss	xmm7, xmm3
	vbroadcastss	ymm2, xmm6
	mov	DWORD PTR -40[rsp], eax
	sub	eax, 3
	vbroadcastss	ymm1, xmm3
	mov	DWORD PTR -36[rsp], eax
	mov	DWORD PTR -20[rsp], ebx
	lea	rbx, 0[0+r8*4]
	.p2align 4,,10
	.p2align 3
.L69:
	vmovss	xmm0, DWORD PTR -4[rdx]
	cmp	DWORD PTR -8[rsp], 2
	vmovss	DWORD PTR -4[rcx], xmm0
	jle	.L75
	mov	r15d, DWORD PTR -12[rsp]
	lea	rax, -4[rdx]
	lea	rsi, -4[rcx]
	cmp	r15d, 2
	jbe	.L71
	mov	rdi, rcx
	sub	rdi, rdx
	cmp	rdi, 32
	jbe	.L71
	cmp	r15d, 6
	jbe	.L72
	mov	r10d, DWORD PTR -4[rsp]
	lea	r13, 4[rdx]
	xor	edi, edi
	shr	r10d, 3
	sal	r10, 5
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L73:
	vmulps	ymm0, ymm2, YMMWORD PTR [rdx+rdi]
	vfmadd231ps	ymm0, ymm1, YMMWORD PTR [rax+rdi]
	vfmadd231ps	ymm0, ymm1, YMMWORD PTR 0[r13+rdi]
	vmovups	YMMWORD PTR [rcx+rdi], ymm0
	add	rdi, 32
	cmp	rdi, r10
	jne	.L73
	test	BYTE PTR -4[rsp], 7
	je	.L75
	mov	edi, DWORD PTR -24[rsp]
	mov	r10d, edi
	inc	edi
	cmp	DWORD PTR -36[rsp], 2
	jbe	.L77
	mov	r14d, DWORD PTR -40[rsp]
	lea	r13d, -2[r14]
.L81:
	add	r10, r11
	mov	r14, QWORD PTR -32[rsp]
	vmulps	xmm0, xmm8, XMMWORD PTR 4[r12+r10*4]
	vfmadd231ps	xmm0, xmm7, XMMWORD PTR [r12+r10*4]
	vfmadd231ps	xmm0, xmm7, XMMWORD PTR 8[r12+r10*4]
	vmovups	XMMWORD PTR 4[r14+r10*4], xmm0
	test	r13b, 3
	je	.L75
	and	r13d, -4
	add	edi, r13d
.L77:
	movsxd	r14, edi
	vmovss	xmm5, DWORD PTR .LC1[rip]
	vmovss	xmm0, DWORD PTR .LC3[rip]
	lea	r10, 0[0+r14*4]
	lea	r15, [rax+r10]
	lea	r13, 4[rax+r10]
	vmulss	xmm4, xmm5, DWORD PTR [r15]
	vfmadd231ss	xmm4, xmm0, DWORD PTR -4[rax+r14*4]
	lea	r14d, 1[rdi]
	vfmadd231ss	xmm4, xmm0, DWORD PTR 0[r13]
	vmovss	DWORD PTR [rsi+r10], xmm4
	cmp	DWORD PTR -20[rsp], r14d
	jle	.L75
	vmulss	xmm4, xmm5, DWORD PTR 0[r13]
	lea	r14, 8[rax+r10]
	add	edi, 2
	vfmadd231ss	xmm4, xmm0, DWORD PTR [r15]
	vfmadd231ss	xmm4, xmm0, DWORD PTR [r14]
	vmovss	DWORD PTR 4[rsi+r10], xmm4
	cmp	DWORD PTR -20[rsp], edi
	jle	.L75
	vmulss	xmm5, xmm5, DWORD PTR [r14]
	vfmadd231ss	xmm5, xmm0, DWORD PTR 0[r13]
	vfmadd132ss	xmm0, xmm5, DWORD PTR 12[rax+r10]
	vmovss	DWORD PTR 8[rsi+r10], xmm0
.L75:
	vmovss	xmm0, DWORD PTR -8[rdx+r8*4]
	inc	r9d
	add	rdx, rbx
	add	r11, r8
	vmovss	DWORD PTR -8[rcx+r8*4], xmm0
	add	rcx, rbx
	cmp	DWORD PTR -16[rsp], r9d
	jne	.L69
	vzeroupper
.L91:
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
.L71:
	.cfi_restore_state
	mov	r10d, DWORD PTR -12[rsp]
	mov	edi, 1
	add	r10, 2
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L79:
	vmulss	xmm0, xmm6, DWORD PTR [rax+rdi*4]
	vfmadd231ss	xmm0, xmm3, DWORD PTR -4[rax+rdi*4]
	vfmadd231ss	xmm0, xmm3, DWORD PTR 4[rax+rdi*4]
	vmovss	DWORD PTR [rsi+rdi*4], xmm0
	inc	rdi
	cmp	r10, rdi
	jne	.L79
	jmp	.L75
.L72:
	mov	edi, DWORD PTR -8[rsp]
	xor	r10d, r10d
	lea	r13d, -2[rdi]
	mov	edi, 1
	jmp	.L81
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
	jle	.L165
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	r11, rsi
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	mov	ebx, edx
	lea	edx, -1[rdx]
	and	rsp, -32
	mov	DWORD PTR -8[rsp], edx
	cmp	edx, 2
	jbe	.L95
	lea	rax, -4[rsi]
	sub	rax, rdi
	cmp	rax, 24
	jbe	.L95
	cmp	edx, 6
	mov	edx, ebx
	jbe	.L125
	shr	edx, 3
	xor	eax, eax
	sal	rdx, 5
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L97:
	vmovups	ymm0, YMMWORD PTR [rdi+rax]
	vmovups	YMMWORD PTR [r11+rax], ymm0
	add	rax, 32
	cmp	rax, rdx
	jne	.L97
	mov	eax, ebx
	and	eax, -8
	mov	esi, eax
	cmp	ebx, eax
	je	.L98
	mov	edx, ebx
	sub	edx, eax
	lea	r8d, -1[rdx]
	cmp	r8d, 2
	jbe	.L99
.L96:
	vmovups	xmm0, XMMWORD PTR [rdi+rsi*4]
	vmovups	XMMWORD PTR [r11+rsi*4], xmm0
	test	dl, 3
	je	.L98
	and	edx, -4
	add	eax, edx
.L99:
	movsxd	rdx, eax
	lea	esi, 1[rax]
	vmovss	xmm0, DWORD PTR [rdi+rdx*4]
	vmovss	DWORD PTR [r11+rdx*4], xmm0
	cmp	ebx, esi
	jle	.L98
	vmovss	xmm0, DWORD PTR 4[rdi+rdx*4]
	add	eax, 2
	vmovss	DWORD PTR 4[r11+rdx*4], xmm0
	cmp	ebx, eax
	jle	.L98
	vmovss	xmm0, DWORD PTR 8[rdi+rdx*4]
	vmovss	DWORD PTR 8[r11+rdx*4], xmm0
.L98:
	lea	eax, -1[rcx]
	movsxd	rcx, ebx
	mov	DWORD PTR -24[rsp], eax
	mov	QWORD PTR -16[rsp], rcx
	cmp	eax, 1
	jle	.L168
.L104:
	mov	esi, ebx
	mov	r15, QWORD PTR -16[rsp]
	vmovss	xmm4, DWORD PTR .LC1[rip]
	mov	DWORD PTR -20[rsp], 1
	shr	esi, 3
	vmovss	xmm3, DWORD PTR .LC3[rip]
	mov	rdx, rdi
	mov	r14d, ebx
	mov	QWORD PTR -32[rsp], rsi
	lea	r10, 0[0+r15*4]
	lea	rcx, [rdi+r15*8]
	vbroadcastss	xmm6, xmm4
	lea	rax, [rdi+r10]
	vbroadcastss	xmm5, xmm3
	vbroadcastss	ymm2, xmm4
	vbroadcastss	ymm1, xmm3
	.p2align 4,,10
	.p2align 3
.L103:
	mov	r8, r15
	inc	DWORD PTR -20[rsp]
	add	r15, QWORD PTR -16[rsp]
	cmp	DWORD PTR -8[rsp], 2
	lea	r9, 0[0+r8*4]
	jbe	.L107
	lea	rsi, [r11+r9]
	lea	r12, 4[rdx]
	mov	rbx, rsi
	lea	r13, 4[rax]
	sub	rbx, r12
	mov	r12, rsi
	cmp	rbx, 24
	seta	bl
	sub	r12, r13
	cmp	r12, 24
	seta	r12b
	test	bl, r12b
	je	.L107
	lea	r12, 4[rcx]
	mov	rbx, rsi
	sub	rbx, r12
	cmp	rbx, 24
	jbe	.L107
	mov	r12, r8
	sub	r12, QWORD PTR -16[rsp]
	cmp	DWORD PTR -8[rsp], 6
	jbe	.L126
	mov	rbx, QWORD PTR -32[rsp]
	xor	r9d, r9d
	sal	rbx, 5
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L109:
	vmulps	ymm0, ymm2, YMMWORD PTR [rax+r9]
	vfmadd231ps	ymm0, ymm1, YMMWORD PTR [rdx+r9]
	vfmadd231ps	ymm0, ymm1, YMMWORD PTR [rcx+r9]
	vmovups	YMMWORD PTR [rsi+r9], ymm0
	add	r9, 32
	cmp	r9, rbx
	jne	.L109
	mov	esi, r14d
	and	esi, -8
	mov	r9d, esi
	cmp	esi, r14d
	je	.L115
	mov	ebx, r14d
	sub	ebx, esi
	lea	r13d, -1[rbx]
	mov	DWORD PTR -4[rsp], ebx
	cmp	r13d, 2
	jbe	.L112
.L108:
	lea	rbx, [r9+r8]
	lea	r13, [r15+r9]
	add	r9, r12
	vmulps	xmm0, xmm6, XMMWORD PTR [rdi+rbx*4]
	vfmadd231ps	xmm0, xmm5, XMMWORD PTR [rdi+r9*4]
	vfmadd231ps	xmm0, xmm5, XMMWORD PTR [rdi+r13*4]
	vmovups	XMMWORD PTR [r11+rbx*4], xmm0
	test	BYTE PTR -4[rsp], 3
	je	.L115
	mov	ebx, DWORD PTR -4[rsp]
	and	ebx, -4
	add	esi, ebx
.L112:
	movsxd	r9, esi
	lea	rbx, [r9+r8]
	lea	r13, [r15+r9]
	add	r9, r12
	vmulss	xmm0, xmm4, DWORD PTR [rdi+rbx*4]
	vfmadd231ss	xmm0, xmm3, DWORD PTR [rdi+r9*4]
	lea	r9d, 1[rsi]
	vfmadd231ss	xmm0, xmm3, DWORD PTR [rdi+r13*4]
	vmovss	DWORD PTR [r11+rbx*4], xmm0
	cmp	r9d, r14d
	jge	.L115
	movsxd	r9, r9d
	add	esi, 2
	lea	rbx, [r9+r8]
	lea	r13, [r15+r9]
	add	r9, r12
	vmulss	xmm0, xmm4, DWORD PTR [rdi+rbx*4]
	vfmadd231ss	xmm0, xmm3, DWORD PTR [rdi+r9*4]
	vfmadd231ss	xmm0, xmm3, DWORD PTR [rdi+r13*4]
	vmovss	DWORD PTR [r11+rbx*4], xmm0
	cmp	r14d, esi
	jle	.L115
	movsxd	rsi, esi
	add	r8, rsi
	add	r12, rsi
	lea	r9, [r15+rsi]
	vmulss	xmm0, xmm4, DWORD PTR [rdi+r8*4]
	vfmadd231ss	xmm0, xmm3, DWORD PTR [rdi+r12*4]
	vfmadd231ss	xmm0, xmm3, DWORD PTR [rdi+r9*4]
	vmovss	DWORD PTR [r11+r8*4], xmm0
.L115:
	mov	esi, DWORD PTR -24[rsp]
	add	rdx, r10
	add	rax, r10
	add	rcx, r10
	cmp	DWORD PTR -20[rsp], esi
	jl	.L103
	mov	ebx, r14d
.L106:
	mov	rax, QWORD PTR -16[rsp]
	movsxd	rdx, DWORD PTR -24[rsp]
	mov	esi, ebx
	imul	rdx, rax
	cmp	DWORD PTR -8[rsp], 2
	lea	rcx, 0[0+rdx*4]
	jbe	.L116
.L105:
	lea	rcx, 0[0+rdx*4]
	lea	r8, [r11+rcx]
	lea	r10, 4[rdi+rcx]
	mov	r9, r8
	sub	r9, r10
	cmp	r9, 24
	jbe	.L116
	cmp	DWORD PTR -8[rsp], 6
	jbe	.L127
	mov	esi, ebx
	add	rcx, rdi
	xor	eax, eax
	shr	esi, 3
	sal	rsi, 5
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L118:
	vmovups	ymm0, YMMWORD PTR [rcx+rax]
	vmovups	YMMWORD PTR [r8+rax], ymm0
	add	rax, 32
	cmp	rsi, rax
	jne	.L118
	test	bl, 7
	je	.L162
	mov	eax, ebx
	mov	esi, ebx
	and	eax, -8
	sub	esi, eax
	mov	ecx, eax
	lea	r8d, -1[rsi]
	cmp	r8d, 2
	jbe	.L121
.L117:
	add	rax, rdx
	vmovups	xmm0, XMMWORD PTR [rdi+rax*4]
	vmovups	XMMWORD PTR [r11+rax*4], xmm0
	test	sil, 3
	je	.L162
	and	esi, -4
	add	ecx, esi
.L121:
	movsxd	rax, ecx
	add	rax, rdx
	vmovss	xmm0, DWORD PTR [rdi+rax*4]
	vmovss	DWORD PTR [r11+rax*4], xmm0
	lea	eax, 1[rcx]
	cmp	ebx, eax
	jle	.L162
	cdqe
	add	ecx, 2
	add	rax, rdx
	vmovss	xmm0, DWORD PTR [rdi+rax*4]
	vmovss	DWORD PTR [r11+rax*4], xmm0
	cmp	ecx, ebx
	jge	.L162
	movsxd	rcx, ecx
	lea	rax, [rcx+rdx]
	vmovss	xmm0, DWORD PTR [rdi+rax*4]
	vmovss	DWORD PTR [r11+rax*4], xmm0
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
.L116:
	.cfi_restore_state
	sal	rax, 2
	add	rdi, rcx
	add	r11, rcx
	xor	edx, edx
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L123:
	vmovss	xmm0, DWORD PTR [rdi+rdx]
	vmovss	DWORD PTR [r11+rdx], xmm0
	add	rdx, 4
	cmp	rdx, rax
	jne	.L123
.L162:
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
.L107:
	.cfi_restore_state
	add	r9, r11
	xor	esi, esi
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L114:
	vmulss	xmm0, xmm4, DWORD PTR [rax+rsi]
	vfmadd231ss	xmm0, xmm3, DWORD PTR [rdx+rsi]
	vfmadd231ss	xmm0, xmm3, DWORD PTR [rcx+rsi]
	vmovss	DWORD PTR [r9+rsi], xmm0
	add	rsi, 4
	cmp	rsi, r10
	jne	.L114
	jmp	.L115
.L126:
	mov	DWORD PTR -4[rsp], r14d
	xor	r9d, r9d
	xor	esi, esi
	jmp	.L108
.L95:
	movsxd	rax, ebx
	mov	QWORD PTR -16[rsp], rax
	lea	rdx, 0[0+rax*4]
	xor	eax, eax
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L101:
	vmovss	xmm0, DWORD PTR [rdi+rax]
	vmovss	DWORD PTR [r11+rax], xmm0
	add	rax, 4
	cmp	rax, rdx
	jne	.L101
	lea	eax, -1[rcx]
	mov	DWORD PTR -24[rsp], eax
	cmp	eax, 1
	jg	.L104
	jmp	.L106
.L165:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	ret
.L168:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -56
	.cfi_offset 6, -16
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	movsxd	rdx, DWORD PTR -24[rsp]
	mov	rax, rcx
	mov	esi, ebx
	imul	rdx, rcx
	jmp	.L105
.L125:
	xor	esi, esi
	xor	eax, eax
	jmp	.L96
.L127:
	xor	ecx, ecx
	xor	eax, eax
	jmp	.L117
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
	and	rsp, -32
	sub	rsp, 8
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	mov	QWORD PTR -16[rsp], rsi
	mov	DWORD PTR -108[rsp], edx
	cmp	ecx, 2
	jle	.L213
	cmp	edx, 2
	jle	.L213
	movsxd	r11, edx
	lea	eax, -1[rdx]
	lea	ebx, -2[rdx]
	mov	r12, rdi
	mov	DWORD PTR -116[rsp], eax
	lea	rax, 0[0+r11*4]
	lea	r9, [rdi+r11*8]
	mov	r15, rdi
	mov	QWORD PTR -88[rsp], rax
	lea	edi, -3[rdx]
	mov	edx, ebx
	lea	r14, 1[rsi+r11]
	vmovaps	xmm8, XMMWORD PTR .LC19[rip]
	vmovaps	xmm16, XMMWORD PTR .LC20[rip]
	mov	DWORD PTR -36[rsp], ebx
	lea	rbx, [r12+rax]
	lea	eax, -1[rcx]
	lea	rcx, 0[0+rdx*4]
	mov	DWORD PTR -112[rsp], edi
	vbroadcastss	xmm6, DWORD PTR .LC7[rip]
	vbroadcastss	xmm23, DWORD PTR .LC9[rip]
	vmovdqa	ymm3, YMMWORD PTR .LC10[rip]
	mov	DWORD PTR -56[rsp], eax
	lea	rax, [r11+rdx]
	lea	rax, 8[0+rax*4]
	mov	QWORD PTR -104[rsp], rcx
	vmovdqa	ymm10, YMMWORD PTR .LC11[rip]
	mov	r13, r14
	mov	DWORD PTR -24[rsp], 1
	mov	QWORD PTR -96[rsp], rax
	mov	QWORD PTR [rsp], r11
	mov	QWORD PTR -8[rsp], r11
	lea	r11, [r14+rdx]
	.p2align 4,,10
	.p2align 3
.L172:
	mov	rax, QWORD PTR [rsp]
	mov	rdi, QWORD PTR -96[rsp]
	inc	DWORD PTR -24[rsp]
	mov	r14, rax
	add	rax, QWORD PTR -8[rsp]
	mov	QWORD PTR [rsp], rax
	lea	rax, [rdi+rbx]
	cmp	r13, rax
	setnb	dl
	cmp	r9, r11
	setnb	al
	or	edx, eax
	lea	rax, [rdi+r15]
	cmp	r13, rax
	setnb	al
	cmp	rbx, r11
	setnb	cl
	or	eax, ecx
	test	dl, al
	je	.L174
	mov	rax, QWORD PTR -104[rsp]
	lea	rax, 8[r15+rax]
	cmp	r13, rax
	setnb	dl
	cmp	r15, r11
	setnb	al
	or	al, dl
	je	.L174
	cmp	DWORD PTR -112[rsp], 30
	jbe	.L189
	mov	r10d, DWORD PTR -36[rsp]
	vbroadcastss	ymm1, DWORD PTR .LC7[rip]
	lea	r8, 8[r15]
	lea	rdi, 8[rbx]
	vbroadcastss	ymm9, DWORD PTR .LC9[rip]
	lea	rsi, 8[r9]
	lea	rcx, 4[r9]
	xor	eax, eax
	shr	r10d, 5
	lea	rdx, 4[r15]
	vpcmpeqd	ymm11, ymm11, ymm11
	sal	r10, 5
	.p2align 4,,10
	.p2align 3
.L176:
	vmovups	ymm17, YMMWORD PTR 64[r8+rax*4]
	vmovups	ymm18, YMMWORD PTR 64[r15+rax*4]
	vmovaps	ymm2, ymm1
	vmovaps	ymm29, ymm1
	vmovups	ymm12, YMMWORD PTR 64[rsi+rax*4]
	vmovups	ymm25, YMMWORD PTR 64[r9+rax*4]
	vmovaps	ymm31, ymm1
	vmovaps	ymm30, ymm1
	vfmadd132ps	ymm2, ymm17, YMMWORD PTR 64[rdi+rax*4]
	vfmadd132ps	ymm29, ymm18, YMMWORD PTR 64[rbx+rax*4]
	vmovaps	ymm0, ymm1
	vmovups	ymm24, YMMWORD PTR [r15+rax*4]
	vmovups	ymm20, YMMWORD PTR 32[r15+rax*4]
	vmovaps	ymm5, ymm1
	vmovaps	ymm4, ymm1
	vmovups	ymm15, YMMWORD PTR 96[r15+rax*4]
	vmovups	ymm21, YMMWORD PTR [r8+rax*4]
	vfmadd132ps	ymm31, ymm24, YMMWORD PTR [rbx+rax*4]
	vfmadd132ps	ymm30, ymm20, YMMWORD PTR 32[rbx+rax*4]
	vmovups	ymm19, YMMWORD PTR 32[r8+rax*4]
	vmovups	ymm27, YMMWORD PTR [r9+rax*4]
	vaddps	ymm29, ymm29, ymm25
	vaddps	ymm2, ymm2, ymm12
	vmovups	ymm26, YMMWORD PTR 32[r9+rax*4]
	vfmadd132ps	ymm0, ymm21, YMMWORD PTR [rdi+rax*4]
	vfmadd132ps	ymm5, ymm19, YMMWORD PTR 32[rdi+rax*4]
	vfmadd231ps	ymm24, ymm1, YMMWORD PTR [rdx+rax*4]
	vfmadd231ps	ymm20, ymm1, YMMWORD PTR 32[rdx+rax*4]
	vmovups	ymm7, YMMWORD PTR 96[r9+rax*4]
	vsubps	ymm2, ymm2, ymm29
	vmovaps	ymm29, ymm1
	vaddps	ymm31, ymm31, ymm27
	vmovups	ymm14, YMMWORD PTR [rsi+rax*4]
	vfmadd132ps	ymm29, ymm15, YMMWORD PTR 96[rbx+rax*4]
	vfmadd231ps	ymm27, ymm1, YMMWORD PTR [rcx+rax*4]
	vaddps	ymm30, ymm30, ymm26
	vfmadd231ps	ymm26, ymm1, YMMWORD PTR 32[rcx+rax*4]
	vmovups	ymm13, YMMWORD PTR 32[rsi+rax*4]
	vaddps	ymm0, ymm0, ymm14
	vfmadd231ps	ymm25, ymm1, YMMWORD PTR 64[rcx+rax*4]
	vfmadd231ps	ymm18, ymm1, YMMWORD PTR 64[rdx+rax*4]
	vaddps	ymm21, ymm21, ymm24
	vfmadd231ps	ymm15, ymm1, YMMWORD PTR 96[rdx+rax*4]
	vaddps	ymm5, ymm5, ymm13
	vaddps	ymm19, ymm19, ymm20
	vmovups	ymm22, YMMWORD PTR 96[r8+rax*4]
	vmovups	ymm28, YMMWORD PTR 96[rsi+rax*4]
	vsubps	ymm0, ymm0, ymm31
	vaddps	ymm29, ymm29, ymm7
	vfmadd231ps	ymm7, ymm1, YMMWORD PTR 96[rcx+rax*4]
	vaddps	ymm14, ymm14, ymm27
	vaddps	ymm13, ymm13, ymm26
	vfmadd132ps	ymm4, ymm22, YMMWORD PTR 96[rdi+rax*4]
	vsubps	ymm5, ymm5, ymm30
	vaddps	ymm12, ymm12, ymm25
	vaddps	ymm17, ymm17, ymm18
	vsubps	ymm14, ymm14, ymm21
	vaddps	ymm15, ymm15, ymm22
	vsubps	ymm13, ymm13, ymm19
	vaddps	ymm7, ymm7, ymm28
	vsubps	ymm12, ymm12, ymm17
	vmulps	ymm14, ymm14, ymm14
	vaddps	ymm4, ymm4, ymm28
	vmulps	ymm13, ymm13, ymm13
	vsubps	ymm7, ymm7, ymm15
	vmulps	ymm12, ymm12, ymm12
	vsubps	ymm4, ymm4, ymm29
	vmulps	ymm7, ymm7, ymm7
	vfmadd132ps	ymm0, ymm14, ymm0
	vfmadd132ps	ymm5, ymm13, ymm5
	vfmadd132ps	ymm2, ymm12, ymm2
	vfmadd132ps	ymm4, ymm7, ymm4
	vsqrtps	ymm0, ymm0
	vsqrtps	ymm5, ymm5
	vsqrtps	ymm2, ymm2
	vcmpps	k1, ymm0, ymm9, 14
	vcvttps2dq	ymm0, ymm0
	vsqrtps	ymm4, ymm4
	vcmpps	k0, ymm5, ymm9, 14
	vcvttps2dq	ymm5, ymm5
	vpermt2w	ymm0, ymm3, ymm5
	vcmpps	k2, ymm2, ymm9, 14
	vcvttps2dq	ymm2, ymm2
	kunpckbw	k0, k0, k1
	vcmpps	k1, ymm4, ymm9, 14
	vcvttps2dq	ymm4, ymm4
	vpermt2w	ymm2, ymm3, ymm4
	vpermt2b	ymm0, ymm10, ymm2
	kunpckbw	k1, k1, k2
	kunpckwd	k1, k1, k0
	vmovdqu8	ymm0{k1}, ymm11
	vmovdqu8	YMMWORD PTR 0[r13+rax], ymm0
	add	rax, 32
	cmp	rax, r10
	jne	.L176
	mov	eax, DWORD PTR -36[rsp]
	test	al, 31
	je	.L188
	and	eax, -32
	mov	DWORD PTR -20[rsp], eax
	lea	edi, 1[rax]
	mov	r10d, eax
.L175:
	mov	eax, DWORD PTR -108[rsp]
	mov	rsi, r14
	sub	rsi, QWORD PTR -8[rsp]
	sub	eax, r10d
	mov	QWORD PTR -48[rsp], rsi
	lea	edx, -3[rax]
	mov	DWORD PTR -40[rsp], eax
	cmp	edx, 14
	jbe	.L190
	mov	edx, r10d
	vmovaps	xmm1, xmm6
	vmovaps	xmm25, xmm6
	sub	eax, 2
	lea	rcx, [rsi+rdx]
	mov	DWORD PTR -52[rsp], eax
	lea	rsi, [r14+rdx]
	add	rdx, QWORD PTR [rsp]
	lea	rax, 8[r12+rcx*4]
	lea	r10, 8[r12+rsi*4]
	vmovaps	xmm28, xmm6
	sal	rcx, 2
	mov	QWORD PTR -64[rsp], rax
	mov	rax, rsi
	lea	rsi, 8[r12+rdx*4]
	sal	rdx, 2
	mov	QWORD PTR -72[rsp], rsi
	lea	rsi, [r12+rax*4]
	lea	r8, [r12+rcx]
	vmovaps	xmm27, xmm6
	mov	QWORD PTR -32[rsp], rax
	lea	rax, [r12+rdx]
	vmovups	xmm14, XMMWORD PTR 32[r8]
	vmovaps	xmm0, xmm6
	mov	QWORD PTR -80[rsp], rax
	mov	rax, QWORD PTR -64[rsp]
	vmovaps	xmm4, xmm6
	vmovaps	xmm2, xmm6
	vfmadd132ps	xmm25, xmm14, XMMWORD PTR 32[rsi]
	vmovups	xmm19, XMMWORD PTR [r8]
	lea	rdx, 4[r12+rdx]
	lea	rcx, 4[r12+rcx]
	vmovups	xmm13, XMMWORD PTR 32[rax]
	vmovups	xmm18, XMMWORD PTR [rax]
	vmovups	xmm15, XMMWORD PTR 16[rax]
	vmovups	xmm24, XMMWORD PTR 48[rax]
	mov	rax, QWORD PTR -72[rsp]
	vfmadd132ps	xmm1, xmm13, XMMWORD PTR 32[r10]
	vmovups	xmm17, XMMWORD PTR 16[r8]
	vfmadd132ps	xmm28, xmm19, XMMWORD PTR [rsi]
	vmovups	xmm11, XMMWORD PTR [rax]
	vmovups	xmm9, XMMWORD PTR 16[rax]
	vmovups	xmm7, XMMWORD PTR 32[rax]
	vmovups	xmm26, XMMWORD PTR 48[rax]
	mov	rax, QWORD PTR -80[rsp]
	vfmadd132ps	xmm27, xmm17, XMMWORD PTR 16[rsi]
	vaddps	xmm1, xmm1, xmm7
	vmovups	xmm12, XMMWORD PTR 48[r8]
	vfmadd132ps	xmm0, xmm18, XMMWORD PTR [r10]
	vmovups	xmm20, XMMWORD PTR 32[rax]
	vmovups	xmm22, XMMWORD PTR [rax]
	vmovups	xmm21, XMMWORD PTR 16[rax]
	vmovups	xmm5, XMMWORD PTR 48[rax]
	vaddps	xmm25, xmm25, xmm20
	vfmadd132ps	xmm4, xmm15, XMMWORD PTR 16[r10]
	vaddps	xmm28, xmm28, xmm22
	vfmadd132ps	xmm2, xmm24, XMMWORD PTR 48[r10]
	vaddps	xmm27, xmm27, xmm21
	vaddps	xmm0, xmm0, xmm11
	vsubps	xmm1, xmm1, xmm25
	vmovaps	xmm25, xmm6
	vfmadd132ps	xmm25, xmm12, XMMWORD PTR 48[rsi]
	vfmadd231ps	xmm22, xmm6, XMMWORD PTR [rdx]
	vfmadd231ps	xmm21, xmm6, XMMWORD PTR 16[rdx]
	vfmadd231ps	xmm19, xmm6, XMMWORD PTR [rcx]
	vaddps	xmm4, xmm4, xmm9
	vfmadd231ps	xmm17, xmm6, XMMWORD PTR 16[rcx]
	vfmadd231ps	xmm20, xmm6, XMMWORD PTR 32[rdx]
	vaddps	xmm2, xmm2, xmm26
	vfmadd231ps	xmm14, xmm6, XMMWORD PTR 32[rcx]
	vfmadd231ps	xmm12, xmm6, XMMWORD PTR 48[rcx]
	vsubps	xmm0, xmm0, xmm28
	vsubps	xmm4, xmm4, xmm27
	mov	rax, QWORD PTR -32[rsp]
	vaddps	xmm25, xmm25, xmm5
	vfmadd231ps	xmm5, xmm6, XMMWORD PTR 48[rdx]
	vaddps	xmm11, xmm11, xmm22
	mov	edx, 15
	vaddps	xmm9, xmm9, xmm21
	vaddps	xmm18, xmm18, xmm19
	kmovb	k3, edx
	mov	rdx, QWORD PTR -16[rsp]
	vaddps	xmm15, xmm15, xmm17
	vaddps	xmm7, xmm7, xmm20
	vaddps	xmm13, xmm13, xmm14
	vaddps	xmm12, xmm12, xmm24
	vsubps	xmm11, xmm11, xmm18
	vsubps	xmm2, xmm2, xmm25
	vaddps	xmm5, xmm5, xmm26
	vsubps	xmm9, xmm9, xmm15
	vsubps	xmm7, xmm7, xmm13
	vmulps	xmm11, xmm11, xmm11
	vmulps	xmm9, xmm9, xmm9
	vsubps	xmm5, xmm5, xmm12
	vmulps	xmm7, xmm7, xmm7
	vmulps	xmm5, xmm5, xmm5
	vfmadd132ps	xmm0, xmm11, xmm0
	vfmadd132ps	xmm4, xmm9, xmm4
	vfmadd132ps	xmm1, xmm7, xmm1
	vmovdqa	xmm7, XMMWORD PTR .LC14[rip]
	vfmadd132ps	xmm2, xmm5, xmm2
	vsqrtps	xmm0, xmm0
	vsqrtps	xmm4, xmm4
	vsqrtps	xmm1, xmm1
	vsqrtps	xmm2, xmm2
	vcmpps	k0, xmm0, xmm23, 14
	vcvttps2dq	xmm0, xmm0
	vcmpps	k1, xmm4, xmm23, 14
	vcvttps2dq	xmm4, xmm4
	vpermt2w	xmm0, xmm7, xmm4
	kandb	k0, k0, k3
	vcmpps	k2, xmm2, xmm23, 14
	kshiftlb	k1, k1, 4
	vcvttps2dq	xmm2, xmm2
	korb	k0, k0, k1
	vcmpps	k1, xmm1, xmm23, 14
	vcvttps2dq	xmm1, xmm1
	vpermt2w	xmm1, xmm7, xmm2
	vmovdqa	xmm7, XMMWORD PTR .LC15[rip]
	vpermt2b	xmm0, xmm7, xmm1
	vpcmpeqd	xmm1, xmm1, xmm1
	kandb	k1, k1, k3
	kshiftlb	k2, k2, 4
	korb	k1, k1, k2
	kunpckbw	k1, k1, k0
	vmovdqu8	xmm0{k1}, xmm1
	vmovdqu8	XMMWORD PTR 1[rdx+rax], xmm0
	mov	eax, DWORD PTR -52[rsp]
	test	al, 15
	je	.L188
	mov	ecx, eax
	and	ecx, -16
	add	edi, ecx
.L178:
	mov	edx, DWORD PTR -40[rsp]
	sub	edx, ecx
	lea	esi, -3[rdx]
	cmp	esi, 6
	jbe	.L180
	mov	eax, DWORD PTR -20[rsp]
	sub	edx, 2
	add	eax, ecx
	mov	rcx, QWORD PTR -48[rsp]
	mov	eax, eax
	add	rcx, rax
	lea	rsi, [r14+rax]
	add	rax, QWORD PTR [rsp]
	vmovq	xmm20, QWORD PTR 16[r12+rcx*4]
	vmovq	xmm15, QWORD PTR 24[r12+rcx*4]
	vmovq	xmm2, QWORD PTR 24[r12+rsi*4]
	vmovq	xmm5, QWORD PTR 16[r12+rsi*4]
	vmovq	xmm11, QWORD PTR 16[r12+rax*4]
	vmovq	xmm9, QWORD PTR 24[r12+rax*4]
	vmovaps	xmm19, xmm15
	vfmadd132ps	xmm2, xmm15, xmm8
	vfmadd132ps	xmm5, xmm20, xmm8
	vmovq	xmm17, QWORD PTR 32[r12+rcx*4]
	vmovq	xmm1, QWORD PTR 32[r12+rsi*4]
	vmovq	xmm12, QWORD PTR 32[r12+rax*4]
	vmovq	xmm21, QWORD PTR 8[r12+rcx*4]
	vmovaps	xmm24, xmm9
	vfmadd132ps	xmm1, xmm17, xmm8
	vmovq	xmm22, QWORD PTR [r12+rcx*4]
	vmovq	xmm13, QWORD PTR 8[r12+rsi*4]
	vmovq	xmm4, QWORD PTR 16[r12+rsi*4]
	vmovq	xmm0, QWORD PTR [r12+rsi*4]
	vfmadd132ps	xmm13, xmm21, xmm8
	vmovq	xmm7, QWORD PTR 8[r12+rax*4]
	vmovq	xmm25, QWORD PTR [r12+rax*4]
	vmovq	xmm2, xmm2
	vfmadd132ps	xmm4, xmm20, xmm8
	vmovq	xmm5, xmm5
	vmovq	xmm14, QWORD PTR 4[r12+rax*4]
	vaddps	xmm2, xmm2, xmm9
	vaddps	xmm5, xmm5, xmm11
	vfmadd132ps	xmm0, xmm22, xmm8
	vmovq	xmm1, xmm1
	vfmadd132ps	xmm14, xmm25, xmm8
	vaddps	xmm1, xmm1, xmm12
	vmovq	xmm5, xmm5
	vmovq	xmm2, xmm2
	vmovq	xmm13, xmm13
	vsubps	xmm2, xmm2, xmm5
	vmovq	xmm5, QWORD PTR 24[r12+rsi*4]
	vmovq	xmm4, xmm4
	vaddps	xmm13, xmm13, xmm7
	vmovq	xmm1, xmm1
	vmovq	xmm0, xmm0
	vaddps	xmm4, xmm4, xmm11
	vfmadd132ps	xmm5, xmm15, xmm8
	vaddps	xmm0, xmm0, xmm25
	vmovq	xmm14, xmm14
	vmovq	xmm13, xmm13
	vmovq	xmm2, xmm2
	vmovq	xmm4, xmm4
	vmovq	xmm0, xmm0
	vsubps	xmm4, xmm4, xmm13
	vsubps	xmm0, xmm13, xmm0
	vmovq	xmm13, QWORD PTR 12[r12+rax*4]
	vmovq	xmm5, xmm5
	vaddps	xmm5, xmm5, xmm9
	vfmadd132ps	xmm13, xmm7, xmm8
	vaddps	xmm7, xmm7, xmm14
	vmovq	xmm14, QWORD PTR 12[r12+rcx*4]
	vmovq	xmm0, xmm0
	vmovq	xmm4, xmm4
	vfmadd132ps	xmm14, xmm21, xmm8
	vmovq	xmm5, xmm5
	vmovq	xmm7, xmm7
	vsubps	xmm1, xmm1, xmm5
	vmovq	xmm5, QWORD PTR 20[r12+rax*4]
	vmovq	xmm13, xmm13
	vfmadd132ps	xmm5, xmm11, xmm8
	vaddps	xmm11, xmm11, xmm13
	vmovq	xmm13, QWORD PTR 20[r12+rcx*4]
	vmovq	xmm14, xmm14
	vfmadd132ps	xmm13, xmm20, xmm8
	vmovq	xmm11, xmm11
	vmovq	xmm5, xmm5
	vaddps	xmm9, xmm9, xmm5
	vmovq	xmm5, QWORD PTR 28[r12+rax*4]
	mov	rax, QWORD PTR -16[rsp]
	vmovq	xmm13, xmm13
	vfmadd132ps	xmm5, xmm24, xmm8
	vaddps	xmm15, xmm15, xmm13
	vmovq	xmm9, xmm9
	vmovq	xmm15, xmm15
	vsubps	xmm9, xmm9, xmm15
	vmovq	xmm5, xmm5
	vaddps	xmm5, xmm5, xmm12
	vmovq	xmm12, QWORD PTR 4[r12+rcx*4]
	vmovq	xmm9, xmm9
	vmulps	xmm9, xmm9, xmm9
	vfmadd132ps	xmm12, xmm22, xmm8
	vmovq	xmm5, xmm5
	vmovq	xmm18, xmm12
	vmovq	xmm9, xmm9
	vaddps	xmm12, xmm21, xmm18
	vfmadd132ps	xmm2, xmm9, xmm2
	vmovq	xmm12, xmm12
	vsubps	xmm7, xmm7, xmm12
	vaddps	xmm12, xmm20, xmm14
	vmovq	xmm2, xmm2
	vsqrtps	xmm2, xmm2
	vmovq	xmm12, xmm12
	vmovq	xmm7, xmm7
	vsubps	xmm11, xmm11, xmm12
	vmovq	xmm12, QWORD PTR 28[r12+rcx*4]
	vmulps	xmm7, xmm7, xmm7
	vfmadd132ps	xmm12, xmm19, xmm8
	vmovq	xmm2, xmm2
	vmovq	xmm11, xmm11
	vmulps	xmm11, xmm11, xmm11
	vmovq	xmm7, xmm7
	vfmadd132ps	xmm0, xmm7, xmm0
	vmovq	xmm12, xmm12
	vaddps	xmm12, xmm12, xmm17
	vmovq	xmm11, xmm11
	vfmadd132ps	xmm4, xmm11, xmm4
	vmovaps	xmm11, xmm16
	vmovq	xmm12, xmm12
	vmovq	xmm0, xmm0
	vsubps	xmm5, xmm5, xmm12
	vsqrtps	xmm0, xmm0
	vmovq	xmm5, xmm5
	vmulps	xmm5, xmm5, xmm5
	vmovq	xmm0, xmm0
	vmovq	xmm7, xmm5
	vmovq	xmm5, xmm1
	vmovq	xmm1, xmm4
	vfmadd132ps	xmm5, xmm7, xmm5
	vsqrtps	xmm1, xmm1
	vmovaps	xmm7, xmm16
	vcmpltps	xmm4, xmm7, xmm0
	vcvttps2dq	xmm0, xmm0
	vmovq	xmm1, xmm1
	vmovq	xmm5, xmm5
	vcmpltps	xmm9, xmm7, xmm1
	vpxor	xmm7, xmm7, xmm7
	vcvttps2dq	xmm1, xmm1
	vsqrtps	xmm5, xmm5
	vpblendw	xmm4, xmm7, xmm4, 5
	vpblendw	xmm0, xmm7, xmm0, 5
	vpblendw	xmm1, xmm7, xmm1, 5
	vpblendw	xmm9, xmm7, xmm9, 5
	vpackusdw	xmm0, xmm0, xmm1
	vpackusdw	xmm4, xmm4, xmm9
	vcmpltps	xmm9, xmm11, xmm2
	vcvttps2dq	xmm2, xmm2
	vpblendw	xmm2, xmm7, xmm2, 5
	vmovq	xmm11, xmm5
	vmovaps	xmm5, xmm16
	vpshufd	xmm4, xmm4, 8
	vcmpltps	xmm5, xmm5, xmm11
	vcvttps2dq	xmm11, xmm11
	vpshufd	xmm0, xmm0, 8
	vpblendw	xmm9, xmm7, xmm9, 5
	vpblendw	xmm5, xmm7, xmm5, 5
	vpblendw	xmm7, xmm7, xmm11, 5
	vpackusdw	xmm9, xmm9, xmm5
	vpackusdw	xmm2, xmm2, xmm7
	vmovq	xmm5, QWORD PTR .LC18[rip]
	vpshufd	xmm9, xmm9, 8
	vpshufd	xmm2, xmm2, 8
	vpand	xmm4, xmm5, xmm4
	vpand	xmm9, xmm5, xmm9
	vpand	xmm0, xmm5, xmm0
	vpand	xmm5, xmm5, xmm2
	vpackuswb	xmm4, xmm4, xmm9
	vpackuswb	xmm0, xmm0, xmm5
	vpshufd	xmm4, xmm4, 8
	vpshufd	xmm0, xmm0, 8
	vpor	xmm4, xmm4, xmm0
	vmovq	QWORD PTR 1[rax+rsi], xmm4
	test	dl, 7
	je	.L188
	and	edx, -8
	add	edi, edx
.L180:
	movsxd	rax, edi
	mov	rdi, QWORD PTR -16[rsp]
	vmovss	xmm4, DWORD PTR .LC7[rip]
	mov	edx, DWORD PTR -116[rsp]
	lea	rcx, [rdi+r14]
.L184:
	vmovss	xmm2, DWORD PTR -4[r15+rax*4]
	vmovaps	xmm5, xmm4
	vmovss	xmm0, DWORD PTR -4[r9+rax*4]
	vmovaps	xmm1, xmm4
	vmovss	xmm7, DWORD PTR 4[r15+rax*4]
	vmovss	xmm9, DWORD PTR 4[r9+rax*4]
	mov	esi, -1
	vfmadd132ss	xmm5, xmm2, DWORD PTR -4[rbx+rax*4]
	vfmadd231ss	xmm2, xmm4, DWORD PTR [r15+rax*4]
	vfmadd132ss	xmm1, xmm7, DWORD PTR 4[rbx+rax*4]
	vaddss	xmm5, xmm5, xmm0
	vfmadd231ss	xmm0, xmm4, DWORD PTR [r9+rax*4]
	vaddss	xmm2, xmm2, xmm7
	vaddss	xmm1, xmm1, xmm9
	vsubss	xmm1, xmm1, xmm5
	vaddss	xmm0, xmm0, xmm9
	vsubss	xmm0, xmm0, xmm2
	vmulss	xmm0, xmm0, xmm0
	vfmadd132ss	xmm1, xmm0, xmm1
	vsqrtss	xmm1, xmm1, xmm1
	vcomiss	xmm1, DWORD PTR .LC9[rip]
	ja	.L185
	vcvttss2si	esi, xmm1
.L185:
	mov	BYTE PTR [rcx+rax], sil
	inc	rax
	cmp	edx, eax
	jg	.L184
.L188:
	mov	rdi, QWORD PTR -8[rsp]
	mov	rax, QWORD PTR -88[rsp]
	add	r13, rdi
	add	r11, rdi
	mov	edi, DWORD PTR -24[rsp]
	add	r9, rax
	add	rbx, rax
	add	r15, rax
	cmp	DWORD PTR -56[rsp], edi
	jne	.L172
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
	.p2align 4,,10
	.p2align 3
.L174:
	.cfi_restore_state
	mov	rdi, QWORD PTR -16[rsp]
	mov	edx, DWORD PTR -36[rsp]
	xor	eax, eax
	vmovss	xmm4, DWORD PTR .LC7[rip]
	lea	rcx, [rdi+r14]
	.p2align 4,,10
	.p2align 3
.L187:
	vmovss	xmm2, DWORD PTR [r15+rax*4]
	vmovaps	xmm5, xmm4
	vmovss	xmm0, DWORD PTR [r9+rax*4]
	vmovaps	xmm1, xmm4
	vmovss	xmm7, DWORD PTR 8[r15+rax*4]
	vmovss	xmm9, DWORD PTR 8[r9+rax*4]
	mov	esi, -1
	vfmadd132ss	xmm5, xmm2, DWORD PTR [rbx+rax*4]
	vfmadd231ss	xmm2, xmm4, DWORD PTR 4[r15+rax*4]
	vfmadd132ss	xmm1, xmm7, DWORD PTR 8[rbx+rax*4]
	vaddss	xmm5, xmm5, xmm0
	vfmadd231ss	xmm0, xmm4, DWORD PTR 4[r9+rax*4]
	vaddss	xmm2, xmm2, xmm7
	vaddss	xmm1, xmm1, xmm9
	vsubss	xmm1, xmm1, xmm5
	vaddss	xmm0, xmm0, xmm9
	vsubss	xmm0, xmm0, xmm2
	vmulss	xmm0, xmm0, xmm0
	vfmadd132ss	xmm1, xmm0, xmm1
	vsqrtss	xmm1, xmm1, xmm1
	vcomiss	xmm1, DWORD PTR .LC9[rip]
	ja	.L186
	vcvttss2si	esi, xmm1
.L186:
	mov	BYTE PTR 1[rcx+rax], sil
	inc	rax
	cmp	rdx, rax
	jne	.L187
	jmp	.L188
.L189:
	mov	DWORD PTR -20[rsp], 0
	mov	edi, 1
	mov	r10d, DWORD PTR -20[rsp]
	jmp	.L175
.L190:
	xor	ecx, ecx
	jmp	.L178
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
	cmp	rax, rsi
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
	test	esi, esi
	jle	.L229
	lea	eax, -1[rsi]
	cmp	eax, 30
	jbe	.L230
	mov	ecx, 8
	mov	edx, esi
	vpcmpeqd	ymm6, ymm6, ymm6
	vmovdqa	ymm5, YMMWORD PTR .LC21[rip]
	vpbroadcastd	ymm11, ecx
	mov	ecx, 16
	shr	edx, 5
	mov	rax, rdi
	vpbroadcastd	ymm10, ecx
	mov	ecx, 24
	sal	rdx, 5
	vpxor	xmm7, xmm7, xmm7
	vpbroadcastd	ymm9, ecx
	vpsrld	ymm6, ymm6, 24
	mov	ecx, 32
	add	rdx, rdi
	vpbroadcastd	ymm8, ecx
	.p2align 4,,10
	.p2align 3
.L224:
	vmovdqu8	ymm0, YMMWORD PTR [rax]
	vpandd	ymm2, ymm5, ymm6
	vpaddd	ymm4, ymm5, ymm11
	add	rax, 32
	vpandd	ymm4, ymm4, ymm6
	vpmovzxbw	ymm1, xmm0
	vextracti32x4	xmm0, ymm0, 0x1
	vpmovzxwd	ymm3, xmm1
	vextracti32x4	xmm1, ymm1, 0x1
	vpmovzxbw	ymm0, xmm0
	vpmulld	ymm3, ymm3, ymm2
	vpmovzxwd	ymm1, xmm1
	vpaddd	ymm2, ymm5, ymm10
	vpmulld	ymm4, ymm4, ymm1
	vpandd	ymm2, ymm2, ymm6
	vpmovzxwd	ymm1, xmm0
	vpmulld	ymm2, ymm2, ymm1
	vextracti32x4	xmm0, ymm0, 0x1
	vpaddd	ymm1, ymm5, ymm9
	vpmovzxwd	ymm0, xmm0
	vpandd	ymm1, ymm1, ymm6
	vpaddd	ymm5, ymm5, ymm8
	vpmulld	ymm1, ymm1, ymm0
	vpmovzxdq	ymm0, xmm4
	vextracti32x4	xmm4, ymm4, 0x1
	vpmovzxdq	ymm4, xmm4
	vpaddq	ymm0, ymm0, ymm4
	vextracti32x4	xmm4, ymm1, 0x1
	vpmovzxdq	ymm1, xmm1
	vpmovzxdq	ymm4, xmm4
	vpaddq	ymm0, ymm0, ymm4
	vextracti32x4	xmm4, ymm2, 0x1
	vpmovzxdq	ymm2, xmm2
	vpmovzxdq	ymm4, xmm4
	vpaddq	ymm0, ymm0, ymm4
	vpmovzxdq	ymm4, xmm3
	vextracti32x4	xmm3, ymm3, 0x1
	vpmovzxdq	ymm3, xmm3
	vpaddq	ymm3, ymm4, ymm3
	vpaddq	ymm2, ymm3, ymm2
	vpaddq	ymm1, ymm2, ymm1
	vpaddq	ymm0, ymm0, ymm1
	vpaddq	ymm7, ymm7, ymm0
	cmp	rdx, rax
	jne	.L224
	vextracti64x2	xmm0, ymm7, 0x1
	mov	edx, esi
	vpaddq	xmm0, xmm0, xmm7
	and	edx, -32
	vpsrldq	xmm1, xmm0, 8
	mov	r8d, edx
	vpaddq	xmm1, xmm0, xmm1
	vmovq	rax, xmm1
	cmp	esi, edx
	je	.L235
	vmovdqa	xmm6, xmm0
	vzeroupper
.L223:
	mov	ecx, esi
	sub	ecx, r8d
	lea	r9d, -1[rcx]
	cmp	r9d, 14
	jbe	.L227
	vpbroadcastd	xmm0, edx
	vmovdqu8	xmm1, XMMWORD PTR [rdi+r8]
	vpcmpeqd	xmm5, xmm5, xmm5
	vpaddd	xmm3, xmm0, XMMWORD PTR .LC27[rip]
	vpsrld	xmm5, xmm5, 24
	vpmovzxbw	xmm4, xmm1
	vpsrldq	xmm1, xmm1, 8
	vpmovzxwd	xmm2, xmm4
	vpandd	xmm3, xmm3, xmm5
	vpmovzxbw	xmm1, xmm1
	vpmulld	xmm3, xmm3, xmm2
	vpaddd	xmm2, xmm0, XMMWORD PTR .LC29[rip]
	vpmovzxwd	xmm7, xmm1
	vpsrldq	xmm4, xmm4, 8
	vpsrldq	xmm1, xmm1, 8
	vpmovzxwd	xmm4, xmm4
	vpandd	xmm2, xmm2, xmm5
	vpmovzxwd	xmm1, xmm1
	vpmulld	xmm2, xmm2, xmm4
	vpaddd	xmm4, xmm0, XMMWORD PTR .LC30[rip]
	vpaddd	xmm0, xmm0, XMMWORD PTR .LC31[rip]
	vpandd	xmm4, xmm4, xmm5
	vpandd	xmm0, xmm0, xmm5
	vpmulld	xmm4, xmm4, xmm7
	vpmulld	xmm0, xmm0, xmm1
	vpmovzxdq	xmm1, xmm3
	vpsrldq	xmm3, xmm3, 8
	vpmovzxdq	xmm3, xmm3
	vpaddq	xmm1, xmm1, xmm3
	vpsrldq	xmm3, xmm4, 8
	vpmovzxdq	xmm4, xmm4
	vpmovzxdq	xmm3, xmm3
	vpaddq	xmm1, xmm1, xmm3
	vpsrldq	xmm3, xmm0, 8
	vpmovzxdq	xmm0, xmm0
	vpmovzxdq	xmm3, xmm3
	vpaddq	xmm1, xmm1, xmm3
	vpmovzxdq	xmm3, xmm2
	vpsrldq	xmm2, xmm2, 8
	vpaddq	xmm1, xmm1, xmm6
	vpmovzxdq	xmm2, xmm2
	vpaddq	xmm2, xmm3, xmm2
	vpaddq	xmm2, xmm2, xmm4
	vpaddq	xmm0, xmm2, xmm0
	vpaddq	xmm0, xmm1, xmm0
	vpsrldq	xmm1, xmm0, 8
	vpaddq	xmm0, xmm0, xmm1
	vmovq	rax, xmm0
	test	cl, 15
	je	.L221
	and	ecx, -16
	add	edx, ecx
.L227:
	movsxd	rcx, edx
	movzx	r8d, dl
	movzx	ecx, BYTE PTR [rdi+rcx]
	imul	rcx, r8
	add	rax, rcx
	lea	ecx, 1[rdx]
	cmp	esi, ecx
	jle	.L221
	movsxd	r8, ecx
	movzx	ecx, cl
	movzx	r8d, BYTE PTR [rdi+r8]
	imul	rcx, r8
	add	rax, rcx
	lea	ecx, 2[rdx]
	cmp	esi, ecx
	jle	.L221
	movsxd	r8, ecx
	movzx	ecx, cl
	movzx	r8d, BYTE PTR [rdi+r8]
	imul	rcx, r8
	add	rax, rcx
	lea	ecx, 3[rdx]
	cmp	esi, ecx
	jle	.L221
	movsxd	r8, ecx
	movzx	ecx, cl
	movzx	r8d, BYTE PTR [rdi+r8]
	imul	rcx, r8
	add	rax, rcx
	lea	ecx, 4[rdx]
	cmp	esi, ecx
	jle	.L221
	movsxd	r8, ecx
	movzx	ecx, cl
	movzx	r8d, BYTE PTR [rdi+r8]
	imul	rcx, r8
	add	rax, rcx
	lea	ecx, 5[rdx]
	cmp	esi, ecx
	jle	.L221
	movsxd	r8, ecx
	movzx	ecx, cl
	movzx	r8d, BYTE PTR [rdi+r8]
	imul	rcx, r8
	add	rax, rcx
	lea	ecx, 6[rdx]
	cmp	esi, ecx
	jle	.L221
	movsxd	r8, ecx
	movzx	ecx, cl
	movzx	r8d, BYTE PTR [rdi+r8]
	imul	rcx, r8
	add	rax, rcx
	lea	ecx, 7[rdx]
	cmp	esi, ecx
	jle	.L221
	movsxd	r8, ecx
	movzx	ecx, cl
	movzx	r8d, BYTE PTR [rdi+r8]
	imul	rcx, r8
	add	rax, rcx
	lea	ecx, 8[rdx]
	cmp	esi, ecx
	jle	.L221
	movsxd	r8, ecx
	movzx	ecx, cl
	movzx	r8d, BYTE PTR [rdi+r8]
	imul	rcx, r8
	add	rax, rcx
	lea	ecx, 9[rdx]
	cmp	esi, ecx
	jle	.L221
	movsxd	r8, ecx
	movzx	ecx, cl
	movzx	r8d, BYTE PTR [rdi+r8]
	imul	rcx, r8
	add	rax, rcx
	lea	ecx, 10[rdx]
	cmp	esi, ecx
	jle	.L221
	movsxd	r8, ecx
	movzx	ecx, cl
	movzx	r8d, BYTE PTR [rdi+r8]
	imul	rcx, r8
	add	rax, rcx
	lea	ecx, 11[rdx]
	cmp	esi, ecx
	jle	.L221
	movsxd	r8, ecx
	movzx	ecx, cl
	movzx	r8d, BYTE PTR [rdi+r8]
	imul	rcx, r8
	add	rax, rcx
	lea	ecx, 12[rdx]
	cmp	esi, ecx
	jle	.L221
	movsxd	r8, ecx
	movzx	ecx, cl
	movzx	r8d, BYTE PTR [rdi+r8]
	imul	rcx, r8
	add	rax, rcx
	lea	ecx, 13[rdx]
	cmp	esi, ecx
	jle	.L221
	movsxd	r8, ecx
	movzx	ecx, cl
	add	edx, 14
	movzx	r8d, BYTE PTR [rdi+r8]
	imul	rcx, r8
	add	rax, rcx
	cmp	esi, edx
	jle	.L221
	movsxd	rcx, edx
	movzx	edx, dl
	movzx	ecx, BYTE PTR [rdi+rcx]
	imul	rdx, rcx
	add	rax, rdx
	ret
.L235:
	vzeroupper
.L221:
	ret
	.p2align 4,,10
	.p2align 3
.L229:
	xor	eax, eax
	ret
.L230:
	vpxor	xmm6, xmm6, xmm6
	xor	r8d, r8d
	xor	edx, edx
	xor	eax, eax
	jmp	.L223
	.cfi_endproc
.LFE1961:
	.size	_ZN7imgproc8checksumEPKhi, .-_ZN7imgproc8checksumEPKhi
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC32:
	.string	"wb"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC36:
	.string	"cannot create std::vector larger than max_size()"
	.section	.rodata.str1.1
.LC46:
	.string	"saved %s\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB47:
	.text
.LHOTB47:
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
	mov	r15d, edx
	push	r14
	push	r13
	push	r12
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	mov	r12, rsi
	lea	rsi, .LC32[rip]
	push	rbx
	and	rsp, -32
	add	rsp, -128
	.cfi_offset 3, -56
	mov	QWORD PTR 24[rsp], rdi
	mov	r13, QWORD PTR fs:40
	mov	QWORD PTR 120[rsp], r13
	mov	r13d, ecx
.LEHB0:
	call	fopen@PLT
	mov	QWORD PTR 48[rsp], rax
	test	rax, rax
	je	.L236
	lea	ebx, 3[r15+r15*2]
	mov	rcx, rax
	vpxor	xmm0, xmm0, xmm0
	mov	edx, 19778
	and	ebx, -4
	vmovdqa	YMMWORD PTR 64[rsp], ymm0
	vmovd	xmm5, r15d
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
	mov	rdx, QWORD PTR .LC34[rip]
	mov	QWORD PTR 102[rsp], rax
	mov	QWORD PTR 74[rsp], rdx
	mov	edx, 54
	vzeroupper
	call	fwrite@PLT
	movsxd	rax, ebx
	mov	QWORD PTR 56[rsp], rax
	test	ebx, ebx
	js	.L281
	mov	r14, rax
	xor	ebx, ebx
	test	rax, rax
	je	.L240
	mov	rdi, rax
	call	_Znwm@PLT
.LEHE0:
	mov	rdx, r14
	xor	esi, esi
	mov	rdi, rax
	mov	rbx, rax
	call	memset@PLT
.L240:
	mov	r14d, r13d
	dec	r14d
	js	.L290
	movsxd	rax, r15d
	movsxd	r9, r14d
	vmovdqa	ymm2, YMMWORD PTR .LC37[rip]
	vmovdqa	ymm3, YMMWORD PTR .LC38[rip]
	imul	r9, rax
	mov	QWORD PTR 40[rsp], rax
	lea	eax, -1[r15]
	vmovdqa	ymm4, YMMWORD PTR .LC39[rip]
	mov	DWORD PTR 36[rsp], eax
	lea	r13, [r12+r9]
	.p2align 4,,10
	.p2align 3
.L254:
	test	r15d, r15d
	jle	.L248
	cmp	DWORD PTR 36[rsp], 30
	jbe	.L263
	mov	ecx, r15d
	mov	rax, rbx
	mov	rdx, r13
	shr	ecx, 5
	sal	rcx, 5
	add	rcx, r13
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L246:
	vmovdqu8	ymm0, YMMWORD PTR [rdx]
	add	rdx, 32
	add	rax, 96
	vpermb	ymm1, ymm2, ymm0
	vmovdqu8	YMMWORD PTR -96[rax], ymm1
	vpshufb	ymm1, ymm0, ymm3
	vpermb	ymm0, ymm4, ymm0
	vmovdqu8	YMMWORD PTR -64[rax], ymm1
	vmovdqu8	YMMWORD PTR -32[rax], ymm0
	cmp	rdx, rcx
	jne	.L246
	mov	eax, r15d
	and	eax, -32
	mov	esi, eax
	cmp	r15d, eax
	je	.L248
.L245:
	mov	edx, r15d
	mov	rcx, r13
	sub	edx, esi
	sub	rcx, r12
	lea	edi, -1[rdx]
	cmp	edi, 14
	jbe	.L264
	mov	r11d, esi
	lea	r10, [rcx+r12]
	vmovdqu8	xmm0, XMMWORD PTR [r10+r11]
	lea	rdi, [r11+r11*2]
	vpshufb	xmm1, xmm0, XMMWORD PTR .LC40[rip]
	vmovdqu8	XMMWORD PTR [rbx+rdi], xmm1
	vpshufb	xmm1, xmm0, XMMWORD PTR .LC41[rip]
	vpshufb	xmm0, xmm0, XMMWORD PTR .LC42[rip]
	vmovdqu8	XMMWORD PTR 16[rbx+rdi], xmm1
	vmovdqu8	XMMWORD PTR 32[rbx+rdi], xmm0
	test	dl, 15
	je	.L248
	mov	edi, edx
	and	edi, -16
	add	eax, edi
.L250:
	sub	edx, edi
	lea	r11d, -1[rdx]
	cmp	r11d, 6
	jbe	.L252
	add	esi, edi
	mov	esi, esi
	vmovq	xmm0, QWORD PTR [r10+rsi]
	lea	rdi, [rsi+rsi*2]
	vpshufb	xmm1, xmm0, XMMWORD PTR .LC43[rip]
	vmovq	QWORD PTR [rbx+rdi], xmm1
	vpshufb	xmm1, xmm0, XMMWORD PTR .LC44[rip]
	vpshufb	xmm0, xmm0, XMMWORD PTR .LC45[rip]
	vmovq	QWORD PTR 8[rbx+rdi], xmm1
	vmovq	QWORD PTR 16[rbx+rdi], xmm0
	test	dl, 7
	je	.L248
	and	edx, -8
	add	eax, edx
.L252:
	movsxd	rdx, eax
	lea	r8d, [rax+rax*2]
	movzx	edi, BYTE PTR [r10+rdx]
	movsxd	r11, r8d
	movzx	esi, dil
	mov	edx, edi
	mov	ecx, esi
	lea	esi, 2[r8]
	movsxd	rsi, esi
	mov	ch, dl
	mov	WORD PTR [rbx+r11], cx
	mov	BYTE PTR [rbx+rsi], dil
	lea	esi, 1[rax]
	cmp	r15d, esi
	jle	.L248
	movsxd	rsi, esi
	movzx	edi, BYTE PTR [r10+rsi]
	lea	esi, 3[r8]
	movsxd	rsi, esi
	movzx	r11d, dil
	mov	edx, edi
	mov	ecx, r11d
	mov	ch, dl
	mov	WORD PTR [rbx+rsi], cx
	lea	esi, 5[r8]
	movsxd	rsi, esi
	mov	BYTE PTR [rbx+rsi], dil
	lea	esi, 2[rax]
	cmp	r15d, esi
	jle	.L248
	movsxd	rsi, esi
	movzx	edi, BYTE PTR [r10+rsi]
	lea	esi, 6[r8]
	movsxd	rsi, esi
	movzx	r11d, dil
	mov	edx, edi
	mov	ecx, r11d
	mov	ch, dl
	mov	WORD PTR [rbx+rsi], cx
	lea	esi, 8[r8]
	movsxd	rsi, esi
	mov	BYTE PTR [rbx+rsi], dil
	lea	esi, 3[rax]
	cmp	r15d, esi
	jle	.L248
	movsxd	rsi, esi
	movzx	edi, BYTE PTR [r10+rsi]
	lea	esi, 9[r8]
	movsxd	rsi, esi
	movzx	r11d, dil
	mov	edx, edi
	mov	ecx, r11d
	mov	ch, dl
	mov	WORD PTR [rbx+rsi], cx
	lea	esi, 11[r8]
	movsxd	rsi, esi
	mov	BYTE PTR [rbx+rsi], dil
	lea	esi, 4[rax]
	cmp	r15d, esi
	jle	.L248
	movsxd	rsi, esi
	movzx	edi, BYTE PTR [r10+rsi]
	lea	esi, 12[r8]
	movsxd	rsi, esi
	movzx	r11d, dil
	mov	edx, edi
	mov	ecx, r11d
	mov	ch, dl
	mov	WORD PTR [rbx+rsi], cx
	lea	esi, 14[r8]
	movsxd	rsi, esi
	mov	BYTE PTR [rbx+rsi], dil
	lea	esi, 5[rax]
	cmp	r15d, esi
	jle	.L248
	movsxd	rsi, esi
	add	eax, 6
	movzx	edi, BYTE PTR [r10+rsi]
	lea	esi, 15[r8]
	movsxd	rsi, esi
	movzx	r11d, dil
	mov	edx, edi
	mov	ecx, r11d
	mov	ch, dl
	mov	WORD PTR [rbx+rsi], cx
	lea	esi, 17[r8]
	movsxd	rsi, esi
	mov	BYTE PTR [rbx+rsi], dil
	cmp	r15d, eax
	jle	.L248
	cdqe
	lea	edx, 20[r8]
	movzx	eax, BYTE PTR [r10+rax]
	movsxd	rdx, edx
	movzx	esi, al
	mov	ecx, esi
	mov	ch, al
	mov	esi, ecx
	lea	ecx, 18[r8]
	movsxd	rcx, ecx
	mov	WORD PTR [rbx+rcx], si
	mov	BYTE PTR [rbx+rdx], al
.L248:
	mov	rcx, QWORD PTR 48[rsp]
	mov	rdx, QWORD PTR 56[rsp]
	mov	esi, 1
	mov	rdi, rbx
	vzeroupper
.LEHB1:
	call	fwrite@PLT
	dec	r14d
	vmovdqa	ymm2, YMMWORD PTR .LC37[rip]
	vmovdqa	ymm3, YMMWORD PTR .LC38[rip]
	vmovdqa	ymm4, YMMWORD PTR .LC39[rip]
	sub	r13, QWORD PTR 40[rsp]
	cmp	r14d, -1
	jne	.L254
	mov	rdi, QWORD PTR 48[rsp]
	vzeroupper
	call	fclose@PLT
	mov	rdx, QWORD PTR 24[rsp]
	lea	rsi, .LC46[rip]
	mov	edi, 2
	xor	eax, eax
	call	__printf_chk@PLT
.LEHE1:
.L255:
	mov	rax, QWORD PTR 120[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L289
	mov	rsi, QWORD PTR 56[rsp]
	lea	rsp, -40[rbp]
	mov	rdi, rbx
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
.L263:
	.cfi_restore_state
	xor	esi, esi
	xor	eax, eax
	jmp	.L245
.L264:
	xor	edi, edi
	lea	r10, [r12+rcx]
	jmp	.L250
.L290:
	mov	rdi, QWORD PTR 48[rsp]
.LEHB3:
	call	fclose@PLT
	mov	rdx, QWORD PTR 24[rsp]
	lea	rsi, .LC46[rip]
	mov	edi, 2
	xor	eax, eax
	call	__printf_chk@PLT
.LEHE3:
	test	rbx, rbx
	jne	.L255
.L236:
	mov	rax, QWORD PTR 120[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L289
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
.L289:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L265:
	endbr64
	mov	r12, rax
	jmp	.L258
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
	.uleb128 .L265-.LFB1962
	.uleb128 0
	.uleb128 .LEHB2-.LFB1962
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB1962
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L265-.LFB1962
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
.L281:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -56
	.cfi_offset 6, -16
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	mov	rax, QWORD PTR 120[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L288
	lea	rdi, .LC36[rip]
.LEHB4:
	call	_ZSt20__throw_length_errorPKc@PLT
.L258:
	test	rbx, rbx
	je	.L285
	mov	rsi, QWORD PTR 56[rsp]
	mov	rdi, rbx
	vzeroupper
	call	_ZdlPvm@PLT
.L259:
	mov	rax, QWORD PTR 120[rsp]
	sub	rax, QWORD PTR fs:40
	je	.L260
.L288:
	call	__stack_chk_fail@PLT
.L285:
	vzeroupper
	jmp	.L259
.L260:
	mov	rdi, r12
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
	.uleb128 .LEHB4-.LCOLDB47
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSEC1962:
	.section	.text.unlikely
	.text
	.size	_ZN7imgproc8save_bmpEPKcPKhii, .-_ZN7imgproc8save_bmpEPKcPKhii
	.section	.text.unlikely
	.size	_ZN7imgproc8save_bmpEPKcPKhii.cold, .-_ZN7imgproc8save_bmpEPKcPKhii.cold
.LCOLDE47:
	.text
.LHOTE47:
	.section	.rodata.str1.8
	.align 8
.LC51:
	.string	"checksum=%lu edges_mean=%lu passes=%d size=%dx%d\n"
	.section	.rodata.str1.1
.LC52:
	.string	"--save"
.LC53:
	.string	"out_1_original.bmp"
.LC54:
	.string	"out_2_blurred.bmp"
.LC55:
	.string	"out_3_edges.bmp"
.LC56:
	.string	"out_2b_blurred_2pass.bmp"
	.section	.text.unlikely
.LCOLDB59:
	.section	.text.startup,"ax",@progbits
.LHOTB59:
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
	and	rsp, -32
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
.L292:
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
	jne	.L292
	mov	DWORD PTR _ZN7imgproc9rng_stateE[rip], ecx
	xor	eax, eax
.L293:
	mov	rsi, QWORD PTR -2120[rbp]
	vmovdqu8	ymm0, YMMWORD PTR [rsi+rax]
	vpmovzxbw	ymm1, xmm0
	vextracti32x4	xmm0, ymm0, 0x1
	vpmovsxwd	ymm2, xmm1
	vextracti32x4	xmm1, ymm1, 0x1
	vpmovzxbw	ymm0, xmm0
	vpmovsxwd	ymm1, xmm1
	vcvtdq2ps	ymm2, ymm2
	vmovups	YMMWORD PTR [rbx+rax*4], ymm2
	vcvtdq2ps	ymm1, ymm1
	vmovups	YMMWORD PTR 32[rbx+rax*4], ymm1
	vpmovsxwd	ymm1, xmm0
	vextracti32x4	xmm0, ymm0, 0x1
	vpmovsxwd	ymm0, xmm0
	vcvtdq2ps	ymm1, ymm1
	vmovups	YMMWORD PTR 64[rbx+rax*4], ymm1
	vcvtdq2ps	ymm0, ymm0
	vmovups	YMMWORD PTR 96[rbx+rax*4], ymm0
	add	rax, 32
	cmp	rax, 1048576
	jne	.L293
	vbroadcastss	ymm1, DWORD PTR .LC1[rip]
	vbroadcastss	ymm16, DWORD PTR .LC3[rip]
	mov	r12d, 200
	lea	r14, 4194304[rbx]
	vbroadcastss	xmm19, DWORD PTR .LC1[rip]
	vbroadcastss	xmm17, DWORD PTR .LC3[rip]
	vmovaps	xmm18, XMMWORD PTR .LC57[rip]
	.p2align 4,,10
	.p2align 3
.L294:
	vmovq	xmm4, QWORD PTR .LC50[rip]
	mov	rdx, rbx
	lea	rcx, 4[r13]
	.p2align 4,,10
	.p2align 3
.L296:
	vmovss	xmm0, DWORD PTR [rdx]
	lea	rdi, 4[rdx]
	lea	rsi, 8[rdx]
	xor	eax, eax
	vmovss	DWORD PTR -4[rcx], xmm0
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L295:
	vmulps	ymm0, ymm1, YMMWORD PTR [rdi+rax]
	vfmadd231ps	ymm0, ymm16, YMMWORD PTR [rdx+rax]
	vfmadd231ps	ymm0, ymm16, YMMWORD PTR [rsi+rax]
	vmovups	YMMWORD PTR [rcx+rax], ymm0
	add	rax, 32
	cmp	rax, 4064
	jne	.L295
	vmulps	xmm0, xmm19, XMMWORD PTR 4068[rdx]
	vmovq	xmm3, QWORD PTR 4088[rdx]
	add	rdx, 4096
	add	rcx, 4096
	vmovshdup	xmm5, xmm3
	vfmadd231ps	xmm0, xmm17, XMMWORD PTR -32[rdx]
	vmovss	DWORD PTR -8[rcx], xmm5
	vfmadd231ps	xmm0, xmm17, XMMWORD PTR -24[rdx]
	vmovups	XMMWORD PTR -32[rcx], xmm0
	vmovq	xmm0, QWORD PTR -12[rdx]
	vmulps	xmm0, xmm0, xmm18
	vmovq	xmm2, xmm0
	vmovq	xmm0, QWORD PTR -16[rdx]
	vfmadd132ps	xmm0, xmm2, xmm4
	vmovq	xmm2, xmm0
	vmovq	xmm0, xmm3
	vfmadd132ps	xmm0, xmm2, xmm4
	vmovlps	QWORD PTR -16[rcx], xmm0
	cmp	rdx, r14
	jne	.L296
	mov	rsi, rbx
	mov	rdi, r13
	vzeroupper
	call	_ZN7imgproc6blur_vEPKfPfii.constprop.0
	dec	r12d
	vmovaps	ymm1, YMMWORD PTR .LC0[rip]
	jne	.L294
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
	mov	edx, 8
	vpcmpeqd	ymm6, ymm6, ymm6
	vmovdqa	ymm7, YMMWORD PTR .LC21[rip]
	vpbroadcastd	ymm11, edx
	mov	edx, 16
	lea	rcx, 1048576[r15]
	mov	rax, r15
	vpbroadcastd	ymm10, edx
	vpsrld	ymm6, ymm6, 24
	vpxor	xmm5, xmm5, xmm5
	mov	edx, 24
	vpbroadcastd	ymm9, edx
	mov	edx, 32
	vpbroadcastd	ymm8, edx
.L298:
	vmovdqu8	ymm0, YMMWORD PTR [rax]
	vpandd	ymm3, ymm7, ymm6
	vpaddd	ymm4, ymm7, ymm11
	add	rax, 32
	vpandd	ymm4, ymm4, ymm6
	vpmovzxbw	ymm2, xmm0
	vextracti32x4	xmm0, ymm0, 0x1
	vpmovzxwd	ymm12, xmm2
	vextracti32x4	xmm2, ymm2, 0x1
	vpmovzxbw	ymm0, xmm0
	vpmulld	ymm12, ymm12, ymm3
	vpmovzxwd	ymm2, xmm2
	vpaddd	ymm3, ymm7, ymm10
	vpmulld	ymm4, ymm4, ymm2
	vpandd	ymm3, ymm3, ymm6
	vpmovzxwd	ymm2, xmm0
	vpmulld	ymm3, ymm3, ymm2
	vextracti32x4	xmm0, ymm0, 0x1
	vpaddd	ymm2, ymm7, ymm9
	vpmovzxwd	ymm0, xmm0
	vpandd	ymm2, ymm2, ymm6
	vpaddd	ymm7, ymm7, ymm8
	vpmulld	ymm2, ymm2, ymm0
	vextracti32x4	xmm0, ymm4, 0x1
	vpmovzxdq	ymm4, xmm4
	vpmovzxdq	ymm0, xmm0
	vpaddq	ymm0, ymm0, ymm4
	vextracti32x4	xmm4, ymm2, 0x1
	vpmovzxdq	ymm2, xmm2
	vpmovzxdq	ymm4, xmm4
	vpaddq	ymm0, ymm0, ymm4
	vextracti32x4	xmm4, ymm3, 0x1
	vpmovzxdq	ymm3, xmm3
	vpmovzxdq	ymm4, xmm4
	vpaddq	ymm0, ymm0, ymm4
	vextracti32x4	xmm4, ymm12, 0x1
	vpmovzxdq	ymm12, xmm12
	vpmovzxdq	ymm4, xmm4
	vpaddq	ymm4, ymm4, ymm12
	vpaddq	ymm3, ymm4, ymm3
	vpaddq	ymm2, ymm3, ymm2
	vpaddq	ymm0, ymm0, ymm2
	vpaddq	ymm5, ymm5, ymm0
	cmp	rcx, rax
	jne	.L298
	vextracti64x2	xmm0, ymm5, 0x1
	sub	rsp, 8
	mov	rcx, QWORD PTR -1088[rbp]
	mov	r9d, 1024
	vpaddq	xmm0, xmm0, xmm5
	push	1024
	mov	r8d, 200
	lea	rsi, .LC51[rip]
	vpsrldq	xmm2, xmm0, 8
	mov	edi, 2
	xor	eax, eax
	vpaddq	xmm0, xmm0, xmm2
	vmovq	rdx, xmm0
	vzeroupper
.LEHB9:
	.cfi_escape 0x2e,0x10
	call	__printf_chk@PLT
	pop	rax
	cmp	DWORD PTR -2136[rbp], 1
	pop	rdx
	jle	.L299
	mov	rax, QWORD PTR -2144[rbp]
	lea	rsi, .LC52[rip]
	mov	rdi, QWORD PTR 8[rax]
	call	strcmp@PLT
	test	eax, eax
	je	.L327
.L299:
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
	jne	.L328
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
.L327:
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
	vmovdqa	ymm3, YMMWORD PTR .LC10[rip]
	vmovaps	ymm1, YMMWORD PTR .LC0[rip]
	xor	eax, eax
.L300:
	vaddps	ymm0, ymm1, YMMWORD PTR [rbx+rax*4]
	vaddps	ymm2, ymm1, YMMWORD PTR 32[rbx+rax*4]
	vaddps	ymm4, ymm1, YMMWORD PTR 96[rbx+rax*4]
	vmovdqa	ymm7, YMMWORD PTR .LC11[rip]
	vcvttps2dq	ymm2, ymm2
	vcvttps2dq	ymm0, ymm0
	vpermt2w	ymm0, ymm3, ymm2
	vaddps	ymm2, ymm1, YMMWORD PTR 64[rbx+rax*4]
	vcvttps2dq	ymm4, ymm4
	vcvttps2dq	ymm2, ymm2
	vpermt2w	ymm2, ymm3, ymm4
	vpermt2b	ymm0, ymm7, ymm2
	vmovdqu8	YMMWORD PTR [r15+rax], ymm0
	add	rax, 32
	cmp	rax, 1048576
	jne	.L300
	mov	rsi, QWORD PTR -2120[rbp]
	mov	ecx, 1024
	mov	edx, 1024
	lea	rdi, .LC53[rip]
	vzeroupper
.LEHB10:
	call	_ZN7imgproc8save_bmpEPKcPKhii
	mov	ecx, 1024
	mov	edx, 1024
	lea	rdi, .LC54[rip]
	mov	rsi, r15
	call	_ZN7imgproc8save_bmpEPKcPKhii
	mov	rsi, QWORD PTR -2128[rbp]
	mov	ecx, 1024
	mov	edx, 1024
	lea	rdi, .LC55[rip]
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
.L301:
	mov	rsi, QWORD PTR -2120[rbp]
	vmovdqu8	ymm0, YMMWORD PTR [rsi+rax]
	vpmovzxbw	ymm2, xmm0
	vextracti32x4	xmm0, ymm0, 0x1
	vpmovsxwd	ymm4, xmm2
	vextracti32x4	xmm2, ymm2, 0x1
	vpmovzxbw	ymm0, xmm0
	vpmovsxwd	ymm2, xmm2
	vcvtdq2ps	ymm4, ymm4
	vmovups	YMMWORD PTR [r12+rax*4], ymm4
	vcvtdq2ps	ymm2, ymm2
	vmovups	YMMWORD PTR 32[r12+rax*4], ymm2
	vpmovsxwd	ymm2, xmm0
	vextracti32x4	xmm0, ymm0, 0x1
	vpmovsxwd	ymm0, xmm0
	vcvtdq2ps	ymm2, ymm2
	vmovups	YMMWORD PTR 64[r12+rax*4], ymm2
	vcvtdq2ps	ymm0, ymm0
	vmovups	YMMWORD PTR 96[r12+rax*4], ymm0
	add	rax, 32
	cmp	rax, 1048576
	jne	.L301
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
	vmovdqa	ymm3, YMMWORD PTR .LC10[rip]
	vmovaps	ymm1, YMMWORD PTR .LC0[rip]
	xor	eax, eax
.L302:
	vaddps	ymm0, ymm1, YMMWORD PTR [r12+rax*4]
	vaddps	ymm2, ymm1, YMMWORD PTR 32[r12+rax*4]
	vaddps	ymm4, ymm1, YMMWORD PTR 96[r12+rax*4]
	vmovdqa	ymm6, YMMWORD PTR .LC11[rip]
	vcvttps2dq	ymm2, ymm2
	vcvttps2dq	ymm0, ymm0
	vpermt2w	ymm0, ymm3, ymm2
	vaddps	ymm2, ymm1, YMMWORD PTR 64[r12+rax*4]
	vcvttps2dq	ymm4, ymm4
	vcvttps2dq	ymm2, ymm2
	vpermt2w	ymm2, ymm3, ymm4
	vpermt2b	ymm0, ymm6, ymm2
	vmovdqu8	YMMWORD PTR [r15+rax], ymm0
	add	rax, 32
	cmp	rax, 1048576
	jne	.L302
	mov	ecx, 1024
	mov	edx, 1024
	lea	rdi, .LC56[rip]
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
	jmp	.L299
.L328:
	call	__stack_chk_fail@PLT
.L311:
	endbr64
	mov	rbx, rax
	vzeroupper
	jmp	.L308
.L313:
	endbr64
	mov	r12, rax
	vzeroupper
	jmp	.L306
.L314:
	endbr64
	mov	r12, rax
	vzeroupper
	jmp	.L305
.L312:
	endbr64
	mov	rbx, rax
	vzeroupper
	jmp	.L307
.L316:
	endbr64
	jmp	.L303
.L315:
	endbr64
	mov	r12, rax
	vzeroupper
	jmp	.L304
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
	.uleb128 .L311-.LFB1963
	.uleb128 0
	.uleb128 .LEHB7-.LFB1963
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L312-.LFB1963
	.uleb128 0
	.uleb128 .LEHB8-.LFB1963
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L313-.LFB1963
	.uleb128 0
	.uleb128 .LEHB9-.LFB1963
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L314-.LFB1963
	.uleb128 0
	.uleb128 .LEHB10-.LFB1963
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L315-.LFB1963
	.uleb128 0
	.uleb128 .LEHB11-.LFB1963
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L316-.LFB1963
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
.L303:
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
.L304:
	mov	esi, 1048576
	mov	rdi, r15
	call	_ZdlPvm@PLT
.L305:
	mov	esi, 4194304
	mov	rdi, r13
	call	_ZdlPvm@PLT
.L306:
	mov	rdi, rbx
	mov	esi, 4194304
	mov	rbx, r12
	call	_ZdlPvm@PLT
.L307:
	mov	rdi, QWORD PTR -2128[rbp]
	mov	esi, 1048576
	call	_ZdlPvm@PLT
.L308:
	mov	rdi, QWORD PTR -2120[rbp]
	mov	esi, 1048576
	call	_ZdlPvm@PLT
	mov	rax, QWORD PTR -56[rbp]
	sub	rax, QWORD PTR fs:40
	jne	.L329
	mov	rdi, rbx
.LEHB12:
	call	_Unwind_Resume@PLT
.LEHE12:
.L329:
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
	.uleb128 .LEHB12-.LCOLDB59
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSEC1963:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE59:
	.section	.text.startup
.LHOTE59:
	.globl	_ZN7imgproc9rng_stateE
	.data
	.align 4
	.type	_ZN7imgproc9rng_stateE, @object
	.size	_ZN7imgproc9rng_stateE, 4
_ZN7imgproc9rng_stateE:
	.long	12345
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC0:
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.set	.LC1,.LC0
	.set	.LC3,.LC50
	.set	.LC7,.LC19
	.set	.LC9,.LC20
	.align 32
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
	.align 32
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
	.set	.LC14,.LC10
	.set	.LC15,.LC11
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC18:
	.value	255
	.value	255
	.value	255
	.value	255
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC19:
	.long	1073741824
	.long	1073741824
	.long	0
	.long	0
	.align 16
.LC20:
	.long	1132396544
	.long	1132396544
	.long	0
	.long	0
	.section	.rodata.cst32
	.align 32
.LC21:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.set	.LC27,.LC21
	.set	.LC29,.LC21+16
	.section	.rodata.cst16
	.align 16
.LC30:
	.long	8
	.long	9
	.long	10
	.long	11
	.align 16
.LC31:
	.long	12
	.long	13
	.long	14
	.long	15
	.section	.rodata.cst8
	.align 8
.LC34:
	.long	54
	.long	40
	.section	.rodata.cst32
	.align 32
.LC37:
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
	.align 32
.LC38:
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
	.align 32
.LC39:
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
	.set	.LC40,.LC37
	.set	.LC41,.LC37+16
	.set	.LC42,.LC38
	.section	.rodata.cst16
	.align 16
.LC43:
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.align 16
.LC44:
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.align 16
.LC45:
	.byte	5
	.byte	5
	.byte	6
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	7
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.section	.rodata.cst8
	.align 8
.LC50:
	.long	1048576000
	.long	1048576000
	.section	.rodata.cst16
	.align 16
.LC57:
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
