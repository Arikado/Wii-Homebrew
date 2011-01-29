	.file	"normal.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.type	LongAxis, @function
LongAxis:
.LFB3:
	.file 1 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/normal.c"
	.loc 1 68 0
.LVL0:
	.loc 1 71 0
	lis 9,.LC0@ha
	lfd 0,0(3)
	lfd 11,.LC0@l(9)
	.loc 1 68 0
	mr 11,3
	.loc 1 71 0
	lfd 13,8(3)
	fcmpu 7,0,11
	fabs 13,13
	bnl+ 7,.L5
	fneg 0,0
.L5:
	.loc 1 72 0
	lfd 12,16(11)
	.loc 1 71 0
	fcmpu 7,13,0
	.loc 1 72 0
	fcmpu 6,12,11
	.loc 1 71 0
	mfcr 3
	rlwinm 3,3,30,1
.LVL1:
	.loc 1 72 0
	bnl+ 6,.L8
	fneg 12,12
.L8:
	slwi 0,3,3
	lfdx 0,11,0
	fcmpu 7,0,11
	bnl+ 7,.L11
	fneg 0,0
.L11:
	fcmpu 7,12,0
	bnglr- 7
	li 3,2
.LVL2:
	.loc 1 74 0
	blr
.LFE3:
	.size	LongAxis, .-LongAxis
	.align 2
	.globl __gl_projectPolygon
	.type	__gl_projectPolygon, @function
__gl_projectPolygon:
.LFB6:
	.loc 1 199 0
.LVL3:
	mflr 0
.LCFI0:
	stwu 1,-152(1)
.LCFI1:
	.loc 1 208 0
	lis 9,.LC0@ha
	.loc 1 199 0
	stmw 29,140(1)
.LCFI2:
	mr 31,3
	stw 0,156(1)
.LCFI3:
	.loc 1 208 0
	lfd 11,.LC0@l(9)
	.loc 1 205 0
	lfd 0,16(3)
	.loc 1 206 0
	lfd 12,24(3)
	.loc 1 207 0
	lfd 13,32(3)
	.loc 1 208 0
	fcmpu 7,0,11
	.loc 1 205 0
	stfd 0,32(1)
	.loc 1 206 0
	stfd 12,40(1)
	.loc 1 207 0
	stfd 13,48(1)
	.loc 1 200 0
	lwz 30,8(3)
.LVL4:
	.loc 1 208 0
	bne- 7,.L19
	fcmpu 7,12,11
	bne- 7,.L19
	fcmpu 7,13,11
	bne- 7,.L19
.LBB6:
.LBB7:
	.loc 1 85 0
	lis 9,.LC2@ha
	.loc 1 91 0
	addi 6,1,80
	.loc 1 85 0
	lfd 0,.LC2@l(9)
	.loc 1 86 0
	lis 9,.LC3@ha
	lfd 13,.LC3@l(9)
	.loc 1 91 0
	addi 4,1,20
	.loc 1 85 0
	stfd 0,56(1)
	.loc 1 92 0
	addi 7,1,56
	.loc 1 86 0
	stfd 13,80(1)
	.loc 1 92 0
	addi 5,1,8
	.loc 1 85 0
	stfd 0,72(1)
	stfd 0,64(1)
	.loc 1 86 0
	stfd 13,96(1)
	stfd 13,88(1)
	.loc 1 88 0
	lwz 10,0(30)
.LVL5:
	b .L26
.LVL6:
.L27:
	li 11,0
	li 8,0
.L28:
	.loc 1 90 0
	add 9,10,11
	.loc 1 91 0
	lfdx 0,11,6
	.loc 1 90 0
	lfd 13,16(9)
	.loc 1 89 0
	cmpwi 6,11,16
	.loc 1 91 0
	fcmpu 7,13,0
	bnl- 7,.L29
	stfdx 13,11,6
	stwx 10,8,4
.L29:
	.loc 1 92 0
	lfdx 0,11,7
	fcmpu 7,13,0
	bng- 7,.L32
	stfdx 13,11,7
	stwx 10,8,5
.L32:
	addi 8,8,4
	.loc 1 89 0
	addi 11,11,8
	bne+ 6,.L28
	.loc 1 88 0
	lwz 10,0(10)
.L26:
	cmpw 7,10,30
	bne+ 7,.L27
	lfd 0,88(1)
	.loc 1 101 0
	addi 11,1,8
	.loc 1 88 0
	lfd 12,64(1)
	lfd 13,80(1)
.LVL7:
	fsub 12,12,0
	lfd 0,56(1)
	fsub 0,0,13
	.loc 1 101 0
	lfd 13,72(1)
	.loc 1 88 0
	fcmpu 7,12,0
	.loc 1 101 0
	lfd 0,96(1)
	.loc 1 88 0
	mfcr 0
	rlwinm 0,0,30,1
.LVL8:
	.loc 1 101 0
	fsub 13,13,0
	slwi 9,0,3
	add 9,9,11
	lfd 12,72(9)
	lfd 0,48(9)
	fsub 0,0,12
	fcmpu 7,13,0
	bng- 7,.L37
	li 0,2
.L37:
	.loc 1 102 0
	slwi 9,0,3
	lis 10,.LC0@ha
