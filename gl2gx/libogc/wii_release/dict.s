	.file	"dict.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl __gl_dictListSearch
	.type	__gl_dictListSearch, @function
__gl_dictListSearch:
.LFB6:
	.file 1 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/dict.c"
	.loc 1 109 0
.LVL0:
	mflr 0
.LCFI0:
	stwu 1,-24(1)
.LCFI1:
	stmw 29,12(1)
.LCFI2:
	mr 30,3
	stw 0,28(1)
.LCFI3:
	.loc 1 109 0
	mr 29,4
	.loc 1 110 0
	mr 31,3
.LVL1:
.L2:
	.loc 1 113 0
	lwz 31,4(31)
	.loc 1 114 0
	mr 4,29
	lwz 0,0(31)
	cmpwi 7,0,0
	mr 5,0
	beq- 7,.L3
.LVL2:
	lwz 0,16(30)
	lwz 3,12(30)
.LVL3:
	mtctr 0
	bctrl
.LVL4:
	cmpwi 7,3,0
	beq+ 7,.L2
.LVL5:
.L3:
	.loc 1 117 0
	lwz 0,28(1)
	mr 3,31
	lmw 29,12(1)
.LVL6:
	addi 1,1,24
	mtlr 0
	blr
.LFE6:
	.size	__gl_dictListSearch, .-__gl_dictListSearch
	.align 2
	.globl __gl_dictListDelete
	.type	__gl_dictListDelete, @function
__gl_dictListDelete:
.LFB5:
	.loc 1 101 0
.LVL7:
	mflr 0
.LCFI4:
	stwu 1,-8(1)
.LCFI5:
	.loc 1 102 0
	lwz 11,4(4)
	.loc 1 104 0
	mr 3,4
.LVL8:
	.loc 1 101 0
	stw 0,12(1)
.LCFI6:
	.loc 1 102 0
	lwz 0,8(4)
	stw 0,8(11)
	.loc 1 103 0
	lwz 9,8(4)
	stw 11,4(9)
	.loc 1 104 0
	bl free
.LVL9:
	.loc 1 105 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE5:
	.size	__gl_dictListDelete, .-__gl_dictListDelete
	.align 2
	.globl __gl_dictListDeleteDict
	.type	__gl_dictListDeleteDict, @function
__gl_dictListDeleteDict:
.LFB3:
	.loc 1 69 0
.LVL10:
	mflr 0
.LCFI7:
	stwu 1,-16(1)
.LCFI8:
	stmw 30,8(1)
.LCFI9:
	mr 30,3
	stw 0,20(1)
.LCFI10:
	.loc 1 72 0
	lwz 31,4(3)
.LVL11:
	b .L10
.LVL12:
.L11:
	.loc 1 73 0
	bl free
.LVL13:
	.loc 1 72 0
	lwz 31,4(31)
.LVL14:
.L10:
	cmpw 7,31,30
	.loc 1 73 0
	mr 3,31
	.loc 1 72 0
	bne+ 7,.L11
.LVL15:
	.loc 1 75 0
	mr 3,30
.LVL16:
	bl free
	.loc 1 76 0
	lwz 0,20(1)
	lmw 30,8(1)
.LVL17:
	addi 1,1,16
	mtlr 0
	blr
.LFE3:
	.size	__gl_dictListDeleteDict, .-__gl_dictListDeleteDict
	.align 2
	.globl __gl_dictListInsertBefore
	.type	__gl_dictListInsertBefore, @function
__gl_dictListInsertBefore:
.LFB4:
	.loc 1 80 0
.LVL18:
	mflr 0
.LCFI11:
	stwu 1,-24(1)
.LCFI12:
	stmw 29,12(1)
.LCFI13:
	mr 30,3
	stw 0,28(1)
.LCFI14:
	mr 31,4
	mr 29,5
