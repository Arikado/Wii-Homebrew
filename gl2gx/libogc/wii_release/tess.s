	.file	"tess.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.type	noBegin, @function
noBegin:
.LFB2:
	.file 1 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/tess.c"
	.loc 1 60 0
.LVL0:
	.loc 1 60 0
	blr
.LFE2:
	.size	noBegin, .-noBegin
	.align 2
	.type	noEdgeFlag, @function
noEdgeFlag:
.LFB3:
	.loc 1 61 0
.LVL1:
	.loc 1 61 0
	blr
.LFE3:
	.size	noEdgeFlag, .-noEdgeFlag
	.align 2
	.type	noVertex, @function
noVertex:
.LFB4:
	.loc 1 62 0
.LVL2:
	.loc 1 62 0
	blr
.LFE4:
	.size	noVertex, .-noVertex
	.align 2
	.type	noEnd, @function
noEnd:
.LFB5:
	.loc 1 63 0
	.loc 1 63 0
	blr
.LFE5:
	.size	noEnd, .-noEnd
	.align 2
	.type	noError, @function
noError:
.LFB6:
	.loc 1 64 0
.LVL3:
	.loc 1 64 0
	blr
.LFE6:
	.size	noError, .-noError
	.align 2
	.type	noCombine, @function
noCombine:
.LFB7:
	.loc 1 66 0
.LVL4:
	.loc 1 66 0
	blr
.LFE7:
	.size	noCombine, .-noCombine
	.align 2
	.type	noMesh, @function
noMesh:
.LFB8:
	.loc 1 67 0
.LVL5:
	.loc 1 67 0
	blr
.LFE8:
	.size	noMesh, .-noMesh
	.align 2
	.globl __gl_noBeginData
	.type	__gl_noBeginData, @function
__gl_noBeginData:
.LFB9:
	.loc 1 71 0
.LVL6:
	.loc 1 71 0
	blr
.LFE9:
	.size	__gl_noBeginData, .-__gl_noBeginData
	.align 2
	.globl __gl_noEdgeFlagData
	.type	__gl_noEdgeFlagData, @function
__gl_noEdgeFlagData:
.LFB10:
	.loc 1 73 0
.LVL7:
	.loc 1 73 0
	blr
.LFE10:
	.size	__gl_noEdgeFlagData, .-__gl_noEdgeFlagData
	.align 2
	.globl __gl_noVertexData
	.type	__gl_noVertexData, @function
__gl_noVertexData:
.LFB11:
	.loc 1 75 0
.LVL8:
	.loc 1 75 0
	blr
.LFE11:
	.size	__gl_noVertexData, .-__gl_noVertexData
	.align 2
	.globl __gl_noEndData
	.type	__gl_noEndData, @function
__gl_noEndData:
.LFB12:
	.loc 1 76 0
.LVL9:
	.loc 1 76 0
	blr
.LFE12:
	.size	__gl_noEndData, .-__gl_noEndData
	.align 2
	.globl __gl_noErrorData
	.type	__gl_noErrorData, @function
__gl_noErrorData:
.LFB13:
	.loc 1 78 0
.LVL10:
	.loc 1 78 0
	blr
.LFE13:
	.size	__gl_noErrorData, .-__gl_noErrorData
	.align 2
	.globl __gl_noCombineData
	.type	__gl_noCombineData, @function
__gl_noCombineData:
.LFB14:
	.loc 1 83 0
.LVL11:
	.loc 1 83 0
	blr
.LFE14:
	.size	__gl_noCombineData, .-__gl_noCombineData
	.align 2
	.globl gluTessProperty
	.type	gluTessProperty, @function
gluTessProperty:
.LFB19:
	.loc 1 200 0
.LVL12:
	mflr 0
.LCFI0:
	stwu 1,-24(1)
.LCFI1:
	mr 10,3
	stw 0,28(1)
.LCFI2:
	.loc 1 203 0
	lis 0,0x1
	ori 0,0,34605
	cmpw 7,4,0
	beq- 7,.L30
.LVL13:
	xoris 0,4,0xfffe
	cmpwi 7,0,-30930
	beq 7,.L31
	xoris 0,4,0xfffe
	cmpwi 7,0,-30932
	bne 7,.L45
	b .L29
.L31:
	.loc 1 205 0
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	fcmpu 7,1,0
	blt- 7,.L32
	lis 9,.LC2@ha
	lfs 0,.LC2@l(9)
	fcmpu 7,1,0
	bgt+ 7,.L32
	.loc 1 206 0
	stfd 1,88(3)
	b .L44
.L29:
	.loc 1 210 0
	lis 9,.LC4@ha
	lfs 0,.LC4@l(9)
	fcmpu 7,1,0
	cror 30,29,30
	beq- 7,.L36
	fctiwz 0,1
	addi 9,1,8
	stfiwx 0,0,9
	lwz 11,8(1)
.LVL14:
	b .L37
.LVL15:
.L36:
	fsub 0,1,0
	addi 9,1,12
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 11,12(1)
.LVL16:
	addis 11,11,0x8000
.L37:
	.loc 1 211 0
	lis 0,0x4330
	stw 11,20(1)
	stw 0,16(1)
	lis 9,.LC6@ha
	lfs 13,.LC6@l(9)
	lfd 0,16(1)
	fsub 0,0,13
	fcmpu 7,0,1
	bne- 7,.L32
	.loc 1 213 0
	addis 9,11,0xfffe
	addi 9,9,30942
	cmplwi 7,9,4
	bgt- 7,.L30
	.loc 1 219 0
	stw 11,96(10)
	b .L44
.L30:
	.loc 1 226 0
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	fcmpu 7,1,0
	crnot 30,30
	mfcr 0
	rlwinm 0,0,31,1
	stb 0,121(10)
	b .L44
.LVL17:
.L45:
	.loc 1 230 0
	lwz 0,3376(3)
	lis 9,__gl_noErrorData@ha
	la 9,__gl_noErrorData@l(9)
	lis 3,0x1
	cmpw 7,0,9
	ori 3,3,35364
	bne+ 7,.L47
	lwz 10,12(10)
.LVL18:
	lis 3,0x1
	ori 3,3,35364
	mtctr 10
	b .L46
.LVL19:
.L32:
	.loc 1 233 0
	lwz 0,3376(10)
	lis 9,__gl_noErrorData@ha
	la 9,__gl_noErrorData@l(9)
	cmpw 7,0,9
	beq- 7,.L42
	lis 3,0x1
	ori 3,3,35365
.L47:
	lwz 4,3640(10)
.LVL20:
	mtctr 0
	bctrl
.LVL21:
	b .L44
.LVL22:
.L42:
	lwz 10,12(10)
.LVL23:
	lis 3,0x1
.LVL24:
	ori 3,3,35365
	mtctr 10
.L46:
	bctrl
.LVL25:
.LVL26:
.L44:
	.loc 1 234 0
	lwz 0,28(1)
	addi 1,1,24
	mtlr 0
	blr
.LFE19:
	.size	gluTessProperty, .-gluTessProperty
	.align 2
	.globl gluGetTessProperty
	.type	gluGetTessProperty, @function
gluGetTessProperty:
.LFB20:
	.loc 1 239 0
.LVL27:
	mflr 0
.LCFI3:
	stwu 1,-16(1)
.LCFI4:
	mr 11,3
	stw 0,20(1)
.LCFI5:
	.loc 1 240 0
	lis 0,0x1
	ori 0,0,34605
	cmpw 7,4,0
	beq- 7,.L51
.LVL28:
	xoris 0,4,0xfffe
	cmpwi 7,0,-30930
	beq 7,.L52
	xoris 0,4,0xfffe
	cmpwi 7,0,-30932
	bne 7,.L57
	b .L50
.L52:
	.loc 1 244 0
	lfd 0,88(3)
	b .L58
.L50:
	.loc 1 252 0
	lwz 0,96(3)
	b .L59
.L51:
	.loc 1 256 0
	lbz 0,121(3)
.LVL29:
.L59:
	stw 0,12(1)
	lis 0,0x4330
	stw 0,8(1)
	lis 9,.LC6@ha
	lfs 13,.LC6@l(9)
	lfd 0,8(1)
	fsub 0,0,13
.L58:
	stfd 0,0(5)
	b .L56
.LVL30:
.L57:
	.loc 1 259 0
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	.loc 1 260 0
	lis 9,__gl_noErrorData@ha
	la 9,__gl_noErrorData@l(9)
	.loc 1 259 0
	stfd 0,0(5)
	.loc 1 260 0
	lwz 0,3376(3)
	cmpw 7,0,9
	beq- 7,.L54
.LVL31:
	lis 3,0x1
.LVL32:
	lwz 4,3640(11)
.LVL33:
	ori 3,3,35364
	mtctr 0
	bctrl
.LVL34:
	b .L56
.LVL35:
.L54:
	lwz 11,12(11)
	lis 3,0x1
.LVL36:
	ori 3,3,35364
	mtctr 11
	bctrl
.LVL37:
.LVL38:
.L56:
	.loc 1 263 0
	lwz 0,20(1)
	addi 1,1,16
	mtlr 0
	blr
.LFE20:
	.size	gluGetTessProperty, .-gluGetTessProperty
	.align 2
	.globl gluTessNormal
	.type	gluTessNormal, @function
gluTessNormal:
.LFB21:
	.loc 1 267 0
.LVL39:
	.loc 1 270 0
	stfd 3,32(3)
	.loc 1 268 0
	stfd 1,16(3)
	.loc 1 269 0
	stfd 2,24(3)
	.loc 1 271 0
	blr
.LFE21:
	.size	gluTessNormal, .-gluTessNormal
	.align 2
	.globl gluTessCallback
	.type	gluTessCallback, @function
gluTessCallback:
.LFB22:
	.loc 1 275 0
.LVL40:
	mflr 0
.LCFI6:
	stwu 1,-8(1)