.LVL9:
	add 9,9,11
	lfd 13,48(9)
	lfd 0,72(9)
	fcmpu 7,0,13
	cror 30,29,30
	bne- 7,.L40
	.loc 1 104 0
	lis 9,.LC5@ha
	lfd 13,.LC0@l(10)
	lfs 0,.LC5@l(9)
	li 29,1
.LVL10:
	stfd 13,40(1)
	stfd 0,48(1)
	stfd 13,32(1)
	b .L43
.LVL11:
.L40:
	.loc 1 112 0
	slwi 0,0,2
.LVL12:
	.loc 1 117 0
	lfd 6,.LC0@l(10)
.LVL13:
	.loc 1 112 0
	add 9,0,11
	.loc 1 113 0
	lwzx 11,11,0
.LVL14:
	.loc 1 112 0
	lwz 9,12(9)
.LVL15:
	.loc 1 114 0
	lfd 13,16(11)
	lfd 0,16(9)
	fsub 0,0,13
	stfd 0,104(1)
	.loc 1 115 0
	lfd 0,24(9)
	lfd 13,24(11)
	fsub 0,0,13
	stfd 0,112(1)
	.loc 1 116 0
	lfd 0,32(9)
	lfd 13,32(11)
	fsub 0,0,13
	stfd 0,120(1)
	.loc 1 117 0
	lwz 9,0(30)
.LVL16:
	b .L44
.LVL17:
.L45:
	.loc 1 120 0
	lfd 0,32(11)
	lfd 10,32(9)
	.loc 1 122 0
	lfd 7,104(1)
	.loc 1 120 0
	fsub 10,10,0
	.loc 1 118 0
	lfd 11,16(11)
	.loc 1 119 0
	lfd 9,24(11)
	.loc 1 118 0
	lfd 13,16(9)
	.loc 1 119 0
	lfd 12,24(9)
	.loc 1 122 0
	fmul 8,7,10
	.loc 1 121 0
	lfd 0,120(1)
	.loc 1 118 0
	fsub 13,13,11
	.loc 1 121 0
	lfd 11,112(1)
	.loc 1 119 0
	fsub 12,12,9
	.loc 1 122 0
	fmsub 9,0,13,8
	.loc 1 121 0
	fmul 0,0,12
	.loc 1 123 0
	fmul 13,11,13
	.loc 1 121 0
	fmsub 11,11,10,0
	.loc 1 124 0
	fmul 0,9,9
	.loc 1 123 0
	fmsub 13,7,12,13
	.loc 1 124 0
	fmadd 0,11,11,0
	fmadd 0,13,13,0
.LVL18:
	.loc 1 125 0
	fcmpu 7,0,6
	bng- 7,.L46
.LVL19:
	.loc 1 129 0
	fmr 6,0
	.loc 1 127 0
	stfd 11,32(1)
	.loc 1 128 0
	stfd 9,40(1)
	.loc 1 129 0
	stfd 13,48(1)
.L46:
	.loc 1 117 0
	lwz 9,0(9)
.L44:
	cmpw 7,9,30
	bne+ 7,.L45
	.loc 1 133 0
	lis 9,.LC0@ha
.LVL20:
	li 29,1
.LVL21:
	lfd 0,.LC0@l(9)
	fcmpu 7,6,0
	cror 30,28,30
	bne+ 7,.L43
	.loc 1 135 0
	stfd 0,32(1)
.LBE7:
	.loc 1 136 0
	addi 3,1,104
.LVL22:
.LBB8:
	.loc 1 135 0
	stfd 0,48(1)
	stfd 0,40(1)
.LBE8:
	.loc 1 136 0
	bl LongAxis
.LVL23:
	lis 9,.LC5@ha
	lfs 0,.LC5@l(9)
	slwi 3,3,3
	addi 9,1,32
	stfdx 0,3,9
	b .L43
.LVL24:
.L19:
	li 29,0
.LVL25:
.L43:
.LBE6:
	.loc 1 214 0
	addi 3,1,32
	bl LongAxis
.LVL26:
	.loc 1 241 0
	li 0,3
	addi 7,3,1
.LVL27:
	.loc 1 242 0
	addi 8,3,2
	divw 10,8,0
	.loc 1 240 0
	lis 9,.LC0@ha
	lfd 13,.LC0@l(9)
	slwi 11,3,3
	add 9,11,31
	stfd 13,40(9)
	.loc 1 245 0
	add 6,1,11
	.loc 1 244 0
	stfd 13,64(9)
	.loc 1 241 0
	lis 9,.LC5@ha
	lfs 0,.LC5@l(9)
	.loc 1 245 0
	fmr 12,13
	.loc 1 241 0
	divw 0,7,0
	.loc 1 242 0
	mulli 10,10,3
	.loc 1 241 0
	mulli 0,0,3
	.loc 1 242 0
	subf 8,10,8
	.loc 1 241 0
	subf 7,0,7
	.loc 1 242 0
	slwi 10,8,3
	.loc 1 241 0
	slwi 11,7,3
	.loc 1 242 0
	add 10,10,31
	.loc 1 241 0
	add 11,11,31
	stfd 0,40(11)
	.loc 1 242 0
	stfd 13,40(10)
	.loc 1 245 0
	lfd 0,32(6)
	fcmpu 7,0,13
	bng- 7,.L55
	lis 9,.LC7@ha
	lfs 12,.LC7@l(9)