.LVL19:
.L16:
	.loc 1 84 0
	lwz 31,8(31)
	.loc 1 85 0
	mr 5,29
	lwz 0,0(31)
	cmpwi 7,0,0
	mr 4,0
	beq- 7,.L17
.LVL20:
	lwz 0,16(30)
	lwz 3,12(30)
	mtctr 0
	bctrl
.LVL21:
	cmpwi 7,3,0
	beq+ 7,.L16
.LVL22:
.L17:
	.loc 1 87 0
	li 3,12
	bl malloc
	.loc 1 88 0
	mr. 9,3
	li 3,0
.LVL23:
	beq- 0,.L21
	.loc 1 91 0
	lwz 0,4(31)
	.loc 1 87 0
	mr 3,9
	.loc 1 90 0
	stw 29,0(9)
	.loc 1 91 0
	stw 0,4(9)
	.loc 1 92 0
	lwz 9,4(31)
	.loc 1 94 0
	stw 3,4(31)
	.loc 1 92 0
	stw 3,8(9)
	.loc 1 93 0
	stw 31,8(3)
.L21:
	.loc 1 97 0
	lwz 0,28(1)
.LVL24:
	lmw 29,12(1)
.LVL25:
	addi 1,1,24
	mtlr 0
	blr
.LFE4:
	.size	__gl_dictListInsertBefore, .-__gl_dictListInsertBefore
	.align 2
	.globl __gl_dictListNewDict
	.type	__gl_dictListNewDict, @function
__gl_dictListNewDict:
.LFB2:
	.loc 1 49 0
.LVL26:
	stwu 1,-16(1)
.LCFI15:
	mflr 0
.LCFI16:
	stmw 30,8(1)
.LCFI17:
	mr 30,3
	.loc 1 50 0
	li 3,20
.LVL27:
	.loc 1 49 0
	stw 0,20(1)
.LCFI18:
	.loc 1 49 0
	mr 31,4
	.loc 1 50 0
	bl malloc
.LVL28:
	.loc 1 53 0
	mr. 0,3
	li 3,0
.LVL29:
	beq- 0,.L27
	.loc 1 50 0
	mr 3,0
	.loc 1 57 0
	li 0,0
	stw 0,0(3)
	.loc 1 61 0
	stw 30,12(3)
	.loc 1 62 0
	stw 31,16(3)
	.loc 1 58 0
	stw 3,4(3)
	.loc 1 59 0
	stw 3,8(3)
.L27:
	.loc 1 65 0
	lwz 0,20(1)
.LVL30:
	lmw 30,8(1)
.LVL31:
	addi 1,1,16
	mtlr 0
	blr