.LCFI7:
	.loc 1 276 0
	addis 4,4,0xfffe
.LVL41:
	.loc 1 275 0
	mr 11,3
	stw 0,12(1)
.LCFI8:
	.loc 1 276 0
	addi 0,4,30972
	cmplwi 7,0,12
	bgt- 7,.L63
.LVL42:
	lis 9,.L77@ha
	slwi 0,0,2
	la 9,.L77@l(9)
	cmpwi 7,5,0
	lwzx 0,9,0
	add 0,0,9
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L77:
	.long .L64-.L77
	.long .L65-.L77
	.long .L66-.L77
	.long .L67-.L77
	.long .L68-.L77
	.long .L69-.L77
	.long .L70-.L77
	.long .L71-.L77
	.long .L72-.L77
	.long .L73-.L77
	.long .L74-.L77
	.long .L75-.L77
	.long .L76-.L77
	.section	".text"
.L64:
	.loc 1 278 0
	bne+ 7,.L78
	lis 9,noBegin@ha
	la 5,noBegin@l(9)
.LVL43:
.L78:
	stw 5,128(11)
	b .L109
.L70:
	.loc 1 281 0
	bne+ 7,.L81
	lis 9,__gl_noBeginData@ha
	la 5,__gl_noBeginData@l(9)
.LVL44:
.L81:
	stw 5,3360(11)
	b .L109
.L68:
	.loc 1 285 0
	bne+ 7,.L83
	lis 9,noEdgeFlag@ha
	la 9,noEdgeFlag@l(9)
	b .L85
.L83:
	mr 9,5
.L85:
	.loc 1 290 0
	addic 10,5,-1
	subfe 0,10,5
	.loc 1 285 0
	stw 9,132(11)
	.loc 1 290 0
	stb 0,120(11)
	b .L109
.L74:
	.loc 1 293 0
	bne+ 7,.L86
	lis 9,__gl_noEdgeFlagData@ha
	la 9,__gl_noEdgeFlagData@l(9)
	b .L88
.L86:
	mr 9,5
.L88:
	.loc 1 298 0
	addic 10,5,-1
	subfe 0,10,5
	.loc 1 293 0
	stw 9,3364(11)
	.loc 1 298 0
	stb 0,120(11)
	b .L109
.L65:
	.loc 1 301 0
	bne+ 7,.L89
	lis 9,noVertex@ha
	la 5,noVertex@l(9)
.LVL45:
.L89:
	stw 5,136(11)
	b .L109
.L71:
	.loc 1 305 0
	bne+ 7,.L91
	lis 9,__gl_noVertexData@ha
	la 5,__gl_noVertexData@l(9)
.LVL46:
.L91:
	stw 5,3368(11)
	b .L109
.L66:
	.loc 1 309 0
	bne+ 7,.L93
	lis 9,noEnd@ha
	la 5,noEnd@l(9)
.LVL47:
.L93:
	stw 5,140(11)
	b .L109
.L72:
	.loc 1 312 0
	bne+ 7,.L95
	lis 9,__gl_noEndData@ha
	la 5,__gl_noEndData@l(9)
.LVL48:
.L95:
	stw 5,3372(11)
	b .L109
.L67:
	.loc 1 316 0
	bne+ 7,.L97
	lis 9,noError@ha
	la 5,noError@l(9)
.LVL49:
.L97:
	stw 5,12(11)
	b .L109
.L73:
	.loc 1 319 0
	bne+ 7,.L99
	lis 9,__gl_noErrorData@ha
	la 5,__gl_noErrorData@l(9)
.LVL50:
.L99:
	stw 5,3376(11)
	b .L109
.L69:
	.loc 1 323 0
	bne+ 7,.L101
	lis 9,noCombine@ha
	la 5,noCombine@l(9)
.LVL51:
.L101:
	stw 5,116(11)
	b .L109
.L75:
	.loc 1 327 0
	bne+ 7,.L103
	lis 9,__gl_noCombineData@ha
	la 5,__gl_noCombineData@l(9)
.LVL52:
.L103:
	stw 5,3380(11)
	b .L109
.L76:
	.loc 1 335 0
	bne+ 7,.L105
	lis 9,noMesh@ha
	la 5,noMesh@l(9)
.LVL53:
.L105:
	stw 5,144(11)
	b .L109
.L63:
	.loc 1 338 0
	lwz 0,3376(3)
	lis 9,__gl_noErrorData@ha
	la 9,__gl_noErrorData@l(9)
	cmpw 7,0,9
	beq- 7,.L107
.LVL54:
	lis 3,0x1
.LVL55:
	lwz 4,3640(11)
	ori 3,3,35364
	mtctr 0
	bctrl
.LVL56:
	b .L109
.LVL57:
.L107:
	lwz 11,12(11)
	lis 3,0x1
.LVL58:
	ori 3,3,35364
	mtctr 11
	bctrl
.LVL59:
.LVL60:
.L109:
	.loc 1 341 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE22:
	.size	gluTessCallback, .-gluTessCallback
	.align 2
	.type	GotoState, @function
GotoState:
.LFB17:
	.loc 1 157 0
.LVL61:
	stwu 1,-24(1)
.LCFI9:
	mflr 0
.LCFI10:
	.loc 1 180 0
	lis 9,__gl_noErrorData@ha
	.loc 1 157 0
	stmw 29,12(1)
.LCFI11:
	mr 31,3
	mr 29,4
	.loc 1 180 0
	la 30,__gl_noErrorData@l(9)
	.loc 1 157 0
	stw 0,28(1)
.LCFI12:
	b .L138
.LVL62:
.L112:
	.loc 1 162 0
	cmplw 7,0,29
	bge- 7,.L113
	.loc 1 163 0
	cmpwi 7,0,0
	beq- 7,.L115
	cmpwi 7,0,1
	bne+ 7,.L138
	b .L116
.L115:
	.loc 1 165 0
	lwz 0,3376(31)
	cmpw 7,0,30
	beq- 7,.L117
	lis 3,0x1
	lwz 4,3640(31)
	ori 3,3,34615
	mtctr 0
	bctrl
	b .L119
.LVL63:
.L117:
	lwz 0,12(31)
	lis 3,0x1
	ori 3,3,34615
	mtctr 0
	bctrl
.L119:
	.loc 1 166 0
	mr 3,31
	li 4,0
	bl gluTessBeginPolygon
	b .L138
.LVL64:
.L116:
	.loc 1 169 0
	lwz 0,3376(31)
	cmpw 7,0,30
	beq- 7,.L120
	lis 3,0x1
	lwz 4,3640(31)
	ori 3,3,34616
	mtctr 0
	bctrl
	b .L122
.LVL65:
.L120:
	lwz 0,12(31)
	lis 3,0x1
	ori 3,3,34616
	mtctr 0
	bctrl
.L122:
	.loc 1 170 0
	mr 3,31
	bl gluTessBeginContour
	b .L138
.LVL66:
.L113:
	.loc 1 174 0
	cmpwi 7,0,1
	beq- 7,.L123
	cmpwi 7,0,2
	bne+ 7,.L138
	.loc 1 176 0
	lwz 0,3376(31)
	cmpw 7,0,30
	beq- 7,.L125
	lis 3,0x1
	lwz 4,3640(31)
	ori 3,3,34618
	mtctr 0
	bctrl
	b .L127
.LVL67:
.L125:
	lwz 0,12(31)
	lis 3,0x1
	ori 3,3,34618
	mtctr 0
	bctrl
.L127:
	.loc 1 177 0
	mr 3,31
	bl gluTessEndContour
	b .L138
.LVL68:
.L123:
	.loc 1 180 0
	lwz 0,3376(31)
	cmpw 7,0,30
	beq- 7,.L128
	lis 3,0x1
	lwz 4,3640(31)
	ori 3,3,34617
	mtctr 0
	bctrl
	b .L130
.LVL69:
.L128:
	lwz 0,12(31)
	lis 3,0x1
	ori 3,3,34617
	mtctr 0
	bctrl
.L130:
.LBB4:
.LBB5:
	.loc 1 146 0
	lwz 3,8(31)
	cmpwi 7,3,0
	beq- 7,.L131
	.loc 1 147 0
	bl __gl_meshDeleteMesh
.L131:
	.loc 1 149 0
	li 0,0
	.loc 1 151 0
	stw 0,8(31)
	.loc 1 149 0
	stw 0,0(31)
	.loc 1 150 0
	stw 0,4(31)
.LVL70:
.L138:
.LBE5:
.LBE4:
	.loc 1 158 0
	lwz 0,0(31)
	cmpw 7,0,29
	bne+ 7,.L112
	.loc 1 187 0
	lwz 0,28(1)
	lmw 29,12(1)
.LVL71:
	addi 1,1,24
	mtlr 0
	blr
.LFE17:
	.size	GotoState, .-GotoState
	.align 2
	.globl gluTessEndContour
	.type	gluTessEndContour, @function
gluTessEndContour:
.LFB29:
	.loc 1 492 0
.LVL72:
	mflr 0
.LCFI13:
	stwu 1,-16(1)
.LCFI14:
	stw 31,12(1)
.LCFI15:
	mr 31,3
	stw 0,20(1)
.LCFI16:
	.loc 1 493 0
	lwz 0,0(3)
	cmpwi 7,0,2
	beq- 7,.L140
	li 4,2
	bl GotoState
.LVL73:
.L140:
	.loc 1 494 0
	li 0,1
	stw 0,0(31)
	.loc 1 495 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL74:
	addi 1,1,16
	mtlr 0
	blr
.LFE29:
	.size	gluTessEndContour, .-gluTessEndContour
	.align 2
	.globl gluTessBeginContour
	.type	gluTessBeginContour, @function
gluTessBeginContour:
.LFB28:
	.loc 1 475 0
.LVL75:
	mflr 0
.LCFI17:
	stwu 1,-16(1)
.LCFI18:
	stw 31,12(1)