.L55:
	slwi 9,7,3
	.loc 1 246 0
	slwi 0,3,3
	.loc 1 245 0
	add 9,9,31
	stfd 12,64(9)
	.loc 1 246 0
	add 9,1,0
	lfd 13,32(9)
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	fcmpu 7,13,0
	bng- 7,.L56
	lis 9,.LC5@ha
	lfs 0,.LC5@l(9)
	b .L59
.L56:
	lis 9,.LC9@ha
	lfs 0,.LC9@l(9)
.L59:
	slwi 9,8,3
	add 9,9,31
	stfd 0,64(9)
	.loc 1 250 0
	lwz 9,0(30)
.LVL28:
	b .L60
.L61:
	.loc 1 251 0
	lfd 9,24(9)
	lfd 12,48(31)
	lfd 10,16(9)
	fmul 12,9,12
	lfd 13,40(31)
	lfd 11,32(9)
	lfd 0,56(31)
	fmadd 13,10,13,12
	fmadd 0,11,0,13
	stfd 0,40(9)
	.loc 1 252 0
	lfd 0,72(31)
	lfd 13,64(31)
	fmul 9,9,0
	lfd 0,80(31)
	fmadd 10,10,13,9
	fmadd 11,11,0,10
	stfd 11,48(9)
	.loc 1 250 0
	lwz 9,0(9)
.L60:
	cmpw 7,9,30
	bne+ 7,.L61
	.loc 1 254 0
	cmpwi 7,29,0
	beq- 7,.L76
.LBB9:
.LBB10:
	.loc 1 144 0
	lwz 6,8(31)
	.loc 1 152 0
	lis 9,.LC0@ha
.LVL29:
	lfd 10,.LC0@l(9)
.LVL30:
	lwz 7,64(6)
.LVL31:
	.loc 1 144 0
	addi 5,6,64
.LVL32:
	b .L65
.LVL33:
.L66:
	.loc 1 153 0
	lwz 8,8(7)
	.loc 1 154 0
	lwz 0,28(8)
	cmpwi 7,0,0
	ble- 7,.L67
	mr 10,8
.LVL34:
.L69:
	.loc 1 156 0
	lwz 9,4(10)
	lwz 11,16(10)
	lwz 9,16(9)
	.loc 1 157 0
	lwz 10,12(10)
	.loc 1 156 0
	lfd 13,48(11)
	lfd 11,48(9)
	.loc 1 158 0
	cmpw 7,10,8
	.loc 1 156 0
	lfd 0,40(11)
	lfd 12,40(9)
	fadd 13,13,11
	fsub 0,0,12
	fmadd 10,0,13,10
	.loc 1 158 0
	bne+ 7,.L69
.LVL35:
.L67:
	.loc 1 152 0
	lwz 7,0(7)
.L65:
	cmpw 7,7,5
	bne+ 7,.L66
	.loc 1 160 0
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	fcmpu 7,10,0
	bnl+ 7,.L76
	.loc 1 162 0
	lwz 9,0(6)
.LVL36:
	b .L73
.L74:
	.loc 1 163 0
	lfd 0,48(9)
	fneg 0,0
	stfd 0,48(9)
	.loc 1 162 0
	lwz 9,0(9)
.L73:
	cmpw 7,9,6
	bne+ 7,.L74
	.loc 1 165 0
	lfd 0,64(31)
	.loc 1 166 0
	lfd 13,72(31)
	.loc 1 167 0
	lfd 12,80(31)
	.loc 1 165 0
	fneg 0,0
	.loc 1 166 0
	fneg 13,13
	.loc 1 167 0
	fneg 12,12
	.loc 1 165 0
	stfd 0,64(31)
	.loc 1 166 0
	stfd 13,72(31)
	.loc 1 167 0
	stfd 12,80(31)
.LVL37:
.L76:
.LBE10:
.LBE9:
	.loc 1 257 0
	lwz 0,156(1)
	lmw 29,140(1)
.LVL38:
	addi 1,1,152
	mtlr 0
	blr
.LFE6:
	.size	__gl_projectPolygon, .-__gl_projectPolygon
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC5:
	.4byte	1065353216
.LC7:
	.4byte	-2147483648
.LC9:
	.4byte	-1082130432
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC0:
	.4byte	0
	.4byte	0
.LC2:
	.4byte	-551318219
	.4byte	777033391