.LFE2:
	.size	__gl_dictListNewDict, .-__gl_dictListNewDict
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI1-.LFB6
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
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI8-.LFB3
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI12-.LFB4
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
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
	.4byte	.LCFI14-.LCFI13
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI15-.LFB2
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI17-.LCFI15
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE8:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE6-.Ltext0
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
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/dict-list.h"
	.section	.debug_info
	.4byte	0x296
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x1
	.4byte	.LASF26
	.4byte	.LASF27
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x2
	.byte	0x43
	.4byte	0x45
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x44
	.4byte	0x52
	.uleb128 0x6
	.4byte	.LASF3
	.byte	0x14
	.byte	0x2
	.byte	0x44
	.4byte	0x89
	.uleb128 0x7
	.4byte	.LASF4
	.byte	0x2
	.byte	0x66
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x67
	.4byte	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"leq"
	.byte	0x2
	.byte	0x68
	.4byte	0xeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x45
	.4byte	0x94
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0xc
	.byte	0x2
	.byte	0x45
	.4byte	0xcb
	.uleb128 0x8
	.string	"key"
	.byte	0x2
	.byte	0x60
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x61
	.4byte	0xcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x62
	.4byte	0xcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x89
	.uleb128 0xa
	.byte	0x1
	.4byte	0x25
	.4byte	0xeb
	.uleb128 0xb
	.4byte	0x45
	.uleb128 0xb
	.4byte	0x3a
	.uleb128 0xb
	.4byte	0x3a
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xd1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF21
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0xcb
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST0
	.4byte	0x177
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x6c
	.4byte	0x177
	.4byte	.LLST1
	.uleb128 0xf
	.string	"key"
	.byte	0x1
	.byte	0x6c
	.4byte	0x3a
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LASF18
	.byte	0x1
	.byte	0x6e
	.4byte	0xcb
	.4byte	.LLST3
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x47
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF19
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST4
	.4byte	0x1b5
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x64
	.4byte	0x177
	.4byte	.LLST5
	.uleb128 0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0x64
	.4byte	0xcb
	.4byte	.LLST6
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF20
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST7
	.4byte	0x1ed
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x44
	.4byte	0x177
	.4byte	.LLST8
	.uleb128 0x10
	.4byte	.LASF18
	.byte	0x1
	.byte	0x46
	.4byte	0xcb
	.4byte	.LLST9
	.byte	0x0
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF22
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.4byte	0xcb
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST10
	.4byte	0x247
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x4f
	.4byte	0x177
	.4byte	.LLST11
	.uleb128 0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0x4f
	.4byte	0xcb
	.4byte	.LLST12
	.uleb128 0xf
	.string	"key"
	.byte	0x1
	.byte	0x4f
	.4byte	0x3a
	.4byte	.LLST13
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x1
	.byte	0x51
	.4byte	0xcb
	.4byte	.LLST14
	.byte	0x0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF24
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.4byte	0x177
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST15
	.uleb128 0xe
	.4byte	.LASF5
	.byte	0x1
	.byte	0x2f
	.4byte	0x45
	.4byte	.LLST16
	.uleb128 0xf
	.string	"leq"
	.byte	0x1
	.byte	0x2f
	.4byte	0xeb
	.4byte	.LLST17
	.uleb128 0x10
	.4byte	.LASF17
	.byte	0x1
	.byte	0x32
	.4byte	0x177
	.4byte	.LLST18
	.uleb128 0x13
	.4byte	.LASF4
	.byte	0x1
	.byte	0x33
	.4byte	0xcb
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x12
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
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x91
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x29a
	.4byte	0x12c
	.string	"__gl_dictListSearch"
	.4byte	0x17d
	.string	"__gl_dictListDelete"
	.4byte	0x1b5
	.string	"__gl_dictListDeleteDict"
	.4byte	0x1ed
	.string	"__gl_dictListInsertBefore"
	.4byte	0x247
	.string	"__gl_dictListNewDict"
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
.LASF7:
	.string	"next"
.LASF20:
	.string	"__gl_dictListDeleteDict"
.LASF17:
	.string	"dict"
.LASF24:
	.string	"__gl_dictListNewDict"
.LASF22:
	.string	"__gl_dictListInsertBefore"
.LASF10:
	.string	"unsigned char"
.LASF23:
	.string	"newNode"
.LASF15:
	.string	"long unsigned int"
.LASF12:
	.string	"short unsigned int"
.LASF6:
	.string	"DictListNode"
.LASF26:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/dict.c"
.LASF4:
	.string	"head"
.LASF0:
	.string	"unsigned int"
.LASF27:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\freespace2wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF14:
	.string	"long long unsigned int"
.LASF3:
	.string	"DictList"
.LASF19:
	.string	"__gl_dictListDelete"
.LASF21:
	.string	"__gl_dictListSearch"
.LASF13:
	.string	"long long int"
.LASF25:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF16:
	.string	"char"
.LASF11:
	.string	"short int"
.LASF18:
	.string	"node"
.LASF1:
	.string	"long int"
.LASF5:
	.string	"frame"
.LASF9:
	.string	"signed char"
.LASF2:
	.string	"DictListKey"
.LASF8:
	.string	"prev"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
