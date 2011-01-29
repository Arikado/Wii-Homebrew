	.file	"geom.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl __gl_vertLeq
	.type	__gl_vertLeq, @function
__gl_vertLeq:
.LFB2:
	.file 1 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/geom.c"
	.loc 1 48 0
.LVL0:
	.loc 1 51 0
	lfd 13,40(3)
	.loc 1 48 0
	mr 9,3
	.loc 1 51 0
	lfd 0,40(4)
	li 3,1
.LVL1:
	fcmpu 7,13,0
	bltlr- 7
	beq+ 7,.L6
	li 3,0
	blr
.L6:
	lfd 13,48(9)
	lfd 0,48(4)
	fcmpu 7,13,0
	cror 30,28,30
	mfcr 3
	rlwinm 3,3,31,1
	.loc 1 52 0
	blr
.LFE2:
	.size	__gl_vertLeq, .-__gl_vertLeq
	.align 2
	.globl __gl_edgeEval
	.type	__gl_edgeEval, @function
__gl_edgeEval:
.LFB3:
	.loc 1 55 0
.LVL2:
	.loc 1 70 0
	lfd 12,40(4)
	.loc 1 73 0
	lis 9,.LC0@ha
	.loc 1 70 0
	lfd 0,40(3)
	.loc 1 71 0
	lfd 13,40(5)
	.loc 1 70 0
	fsub 10,12,0
.LVL3:
	.loc 1 73 0
	lfd 1,.LC0@l(9)
	.loc 1 71 0
	fsub 13,13,12
.LVL4:
	.loc 1 73 0
	fadd 12,10,13
	fcmpu 7,12,1
	bnglr- 7
	.loc 1 74 0
	fcmpu 7,10,13
	lfd 11,48(3)
	lfd 9,48(4)
	lfd 0,48(5)
	bnl- 7,.L13
	.loc 1 75 0
	fdiv 12,10,12
	fsub 13,11,0
.LVL5:
	fsub 0,9,11
	fmadd 1,13,12,0
	blr
.LVL6:
.L13:
	.loc 1 77 0
	fdiv 12,13,12
	fsub 13,0,11
.LVL7:
	fsub 0,9,0
	fmadd 1,13,12,0
	.loc 1 82 0
	blr
.LFE3:
	.size	__gl_edgeEval, .-__gl_edgeEval
	.align 2
	.globl __gl_edgeSign
	.type	__gl_edgeSign, @function
__gl_edgeSign:
.LFB4:
	.loc 1 85 0
.LVL8:
	.loc 1 94 0
	lfd 12,40(4)
	.loc 1 97 0
	lis 9,.LC0@ha
	.loc 1 94 0
	lfd 0,40(3)
	.loc 1 95 0
	lfd 13,40(5)
	.loc 1 94 0
	fsub 10,12,0
.LVL9:
	.loc 1 97 0
	lfd 1,.LC0@l(9)
	.loc 1 95 0
	fsub 11,13,12
.LVL10:
	.loc 1 97 0
	fadd 0,10,11
	fcmpu 7,0,1
	bnglr- 7
	.loc 1 98 0
	lfd 0,48(4)
	lfd 13,48(3)
	lfd 12,48(5)
	fsub 13,0,13
	fsub 0,0,12
	fmul 13,13,11
	fmadd 1,0,10,13
	.loc 1 102 0
	blr
.LFE4:
	.size	__gl_edgeSign, .-__gl_edgeSign
	.align 2
	.globl __gl_transEval
	.type	__gl_transEval, @function
__gl_transEval:
.LFB5:
	.loc 1 110 0
.LVL11:
	.loc 1 125 0
	lfd 12,48(4)
	.loc 1 128 0
	lis 9,.LC0@ha
	.loc 1 125 0
	lfd 0,48(3)
	.loc 1 126 0
	lfd 13,48(5)
	.loc 1 125 0
	fsub 10,12,0