.LC3:
	.4byte	1596165429
	.4byte	777033391
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI1-.LFB6
	.byte	0xe
	.uleb128 0x98
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
	.4byte	.LVL1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 152
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL37-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/include/GL/gl.h"
	.file 3 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/include/GL/glu.h"
	.file 4 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/tess.h"
	.file 5 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/mesh.h"
	.file 6 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/machine/setjmp.h"
	.file 7 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/dict.h"
	.file 8 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/priorityq-heap.h"
	.file 9 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/priorityq.h"
	.section	.debug_info
	.4byte	0xb81
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0x1
	.4byte	.LASF114
	.4byte	.LASF115
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
	.byte	0x9d
	.4byte	0x98
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x2
	.byte	0x9f
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x7
	.byte	0x4
	.4byte	0x8d
	.uleb128 0x7
	.byte	0x4
	.4byte	0x9f
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x3
	.2byte	0x10f
	.4byte	0xc9
	.uleb128 0x9
	.4byte	.LASF16
	.2byte	0xe40
	.byte	0x3
	.2byte	0x10f
	.4byte	0x2b5
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x4
	.byte	0x46
	.4byte	0x75a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x4
	.byte	0x48
	.4byte	0x4a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x4
	.byte	0x49
	.4byte	0x7ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.byte	0x4c
	.4byte	0x7bf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.byte	0x50
	.4byte	0x4a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x4
	.byte	0x51
	.4byte	0x4a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x4
	.byte	0x52
	.4byte	0x4a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x4
	.byte	0x56
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x4
	.byte	0x57
	.4byte	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x4
	.byte	0x58
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.byte	0x5a
	.4byte	0x7c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.string	"pq"
	.byte	0x4
	.byte	0x5b
	.4byte	0x7cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.byte	0x5c
	.4byte	0x49c
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x4
	.byte	0x5f
	.4byte	0x7f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.byte	0x63
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.byte	0x64
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x79
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x4
	.byte	0x65
	.4byte	0x4b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x4
	.byte	0x68
	.4byte	0x7bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x4
	.byte	0x69
	.4byte	0x804
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x4
	.byte	0x6a
	.4byte	0x816
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x4
	.byte	0x6b
	.4byte	0x81e
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x4
	.byte	0x6c
	.4byte	0x830
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x4
	.byte	0x71
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x4
	.byte	0x72
	.4byte	0x4d
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.byte	0x73
	.4byte	0x836
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x4
	.byte	0x76
	.4byte	0x857
	.byte	0x3
	.byte	0x23
	.uleb128 0xd20
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x4
	.byte	0x78
	.4byte	0x86e
	.byte	0x3
	.byte	0x23
	.uleb128 0xd24
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x4
	.byte	0x79
	.4byte	0x885
	.byte	0x3
	.byte	0x23
	.uleb128 0xd28
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x4
	.byte	0x7a
	.4byte	0x816
	.byte	0x3
	.byte	0x23
	.uleb128 0xd2c
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x4
	.byte	0x7b
	.4byte	0x857
	.byte	0x3
	.byte	0x23
	.uleb128 0xd30
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x4
	.byte	0x7e
	.4byte	0x8ab
	.byte	0x3
	.byte	0x23
	.uleb128 0xd34
	.uleb128 0xb
	.string	"env"
	.byte	0x4
	.byte	0x80
	.4byte	0x4c4
	.byte	0x3
	.byte	0x23
	.uleb128 0xd38
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x4
	.byte	0x82
	.4byte	0x3d
	.byte	0x3
	.byte	0x23
	.uleb128 0xe38
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x5
	.byte	0x2f
	.4byte	0x2c0
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x98
	.byte	0x5
	.byte	0x2f
	.4byte	0x305
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x5
	.byte	0xab
	.4byte	0x305
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x5
	.byte	0xac
	.4byte	0x389
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x5
	.byte	0xad
	.4byte	0x403
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x5
	.byte	0xae
	.4byte	0x403
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x5
	.byte	0x31
	.4byte	0x310
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x40
	.byte	0x5
	.byte	0x31
	.4byte	0x389
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x5
	.byte	0x7a
	.4byte	0x49c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x5
	.byte	0x7b
	.4byte	0x49c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x5
	.byte	0x7c
	.4byte	0x4a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x5
	.byte	0x7d
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x5
	.byte	0x80
	.4byte	0x4a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"s"
	.byte	0x5
	.byte	0x81
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"t"
	.byte	0x5
	.byte	0x81
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x5
	.byte	0x82
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x5
	.byte	0x32
	.4byte	0x394
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x18
	.byte	0x5
	.byte	0x32
	.4byte	0x403
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x5
	.byte	0x86
	.4byte	0x4b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x5
	.byte	0x87
	.4byte	0x4b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x5
	.byte	0x88
	.4byte	0x4a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x5
	.byte	0x89
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x5
	.byte	0x8c
	.4byte	0x4b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x5
	.byte	0x8d
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x5
	.byte	0x8e
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0x5
	.byte	0x33
	.4byte	0x40e
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x20
	.byte	0x5
	.byte	0x33
	.4byte	0x48b
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x5
	.byte	0x92
	.4byte	0x4a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"Sym"
	.byte	0x5
	.byte	0x93
	.4byte	0x4a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x5
	.byte	0x94
	.4byte	0x4a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x5
	.byte	0x95
	.4byte	0x4a2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"Org"
	.byte	0x5
	.byte	0x96
	.4byte	0x49c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x5
	.byte	0x97
	.4byte	0x4b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x5
	.byte	0x9a
	.4byte	0x4be
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x5
	.byte	0x9b
	.4byte	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF70
	.byte	0x5
	.byte	0x35
	.4byte	0x496
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x1
	.uleb128 0x7
	.byte	0x4
	.4byte	0x305
	.uleb128 0x7
	.byte	0x4
	.4byte	0x403
	.uleb128 0xe
	.4byte	0x9f
	.4byte	0x4b8
	.uleb128 0xf
	.4byte	0x2c
	.byte	0x2
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x389
	.uleb128 0x7
	.byte	0x4
	.4byte	0x48b
	.uleb128 0x6
	.4byte	.LASF71
	.byte	0x6
	.byte	0xfa
	.4byte	0x4cf
	.uleb128 0xe
	.4byte	0xaa
	.4byte	0x4df
	.uleb128 0xf
	.4byte	0x2c
	.byte	0x1f
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF72
	.byte	0x7
	.byte	0x43
	.4byte	0x3d
	.uleb128 0x6
	.4byte	.LASF73
	.byte	0x7
	.byte	0x44
	.4byte	0x4f5
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x14
	.byte	0x7
	.byte	0x44
	.4byte	0x52c
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0x7
	.byte	0x66
	.4byte	0x52c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0x7
	.byte	0x67
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"leq"
	.byte	0x7
	.byte	0x68
	.4byte	0x58e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF76
	.byte	0x7
	.byte	0x45
	.4byte	0x537
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0xc
	.byte	0x7
	.byte	0x45
	.4byte	0x56e
	.uleb128 0xb
	.string	"key"
	.byte	0x7
	.byte	0x60
	.4byte	0x4df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x7
	.byte	0x61
	.4byte	0x56e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x7
	.byte	0x62
	.4byte	0x56e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x52c
	.uleb128 0x10
	.byte	0x1
	.4byte	0x4d
	.4byte	0x58e
	.uleb128 0x11
	.4byte	0x3d
	.uleb128 0x11
	.4byte	0x4df
	.uleb128 0x11
	.4byte	0x4df
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x574
	.uleb128 0x6
	.4byte	.LASF77
	.byte	0x8
	.byte	0x56
	.4byte	0x3d
	.uleb128 0x6
	.4byte	.LASF78
	.byte	0x8
	.byte	0x57
	.4byte	0x70
	.uleb128 0x6
	.4byte	.LASF79
	.byte	0x8
	.byte	0x58
	.4byte	0x5b5
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x1c
	.byte	0x8
	.byte	0x58
	.4byte	0x624
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x8
	.byte	0x5e
	.4byte	0x676
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x8
	.byte	0x5f
	.4byte	0x67c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x8
	.byte	0x60
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"max"
	.byte	0x8
	.byte	0x60
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x8
	.byte	0x61
	.4byte	0x59f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x8
	.byte	0x62
	.4byte	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"leq"
	.byte	0x8
	.byte	0x63
	.4byte	0x697
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.byte	0x5a
	.4byte	0x63b
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x8
	.byte	0x5a
	.4byte	0x59f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF86
	.byte	0x8
	.byte	0x5a
	.4byte	0x624
	.uleb128 0x12
	.byte	0x8
	.byte	0x8
	.byte	0x5b
	.4byte	0x66b
	.uleb128 0xb
	.string	"key"
	.byte	0x8
	.byte	0x5b
	.4byte	0x594
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x8
	.byte	0x5b
	.4byte	0x59f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF88
	.byte	0x8
	.byte	0x5b
	.4byte	0x646
	.uleb128 0x7
	.byte	0x4
	.4byte	0x63b
	.uleb128 0x7
	.byte	0x4
	.4byte	0x66b
	.uleb128 0x10
	.byte	0x1
	.4byte	0x4d
	.4byte	0x697
	.uleb128 0x11
	.4byte	0x594
	.uleb128 0x11
	.4byte	0x594
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x682
	.uleb128 0x6
	.4byte	.LASF89
	.byte	0x9
	.byte	0x64
	.4byte	0x594
	.uleb128 0x6
	.4byte	.LASF90
	.byte	0x9
	.byte	0x65
	.4byte	0x59f
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x9
	.byte	0x66
	.4byte	0x6be
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x1c
	.byte	0x9
	.byte	0x66
	.4byte	0x72d
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0x9
	.byte	0x69
	.4byte	0x72d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0x9
	.byte	0x6a
	.4byte	0x733
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0x9
	.byte	0x6b
	.4byte	0x739
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x9
	.byte	0x6c
	.4byte	0x6a8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"max"
	.byte	0x9
	.byte	0x6c
	.4byte	0x6a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x9
	.byte	0x6d
	.4byte	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"leq"
	.byte	0x9
	.byte	0x6e
	.4byte	0x754
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5aa
	.uleb128 0x7
	.byte	0x4
	.4byte	0x69d
	.uleb128 0x7
	.byte	0x4
	.4byte	0x733
	.uleb128 0x10
	.byte	0x1
	.4byte	0x4d
	.4byte	0x754
	.uleb128 0x11
	.4byte	0x69d
	.uleb128 0x11
	.4byte	0x69d
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x73f
	.uleb128 0x13
	.4byte	.LASF116
	.byte	0x4
	.byte	0x4
	.byte	0x36
	.4byte	0x779
	.uleb128 0x14
	.4byte	.LASF95
	.sleb128 0
	.uleb128 0x14
	.4byte	.LASF96
	.sleb128 1
	.uleb128 0x14
	.4byte	.LASF97
	.sleb128 2
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0x20
	.byte	0x4
	.byte	0x3d
	.4byte	0x7a2
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x4
	.byte	0x3e
	.4byte	0x4a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x4
	.byte	0x3f
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF98
	.byte	0x4
	.byte	0x40
	.4byte	0x779
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2b5
	.uleb128 0x15
	.byte	0x1
	.4byte	0x7bf
	.uleb128 0x11
	.4byte	0x77
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x7b3
	.uleb128 0x7
	.byte	0x4
	.4byte	0x4ea
	.uleb128 0x7
	.byte	0x4
	.4byte	0x6b3
	.uleb128 0x15
	.byte	0x1
	.4byte	0x7ec
	.uleb128 0x11
	.4byte	0xb7
	.uleb128 0x11
	.4byte	0x7ec
	.uleb128 0x11
	.4byte	0xb1
	.uleb128 0x11
	.4byte	0x7ec
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x3d
	.uleb128 0x7
	.byte	0x4
	.4byte	0x7d1
	.uleb128 0x15
	.byte	0x1
	.4byte	0x804
	.uleb128 0x11
	.4byte	0x82
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x7f8
	.uleb128 0x15
	.byte	0x1
	.4byte	0x816
	.uleb128 0x11
	.4byte	0x3d
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x80a
	.uleb128 0x16
	.byte	0x1
	.uleb128 0x7
	.byte	0x4
	.4byte	0x81c
	.uleb128 0x15
	.byte	0x1
	.4byte	0x830
	.uleb128 0x11
	.4byte	0x7ad
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x824
	.uleb128 0xe
	.4byte	0x7a2
	.4byte	0x846
	.uleb128 0xf
	.4byte	0x2c
	.byte	0x63
	.byte	0x0
	.uleb128 0x15
	.byte	0x1
	.4byte	0x857
	.uleb128 0x11
	.4byte	0x77
	.uleb128 0x11
	.4byte	0x3d
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x846
	.uleb128 0x15
	.byte	0x1
	.4byte	0x86e
	.uleb128 0x11
	.4byte	0x82
	.uleb128 0x11
	.4byte	0x3d
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x85d
	.uleb128 0x15
	.byte	0x1
	.4byte	0x885
	.uleb128 0x11
	.4byte	0x3d
	.uleb128 0x11
	.4byte	0x3d
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x874
	.uleb128 0x15
	.byte	0x1
	.4byte	0x8ab
	.uleb128 0x11
	.4byte	0xb7
	.uleb128 0x11
	.4byte	0x7ec
	.uleb128 0x11
	.4byte	0xb1
	.uleb128 0x11
	.4byte	0x7ec
	.uleb128 0x11
	.4byte	0x3d
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x88b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF99
	.uleb128 0x17
	.4byte	.LASF117
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x51
	.4byte	0x8ed
	.uleb128 0x18
	.string	"v"
	.byte	0x1
	.byte	0x43
	.4byte	0xb7
	.4byte	.LLST1
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x45
	.4byte	0x4d
	.4byte	.LLST2
	.byte	0x0
	.uleb128 0x1a
	.4byte	.LASF109
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.byte	0x1
	.4byte	0x9ac
	.uleb128 0x1b
	.4byte	.LASF100
	.byte	0x1
	.byte	0x4c
	.4byte	0x9ac
	.uleb128 0x1b
	.4byte	.LASF101
	.byte	0x1
	.byte	0x4c
	.4byte	0xb7
	.uleb128 0x1c
	.string	"v"
	.byte	0x1
	.byte	0x4e
	.4byte	0x49c
	.uleb128 0x1c
	.string	"v1"
	.byte	0x1
	.byte	0x4e
	.4byte	0x49c
	.uleb128 0x1c
	.string	"v2"
	.byte	0x1
	.byte	0x4e
	.4byte	0x49c
	.uleb128 0x1c
	.string	"c"
	.byte	0x1
	.byte	0x4f
	.4byte	0x9f
	.uleb128 0x1d
	.4byte	.LASF102
	.byte	0x1
	.byte	0x4f
	.4byte	0x9f
	.uleb128 0x1d
	.4byte	.LASF103
	.byte	0x1
	.byte	0x4f
	.4byte	0x9f
	.uleb128 0x1d
	.4byte	.LASF104
	.byte	0x1
	.byte	0x50
	.4byte	0x4a8
	.uleb128 0x1d
	.4byte	.LASF105
	.byte	0x1
	.byte	0x50
	.4byte	0x4a8
	.uleb128 0x1c
	.string	"d1"
	.byte	0x1
	.byte	0x50
	.4byte	0x4a8
	.uleb128 0x1c
	.string	"d2"
	.byte	0x1
	.byte	0x50
	.4byte	0x4a8
	.uleb128 0x1d
	.4byte	.LASF106
	.byte	0x1
	.byte	0x50
	.4byte	0x4a8
	.uleb128 0x1d
	.4byte	.LASF107
	.byte	0x1
	.byte	0x51
	.4byte	0x9b2
	.uleb128 0x1d
	.4byte	.LASF108
	.byte	0x1
	.byte	0x51
	.4byte	0x9b2
	.uleb128 0x1d
	.4byte	.LASF49
	.byte	0x1
	.byte	0x52
	.4byte	0x49c
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x53
	.4byte	0x4d
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xbd
	.uleb128 0xe
	.4byte	0x49c
	.4byte	0x9c2
	.uleb128 0xf
	.4byte	0x2c
	.byte	0x2
	.byte	0x0
	.uleb128 0x1a
	.4byte	.LASF110
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.byte	0x1
	.4byte	0xa17
	.uleb128 0x1b
	.4byte	.LASF100
	.byte	0x1
	.byte	0x8d
	.4byte	0x9ac
	.uleb128 0x1d
	.4byte	.LASF111
	.byte	0x1
	.byte	0x8f
	.4byte	0x9f
	.uleb128 0x1c
	.string	"f"
	.byte	0x1
	.byte	0x90
	.4byte	0x4b8
	.uleb128 0x1d
	.4byte	.LASF50
	.byte	0x1
	.byte	0x90
	.4byte	0x4b8
	.uleb128 0x1c
	.string	"v"
	.byte	0x1
	.byte	0x91
	.4byte	0x49c
	.uleb128 0x1d
	.4byte	.LASF49
	.byte	0x1
	.byte	0x91
	.4byte	0x49c
	.uleb128 0x1c
	.string	"e"
	.byte	0x1
	.byte	0x92
	.4byte	0x4a2
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF118
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST3
	.uleb128 0x1f
	.4byte	.LASF100
	.byte	0x1
	.byte	0xc6
	.4byte	0x9ac
	.4byte	.LLST4
	.uleb128 0x19
	.string	"v"
	.byte	0x1
	.byte	0xc8
	.4byte	0x49c
	.4byte	.LLST5
	.uleb128 0x20
	.4byte	.LASF49
	.byte	0x1
	.byte	0xc8
	.4byte	0x49c
	.4byte	.LLST6
	.uleb128 0x1c
	.string	"w"
	.byte	0x1
	.byte	0xc9
	.4byte	0x9f
	.uleb128 0x21
	.4byte	.LASF101
	.byte	0x1
	.byte	0xc9
	.4byte	0x4a8
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1d
	.4byte	.LASF22
	.byte	0x1
	.byte	0xca
	.4byte	0xb7
	.uleb128 0x1d
	.4byte	.LASF23
	.byte	0x1
	.byte	0xca
	.4byte	0xb7
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0xcb
	.4byte	0x4d
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF112
	.byte	0x1
	.byte	0xcb
	.4byte	0x4d
	.4byte	.LLST7
	.uleb128 0x23
	.4byte	0x8ed
	.4byte	.LBB6
	.4byte	.LBE6
	.byte	0x1
	.byte	0xd1
	.4byte	0xb39
	.uleb128 0x24
	.4byte	0x905
	.uleb128 0x24
	.4byte	0x8fa
	.uleb128 0x25
	.4byte	.Ldebug_ranges0+0x0
	.uleb128 0x26
	.4byte	0x910
	.4byte	.LLST8
	.uleb128 0x26
	.4byte	0x919
	.4byte	.LLST9
	.uleb128 0x26
	.4byte	0x923
	.4byte	.LLST10
	.uleb128 0x26
	.4byte	0x92d
	.4byte	.LLST11
	.uleb128 0x27
	.4byte	0x936
	.uleb128 0x26
	.4byte	0x941
	.4byte	.LLST12
	.uleb128 0x28
	.4byte	0x94c
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.4byte	0x957
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.4byte	0x962
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.4byte	0x96c
	.uleb128 0x27
	.4byte	0x976
	.uleb128 0x28
	.4byte	0x981
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x28
	.4byte	0x98c
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x27
	.4byte	0x997
	.uleb128 0x26
	.4byte	0x9a2
	.4byte	.LLST13
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.4byte	0x9c2
	.4byte	.LBB9
	.4byte	.LBE9
	.byte	0x1
	.byte	0xff
	.uleb128 0x24
	.4byte	0x9cf
	.uleb128 0x2a
	.4byte	.LBB10
	.4byte	.LBE10
	.uleb128 0x28
	.4byte	0x9da
	.byte	0x2
	.byte	0x90
	.uleb128 0x2a
	.uleb128 0x28
	.4byte	0x9e5
	.byte	0x1
	.byte	0x57
	.uleb128 0x28
	.4byte	0x9ee
	.byte	0x1
	.byte	0x55
	.uleb128 0x28
	.4byte	0x9f9
	.byte	0x1
	.byte	0x59
	.uleb128 0x27
	.4byte	0xa02
	.uleb128 0x26
	.4byte	0xa0d
	.4byte	.LLST14
	.byte	0x0
	.byte	0x0
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x4
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x26
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xb85
	.4byte	0xa17
	.string	"__gl_projectPolygon"
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
.LASF55:
	.string	"prev"
