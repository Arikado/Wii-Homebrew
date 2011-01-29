	.file	"error.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl gluErrorString
	.type	gluErrorString, @function
gluErrorString:
.LFB2:
	.file 1 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libutil/error.c"
	.loc 1 69 0
.LVL0:
	.loc 1 70 0
	cmpwi 0,3,0
	.loc 1 69 0
	mflr 0
.LCFI0:
	stwu 1,-24(1)
.LCFI1:
	stmw 29,12(1)
.LCFI2:
	stw 0,28(1)
.LCFI3:
	.loc 1 70 0
	bne- 0,.L2
	.loc 1 71 0
	lis 9,.LC0@ha
	la 29,.LC0@l(9)
	b .L4
.L2:
	.loc 1 73 0
	addi 0,3,-1280
	cmplwi 7,0,5
	bgt+ 7,.L5
	.loc 1 74 0
	lis 9,.LANCHOR1@ha
	slwi 0,0,2
	la 9,.LANCHOR1@l(9)
	lis 29,.LANCHOR0@ha
	lwzx 6,9,0
	lis 9,glErrFile@ha
	lwz 7,glErrFile@l(9)
	lis 9,glErrLine@ha
	la 29,.LANCHOR0@l(29)
	lwz 8,glErrLine@l(9)
	lis 5,.LC1@ha
	mr 3,29
.LVL1:
	la 5,.LC1@l(5)
	li 4,1024
	crxor 6,6,6
	bl snprintf
	b .L4
.LVL2:
.L5:
	.loc 1 77 0
	xoris 0,3,0xffff
	cmpwi 7,0,-32719
	bne 7,.L7
	.loc 1 78 0
	lis 9,.LC2@ha
	la 29,.LC2@l(9)
	b .L4
.L7:
	.loc 1 80 0
	addis 3,3,0xfffe
.LVL3:
	addi 11,3,30172
	cmplwi 7,11,4
	bgt- 7,.L9
	.loc 1 81 0
	lis 9,.LANCHOR1@ha
	slwi 11,11,2
	la 9,.LANCHOR1@l(9)
	add 11,11,9
	lwz 29,24(11)
	b .L4
.L9:
	.loc 1 83 0
	addi 0,3,30821
	cmplwi 7,0,36
	bgt- 7,.L11
	.loc 1 84 0
	addi 3,3,30822
	bl __gluNURBSErrorString
	b .L16
.L11:
	.loc 1 86 0
	addi 0,3,30921
	li 29,0
	cmplwi 7,0,7
	bgt- 7,.L4
	.loc 1 87 0
	addi 3,3,30922
	bl __gluTessErrorString
.L16:
	mr 29,3
.LVL4:
.L4:
	.loc 1 91 0
	lwz 0,28(1)
	mr 3,29
.LVL5:
	lmw 29,12(1)
	addi 1,1,24
	mtlr 0
	blr
.LFE2:
	.size	gluErrorString, .-gluErrorString
	.section	.rodata
	.align 2
	.set	.LANCHOR1,. + 0
	.type	glErrorStrings, @object
	.size	glErrorStrings, 24
glErrorStrings:
	.long	.LC3
	.long	.LC4
	.long	.LC5
	.long	.LC6
	.long	.LC7
	.long	.LC8
	.type	gluErrorStrings, @object
	.size	gluErrorStrings, 20
gluErrorStrings:
	.long	.LC3
	.long	.LC4
	.long	.LC8
	.long	.LC9
	.long	.LC5
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"no error"
	.zero	3
.LC1:
	.string	"%s at %s - %d"
	.zero	2
.LC2:
	.string	"table too large"
.LC3:
	.string	"invalid enumerant"
	.zero	2
.LC4:
	.string	"invalid value"
	.zero	2
.LC5:
	.string	"invalid operation"
	.zero	2
.LC6:
	.string	"stack overflow"
	.zero	1
.LC7:
	.string	"stack underflow"
.LC8:
	.string	"out of memory"
	.zero	2
.LC9:
	.string	""
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	error_string, @object
	.size	error_string, 1024
error_string:
	.zero	1024
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
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI3-.LCFI1
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9d
	.uleb128 0x3
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
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/include/GL/gl.h"
	.section	.debug_info
	.4byte	0x161
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x1
	.4byte	.LASF20
	.4byte	.LASF21
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.4byte	0x74
	.uleb128 0x6
	.4byte	0x67
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x92
	.4byte	0x25
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x2
	.byte	0x99
	.4byte	0x2f
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x6
	.4byte	0x8b
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF22
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.4byte	0xd6
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST0
	.4byte	0xd6
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x1
	.byte	0x44
	.4byte	0x80
	.4byte	.LLST1
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa4
	.uleb128 0xa
	.4byte	0x6e
	.4byte	0xec
	.uleb128 0xb
	.4byte	0x2c
	.byte	0x5
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF14
	.byte	0x1
	.byte	0x2c
	.4byte	0xfd
	.byte	0x5
	.byte	0x3
	.4byte	glErrorStrings
	.uleb128 0x6
	.4byte	0xdc
	.uleb128 0xa
	.4byte	0x6e
	.4byte	0x112
	.uleb128 0xb
	.4byte	0x2c
	.byte	0x4
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF15
	.byte	0x1
	.byte	0x35
	.4byte	0x123
	.byte	0x5
	.byte	0x3
	.4byte	gluErrorStrings
	.uleb128 0x6
	.4byte	0x102
	.uleb128 0xa
	.4byte	0x67
	.4byte	0x139
	.uleb128 0xd
	.4byte	0x2c
	.2byte	0x3ff
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x41
	.4byte	0x128
	.byte	0x5
	.byte	0x3
	.4byte	error_string
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x3f
	.4byte	0x6e
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0x40
	.4byte	0x4b
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
	.uleb128 0x6
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.4byte	0x21
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x165
	.4byte	0xa9
	.string	"gluErrorString"
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
.LASF18:
	.string	"glErrLine"
.LASF0:
	.string	"unsigned int"
.LASF10:
	.string	"GLenum"
.LASF23:
	.string	"errorCode"
.LASF17:
	.string	"glErrFile"
.LASF7:
	.string	"long unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF21:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\freespace2wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF22:
	.string	"gluErrorString"
.LASF20:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libutil/error.c"
.LASF14:
	.string	"glErrorStrings"
.LASF1:
	.string	"unsigned char"
.LASF11:
	.string	"GLubyte"
.LASF15:
	.string	"gluErrorStrings"
.LASF19:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF9:
	.string	"long int"
.LASF13:
	.string	"double"
.LASF2:
	.string	"short unsigned int"
.LASF16:
	.string	"error_string"
.LASF3:
	.string	"signed char"
.LASF12:
	.string	"float"
.LASF4:
	.string	"short int"
.LASF8:
	.string	"char"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
