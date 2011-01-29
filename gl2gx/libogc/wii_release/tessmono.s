	.file	"tessmono.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl __gl_meshSetWindingNumber
	.type	__gl_meshSetWindingNumber, @function
__gl_meshSetWindingNumber:
.LFB5:
	.file 1 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/tessmono.c"
	.loc 1 188 0
.LVL0:
	mflr 0
.LCFI0:
	stwu 1,-32(1)
.LCFI1:
	mfcr 12
.LCFI2:
	.loc 1 200 0
	cmpwi 4,5,0
	.loc 1 188 0
	stmw 27,12(1)
.LCFI3:
	.loc 1 200 0
	mr 27,5
	.loc 1 188 0
	stw 0,36(1)
.LCFI4:
	mr 30,4
	stw 12,8(1)
.LCFI5:
	.loc 1 191 0
	addi 28,3,88
	.loc 1 196 0
	neg 29,4
	.loc 1 191 0
	lwz 10,88(3)
.LVL1:
	b .L2
.LVL2:
.L3:
	.loc 1 193 0
	lwz 9,4(10)
	lwz 11,20(10)
	lwz 9,20(9)
	lbz 0,21(11)
	lbz 9,21(9)
	.loc 1 196 0
	cmpwi 6,0,0
	.loc 1 192 0
	lwz 31,0(10)
	.loc 1 193 0
	cmpw 7,9,0
	beq- 7,.L4
	.loc 1 196 0
	bne- 6,.L8
	mr 8,29
.LVL3:
.L8:
	stw 8,28(10)
	b .L9
.L4:
	.loc 1 200 0
	bne- 4,.L10
	.loc 1 201 0
	stw 27,28(10)
	b .L9
.L10:
	.loc 1 203 0
	mr 3,10
.LVL4:
	bl __gl_meshDelete
.LVL5:
	cmpwi 7,3,0
	beq- 7,.L13
.LVL6:
.L9:
	mr 10,31
.L2:
	.loc 1 191 0
	cmpw 7,10,28
	.loc 1 196 0
	mr 8,30
	.loc 1 191 0
	bne+ 7,.L3
.LVL7:
	li 3,1
.LVL8:
.L13:
	.loc 1 208 0
	lwz 0,36(1)
	lwz 12,8(1)
	lmw 27,12(1)
.LVL9:
	mtlr 0
	mtcrf 8,12
	addi 1,1,32
	blr
.LFE5:
	.size	__gl_meshSetWindingNumber, .-__gl_meshSetWindingNumber
	.align 2
	.globl __gl_meshDiscardExterior
	.type	__gl_meshDiscardExterior, @function
__gl_meshDiscardExterior:
.LFB4:
	.loc 1 163 0
.LVL10:
	mflr 0
.LCFI6:
	stwu 1,-16(1)
.LCFI7:
	stmw 30,8(1)
.LCFI8:
	.loc 1 167 0
	addi 30,3,64
	.loc 1 163 0
	stw 0,20(1)
.LCFI9:
	.loc 1 167 0
	lwz 9,64(3)
.LVL11:
	b .L17
.LVL12:
.L18:
	.loc 1 170 0
	lbz 0,21(9)
	.loc 1 169 0
	lwz 31,0(9)
	.loc 1 170 0
	cmpwi 7,0,0
	bne+ 7,.L19
	.loc 1 171 0
	mr 3,9
.LVL13:
	bl __gl_meshZapFace
.LVL14:
.L19:
	mr 9,31
.L17:
	.loc 1 167 0
	cmpw 7,9,30
	bne+ 7,.L18
	.loc 1 174 0
	lwz 0,20(1)
	lmw 30,8(1)
.LVL15:
	addi 1,1,16
	mtlr 0
	blr
.LFE4:
	.size	__gl_meshDiscardExterior, .-__gl_meshDiscardExterior
	.align 2
	.globl __gl_meshTessellateMonoRegion
	.type	__gl_meshTessellateMonoRegion, @function