.LCFI19:
	mr 31,3
	stw 0,20(1)
.LCFI20:
	.loc 1 476 0
	lwz 0,0(3)
	cmpwi 7,0,1
	beq- 7,.L144
	li 4,1
	bl GotoState
.LVL76:
.L144:
	.loc 1 480 0
	lwz 0,152(31)
	cmpwi 7,0,0
	.loc 1 478 0
	li 0,2
	stw 0,0(31)
	.loc 1 479 0
	li 0,0
	stw 0,4(31)
	.loc 1 480 0
	ble- 7,.L148
	.loc 1 485 0
	li 0,1
	stb 0,148(31)
.L148:
	.loc 1 487 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL77:
	addi 1,1,16
	mtlr 0
	blr
.LFE28:
	.size	gluTessBeginContour, .-gluTessBeginContour
	.align 2
	.globl gluNextContour
	.type	gluNextContour, @function
gluNextContour:
.LFB32:
	.loc 1 619 0
.LVL78:
	mflr 0
.LCFI21:
	stwu 1,-24(1)
.LCFI22:
	stmw 29,12(1)
.LCFI23:
	mr 29,3
	stw 0,28(1)
.LCFI24:
	.loc 1 620 0
	bl gluTessEndContour
.LVL79:
	.loc 1 622 0
	lwz 0,28(1)
	.loc 1 621 0
	mr 3,29
	.loc 1 622 0
	lmw 29,12(1)
.LVL80:
	addi 1,1,24
	mtlr 0
	.loc 1 621 0
	b gluTessBeginContour
.LVL81:
.LFE32:
	.size	gluNextContour, .-gluNextContour
	.align 2
	.globl gluTessBeginPolygon
	.type	gluTessBeginPolygon, @function
gluTessBeginPolygon:
.LFB27:
	.loc 1 461 0
.LVL82:
	mflr 0
.LCFI25:
	stwu 1,-16(1)
.LCFI26:
	stmw 30,8(1)
.LCFI27:
	mr 31,3
	stw 0,20(1)
.LCFI28:
	.loc 1 461 0
	mr 30,4
	.loc 1 462 0
	lwz 0,0(3)
	cmpwi 7,0,0
	beq- 7,.L152
.LVL83:
	li 4,0
	bl GotoState
.LVL84:
.L152:
	.loc 1 465 0
	li 9,0
	.loc 1 464 0
	li 0,1
	.loc 1 469 0
	stw 30,3640(31)
	.loc 1 464 0
	stw 0,0(31)
	.loc 1 467 0
	stw 9,8(31)
	.loc 1 465 0
	stw 9,152(31)
	.loc 1 466 0
	stb 9,148(31)
	.loc 1 470 0
	lwz 0,20(1)
	lmw 30,8(1)
.LVL85:
	addi 1,1,16
	mtlr 0
	blr
.LFE27:
	.size	gluTessBeginPolygon, .-gluTessBeginPolygon
	.align 2
	.globl gluBeginPolygon
	.type	gluBeginPolygon, @function
gluBeginPolygon:
.LFB31:
	.loc 1 610 0
.LVL86:
	mflr 0
.LCFI29:
	stwu 1,-24(1)
.LCFI30:
	.loc 1 611 0
	li 4,0
	.loc 1 610 0
	stmw 29,12(1)
.LCFI31:
	mr 29,3
	stw 0,28(1)
.LCFI32:
	.loc 1 611 0
	bl gluTessBeginPolygon
.LVL87:
	.loc 1 613 0
	lwz 0,28(1)
	.loc 1 612 0
	mr 3,29
	.loc 1 613 0
	lmw 29,12(1)
.LVL88:
	addi 1,1,24
	mtlr 0
	.loc 1 612 0
	b gluTessBeginContour
.LVL89:
.LFE31:
	.size	gluBeginPolygon, .-gluBeginPolygon
	.align 2
	.type	AddVertex, @function
AddVertex:
.LFB23:
	.loc 1 344 0
.LVL90:
	mflr 0
.LCFI33:
	stwu 1,-24(1)
.LCFI34:
	stmw 28,8(1)
.LCFI35:
	mr 29,3
	stw 0,28(1)
.LCFI36:
	.loc 1 344 0
	mr 30,4
	mr 28,5
	.loc 1 347 0
	lwz 31,4(3)
.LVL91:
	.loc 1 348 0
	cmpwi 7,31,0
	bne+ 7,.L158
.LVL92:
	.loc 1 351 0
	lwz 3,8(3)
.LVL93:
	bl __gl_meshMakeEdge
	.loc 1 352 0
	mr. 31,3
.LVL94:
	beq- 0,.L160
	.loc 1 353 0
	lwz 4,4(31)
	bl __gl_meshSplice
	cmpwi 7,3,0
	bne+ 7,.L162
	b .L160
.LVL95:
.L158:
	.loc 1 358 0
	mr 3,31
.LVL96:
	bl __gl_meshSplitEdge
	cmpwi 7,3,0
	beq- 7,.L160
	.loc 1 359 0
	lwz 31,12(31)
.LVL97:
.L162:
	.loc 1 363 0
	lwz 9,16(31)
	.loc 1 373 0
	li 0,1
	.loc 1 376 0
	li 3,1
	.loc 1 363 0
	stw 28,12(9)
	.loc 1 364 0
	lfd 0,0(30)
	lwz 9,16(31)
	stfd 0,16(9)
	.loc 1 365 0
	lfd 0,8(30)
	lwz 9,16(31)
	stfd 0,24(9)
	.loc 1 366 0
	lfd 0,16(30)
	lwz 9,16(31)
	stfd 0,32(9)
	.loc 1 373 0
	stw 0,28(31)
	.loc 1 374 0
	li 0,-1
	lwz 9,4(31)
	stw 0,28(9)
	.loc 1 376 0
	stw 31,4(29)
	b .L164
.L160:
	.loc 1 378 0
	li 3,0
.L164:
	.loc 1 379 0
	lwz 0,28(1)
	lmw 28,8(1)
.LVL98:
	addi 1,1,24
	mtlr 0
	blr
.LFE23:
	.size	AddVertex, .-AddVertex
	.align 2
	.type	EmptyCache, @function
EmptyCache:
.LFB25:
	.loc 1 395 0
.LVL99:
	mflr 0
.LCFI37:
	stwu 1,-24(1)
.LCFI38:
	stmw 29,12(1)
.LCFI39:
	mr 31,3
	stw 0,28(1)
.LCFI40:
	.loc 1 399 0
	bl __gl_meshNewMesh
.LVL100:
	.loc 1 400 0
	cmpwi 7,3,0
	.loc 1 399 0
	stw 3,8(31)
	.loc 1 400 0
	beq- 7,.L167
	.loc 1 402 0
	lwz 9,152(31)
	.loc 1 396 0
	addi 30,31,160
.LVL101:
	.loc 1 402 0
	slwi 9,9,5
	addi 9,9,160
	add 29,31,9
.LVL102:
	b .L169
.LVL103:
.L170:
	.loc 1 403 0
	lwz 5,24(30)
	.loc 1 402 0
	addi 30,30,32
.LVL104:
	.loc 1 403 0
	bl AddVertex
.LVL105:
	cmpwi 7,3,0
	beq- 7,.L167
.L169:
	.loc 1 402 0
	cmplw 7,30,29
	.loc 1 403 0
	mr 4,30
	mr 3,31
	.loc 1 402 0
	blt+ 7,.L170
.LVL106:
	.loc 1 405 0
	li 0,0
	.loc 1 406 0
	li 3,1
.LVL107:
	stb 0,148(31)
	.loc 1 405 0
	stw 0,152(31)
	b .L173
.LVL108:
.L167:
	.loc 1 408 0
	li 3,0
.LVL109:
.L173:
	.loc 1 409 0
	lwz 0,28(1)
	lmw 29,12(1)
.LVL110:
	addi 1,1,24
	mtlr 0
	blr
.LFE25:
	.size	EmptyCache, .-EmptyCache
	.align 2
	.globl gluTessEndPolygon
	.type	gluTessEndPolygon, @function
gluTessEndPolygon:
.LFB30:
	.loc 1 499 0
.LVL111:
	mflr 0
.LCFI41:
	stwu 1,-24(1)
.LCFI42:
	stw 3,12(1)
	stw 0,28(1)
.LCFI43:
	.loc 1 502 0
	addi 0,3,3384
	.loc 1 499 0
	stw 31,20(1)
.LCFI44:
	.loc 1 502 0
	mr 3,0
.LVL112:
	stw 0,8(1)
	bl setjmp
	mr. 31,3
	beq- 0,.L176
	.loc 1 504 0
	lwz 9,12(1)
	lwz 0,3376(9)
	lis 9,__gl_noErrorData@ha
	la 9,__gl_noErrorData@l(9)
	cmpw 7,0,9
	beq- 7,.L178
	lwz 9,12(1)
	lis 3,0x1
	ori 3,3,35366
	mtctr 0
	lwz 4,3640(9)
	bctrl
	b .L211
.L178:
	lwz 9,12(1)
	lis 3,0x1
	ori 3,3,35366
	lwz 9,12(9)
	mtctr 9
	bctrl
	b .L211
.L176:
	.loc 1 508 0
	lwz 9,12(1)
	lwz 0,0(9)
	cmpwi 7,0,1
	beq- 7,.L181
	mr 3,9
.LVL113:
	li 4,1
	bl GotoState
.LVL114:
.L181:
	.loc 1 511 0
	lwz 9,12(1)
	lwz 0,8(9)
	.loc 1 509 0
	stw 31,0(9)
	.loc 1 511 0
	cmpwi 7,0,0
	bne+ 7,.L183
	.loc 1 512 0
	lbz 31,120(9)
	cmpwi 7,31,0
	bne- 7,.L185
	lwz 0,144(9)
	lis 9,noMesh@ha
	la 9,noMesh@l(9)
	cmpw 7,0,9
	bne+ 7,.L185
	.loc 1 519 0
	lwz 3,12(1)
	bl __gl_renderCache
	cmpwi 7,3,0
	beq- 7,.L185
	.loc 1 520 0
	lwz 9,12(1)
	stw 31,3640(9)
	b .L211