.LVL12:
	.loc 1 128 0
	lfd 1,.LC0@l(9)
	.loc 1 126 0
	fsub 13,13,12
.LVL13:
	.loc 1 128 0
	fadd 12,10,13
	fcmpu 7,12,1
	bnglr- 7
	.loc 1 129 0
	fcmpu 7,10,13
	lfd 11,40(3)
	lfd 9,40(4)
	lfd 0,40(5)
	bnl- 7,.L26
	.loc 1 130 0
	fdiv 12,10,12
	fsub 13,11,0
.LVL14:
	fsub 0,9,11
	fmadd 1,13,12,0
	blr
.LVL15:
.L26:
	.loc 1 132 0
	fdiv 12,13,12
	fsub 13,0,11
.LVL16:
	fsub 0,9,0
	fmadd 1,13,12,0
	.loc 1 137 0
	blr
.LFE5:
	.size	__gl_transEval, .-__gl_transEval
	.align 2
	.globl __gl_transSign
	.type	__gl_transSign, @function
__gl_transSign:
.LFB6:
	.loc 1 140 0
.LVL17:
	.loc 1 149 0
	lfd 12,48(4)
	.loc 1 152 0
	lis 9,.LC0@ha
	.loc 1 149 0
	lfd 0,48(3)
	.loc 1 150 0
	lfd 13,48(5)
	.loc 1 149 0
	fsub 10,12,0
.LVL18:
	.loc 1 152 0
	lfd 1,.LC0@l(9)
	.loc 1 150 0
	fsub 11,13,12
.LVL19:
	.loc 1 152 0
	fadd 0,10,11
	fcmpu 7,0,1
	bnglr- 7
	.loc 1 153 0
	lfd 0,40(4)
	lfd 13,40(3)
	lfd 12,40(5)
	fsub 13,0,13
	fsub 0,0,12
	fmul 13,13,11
	fmadd 1,0,10,13
	.loc 1 157 0
	blr
.LFE6:
	.size	__gl_transSign, .-__gl_transSign
	.align 2
	.globl __gl_vertCCW
	.type	__gl_vertCCW, @function
__gl_vertCCW:
.LFB7:
	.loc 1 161 0
.LVL20:
	.loc 1 168 0
	lfd 13,48(3)
	lis 9,.LC0@ha
	lfd 0,48(5)
	lfd 11,40(4)
	fsub 12,0,13
	lfd 10,48(4)
	lfd 9,40(3)
	fsub 0,10,0
	fmul 12,12,11
	lfd 11,40(5)
	fsub 13,13,10
	fmadd 0,0,9,12
	fmadd 13,13,11,0
	lfd 0,.LC0@l(9)
	fcmpu 7,13,0
	cror 30,29,30
	.loc 1 169 0
	mfcr 3
	rlwinm 3,3,31,1
.LVL21:
	blr
.LFE7:
	.size	__gl_vertCCW, .-__gl_vertCCW
	.align 2
	.globl __gl_edgeIntersect
	.type	__gl_edgeIntersect, @function
__gl_edgeIntersect:
.LFB8:
	.loc 1 217 0
.LVL22:
	mflr 0
.LCFI0:
	stwu 1,-64(1)
.LCFI1:
	stmw 27,12(1)
.LCFI2:
	mr 29,3
	stfd 28,32(1)
.LCFI3:
	mr 30,4
	stfd 29,40(1)
.LCFI4:
	mr 31,5
	stfd 30,48(1)
.LCFI5:
	mr 28,6
	stfd 31,56(1)
.LCFI6:
	mr 27,7
	stw 0,68(1)
.LCFI7:
	.loc 1 228 0
	lfd 13,40(3)
	lfd 0,40(4)
	fcmpu 7,13,0
	blt- 7,.L38
.LVL23:
	bne- 7,.L157
	lfd 13,48(3)
	lfd 0,48(4)
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L38
.L157:
	mr 0,30
	mr 30,29