__gl_meshTessellateMonoRegion:
.LFB2:
	.loc 1 80 0
.LVL16:
	mflr 0
.LCFI10:
	stwu 1,-32(1)
.LCFI11:
	stfd 30,16(1)
.LCFI12:
	stfd 31,24(1)
.LCFI13:
	stmw 30,8(1)
.LCFI14:
	stw 0,36(1)
.LCFI15:
	.loc 1 88 0
	lwz 31,8(3)
.LVL17:
	b .L24
.L25:
	.loc 1 91 0
	lwz 9,8(31)
	lwz 31,4(9)
.L24:
	lwz 9,4(31)
	lwz 11,16(31)
	lwz 9,16(9)
	lfd 13,40(11)
	lfd 0,40(9)
	fcmpu 7,0,13
	blt- 7,.L25
	bne- 7,.L67
	lfd 13,48(9)
	lfd 0,48(11)
	fcmpu 7,13,0
	cror 30,28,30
	beq+ 7,.L25
	b .L67
.L30:
	.loc 1 93 0
	lwz 31,12(31)
.L67:
	lwz 9,4(31)
	lwz 11,16(31)
	lwz 9,16(9)
	lfd 13,40(11)
	lfd 0,40(9)
	fcmpu 7,13,0
	blt- 7,.L30
	bne- 7,.L32
	lfd 13,48(11)
	lfd 0,48(9)
	fcmpu 7,13,0
	cror 30,28,30
	beq+ 7,.L30
.L32:
	.loc 1 103 0
	lis 9,.LC0@ha
	.loc 1 95 0
	lwz 11,8(31)
	.loc 1 103 0
	lfd 31,.LC0@l(9)
	.loc 1 95 0
	lwz 30,4(11)
.LVL18:
	.loc 1 112 0
	fmr 30,31
	b .L73
.LVL19:
.L36:
	.loc 1 98 0
	lwz 9,4(31)
	lwz 11,16(30)
	lwz 9,16(9)
	lfd 13,40(11)
	lfd 0,40(9)
	fcmpu 7,0,13
	blt- 7,.L69
	bne- 7,.L70
	lfd 13,48(9)
	lfd 0,48(11)
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L69
	b .L70
.L42:
.LBB5:
	.loc 1 105 0
	lwz 3,12(30)
.LVL20:
	mr 4,30
	bl __gl_meshConnect
	.loc 1 106 0
	cmpwi 0,3,0
.LVL21:
	beq- 0,.L43
	.loc 1 107 0
	lwz 30,4(3)
.LVL22:
.L69:
.LBE5:
	.loc 1 103 0
	lwz 11,12(30)
	cmpw 7,11,31
	beq- 7,.L45
	lwz 9,4(11)
	lwz 11,16(11)
	lwz 9,16(9)
	lfd 13,40(11)
	lfd 0,40(9)
	mr 5,9
	fcmpu 7,0,13
	blt- 7,.L42
	bne- 7,.L48
	lfd 13,48(11)
	lfd 0,48(9)
	fcmpu 7,0,13
	cror 30,28,30
	beq- 7,.L42
.L48:
	lwz 9,4(30)
	lwz 3,16(30)
.LVL23:
	lwz 4,16(9)
	bl __gl_edgeSign
	fcmpu 7,1,30
	cror 30,28,30
	beq+ 7,.L42
.LVL24:
.L45:
	.loc 1 109 0
	lwz 9,8(30)
	lwz 30,4(9)
	b .L73
.LVL25:
.L51:
.LBB6:
	.loc 1 114 0
	lwz 9,8(31)
	mr 3,31
.LVL26:
	lwz 4,4(9)
	bl __gl_meshConnect
	.loc 1 115 0
	cmpwi 0,3,0
.LVL27:
	beq- 0,.L43
	.loc 1 116 0
	lwz 31,4(3)