.L185:
	.loc 1 524 0
	lwz 3,12(1)
	bl EmptyCache
	cmpwi 7,3,0
	beq- 7,.L213
.L183:
	.loc 1 530 0
	lwz 3,12(1)
	bl __gl_projectPolygon
	.loc 1 538 0
	lwz 3,12(1)
	bl __gl_computeInterior
	cmpwi 7,3,0
	beq- 7,.L213
	.loc 1 543 0
	lwz 9,12(1)
	lbz 0,100(9)
	.loc 1 542 0
	lwz 31,8(9)
.LVL115:
	.loc 1 543 0
	cmpwi 7,0,0
	bne- 7,.L192
.LBB7:
	.loc 1 550 0
	lbz 0,121(9)
	cmpwi 7,0,0
	beq- 7,.L194
	.loc 1 551 0
	mr 3,31
	li 4,1
	li 5,1
	bl __gl_meshSetWindingNumber
	b .L196
.L194:
	.loc 1 553 0
	mr 3,31
	bl __gl_meshTessellateInterior
.L196:
	.loc 1 555 0
	cmpwi 7,3,0
.LVL116:
	bne+ 7,.L197
.L213:
	lwz 3,8(1)
.LVL117:
	li 4,1
	bl longjmp
.LVL118:
.L197:
	.loc 1 559 0
	lwz 9,12(1)
	lwz 0,128(9)
	lis 9,noBegin@ha
	la 9,noBegin@l(9)
	cmpw 7,0,9
	bne+ 7,.L199
	lwz 9,12(1)
	lwz 0,140(9)
	lis 9,noEnd@ha
	la 9,noEnd@l(9)
	cmpw 7,0,9
	bne+ 7,.L199
	lwz 9,12(1)
	lwz 0,136(9)
	lis 9,noVertex@ha
	la 9,noVertex@l(9)
	cmpw 7,0,9
	bne+ 7,.L199
	lwz 9,12(1)
	lwz 0,132(9)
	lis 9,noEdgeFlag@ha
	la 9,noEdgeFlag@l(9)
	cmpw 7,0,9
	bne+ 7,.L199
	lwz 9,12(1)
	lwz 0,3360(9)
	lis 9,__gl_noBeginData@ha
	la 9,__gl_noBeginData@l(9)
	cmpw 7,0,9
	bne+ 7,.L199
	lwz 9,12(1)
	lwz 0,3372(9)
	lis 9,__gl_noEndData@ha
	la 9,__gl_noEndData@l(9)
	cmpw 7,0,9
	bne+ 7,.L199
	lwz 9,12(1)
	lwz 0,3368(9)
	lis 9,__gl_noVertexData@ha
	la 9,__gl_noVertexData@l(9)
	cmpw 7,0,9
	bne+ 7,.L199
	lwz 9,12(1)
	lwz 0,3364(9)
	lis 9,__gl_noEdgeFlagData@ha
	la 9,__gl_noEdgeFlagData@l(9)
	cmpw 7,0,9
	beq- 7,.L207
.L199:
	.loc 1 566 0
	lwz 9,12(1)
	lbz 0,121(9)
	cmpwi 7,0,0
	beq- 7,.L208
	.loc 1 567 0
	mr 3,9
.LVL119:
	mr 4,31
	bl __gl_renderBoundary
.LVL120:
	b .L207
.LVL121:
.L208:
	.loc 1 569 0
	lwz 3,12(1)
.LVL122:
	mr 4,31
	bl __gl_renderMesh
.LVL123:
.L207:
	.loc 1 572 0
	lwz 9,12(1)
	lwz 0,144(9)
	lis 9,noMesh@ha
	la 9,noMesh@l(9)
	cmpw 7,0,9
	beq- 7,.L192
	.loc 1 580 0
	mr 3,31
.LVL124:
	bl __gl_meshDiscardExterior
	.loc 1 581 0
	lwz 9,12(1)
	mr 3,31
	lwz 9,144(9)
	mtctr 9
	bctrl
	.loc 1 583 0
	lwz 9,12(1)
	.loc 1 582 0
	li 0,0
	.loc 1 583 0
	stw 0,3640(9)
	.loc 1 582 0
	stw 0,8(9)
	b .L211
.LVL125:
.L192:
.LBE7:
	.loc 1 587 0
	mr 3,31
.LVL126:
	bl __gl_meshDeleteMesh
	.loc 1 589 0
	lwz 9,12(1)
	.loc 1 588 0
	li 0,0
	.loc 1 589 0
	stw 0,8(9)
	.loc 1 588 0
	stw 0,3640(9)
.L211:
	.loc 1 590 0
	lwz 0,28(1)
	lwz 31,20(1)
.LVL127:
	addi 1,1,24
	mtlr 0
	blr
.LFE30:
	.size	gluTessEndPolygon, .-gluTessEndPolygon
	.align 2
	.globl gluEndPolygon
	.type	gluEndPolygon, @function
gluEndPolygon:
.LFB33:
	.loc 1 627 0
.LVL128:
	mflr 0
.LCFI45:
	stwu 1,-24(1)
.LCFI46:
	stmw 29,12(1)
.LCFI47:
	mr 29,3
	stw 0,28(1)
.LCFI48:
	.loc 1 628 0
	bl gluTessEndContour
.LVL129:
	.loc 1 630 0
	lwz 0,28(1)
	.loc 1 629 0
	mr 3,29
	.loc 1 630 0
	lmw 29,12(1)
.LVL130:
	addi 1,1,24
	mtlr 0
	.loc 1 629 0
	b gluTessEndPolygon
.LVL131:
.LFE33:
	.size	gluEndPolygon, .-gluEndPolygon
	.align 2
	.globl gluTessVertex
	.type	gluTessVertex, @function
gluTessVertex:
.LFB26:
	.loc 1 414 0
.LVL132:
	mflr 0
.LCFI49:
	stwu 1,-56(1)
.LCFI50:
	stmw 29,44(1)
.LCFI51:
	mr 31,3
	stw 0,60(1)
.LCFI52:
	.loc 1 414 0
	mr 30,4
	mr 29,5
	.loc 1 418 0
	lwz 0,0(3)
	cmpwi 7,0,2
	beq- 7,.L217
.LVL133:
	li 4,2
	bl GotoState
.LVL134:
.L217:
	.loc 1 420 0
	lbz 0,148(31)
	cmpwi 7,0,0
	beq+ 7,.L219
	.loc 1 421 0
	mr 3,31
	bl EmptyCache
	cmpwi 7,3,0
	beq- 7,.L252
	.loc 1 425 0
	li 0,0
	stw 0,4(31)
.LVL135:
.L219:
	.loc 1 429 0
	lis 9,.LC12@ha
	.loc 1 425 0
	li 0,0
.LVL136:
	.loc 1 429 0
	lfd 12,.LC12@l(9)
	.loc 1 433 0
	lis 9,.LC13@ha
	lfd 13,.LC13@l(9)
	.loc 1 437 0
	addi 11,1,8
	.loc 1 425 0
	li 9,0
.LVL137:
.L226:
	.loc 1 428 0
	lfdx 0,9,30
	.loc 1 429 0
	fcmpu 7,0,12
	bnl- 7,.L227
	fmr 0,12
	li 0,1
	b .L230
.L227:
	.loc 1 433 0
	fcmpu 7,0,13
	bng- 7,.L230
	fmr 0,13
	li 0,1
.L230:
	.loc 1 427 0
	cmpwi 7,9,16
	.loc 1 437 0
	stfdx 0,9,11
	.loc 1 427 0
	addi 9,9,8
	bne+ 7,.L226
	.loc 1 439 0
	cmpwi 7,0,0
	beq- 7,.L234
	.loc 1 440 0
	lwz 0,3376(31)
.LVL138:
	lis 9,__gl_noErrorData@ha
	la 9,__gl_noErrorData@l(9)
	cmpw 7,0,9
	beq- 7,.L236
	lis 3,0x1
	lwz 4,3640(31)
	ori 3,3,34619
	mtctr 0
	bctrl
.LVL139:
	b .L234
.LVL140:
.L236:
	lwz 0,12(31)
	lis 3,0x1
	ori 3,3,34619
	mtctr 0
	bctrl
.LVL141:
.L234:
	.loc 1 443 0
	lwz 0,8(31)
.LVL142:
	cmpwi 7,0,0
	bne+ 7,.L238
	.loc 1 444 0
	lwz 9,152(31)
	cmpwi 7,9,99
	bgt- 7,.L240
.LBB10:
.LBB11:
	.loc 1 386 0
	slwi 9,9,5
	add 9,9,31
	stw 29,184(9)
	.loc 1 387 0
	lfd 0,8(1)
.LVL143:
	stfd 0,160(9)
	.loc 1 388 0
	lfd 0,16(1)
	stfd 0,168(9)
	.loc 1 389 0
	lfd 0,24(1)
	stfd 0,176(9)
	.loc 1 390 0
	lwz 9,152(31)
	addi 9,9,1
	stw 9,152(31)
	b .L248
.LVL144:
.L240:
.LBE11:
.LBE10:
	.loc 1 448 0
	mr 3,31
	bl EmptyCache
.LVL145:
	cmpwi 7,3,0
	beq- 7,.L252
.LVL146:
.L238:
	.loc 1 453 0
	mr 5,29
	mr 3,31
	addi 4,1,8
	bl AddVertex
.LVL147:
	cmpwi 7,3,0
	bne- 7,.L248