.LASF75:
	.string	"frame"
.LASF44:
	.string	"callEndData"
.LASF107:
	.string	"maxVert"
.LASF62:
	.string	"marked"
.LASF96:
	.string	"T_IN_POLYGON"
.LASF25:
	.string	"windingRule"
.LASF6:
	.string	"long long unsigned int"
.LASF43:
	.string	"callVertexData"
.LASF57:
	.string	"data"
.LASF94:
	.string	"order"
.LASF100:
	.string	"tess"
.LASF37:
	.string	"callMesh"
.LASF54:
	.string	"next"
.LASF73:
	.string	"DictList"
.LASF90:
	.string	"PQSortHandle"
.LASF66:
	.string	"Lnext"
.LASF3:
	.string	"signed char"
.LASF78:
	.string	"PQHeapHandle"
.LASF17:
	.string	"state"
.LASF9:
	.string	"long int"
.LASF56:
	.string	"anEdge"
.LASF115:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\freespace2wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF79:
	.string	"PriorityQHeap"
.LASF77:
	.string	"PQHeapKey"
.LASF106:
	.string	"tNorm"
.LASF5:
	.string	"long long int"
.LASF118:
	.string	"__gl_projectPolygon"
.LASF12:
	.string	"GLfloat"
.LASF97:
	.string	"T_IN_CONTOUR"