.LVL28:
.L70:
.LBE6:
	.loc 1 112 0
	lwz 0,12(30)
.LVL29:
	cmpw 7,0,31
	beq- 7,.L55
.LVL30:
	lwz 9,8(31)
	lwz 9,4(9)
	lwz 11,4(9)
	lwz 9,16(9)
	lwz 11,16(11)
	lfd 13,40(9)
	mr 5,9
	lfd 0,40(11)
	fcmpu 7,13,0
	blt- 7,.L51
	bne- 7,.L57
	lfd 13,48(11)
	lfd 0,48(9)
	fcmpu 7,0,13
	cror 30,28,30
	beq- 7,.L51
.L57:
	lwz 9,4(31)
	lwz 4,16(31)
	lwz 3,16(9)
.LVL31:
	bl __gl_edgeSign
	fcmpu 7,1,31
	cror 30,29,30
	beq+ 7,.L51
.LVL32:
.L55:
	.loc 1 118 0
	lwz 31,12(31)
.L73:
	.loc 1 97 0
	lwz 4,12(31)
.LVL33:
	cmpw 7,4,30
	bne+ 7,.L36
.LVL34:
	b .L71
.LVL35:
.L61:
.LBB7:
	.loc 1 127 0
	bl __gl_meshConnect
.LVL36:
	.loc 1 128 0
	cmpwi 0,3,0
.LVL37:
	beq- 0,.L43
	.loc 1 129 0
	lwz 4,4(3)
.LVL38:
.L71:
.LBE7:
	.loc 1 126 0
	lwz 9,12(4)
	lwz 0,12(9)
.LBB8:
	.loc 1 127 0
	mr 3,9
.LVL39:
.LBE8:
	.loc 1 126 0
	cmpw 7,0,31
	bne+ 7,.L61
	li 3,1
	b .L64
.LVL40:
.L43:
	li 3,0
.LVL41:
.L64:
	.loc 1 133 0
	lwz 0,36(1)
	lmw 30,8(1)
.LVL42:
	lfd 30,16(1)
	mtlr 0
	lfd 31,24(1)
	addi 1,1,32
	blr
.LFE2:
	.size	__gl_meshTessellateMonoRegion, .-__gl_meshTessellateMonoRegion
	.align 2
	.globl __gl_meshTessellateInterior
	.type	__gl_meshTessellateInterior, @function
__gl_meshTessellateInterior:
.LFB3:
	.loc 1 141 0
.LVL43:
	mflr 0
.LCFI16:
	stwu 1,-16(1)
.LCFI17:
	stmw 30,8(1)
.LCFI18:
	.loc 1 145 0
	addi 30,3,64
	.loc 1 141 0
	stw 0,20(1)
.LCFI19:
	.loc 1 145 0
	lwz 9,64(3)
.LVL44:
	b .L75
.LVL45:
.L76:
	.loc 1 148 0
	lbz 0,21(9)
	.loc 1 147 0
	lwz 31,0(9)
	.loc 1 148 0
	cmpwi 7,0,0
	beq+ 7,.L77
	.loc 1 149 0
	mr 3,9
.LVL46:
	bl __gl_meshTessellateMonoRegion
.LVL47:
	cmpwi 7,3,0
	beq- 7,.L80
.LVL48:
.L77:
	mr 9,31
.L75:
	.loc 1 145 0
	cmpw 7,9,30
	bne+ 7,.L76
	li 3,1
.LVL49:
.L80:
	.loc 1 154 0
	lwz 0,20(1)
	lmw 30,8(1)
.LVL50:
	addi 1,1,16
	mtlr 0
	blr