.L252:
	.loc 1 454 0
	lwz 0,3376(31)
	lis 9,__gl_noErrorData@ha
	la 9,__gl_noErrorData@l(9)
	cmpw 7,0,9
	beq- 7,.L246
	lis 3,0x1
	lwz 4,3640(31)
	ori 3,3,35366
	mtctr 0
	bctrl
	b .L248
.L246:
	lwz 31,12(31)
.LVL148:
	lis 3,0x1
	ori 3,3,35366
	mtctr 31
	bctrl
.LVL149:
.L248:
	.loc 1 456 0
	lwz 0,60(1)
	lmw 29,44(1)
.LVL150:
	addi 1,1,56
	mtlr 0
	blr
.LFE26:
	.size	gluTessVertex, .-gluTessVertex
	.align 2
	.globl gluDeleteTess
	.type	gluDeleteTess, @function
gluDeleteTess:
.LFB18:
	.loc 1 192 0
.LVL151:
	mflr 0
.LCFI53:
	stwu 1,-16(1)
.LCFI54:
	stw 31,12(1)
.LCFI55:
	mr 31,3
	stw 0,20(1)
.LCFI56:
	.loc 1 193 0
	lwz 0,0(3)
	cmpwi 7,0,0
	beq- 7,.L254
	li 4,0
	bl GotoState
.LVL152:
.L254:
	.loc 1 194 0
	mr 3,31
	bl free
	.loc 1 195 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL153:
	addi 1,1,16
	mtlr 0
	blr
.LFE18:
	.size	gluDeleteTess, .-gluDeleteTess
	.align 2
	.globl gluNewTess
	.type	gluNewTess, @function
gluNewTess:
.LFB15:
	.loc 1 95 0
	mflr 0
.LCFI57:
	stwu 1,-8(1)
.LCFI58:
	.loc 1 102 0
	li 3,64
	.loc 1 95 0
	stw 0,12(1)
.LCFI59:
	.loc 1 102 0
	bl __gl_memInit
	cmpwi 7,3,0
	beq+ 7,.L258
	.loc 1 105 0
	li 3,3648
	bl malloc
	.loc 1 106 0
	cmpwi 0,3,0
	beq- 0,.L258
	.loc 1 112 0
	lis 9,.LC0@ha
	.loc 1 117 0
	lis 0,0x1
	.loc 1 112 0
	lfd 0,.LC0@l(9)
	.loc 1 121 0
	lis 9,noBegin@ha
	la 9,noBegin@l(9)
	.loc 1 110 0
	li 11,0
	.loc 1 121 0
	stw 9,128(3)
.LVL154:
	.loc 1 122 0
	lis 9,noEdgeFlag@ha
	la 9,noEdgeFlag@l(9)
	.loc 1 117 0
	ori 0,0,34594
	.loc 1 122 0
	stw 9,132(3)
	.loc 1 123 0
	lis 9,noVertex@ha
	la 9,noVertex@l(9)
	.loc 1 116 0
	stfd 0,88(3)
	.loc 1 123 0
	stw 9,136(3)
	.loc 1 124 0
	lis 9,noEnd@ha
	la 9,noEnd@l(9)
	.loc 1 117 0
	stw 0,96(3)
	.loc 1 124 0
	stw 9,140(3)
	.loc 1 126 0
	lis 9,noError@ha
	la 9,noError@l(9)
	.loc 1 137 0
	stw 11,3640(3)
	.loc 1 126 0
	stw 9,12(3)
	.loc 1 127 0
	lis 9,noCombine@ha
	la 9,noCombine@l(9)
	.loc 1 110 0
	stw 11,0(3)
	.loc 1 127 0
	stw 9,116(3)
	.loc 1 128 0
	lis 9,noMesh@ha
	la 9,noMesh@l(9)
	.loc 1 112 0
	stfd 0,16(3)
	.loc 1 128 0
	stw 9,144(3)
	.loc 1 130 0
	lis 9,__gl_noBeginData@ha
	la 9,__gl_noBeginData@l(9)
	.loc 1 113 0
	stfd 0,24(3)
	.loc 1 130 0
	stw 9,3360(3)
	.loc 1 131 0
	lis 9,__gl_noEdgeFlagData@ha
	la 9,__gl_noEdgeFlagData@l(9)
	.loc 1 114 0
	stfd 0,32(3)
	.loc 1 131 0
	stw 9,3364(3)
	.loc 1 132 0
	lis 9,__gl_noVertexData@ha
	la 9,__gl_noVertexData@l(9)
	.loc 1 118 0
	stb 11,120(3)
	.loc 1 132 0
	stw 9,3368(3)
	.loc 1 133 0
	lis 9,__gl_noEndData@ha
	la 9,__gl_noEndData@l(9)
	.loc 1 119 0
	stb 11,121(3)
	.loc 1 133 0
	stw 9,3372(3)
	.loc 1 134 0
	lis 9,__gl_noErrorData@ha
	la 9,__gl_noErrorData@l(9)
	stw 9,3376(3)
	.loc 1 135 0
	lis 9,__gl_noCombineData@ha
	la 9,__gl_noCombineData@l(9)
	stw 9,3380(3)
	b .L261
.LVL155:
.L258:
	.loc 1 139 0
	li 3,0
.LVL156:
.L261:
	.loc 1 140 0
	lwz 0,12(1)
	addi 1,1,8
.LVL157:
	mtlr 0
	blr
.LFE15:
	.size	gluNewTess, .-gluNewTess
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC2:
	.4byte	1065353216
.LC4:
	.4byte	1325400064
.LC6:
	.4byte	1501560832
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC0:
	.4byte	0
	.4byte	0
.LC12:
	.4byte	-552366795
	.4byte	777033391
