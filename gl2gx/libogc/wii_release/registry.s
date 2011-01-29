	.file	"registry.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl gluGetString
	.type	gluGetString, @function
gluGetString:
.LFB2:
	.file 1 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libutil/registry.c"
	.loc 1 52 0
.LVL0:
	.loc 1 54 0
	xoris 0,3,0xfffe
	cmpwi 7,0,-30272
	bne 7,.L2
	lis 9,.LANCHOR0@ha
	la 3,.LANCHOR0@l(9)
.LVL1:
	blr
.LVL2:
.L2:
	.loc 1 56 0
	lis 0,0x1
	ori 0,0,35265
	cmpw 7,3,0
	li 3,0
.LVL3:
	bnelr- 7
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	addi 3,9,4
	.loc 1 60 0
	blr
.LFE2:
	.size	gluGetString, .-gluGetString
	.align 2
	.globl gluCheckExtension
	.type	gluCheckExtension, @function
gluCheckExtension:
.LFB3:
	.loc 1 71 0
.LVL4:
	stwu 1,-24(1)
.LCFI0:
	mflr 0
.LCFI1:
	stmw 28,8(1)
.LCFI2:
	.loc 1 77 0
	mr. 31,4
	.loc 1 71 0
	stw 0,28(1)
.LCFI3:
	.loc 1 71 0
	mr 29,3
	.loc 1 77 0
	beq- 0,.L9
.LVL5:
	.loc 1 79 0
	mr 3,31
	bl strlen
	addi 3,3,1
	bl malloc
	.loc 1 80 0
	mr. 30,3
	beq- 0,.L9
	.loc 1 83 0
	mr 4,31
	mr 31,30
.LVL6:
	bl strcpy
	.loc 1 85 0
	lis 9,.LC0@ha
	la 28,.LC0@l(9)
	b .L12
.LVL7:
.L13:
	.loc 1 86 0
	bl strcmp
.LVL8:
	cmpwi 7,3,0
	bne+ 7,.L12
	li 31,1
.LVL9:
	b .L15
.LVL10:
.L12:
	.loc 1 85 0
	mr 3,31
	mr 4,28
	bl strtok
	li 31,0
	cmpwi 7,3,0
	.loc 1 86 0
	mr 4,29
	.loc 1 85 0
	bne+ 7,.L13
.LVL11:
.L15:
	.loc 1 92 0
	mr 3,30
.LVL12:
	bl free
.LVL13:
	.loc 1 93 0
	mr 3,31
	b .L17
.LVL14:
.L9:
	li 3,0
.LVL15:
.L17:
	.loc 1 94 0
	lwz 0,28(1)
	lmw 28,8(1)
.LVL16:
	addi 1,1,24
	mtlr 0
	blr
.LFE3:
	.size	gluCheckExtension, .-gluCheckExtension
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	versionString, @object
	.size	versionString, 4
versionString:
	.string	"1.3"
	.type	extensionString, @object
	.size	extensionString, 53
extensionString:
	.string	"GLU_EXT_nurbs_tessellator GLU_EXT_object_space_tess "
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	" "
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
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI2-.LCFI0
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9c
	.uleb128 0x4
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
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/include/GL/gl.h"
	.section	.debug_info
	.4byte	0x19f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x1
	.4byte	.LASF27
	.4byte	.LASF28
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x6
	.4byte	.LASF10
	.byte	0x2
	.byte	0x92
	.4byte	0x25
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x2
	.byte	0x93
	.4byte	0x2f
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x2
	.byte	0x99
	.4byte	0x2f
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb0
	.uleb128 0x7
	.4byte	0x91
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF15
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.4byte	0xe0
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x51
	.4byte	0xe0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x33
	.4byte	0x7b
	.4byte	.LLST1
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb0
	.uleb128 0xa
	.byte	0x1
	.4byte	.LASF16
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.4byte	0x86
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST2
	.4byte	0x156
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x46
	.4byte	0xaa
	.4byte	.LLST3
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x46
	.4byte	0xaa
	.4byte	.LLST4
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x48
	.4byte	0x86
	.4byte	.LLST5
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x49
	.4byte	0x67
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x4a
	.4byte	0x67
	.4byte	.LLST6
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x4b
	.4byte	0x67
	.byte	0x0
	.uleb128 0xd
	.4byte	0x91
	.4byte	0x166
	.uleb128 0xe
	.4byte	0x2c
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x2c
	.4byte	0x177
	.byte	0x5
	.byte	0x3
	.4byte	versionString
	.uleb128 0x7
	.4byte	0x156
	.uleb128 0xd
	.4byte	0x91
	.4byte	0x18c
	.uleb128 0xe
	.4byte	0x2c
	.byte	0x34
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0x2d
	.4byte	0x19d
	.byte	0x5
	.byte	0x3
	.4byte	extensionString
	.uleb128 0x7
	.4byte	0x17c
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
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
	.uleb128 0x7
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x35
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1a3
	.4byte	0xb5
	.string	"gluGetString"
	.4byte	0xe6
	.string	"gluCheckExtension"
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
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"unsigned int"
.LASF10:
	.string	"GLenum"
.LASF16:
	.string	"gluCheckExtension"
.LASF7:
	.string	"long unsigned int"
.LASF17:
	.string	"name"
.LASF20:
	.string	"flag"
.LASF23:
	.string	"deleteThis"
.LASF28:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\freespace2wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF27:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libutil/registry.c"
.LASF18:
	.string	"extName"
.LASF21:
	.string	"lookHere"
.LASF24:
	.string	"versionString"
.LASF1:
	.string	"unsigned char"
.LASF12:
	.string	"GLubyte"
.LASF8:
	.string	"char"
.LASF11:
	.string	"GLboolean"
.LASF9:
	.string	"long int"
.LASF6:
	.string	"long long unsigned int"
.LASF19:
	.string	"extString"
.LASF14:
	.string	"double"
.LASF26:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF2:
	.string	"short unsigned int"
.LASF3:
	.string	"signed char"
.LASF15:
	.string	"gluGetString"
.LASF13:
	.string	"float"
.LASF4:
	.string	"short int"
.LASF25:
	.string	"extensionString"
.LASF22:
	.string	"word"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
