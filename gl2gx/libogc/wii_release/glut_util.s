	.file	"glut_util.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl __glutWarning
	.type	__glutWarning, @function
__glutWarning:
.LFB2:
	.file 1 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/glut/glut_util.c"
	.loc 1 16 0
.LVL0:
	mflr 0
.LCFI0:
	stwu 1,-128(1)
.LCFI1:
	stmw 30,120(1)
.LCFI2:
	stw 0,132(1)
.LCFI3:
	stw 4,28(1)
	stw 5,32(1)
	stw 6,36(1)
	stw 7,40(1)
	stw 8,44(1)
	stw 9,48(1)
	stw 10,52(1)
	bne- 1,.L2
	.loc 1 16 0
	stfd 1,56(1)
	stfd 2,64(1)
	stfd 3,72(1)
	stfd 4,80(1)
	stfd 5,88(1)
	stfd 6,96(1)
	stfd 7,104(1)
	stfd 8,112(1)
.L2:
	.loc 1 20 0
	lis 9,__glutProgramName@ha
	.loc 1 19 0
	li 0,1
	.loc 1 20 0
	lwz 5,__glutProgramName@l(9)
	lis 31,_impure_ptr@ha
	.loc 1 19 0
	stb 0,8(1)
	li 0,0
	stb 0,9(1)
	addi 0,1,136
	stw 0,12(1)
	addi 0,1,24
	stw 0,16(1)
	.loc 1 20 0
	cmpwi 7,5,0
	.loc 1 16 0
	mr 30,3
	.loc 1 20 0
	lwz 9,_impure_ptr@l(31)
	lwz 3,12(9)
.LVL1:
	bne+ 7,.L3
	lis 9,.LC0@ha
	la 5,.LC0@l(9)
.L3:
	lis 4,.LC1@ha
	la 4,.LC1@l(4)
	crxor 6,6,6
	bl fprintf
	.loc 1 22 0
	lwz 9,_impure_ptr@l(31)
	mr 4,30
	addi 5,1,8
	lwz 3,12(9)
	bl vfprintf
	.loc 1 24 0
	lwz 9,_impure_ptr@l(31)
	lwz 11,12(9)
	lwz 9,8(11)
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,8(11)
	bge+ 7,.L5
	lwz 3,_impure_ptr@l(31)
	lwz 5,12(3)
	lwz 0,8(5)
	lwz 9,24(5)
	cmpw 7,0,9
	blt- 7,.L7
	lwz 9,0(5)
	li 0,10
	stb 0,0(9)
	lwz 3,_impure_ptr@l(31)
	lwz 5,12(3)
	lwz 9,0(5)
	lbz 0,0(9)
	cmpwi 7,0,10
	beq- 7,.L7
	addi 0,9,1
	stw 0,0(5)
	b .L12
.L7:
	li 4,10
	bl __swbuf_r
	b .L12
.L5:
	lwz 9,_impure_ptr@l(31)
	li 0,10
	lwz 9,12(9)
	lwz 9,0(9)
	stb 0,0(9)
	lwz 9,_impure_ptr@l(31)
	lwz 11,12(9)
	lwz 9,0(11)
	addi 9,9,1
	stw 9,0(11)
.L12:
	.loc 1 25 0
	lwz 0,132(1)
	lmw 30,120(1)
.LVL2:
	addi 1,1,128
	mtlr 0
	blr
.LFE2:
	.size	__glutWarning, .-__glutWarning
	.align 2
	.globl __glutFatalUsage
	.type	__glutFatalUsage, @function
__glutFatalUsage:
.LFB5:
	.loc 1 54 0
.LVL3:
	mflr 0
.LCFI4:
	stwu 1,-128(1)
.LCFI5:
	stmw 30,120(1)
.LCFI6:
	stw 0,132(1)
