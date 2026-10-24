	.file	"imgproc.cpp"
	.intel_syntax noprefix
	.text
	.section	.text._ZSt4sqrtf,"axG",@progbits,_ZSt4sqrtf,comdat
	.weak	_ZSt4sqrtf
	.type	_ZSt4sqrtf, @function
_ZSt4sqrtf:
.LFB101:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	movss	DWORD PTR -4[rbp], xmm0
	mov	eax, DWORD PTR -4[rbp]
	movd	xmm0, eax
	call	sqrtf@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	_ZSt4sqrtf, .-_ZSt4sqrtf
	.section	.text._ZSt17__size_to_integerm,"axG",@progbits,_ZSt17__size_to_integerm,comdat
	.weak	_ZSt17__size_to_integerm
	.type	_ZSt17__size_to_integerm, @function
_ZSt17__size_to_integerm:
.LFB567:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	_ZSt17__size_to_integerm, .-_ZSt17__size_to_integerm
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB1024:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1024:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZdlPvS_,"axG",@progbits,_ZdlPvS_,comdat
	.weak	_ZdlPvS_
	.type	_ZdlPvS_, @function
_ZdlPvS_:
.LFB1026:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1026:
	.size	_ZdlPvS_, .-_ZdlPvS_
	.section	.rodata
	.align 4
	.type	_ZN7imgprocL1WE, @object
	.size	_ZN7imgprocL1WE, 4
_ZN7imgprocL1WE:
	.long	1024
	.align 4
	.type	_ZN7imgprocL1HE, @object
	.size	_ZN7imgprocL1HE, 4
_ZN7imgprocL1HE:
	.long	1024
	.align 4
	.type	_ZN7imgprocL1NE, @object
	.size	_ZN7imgprocL1NE, 4
_ZN7imgprocL1NE:
	.long	1048576
	.globl	_ZN7imgproc9rng_stateE
	.data
	.align 4
	.type	_ZN7imgproc9rng_stateE, @object
	.size	_ZN7imgproc9rng_stateE, 4
_ZN7imgproc9rng_stateE:
	.long	12345
	.text
	.globl	_ZN7imgproc8rng_nextEv
	.type	_ZN7imgproc8rng_nextEv, @function
_ZN7imgproc8rng_nextEv:
.LFB1883:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	eax, DWORD PTR _ZN7imgproc9rng_stateE[rip]
	imul	eax, eax, 1103515245
	add	eax, 12345
	mov	DWORD PTR _ZN7imgproc9rng_stateE[rip], eax
	mov	eax, DWORD PTR _ZN7imgproc9rng_stateE[rip]
	shr	eax, 16
	and	eax, 32767
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1883:
	.size	_ZN7imgproc8rng_nextEv, .-_ZN7imgproc8rng_nextEv
	.globl	_ZN7imgproc10make_imageEPhi
	.type	_ZN7imgproc10make_imageEPhi, @function
_ZN7imgproc10make_imageEPhi:
.LFB1884:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -16[rbp], 0
	jmp	.L11
.L14:
	call	_ZN7imgproc8rng_nextEv
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	movsxd	rdx, eax
	imul	rdx, rdx, 354224107
	shr	rdx, 32
	sar	edx, 3
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	imul	ecx, edx, 97
	sub	eax, ecx
	mov	edx, eax
	lea	eax, [rdx+rdx]
	mov	DWORD PTR -4[rbp], eax
	mov	ecx, DWORD PTR -8[rbp]
	mov	edx, ecx
	mov	eax, 3352169597
	imul	rax, rdx
	shr	rax, 32
	mov	edx, eax
	shr	edx, 5
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	sal	eax, 3
	add	eax, edx
	sub	ecx, eax
	mov	edx, ecx
	mov	eax, DWORD PTR -4[rbp]
	add	eax, edx
	sub	eax, 20
	mov	DWORD PTR -12[rbp], eax
	cmp	DWORD PTR -12[rbp], 0
	jns	.L12
	mov	DWORD PTR -12[rbp], 0
.L12:
	cmp	DWORD PTR -12[rbp], 255
	jle	.L13
	mov	DWORD PTR -12[rbp], 255
.L13:
	mov	eax, DWORD PTR -16[rbp]
	movsxd	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -12[rbp]
	mov	BYTE PTR [rax], dl
	add	DWORD PTR -16[rbp], 1
.L11:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L14
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1884:
	.size	_ZN7imgproc10make_imageEPhi, .-_ZN7imgproc10make_imageEPhi
	.globl	_ZN7imgproc8to_floatEPKhPfi
	.type	_ZN7imgproc8to_floatEPKhPfi, @function
_ZN7imgproc8to_floatEPKhPfi:
.LFB1885:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	DWORD PTR -36[rbp], edx
	mov	DWORD PTR -4[rbp], 0
	jmp	.L16
.L17:
	mov	eax, DWORD PTR -4[rbp]
	movsxd	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rcx
	movzx	edx, dl
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, edx
	movss	DWORD PTR [rax], xmm0
	add	DWORD PTR -4[rbp], 1
.L16:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L17
	nop
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1885:
	.size	_ZN7imgproc8to_floatEPKhPfi, .-_ZN7imgproc8to_floatEPKhPfi
	.globl	_ZN7imgproc6blur_hEPKfPfii
	.type	_ZN7imgproc6blur_hEPKfPfii, @function
_ZN7imgproc6blur_hEPKfPfii:
.LFB1886:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	DWORD PTR -52[rbp], edx
	mov	DWORD PTR -56[rbp], ecx
	mov	DWORD PTR -24[rbp], 0
	jmp	.L19
.L22:
	mov	eax, DWORD PTR -24[rbp]
	movsxd	rdx, eax
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	imul	rax, rdx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -24[rbp]
	movsxd	rdx, eax
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	imul	rax, rdx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	movss	xmm0, DWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	movss	DWORD PTR [rax], xmm0
	mov	DWORD PTR -20[rbp], 1
	jmp	.L20
.L21:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	sal	rax, 2
	lea	rdx, -4[rax]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	movss	xmm1, DWORD PTR [rax]
	movss	xmm0, DWORD PTR .LC0[rip]
	mulss	xmm1, xmm0
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	movss	xmm2, DWORD PTR [rax]
	movss	xmm0, DWORD PTR .LC1[rip]
	mulss	xmm0, xmm2
	addss	xmm1, xmm0
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	movss	xmm2, DWORD PTR [rax]
	movss	xmm0, DWORD PTR .LC0[rip]
	mulss	xmm0, xmm2
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	addss	xmm0, xmm1
	movss	DWORD PTR [rax], xmm0
	add	DWORD PTR -20[rbp], 1
