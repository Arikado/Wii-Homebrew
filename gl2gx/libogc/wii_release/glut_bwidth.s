	.file	"glut_bwidth.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl glutBitmapWidth
	.type	glutBitmapWidth, @function
glutBitmapWidth:
.LFB2:
	.file 1 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/glut/glut_bwidth.c"
	.loc 1 13 0
.LVL0:
	stwu 1,-16(1)
.LCFI0:
	.loc 1 17 0
	lwz 9,8(3)
	cmpw 7,4,9
	blt- 7,.L2
	lwz 0,4(3)
	add 0,9,0
	cmpw 7,4,0
	bge- 7,.L2
	.loc 1 19 0
	subf 0,9,4
	lwz 9,12(3)
	slwi 0,0,2
	lwzx 3,9,0
.LVL1:
	.loc 1 20 0
	cmpwi 7,3,0
	beq- 7,.L2
	.loc 1 21 0
	lfs 0,16(3)
	addi 9,1,8
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL2:
	b .L6
.LVL3:
.L2:
	li 3,0
.LVL4:
.L6:
	.loc 1 24 0
	addi 1,1,16
	blr
.LFE2:
	.size	glutBitmapWidth, .-glutBitmapWidth
	.align 2
	.globl glutBitmapLength
	.type	glutBitmapLength, @function
glutBitmapLength:
.LFB3:
	.loc 1 28 0
.LVL5:
	.loc 1 39 0
	lis 9,.LC1@ha
	.loc 1 28 0
	stwu 1,-24(1)
.LCFI1:
	.loc 1 39 0
	lfs 11,.LC1@l(9)
	.loc 1 30 0
	li 8,0
.LVL6:
	b .L17
.LVL7:
.L10:
	.loc 1 36 0
	lwz 9,8(3)
.LVL8:
	cmpw 7,11,9
	.loc 1 37 0
	subf 0,9,11
	slwi 10,0,2
	.loc 1 36 0
	blt- 7,.L11
	lwz 0,4(3)
	add 0,9,0
	cmpw 7,11,0
	blt- 7,.L17
.L11:
	.loc 1 37 0
	lwz 9,12(3)
	lwzx 9,10,9
.LVL9:
	.loc 1 38 0
	cmpwi 7,9,0
	beq- 7,.L17
	.loc 1 39 0
	lis 0,0x4330
	stw 7,12(1)
	stw 0,8(1)
	fmr 13,11
	lfd 0,8(1)
	lfs 12,16(9)
	addi 9,1,16
.LVL10:
	fsub 0,0,13
	frsp 0,0
	fadds 0,0,12
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 8,16(1)
.LVL11:
.L17:
	.loc 1 34 0
	lbz 11,0(4)
	.loc 1 39 0
	xoris 7,8,0x8000
	.loc 1 34 0
	addi 4,4,1
	cmpwi 7,11,0
	bne+ 7,.L10
	.loc 1 43 0
	mr 3,8
.LVL12:
	addi 1,1,24
	blr
.LFE3:
	.size	glutBitmapLength, .-glutBitmapLength
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	1501560836
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
	.4byte	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI1-.LFB3
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE2:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/include/GL/gl.h"
	.file 3 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/glut/glutbitmap.h"
	.section	.debug_info
	.4byte	0x267
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x1
	.4byte	.LASF34
	.4byte	.LASF35
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
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x99
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x9c
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x9d
	.4byte	0x70
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	0x65
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x5
	.4byte	0xa4
	.uleb128 0x5
	.4byte	0x5a
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc1
	.uleb128 0x5
	.4byte	0x48
	.uleb128 0x9
	.byte	0x18
	.byte	0x3
	.byte	0xc
	.4byte	0x123
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x3
	.byte	0xd
	.4byte	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x3
	.byte	0xe
	.4byte	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x3
	.byte	0xf
	.4byte	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x3
	.byte	0x10
	.4byte	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x3
	.byte	0x11
	.4byte	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x3
	.byte	0x12
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x3
	.byte	0x13
	.4byte	0xc6
	.uleb128 0x9
	.byte	0x10
	.byte	0x3
	.byte	0x15
	.4byte	0x16e
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x3
	.byte	0x16
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x3
	.byte	0x17
	.4byte	0x16e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x3
	.byte	0x18
	.4byte	0x16e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"ch"
	.byte	0x3
	.byte	0x19
	.4byte	0x173
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x5
	.4byte	0x41
	.uleb128 0x8
	.byte	0x4
	.4byte	0x179
	.uleb128 0x5
	.4byte	0x17e
	.uleb128 0x8
	.byte	0x4
	.4byte	0x184
	.uleb128 0x5
	.4byte	0x123
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x3
	.byte	0x1a
	.4byte	0x194
	.uleb128 0x8
	.byte	0x4
	.4byte	0x12e
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x3
	.byte	0x1c
	.4byte	0x9b
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF28
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST0
	.4byte	0x1f6
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x1
	.byte	0xc
	.4byte	0x19a
	.4byte	.LLST1
	.uleb128 0xe
	.string	"c"
	.byte	0x1
	.byte	0xc
	.4byte	0x41
	.byte	0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x1
	.byte	0xe
	.4byte	0x189
	.uleb128 0x10
	.string	"ch"
	.byte	0x1
	.byte	0xf
	.4byte	0x17e
	.4byte	.LLST2
	.byte	0x0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF29
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST3
	.4byte	0x25f
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x1
	.byte	0x1b
	.4byte	0x19a
	.4byte	.LLST4
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x1
	.byte	0x1b
	.4byte	0x25f
	.byte	0x1
	.byte	0x54
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x1d
	.4byte	0x41
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0x1d
	.4byte	0x41
	.byte	0x1
	.byte	0x58
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x1
	.byte	0x1e
	.4byte	0x189
	.uleb128 0x10
	.string	"ch"
	.byte	0x1
	.byte	0x1f
	.4byte	0x17e
	.4byte	.LLST5
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x265
	.uleb128 0x5
	.4byte	0x2c
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x37
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x26b
	.4byte	0x1a5
	.string	"glutBitmapWidth"
	.4byte	0x1f6
	.string	"glutBitmapLength"
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
.LASF24:
	.string	"first"
.LASF28:
	.string	"glutBitmapWidth"
.LASF20:
	.string	"bitmap"
.LASF31:
	.string	"fontinfo"
.LASF30:
	.string	"string"
.LASF26:
	.string	"GLUTbitmapFont"
.LASF8:
	.string	"float"
.LASF12:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF6:
	.string	"GLsizei"
.LASF17:
	.string	"xorig"
.LASF13:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF29:
	.string	"glutBitmapLength"
.LASF16:
	.string	"height"
.LASF34:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/glut/glut_bwidth.c"
.LASF9:
	.string	"double"
.LASF21:
	.string	"BitmapCharRec"
.LASF27:
	.string	"font"
.LASF0:
	.string	"unsigned int"
.LASF35:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\freespace2wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF14:
	.string	"char"
.LASF18:
	.string	"yorig"
.LASF11:
	.string	"long long int"
.LASF33:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF22:
	.string	"name"
.LASF15:
	.string	"width"
.LASF3:
	.string	"short int"
.LASF23:
	.string	"num_chars"
.LASF5:
	.string	"GLubyte"
.LASF10:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF19:
	.string	"advance"
.LASF7:
	.string	"GLfloat"
.LASF32:
	.string	"length"
.LASF25:
	.string	"BitmapFontPtr"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