.LFE3:
	.size	__gl_meshTessellateInterior, .-__gl_meshTessellateInterior
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC0:
	.4byte	0
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI1-.LFB5
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
	.byte	0x9
	.uleb128 0x40
	.uleb128 0xc
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI5-.LCFI3
	.byte	0x5
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI7-.LFB4
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI11-.LFB2
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI15-.LCFI11
	.byte	0x9f
	.uleb128 0x5
	.byte	0x9e
	.uleb128 0x6
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
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
	.4byte	.LCFI17-.LFB3
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
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
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL42-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/include/GL/gl.h"
	.file 3 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/mesh.h"
	.section	.debug_info
	.4byte	0x436
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x1
	.4byte	.LASF48
	.4byte	.LASF49
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
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x5
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x2
	.byte	0x93
	.4byte	0x2f
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x2
	.byte	0x9f
	.4byte	0x94
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2f
	.4byte	0xa6
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x98
	.byte	0x3
	.byte	0x2f
	.4byte	0xeb
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x3
	.byte	0xab
	.4byte	0xeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x3
	.byte	0xac
	.4byte	0x16f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x3
	.byte	0xad
	.4byte	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x3
	.byte	0xae
	.4byte	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x3
	.byte	0x31
	.4byte	0xf6
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x40
	.byte	0x3
	.byte	0x31
	.4byte	0x16f
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x3
	.byte	0x7a
	.4byte	0x282
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x3
	.byte	0x7b
	.4byte	0x282
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x3
	.byte	0x7c
	.4byte	0x288
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x3
	.byte	0x7d
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x3
	.byte	0x80
	.4byte	0x28e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"s"
	.byte	0x3
	.byte	0x81
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"t"
	.byte	0x3
	.byte	0x81
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x3
	.byte	0x82
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x3
	.byte	0x32
	.4byte	0x17a
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x18
	.byte	0x3
	.byte	0x32
	.4byte	0x1e9
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x3
	.byte	0x86
	.4byte	0x29e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x3
	.byte	0x87
	.4byte	0x29e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x3
	.byte	0x88
	.4byte	0x288
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x3
	.byte	0x89
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x3
	.byte	0x8c
	.4byte	0x29e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x3
	.byte	0x8d
	.4byte	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x3
	.byte	0x8e
	.4byte	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x3
	.byte	0x33
	.4byte	0x1f4
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x20
	.byte	0x3
	.byte	0x33
	.4byte	0x271
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x3
	.byte	0x92
	.4byte	0x288
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"Sym"
	.byte	0x3
	.byte	0x93
	.4byte	0x288
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x3
	.byte	0x94
	.4byte	0x288
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x3
	.byte	0x95
	.4byte	0x288
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"Org"
	.byte	0x3
	.byte	0x96
	.4byte	0x282
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x3
	.byte	0x97
	.4byte	0x29e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x3
	.byte	0x9a
	.4byte	0x2a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x3
	.byte	0x9b
	.4byte	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x3
	.byte	0x35
	.4byte	0x27c
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x1
	.uleb128 0xb
	.byte	0x4
	.4byte	0xeb
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1e9
	.uleb128 0xc
	.4byte	0x89
	.4byte	0x29e
	.uleb128 0xd
	.4byte	0x2c
	.byte	0x2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x16f
	.uleb128 0xb
	.byte	0x4
	.4byte	0x271
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF41
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST0
	.4byte	0x311
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0xba
	.4byte	0x311
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x1
	.byte	0xba
	.4byte	0x4d
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x1
	.byte	0xbb
	.4byte	0x77
	.4byte	.LLST3
	.uleb128 0x10
	.string	"e"
	.byte	0x1
	.byte	0xbd
	.4byte	0x288
	.4byte	.LLST4
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x1
	.byte	0xbd
	.4byte	0x288
	.4byte	.LLST5
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9b
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF45
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST6
	.4byte	0x35c
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0xa2
	.4byte	0x311
	.4byte	.LLST7
	.uleb128 0x10
	.string	"f"
	.byte	0x1
	.byte	0xa4
	.4byte	0x29e
	.4byte	.LLST8
	.uleb128 0x11
	.4byte	.LASF20
	.byte	0x1
	.byte	0xa4
	.4byte	0x29e
	.4byte	.LLST9
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF42
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST10
	.4byte	0x3f4
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0x4f
	.4byte	0x29e
	.4byte	.LLST11
	.uleb128 0x10
	.string	"up"
	.byte	0x1
	.byte	0x51
	.4byte	0x288
	.4byte	.LLST12
	.uleb128 0x10
	.string	"lo"
	.byte	0x1
	.byte	0x51
	.4byte	0x288
	.4byte	.LLST13
	.uleb128 0x13
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0x3c1
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x1
	.byte	0x69
	.4byte	0x288
	.4byte	.LLST14
	.byte	0x0
	.uleb128 0x13
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0x3de
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x1
	.byte	0x72
	.4byte	0x288
	.4byte	.LLST15
	.byte	0x0
	.uleb128 0x14
	.4byte	.Ldebug_ranges0+0x0
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x1
	.byte	0x7f
	.4byte	0x288
	.4byte	.LLST16
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF46
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST17
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0x8c
	.4byte	0x311
	.4byte	.LLST18
	.uleb128 0x10
	.string	"f"
	.byte	0x1
	.byte	0x8e
	.4byte	0x29e
	.4byte	.LLST19
	.uleb128 0x11
	.4byte	.LASF20
	.byte	0x1
	.byte	0x8e
	.4byte	0x29e
	.4byte	.LLST20
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
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
	.uleb128 0x8
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x8b
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x43a
	.4byte	0x2aa
	.string	"__gl_meshSetWindingNumber"
	.4byte	0x317
	.string	"__gl_meshDiscardExterior"
	.4byte	0x35c
	.string	"__gl_meshTessellateMonoRegion"
	.4byte	0x3f4
	.string	"__gl_meshTessellateInterior"
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"GLUvertex"
.LASF20:
	.string	"next"