.LC13:
	.4byte	1595116853
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
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.align 2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.align 2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.align 2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI1-.LFB19
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI4-.LFB20
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.align 2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI7-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI9-.LFB17
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI11-.LCFI9
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
	.4byte	.LCFI12-.LCFI11
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI14-.LFB29
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI18-.LFB28
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI22-.LFB32
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
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
	.4byte	.LCFI24-.LCFI23
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI26-.LFB27
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI30-.LFB31
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
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
	.4byte	.LCFI32-.LCFI31
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI34-.LFB23
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
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
	.4byte	.LCFI36-.LCFI35
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI38-.LFB25
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI39-.LCFI38
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
	.4byte	.LCFI40-.LCFI39
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI42-.LFB30
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI44-.LCFI42
	.byte	0x9f
	.uleb128 0x1
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI46-.LFB33
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
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
	.4byte	.LCFI48-.LCFI47
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI50-.LFB26
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI51-.LCFI50
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
	.4byte	.LCFI52-.LCFI51
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI54-.LFB18
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI55-.LCFI54
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI56-.LCFI55
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI58-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI59-.LCFI58
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE58:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST13:
	.4byte	.LFB19-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LFB20-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL38-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL38-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LFB22-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL60-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL60-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LFB17-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL71-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL71-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LFB29-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL74-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LFB28-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL77-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LFB32-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LFB27-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI26-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL85-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL85-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LFB31-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI30-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LFB23-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI34-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LFB25-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI38-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL110-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LFB30-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI42-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -12
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -12
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL121-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -12
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LFB33-.Ltext0
	.4byte	.LCFI46-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI46-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LFB26-.Ltext0
	.4byte	.LCFI50-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI50-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL150-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL150-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL150-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST62:
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST63:
	.4byte	.LFB18-.Ltext0
	.4byte	.LCFI54-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI54-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST64:
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST65:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI58-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI58-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST66:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/machine/setjmp.h"
	.file 3 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/include/GL/gl.h"
	.file 4 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/include/GL/glu.h"
	.file 5 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/tess.h"
	.file 6 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/mesh.h"
	.file 7 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/sweep.h"
	.file 8 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/dict.h"
	.file 9 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/priorityq-heap.h"
	.file 10 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/priorityq.h"
	.section	.debug_info
	.4byte	0x1089
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF147
	.byte	0x1
	.4byte	.LASF148
	.4byte	.LASF149
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
	.byte	0xfa
	.4byte	0x82
	.uleb128 0x7
	.4byte	0x92
	.4byte	0x92
	.uleb128 0x8
	.4byte	0x2c
	.byte	0x1f
	.byte	0x0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x3
	.byte	0x92
	.4byte	0x25
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x3
	.byte	0x93
	.4byte	0x2f
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x3
	.byte	0x9d
	.4byte	0xba
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x3
	.byte	0x9f
	.4byte	0x92
	.uleb128 0x9
	.byte	0x4
	.4byte	0xaf
	.uleb128 0x9
	.byte	0x4
	.4byte	0xc1
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x10f
	.4byte	0xe4
	.uleb128 0xb
	.4byte	.LASF17
	.2byte	0xe40
	.byte	0x4
	.2byte	0x10f
	.4byte	0x2d0
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x5
	.byte	0x46
	.4byte	0x7c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x5
	.byte	0x48
	.4byte	0x526
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x5
	.byte	0x49
	.4byte	0x816
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x5
	.byte	0x4c
	.4byte	0x828
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x5
	.byte	0x50
	.4byte	0x52c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x5
	.byte	0x51
	.4byte	0x52c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x5
	.byte	0x52
	.4byte	0x52c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x5
	.byte	0x56
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x5
	.byte	0x57
	.4byte	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x5
	.byte	0x58
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x5
	.byte	0x5a
	.4byte	0x82e
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"pq"
	.byte	0x5
	.byte	0x5b
	.4byte	0x834
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x5
	.byte	0x5c
	.4byte	0x520
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x5
	.byte	0x5f
	.4byte	0x85b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x5
	.byte	0x63
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x5
	.byte	0x64
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x79
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x5
	.byte	0x65
	.4byte	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x5
	.byte	0x68
	.4byte	0x828
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x5
	.byte	0x69
	.4byte	0x86d
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x5
	.byte	0x6a
	.4byte	0x87f
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x5
	.byte	0x6b
	.4byte	0x887
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x5
	.byte	0x6c
	.4byte	0x899
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x5
	.byte	0x71
	.4byte	0xa4
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x5
	.byte	0x72
	.4byte	0x4d
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x5
	.byte	0x73
	.4byte	0x89f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x5
	.byte	0x76
	.4byte	0x8c0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd20
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x5
	.byte	0x78
	.4byte	0x8d7
	.byte	0x3
	.byte	0x23
	.uleb128 0xd24
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x5
	.byte	0x79
	.4byte	0x8ee
	.byte	0x3
	.byte	0x23
	.uleb128 0xd28
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x5
	.byte	0x7a
	.4byte	0x87f
	.byte	0x3
	.byte	0x23
	.uleb128 0xd2c
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x5
	.byte	0x7b
	.4byte	0x8c0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd30
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x5
	.byte	0x7e
	.4byte	0x914
	.byte	0x3
	.byte	0x23
	.uleb128 0xd34
	.uleb128 0xd
	.string	"env"
	.byte	0x5
	.byte	0x80
	.4byte	0x77
	.byte	0x3
	.byte	0x23
	.uleb128 0xd38
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x5
	.byte	0x82
	.4byte	0x3d
	.byte	0x3
	.byte	0x23
	.uleb128 0xe38
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x6
	.byte	0x2f
	.4byte	0x2db
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x98
	.byte	0x6
	.byte	0x2f
	.4byte	0x320
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x6
	.byte	0xab
	.4byte	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0xac
	.4byte	0x3a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0xad
	.4byte	0x41e
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0xae
	.4byte	0x41e
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0x6
	.byte	0x31
	.4byte	0x32b
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x40
	.byte	0x6
	.byte	0x31
	.4byte	0x3a4
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0x7a
	.4byte	0x520
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0x7b
	.4byte	0x520
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x6
	.byte	0x7c
	.4byte	0x526
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x6
	.byte	0x7d
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x6
	.byte	0x80
	.4byte	0x52c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"s"
	.byte	0x6
	.byte	0x81
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"t"
	.byte	0x6
	.byte	0x81
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x6
	.byte	0x82
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0x6
	.byte	0x32
	.4byte	0x3af
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x18
	.byte	0x6
	.byte	0x32
	.4byte	0x41e
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0x86
	.4byte	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0x87
	.4byte	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x6
	.byte	0x88
	.4byte	0x526
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x6
	.byte	0x89
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x6
	.byte	0x8c
	.4byte	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x6
	.byte	0x8d
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x6
	.byte	0x8e
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0x6
	.byte	0x33
	.4byte	0x429
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x20
	.byte	0x6
	.byte	0x33
	.4byte	0x4a6
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0x92
	.4byte	0x526
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"Sym"
	.byte	0x6
	.byte	0x93
	.4byte	0x526
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x6
	.byte	0x94
	.4byte	0x526
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x6
	.byte	0x95
	.4byte	0x526
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"Org"
	.byte	0x6
	.byte	0x96
	.4byte	0x520
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x6
	.byte	0x97
	.4byte	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x6
	.byte	0x9a
	.4byte	0x542
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x6
	.byte	0x9b
	.4byte	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF71
	.byte	0x6
	.byte	0x35
	.4byte	0x4b1
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x10
	.byte	0x6
	.byte	0x35
	.4byte	0x520
	.uleb128 0xd
	.string	"eUp"
	.byte	0x7
	.byte	0x43
	.4byte	0x526
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x7
	.byte	0x44
	.4byte	0x5d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x7
	.byte	0x45
	.4byte	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x7
	.byte	0x47
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0x7
	.byte	0x48
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0x7
	.byte	0x49
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x7
	.byte	0x4c
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x320
	.uleb128 0x9
	.byte	0x4
	.4byte	0x41e
	.uleb128 0x7
	.4byte	0xc1
	.4byte	0x53c
	.uleb128 0x8
	.4byte	0x2c
	.byte	0x2
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3a4
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4a6
	.uleb128 0x6
	.4byte	.LASF77
	.byte	0x8
	.byte	0x43
	.4byte	0x3d
	.uleb128 0x6
	.4byte	.LASF78
	.byte	0x8
	.byte	0x44
	.4byte	0x55e
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x14
	.byte	0x8
	.byte	0x44
	.4byte	0x595
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x8
	.byte	0x66
	.4byte	0x595
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x8
	.byte	0x67
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"leq"
	.byte	0x8
	.byte	0x68
	.4byte	0x5f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF81
	.byte	0x8
	.byte	0x45
	.4byte	0x5a0
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0xc
	.byte	0x8
	.byte	0x45
	.4byte	0x5d7
	.uleb128 0xd
	.string	"key"
	.byte	0x8
	.byte	0x60
	.4byte	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x8
	.byte	0x61
	.4byte	0x5d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x8
	.byte	0x62
	.4byte	0x5d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x595
	.uleb128 0xf
	.byte	0x1
	.4byte	0x4d
	.4byte	0x5f7
	.uleb128 0x10
	.4byte	0x3d
	.uleb128 0x10
	.4byte	0x548
	.uleb128 0x10
	.4byte	0x548
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x5dd
	.uleb128 0x6
	.4byte	.LASF82
	.byte	0x9
	.byte	0x56
	.4byte	0x3d
	.uleb128 0x6
	.4byte	.LASF83
	.byte	0x9
	.byte	0x57
	.4byte	0x70
	.uleb128 0x6
	.4byte	.LASF84
	.byte	0x9
	.byte	0x58
	.4byte	0x61e
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0x1c
	.byte	0x9
	.byte	0x58
	.4byte	0x68d
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x9
	.byte	0x5e
	.4byte	0x6df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x9
	.byte	0x5f
	.4byte	0x6e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x9
	.byte	0x60
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"max"
	.byte	0x9
	.byte	0x60
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x9
	.byte	0x61
	.4byte	0x608
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x9
	.byte	0x62
	.4byte	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"leq"
	.byte	0x9
	.byte	0x63
	.4byte	0x700
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.byte	0x9
	.byte	0x5a
	.4byte	0x6a4
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x9
	.byte	0x5a
	.4byte	0x608
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x9
	.byte	0x5a
	.4byte	0x68d
	.uleb128 0x11
	.byte	0x8
	.byte	0x9
	.byte	0x5b
	.4byte	0x6d4
	.uleb128 0xd
	.string	"key"
	.byte	0x9
	.byte	0x5b
	.4byte	0x5fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x9
	.byte	0x5b
	.4byte	0x608
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF93
	.byte	0x9
	.byte	0x5b
	.4byte	0x6af
	.uleb128 0x9
	.byte	0x4
	.4byte	0x6a4
	.uleb128 0x9
	.byte	0x4
	.4byte	0x6d4
	.uleb128 0xf
	.byte	0x1
	.4byte	0x4d
	.4byte	0x700
	.uleb128 0x10
	.4byte	0x5fd
	.uleb128 0x10
	.4byte	0x5fd
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x6eb
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0xa
	.byte	0x64
	.4byte	0x5fd
	.uleb128 0x6
	.4byte	.LASF95
	.byte	0xa
	.byte	0x65
	.4byte	0x608
	.uleb128 0x6
	.4byte	.LASF96
	.byte	0xa
	.byte	0x66
	.4byte	0x727
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0x1c
	.byte	0xa
	.byte	0x66
	.4byte	0x796
	.uleb128 0xc
	.4byte	.LASF97
	.byte	0xa
	.byte	0x69
	.4byte	0x796
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0xa
	.byte	0x6a
	.4byte	0x79c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF99
	.byte	0xa
	.byte	0x6b
	.4byte	0x7a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0xa
	.byte	0x6c
	.4byte	0x711
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"max"
	.byte	0xa
	.byte	0x6c
	.4byte	0x711
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0xa
	.byte	0x6d
	.4byte	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"leq"
	.byte	0xa
	.byte	0x6e
	.4byte	0x7bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x613
	.uleb128 0x9
	.byte	0x4
	.4byte	0x706
	.uleb128 0x9
	.byte	0x4
	.4byte	0x79c
	.uleb128 0xf
	.byte	0x1
	.4byte	0x4d
	.4byte	0x7bd
	.uleb128 0x10
	.4byte	0x706
	.uleb128 0x10
	.4byte	0x706
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7a8
	.uleb128 0x12
	.4byte	.LASF150
	.byte	0x4
	.byte	0x5
	.byte	0x36
	.4byte	0x7e2
	.uleb128 0x13
	.4byte	.LASF100
	.sleb128 0
	.uleb128 0x13
	.4byte	.LASF101
	.sleb128 1
	.uleb128 0x13
	.4byte	.LASF102
	.sleb128 2
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0x20
	.byte	0x5
	.byte	0x3d
	.4byte	0x80b
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x5
	.byte	0x3e
	.4byte	0x52c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x5
	.byte	0x3f
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF103
	.byte	0x5
	.byte	0x40
	.4byte	0x7e2
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2d0
	.uleb128 0x14
	.byte	0x1
	.4byte	0x828
	.uleb128 0x10
	.4byte	0x99
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x81c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x553
	.uleb128 0x9
	.byte	0x4
	.4byte	0x71c
	.uleb128 0x14
	.byte	0x1
	.4byte	0x855
	.uleb128 0x10
	.4byte	0xd2
	.uleb128 0x10
	.4byte	0x855
	.uleb128 0x10
	.4byte	0xcc
	.uleb128 0x10
	.4byte	0x855
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3d
	.uleb128 0x9
	.byte	0x4
	.4byte	0x83a
	.uleb128 0x14
	.byte	0x1
	.4byte	0x86d
	.uleb128 0x10
	.4byte	0xa4
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x861
	.uleb128 0x14
	.byte	0x1
	.4byte	0x87f
	.uleb128 0x10
	.4byte	0x3d
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x873
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x9
	.byte	0x4
	.4byte	0x885
	.uleb128 0x14
	.byte	0x1
	.4byte	0x899
	.uleb128 0x10
	.4byte	0x816
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x88d
	.uleb128 0x7
	.4byte	0x80b
	.4byte	0x8af
	.uleb128 0x8
	.4byte	0x2c
	.byte	0x63
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.4byte	0x8c0
	.uleb128 0x10
	.4byte	0x99
	.uleb128 0x10
	.4byte	0x3d
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8af
	.uleb128 0x14
	.byte	0x1
	.4byte	0x8d7
	.uleb128 0x10
	.4byte	0xa4
	.uleb128 0x10
	.4byte	0x3d
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8c6
	.uleb128 0x14
	.byte	0x1
	.4byte	0x8ee
	.uleb128 0x10
	.4byte	0x3d
	.uleb128 0x10
	.4byte	0x3d
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8dd
	.uleb128 0x14
	.byte	0x1
	.4byte	0x914
	.uleb128 0x10
	.4byte	0xd2
	.uleb128 0x10
	.4byte	0x855
	.uleb128 0x10
	.4byte	0xcc
	.uleb128 0x10
	.4byte	0x855
	.uleb128 0x10
	.4byte	0x3d
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8f4
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x51
	.4byte	0x93e
	.uleb128 0x17
	.4byte	.LASF106
	.byte	0x1
	.byte	0x3c
	.4byte	0x99
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x16
	.4byte	.LASF105
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x51
	.4byte	0x962
	.uleb128 0x17
	.4byte	.LASF107
	.byte	0x1
	.byte	0x3d
	.4byte	0xa4
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x51
	.4byte	0x986
	.uleb128 0x17
	.4byte	.LASF58
	.byte	0x1
	.byte	0x3e
	.4byte	0x3d
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x18
	.4byte	.LASF151
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x51
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x51
	.4byte	0x9bc
	.uleb128 0x17
	.4byte	.LASF110
	.byte	0x1
	.byte	0x40
	.4byte	0x99
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x16
	.4byte	.LASF111
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x51
	.4byte	0xa07
	.uleb128 0x17
	.4byte	.LASF59
	.byte	0x1
	.byte	0x41
	.4byte	0xd2
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LASF58
	.byte	0x1
	.byte	0x41
	.4byte	0x855
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LASF112
	.byte	0x1
	.byte	0x42
	.4byte	0xcc
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.4byte	.LASF113
	.byte	0x1
	.byte	0x42
	.4byte	0x855
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x51
	.4byte	0xa2b
	.uleb128 0x17
	.4byte	.LASF20
	.byte	0x1
	.byte	0x43
	.4byte	0x816
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF115
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x51
	.4byte	0xa5d
	.uleb128 0x17
	.4byte	.LASF106
	.byte	0x1
	.byte	0x46
	.4byte	0x99
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x1
	.byte	0x47
	.4byte	0x3d
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF116
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x1
	.byte	0x51
	.4byte	0xa8f
	.uleb128 0x17
	.4byte	.LASF107
	.byte	0x1
	.byte	0x48
	.4byte	0xa4
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x1
	.byte	0x49
	.4byte	0x3d
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF117
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x1
	.byte	0x51
	.4byte	0xac1
	.uleb128 0x17
	.4byte	.LASF58
	.byte	0x1
	.byte	0x4a
	.4byte	0x3d
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x1
	.byte	0x4b
	.4byte	0x3d
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF118
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12
	.byte	0x1
	.byte	0x51
	.4byte	0xae6
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x1
	.byte	0x4c
	.4byte	0x3d
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF119
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13
	.byte	0x1
	.byte	0x51
	.4byte	0xb18
	.uleb128 0x17
	.4byte	.LASF110
	.byte	0x1
	.byte	0x4d
	.4byte	0x99
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x1
	.byte	0x4e
	.4byte	0x3d
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF120
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.4byte	.LFB14
	.4byte	.LFE14
	.byte	0x1
	.byte	0x51
	.4byte	0xb71
	.uleb128 0x17
	.4byte	.LASF59
	.byte	0x1
	.byte	0x4f
	.4byte	0xd2
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LASF58
	.byte	0x1
	.byte	0x50
	.4byte	0x855
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LASF112
	.byte	0x1
	.byte	0x51
	.4byte	0xcc
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.4byte	.LASF121
	.byte	0x1
	.byte	0x52
	.4byte	0x855
	.byte	0x1
	.byte	0x56
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x1
	.byte	0x53
	.4byte	0x3d
	.byte	0x1
	.byte	0x57
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF122
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LLST13
	.4byte	0xbc7
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x1
	.byte	0xc7
	.4byte	0xbc7
	.4byte	.LLST14
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x1
	.byte	0xc7
	.4byte	0x99
	.4byte	.LLST15
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0x1
	.byte	0xc7
	.4byte	0xc1
	.4byte	.LLST16
	.uleb128 0x1c
	.4byte	.LASF26
	.byte	0x1
	.byte	0xc9
	.4byte	0x99
	.4byte	.LLST17
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xd8
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF126
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LLST18
	.4byte	0xc14
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x1
	.byte	0xee
	.4byte	0xbc7
	.4byte	.LLST19
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x1
	.byte	0xee
	.4byte	0x99
	.4byte	.LLST20
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0x1
	.byte	0xee
	.4byte	0xd2
	.4byte	.LLST21
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x10b
	.byte	0x1
	.4byte	.LFB21
	.4byte	.LFE21
	.byte	0x1
	.byte	0x51
	.4byte	0xc62
	.uleb128 0x1e
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x10a
	.4byte	0xbc7
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.2byte	0x10a
	.4byte	0xc1
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x1f
	.string	"y"
	.byte	0x1
	.2byte	0x10a
	.4byte	0xc1
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x1f
	.string	"z"
	.byte	0x1
	.2byte	0x10a
	.4byte	0xc1
	.byte	0x2
	.byte	0x90
	.uleb128 0x23
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x113
	.byte	0x1
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LLST23
	.4byte	0xcac
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x112
	.4byte	0xbc7
	.4byte	.LLST24
	.uleb128 0x21
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x112
	.4byte	0x99
	.4byte	.LLST25
	.uleb128 0x22
	.string	"fn"
	.byte	0x1
	.2byte	0x112
	.4byte	0xcb3
	.4byte	.LLST26
	.byte	0x0
	.uleb128 0x23
	.4byte	0xcb3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xcac
	.uleb128 0x25
	.4byte	.LASF141
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.byte	0x1
	.4byte	0xcd2
	.uleb128 0x26
	.4byte	.LASF123
	.byte	0x1
	.byte	0x8e
	.4byte	0xbc7
	.byte	0x0
	.uleb128 0x27
	.4byte	.LASF129
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST27
	.4byte	0xd1e
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x1
	.byte	0x9c
	.4byte	0xbc7
	.4byte	.LLST28
	.uleb128 0x1b
	.4byte	.LASF130
	.byte	0x1
	.byte	0x9c
	.4byte	0x7c3
	.4byte	.LLST29
	.uleb128 0x28
	.4byte	0xcb9
	.4byte	.LBB4
	.4byte	.LBE4
	.byte	0x1
	.byte	0xb6
	.uleb128 0x29
	.4byte	0xcc6
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x1ec
	.byte	0x1
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LLST30
	.4byte	0xd49
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x1eb
	.4byte	0xbc7
	.4byte	.LLST31
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x1db
	.byte	0x1
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LLST32
	.4byte	0xd74
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x1da
	.4byte	0xbc7
	.4byte	.LLST33
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x26b
	.byte	0x1
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LLST34
	.4byte	0xdaf
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x26a
	.4byte	0xbc7
	.4byte	.LLST35
	.uleb128 0x21
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x26a
	.4byte	0x99
	.4byte	.LLST36
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x1cd
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LLST37
	.4byte	0xdea
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x1cc
	.4byte	0xbc7
	.4byte	.LLST38
	.uleb128 0x21
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x3d
	.4byte	.LLST39
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x262
	.byte	0x1
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LLST40
	.4byte	0xe15
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x261
	.4byte	0xbc7
	.4byte	.LLST41
	.byte	0x0
	.uleb128 0x2a
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x158
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LLST42
	.4byte	0xe71
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x157
	.4byte	0xbc7
	.4byte	.LLST43
	.uleb128 0x21
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x157
	.4byte	0xd2
	.4byte	.LLST44
	.uleb128 0x21
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x157
	.4byte	0x3d
	.4byte	.LLST45
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.2byte	0x159
	.4byte	0x526
	.4byte	.LLST46
	.byte	0x0
	.uleb128 0x2a
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x18b
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LLST47
	.4byte	0xebd
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x18a
	.4byte	0xbc7
	.4byte	.LLST48
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.2byte	0x18c
	.4byte	0xebd
	.4byte	.LLST49
	.uleb128 0x2c
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x18d
	.4byte	0xebd
	.4byte	.LLST50
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x80b
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x1f3
	.byte	0x1
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LLST51
	.4byte	0xf17
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x1f2
	.4byte	0xbc7
	.4byte	.LLST52
	.uleb128 0x2c
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x816
	.4byte	.LLST53
	.uleb128 0x2d
	.4byte	.LBB7
	.4byte	.LBE7
	.uleb128 0x2b
	.string	"rc"
	.byte	0x1
	.2byte	0x220
	.4byte	0x4d
	.4byte	.LLST54
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x273
	.byte	0x1
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LLST55
	.4byte	0xf42
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x272
	.4byte	0xbc7
	.4byte	.LLST56
	.byte	0x0
	.uleb128 0x2e
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x17f
	.byte	0x1
	.byte	0x1
	.4byte	0xf7f
	.uleb128 0x2f
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x17e
	.4byte	0xbc7
	.uleb128 0x2f
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x17e
	.4byte	0xd2
	.uleb128 0x2f
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x17e
	.4byte	0x3d
	.uleb128 0x30
	.string	"v"
	.byte	0x1
	.2byte	0x180
	.4byte	0xebd
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x19e
	.byte	0x1
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LLST57
	.4byte	0x1030
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x19d
	.4byte	0xbc7
	.4byte	.LLST58
	.uleb128 0x21
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x19d
	.4byte	0xd2
	.4byte	.LLST59
	.uleb128 0x21
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x19d
	.4byte	0x3d
	.4byte	.LLST60
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.2byte	0x19f
	.4byte	0x4d
	.uleb128 0x2c
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x19f
	.4byte	0x4d
	.4byte	.LLST61
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.2byte	0x1a0
	.4byte	0xc1
	.4byte	.LLST62
	.uleb128 0x31
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x52c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.4byte	0xf42
	.4byte	.LBB10
	.4byte	.LBE10
	.byte	0x1
	.2byte	0x1bd
	.uleb128 0x29
	.4byte	0xf68
	.uleb128 0x29
	.4byte	0xf5c
	.uleb128 0x29
	.4byte	0xf50
	.uleb128 0x2d
	.4byte	.LBB11
	.4byte	.LBE11
	.uleb128 0x33
	.4byte	0xf74
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF146
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LLST63
	.4byte	0x1059
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x1
	.byte	0xbf
	.4byte	0xbc7
	.4byte	.LLST64
	.byte	0x0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF152
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.4byte	0x1086
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST65
	.4byte	0x1086
	.uleb128 0x1c
	.4byte	.LASF123
	.byte	0x1
	.byte	0x60
	.4byte	0xbc7
	.4byte	.LLST66
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xd8
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x30
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x1a9
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x108d
	.4byte	0xa2b
	.string	"__gl_noBeginData"
	.4byte	0xa5d
	.string	"__gl_noEdgeFlagData"
	.4byte	0xa8f
	.string	"__gl_noVertexData"
	.4byte	0xac1
	.string	"__gl_noEndData"
	.4byte	0xae6
	.string	"__gl_noErrorData"
	.4byte	0xb18
	.string	"__gl_noCombineData"
	.4byte	0xb71
	.string	"gluTessProperty"
	.4byte	0xbcd
	.string	"gluGetTessProperty"
	.4byte	0xc14
	.string	"gluTessNormal"
	.4byte	0xc62
	.string	"gluTessCallback"
	.4byte	0xd1e
	.string	"gluTessEndContour"
	.4byte	0xd49
	.string	"gluTessBeginContour"
	.4byte	0xd74
	.string	"gluNextContour"
	.4byte	0xdaf
	.string	"gluTessBeginPolygon"
	.4byte	0xdea
	.string	"gluBeginPolygon"
	.4byte	0xec3
	.string	"gluTessEndPolygon"
	.4byte	0xf17
	.string	"gluEndPolygon"
	.4byte	0xf7f
	.string	"gluTessVertex"
	.4byte	0x1030
	.string	"gluDeleteTess"
	.4byte	0x1059
	.string	"gluNewTess"
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
.LASF118:
	.string	"__gl_noEndData"