.LCFI7:
	stw 4,28(1)
	stw 5,32(1)
	stw 6,36(1)
	stw 7,40(1)
	stw 8,44(1)
	stw 9,48(1)
	stw 10,52(1)
	bne- 1,.L14
	.loc 1 54 0
	stfd 1,56(1)
	stfd 2,64(1)
	stfd 3,72(1)
	stfd 4,80(1)
	stfd 5,88(1)
	stfd 6,96(1)
	stfd 7,104(1)
	stfd 8,112(1)
.L14:
	.loc 1 58 0
	lis 9,__glutProgramName@ha
	.loc 1 57 0
	li 0,1
	.loc 1 58 0
	lwz 5,__glutProgramName@l(9)
	lis 31,_impure_ptr@ha
	.loc 1 57 0
	stb 0,8(1)
	li 0,0
	stb 0,9(1)
	addi 0,1,136
	stw 0,12(1)
	addi 0,1,24
	stw 0,16(1)
	.loc 1 58 0
	cmpwi 7,5,0
	.loc 1 54 0
	mr 30,3
	.loc 1 58 0
	lwz 9,_impure_ptr@l(31)
	lwz 3,12(9)
.LVL4:
	bne+ 7,.L15
	lis 9,.LC0@ha
	la 5,.LC0@l(9)
.L15:
	lis 4,.LC2@ha
	la 4,.LC2@l(4)
	crxor 6,6,6
	bl fprintf
	.loc 1 60 0
	lwz 9,_impure_ptr@l(31)
	mr 4,30
	addi 5,1,8
	lwz 3,12(9)
	bl vfprintf
	.loc 1 62 0
	lwz 9,_impure_ptr@l(31)
	lwz 11,12(9)
	lwz 9,8(11)
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,8(11)
	bge+ 7,.L17
	lwz 3,_impure_ptr@l(31)
	lwz 5,12(3)
	lwz 0,8(5)
	lwz 9,24(5)
	cmpw 7,0,9
	blt- 7,.L19
	lwz 9,0(5)
	li 0,10
	stb 0,0(9)
	lwz 3,_impure_ptr@l(31)
	lwz 5,12(3)
	lwz 9,0(5)
	lbz 0,0(9)
	cmpwi 7,0,10
	beq- 7,.L19
	addi 0,9,1
	stw 0,0(5)
	b .L23
.L19:
	li 4,10
	bl __swbuf_r
	b .L23
.L17:
	lwz 9,_impure_ptr@l(31)
	li 0,10
	lwz 9,12(9)
	lwz 9,0(9)
	stb 0,0(9)
	lwz 9,_impure_ptr@l(31)
	lwz 11,12(9)
	lwz 9,0(11)
	addi 9,9,1
	stw 9,0(11)
.L23:
	.loc 1 63 0
	bl abort
.LFE5:
	.size	__glutFatalUsage, .-__glutFatalUsage
	.align 2
	.globl __glutFatalError
	.type	__glutFatalError, @function
__glutFatalError:
.LFB4:
	.loc 1 40 0
.LVL5:
	mflr 0
.LCFI8:
	stwu 1,-128(1)
.LCFI9:
	stmw 30,120(1)
.LCFI10:
	stw 0,132(1)
.LCFI11:
	stw 4,28(1)
	stw 5,32(1)
	stw 6,36(1)
	stw 7,40(1)
	stw 8,44(1)
	stw 9,48(1)
	stw 10,52(1)
	bne- 1,.L26
	.loc 1 40 0
	stfd 1,56(1)
	stfd 2,64(1)
	stfd 3,72(1)
	stfd 4,80(1)
	stfd 5,88(1)
	stfd 6,96(1)
	stfd 7,104(1)
	stfd 8,112(1)