.LVL24:
	mr 29,0
.LVL25:
.L38:
	.loc 1 229 0
	lfd 13,40(31)
	lfd 0,40(28)
	fcmpu 7,13,0
	blt- 7,.L43
	bne- 7,.L158
	lfd 13,48(31)
	lfd 0,48(28)
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L43
.L158:
	mr 0,28
	mr 28,31
	mr 31,0
.LVL26:
.L43:
	.loc 1 230 0
	lfd 13,40(29)
	lfd 0,40(31)
	fcmpu 7,13,0
	blt- 7,.L48
	bne- 7,.L159
	lfd 13,48(29)
	lfd 0,48(31)
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L48
.L159:
	mr 0,31
	mr 9,28
	mr 31,29
	mr 28,30
	mr 29,0
	mr 30,9
.LVL27:
.L48:
	.loc 1 232 0
	lfd 29,40(31)
	lfd 30,40(30)
	fcmpu 7,29,30
	blt- 7,.L53
	bne- 7,.L55
	lfd 13,48(31)
	lfd 0,48(30)
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L53
.L55:
	.loc 1 234 0
	lis 9,.LC3@ha
	fadd 0,29,30
	lfs 13,.LC3@l(9)
	b .L163
.LVL28:
.L53:
	.loc 1 235 0
	lfd 28,40(28)
	fcmpu 7,30,28
	blt- 7,.L59
	bne- 7,.L61
	lfd 13,48(30)
	lfd 0,48(28)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L61
.L59:
	.loc 1 237 0
	mr 3,29
	mr 4,31
	mr 5,30
	bl __gl_edgeEval
	.loc 1 238 0
	mr 3,31
	.loc 1 237 0
	fmr 31,1
.LVL29:
	.loc 1 238 0
	mr 4,30
	mr 5,28
	bl __gl_edgeEval
	.loc 1 239 0
	lis 9,.LC0@ha
	fadd 0,31,1
.LVL30:
	lfd 13,.LC0@l(9)
	fcmpu 7,0,13
	bnl+ 7,.L65
	fneg 31,31
	fneg 1,1
.L65:
	.loc 1 240 0
	fcmpu 7,31,13
	bnl+ 7,.L68
	fmr 31,13
.L68:
	fcmpu 7,1,13
	bnl+ 7,.L71
	fmr 1,13
.L71:
	fcmpu 7,31,1
	cror 30,28,30
	bne- 7,.L74
	fcmpu 7,1,13
	bne- 7,.L77
	fadd 13,29,30
	b .L167
.L77:
	fadd 0,31,1
	fsub 13,30,29
	b .L164
.L74:
	fadd 0,31,1
	fsub 13,29,30
	fdiv 0,1,0
	fmadd 0,13,0,30
	b .L96
.LVL31:
.L61:
	.loc 1 243 0
	mr 3,29
	mr 4,31
	mr 5,30
	bl __gl_edgeSign
	.loc 1 244 0
	mr 3,29
	mr 4,28
	mr 5,30
	.loc 1 243 0
	fmr 31,1
.LVL32:
	.loc 1 244 0
	bl __gl_edgeSign
	fneg 12,1
.LVL33:
	.loc 1 245 0
	lis 9,.LC0@ha
	lfd 13,.LC0@l(9)
	fadd 0,31,12
	fcmpu 7,0,13
	bnl+ 7,.L81
	fneg 31,31
	fmr 12,1
.L81:
	.loc 1 246 0
	fcmpu 7,31,13
	bnl+ 7,.L84
	fmr 31,13
.L84:
	fcmpu 7,12,13
	bnl+ 7,.L87
	fmr 12,13
.LVL34:
.L87:
	fcmpu 7,31,12
	cror 30,28,30
	bne- 7,.L90
	fcmpu 7,12,13
	bne- 7,.L93
	fadd 13,29,28