.LASF60:
	.string	"pqHandle"
.LASF137:
	.string	"EmptyCache"
.LASF45:
	.string	"callEndData"
.LASF63:
	.string	"marked"
.LASF106:
	.string	"type"
.LASF101:
	.string	"T_IN_POLYGON"
.LASF26:
	.string	"windingRule"
.LASF134:
	.string	"gluTessBeginPolygon"
.LASF148:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/tess.c"
.LASF6:
	.string	"long long unsigned int"
.LASF44:
	.string	"callVertexData"
.LASF58:
	.string	"data"
.LASF99:
	.string	"order"
.LASF123:
	.string	"tess"
.LASF38:
	.string	"callMesh"
.LASF14:
	.string	"GLfloat"
.LASF55:
	.string	"next"
.LASF104:
	.string	"noBegin"
.LASF78:
	.string	"DictList"
.LASF95:
	.string	"PQSortHandle"
.LASF21:
	.string	"callError"
.LASF3:
	.string	"signed char"
.LASF141:
	.string	"MakeDormant"
.LASF83:
	.string	"PQHeapHandle"
.LASF111:
	.string	"noCombine"
.LASF18:
	.string	"state"
.LASF9:
	.string	"long int"
.LASF57:
	.string	"anEdge"
.LASF149:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\freespace2wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF126:
	.string	"gluGetTessProperty"