.L26:
	.loc 1 44 0
	lis 9,__glutProgramName@ha
	.loc 1 43 0
	li 0,1
	.loc 1 44 0
	lwz 5,__glutProgramName@l(9)
	lis 31,_impure_ptr@ha
	.loc 1 43 0
	stb 0,8(1)
	li 0,0
	stb 0,9(1)
	addi 0,1,136
	stw 0,12(1)
	addi 0,1,24
	stw 0,16(1)
	.loc 1 44 0
	cmpwi 7,5,0
	.loc 1 40 0
	mr 30,3
	.loc 1 44 0
	lwz 9,_impure_ptr@l(31)
	lwz 3,12(9)
.LVL6:
	bne+ 7,.L27
	lis 9,.LC0@ha
	la 5,.LC0@l(9)
.L27:
	lis 4,.LC3@ha
	la 4,.LC3@l(4)
	crxor 6,6,6
	bl fprintf
	.loc 1 46 0
	lwz 9,_impure_ptr@l(31)
	mr 4,30
	addi 5,1,8
	lwz 3,12(9)
	bl vfprintf
	.loc 1 48 0
	lwz 9,_impure_ptr@l(31)
	lwz 11,12(9)
	lwz 9,8(11)
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,8(11)
	bge+ 7,.L29
	lwz 3,_impure_ptr@l(31)
	lwz 5,12(3)
	lwz 0,8(5)
	lwz 9,24(5)
	cmpw 7,0,9
	blt- 7,.L31
	lwz 9,0(5)
	li 0,10
	stb 0,0(9)
	lwz 3,_impure_ptr@l(31)
	lwz 5,12(3)
	lwz 9,0(5)
	lbz 0,0(9)
	cmpwi 7,0,10
	beq- 7,.L31
	addi 0,9,1
	stw 0,0(5)
	b .L35
.L31:
	li 4,10
	bl __swbuf_r
	b .L35
.L29:
	lwz 9,_impure_ptr@l(31)
	li 0,10
	lwz 9,12(9)
	lwz 9,0(9)
	stb 0,0(9)
	lwz 9,_impure_ptr@l(31)
	lwz 11,12(9)
	lwz 9,0(11)
	addi 9,9,1
	stw 9,0(11)
.L35:
	.loc 1 49 0
	li 3,1
	bl exit
.LFE4:
	.size	__glutFatalError, .-__glutFatalError
	.align 2
	.globl glutReportErrors
	.type	glutReportErrors, @function
glutReportErrors:
.LFB3:
	.loc 1 30 0
	stwu 1,-16(1)
.LCFI12:
	mflr 0
.LCFI13:
	.loc 1 34 0
	lis 9,.LC4@ha
	.loc 1 30 0
	stw 31,12(1)
.LCFI14:
	.loc 1 34 0
	la 31,.LC4@l(9)
	.loc 1 30 0
	stw 0,20(1)
.LCFI15:
	b .L38
.L39:
	.loc 1 34 0
	bl gluErrorString
	mr 4,3
	mr 3,31
	crxor 6,6,6
	bl __glutWarning
.L38:
	.loc 1 33 0
	bl glGetError
	cmpwi 7,3,0
	bne+ 7,.L39
	.loc 1 35 0
	lwz 0,20(1)
	lwz 31,12(1)
	addi 1,1,16
	mtlr 0
	blr
.LFE3:
	.size	glutReportErrors, .-glutReportErrors
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"(unamed)"
	.zero	3
.LC1:
	.string	"GLUT: Warning in %s: "
	.zero	2
.LC2:
	.string	"GLUT: Fatal API Usage in %s: "
	.zero	2
.LC3:
	.string	"GLUT: Fatal Error in %s: "
	.zero	2