.LVL35:
.L167:
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
.LVL36:
.L163:
	fmul 0,13,0
	b .L96
.LVL37:
.L93:
	fadd 0,31,12
	fsub 13,28,29
.LVL38:
.L164:
	fdiv 0,31,0
	fmadd 0,13,0,29
	b .L96
.LVL39:
.L90:
	fadd 0,31,12
	fsub 13,29,28
	fdiv 0,12,0
	fmadd 0,13,0,28
.LVL40:
.L96:
	stfd 0,40(27)
	.loc 1 251 0
	lfd 13,48(29)
	lfd 0,48(30)
	fcmpu 7,13,0
	blt- 7,.L97
	bne- 7,.L160
	lfd 13,40(29)
	lfd 0,40(30)
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L97
.L160:
	mr 0,30
	mr 30,29
	mr 29,0
.LVL41:
.L97:
	.loc 1 252 0
	lfd 13,48(31)
	lfd 0,48(28)
	fcmpu 7,13,0
	blt- 7,.L102
	bne- 7,.L161
	lfd 13,40(31)
	lfd 0,40(28)
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L102
.L161:
	mr 0,28
	mr 28,31
	mr 31,0
.LVL42:
.L102:
	.loc 1 253 0
	lfd 13,48(29)
	lfd 0,48(31)
	fcmpu 7,13,0
	blt- 7,.L107
	bne- 7,.L162
	lfd 13,40(29)
	lfd 0,40(31)
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L107
.L162:
	mr 0,31
	mr 9,28
	mr 31,29
	mr 28,30
	mr 29,0
	mr 30,9
.LVL43:
.L107:
	.loc 1 255 0
	lfd 29,48(31)
	lfd 30,48(30)
	fcmpu 7,29,30
	blt- 7,.L112
	bne- 7,.L114
	lfd 13,40(31)
	lfd 0,40(30)
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L112
.L114:
	.loc 1 257 0
	lis 9,.LC3@ha
	fadd 0,29,30
	lfs 13,.LC3@l(9)
	b .L165
.LVL44:
.L112:
	.loc 1 258 0
	lfd 28,48(28)
	fcmpu 7,30,28
	blt- 7,.L118
	bne- 7,.L120
	lfd 13,40(30)
	lfd 0,40(28)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L120
.L118:
	.loc 1 260 0
	mr 3,29
	mr 4,31
	mr 5,30
	bl __gl_transEval
.LVL45:
	.loc 1 261 0
	mr 3,31
	.loc 1 260 0
	fmr 31,1
.LVL46:
	.loc 1 261 0
	mr 4,30
	mr 5,28
	bl __gl_transEval
	.loc 1 262 0
	lis 9,.LC0@ha
	fadd 0,31,1
.LVL47:
	lfd 13,.LC0@l(9)
	fcmpu 7,0,13
	bnl+ 7,.L124
	fneg 31,31
	fneg 1,1
.L124:
	.loc 1 263 0
	fcmpu 7,31,13
	bnl+ 7,.L127
	fmr 31,13
.L127:
	fcmpu 7,1,13
	bnl+ 7,.L130
	fmr 1,13
.L130:
	fcmpu 7,31,1
	cror 30,28,30
	bne- 7,.L133
	fcmpu 7,1,13
	bne- 7,.L136
	fadd 13,29,30
	b .L168
.L136:
	fadd 0,31,1
	fsub 13,30,29
	b .L166
.L133:
	fadd 0,31,1
	fsub 13,29,30
	fdiv 0,1,0
	fmadd 0,13,0,30
	b .L155
.LVL48:
.L120:
	.loc 1 266 0
	mr 4,31
	mr 3,29
	mr 5,30
	bl __gl_transSign
.LVL49:
	.loc 1 267 0
	mr 3,29
	mr 4,28
	mr 5,30
	.loc 1 266 0
	fmr 31,1
