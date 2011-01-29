	.file	"glut_ext.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl __glutIsSupportedByGLX
	.type	__glutIsSupportedByGLX, @function
__glutIsSupportedByGLX:
.LFB3:
	.file 1 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/glut/glut_ext.c"
	.loc 1 51 0
.LVL0:
	.loc 1 87 0
	li 3,0
.LVL1:
	blr
.LFE3:
	.size	__glutIsSupportedByGLX, .-__glutIsSupportedByGLX
	.align 2
	.globl glutExtensionSupported
	.type	glutExtensionSupported, @function
glutExtensionSupported:
.LFB2:
	.loc 1 16 0
.LVL2:
	mflr 0
.LCFI0:
	stwu 1,-24(1)
.LCFI1:
	.loc 1 22 0
	li 4,32
	.loc 1 16 0
	stmw 29,12(1)
.LCFI2:
	mr 29,3
	stw 0,28(1)
.LCFI3:
	.loc 1 22 0
	bl strchr
.LVL3:
	cmpwi 7,3,0
	bne+ 7,.L4
	.loc 1 23 0
	lbz 0,0(29)
	cmpwi 7,0,0
	beq- 7,.L4
	.loc 1 26 0
	lis 31,.LANCHOR0@ha
	lwz 0,.LANCHOR0@l(31)
	cmpwi 7,0,0
	bne+ 7,.L7
	.loc 1 27 0
	li 3,7939
	bl glGetString
	stw 3,.LANCHOR0@l(31)
.L7:
	.loc 1 31 0
	lwz 30,.LANCHOR0@l(31)
.LVL4:
.L18:
	.loc 1 33 0
	mr 4,29
	mr 3,30
	bl strstr
	.loc 1 34 0
	mr. 31,3
	.loc 1 36 0
	mr 3,29
	.loc 1 34 0
	beq- 0,.L4
.LVL5:
	.loc 1 36 0
	bl strlen
.LVL6:
	.loc 1 37 0
	cmpw 7,31,30
	.loc 1 36 0
	add 0,31,3
.LVL7:
	.loc 1 42 0
	mr 30,0
	.loc 1 37 0
	beq- 7,.L11
	lbz 0,-1(31)
.LVL8:
	cmpwi 7,0,32
	bne+ 7,.L18
.LVL9:
.L11:
	.loc 1 38 0
	lbzx 0,31,3
.LVL10:
	cmpwi 7,0,32
	cmpwi 6,0,0
	beq- 7,.L14
	beq- 6,.L14
	b .L18
.LVL11:
.L4:
	.loc 1 43 0
	li 3,0
	b .L16
.L14:
	li 3,1
.L16:
	.loc 1 45 0
	lwz 0,28(1)
	lmw 29,12(1)
.LVL12:
	addi 1,1,24
	mtlr 0
	blr
.LFE2:
	.size	glutExtensionSupported, .-glutExtensionSupported
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	extensions.8973, @object
	.size	extensions.8973, 4
extensions.8973:
	.zero	4
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE2:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/include/GL/gl.h"
	.section	.debug_info
	.4byte	0x13b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x1
	.4byte	.LASF17
	.4byte	.LASF18
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
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.4byte	0x74
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x81
	.uleb128 0x6
	.4byte	0x74
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x2
	.byte	0x99
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa5
	.uleb128 0x6
	.4byte	0x86
	.uleb128 0x5
	.byte	0x4
	.4byte	0x86
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF20
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.4byte	0x4f
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x51
	.4byte	0xdb
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0x1
	.byte	0x32
	.4byte	0x6e
	.4byte	.LLST1
	.byte	0x0
	.uleb128 0xa
	.byte	0x1
	.4byte	.LASF21
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.4byte	0x4f
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST2
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0x1
	.byte	0xf
	.4byte	0x7b
	.4byte	.LLST3
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x1
	.byte	0x12
	.4byte	0x9f
	.4byte	.LLST4
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x13
	.4byte	0xaa
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x13
	.4byte	0xaa
	.4byte	.LLST5
	.uleb128 0xd
	.4byte	.LASF15
	.byte	0x1
	.byte	0x11
	.4byte	0x9f
	.byte	0x5
	.byte	0x3
	.4byte	extensions.8973
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x13f
	.4byte	0xb0
	.string	"__glutIsSupportedByGLX"
	.4byte	0xdb
	.string	"glutExtensionSupported"
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
.LASF6:
	.string	"long long int"
.LASF0:
	.string	"unsigned int"
.LASF14:
	.string	"terminator"
.LASF17:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/glut/glut_ext.c"
.LASF8:
	.string	"long unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF12:
	.string	"extension"
.LASF18:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\freespace2wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF10:
	.string	"float"
.LASF20:
	.string	"__glutIsSupportedByGLX"
.LASF22:
	.string	"where"
.LASF3:
	.string	"unsigned char"
.LASF19:
	.string	"GLubyte"
.LASF9:
	.string	"char"
.LASF16:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF1:
	.string	"long int"
.LASF21:
	.string	"glutExtensionSupported"
.LASF11:
	.string	"double"
.LASF5:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF13:
	.string	"start"
.LASF4:
	.string	"short int"
.LASF15:
	.string	"extensions"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