.LC4:
	.string	"GL error: %s"
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.byte	0x41
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.align 2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x80
	.byte	0x4
	.4byte	.LCFI3-.LCFI1
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x80
	.byte	0x4
	.4byte	.LCFI7-.LCFI5
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI9-.LFB4
	.byte	0xe
	.uleb128 0x80
	.byte	0x4
	.4byte	.LCFI11-.LCFI9
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI12-.LFB3
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI14-.LCFI12
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE6:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/machine/_types.h"
	.file 3 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/lock.h"
	.file 4 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h"
	.file 5 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/_types.h"
	.file 6 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/reent.h"
	.file 7 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stdarg.h"
	.file 8 "<built-in>"
	.file 9 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/include/GL/gl.h"
	.file 10 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/glut/glutint.h"
	.section	.debug_info
	.4byte	0xaa5
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x1
	.4byte	.LASF133
	.4byte	.LASF134
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0xa
	.4byte	0x56
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0x7
	.4byte	0x4f
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x4
	.2byte	0x163
	.4byte	0x25
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.byte	0x47
	.4byte	0xa5
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x5
	.byte	0x48
	.4byte	0x7a
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x5
	.byte	0x49
	.4byte	0xa5
	.byte	0x0
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0xb5
	.uleb128 0x9
	.4byte	0xb5
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.byte	0x44
	.4byte	0xdd
	.uleb128 0xc
	.4byte	.LASF13
	.byte	0x5
	.byte	0x45
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF14
	.byte	0x5
	.byte	0x4a
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x5
	.byte	0x4b
	.4byte	0xb8
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x5
	.byte	0x4f
	.4byte	0x6f
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x6
	.byte	0x15
	.4byte	0x100
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x18
	.byte	0x6
	.byte	0x2d
	.4byte	0x166
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x6
	.byte	0x2e
	.4byte	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"_k"
	.byte	0x6
	.byte	0x2f
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x6
	.byte	0x2f
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x6
	.byte	0x2f
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x6
	.byte	0x2f
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"_x"
	.byte	0x6
	.byte	0x30
	.4byte	0x16c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x107
	.uleb128 0x8
	.4byte	0xf5
	.4byte	0x17c
	.uleb128 0x9
	.4byte	0xb5
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x24
	.byte	0x6
	.byte	0x35
	.4byte	0x207
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x36
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x37
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x6
	.byte	0x38
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x6
	.byte	0x39
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x6
	.byte	0x3a
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3b
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3c
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3d
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3e
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF34
	.2byte	0x108
	.byte	0x6
	.byte	0x47
	.4byte	0x250
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x48
	.4byte	0x250
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x49
	.4byte	0x250
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x4b
	.4byte	0xf5
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0x4e
	.4byte	0xf5
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.byte	0x0
	.uleb128 0x8
	.4byte	0xf3
	.4byte	0x260
	.uleb128 0x9
	.4byte	0xb5
	.byte	0x1f
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF39
	.2byte	0x190
	.byte	0x6
	.byte	0x59
	.4byte	0x2a7
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x6
	.byte	0x5a
	.4byte	0x2a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0x5b
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x6
	.byte	0x5d
	.4byte	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x5e
	.4byte	0x207
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x260
	.uleb128 0x8
	.4byte	0x2bf
	.4byte	0x2bd
	.uleb128 0x9
	.4byte	0xb5
	.byte	0x1f
	.byte	0x0
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2bd
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x8
	.byte	0x6
	.byte	0x69
	.4byte	0x2ee
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x6
	.byte	0x6a
	.4byte	0x2ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x6
	.byte	0x6b
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x3a
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x68
	.byte	0x6
	.byte	0xa9
	.4byte	0x44e
	.uleb128 0xf
	.string	"_p"
	.byte	0x6
	.byte	0xaa
	.4byte	0x2ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"_r"
	.byte	0x6
	.byte	0xab
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"_w"
	.byte	0x6
	.byte	0xac
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x6
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x6
	.byte	0xae
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xf
	.string	"_bf"
	.byte	0x6
	.byte	0xaf
	.4byte	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x6
	.byte	0xb0
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x6
	.byte	0xb7
	.4byte	0xf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x6
	.byte	0xb9
	.4byte	0x5dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0xbb
	.4byte	0x60d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0xbd
	.4byte	0x632
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0xbe
	.4byte	0x64d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"_ub"
	.byte	0x6
	.byte	0xc1
	.4byte	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"_up"
	.byte	0x6
	.byte	0xc2
	.4byte	0x2ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"_ur"
	.byte	0x6
	.byte	0xc3
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xc6
	.4byte	0x653
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xc7
	.4byte	0x663
	.byte	0x2
	.byte	0x23
	.uleb128 0x43
	.uleb128 0xf
	.string	"_lb"
	.byte	0x6
	.byte	0xca
	.4byte	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0xcd
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x6
	.byte	0xce
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x6
	.byte	0xd1
	.4byte	0x46d
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x6
	.byte	0xd5
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd7
	.4byte	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x6
	.byte	0xd8
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.byte	0x0
	.uleb128 0x13
	.byte	0x1
	.4byte	0x4f
	.4byte	0x46d
	.uleb128 0x14
	.4byte	0x46d
	.uleb128 0x14
	.4byte	0xf3
	.uleb128 0x14
	.4byte	0x5d0
	.uleb128 0x14
	.4byte	0x4f
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x473
	.uleb128 0x11
	.4byte	.LASF62
	.2byte	0x428
	.byte	0x6
	.byte	0x25
	.4byte	0x5d0
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x245
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x24a
	.4byte	0x6c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x24a
	.4byte	0x6c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x24a
	.4byte	0x6c0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x24c
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x24d
	.4byte	0x8db
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x24f
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x250
	.4byte	0x602
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x252
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x254
	.4byte	0x8f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x257
	.4byte	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x258
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x259
	.4byte	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x25a
	.4byte	0x8fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x25d
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x25e
	.4byte	0x5d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x281
	.4byte	0x8b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x284
	.4byte	0x2a7
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x285
	.4byte	0x260
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x288
	.4byte	0x90f
	.byte	0x3
	.byte	0x23
	.uleb128 0x2dc
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x28d
	.4byte	0x67f
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x28e
	.4byte	0x91b
	.byte	0x3
	.byte	0x23
	.uleb128 0x2ec
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x5d6
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF84
	.uleb128 0x10
	.byte	0x4
	.4byte	0x44e
	.uleb128 0x13
	.byte	0x1
	.4byte	0x4f
	.4byte	0x602
	.uleb128 0x14
	.4byte	0x46d
	.uleb128 0x14
	.4byte	0xf3
	.uleb128 0x14
	.4byte	0x602
	.uleb128 0x14
	.4byte	0x4f
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x608
	.uleb128 0x16
	.4byte	0x5d6
	.uleb128 0x10
	.byte	0x4
	.4byte	0x5e3
	.uleb128 0x13
	.byte	0x1
	.4byte	0x64
	.4byte	0x632
	.uleb128 0x14
	.4byte	0x46d
	.uleb128 0x14
	.4byte	0xf3
	.uleb128 0x14
	.4byte	0x64
	.uleb128 0x14
	.4byte	0x4f
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x613
	.uleb128 0x13
	.byte	0x1
	.4byte	0x4f
	.4byte	0x64d
	.uleb128 0x14
	.4byte	0x46d
	.uleb128 0x14
	.4byte	0xf3
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x638
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0x663
	.uleb128 0x9
	.4byte	0xb5
	.byte	0x2
	.byte	0x0
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0x673
	.uleb128 0x9
	.4byte	0xb5
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x111
	.4byte	0x2f4
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0xc
	.byte	0x6
	.2byte	0x116
	.4byte	0x6ba
	.uleb128 0x15
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x117
	.4byte	0x6ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x118
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x119
	.4byte	0x6c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x67f
	.uleb128 0x10
	.byte	0x4
	.4byte	0x673
	.uleb128 0x17
	.4byte	.LASF89
	.byte	0xe
	.byte	0x6
	.2byte	0x131
	.4byte	0x701
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x132
	.4byte	0x701
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x133
	.4byte	0x701
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x134
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x8
	.4byte	0x48
	.4byte	0x711
	.uleb128 0x9
	.4byte	0xb5
	.byte	0x2
	.byte	0x0
	.uleb128 0x18
	.byte	0xd0
	.byte	0x6
	.2byte	0x263
	.4byte	0x841
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x264
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x265
	.4byte	0x5d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x266
	.4byte	0x841
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x267
	.4byte	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x268
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x269
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x26a
	.4byte	0x6c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x26b
	.4byte	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x26c
	.4byte	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x26d
	.4byte	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x26e
	.4byte	0x851
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x26f
	.4byte	0x861
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x270
	.4byte	0x4f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x271
	.4byte	0xdd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x272
	.4byte	0xdd
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x273
	.4byte	0xdd
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x274
	.4byte	0xdd
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x275
	.4byte	0xdd
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x276
	.4byte	0x4f
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x8
	.4byte	0x5d6
	.4byte	0x851
	.uleb128 0x9
	.4byte	0xb5
	.byte	0x19
	.byte	0x0
	.uleb128 0x8
	.4byte	0x5d6
	.4byte	0x861
	.uleb128 0x9
	.4byte	0xb5
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.4byte	0x5d6
	.4byte	0x871
	.uleb128 0x9
	.4byte	0xb5
	.byte	0x17
	.byte	0x0
	.uleb128 0x18
	.byte	0xf0
	.byte	0x6
	.2byte	0x27c
	.4byte	0x899
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x27e
	.4byte	0x899
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x27f
	.4byte	0x8a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0x0
	.uleb128 0x8
	.4byte	0x2ee
	.4byte	0x8a9
	.uleb128 0x9
	.4byte	0xb5
	.byte	0x1d
	.byte	0x0
	.uleb128 0x8
	.4byte	0x25
	.4byte	0x8b9
	.uleb128 0x9
	.4byte	0xb5
	.byte	0x1d
	.byte	0x0
	.uleb128 0x19
	.byte	0xf0
	.byte	0x6
	.2byte	0x261
	.4byte	0x8db
	.uleb128 0x1a
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x277
	.4byte	0x711
	.uleb128 0x1a
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x280
	.4byte	0x871
	.byte	0x0
	.uleb128 0x8
	.4byte	0x5d6
	.4byte	0x8eb
	.uleb128 0x9
	.4byte	0xb5
	.byte	0x18
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x8f7
	.uleb128 0x14
	.4byte	0x46d
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8eb
	.uleb128 0x10
	.byte	0x4
	.4byte	0x166
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x90f
	.uleb128 0x14
	.4byte	0x4f
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x915
	.uleb128 0x10
	.byte	0x4
	.4byte	0x903
	.uleb128 0x8
	.4byte	0x673
	.4byte	0x92b
	.uleb128 0x9
	.4byte	0xb5
	.byte	0x2
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF115
	.byte	0x7
	.byte	0x2b
	.4byte	0x936
	.uleb128 0x8
	.4byte	0x946
	.4byte	0x946
	.uleb128 0x9
	.4byte	0xb5
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF116
	.byte	0xc
	.byte	0x8
	.byte	0x0
	.4byte	0x999
	.uleb128 0xf
	.string	"gpr"
	.byte	0x8
	.byte	0x0
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"fpr"
	.byte	0x8
	.byte	0x0
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.4byte	.LASF117
	.byte	0x8
	.byte	0x0
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.4byte	.LASF118
	.byte	0x8
	.byte	0x0
	.4byte	0xf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF119
	.byte	0x8
	.byte	0x0
	.4byte	0xf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0x7
	.byte	0x55
	.4byte	0x92b
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0x9
	.byte	0x92
	.4byte	0x25
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF122
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF123
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF124
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST0
	.4byte	0x9f6
	.uleb128 0x1d
	.4byte	.LASF126
	.byte	0x1
	.byte	0xf
	.4byte	0x5d0
	.4byte	.LLST1
	.uleb128 0x1e
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0x1
	.byte	0x11
	.4byte	0x999
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF125
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST2
	.4byte	0xa2f
	.uleb128 0x1d
	.4byte	.LASF126
	.byte	0x1
	.byte	0x35
	.4byte	0x5d0
	.4byte	.LLST3
	.uleb128 0x1e
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0x1
	.byte	0x37
	.4byte	0x999
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF128
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST4
	.4byte	0xa68
	.uleb128 0x1d
	.4byte	.LASF126
	.byte	0x1
	.byte	0x27
	.4byte	0x5d0
	.4byte	.LLST5
	.uleb128 0x1e
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0x1
	.byte	0x29
	.4byte	0x999
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF129
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST6
	.4byte	0xa8d
	.uleb128 0x20
	.4byte	.LASF135
	.byte	0x1
	.byte	0x1f
	.4byte	0x9a4
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF130
	.byte	0x6
	.2byte	0x32c
	.4byte	0x46d
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF131
	.byte	0xa
	.byte	0x40
	.4byte	0x5d0
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x5f
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xaa9
	.4byte	0x9bd
	.string	"__glutWarning"
	.4byte	0x9f6
	.string	"__glutFatalUsage"
	.4byte	0xa2f
	.string	"__glutFatalError"
	.4byte	0xa68
	.string	"glutReportErrors"
	.4byte	0x0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"_dso_handle"