.LVL50:
	.loc 1 267 0
	bl __gl_transSign
	fneg 12,1
.LVL51:
	.loc 1 268 0
	lis 9,.LC0@ha
	lfd 13,.LC0@l(9)
	fadd 0,31,12
	fcmpu 7,0,13
	bnl+ 7,.L140
	fneg 31,31
	fmr 12,1
.L140:
	.loc 1 269 0
	fcmpu 7,31,13
	bnl+ 7,.L143
	fmr 31,13
.L143:
	fcmpu 7,12,13
	bnl+ 7,.L146
	fmr 12,13
.LVL52:
.L146:
	fcmpu 7,31,12
	cror 30,28,30
	bne- 7,.L149
	fcmpu 7,12,13
	bne- 7,.L152
	fadd 13,29,28
.LVL53:
.L168:
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
.LVL54:
.L165:
	fmul 0,13,0
	b .L155
.LVL55:
.L152:
	fadd 0,31,12
	fsub 13,28,29
.LVL56:
.L166:
	fdiv 0,31,0
	fmadd 0,13,0,29
	b .L155
.LVL57:
.L149:
	fadd 0,31,12
	fsub 13,29,28
	fdiv 0,12,0
	fmadd 0,13,0,28
.LVL58:
.L155:
	stfd 0,48(27)
	.loc 1 271 0
	lwz 0,68(1)
	lmw 27,12(1)
.LVL59:
	lfd 28,32(1)
	mtlr 0
	lfd 29,40(1)
	lfd 30,48(1)
	lfd 31,56(1)
.LVL60:
	addi 1,1,64
	blr
