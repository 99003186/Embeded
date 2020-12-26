	.cpu cortex-m4
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"swap.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Enter Value of x \000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"Enter Value of y \000"
	.align	2
.LC3:
	.ascii	"\012After Swapping: x = %d, y = %d\000"
	.text
	.align	1
	.global	main
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	ldr	r0, .L3
	bl	printf
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, .L3+4
	bl	scanf
	ldr	r0, .L3+8
	bl	printf
	adds	r3, r7, #4
	mov	r1, r3
	ldr	r0, .L3+4
	bl	scanf
	ldr	r3, [r7, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	str	r3, [r7, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	mov	r1, r3
	ldr	r0, .L3+12
	bl	printf
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L4:
	.align	2
.L3:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	main, .-main
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