.LASF4:
	.string	"short int"
.LASF35:
	.string	"_fnargs"
.LASF49:
	.string	"_cookie"
.LASF89:
	.string	"_rand48"
.LASF68:
	.string	"_emergency"
.LASF120:
	.string	"va_list"
.LASF80:
	.string	"_atexit0"
.LASF109:
	.string	"_wcrtomb_state"
.LASF110:
	.string	"_wcsrtombs_state"
.LASF7:
	.string	"long long unsigned int"
.LASF48:
	.string	"_lbfsize"
.LASF107:
	.string	"_mbrtowc_state"
.LASF102:
	.string	"_wctomb_state"
.LASF25:
	.string	"__tm_sec"
.LASF53:
	.string	"_close"
.LASF2:
	.string	"signed char"
.LASF54:
	.string	"_ubuf"
.LASF43:
	.string	"_base"
.LASF27:
	.string	"__tm_hour"
.LASF83:
	.string	"__sf"
.LASF34:
	.string	"_on_exit_args"
.LASF124:
	.string	"__glutWarning"
.LASF82:
	.string	"__sglue"
.LASF121:
	.string	"GLenum"
.LASF1:
	.string	"long int"
.LASF46:
	.string	"_flags"
.LASF38:
	.string	"_is_cxa"