.LFE8:
	.size	__gl_edgeIntersect, .-__gl_edgeIntersect
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC3:
	.4byte	1056964608
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
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI1-.LFB8
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x9f
	.uleb128 0x9
	.byte	0x9e
	.uleb128 0xa
	.byte	0x9d
	.uleb128 0xb
	.byte	0x9c
	.uleb128 0xc
	.byte	0x9b
	.uleb128 0xd
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI7-.LCFI2
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.align 2
.LEFDE12:
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
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB8-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL59-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL59-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL59-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL59-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL59-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL58-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/include/GL/gl.h"
	.file 3 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/mesh.h"
	.section	.debug_info
	.4byte	0x4a7
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x1
	.4byte	.LASF41
	.4byte	.LASF42
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
	.byte	0x31
	.4byte	0xa6
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x40
	.byte	0x3
	.byte	0x31
	.4byte	0x11f
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x3
	.byte	0x7a
	.4byte	0x232
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x3
	.byte	0x7b
	.4byte	0x232
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x3
	.byte	0x7c
	.4byte	0x238
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x3
	.byte	0x7d
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x3
	.byte	0x80
	.4byte	0x23e
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
	.4byte	.LASF20
	.byte	0x3
	.byte	0x82
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x3
	.byte	0x32
	.4byte	0x12a
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x18
	.byte	0x3
	.byte	0x32
	.4byte	0x199
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x3
	.byte	0x86
	.4byte	0x24e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x3
	.byte	0x87
	.4byte	0x24e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x3
	.byte	0x88
	.4byte	0x238
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x3
	.byte	0x89
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x3
	.byte	0x8c
	.4byte	0x24e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x3
	.byte	0x8d
	.4byte	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x3
	.byte	0x8e
	.4byte	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x3
	.byte	0x33
	.4byte	0x1a4
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x20
	.byte	0x3
	.byte	0x33
	.4byte	0x221
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x3
	.byte	0x92
	.4byte	0x238
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"Sym"
	.byte	0x3
	.byte	0x93
	.4byte	0x238
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x3
	.byte	0x94
	.4byte	0x238
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x3
	.byte	0x95
	.4byte	0x238
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"Org"
	.byte	0x3
	.byte	0x96
	.4byte	0x232
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x3
	.byte	0x97
	.4byte	0x24e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x3
	.byte	0x9a
	.4byte	0x254
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x3
	.byte	0x9b
	.4byte	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x3
	.byte	0x35
	.4byte	0x22c
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x1
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9b
	.uleb128 0xb
	.byte	0x4
	.4byte	0x199
	.uleb128 0xc
	.4byte	0x89
	.4byte	0x24e
	.uleb128 0xd
	.4byte	0x2c
	.byte	0x2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x11f
	.uleb128 0xb
	.byte	0x4
	.4byte	0x221
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF32
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x51
	.4byte	0x28e
	.uleb128 0xf
	.string	"u"
	.byte	0x1
	.byte	0x2f
	.4byte	0x232
	.4byte	.LLST1
	.uleb128 0x10
	.string	"v"
	.byte	0x1
	.byte	0x2f
	.4byte	0x232
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF33
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.4byte	0x89
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x51
	.4byte	0x2e8
	.uleb128 0x10
	.string	"u"
	.byte	0x1
	.byte	0x36
	.4byte	0x232
	.byte	0x1
	.byte	0x53
	.uleb128 0x10
	.string	"v"
	.byte	0x1
	.byte	0x36
	.4byte	0x232
	.byte	0x1
	.byte	0x54
	.uleb128 0x10
	.string	"w"
	.byte	0x1
	.byte	0x36
	.4byte	0x232
	.byte	0x1
	.byte	0x55
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0x42
	.4byte	0x89
	.byte	0x2
	.byte	0x90
	.uleb128 0x2a
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x1
	.byte	0x42
	.4byte	0x89
	.4byte	.LLST3
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF36
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.4byte	0x89
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x51
	.4byte	0x341
	.uleb128 0x10
	.string	"u"
	.byte	0x1
	.byte	0x54
	.4byte	0x232
	.byte	0x1
	.byte	0x53
	.uleb128 0x10
	.string	"v"
	.byte	0x1
	.byte	0x54
	.4byte	0x232
	.byte	0x1
	.byte	0x54
	.uleb128 0x10
	.string	"w"
	.byte	0x1
	.byte	0x54
	.4byte	0x232
	.byte	0x1
	.byte	0x55
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0x5a
	.4byte	0x89
	.byte	0x2
	.byte	0x90
	.uleb128 0x2a
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x1
	.byte	0x5a
	.4byte	0x89
	.byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF37
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x89
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x51
	.4byte	0x39b
	.uleb128 0x10
	.string	"u"
	.byte	0x1
	.byte	0x6d
	.4byte	0x232
	.byte	0x1
	.byte	0x53
	.uleb128 0x10
	.string	"v"
	.byte	0x1
	.byte	0x6d
	.4byte	0x232
	.byte	0x1
	.byte	0x54
	.uleb128 0x10
	.string	"w"
	.byte	0x1
	.byte	0x6d
	.4byte	0x232
	.byte	0x1
	.byte	0x55
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0x79
	.4byte	0x89
	.byte	0x2
	.byte	0x90
	.uleb128 0x2a
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x1
	.byte	0x79
	.4byte	0x89
	.4byte	.LLST6
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF38
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.4byte	0x89
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x51
	.4byte	0x3f4
	.uleb128 0x10
	.string	"u"
	.byte	0x1
	.byte	0x8b
	.4byte	0x232
	.byte	0x1
	.byte	0x53
	.uleb128 0x10
	.string	"v"
	.byte	0x1
	.byte	0x8b
	.4byte	0x232
	.byte	0x1
	.byte	0x54
	.uleb128 0x10
	.string	"w"
	.byte	0x1
	.byte	0x8b
	.4byte	0x232
	.byte	0x1
	.byte	0x55
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0x91
	.4byte	0x89
	.byte	0x2
	.byte	0x90
	.uleb128 0x2a
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x1
	.byte	0x91
	.4byte	0x89
	.byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF39
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x51
	.4byte	0x433
	.uleb128 0xf
	.string	"u"
	.byte	0x1
	.byte	0xa0
	.4byte	0x232
	.4byte	.LLST9
	.uleb128 0x10
	.string	"v"
	.byte	0x1
	.byte	0xa0
	.4byte	0x232
	.byte	0x1
	.byte	0x54
	.uleb128 0x10
	.string	"w"
	.byte	0x1
	.byte	0xa0
	.4byte	0x232
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF43
	.byte	0x1
	.byte	0xd9
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST10
	.uleb128 0xf
	.string	"o1"
	.byte	0x1
	.byte	0xd2
	.4byte	0x232
	.4byte	.LLST11
	.uleb128 0xf
	.string	"d1"
	.byte	0x1
	.byte	0xd2
	.4byte	0x232
	.4byte	.LLST12
	.uleb128 0xf
	.string	"o2"
	.byte	0x1
	.byte	0xd3
	.4byte	0x232
	.4byte	.LLST13
	.uleb128 0xf
	.string	"d2"
	.byte	0x1
	.byte	0xd3
	.4byte	0x232
	.4byte	.LLST14
	.uleb128 0xf
	.string	"v"
	.byte	0x1
	.byte	0xd4
	.4byte	0x232
	.4byte	.LLST15
	.uleb128 0x14
	.string	"z1"
	.byte	0x1
	.byte	0xda
	.4byte	0x89
	.4byte	.LLST16
	.uleb128 0x14
	.string	"z2"
	.byte	0x1
	.byte	0xda
	.4byte	0x89
	.4byte	.LLST17
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x91
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x4ab
	.4byte	0x25a
	.string	"__gl_vertLeq"
	.4byte	0x28e
	.string	"__gl_edgeEval"
	.4byte	0x2e8
	.string	"__gl_edgeSign"
	.4byte	0x341
	.string	"__gl_transEval"
	.4byte	0x39b
	.string	"__gl_transSign"
	.4byte	0x3f4
	.string	"__gl_vertCCW"
	.4byte	0x433
	.string	"__gl_edgeIntersect"
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
.LASF14:
	.string	"GLUvertex"