.LASF18:
	.string	"eHeadSym"
.LASF46:
	.string	"__gl_meshTessellateInterior"
.LASF37:
	.string	"mesh"
.LASF22:
	.string	"anEdge"
.LASF27:
	.string	"trail"
.LASF34:
	.string	"activeRegion"
.LASF32:
	.string	"Lnext"
.LASF35:
	.string	"winding"
.LASF41:
	.string	"__gl_meshSetWindingNumber"
.LASF30:
	.string	"GLUhalfEdge"
.LASF12:
	.string	"GLdouble"
.LASF24:
	.string	"coords"
.LASF10:
	.string	"float"
.LASF23:
	.string	"data"
.LASF6:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF40:
	.string	"eNext"
.LASF39:
	.string	"keepOnlyBoundary"
.LASF48:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/tessmono.c"
.LASF7:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF44:
	.string	"tempHalfEdge"
.LASF13:
	.string	"double"
.LASF4:
	.string	"short int"
.LASF25:
	.string	"pqHandle"
.LASF42:
	.string	"__gl_meshTessellateMonoRegion"
.LASF29:
	.string	"inside"
.LASF0:
	.string	"unsigned int"
.LASF49:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\freespace2wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF8:
	.string	"char"
.LASF26:
	.string	"GLUface"
.LASF28:
	.string	"marked"
.LASF17:
	.string	"eHead"
.LASF11:
	.string	"GLboolean"
.LASF15:
	.string	"vHead"
.LASF5:
	.string	"long long int"
.LASF47:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF33:
	.string	"Lface"
.LASF31:
	.string	"Onext"
.LASF38:
	.string	"value"
.LASF45:
	.string	"__gl_meshDiscardExterior"
.LASF43:
	.string	"face"
.LASF16:
	.string	"fHead"
.LASF9:
	.string	"long int"
.LASF3:
	.string	"signed char"
.LASF36:
	.string	"ActiveRegion"
.LASF14:
	.string	"GLUmesh"
.LASF21:
	.string	"prev"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