.LASF38:
	.string	"emptyCache"
.LASF29:
	.string	"callCombine"
.LASF92:
	.string	"heap"
.LASF103:
	.string	"maxLen2"
.LASF84:
	.string	"initialized"
.LASF0:
	.string	"unsigned int"
.LASF50:
	.string	"fHead"
.LASF68:
	.string	"activeRegion"
.LASF110:
	.string	"CheckOrientation"
.LASF116:
	.string	"TessState"
.LASF7:
	.string	"long unsigned int"
.LASF41:
	.string	"callBeginData"
.LASF31:
	.string	"boundaryOnly"
.LASF28:
	.string	"event"
.LASF82:
	.string	"size"
.LASF2:
	.string	"short unsigned int"
.LASF64:
	.string	"GLUhalfEdge"
.LASF91:
	.string	"PriorityQSort"
.LASF4:
	.string	"short int"
.LASF108:
	.string	"minVert"
.LASF45:
	.string	"callErrorData"
.LASF95:
	.string	"T_DORMANT"
.LASF23:
	.string	"tUnit"
.LASF81:
	.string	"handles"
.LASF52:
	.string	"eHeadSym"
.LASF16:
	.string	"GLUtesselator"
.LASF86:
	.string	"PQnode"
.LASF11:
	.string	"GLboolean"