.LASF39:
	.string	"__gl_vertCCW"
.LASF27:
	.string	"Lnext"
.LASF25:
	.string	"GLUhalfEdge"
.LASF12:
	.string	"GLdouble"
.LASF17:
	.string	"anEdge"
.LASF22:
	.string	"trail"
.LASF29:
	.string	"activeRegion"
.LASF18:
	.string	"data"
.LASF30:
	.string	"winding"
.LASF36:
	.string	"__gl_edgeSign"
.LASF20:
	.string	"pqHandle"
.LASF19:
	.string	"coords"
.LASF10:
	.string	"float"
.LASF43:
	.string	"__gl_edgeIntersect"
.LASF6:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF7:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF38:
	.string	"__gl_transSign"
.LASF13:
	.string	"double"
.LASF24:
	.string	"inside"
.LASF0:
	.string	"unsigned int"
.LASF42:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\freespace2wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF33:
	.string	"__gl_edgeEval"
.LASF8:
	.string	"char"
.LASF21:
	.string	"GLUface"
.LASF23:
	.string	"marked"
.LASF34:
	.string	"gapL"
.LASF11:
	.string	"GLboolean"
.LASF35:
	.string	"gapR"
.LASF41:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/geom.c"
.LASF5:
	.string	"long long int"
.LASF40:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF28:
	.string	"Lface"
.LASF26:
	.string	"Onext"
.LASF37:
	.string	"__gl_transEval"
.LASF4:
	.string	"short int"
.LASF32:
	.string	"__gl_vertLeq"
.LASF9:
	.string	"long int"
.LASF3:
	.string	"signed char"
.LASF31:
	.string	"ActiveRegion"
.LASF15:
	.string	"next"
.LASF16:
	.string	"prev"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