.LASF64:
	.string	"_stdin"
.LASF74:
	.string	"_result_k"
.LASF6:
	.string	"long long int"
.LASF123:
	.string	"double"
.LASF78:
	.string	"_cvtbuf"
.LASF57:
	.string	"_offset"
.LASF108:
	.string	"_mbsrtowcs_state"
.LASF133:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/glut/glut_util.c"
.LASF106:
	.string	"_mbrlen_state"
.LASF41:
	.string	"_fns"
.LASF21:
	.string	"_sign"
.LASF130:
	.string	"_impure_ptr"
.LASF66:
	.string	"_stderr"
.LASF23:
	.string	"_Bigint"
.LASF117:
	.string	"reserved"
.LASF50:
	.string	"_read"
.LASF24:
	.string	"__tm"
.LASF12:
	.string	"__wchb"
.LASF65:
	.string	"_stdout"
.LASF77:
	.string	"_cvtlen"
.LASF118:
	.string	"overflow_arg_area"
.LASF18:
	.string	"long unsigned int"
.LASF47:
	.string	"_file"
.LASF40:
	.string	"_ind"
.LASF58:
	.string	"_data"
.LASF129:
	.string	"glutReportErrors"
.LASF87:
	.string	"_niobs"
.LASF5:
	.string	"short unsigned int"