.LASF101:
	.string	"norm"
.LASF30:
	.string	"flagBoundary"
.LASF19:
	.string	"mesh"
.LASF89:
	.string	"PQSortKey"
.LASF21:
	.string	"normal"
.LASF72:
	.string	"DictListKey"
.LASF46:
	.string	"callCombineData"
.LASF93:
	.string	"keys"
.LASF48:
	.string	"GLUmesh"
.LASF13:
	.string	"float"
.LASF61:
	.string	"trail"
.LASF102:
	.string	"tLen2"
.LASF1:
	.string	"unsigned char"
.LASF20:
	.string	"callError"
.LASF87:
	.string	"node"
.LASF117:
	.string	"LongAxis"
.LASF111:
	.string	"area"
.LASF67:
	.string	"Lface"
.LASF49:
	.string	"vHead"
.LASF98:
	.string	"CachedVertex"
.LASF51:
	.string	"eHead"
.LASF18:
	.string	"lastEdge"
.LASF113:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF63:
	.string	"inside"
.LASF74:
	.string	"head"
.LASF27:
	.string	"dict"
.LASF65:
	.string	"Onext"
.LASF99:
	.string	"long double"
.LASF8:
	.string	"char"
.LASF70:
	.string	"ActiveRegion"
.LASF10:
	.string	"GLenum"