.L20:
	mov	eax, DWORD PTR -52[rbp]
	sub	eax, 1
	cmp	DWORD PTR -20[rbp], eax
	jl	.L21
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	sal	rax, 2
	lea	rdx, -4[rax]
	mov	rax, QWORD PTR -16[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	sal	rax, 2
	lea	rcx, -4[rax]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rcx
	movss	xmm0, DWORD PTR [rdx]
	movss	DWORD PTR [rax], xmm0
	add	DWORD PTR -24[rbp], 1
.L19:
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -56[rbp]
	jl	.L22
	nop
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1886:
	.size	_ZN7imgproc6blur_hEPKfPfii, .-_ZN7imgproc6blur_hEPKfPfii
	.globl	_ZN7imgproc6blur_vEPKfPfii
	.type	_ZN7imgproc6blur_vEPKfPfii, @function
_ZN7imgproc6blur_vEPKfPfii:
.LFB1887:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	DWORD PTR -68[rbp], edx
	mov	DWORD PTR -72[rbp], ecx
	mov	DWORD PTR -48[rbp], 0
	jmp	.L24
.L25:
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rcx
	movss	xmm0, DWORD PTR [rdx]
	movss	DWORD PTR [rax], xmm0
	add	DWORD PTR -48[rbp], 1
.L24:
	mov	eax, DWORD PTR -48[rbp]
	cmp	eax, DWORD PTR -68[rbp]
	jl	.L25
	mov	DWORD PTR -44[rbp], 1
	jmp	.L26
.L29:
	mov	eax, DWORD PTR -44[rbp]
	sub	eax, 1
	movsxd	rdx, eax
	mov	eax, DWORD PTR -68[rbp]
	cdqe
	imul	rax, rdx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	mov	QWORD PTR -32[rbp], rax
	mov	eax, DWORD PTR -44[rbp]
	movsxd	rdx, eax
	mov	eax, DWORD PTR -68[rbp]
	cdqe
	imul	rax, rdx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	mov	eax, DWORD PTR -44[rbp]
	add	eax, 1
	movsxd	rdx, eax
	mov	eax, DWORD PTR -68[rbp]
	cdqe
	imul	rax, rdx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -44[rbp]
	movsxd	rdx, eax
	mov	eax, DWORD PTR -68[rbp]
	cdqe
	imul	rax, rdx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	mov	DWORD PTR -40[rbp], 0
	jmp	.L27
.L28:
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	movss	xmm1, DWORD PTR [rax]
	movss	xmm0, DWORD PTR .LC0[rip]
	mulss	xmm1, xmm0
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movss	xmm2, DWORD PTR [rax]
	movss	xmm0, DWORD PTR .LC1[rip]
	mulss	xmm0, xmm2
	addss	xmm1, xmm0
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	movss	xmm2, DWORD PTR [rax]
	movss	xmm0, DWORD PTR .LC0[rip]
	mulss	xmm0, xmm2
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	addss	xmm0, xmm1
	movss	DWORD PTR [rax], xmm0
	add	DWORD PTR -40[rbp], 1
.L27:
	mov	eax, DWORD PTR -40[rbp]
	cmp	eax, DWORD PTR -68[rbp]
	jl	.L28
	add	DWORD PTR -44[rbp], 1
.L26:
	mov	eax, DWORD PTR -72[rbp]
	sub	eax, 1
	cmp	DWORD PTR -44[rbp], eax
	jl	.L29
	mov	DWORD PTR -36[rbp], 0
	jmp	.L30
.L31:
	mov	eax, DWORD PTR -72[rbp]
	sub	eax, 1
	movsxd	rdx, eax
	mov	eax, DWORD PTR -68[rbp]
	cdqe
	imul	rdx, rax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -72[rbp]
	sub	eax, 1
	movsxd	rdx, eax
	mov	eax, DWORD PTR -68[rbp]
	cdqe
	imul	rdx, rax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rdx
	movss	xmm0, DWORD PTR [rcx]
	movss	DWORD PTR [rax], xmm0
	add	DWORD PTR -36[rbp], 1
.L30:
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -68[rbp]
	jl	.L31
	nop
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1887:
	.size	_ZN7imgproc6blur_vEPKfPfii, .-_ZN7imgproc6blur_vEPKfPfii
	.globl	_ZN7imgproc9sobel_magEPKfPhii
	.type	_ZN7imgproc9sobel_magEPKfPhii, @function
_ZN7imgproc9sobel_magEPKfPhii:
.LFB1888:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 96
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	DWORD PTR -84[rbp], edx
	mov	DWORD PTR -88[rbp], ecx
	mov	DWORD PTR -52[rbp], 1
	jmp	.L33
.L39:
	mov	eax, DWORD PTR -52[rbp]
	sub	eax, 1
	movsxd	rdx, eax
	mov	eax, DWORD PTR -84[rbp]
	cdqe
	imul	rax, rdx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	mov	QWORD PTR -32[rbp], rax
	mov	eax, DWORD PTR -52[rbp]
	movsxd	rdx, eax
	mov	eax, DWORD PTR -84[rbp]
	cdqe
	imul	rax, rdx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	mov	eax, DWORD PTR -52[rbp]
	add	eax, 1
	movsxd	rdx, eax
	mov	eax, DWORD PTR -84[rbp]
	cdqe
	imul	rax, rdx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -52[rbp]
	movsxd	rdx, eax
	mov	eax, DWORD PTR -84[rbp]
	cdqe
	imul	rdx, rax
	mov	rax, QWORD PTR -80[rbp]
	add	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	mov	DWORD PTR -48[rbp], 1
	jmp	.L34
.L38:
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	movss	xmm1, DWORD PTR [rax]
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movss	xmm0, DWORD PTR [rax]
	addss	xmm0, xmm0
	addss	xmm1, xmm0
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	movss	xmm0, DWORD PTR [rax]
	addss	xmm1, xmm0
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	sal	rax, 2
	lea	rdx, -4[rax]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	movss	xmm2, DWORD PTR [rax]
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	sal	rax, 2
	lea	rdx, -4[rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movss	xmm0, DWORD PTR [rax]
	addss	xmm0, xmm0
	addss	xmm2, xmm0
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	sal	rax, 2
	lea	rdx, -4[rax]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	movss	xmm0, DWORD PTR [rax]
	addss	xmm2, xmm0
	subss	xmm1, xmm2
	movaps	xmm0, xmm1
	movss	DWORD PTR -44[rbp], xmm0
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	sal	rax, 2
	lea	rdx, -4[rax]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	movss	xmm1, DWORD PTR [rax]
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	movss	xmm0, DWORD PTR [rax]
	addss	xmm0, xmm0
	addss	xmm1, xmm0
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	movss	xmm0, DWORD PTR [rax]
	addss	xmm1, xmm0
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	sal	rax, 2
	lea	rdx, -4[rax]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	movss	xmm2, DWORD PTR [rax]
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	movss	xmm0, DWORD PTR [rax]
	addss	xmm0, xmm0
	addss	xmm2, xmm0
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	movss	xmm0, DWORD PTR [rax]
	addss	xmm2, xmm0
	subss	xmm1, xmm2
	movaps	xmm0, xmm1
	movss	DWORD PTR -40[rbp], xmm0
	movss	xmm0, DWORD PTR -44[rbp]
	movaps	xmm1, xmm0
	mulss	xmm1, xmm0
	movss	xmm0, DWORD PTR -40[rbp]
	mulss	xmm0, xmm0
	addss	xmm1, xmm0
	movd	eax, xmm1
	movd	xmm0, eax
	call	_ZSt4sqrtf
	movd	eax, xmm0
	mov	DWORD PTR -36[rbp], eax
	movss	xmm0, DWORD PTR -36[rbp]
	comiss	xmm0, DWORD PTR .LC2[rip]
	jbe	.L41
	mov	ecx, -1
	jmp	.L37
.L41:
	cvttss2si	eax, DWORD PTR -36[rbp]
	mov	ecx, eax
.L37:
	mov	eax, DWORD PTR -48[rbp]
	movsxd	rdx, eax
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	BYTE PTR [rax], cl
	add	DWORD PTR -48[rbp], 1
.L34:
	mov	eax, DWORD PTR -84[rbp]
	sub	eax, 1
	cmp	DWORD PTR -48[rbp], eax
	jl	.L38
	add	DWORD PTR -52[rbp], 1
.L33:
	mov	eax, DWORD PTR -88[rbp]
	sub	eax, 1
	cmp	DWORD PTR -52[rbp], eax
	jl	.L39
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1888:
	.size	_ZN7imgproc9sobel_magEPKfPhii, .-_ZN7imgproc9sobel_magEPKfPhii
	.globl	_ZN7imgproc9histogramEPKhiPm
	.type	_ZN7imgproc9histogramEPKhiPm, @function
_ZN7imgproc9histogramEPKhiPm:
.LFB1889:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, 2048
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L43
.L44:
	mov	eax, DWORD PTR -4[rbp]
	movsxd	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	add	rdx, 1
	mov	QWORD PTR [rax], rdx
	add	DWORD PTR -4[rbp], 1
.L43:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L44
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1889:
	.size	_ZN7imgproc9histogramEPKhiPm, .-_ZN7imgproc9histogramEPKhiPm
	.globl	_ZN7imgproc8checksumEPKhi
	.type	_ZN7imgproc8checksumEPKhi, @function
_ZN7imgproc8checksumEPKhi:
.LFB1890:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L46
.L47:
	mov	eax, DWORD PTR -12[rbp]
	movsxd	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	edx, al
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, al
	imul	rax, rdx
	add	QWORD PTR -8[rbp], rax
	add	DWORD PTR -12[rbp], 1
.L46:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L47
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1890:
	.size	_ZN7imgproc8checksumEPKhi, .-_ZN7imgproc8checksumEPKhi
	.section	.rodata
.LC3:
	.string	"wb"
.LC4:
	.string	"saved %s\n"
	.text
	.globl	_ZN7imgproc8save_bmpEPKcPKhii
	.type	_ZN7imgproc8save_bmpEPKcPKhii, @function
_ZN7imgproc8save_bmpEPKcPKhii:
.LFB1891:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1891
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 200
	.cfi_offset 3, -24
	mov	QWORD PTR -184[rbp], rdi
	mov	QWORD PTR -192[rbp], rsi
	mov	DWORD PTR -196[rbp], edx
	mov	DWORD PTR -200[rbp], ecx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rdx, .LC3[rip]
	mov	rax, QWORD PTR -184[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB0:
	call	fopen@PLT
	mov	QWORD PTR -136[rbp], rax
	cmp	QWORD PTR -136[rbp], 0
	je	.L64
	mov	eax, DWORD PTR -196[rbp]
	lea	edx, 1[rax]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	and	eax, -4
	mov	DWORD PTR -140[rbp], eax
	mov	eax, DWORD PTR -200[rbp]
	imul	eax, DWORD PTR -140[rbp]
	mov	DWORD PTR -168[rbp], eax
	mov	eax, DWORD PTR -168[rbp]
	add	eax, 54
	mov	DWORD PTR -164[rbp], eax
	mov	DWORD PTR -160[rbp], 54
	mov	DWORD PTR -156[rbp], 40
	mov	DWORD PTR -152[rbp], 2835
	mov	WORD PTR -172[rbp], 1
	mov	WORD PTR -170[rbp], 24
	mov	QWORD PTR -80[rbp], 0
	mov	QWORD PTR -72[rbp], 0
	mov	QWORD PTR -64[rbp], 0
	mov	QWORD PTR -56[rbp], 0
	mov	QWORD PTR -48[rbp], 0
	mov	QWORD PTR -40[rbp], 0
	mov	QWORD PTR -34[rbp], 0
	mov	BYTE PTR -80[rbp], 66
	mov	BYTE PTR -79[rbp], 77
	mov	eax, DWORD PTR -164[rbp]
	mov	DWORD PTR -78[rbp], eax
	mov	eax, DWORD PTR -160[rbp]
	mov	DWORD PTR -70[rbp], eax
	mov	eax, DWORD PTR -156[rbp]
	mov	DWORD PTR -66[rbp], eax
	mov	eax, DWORD PTR -196[rbp]
	mov	DWORD PTR -62[rbp], eax
	mov	eax, DWORD PTR -200[rbp]
	mov	DWORD PTR -58[rbp], eax
	movzx	eax, WORD PTR -172[rbp]
	mov	WORD PTR -54[rbp], ax
	movzx	eax, WORD PTR -170[rbp]
	mov	WORD PTR -52[rbp], ax
	mov	eax, DWORD PTR -168[rbp]
	mov	DWORD PTR -46[rbp], eax
	mov	eax, DWORD PTR -152[rbp]
	mov	DWORD PTR -42[rbp], eax
	mov	eax, DWORD PTR -152[rbp]
	mov	DWORD PTR -38[rbp], eax
	mov	rdx, QWORD PTR -136[rbp]
	lea	rax, -80[rbp]
	mov	rcx, rdx
	mov	edx, 54
	mov	esi, 1
	mov	rdi, rax
	call	fwrite@PLT
.LEHE0:
	lea	rax, -173[rbp]
	mov	QWORD PTR -120[rbp], rax
	nop
	nop
	mov	BYTE PTR -174[rbp], 0
	mov	eax, DWORD PTR -140[rbp]
	movsxd	rsi, eax
	lea	rcx, -173[rbp]
	lea	rdx, -174[rbp]
	lea	rax, -112[rbp]
	mov	rdi, rax
.LEHB1:
	call	_ZNSt6vectorIhSaIhEEC1EmRKhRKS0_
.LEHE1:
	lea	rax, -173[rbp]
	mov	rdi, rax
	call	_ZNSt15__new_allocatorIhED2Ev
	nop
	mov	eax, DWORD PTR -200[rbp]
	sub	eax, 1
	mov	DWORD PTR -148[rbp], eax
	jmp	.L52
.L55:
	mov	eax, DWORD PTR -148[rbp]
	movsxd	rdx, eax
	mov	eax, DWORD PTR -196[rbp]
	cdqe
	imul	rdx, rax
	mov	rax, QWORD PTR -192[rbp]
	add	rax, rdx
	mov	QWORD PTR -128[rbp], rax
	mov	DWORD PTR -144[rbp], 0
	jmp	.L53
.L54:
	mov	eax, DWORD PTR -144[rbp]
	movsxd	rdx, eax
	mov	rax, QWORD PTR -128[rbp]
	add	rax, rdx
	movzx	ebx, BYTE PTR [rax]
	mov	edx, DWORD PTR -144[rbp]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	movsxd	rdx, eax
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEEixEm
	mov	BYTE PTR [rax], bl
	mov	eax, DWORD PTR -144[rbp]
	movsxd	rdx, eax
	mov	rax, QWORD PTR -128[rbp]
	add	rax, rdx
	movzx	ebx, BYTE PTR [rax]
	mov	edx, DWORD PTR -144[rbp]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	add	eax, 1
	movsxd	rdx, eax
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEEixEm
	mov	BYTE PTR [rax], bl
	mov	eax, DWORD PTR -144[rbp]
	movsxd	rdx, eax
	mov	rax, QWORD PTR -128[rbp]
	add	rax, rdx
	movzx	ebx, BYTE PTR [rax]
	mov	edx, DWORD PTR -144[rbp]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	add	eax, 2
	movsxd	rdx, eax
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEEixEm
	mov	BYTE PTR [rax], bl
	add	DWORD PTR -144[rbp], 1
.L53:
	mov	eax, DWORD PTR -196[rbp]
	cmp	DWORD PTR -144[rbp], eax
	jl	.L54
	mov	eax, DWORD PTR -140[rbp]
	movsxd	rbx, eax
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEE4dataEv
	mov	rdi, rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rcx, rax
	mov	rdx, rbx
	mov	esi, 1
.LEHB2:
	call	fwrite@PLT
	sub	DWORD PTR -148[rbp], 1
.L52:
	cmp	DWORD PTR -148[rbp], 0
	jns	.L55
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	call	fclose@PLT
	mov	rax, QWORD PTR -184[rbp]
	lea	rdx, .LC4[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	eax, 0
	call	printf@PLT
.LEHE2:
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEED1Ev
	jmp	.L49
.L62:
	endbr64
	mov	rbx, rax
	lea	rax, -173[rbp]
	mov	rdi, rax
	call	_ZNSt15__new_allocatorIhED2Ev
	nop
	mov	rax, rbx
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L58
	call	__stack_chk_fail@PLT
.L58:
	mov	rdi, rax
.LEHB3:
	call	_Unwind_Resume@PLT
.L63:
	endbr64
	mov	rbx, rax
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEED1Ev
	mov	rax, rbx
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L60
	call	__stack_chk_fail@PLT
.L60:
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.LEHE3:
.L64:
	nop
.L49:
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L61
	call	__stack_chk_fail@PLT
.L61:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1891:
	.section	.gcc_except_table,"a",@progbits
.LLSDA1891:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1891-.LLSDACSB1891
.LLSDACSB1891:
	.uleb128 .LEHB0-.LFB1891
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1891
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L62-.LFB1891
	.uleb128 0
	.uleb128 .LEHB2-.LFB1891
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L63-.LFB1891
	.uleb128 0
	.uleb128 .LEHB3-.LFB1891
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE1891:
	.text
	.size	_ZN7imgproc8save_bmpEPKcPKhii, .-_ZN7imgproc8save_bmpEPKcPKhii
	.section	.rodata
	.align 8
.LC5:
	.string	"checksum=%lu edges_mean=%lu passes=%d size=%dx%d\n"
.LC6:
	.string	"--save"
.LC7:
	.string	"out_1_original.bmp"
.LC8:
	.string	"out_2_blurred.bmp"
.LC9:
	.string	"out_3_edges.bmp"
.LC10:
	.string	"out_2b_blurred_2pass.bmp"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1892:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1892
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 2360
	.cfi_offset 3, -24
	mov	DWORD PTR -2356[rbp], edi
	mov	QWORD PTR -2368[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rax, -2112[rbp]
	mov	QWORD PTR -2320[rbp], rax
	nop
	nop
	lea	rdx, -2112[rbp]
	lea	rax, -2272[rbp]
	mov	esi, 1048576
	mov	rdi, rax
.LEHB4:
	call	_ZNSt6vectorIhSaIhEEC1EmRKS0_
.LEHE4:
	lea	rax, -2112[rbp]
	mov	rdi, rax
	call	_ZNSt15__new_allocatorIhED2Ev
	nop
	lea	rax, -2112[rbp]
	mov	QWORD PTR -2312[rbp], rax
	nop
	nop
	lea	rdx, -2112[rbp]
	lea	rax, -2240[rbp]
	mov	esi, 1048576
	mov	rdi, rax
.LEHB5:
	call	_ZNSt6vectorIhSaIhEEC1EmRKS0_
.LEHE5:
	lea	rax, -2112[rbp]
	mov	rdi, rax
	call	_ZNSt15__new_allocatorIhED2Ev
	nop
	lea	rax, -2112[rbp]
	mov	QWORD PTR -2304[rbp], rax
	nop
	nop
	lea	rdx, -2112[rbp]
	lea	rax, -2208[rbp]
	mov	esi, 1048576
	mov	rdi, rax
.LEHB6:
	call	_ZNSt6vectorIfSaIfEEC1EmRKS0_
.LEHE6:
	lea	rax, -2112[rbp]
	mov	rdi, rax
	call	_ZNSt15__new_allocatorIfED2Ev
	nop
	lea	rax, -2112[rbp]
	mov	QWORD PTR -2296[rbp], rax
	nop
	nop
	lea	rdx, -2112[rbp]
	lea	rax, -2176[rbp]
	mov	esi, 1048576
	mov	rdi, rax
.LEHB7:
	call	_ZNSt6vectorIfSaIfEEC1EmRKS0_
.LEHE7:
	lea	rax, -2112[rbp]
	mov	rdi, rax
	call	_ZNSt15__new_allocatorIfED2Ev
	nop
	lea	rax, -2272[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEE4dataEv
	mov	esi, 1048576
	mov	rdi, rax
	call	_ZN7imgproc10make_imageEPhi
	lea	rax, -2208[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEE4dataEv
	mov	rbx, rax
	lea	rax, -2272[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEE4dataEv
	mov	edx, 1048576
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZN7imgproc8to_floatEPKhPfi
	mov	DWORD PTR -2340[rbp], 0
	jmp	.L66
.L67:
	lea	rax, -2176[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEE4dataEv
	mov	rbx, rax
	lea	rax, -2208[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEE4dataEv
	mov	ecx, 1024
	mov	edx, 1024
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZN7imgproc6blur_hEPKfPfii
	lea	rax, -2208[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEE4dataEv
	mov	rbx, rax
	lea	rax, -2176[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEE4dataEv
	mov	ecx, 1024
	mov	edx, 1024
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZN7imgproc6blur_vEPKfPfii
	add	DWORD PTR -2340[rbp], 1
.L66:
	cmp	DWORD PTR -2340[rbp], 199
	jle	.L67
	lea	rax, -2240[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEE4dataEv
	mov	rbx, rax
	lea	rax, -2208[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEE4dataEv
	mov	ecx, 1024
	mov	edx, 1024
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZN7imgproc9sobel_magEPKfPhii
	lea	rax, -2240[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEE4dataEv
	mov	rcx, rax
	lea	rax, -2080[rbp]
	mov	rdx, rax
	mov	esi, 1048576
	mov	rdi, rcx
	call	_ZN7imgproc9histogramEPKhiPm
	lea	rax, -2240[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEE4dataEv
	mov	esi, 1048576
	mov	rdi, rax
	call	_ZN7imgproc8checksumEPKhi
	mov	QWORD PTR -2328[rbp], rax
	mov	rdx, QWORD PTR -1056[rbp]
	mov	rax, QWORD PTR -2328[rbp]
	lea	rdi, .LC5[rip]
	mov	r9d, 1024
	mov	r8d, 1024
	mov	ecx, 200
	mov	rsi, rax
	mov	eax, 0
.LEHB8:
	call	printf@PLT
.LEHE8:
	cmp	DWORD PTR -2356[rbp], 1
	jle	.L68
	mov	rax, QWORD PTR -2368[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	lea	rdx, .LC6[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L68
	lea	rax, -2112[rbp]
	mov	QWORD PTR -2288[rbp], rax
	nop
	nop
	lea	rdx, -2112[rbp]
	lea	rax, -2144[rbp]
	mov	esi, 1048576
	mov	rdi, rax
.LEHB9:
	call	_ZNSt6vectorIhSaIhEEC1EmRKS0_
.LEHE9:
	lea	rax, -2112[rbp]
	mov	rdi, rax
	call	_ZNSt15__new_allocatorIhED2Ev
	nop
	mov	DWORD PTR -2336[rbp], 0
	jmp	.L69
.L70:
	mov	eax, DWORD PTR -2336[rbp]
	movsxd	rdx, eax
	lea	rax, -2208[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEEixEm
	movss	xmm1, DWORD PTR [rax]
	movss	xmm0, DWORD PTR .LC1[rip]
	addss	xmm0, xmm1
	cvttss2si	eax, xmm0
	mov	ebx, eax
	mov	eax, DWORD PTR -2336[rbp]
	movsxd	rdx, eax
	lea	rax, -2144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEEixEm
	mov	BYTE PTR [rax], bl
	add	DWORD PTR -2336[rbp], 1
.L69:
	cmp	DWORD PTR -2336[rbp], 1048575
	jle	.L70
	lea	rax, -2272[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEE4dataEv
	mov	rsi, rax
	lea	rax, .LC7[rip]
	mov	ecx, 1024
	mov	edx, 1024
	mov	rdi, rax
.LEHB10:
	call	_ZN7imgproc8save_bmpEPKcPKhii
	lea	rax, -2144[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEE4dataEv
	mov	rsi, rax
	lea	rax, .LC8[rip]
	mov	ecx, 1024
	mov	edx, 1024
	mov	rdi, rax
	call	_ZN7imgproc8save_bmpEPKcPKhii
	lea	rax, -2240[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEE4dataEv
	mov	rsi, rax
	lea	rax, .LC9[rip]
	mov	ecx, 1024
	mov	edx, 1024
	mov	rdi, rax
	call	_ZN7imgproc8save_bmpEPKcPKhii
.LEHE10:
	lea	rax, -2341[rbp]
	mov	QWORD PTR -2280[rbp], rax
	nop
	nop
	lea	rdx, -2341[rbp]
	lea	rax, -2112[rbp]
	mov	esi, 1048576
	mov	rdi, rax
.LEHB11:
	call	_ZNSt6vectorIfSaIfEEC1EmRKS0_
.LEHE11:
	lea	rax, -2341[rbp]
	mov	rdi, rax
	call	_ZNSt15__new_allocatorIfED2Ev
	nop
	lea	rax, -2112[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEE4dataEv
	mov	rbx, rax
	lea	rax, -2272[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEE4dataEv
	mov	edx, 1048576
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZN7imgproc8to_floatEPKhPfi
	lea	rax, -2176[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEE4dataEv
	mov	rbx, rax
	lea	rax, -2112[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEE4dataEv
	mov	ecx, 1024
	mov	edx, 1024
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZN7imgproc6blur_hEPKfPfii
	lea	rax, -2112[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEE4dataEv
	mov	rbx, rax
	lea	rax, -2176[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEE4dataEv
	mov	ecx, 1024
	mov	edx, 1024
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZN7imgproc6blur_vEPKfPfii
	lea	rax, -2176[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEE4dataEv
	mov	rbx, rax
	lea	rax, -2112[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEE4dataEv
	mov	ecx, 1024
	mov	edx, 1024
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZN7imgproc6blur_hEPKfPfii
	lea	rax, -2112[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEE4dataEv
	mov	rbx, rax
	lea	rax, -2176[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEE4dataEv
	mov	ecx, 1024
	mov	edx, 1024
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZN7imgproc6blur_vEPKfPfii
	mov	DWORD PTR -2332[rbp], 0
	jmp	.L71
.L72:
	mov	eax, DWORD PTR -2332[rbp]
	movsxd	rdx, eax
	lea	rax, -2112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEEixEm
	movss	xmm1, DWORD PTR [rax]
	movss	xmm0, DWORD PTR .LC1[rip]
	addss	xmm0, xmm1
	cvttss2si	eax, xmm0
	mov	ebx, eax
	mov	eax, DWORD PTR -2332[rbp]
	movsxd	rdx, eax
	lea	rax, -2144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEEixEm
	mov	BYTE PTR [rax], bl
	add	DWORD PTR -2332[rbp], 1
.L71:
	cmp	DWORD PTR -2332[rbp], 1048575
	jle	.L72
	lea	rax, -2144[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEE4dataEv
	mov	rsi, rax
	lea	rax, .LC10[rip]
	mov	ecx, 1024
	mov	edx, 1024
	mov	rdi, rax
.LEHB12:
	call	_ZN7imgproc8save_bmpEPKcPKhii
.LEHE12:
	lea	rax, -2112[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEED1Ev
	lea	rax, -2144[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEED1Ev
.L68:
	mov	ebx, 0
	lea	rax, -2176[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEED1Ev
	lea	rax, -2208[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEED1Ev
	lea	rax, -2240[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEED1Ev
	lea	rax, -2272[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEED1Ev
	mov	eax, ebx
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L88
	jmp	.L98
.L89:
	endbr64
	mov	rbx, rax
	lea	rax, -2112[rbp]
	mov	rdi, rax
	call	_ZNSt15__new_allocatorIhED2Ev
	nop
	mov	rax, rbx
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L75
	call	__stack_chk_fail@PLT
.L75:
	mov	rdi, rax
.LEHB13:
	call	_Unwind_Resume@PLT
.L90:
	endbr64
	mov	rbx, rax
	lea	rax, -2112[rbp]
	mov	rdi, rax
	call	_ZNSt15__new_allocatorIhED2Ev
	nop
	jmp	.L77
.L91:
	endbr64
	mov	rbx, rax
	lea	rax, -2112[rbp]
	mov	rdi, rax
	call	_ZNSt15__new_allocatorIfED2Ev
	nop
	jmp	.L79
.L92:
	endbr64
	mov	rbx, rax
	lea	rax, -2112[rbp]
	mov	rdi, rax
	call	_ZNSt15__new_allocatorIfED2Ev
	nop
	jmp	.L81
.L94:
	endbr64
	mov	rbx, rax
	lea	rax, -2112[rbp]
	mov	rdi, rax
	call	_ZNSt15__new_allocatorIhED2Ev
	nop
	jmp	.L83
.L96:
	endbr64
	mov	rbx, rax
	lea	rax, -2341[rbp]
	mov	rdi, rax
	call	_ZNSt15__new_allocatorIfED2Ev
	nop
	jmp	.L85
.L97:
	endbr64
	mov	rbx, rax
	lea	rax, -2112[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEED1Ev
	jmp	.L85
.L95:
	endbr64
	mov	rbx, rax
.L85:
	lea	rax, -2144[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEED1Ev
	jmp	.L83
.L93:
	endbr64
	mov	rbx, rax
.L83:
	lea	rax, -2176[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEED1Ev
.L81:
	lea	rax, -2208[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEED1Ev
.L79:
	lea	rax, -2240[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEED1Ev
.L77:
	lea	rax, -2272[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEED1Ev
	mov	rax, rbx
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L87
	call	__stack_chk_fail@PLT
.L87:
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.LEHE13:
.L98:
	call	__stack_chk_fail@PLT
.L88:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1892:
	.section	.gcc_except_table
.LLSDA1892:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1892-.LLSDACSB1892
.LLSDACSB1892:
	.uleb128 .LEHB4-.LFB1892
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L89-.LFB1892
	.uleb128 0
	.uleb128 .LEHB5-.LFB1892
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L90-.LFB1892
	.uleb128 0
	.uleb128 .LEHB6-.LFB1892
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L91-.LFB1892
	.uleb128 0
	.uleb128 .LEHB7-.LFB1892
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L92-.LFB1892
	.uleb128 0
	.uleb128 .LEHB8-.LFB1892
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L93-.LFB1892
	.uleb128 0
	.uleb128 .LEHB9-.LFB1892
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L94-.LFB1892
	.uleb128 0
	.uleb128 .LEHB10-.LFB1892
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L95-.LFB1892
	.uleb128 0
	.uleb128 .LEHB11-.LFB1892
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L96-.LFB1892
	.uleb128 0
	.uleb128 .LEHB12-.LFB1892
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L97-.LFB1892
	.uleb128 0
	.uleb128 .LEHB13-.LFB1892
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE1892:
	.text
	.size	main, .-main
	.section	.text._ZNSt6vectorIhSaIhEEC2EmRKhRKS0_,"axG",@progbits,_ZNSt6vectorIhSaIhEEC5EmRKhRKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_
	.type	_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_, @function
_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_:
.LFB1953:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1953
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	QWORD PTR -48[rbp], rcx
	mov	rbx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB14:
	call	_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_
	mov	rcx, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	call	_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_
.LEHE14:
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
.LEHB15:
	call	_ZNSt6vectorIhSaIhEE18_M_fill_initializeEmRKh
.LEHE15:
	jmp	.L102
.L101:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIhSaIhEED2Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB16:
	call	_Unwind_Resume@PLT
.LEHE16:
.L102:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1953:
	.section	.gcc_except_table
.LLSDA1953:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1953-.LLSDACSB1953
.LLSDACSB1953:
	.uleb128 .LEHB14-.LFB1953
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB1953
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L101-.LFB1953
	.uleb128 0
	.uleb128 .LEHB16-.LFB1953
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSE1953:
	.section	.text._ZNSt6vectorIhSaIhEEC2EmRKhRKS0_,"axG",@progbits,_ZNSt6vectorIhSaIhEEC5EmRKhRKS0_,comdat
	.size	_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_, .-_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_
	.weak	_ZNSt6vectorIhSaIhEEC1EmRKhRKS0_
	.set	_ZNSt6vectorIhSaIhEEC1EmRKhRKS0_,_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_
	.section	.text._ZNSt6vectorIhSaIhEED2Ev,"axG",@progbits,_ZNSt6vectorIhSaIhEED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIhSaIhEED2Ev
	.type	_ZNSt6vectorIhSaIhEED2Ev, @function
_ZNSt6vectorIhSaIhEED2Ev:
.LFB1956:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIhSaIhEE19_M_get_Tp_allocatorEv
	mov	rdx, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR 8[rdx]
	mov	rcx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR [rcx]
	mov	QWORD PTR -24[rbp], rcx
	mov	QWORD PTR -16[rbp], rdx
	mov	QWORD PTR -8[rbp], rax
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt8_DestroyIPhEvT_S1_
	nop
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIhSaIhEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1956:
	.size	_ZNSt6vectorIhSaIhEED2Ev, .-_ZNSt6vectorIhSaIhEED2Ev
	.weak	_ZNSt6vectorIhSaIhEED1Ev
	.set	_ZNSt6vectorIhSaIhEED1Ev,_ZNSt6vectorIhSaIhEED2Ev
	.section	.rodata
.LC11:
	.string	"__n < this->size()"
	.align 8
.LC12:
	.string	"std::vector<_Tp, _Alloc>::reference std::vector<_Tp, _Alloc>::operator[](size_type) [with _Tp = unsigned char; _Alloc = std::allocator<unsigned char>; reference = unsigned char&; size_type = long unsigned int]"
	.align 8
.LC13:
	.string	"/usr/include/c++/15/bits/stl_vector.h"
	.section	.text._ZNSt6vectorIhSaIhEEixEm,"axG",@progbits,_ZNSt6vectorIhSaIhEEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIhSaIhEEixEm
	.type	_ZNSt6vectorIhSaIhEEixEm, @function
_ZNSt6vectorIhSaIhEEixEm:
.LFB1958:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIhSaIhEE4sizeEv
	cmp	QWORD PTR -16[rbp], rax
	setnb	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L105
	lea	rcx, .LC11[rip]
	lea	rdx, .LC12[rip]
	lea	rax, .LC13[rip]
	mov	esi, 1263
	mov	rdi, rax
	call	_ZSt21__glibcxx_assert_failPKciS0_S0_@PLT
.L105:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1958:
	.size	_ZNSt6vectorIhSaIhEEixEm, .-_ZNSt6vectorIhSaIhEEixEm
	.section	.text._ZNSt6vectorIhSaIhEE4dataEv,"axG",@progbits,_ZNSt6vectorIhSaIhEE4dataEv,comdat
	.align 2
	.weak	_ZNSt6vectorIhSaIhEE4dataEv
	.type	_ZNSt6vectorIhSaIhEE4dataEv, @function
_ZNSt6vectorIhSaIhEE4dataEv:
.LFB1959:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNKSt6vectorIhSaIhEE11_M_data_ptrIhEEPT_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1959:
	.size	_ZNSt6vectorIhSaIhEE4dataEv, .-_ZNSt6vectorIhSaIhEE4dataEv
	.section	.text._ZNSt6vectorIhSaIhEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIhSaIhEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorIhSaIhEEC2EmRKS0_
	.type	_ZNSt6vectorIhSaIhEEC2EmRKS0_, @function
_ZNSt6vectorIhSaIhEEC2EmRKS0_:
.LFB1961:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1961
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rbx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB17:
	call	_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	call	_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_
.LEHE17:
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB18:
	call	_ZNSt6vectorIhSaIhEE21_M_default_initializeEm
.LEHE18:
	jmp	.L112
.L111:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIhSaIhEED2Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB19:
	call	_Unwind_Resume@PLT
.LEHE19:
.L112:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1961:
	.section	.gcc_except_table
.LLSDA1961:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1961-.LLSDACSB1961
.LLSDACSB1961:
	.uleb128 .LEHB17-.LFB1961
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB1961
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L111-.LFB1961
	.uleb128 0
	.uleb128 .LEHB19-.LFB1961
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE1961:
	.section	.text._ZNSt6vectorIhSaIhEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIhSaIhEEC5EmRKS0_,comdat
	.size	_ZNSt6vectorIhSaIhEEC2EmRKS0_, .-_ZNSt6vectorIhSaIhEEC2EmRKS0_
	.weak	_ZNSt6vectorIhSaIhEEC1EmRKS0_
	.set	_ZNSt6vectorIhSaIhEEC1EmRKS0_,_ZNSt6vectorIhSaIhEEC2EmRKS0_
	.section	.text._ZNSt6vectorIfSaIfEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIfSaIfEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorIfSaIfEEC2EmRKS0_
	.type	_ZNSt6vectorIfSaIfEEC2EmRKS0_, @function
_ZNSt6vectorIfSaIfEEC2EmRKS0_:
.LFB1970:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1970
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rbx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB20:
	call	_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	call	_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_
.LEHE20:
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB21:
	call	_ZNSt6vectorIfSaIfEE21_M_default_initializeEm
.LEHE21:
	jmp	.L116
.L115:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIfSaIfEED2Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB22:
	call	_Unwind_Resume@PLT
.LEHE22:
.L116:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1970:
	.section	.gcc_except_table
.LLSDA1970:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1970-.LLSDACSB1970
.LLSDACSB1970:
	.uleb128 .LEHB20-.LFB1970
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB1970
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L115-.LFB1970
	.uleb128 0
	.uleb128 .LEHB22-.LFB1970
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE1970:
	.section	.text._ZNSt6vectorIfSaIfEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIfSaIfEEC5EmRKS0_,comdat
	.size	_ZNSt6vectorIfSaIfEEC2EmRKS0_, .-_ZNSt6vectorIfSaIfEEC2EmRKS0_
	.weak	_ZNSt6vectorIfSaIfEEC1EmRKS0_
	.set	_ZNSt6vectorIfSaIfEEC1EmRKS0_,_ZNSt6vectorIfSaIfEEC2EmRKS0_
	.section	.text._ZNSt6vectorIfSaIfEED2Ev,"axG",@progbits,_ZNSt6vectorIfSaIfEED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIfSaIfEED2Ev
	.type	_ZNSt6vectorIfSaIfEED2Ev, @function
_ZNSt6vectorIfSaIfEED2Ev:
.LFB1973:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	mov	rdx, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR 8[rdx]
	mov	rcx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR [rcx]
	mov	QWORD PTR -24[rbp], rcx
	mov	QWORD PTR -16[rbp], rdx
	mov	QWORD PTR -8[rbp], rax
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt8_DestroyIPfEvT_S1_
	nop
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIfSaIfEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1973:
	.size	_ZNSt6vectorIfSaIfEED2Ev, .-_ZNSt6vectorIfSaIfEED2Ev
	.weak	_ZNSt6vectorIfSaIfEED1Ev
	.set	_ZNSt6vectorIfSaIfEED1Ev,_ZNSt6vectorIfSaIfEED2Ev
	.section	.text._ZNSt6vectorIfSaIfEE4dataEv,"axG",@progbits,_ZNSt6vectorIfSaIfEE4dataEv,comdat
	.align 2
	.weak	_ZNSt6vectorIfSaIfEE4dataEv
	.type	_ZNSt6vectorIfSaIfEE4dataEv, @function
_ZNSt6vectorIfSaIfEE4dataEv:
.LFB1975:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNKSt6vectorIfSaIfEE11_M_data_ptrIfEEPT_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1975:
	.size	_ZNSt6vectorIfSaIfEE4dataEv, .-_ZNSt6vectorIfSaIfEE4dataEv
	.section	.rodata
	.align 8
.LC14:
	.string	"std::vector<_Tp, _Alloc>::reference std::vector<_Tp, _Alloc>::operator[](size_type) [with _Tp = float; _Alloc = std::allocator<float>; reference = float&; size_type = long unsigned int]"
	.section	.text._ZNSt6vectorIfSaIfEEixEm,"axG",@progbits,_ZNSt6vectorIfSaIfEEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIfSaIfEEixEm
	.type	_ZNSt6vectorIfSaIfEEixEm, @function
_ZNSt6vectorIfSaIfEEixEm:
.LFB1976:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIfSaIfEE4sizeEv
	cmp	QWORD PTR -16[rbp], rax
	setnb	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L121
	lea	rcx, .LC11[rip]
	lea	rdx, .LC14[rip]
	lea	rax, .LC13[rip]
	mov	esi, 1263
	mov	rdi, rax
	call	_ZSt21__glibcxx_assert_failPKciS0_S0_@PLT
.L121:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -16[rbp]
	sal	rdx, 2
	add	rax, rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1976:
	.size	_ZNSt6vectorIfSaIfEEixEm, .-_ZNSt6vectorIfSaIfEEixEm
	.section	.text._ZNSt15__new_allocatorIhED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIhED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIhED2Ev
	.type	_ZNSt15__new_allocatorIhED2Ev, @function
_ZNSt15__new_allocatorIhED2Ev:
.LFB2031:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2031:
	.size	_ZNSt15__new_allocatorIhED2Ev, .-_ZNSt15__new_allocatorIhED2Ev
	.weak	_ZNSt15__new_allocatorIhED1Ev
	.set	_ZNSt15__new_allocatorIhED1Ev,_ZNSt15__new_allocatorIhED2Ev
	.section	.rodata
	.align 8
.LC15:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_,"axG",@progbits,_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_,comdat
	.weak	_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_, @function
_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_:
.LFB2033:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 72
	.cfi_offset 3, -24
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -80[rbp]
	mov	QWORD PTR -48[rbp], rax
	lea	rax, -49[rbp]
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -32[rbp], rax
	nop
	nop
	lea	rax, -49[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIhSaIhEE11_S_max_sizeERKS0_
	cmp	rax, QWORD PTR -72[rbp]
	setb	bl
	lea	rax, -49[rbp]
	mov	rdi, rax
	call	_ZNSt15__new_allocatorIhED2Ev
	nop
	test	bl, bl
	je	.L125
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L126
	call	__stack_chk_fail@PLT
.L126:
	lea	rax, .LC15[rip]
	mov	rdi, rax
	call	_ZSt20__throw_length_errorPKc@PLT
.L125:
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L128
	call	__stack_chk_fail@PLT
.L128:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2033:
	.size	_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_, .-_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_
	.section	.text._ZNSt12_Vector_baseIhSaIhEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIhSaIhEE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIhSaIhEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIhSaIhEE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIhSaIhEE12_Vector_implD2Ev:
.LFB2036:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt15__new_allocatorIhED2Ev
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2036:
	.size	_ZNSt12_Vector_baseIhSaIhEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIhSaIhEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIhSaIhEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIhSaIhEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIhSaIhEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIhSaIhEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_
	.type	_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_, @function
_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_:
.LFB2038:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2038
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIhSaIhEE12_Vector_implC1ERKS0_
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB23:
	call	_ZNSt12_Vector_baseIhSaIhEE17_M_create_storageEm
.LEHE23:
	jmp	.L133
.L132:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIhSaIhEE12_Vector_implD1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB24:
	call	_Unwind_Resume@PLT
.LEHE24:
.L133:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2038:
	.section	.gcc_except_table
.LLSDA2038:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2038-.LLSDACSB2038
.LLSDACSB2038:
	.uleb128 .LEHB23-.LFB2038
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L132-.LFB2038
	.uleb128 0
	.uleb128 .LEHB24-.LFB2038
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
.LLSDACSE2038:
	.section	.text._ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIhSaIhEEC5EmRKS0_,comdat
	.size	_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_, .-_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_
	.weak	_ZNSt12_Vector_baseIhSaIhEEC1EmRKS0_
	.set	_ZNSt12_Vector_baseIhSaIhEEC1EmRKS0_,_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_
	.section	.text._ZNSt12_Vector_baseIhSaIhEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIhSaIhEED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIhSaIhEED2Ev
	.type	_ZNSt12_Vector_baseIhSaIhEED2Ev, @function
_ZNSt12_Vector_baseIhSaIhEED2Ev:
.LFB2041:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2041
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	sub	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIhSaIhEE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2041:
	.section	.gcc_except_table
.LLSDA2041:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2041-.LLSDACSB2041
.LLSDACSB2041:
.LLSDACSE2041:
	.section	.text._ZNSt12_Vector_baseIhSaIhEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIhSaIhEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIhSaIhEED2Ev, .-_ZNSt12_Vector_baseIhSaIhEED2Ev
	.weak	_ZNSt12_Vector_baseIhSaIhEED1Ev
	.set	_ZNSt12_Vector_baseIhSaIhEED1Ev,_ZNSt12_Vector_baseIhSaIhEED2Ev
	.section	.text._ZNSt6vectorIhSaIhEE18_M_fill_initializeEmRKh,"axG",@progbits,_ZNSt6vectorIhSaIhEE18_M_fill_initializeEmRKh,comdat
	.align 2
	.weak	_ZNSt6vectorIhSaIhEE18_M_fill_initializeEmRKh
	.type	_ZNSt6vectorIhSaIhEE18_M_fill_initializeEmRKh, @function
_ZNSt6vectorIhSaIhEE18_M_fill_initializeEmRKh:
.LFB2043:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIhSaIhEE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rdx], rax
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2043:
	.size	_ZNSt6vectorIhSaIhEE18_M_fill_initializeEmRKh, .-_ZNSt6vectorIhSaIhEE18_M_fill_initializeEmRKh
	.section	.text._ZNSt12_Vector_baseIhSaIhEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIhSaIhEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIhSaIhEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIhSaIhEE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIhSaIhEE19_M_get_Tp_allocatorEv:
.LFB2044:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2044:
	.size	_ZNSt12_Vector_baseIhSaIhEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIhSaIhEE19_M_get_Tp_allocatorEv
	.section	.text._ZNKSt6vectorIhSaIhEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIhSaIhEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIhSaIhEE4sizeEv
	.type	_ZNKSt6vectorIhSaIhEE4sizeEv, @function
_ZNKSt6vectorIhSaIhEE4sizeEv:
.LFB2046:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	sub	rdx, rax
	mov	QWORD PTR -8[rbp], rdx
	cmp	QWORD PTR -8[rbp], 0
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2046:
	.size	_ZNKSt6vectorIhSaIhEE4sizeEv, .-_ZNKSt6vectorIhSaIhEE4sizeEv
	.section	.text._ZNKSt6vectorIhSaIhEE11_M_data_ptrIhEEPT_S4_,"axG",@progbits,_ZNKSt6vectorIhSaIhEE11_M_data_ptrIhEEPT_S4_,comdat
	.align 2
	.weak	_ZNKSt6vectorIhSaIhEE11_M_data_ptrIhEEPT_S4_
	.type	_ZNKSt6vectorIhSaIhEE11_M_data_ptrIhEEPT_S4_, @function
_ZNKSt6vectorIhSaIhEE11_M_data_ptrIhEEPT_S4_:
.LFB2047:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2047:
	.size	_ZNKSt6vectorIhSaIhEE11_M_data_ptrIhEEPT_S4_, .-_ZNKSt6vectorIhSaIhEE11_M_data_ptrIhEEPT_S4_
	.section	.text._ZNSt6vectorIhSaIhEE21_M_default_initializeEm,"axG",@progbits,_ZNSt6vectorIhSaIhEE21_M_default_initializeEm,comdat
	.align 2
	.weak	_ZNSt6vectorIhSaIhEE21_M_default_initializeEm
	.type	_ZNSt6vectorIhSaIhEE21_M_default_initializeEm, @function
_ZNSt6vectorIhSaIhEE21_M_default_initializeEm:
.LFB2048:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIhSaIhEE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rdx], rax
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2048:
	.size	_ZNSt6vectorIhSaIhEE21_M_default_initializeEm, .-_ZNSt6vectorIhSaIhEE21_M_default_initializeEm
	.section	.text._ZNSt15__new_allocatorIfED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIfED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIfED2Ev
	.type	_ZNSt15__new_allocatorIfED2Ev, @function
_ZNSt15__new_allocatorIfED2Ev:
.LFB2053:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2053:
	.size	_ZNSt15__new_allocatorIfED2Ev, .-_ZNSt15__new_allocatorIfED2Ev
	.weak	_ZNSt15__new_allocatorIfED1Ev
	.set	_ZNSt15__new_allocatorIfED1Ev,_ZNSt15__new_allocatorIfED2Ev
	.section	.text._ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_,"axG",@progbits,_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_,comdat
	.weak	_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_, @function
_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_:
.LFB2055:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 72
	.cfi_offset 3, -24
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -80[rbp]
	mov	QWORD PTR -48[rbp], rax
	lea	rax, -49[rbp]
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -32[rbp], rax
	nop
	nop
	lea	rax, -49[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_
	cmp	rax, QWORD PTR -72[rbp]
	setb	bl
	lea	rax, -49[rbp]
	mov	rdi, rax
	call	_ZNSt15__new_allocatorIfED2Ev
	nop
	test	bl, bl
	je	.L146
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L147
	call	__stack_chk_fail@PLT
.L147:
	lea	rax, .LC15[rip]
	mov	rdi, rax
	call	_ZSt20__throw_length_errorPKc@PLT
.L146:
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L149
	call	__stack_chk_fail@PLT
.L149:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2055:
	.size	_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_, .-_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_
	.section	.text._ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev:
.LFB2058:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt15__new_allocatorIfED2Ev
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2058:
	.size	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_
	.type	_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_, @function
_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_:
.LFB2060:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2060
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC1ERKS0_
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB25:
	call	_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm
.LEHE25:
	jmp	.L154
.L153:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB26:
	call	_Unwind_Resume@PLT
.LEHE26:
.L154:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2060:
	.section	.gcc_except_table
.LLSDA2060:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2060-.LLSDACSB2060
.LLSDACSB2060:
	.uleb128 .LEHB25-.LFB2060
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L153-.LFB2060
	.uleb128 0
	.uleb128 .LEHB26-.LFB2060
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
.LLSDACSE2060:
	.section	.text._ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEEC5EmRKS0_,comdat
	.size	_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_, .-_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_
	.weak	_ZNSt12_Vector_baseIfSaIfEEC1EmRKS0_
	.set	_ZNSt12_Vector_baseIfSaIfEEC1EmRKS0_,_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_
	.section	.text._ZNSt12_Vector_baseIfSaIfEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEED2Ev
	.type	_ZNSt12_Vector_baseIfSaIfEED2Ev, @function
_ZNSt12_Vector_baseIfSaIfEED2Ev:
.LFB2063:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2063
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	sub	rdx, rax
	mov	rax, rdx
	sar	rax, 2
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2063:
	.section	.gcc_except_table
.LLSDA2063:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2063-.LLSDACSB2063
.LLSDACSB2063:
.LLSDACSE2063:
	.section	.text._ZNSt12_Vector_baseIfSaIfEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIfSaIfEED2Ev, .-_ZNSt12_Vector_baseIfSaIfEED2Ev
	.weak	_ZNSt12_Vector_baseIfSaIfEED1Ev
	.set	_ZNSt12_Vector_baseIfSaIfEED1Ev,_ZNSt12_Vector_baseIfSaIfEED2Ev
	.section	.text._ZNSt6vectorIfSaIfEE21_M_default_initializeEm,"axG",@progbits,_ZNSt6vectorIfSaIfEE21_M_default_initializeEm,comdat
	.align 2
	.weak	_ZNSt6vectorIfSaIfEE21_M_default_initializeEm
	.type	_ZNSt6vectorIfSaIfEE21_M_default_initializeEm, @function
_ZNSt6vectorIfSaIfEE21_M_default_initializeEm:
.LFB2065:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rdx], rax
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2065:
	.size	_ZNSt6vectorIfSaIfEE21_M_default_initializeEm, .-_ZNSt6vectorIfSaIfEE21_M_default_initializeEm
	.section	.text._ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv:
.LFB2066:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2066:
	.size	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	.section	.text._ZNKSt6vectorIfSaIfEE11_M_data_ptrIfEEPT_S4_,"axG",@progbits,_ZNKSt6vectorIfSaIfEE11_M_data_ptrIfEEPT_S4_,comdat
	.align 2
	.weak	_ZNKSt6vectorIfSaIfEE11_M_data_ptrIfEEPT_S4_
	.type	_ZNKSt6vectorIfSaIfEE11_M_data_ptrIfEEPT_S4_, @function
_ZNKSt6vectorIfSaIfEE11_M_data_ptrIfEEPT_S4_:
.LFB2068:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2068:
	.size	_ZNKSt6vectorIfSaIfEE11_M_data_ptrIfEEPT_S4_, .-_ZNKSt6vectorIfSaIfEE11_M_data_ptrIfEEPT_S4_
	.section	.text._ZNKSt6vectorIfSaIfEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIfSaIfEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIfSaIfEE4sizeEv
	.type	_ZNKSt6vectorIfSaIfEE4sizeEv, @function
_ZNKSt6vectorIfSaIfEE4sizeEv:
.LFB2069:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	sub	rdx, rax
	mov	rax, rdx
	sar	rax, 2
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2069:
	.size	_ZNKSt6vectorIfSaIfEE4sizeEv, .-_ZNKSt6vectorIfSaIfEE4sizeEv
	.section	.text._ZNSt6vectorIhSaIhEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIhSaIhEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt6vectorIhSaIhEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorIhSaIhEE11_S_max_sizeERKS0_, @function
_ZNSt6vectorIhSaIhEE11_S_max_sizeERKS0_:
.LFB2099:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -56[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	movabs	rax, 9223372036854775807
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -16[rbp], rax
	movabs	rax, 9223372036854775807
	nop
	nop
	mov	QWORD PTR -40[rbp], rax
	lea	rdx, -40[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L169
	call	__stack_chk_fail@PLT
.L169:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2099:
	.size	_ZNSt6vectorIhSaIhEE11_S_max_sizeERKS0_, .-_ZNSt6vectorIhSaIhEE11_S_max_sizeERKS0_
	.section	.text._ZNSt12_Vector_baseIhSaIhEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIhSaIhEE12_Vector_implC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIhSaIhEE12_Vector_implC2ERKS0_
	.type	_ZNSt12_Vector_baseIhSaIhEE12_Vector_implC2ERKS0_, @function
_ZNSt12_Vector_baseIhSaIhEE12_Vector_implC2ERKS0_:
.LFB2104:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	nop
	nop
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2104:
	.size	_ZNSt12_Vector_baseIhSaIhEE12_Vector_implC2ERKS0_, .-_ZNSt12_Vector_baseIhSaIhEE12_Vector_implC2ERKS0_
	.weak	_ZNSt12_Vector_baseIhSaIhEE12_Vector_implC1ERKS0_
	.set	_ZNSt12_Vector_baseIhSaIhEE12_Vector_implC1ERKS0_,_ZNSt12_Vector_baseIhSaIhEE12_Vector_implC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIhSaIhEE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIhSaIhEE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIhSaIhEE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIhSaIhEE17_M_create_storageEm, @function
_ZNSt12_Vector_baseIhSaIhEE17_M_create_storageEm:
.LFB2106:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2106:
	.size	_ZNSt12_Vector_baseIhSaIhEE17_M_create_storageEm, .-_ZNSt12_Vector_baseIhSaIhEE17_M_create_storageEm
	.section	.text._ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm,"axG",@progbits,_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm
	.type	_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm, @function
_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm:
.LFB2107:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	cmp	QWORD PTR -48[rbp], 0
	je	.L174
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rdx, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt15__new_allocatorIhE10deallocateEPhm
	nop
.L174:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2107:
	.size	_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm, .-_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm
	.section	.text._ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E,"axG",@progbits,_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E,comdat
	.weak	_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E
	.type	_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E, @function
_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E:
.LFB2108:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	QWORD PTR -32[rbp], rcx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt20uninitialized_fill_nIPhmhET_S1_T0_RKT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2108:
	.size	_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E, .-_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E
	.section	.text._ZSt8_DestroyIPhEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPhEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPhEvT_S1_
	.type	_ZSt8_DestroyIPhEvT_S1_, @function
_ZSt8_DestroyIPhEvT_S1_:
.LFB2109:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2109:
	.size	_ZSt8_DestroyIPhEvT_S1_, .-_ZSt8_DestroyIPhEvT_S1_
	.section	.text._ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E,comdat
	.weak	_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E, @function
_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E:
.LFB2112:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt25__uninitialized_default_nIPhmET_S1_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2112:
	.size	_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E
	.section	.text._ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_, @function
_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_:
.LFB2113:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -56[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	movabs	rax, 2305843009213693951
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -16[rbp], rax
	movabs	rax, 2305843009213693951
	nop
	nop
	mov	QWORD PTR -40[rbp], rax
	lea	rdx, -40[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L185
	call	__stack_chk_fail@PLT
.L185:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2113:
	.size	_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_, .-_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_
	.section	.text._ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_
	.type	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_, @function
_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_:
.LFB2118:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	nop
	nop
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2118:
	.size	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_, .-_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_
	.weak	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC1ERKS0_
	.set	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC1ERKS0_,_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm, @function
_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm:
.LFB2120:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -16[rbp]
	sal	rdx, 2
	add	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2120:
	.size	_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm, .-_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm
	.section	.text._ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm
	.type	_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm, @function
_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm:
.LFB2121:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	cmp	QWORD PTR -48[rbp], 0
	je	.L190
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rdx, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt15__new_allocatorIfE10deallocateEPfm
	nop
.L190:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2121:
	.size	_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm, .-_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm
	.section	.text._ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E,comdat
	.weak	_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E, @function
_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E:
.LFB2122:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt25__uninitialized_default_nIPfmET_S1_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2122:
	.size	_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E
	.section	.text._ZSt8_DestroyIPfEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPfEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPfEvT_S1_
	.type	_ZSt8_DestroyIPfEvT_S1_, @function
_ZSt8_DestroyIPfEvT_S1_:
.LFB2123:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2123:
	.size	_ZSt8_DestroyIPfEvT_S1_, .-_ZSt8_DestroyIPfEvT_S1_
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB2140:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jnb	.L195
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L196
.L195:
	mov	rax, QWORD PTR -8[rbp]
.L196:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2140:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataC2Ev:
.LFB2145:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], 0
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2145:
	.size	_ZNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm, @function
_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm:
.LFB2147:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	cmp	QWORD PTR -32[rbp], 0
	je	.L199
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt15__new_allocatorIhE8allocateEmPKv
	nop
	jmp	.L201
.L199:
	mov	eax, 0
.L201:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2147:
	.size	_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm, .-_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm
	.section	.text._ZSt20uninitialized_fill_nIPhmhET_S1_T0_RKT1_,"axG",@progbits,_ZSt20uninitialized_fill_nIPhmhET_S1_T0_RKT1_,comdat
	.weak	_ZSt20uninitialized_fill_nIPhmhET_S1_T0_RKT1_
	.type	_ZSt20uninitialized_fill_nIPhmhET_S1_T0_RKT1_, @function
_ZSt20uninitialized_fill_nIPhmhET_S1_T0_RKT1_:
.LFB2149:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -32[rbp], 0
	je	.L205
	mov	rax, QWORD PTR -40[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	ecx, al
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	memset@PLT
	mov	rax, QWORD PTR -32[rbp]
	add	QWORD PTR -24[rbp], rax
.L205:
	mov	rax, QWORD PTR -24[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2149:
	.size	_ZSt20uninitialized_fill_nIPhmhET_S1_T0_RKT1_, .-_ZSt20uninitialized_fill_nIPhmhET_S1_T0_RKT1_
	.section	.text._ZSt25__uninitialized_default_nIPhmET_S1_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIPhmET_S1_T0_,comdat
	.weak	_ZSt25__uninitialized_default_nIPhmET_S1_T0_
	.type	_ZSt25__uninitialized_default_nIPhmET_S1_T0_, @function
_ZSt25__uninitialized_default_nIPhmET_S1_T0_:
.LFB2151:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPhmEET_S3_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2151:
	.size	_ZSt25__uninitialized_default_nIPhmET_S1_T0_, .-_ZSt25__uninitialized_default_nIPhmET_S1_T0_
	.section	.text._ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev:
.LFB2157:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], 0
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2157:
	.size	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm, @function
_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm:
.LFB2159:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	cmp	QWORD PTR -32[rbp], 0
	je	.L211
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt15__new_allocatorIfE8allocateEmPKv
	nop
	jmp	.L213
.L211:
	mov	eax, 0
.L213:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2159:
	.size	_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm, .-_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm
	.section	.text._ZSt25__uninitialized_default_nIPfmET_S1_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIPfmET_S1_T0_,comdat
	.weak	_ZSt25__uninitialized_default_nIPfmET_S1_T0_
	.type	_ZSt25__uninitialized_default_nIPfmET_S1_T0_, @function
_ZSt25__uninitialized_default_nIPfmET_S1_T0_:
.LFB2161:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPfmEET_S3_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2161:
	.size	_ZSt25__uninitialized_default_nIPfmET_S1_T0_, .-_ZSt25__uninitialized_default_nIPfmET_S1_T0_
	.section	.text._ZNSt15__new_allocatorIhE10deallocateEPhm,"axG",@progbits,_ZNSt15__new_allocatorIhE10deallocateEPhm,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIhE10deallocateEPhm
	.type	_ZNSt15__new_allocatorIhE10deallocateEPhm, @function
_ZNSt15__new_allocatorIhE10deallocateEPhm:
.LFB2168:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2168:
	.size	_ZNSt15__new_allocatorIhE10deallocateEPhm, .-_ZNSt15__new_allocatorIhE10deallocateEPhm
	.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPhmEET_S3_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPhmEET_S3_T0_,comdat
	.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPhmEET_S3_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPhmEET_S3_T0_, @function
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPhmEET_S3_T0_:
.LFB2171:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 112
	mov	QWORD PTR -104[rbp], rdi
	mov	QWORD PTR -112[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	cmp	QWORD PTR -112[rbp], 0
	je	.L220
	mov	rax, QWORD PTR -104[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -88[rbp], rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	call	_ZSt10_ConstructIhJEEvPT_DpOT0_
	add	QWORD PTR -104[rbp], 1
	mov	rax, QWORD PTR -112[rbp]
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -104[rbp]
	mov	QWORD PTR -96[rbp], rax
	mov	QWORD PTR -80[rbp], rdx
	mov	rax, QWORD PTR -88[rbp]
	mov	QWORD PTR -72[rbp], rax
	nop
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	_ZSt17__size_to_integerm
	mov	rdx, QWORD PTR -96[rbp]
	mov	QWORD PTR -64[rbp], rdx
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR -48[rbp], rax
	cmp	QWORD PTR -56[rbp], 0
	jne	.L223
	mov	rax, QWORD PTR -64[rbp]
	jmp	.L224
.L223:
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -56[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	QWORD PTR -40[rbp], rax
	mov	QWORD PTR -32[rbp], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt9__fill_a1IhhEN9__gnu_cxx11__enable_ifIXaasrSt9__is_byteIT_E7__valueoosrSt10__are_sameIS3_T0_E7__valuesrSt20__memcpyable_integerIS6_E7__widthEvE6__typeEPS3_SC_RKS6_
	nop
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
.L224:
	nop
	mov	QWORD PTR -104[rbp], rax
.L220:
	mov	rax, QWORD PTR -104[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L227
	call	__stack_chk_fail@PLT
.L227:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2171:
	.size	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPhmEET_S3_T0_, .-_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPhmEET_S3_T0_
	.section	.text._ZNSt15__new_allocatorIfE10deallocateEPfm,"axG",@progbits,_ZNSt15__new_allocatorIfE10deallocateEPfm,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIfE10deallocateEPfm
	.type	_ZNSt15__new_allocatorIfE10deallocateEPfm, @function
_ZNSt15__new_allocatorIfE10deallocateEPfm:
.LFB2174:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2174:
	.size	_ZNSt15__new_allocatorIfE10deallocateEPfm, .-_ZNSt15__new_allocatorIfE10deallocateEPfm
	.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPfmEET_S3_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPfmEET_S3_T0_,comdat
	.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPfmEET_S3_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPfmEET_S3_T0_, @function
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPfmEET_S3_T0_:
.LFB2175:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 112
	mov	QWORD PTR -104[rbp], rdi
	mov	QWORD PTR -112[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	cmp	QWORD PTR -112[rbp], 0
	je	.L231
	mov	rax, QWORD PTR -104[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -88[rbp], rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	call	_ZSt10_ConstructIfJEEvPT_DpOT0_
	add	QWORD PTR -104[rbp], 4
	mov	rax, QWORD PTR -112[rbp]
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -104[rbp]
	mov	QWORD PTR -96[rbp], rax
	mov	QWORD PTR -80[rbp], rdx
	mov	rax, QWORD PTR -88[rbp]
	mov	QWORD PTR -72[rbp], rax
	nop
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	_ZSt17__size_to_integerm
	mov	rdx, QWORD PTR -96[rbp]
	mov	QWORD PTR -64[rbp], rdx
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR -48[rbp], rax
	cmp	QWORD PTR -56[rbp], 0
	jne	.L234
	mov	rax, QWORD PTR -64[rbp]
	jmp	.L235
.L234:
	mov	rax, QWORD PTR -56[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -64[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	QWORD PTR -40[rbp], rax
	mov	QWORD PTR -32[rbp], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt9__fill_a1IPffEvT_S1_RKT0_
	nop
	mov	rax, QWORD PTR -56[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rdx
.L235:
	nop
	mov	QWORD PTR -104[rbp], rax
.L231:
	mov	rax, QWORD PTR -104[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L238
	call	__stack_chk_fail@PLT
.L238:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2175:
	.size	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPfmEET_S3_T0_, .-_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPfmEET_S3_T0_
	.section	.text._ZNSt15__new_allocatorIhE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorIhE8allocateEmPKv,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIhE8allocateEmPKv
	.type	_ZNSt15__new_allocatorIhE8allocateEmPKv, @function
_ZNSt15__new_allocatorIhE8allocateEmPKv:
.LFB2179:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	movabs	rax, 9223372036854775807
	cmp	rax, QWORD PTR -32[rbp]
	setb	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L241
	call	_ZSt17__throw_bad_allocv@PLT
.L241:
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2179:
	.size	_ZNSt15__new_allocatorIhE8allocateEmPKv, .-_ZNSt15__new_allocatorIhE8allocateEmPKv
	.section	.text._ZSt10_ConstructIhJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIhJEEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructIhJEEvPT_DpOT0_
	.type	_ZSt10_ConstructIhJEEvPT_DpOT0_, @function
_ZSt10_ConstructIhJEEvPT_DpOT0_:
.LFB2189:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 24
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	rbx, QWORD PTR -24[rbp]
	mov	rsi, rbx
	mov	edi, 1
	call	_ZnwmPv
	mov	BYTE PTR [rax], 0
	mov	edx, 0
	test	dl, dl
	je	.L244
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZdlPvS_
.L244:
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2189:
	.size	_ZSt10_ConstructIhJEEvPT_DpOT0_, .-_ZSt10_ConstructIhJEEvPT_DpOT0_
	.section	.text._ZNSt15__new_allocatorIfE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorIfE8allocateEmPKv,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIfE8allocateEmPKv
	.type	_ZNSt15__new_allocatorIfE8allocateEmPKv, @function
_ZNSt15__new_allocatorIfE8allocateEmPKv:
.LFB2192:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	movabs	rax, 2305843009213693951
	cmp	rax, QWORD PTR -32[rbp]
	setb	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L247
	movabs	rax, 4611686018427387903
	cmp	rax, QWORD PTR -32[rbp]
	jnb	.L248
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L248:
	call	_ZSt17__throw_bad_allocv@PLT
.L247:
	mov	rax, QWORD PTR -32[rbp]
	sal	rax, 2
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2192:
	.size	_ZNSt15__new_allocatorIfE8allocateEmPKv, .-_ZNSt15__new_allocatorIfE8allocateEmPKv
	.section	.text._ZSt10_ConstructIfJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIfJEEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructIfJEEvPT_DpOT0_
	.type	_ZSt10_ConstructIfJEEvPT_DpOT0_, @function
_ZSt10_ConstructIfJEEvPT_DpOT0_:
.LFB2194:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 24
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	rbx, QWORD PTR -24[rbp]
	mov	rsi, rbx
	mov	edi, 4
	call	_ZnwmPv
	pxor	xmm0, xmm0
	movss	DWORD PTR [rax], xmm0
	mov	edx, 0
	test	dl, dl
	je	.L251
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZdlPvS_
.L251:
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2194:
	.size	_ZSt10_ConstructIfJEEvPT_DpOT0_, .-_ZSt10_ConstructIfJEEvPT_DpOT0_
	.section	.text._ZSt9__fill_a1IhhEN9__gnu_cxx11__enable_ifIXaasrSt9__is_byteIT_E7__valueoosrSt10__are_sameIS3_T0_E7__valuesrSt20__memcpyable_integerIS6_E7__widthEvE6__typeEPS3_SC_RKS6_,"axG",@progbits,_ZSt9__fill_a1IhhEN9__gnu_cxx11__enable_ifIXaasrSt9__is_byteIT_E7__valueoosrSt10__are_sameIS3_T0_E7__valuesrSt20__memcpyable_integerIS6_E7__widthEvE6__typeEPS3_SC_RKS6_,comdat
	.weak	_ZSt9__fill_a1IhhEN9__gnu_cxx11__enable_ifIXaasrSt9__is_byteIT_E7__valueoosrSt10__are_sameIS3_T0_E7__valuesrSt20__memcpyable_integerIS6_E7__widthEvE6__typeEPS3_SC_RKS6_
	.type	_ZSt9__fill_a1IhhEN9__gnu_cxx11__enable_ifIXaasrSt9__is_byteIT_E7__valueoosrSt10__are_sameIS3_T0_E7__valuesrSt20__memcpyable_integerIS6_E7__widthEvE6__typeEPS3_SC_RKS6_, @function
_ZSt9__fill_a1IhhEN9__gnu_cxx11__enable_ifIXaasrSt9__is_byteIT_E7__valueoosrSt10__are_sameIS3_T0_E7__valuesrSt20__memcpyable_integerIS6_E7__widthEvE6__typeEPS3_SC_RKS6_:
.LFB2203:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -9[rbp], al
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L254
	movzx	ecx, BYTE PTR -9[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	memset@PLT
.L254:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2203:
	.size	_ZSt9__fill_a1IhhEN9__gnu_cxx11__enable_ifIXaasrSt9__is_byteIT_E7__valueoosrSt10__are_sameIS3_T0_E7__valuesrSt20__memcpyable_integerIS6_E7__widthEvE6__typeEPS3_SC_RKS6_, .-_ZSt9__fill_a1IhhEN9__gnu_cxx11__enable_ifIXaasrSt9__is_byteIT_E7__valueoosrSt10__are_sameIS3_T0_E7__valuesrSt20__memcpyable_integerIS6_E7__widthEvE6__typeEPS3_SC_RKS6_
	.section	.text._ZSt9__fill_a1IPffEvT_S1_RKT0_,"axG",@progbits,_ZSt9__fill_a1IPffEvT_S1_RKT0_,comdat
	.weak	_ZSt9__fill_a1IPffEvT_S1_RKT0_
	.type	_ZSt9__fill_a1IPffEvT_S1_RKT0_, @function
_ZSt9__fill_a1IPffEvT_S1_RKT0_:
.LFB2204:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	BYTE PTR -5[rbp], 1
	mov	rax, QWORD PTR -40[rbp]
	movss	xmm0, DWORD PTR [rax]
	movss	DWORD PTR -4[rbp], xmm0
	jmp	.L256
.L257:
	mov	rax, QWORD PTR -24[rbp]
	movss	xmm0, DWORD PTR -4[rbp]
	movss	DWORD PTR [rax], xmm0
	add	QWORD PTR -24[rbp], 4
.L256:
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	jne	.L257
	nop
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2204:
	.size	_ZSt9__fill_a1IPffEvT_S1_RKT0_, .-_ZSt9__fill_a1IPffEvT_S1_RKT0_
	.section	.rodata
	.align 4
.LC0:
	.long	1048576000
	.align 4
.LC1:
	.long	1056964608
	.align 4
.LC2:
	.long	1132396544
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