.LASF104:
	.string	"_signal_buf"
.LASF95:
	.string	"_asctime_buf"
.LASF73:
	.string	"_result"
.LASF11:
	.string	"__wch"
.LASF79:
	.string	"_new"
.LASF59:
	.string	"_lock"
.LASF91:
	.string	"_mult"
.LASF51:
	.string	"_write"
.LASF30:
	.string	"__tm_year"
.LASF115:
	.string	"__gnuc_va_list"
.LASF112:
	.string	"_nextf"
.LASF29:
	.string	"__tm_mon"
.LASF39:
	.string	"_atexit"
.LASF71:
	.string	"__sdidinit"
.LASF97:
	.string	"_gamma_signgam"
.LASF10:
	.string	"wint_t"
.LASF134:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\freespace2wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF122:
	.string	"float"
.LASF76:
	.string	"_freelist"
.LASF135:
	.string	"error"
.LASF9:
	.string	"_LOCK_RECURSIVE_T"
.LASF3:
	.string	"unsigned char"
.LASF88:
	.string	"_iobs"
.LASF111:
	.string	"_h_errno"
.LASF16:
	.string	"_flock_t"
.LASF32:
	.string	"__tm_yday"
.LASF42:
	.string	"__sbuf"
.LASF61:
	.string	"_flags2"