.LASF14:
	.string	"GLdouble"
.LASF69:
	.string	"winding"
.LASF112:
	.string	"computedNormal"
.LASF109:
	.string	"ComputeNormal"
.LASF88:
	.string	"PQhandleElem"
.LASF80:
	.string	"nodes"
.LASF83:
	.string	"freeList"
.LASF32:
	.string	"lonelyTriList"
.LASF22:
	.string	"sUnit"
.LASF104:
	.string	"maxVal"
.LASF53:
	.string	"GLUvertex"
.LASF24:
	.string	"relTolerance"
.LASF58:
	.string	"coords"
.LASF39:
	.string	"cacheCount"
.LASF47:
	.string	"polygonData"
.LASF71:
	.string	"jmp_buf"
.LASF33:
	.string	"callBegin"
.LASF36:
	.string	"callEnd"
.LASF59:
	.string	"pqHandle"
.LASF42:
	.string	"callEdgeFlagData"
.LASF85:
	.string	"handle"
.LASF35:
	.string	"callVertex"
.LASF76:
	.string	"DictListNode"
.LASF60:
	.string	"GLUface"
.LASF105:
	.string	"minVal"
.LASF114:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/normal.c"
.LASF40:
	.string	"cache"
.LASF15:
	.string	"double"
.LASF34:
	.string	"callEdgeFlag"
.LASF26:
	.string	"fatalError"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