.LASF84:
	.string	"PriorityQHeap"
.LASF82:
	.string	"PQHeapKey"
.LASF5:
	.string	"long long int"
.LASF119:
	.string	"__gl_noErrorData"
.LASF145:
	.string	"clamped"
.LASF102:
	.string	"T_IN_CONTOUR"
.LASF39:
	.string	"emptyCache"
.LASF117:
	.string	"__gl_noVertexData"
.LASF30:
	.string	"callCombine"
.LASF80:
	.string	"frame"
.LASF97:
	.string	"heap"
.LASF125:
	.string	"value"
.LASF110:
	.string	"errnum"
.LASF128:
	.string	"gluTessCallback"
.LASF89:
	.string	"initialized"
.LASF0:
	.string	"unsigned int"
.LASF51:
	.string	"fHead"
.LASF105:
	.string	"noEdgeFlag"
.LASF69:
	.string	"activeRegion"
.LASF150:
	.string	"TessState"
.LASF124:
	.string	"which"
.LASF7:
	.string	"long unsigned int"
.LASF42:
	.string	"callBeginData"
.LASF138:
	.string	"vLast"
.LASF32:
	.string	"boundaryOnly"
.LASF29:
	.string	"event"
.LASF87:
	.string	"size"
.LASF2:
	.string	"short unsigned int"
.LASF109:
	.string	"noError"
.LASF129:
	.string	"GotoState"
.LASF152:
	.string	"gluNewTess"
.LASF27:
	.string	"fatalError"
.LASF65:
	.string	"GLUhalfEdge"
.LASF96:
	.string	"PriorityQSort"
.LASF114:
	.string	"noMesh"
.LASF46:
	.string	"callErrorData"
.LASF100:
	.string	"T_DORMANT"
.LASF24:
	.string	"tUnit"
.LASF142:
	.string	"CacheVertex"
.LASF140:
	.string	"gluEndPolygon"
.LASF53:
	.string	"eHeadSym"
.LASF17:
	.string	"GLUtesselator"
.LASF116:
	.string	"__gl_noEdgeFlagData"
.LASF91:
	.string	"PQnode"
.LASF13:
	.string	"GLboolean"
.LASF144:
	.string	"tooLarge"
.LASF130:
	.string	"newState"
.LASF76:
	.string	"fixUpperEdge"
.LASF31:
	.string	"flagBoundary"
.LASF20:
	.string	"mesh"
.LASF94:
	.string	"PQSortKey"
.LASF151:
	.string	"noEnd"
.LASF22:
	.string	"normal"
.LASF77:
	.string	"DictListKey"
.LASF47:
	.string	"callCombineData"
.LASF98:
	.string	"keys"
.LASF49:
	.string	"GLUmesh"
.LASF15:
	.string	"float"
.LASF115:
	.string	"__gl_noBeginData"
.LASF62:
	.string	"trail"
.LASF75:
	.string	"dirty"
.LASF23:
	.string	"sUnit"
.LASF1:
	.string	"unsigned char"
.LASF92:
	.string	"node"
.LASF4:
	.string	"short int"
.LASF68:
	.string	"Lface"
.LASF133:
	.string	"gluNextContour"
.LASF50:
	.string	"vHead"
.LASF136:
	.string	"AddVertex"
.LASF103:
	.string	"CachedVertex"
.LASF52:
	.string	"eHead"
.LASF19:
	.string	"lastEdge"
.LASF147:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF64:
	.string	"inside"
.LASF79:
	.string	"head"
.LASF28:
	.string	"dict"
.LASF66:
	.string	"Onext"
.LASF8:
	.string	"char"
.LASF71:
	.string	"ActiveRegion"
.LASF12:
	.string	"GLenum"
.LASF16:
	.string	"GLdouble"
.LASF70:
	.string	"winding"
.LASF122:
	.string	"gluTessProperty"
.LASF135:
	.string	"gluBeginPolygon"
.LASF108:
	.string	"noVertex"
.LASF93:
	.string	"PQhandleElem"
.LASF85:
	.string	"nodes"
.LASF88:
	.string	"freeList"
.LASF33:
	.string	"lonelyTriList"
.LASF139:
	.string	"gluTessEndPolygon"
.LASF73:
	.string	"windingNumber"
.LASF143:
	.string	"gluTessVertex"
.LASF54:
	.string	"GLUvertex"
.LASF121:
	.string	"outData"
.LASF25:
	.string	"relTolerance"
.LASF59:
	.string	"coords"
.LASF67:
	.string	"Lnext"
.LASF40:
	.string	"cacheCount"
.LASF48:
	.string	"polygonData"
.LASF113:
	.string	"dataOut"
.LASF11:
	.string	"jmp_buf"
.LASF34:
	.string	"callBegin"
.LASF37:
	.string	"callEnd"
.LASF43:
	.string	"callEdgeFlagData"
.LASF132:
	.string	"gluTessBeginContour"
.LASF86:
	.string	"handles"
.LASF146:
	.string	"gluDeleteTess"
.LASF112:
	.string	"weight"
.LASF90:
	.string	"handle"
.LASF107:
	.string	"boundaryEdge"
.LASF56:
	.string	"prev"
.LASF36:
	.string	"callVertex"
.LASF81:
	.string	"DictListNode"
.LASF127:
	.string	"gluTessNormal"
.LASF74:
	.string	"sentinel"
.LASF61:
	.string	"GLUface"
.LASF41:
	.string	"cache"
.LASF10:
	.string	"double"
.LASF72:
	.string	"nodeUp"
.LASF35:
	.string	"callEdgeFlag"
.LASF120:
	.string	"__gl_noCombineData"
.LASF131:
	.string	"gluTessEndContour"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