.LASF85:
	.string	"__FILE"
.LASF15:
	.string	"_mbstate_t"
.LASF45:
	.string	"__sFILE"
.LASF60:
	.string	"_mbstate"
.LASF98:
	.string	"_rand_next"
.LASF100:
	.string	"_mblen_state"
.LASF67:
	.string	"_inc"
.LASF119:
	.string	"reg_save_area"
.LASF126:
	.string	"format"
.LASF72:
	.string	"__cleanup"
.LASF20:
	.string	"_maxwds"
.LASF132:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF90:
	.string	"_seed"
.LASF13:
	.string	"__count"
.LASF14:
	.string	"__value"
.LASF52:
	.string	"_seek"
.LASF31:
	.string	"__tm_wday"
.LASF8:
	.string	"_fpos_t"
.LASF63:
	.string	"_errno"
.LASF84:
	.string	"char"
.LASF56:
	.string	"_blksize"
.LASF131:
	.string	"__glutProgramName"
.LASF44:
	.string	"_size"
.LASF0:
	.string	"unsigned int"
.LASF37:
	.string	"_fntypes"
.LASF19:
	.string	"_next"
.LASF94:
	.string	"_strtok_last"
.LASF62:
	.string	"_reent"
.LASF92:
	.string	"_add"
.LASF17:
	.string	"__ULong"
.LASF105:
	.string	"_getdate_err"
.LASF125:
	.string	"__glutFatalUsage"
.LASF127:
	.string	"args"
.LASF69:
	.string	"_current_category"
.LASF93:
	.string	"_unused_rand"
.LASF22:
	.string	"_wds"
.LASF86:
	.string	"_glue"
.LASF113:
	.string	"_nmalloc"
.LASF103:
	.string	"_l64a_buf"
.LASF128:
	.string	"__glutFatalError"
.LASF81:
	.string	"_sig_func"
.LASF55:
	.string	"_nbuf"
.LASF114:
	.string	"_unused"
.LASF33:
	.string	"__tm_isdst"
.LASF96:
	.string	"_localtime_buf"
.LASF26:
	.string	"__tm_min"
.LASF99:
	.string	"_r48"
.LASF70:
	.string	"_current_locale"
.LASF101:
	.string	"_mbtowc_state"
.LASF75:
	.string	"_p5s"
.LASF28:
	.string	"__tm_mday"
.LASF116:
	.string	"__va_list_tag"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
