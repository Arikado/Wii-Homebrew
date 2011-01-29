	.file	"glut_stroke.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl glutStrokeCharacter
	.type	glutStrokeCharacter, @function
glutStrokeCharacter:
.LFB2:
	.file 1 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/glut/glut_stroke.c"
	.loc 1 13 0
.LVL0:
	.loc 1 20 0
	cmpwi 0,4,0
	.loc 1 13 0
	mflr 0
.LCFI0:
	stwu 1,-32(1)
.LCFI1:
	stmw 27,12(1)
.LCFI2:
	stw 0,36(1)
.LCFI3:
	.loc 1 20 0
	blt- 0,.L12
	lwz 0,4(3)
	cmpw 7,4,0
	bge- 7,.L12
	.loc 1 22 0
	lwz 3,8(3)
.LVL1:
	slwi 4,4,4
.LVL2:
	.loc 1 23 0
	add. 27,4,3
.LVL3:
	beq- 0,.L12
	.loc 1 24 0
	lwzx 28,4,3
.LVL4:
	lwz 29,4(27)
.LVL5:
	b .L6
.LVL6:
.L7:
	.loc 1 26 0
	li 3,3
	bl glBegin
	.loc 1 27 0
	lwz 30,0(29)
	lwz 31,4(29)
	b .L8
.L9:
	.loc 1 29 0
	lfs 1,0(31)
	lfs 2,4(31)
	.loc 1 28 0
	addi 31,31,8
	.loc 1 29 0
	bl glVertex2f
.L8:
	.loc 1 28 0
	cmpwi 7,30,0
	addi 30,30,-1
	bgt+ 7,.L9
	.loc 1 31 0
	bl glEnd
	.loc 1 25 0
	addi 28,28,-1
	addi 29,29,8
.L6:
	cmpwi 7,28,0
	bgt+ 7,.L7
	.loc 1 33 0
	lis 9,.LC0@ha
	lfs 1,12(27)
	lfs 2,.LC0@l(9)
	fmr 3,2
	bl glTranslatef
.LVL7:
.L12:
	.loc 1 35 0
	lwz 0,36(1)
	lmw 27,12(1)
.LVL8:
	addi 1,1,32
	mtlr 0
	blr
.LFE2:
	.size	glutStrokeCharacter, .-glutStrokeCharacter
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	0
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
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI3-.LCFI1
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9c
	.uleb128 0x4
	.byte	0x9b
	.uleb128 0x5
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE0:
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
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/glut/glutstroke.h"
	.section	.debug_info
	.4byte	0x243
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x1
	.4byte	.LASF28
	.4byte	.LASF29
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8b
	.uleb128 0x7
	.4byte	0x7e
	.uleb128 0x8
	.byte	0x8
	.byte	0x2
	.byte	0xa
	.4byte	0xb1
	.uleb128 0x9
	.string	"x"
	.byte	0x2
	.byte	0xb
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"y"
	.byte	0x2
	.byte	0xc
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x2
	.byte	0xd
	.4byte	0x90
	.uleb128 0x8
	.byte	0x8
	.byte	0x2
	.byte	0xf
	.4byte	0xe1
	.uleb128 0xb
	.4byte	.LASF12
	.byte	0x2
	.byte	0x10
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x2
	.byte	0x11
	.4byte	0xe1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe7
	.uleb128 0x7
	.4byte	0xb1
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x2
	.byte	0x12
	.4byte	0xbc
	.uleb128 0x8
	.byte	0x10
	.byte	0x2
	.byte	0x14
	.4byte	0x138
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x2
	.byte	0x15
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x2
	.byte	0x16
	.4byte	0x138
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x2
	.byte	0x17
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x2
	.byte	0x18
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x13e
	.uleb128 0x7
	.4byte	0xec
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x2
	.byte	0x19
	.4byte	0xf7
	.uleb128 0x8
	.byte	0x14
	.byte	0x2
	.byte	0x1b
	.4byte	0x19c
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x2
	.byte	0x1c
	.4byte	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x2
	.byte	0x1d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"ch"
	.byte	0x2
	.byte	0x1e
	.4byte	0x19c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"top"
	.byte	0x2
	.byte	0x1f
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x2
	.byte	0x20
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a2
	.uleb128 0x7
	.4byte	0x143
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x2
	.byte	0x21
	.4byte	0x1b2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x14e
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x2
	.byte	0x23
	.4byte	0x75
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF30
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x1
	.byte	0xc
	.4byte	0x1b8
	.4byte	.LLST1
	.uleb128 0xe
	.string	"c"
	.byte	0x1
	.byte	0xc
	.4byte	0x41
	.4byte	.LLST2
	.uleb128 0xf
	.string	"ch"
	.byte	0x1
	.byte	0xe
	.4byte	0x19c
	.4byte	.LLST3
	.uleb128 0x10
	.4byte	.LASF17
	.byte	0x1
	.byte	0xf
	.4byte	0x138
	.4byte	.LLST4
	.uleb128 0x10
	.4byte	.LASF13
	.byte	0x1
	.byte	0x10
	.4byte	0xe1
	.4byte	.LLST5
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x1
	.byte	0x11
	.4byte	0x1a7
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x12
	.4byte	0x41
	.4byte	.LLST6
	.uleb128 0xf
	.string	"j"
	.byte	0x1
	.byte	0x12
	.4byte	0x41
	.4byte	.LLST7
	.byte	0x0
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
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xf
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x10
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x26
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x247
	.4byte	0x1c3
	.string	"glutStrokeCharacter"
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
.LASF13:
	.string	"coord"
.LASF4:
	.string	"short unsigned int"
.LASF20:
	.string	"StrokeCharRec"
.LASF31:
	.string	"fontinfo"
.LASF25:
	.string	"GLUTstrokeFont"
.LASF30:
	.string	"glutStrokeCharacter"
.LASF14:
	.string	"CoordRec"
.LASF5:
	.string	"float"
.LASF9:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF10:
	.string	"long unsigned int"
.LASF12:
	.string	"num_coords"
.LASF23:
	.string	"bottom"
.LASF6:
	.string	"double"
.LASF28:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/glut/glut_stroke.c"
.LASF26:
	.string	"font"
.LASF18:
	.string	"center"
.LASF0:
	.string	"unsigned int"
.LASF29:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\freespace2wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF11:
	.string	"char"
.LASF24:
	.string	"StrokeFontPtr"
.LASF17:
	.string	"stroke"
.LASF8:
	.string	"long long int"
.LASF27:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF15:
	.string	"StrokeRec"
.LASF21:
	.string	"name"
.LASF19:
	.string	"right"
.LASF3:
	.string	"short int"
.LASF22:
	.string	"num_chars"
.LASF16:
	.string	"num_strokes"
.LASF7:
	.string	"long int"
.LASF2:
	.string	"signed char"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
