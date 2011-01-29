	.file	"render.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.type	MaximumFan, @function
MaximumFan:
.LFB4:
	.file 1 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/render.c"
	.loc 1 162 0
.LVL0:
	.loc 1 167 0
	lis 9,.LANCHOR0@ha
	.loc 1 162 0
	stwu 1,-24(1)
.LCFI0:
	.loc 1 167 0
	la 9,.LANCHOR0@l(9)
	mr 11,4
.LVL1:
	lswi 5,9,12
	stswi 5,3,12
	li 10,0
.LVL2:
	li 8,0
	b .L2
.L3:
	.loc 1 172 0
	stw 10,16(9)
	li 0,1
	lwz 10,20(11)
	stb 0,20(10)
	.loc 1 171 0
	lwz 11,8(11)
.L2:
	lwz 9,20(11)
	mr 7,8
	addi 8,8,1
	lbz 0,21(9)
	cmpwi 7,0,0
	bne+ 7,.L4
.L5:
	mr 8,7
	b .L6
.L4:
	lbz 0,20(9)
	cmpwi 7,0,0
	beq+ 7,.L3
	b .L5
.LVL3:
.L7:
	.loc 1 176 0
	stw 10,16(9)
	li 0,1
	lwz 9,4(4)
	lwz 10,20(9)
	stb 0,20(10)
	.loc 1 175 0
	lwz 9,4(4)
	lwz 4,12(9)
.LVL4:
.L6:
	lwz 9,4(4)
	mr 11,8
	addi 8,8,1
	lwz 9,20(9)
	lbz 0,21(9)
	cmpwi 7,0,0
	beq- 7,.L13
	lbz 0,20(9)
	cmpwi 7,0,0
	beq+ 7,.L7
	b .L13
.L10:
	.loc 1 181 0
	li 0,0
	stb 0,20(10)
	lwz 10,16(10)
.L13:
	cmpwi 7,10,0
	bne+ 7,.L10
	.loc 1 183 0
	addi 1,1,24
	.loc 1 182 0
	stw 4,4(3)
	stw 11,0(3)
	.loc 1 183 0
	blr
.LFE4:
	.size	MaximumFan, .-MaximumFan
	.align 2
	.type	MaximumStrip, @function
MaximumStrip:
.LFB5:
	.loc 1 189 0
.LVL5:
	.loc 1 200 0
	lis 9,.LANCHOR0@ha
	.loc 1 189 0
	stwu 1,-24(1)
.LCFI1:
	.loc 1 200 0
	la 9,.LANCHOR0@l(9)
	li 10,0
.LVL6:
	addi 9,9,12
	li 11,0
.LVL7:
	lswi 5,9,12
	stswi 5,3,12
	mr 8,4
.LVL8:
	b .L15
.L16:
	.loc 1 206 0
	stw 11,16(9)
	.loc 1 189 0
	addi 10,10,1
	.loc 1 206 0
	lwz 11,20(8)
	stb 6,20(11)
	.loc 1 208 0
	lwz 9,12(8)
	lwz 8,4(9)
	.loc 1 209 0
	lwz 9,20(8)
	lbz 0,21(9)
	cmpwi 7,0,0
	beq- 7,.L17
	lbz 0,20(9)
	cmpwi 7,0,0
	bne- 7,.L17
	.loc 1 210 0
	stw 11,16(9)
	addi 10,7,2
	lwz 11,20(8)
	stb 6,20(11)
	.loc 1 205 0
	lwz 8,8(8)
.L15:
	lwz 9,20(8)
	.loc 1 206 0
	li 6,1
	.loc 1 189 0
	mr 7,10
	.loc 1 205 0
	lbz 0,21(9)
	cmpwi 7,0,0
	beq- 7,.L17
	lbz 0,20(9)
	cmpwi 7,0,0
	beq+ 7,.L16
.L17:
	li 7,0
.LVL9:
	b .L21
.LVL10:
.L22:
	.loc 1 215 0
	stw 11,16(9)
	.loc 1 189 0
	addi 7,7,1
	.loc 1 215 0
	lwz 9,4(4)
	lwz 11,20(9)
	stb 5,20(11)
	.loc 1 217 0
	lwz 9,4(4)
	lwz 4,12(9)
.LVL11:
	.loc 1 218 0
	lwz 9,4(4)
	lwz 9,20(9)
	lbz 0,21(9)
	cmpwi 7,0,0
	beq- 7,.L23
	lbz 0,20(9)
	cmpwi 7,0,0
	bne- 7,.L23
	.loc 1 219 0
	stw 11,16(9)
	addi 7,6,2
	lwz 9,4(4)
	lwz 11,20(9)
	stb 5,20(11)
	.loc 1 214 0
	lwz 9,4(4)
	lwz 9,8(9)
	lwz 4,4(9)
.LVL12:
.L21:
	lwz 9,4(4)
	.loc 1 215 0
	li 5,1
	.loc 1 189 0
	mr 6,7
	.loc 1 214 0
	lwz 9,20(9)
	lbz 0,21(9)
	cmpwi 7,0,0
	beq- 7,.L23
	lbz 0,20(9)
	cmpwi 7,0,0
	beq+ 7,.L22
.L23:
	.loc 1 224 0
	andi. 0,10,1
	.loc 1 223 0
	add 10,7,10
.LVL13:
	.loc 1 224 0
	bne- 0,.L27
	.loc 1 225 0
	lwz 9,4(8)
	b .L35
.L27:
	.loc 1 226 0
	andi. 0,7,1
	mr 9,4
	beq- 0,.L35
	.loc 1 233 0
	lwz 9,8(4)
	.loc 1 232 0
	addi 10,10,-1
	b .L35
.L32:
	.loc 1 236 0
	li 0,0
	stb 0,20(11)
	lwz 11,16(11)
.L35:
	cmpwi 7,11,0
	bne+ 7,.L32
	.loc 1 238 0
	addi 1,1,24
	.loc 1 237 0
	stw 9,4(3)
	stw 10,0(3)
	.loc 1 238 0
	blr
.LFE5:
	.size	MaximumStrip, .-MaximumStrip
	.align 2
	.type	RenderTriangle, @function
RenderTriangle:
.LFB6:
	.loc 1 242 0
.LVL14:
	.loc 1 247 0
	lwz 9,20(4)
	lwz 0,124(3)
	stw 0,16(9)
	lwz 0,20(4)
	stw 0,124(3)
	li 0,1
	lwz 9,20(4)
	stb 0,20(9)
	.loc 1 248 0
	blr
.LFE6:
	.size	RenderTriangle, .-RenderTriangle
	.align 2
	.globl __gl_renderMesh
	.type	__gl_renderMesh, @function
__gl_renderMesh:
.LFB2:
	.loc 1 86 0
.LVL15:
	mflr 0
.LCFI2:
	stwu 1,-80(1)
.LCFI3:
	.loc 1 92 0
	addi 9,4,64
	.loc 1 86 0
	stmw 22,40(1)
.LCFI4:
	mr 29,3
	stw 0,84(1)
.LCFI5:
	.loc 1 90 0
	li 0,0
	stw 0,124(3)
	.loc 1 92 0
	lwz 24,64(4)
.LVL16:
	b .L39
.L40:
	.loc 1 93 0
	li 0,0
	stb 0,20(24)
	.loc 1 92 0
	lwz 24,0(24)
.L39:
	cmpw 7,24,9
	bne+ 7,.L40
.LBB6:
.LBB9:
	.loc 1 130 0
	lis 9,RenderTriangle@ha
.LBE9:
.LBE6:
	.loc 1 95 0
	lwz 25,64(4)
.LVL17:
.LBB18:
.LBB8:
	.loc 1 130 0
	la 22,RenderTriangle@l(9)
.LBE8:
	addi 26,1,20
.LBB7:
	.loc 1 136 0
	addi 23,1,8
	b .L42
.LVL18:
.L43:
.LBE7:
.LBE18:
	.loc 1 101 0
	lbz 0,21(25)
	cmpwi 7,0,0
	beq- 7,.L44
.LVL19:
	lbz 0,20(25)
	cmpwi 7,0,0
	bne- 7,.L44
.LBB19:
.LBB10:
	.loc 1 129 0
	lbz 0,120(29)
	mr 30,22
	.loc 1 122 0
	lwz 31,8(25)
	.loc 1 129 0
	li 27,1
	cmpwi 7,0,0
	bne+ 7,.L49
.LVL20:
.LBE10:
	.loc 1 130 0
	mr 3,26
	mr 4,31
.LVL21:
	bl MaximumFan
	lwz 0,20(1)
.LBB11:
	mr 28,31
	cmpwi 7,0,1
	ble- 7,.L52
	stw 0,20(1)
	lswi 5,26,12
	stswi 5,23,12
	lwz 30,16(1)
	lwz 28,12(1)
	lwz 27,8(1)
.L52:
.LBE11:
	.loc 1 131 0
	lwz 4,12(31)
	mr 3,26
	bl MaximumFan
	lwz 0,20(1)
.LBB12:
	cmpw 7,0,27
	ble- 7,.L53
	lswi 5,26,12
	stswi 5,23,12
	lwz 30,16(1)
	lwz 28,12(1)
	lwz 27,8(1)
.L53:
.LBE12:
	.loc 1 132 0
	lwz 9,8(31)
	mr 3,26
	lwz 4,4(9)
	bl MaximumFan
	lwz 0,20(1)
.LBB13:
	cmpw 7,0,27
	ble- 7,.L55
	lswi 5,26,12
	stswi 5,23,12
	lwz 30,16(1)
	lwz 28,12(1)
	lwz 27,8(1)
.L55:
.LBE13:
	.loc 1 134 0
	mr 3,26
	mr 4,31
	bl MaximumStrip
	lwz 0,20(1)
.LBB14:
	cmpw 7,0,27
	ble- 7,.L57
	lswi 5,26,12
	stswi 5,23,12
	lwz 30,16(1)
	lwz 28,12(1)
	lwz 27,8(1)
.L57:
.LBE14:
	.loc 1 135 0
	lwz 4,12(31)
	mr 3,26
	bl MaximumStrip
	lwz 0,20(1)
.LBB15:
	cmpw 7,0,27
	ble- 7,.L59
	lswi 5,26,12
	stswi 5,23,12
	lwz 30,16(1)
	lwz 28,12(1)
	lwz 27,8(1)
.L59:
.LBE15:
	.loc 1 136 0
	lwz 9,8(31)
	mr 3,26
.LBB16:
	mr 31,28
.LBE16:
	lwz 4,4(9)
	bl MaximumStrip
	lwz 0,20(1)
.LBB17:
	cmpw 7,0,27
	ble- 7,.L49
	lswi 5,26,12
	stswi 5,23,12
	lwz 30,16(1)
	lwz 31,12(1)
	lwz 27,8(1)
.LVL22:
.L49:
	.loc 1 138 0
	mr 4,31
.LVL23:
	mr 5,27
	mr 3,29
	mtctr 30
	bctrl
.LVL24:
.L44:
.LBE17:
.LBE19:
	.loc 1 95 0
	lwz 25,0(25)
.L42:
	cmpw 7,25,24
	bne+ 7,.L43
.LVL25:
	.loc 1 106 0
	lwz 30,124(29)
.LVL26:
	cmpwi 7,30,0
	beq- 7,.L84
.LVL27:
.LBB20:
.LBB21:
	.loc 1 260 0
	lwz 0,3360(29)
	lis 9,__gl_noBeginData@ha
	la 9,__gl_noBeginData@l(9)
	cmpw 7,0,9
	beq- 7,.L66
	li 3,4
	lwz 4,3640(29)
.LVL28:
	mtctr 0
	bctrl
	b .L68
.LVL29:
.L66:
	lwz 0,128(29)
	li 3,4
	mtctr 0
	bctrl
.LVL30:
.L68:
	.loc 1 274 0
	lis 9,__gl_noEdgeFlagData@ha
	.loc 1 260 0
	li 28,-1
.LVL31:
	.loc 1 274 0
	la 26,__gl_noEdgeFlagData@l(9)
	.loc 1 277 0
	lis 9,__gl_noVertexData@ha
	la 27,__gl_noVertexData@l(9)
.LVL32:
.L69:
	.loc 1 265 0
	lwz 31,8(30)
.L70:
	.loc 1 267 0
	lbz 0,120(29)
	cmpwi 7,0,0
	beq- 7,.L71
	.loc 1 271 0
	lwz 9,4(31)
	lwz 9,20(9)
	lbz 0,21(9)
	cntlzw 0,0
.LVL33:
	srwi 0,0,5
	.loc 1 272 0
	cmpw 7,28,0
	rlwinm 11,0,0,0xff
.LVL34:
	.loc 1 274 0
	mr 3,11
	.loc 1 272 0
	beq- 7,.L71
.LVL35:
	.loc 1 274 0
	lwz 9,3364(29)
	mr 28,0
	cmpw 7,9,26
	beq- 7,.L74
.LVL36:
	lwz 4,3640(29)
	mtctr 9
	bctrl
	b .L71
.LVL37:
.L74:
	lwz 9,132(29)
	mr 3,11
	mr 28,0
	mtctr 9
	bctrl
.LVL38:
.L71:
	.loc 1 277 0
	lwz 0,3368(29)
	lwz 9,16(31)
	cmpw 7,0,27
	beq- 7,.L76
	lwz 3,12(9)
	mtctr 0
	lwz 4,3640(29)
	bctrl
	b .L78
.LVL39:
.L76:
	lwz 0,136(29)
	lwz 3,12(9)
	mtctr 0
	bctrl
.L78:
	.loc 1 279 0
	lwz 31,12(31)
	.loc 1 280 0
	lwz 0,8(30)
	cmpw 7,31,0
	bne+ 7,.L70
	.loc 1 262 0
	lwz 30,16(30)
	cmpwi 7,30,0
	bne+ 7,.L69
	.loc 1 282 0
	lwz 0,3372(29)
	lis 9,__gl_noEndData@ha
	la 9,__gl_noEndData@l(9)
	cmpw 7,0,9
	beq- 7,.L81
	lwz 3,3640(29)
	mtctr 0
	bctrl
	b .L83
.L81:
	lwz 0,140(29)
	mtctr 0
	bctrl
.L83:
.LBE21:
.LBE20:
	.loc 1 108 0
	li 0,0
	stw 0,124(29)
.LVL40:
.L84:
	.loc 1 110 0
	lwz 0,84(1)
	lmw 22,40(1)
.LVL41:
	addi 1,1,80
	mtlr 0
	blr
.LFE2:
	.size	__gl_renderMesh, .-__gl_renderMesh
	.align 2
	.type	RenderFan, @function
RenderFan:
.LFB8:
	.loc 1 287 0
.LVL42:
	mflr 0
.LCFI6:
	stwu 1,-24(1)
.LCFI7:
	.loc 1 292 0
	lis 9,__gl_noBeginData@ha
	.loc 1 287 0
	stmw 29,12(1)
.LCFI8:
	.loc 1 292 0
	la 9,__gl_noBeginData@l(9)
	.loc 1 287 0
	stw 0,28(1)
.LCFI9:
	.loc 1 287 0
	mr 31,3
	mr 30,4
	.loc 1 292 0
	lwz 0,3360(3)
	cmpw 7,0,9
	beq- 7,.L90
.LVL43:
	li 3,6
.LVL44:
	lwz 4,3640(31)
	mtctr 0
	bctrl
.LVL45:
	b .L92
.LVL46:
.L90:
	lwz 0,128(3)
	li 3,6
.LVL47:
	mtctr 0
	bctrl
.LVL48:
.L92:
	.loc 1 293 0
	lwz 0,3368(31)
	lis 9,__gl_noVertexData@ha
	la 9,__gl_noVertexData@l(9)
	cmpw 7,0,9
	lwz 9,16(30)
	beq- 7,.L93
	lwz 3,12(9)
	mtctr 0
	lwz 4,3640(31)
	bctrl
	b .L95
.L93:
	lwz 0,136(31)
	lwz 3,12(9)
	mtctr 0
	bctrl
.L95:
	.loc 1 294 0
	lwz 0,3368(31)
	lis 9,__gl_noVertexData@ha
	la 9,__gl_noVertexData@l(9)
	cmpw 7,0,9
	lwz 9,4(30)
	beq- 7,.L96
	lwz 9,16(9)
	mtctr 0
	lwz 4,3640(31)
	lwz 3,12(9)
	bctrl
	b .L109
.L96:
	lwz 9,16(9)
	lwz 0,136(31)
	lwz 3,12(9)
	mtctr 0
	bctrl
	b .L109
.L99:
	.loc 1 297 0
	li 0,1
	stb 0,20(9)
	.loc 1 300 0
	lwz 0,3368(31)
	.loc 1 299 0
	lwz 30,8(30)
	.loc 1 300 0
	cmpw 7,0,29
	lwz 9,4(30)
	beq- 7,.L100
	lwz 9,16(9)
	mtctr 0
	lwz 4,3640(31)
	lwz 3,12(9)
	bctrl
	b .L112
.L100:
	lwz 9,16(9)
	lwz 0,136(31)
	lwz 3,12(9)
	mtctr 0
	bctrl
	b .L112
.L109:
	lis 9,__gl_noVertexData@ha
	la 29,__gl_noVertexData@l(9)
.L112:
	.loc 1 296 0
	lwz 9,20(30)
	lbz 0,21(9)
	cmpwi 7,0,0
	beq- 7,.L102
	lbz 0,20(9)
	cmpwi 7,0,0
	beq+ 7,.L99
.L102:
	.loc 1 304 0
	lwz 0,3372(31)
	lis 9,__gl_noEndData@ha
	la 9,__gl_noEndData@l(9)
	cmpw 7,0,9
	beq- 7,.L104
	lwz 3,3640(31)
	mtctr 0
	bctrl
	b .L107
.L104:
	lwz 31,140(31)
.LVL49:
	mtctr 31
	bctrl
.LVL50:
.L107:
	.loc 1 305 0
	lwz 0,28(1)
	lmw 29,12(1)
.LVL51:
	addi 1,1,24
	mtlr 0
	blr
.LFE8:
	.size	RenderFan, .-RenderFan
	.align 2
	.type	RenderStrip, @function
RenderStrip:
.LFB9:
	.loc 1 309 0
.LVL52:
	mflr 0
.LCFI10:
	stwu 1,-24(1)
.LCFI11:
	.loc 1 314 0
	lis 9,__gl_noBeginData@ha
	.loc 1 309 0
	stmw 29,12(1)
.LCFI12:
	.loc 1 314 0
	la 9,__gl_noBeginData@l(9)
	.loc 1 309 0
	stw 0,28(1)
.LCFI13:
	.loc 1 309 0
	mr 31,3
	mr 30,4
	.loc 1 314 0
	lwz 0,3360(3)
	cmpw 7,0,9
	beq- 7,.L114
.LVL53:
	li 3,5
.LVL54:
	lwz 4,3640(31)
	mtctr 0
	bctrl
.LVL55:
	b .L116
.LVL56:
.L114:
	lwz 0,128(3)
	li 3,5
.LVL57:
	mtctr 0
	bctrl
.LVL58:
.L116:
	.loc 1 315 0
	lwz 0,3368(31)
	lis 9,__gl_noVertexData@ha
	la 9,__gl_noVertexData@l(9)
	cmpw 7,0,9
	lwz 9,16(30)
	beq- 7,.L117
	lwz 3,12(9)
	mtctr 0
	lwz 4,3640(31)
	bctrl
	b .L119
.L117:
	lwz 0,136(31)
	lwz 3,12(9)
	mtctr 0
	bctrl
.L119:
	.loc 1 316 0
	lwz 0,3368(31)
	lis 9,__gl_noVertexData@ha
	la 9,__gl_noVertexData@l(9)
	cmpw 7,0,9
	lwz 9,4(30)
	beq- 7,.L120
	lwz 9,16(9)
	mtctr 0
	lwz 4,3640(31)
	lwz 3,12(9)
	bctrl
	b .L138
.L120:
	lwz 9,16(9)
	lwz 0,136(31)
	lwz 3,12(9)
	mtctr 0
	bctrl
	b .L138
.L123:
	.loc 1 319 0
	li 0,1
	stb 0,20(9)
	.loc 1 322 0
	lwz 0,3368(31)
	.loc 1 321 0
	lwz 9,12(30)
	.loc 1 322 0
	cmpw 7,0,29
	.loc 1 321 0
	lwz 30,4(9)
.LVL59:
	lwz 9,16(30)
	.loc 1 322 0
	beq- 7,.L124
	lwz 3,12(9)
	mtctr 0
	lwz 4,3640(31)
	bctrl
	b .L126
.L124:
	lwz 0,136(31)
	lwz 3,12(9)
	mtctr 0
	bctrl
.L126:
	.loc 1 323 0
	lwz 9,20(30)
	lbz 0,21(9)
	cmpwi 7,0,0
	beq- 7,.L127
	lbz 0,20(9)
	cmpwi 7,0,0
	bne- 7,.L127
	.loc 1 325 0
	li 0,1
	stb 0,20(9)
	.loc 1 328 0
	lwz 0,3368(31)
	.loc 1 327 0
	lwz 30,8(30)
.LVL60:
	.loc 1 328 0
	cmpw 7,0,29
	lwz 9,4(30)
	beq- 7,.L130
	lwz 9,16(9)
	mtctr 0
	lwz 4,3640(31)
	lwz 3,12(9)
	bctrl
	b .L141
.L130:
	lwz 9,16(9)
	lwz 0,136(31)
	lwz 3,12(9)
	mtctr 0
	bctrl
	b .L141
.L138:
	.loc 1 322 0
	lis 9,__gl_noVertexData@ha
	la 29,__gl_noVertexData@l(9)
.L141:
	.loc 1 318 0
	lwz 9,20(30)
	lbz 0,21(9)
	cmpwi 7,0,0
	beq- 7,.L127
	lbz 0,20(9)
	cmpwi 7,0,0
	beq+ 7,.L123
.L127:
	.loc 1 332 0
	lwz 0,3372(31)
	lis 9,__gl_noEndData@ha
	la 9,__gl_noEndData@l(9)
	cmpw 7,0,9
	beq- 7,.L133
	lwz 3,3640(31)
	mtctr 0
	bctrl
	b .L136
.L133:
	lwz 31,140(31)
.LVL61:
	mtctr 31
	bctrl
.LVL62:
.L136:
	.loc 1 333 0
	lwz 0,28(1)
	lmw 29,12(1)
.LVL63:
	addi 1,1,24
	mtlr 0
	blr
.LFE9:
	.size	RenderStrip, .-RenderStrip
	.align 2
	.globl __gl_renderBoundary
	.type	__gl_renderBoundary, @function
__gl_renderBoundary:
.LFB10:
	.loc 1 343 0
.LVL64:
	mflr 0
.LCFI14:
	stwu 1,-40(1)
.LCFI15:
	.loc 1 349 0
	lis 9,__gl_noBeginData@ha
	.loc 1 343 0
	stmw 25,12(1)
.LCFI16:
	.loc 1 349 0
	la 25,__gl_noBeginData@l(9)
	.loc 1 343 0
	stw 0,44(1)
.LCFI17:
	.loc 1 352 0
	lis 9,__gl_noVertexData@ha
	la 26,__gl_noVertexData@l(9)
	.loc 1 355 0
	lis 9,__gl_noEndData@ha
	.loc 1 347 0
	lwz 29,64(4)
.LVL65:
	.loc 1 343 0
	mr 31,3
	.loc 1 347 0
	addi 28,4,64
	.loc 1 355 0
	la 27,__gl_noEndData@l(9)
	b .L143
.LVL66:
.L144:
	.loc 1 348 0
	lbz 0,21(29)
	cmpwi 7,0,0
	beq- 7,.L145
	.loc 1 349 0
	lwz 0,3360(31)
	cmpw 7,0,25
	beq- 7,.L147
	li 3,2
	lwz 4,3640(31)
.LVL67:
	mtctr 0
	bctrl
	b .L149
.LVL68:
.L147:
	lwz 0,128(31)
	li 3,2
	mtctr 0
	bctrl
.LVL69:
.L149:
	.loc 1 350 0
	lwz 30,8(29)
.L150:
	.loc 1 352 0
	lwz 0,3368(31)
	lwz 9,16(30)
	cmpw 7,0,26
	beq- 7,.L151
	lwz 3,12(9)
	mtctr 0
	lwz 4,3640(31)
	bctrl
	b .L153
.L151:
	lwz 0,136(31)
	lwz 3,12(9)
	mtctr 0
	bctrl
.L153:
	.loc 1 353 0
	lwz 30,12(30)
	.loc 1 354 0
	lwz 0,8(29)
	cmpw 7,30,0
	bne+ 7,.L150
	.loc 1 355 0
	lwz 0,3372(31)
	cmpw 7,0,27
	beq- 7,.L155
	lwz 3,3640(31)
	mtctr 0
	bctrl
	b .L145
.L155:
	lwz 0,140(31)
	mtctr 0
	bctrl
.LVL70:
.L145:
	.loc 1 347 0
	lwz 29,0(29)
.L143:
	cmpw 7,29,28
	bne+ 7,.L144
	.loc 1 358 0
	lwz 0,44(1)
	lmw 25,12(1)
.LVL71:
	addi 1,1,40
	mtlr 0
	blr
.LFE10:
	.size	__gl_renderBoundary, .-__gl_renderBoundary
	.align 2
	.type	ComputeNormal, @function
ComputeNormal:
.LFB11:
	.loc 1 374 0
.LVL72:
	stwu 1,-16(1)
.LCFI18:
	.loc 1 394 0
	cmpwi 7,5,0
	.loc 1 374 0
	stfd 31,8(1)
.LCFI19:
	.loc 1 376 0
	lwz 9,152(3)
	slwi 9,9,5
	addi 9,9,160
	add 11,3,9
.LVL73:
	.loc 1 394 0
	bne- 7,.L162
	.loc 1 395 0
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	stfd 0,0(4)
	stfd 0,16(4)
	stfd 0,8(4)
.L162:
	.loc 1 423 0
	lis 9,.LC0@ha
	.loc 1 399 0
	lfd 9,192(3)
	.loc 1 423 0
	lfd 1,.LC0@l(9)
	.loc 1 414 0
	mcrf 1,7
	.loc 1 399 0
	lfd 11,160(3)
	.loc 1 398 0
	addi 9,3,192
.LVL74:
	.loc 1 400 0
	lfd 10,200(3)
	.loc 1 418 0
	fmr 31,1
	.loc 1 400 0
	lfd 13,168(3)
	.loc 1 399 0
	fsub 9,9,11
.LVL75:
	.loc 1 401 0
	lfd 12,208(3)
	li 0,0
.LVL76:
	lfd 0,176(3)
	.loc 1 400 0
	fsub 5,10,13
.LVL77:
	.loc 1 401 0
	fsub 6,12,0
.LVL78:
	b .L164
.LVL79:
.L165:
	.loc 1 406 0
	lfd 13,16(9)
	lfd 0,176(3)
.LVL80:
	.loc 1 404 0
	lfd 10,0(9)
	.loc 1 406 0
	fsub 2,13,0
.LVL81:
	.loc 1 405 0
	lfd 12,8(9)
	.loc 1 404 0
	lfd 13,160(3)
	.loc 1 405 0
	lfd 0,168(3)
	.loc 1 410 0
	fmul 11,9,2
	.loc 1 413 0
	lfd 7,8(4)
	lfd 8,0(4)
	.loc 1 404 0
	fsub 4,10,13
.LVL82:
	.loc 1 405 0
	fsub 3,12,0
.LVL83:
	.loc 1 413 0
	lfd 12,16(4)
	.loc 1 410 0
	fmsub 11,6,4,11
	.loc 1 409 0
	fmul 0,6,3
	.loc 1 411 0
	fmul 13,5,4
	.loc 1 409 0
	fmsub 10,5,2,0
	.loc 1 413 0
	fmul 0,11,7
	.loc 1 411 0
	fmsub 9,9,3,13
	.loc 1 413 0
	fmadd 0,10,8,0
	fmadd 0,9,12,0
.LVL84:
	.loc 1 414 0
	bne- 1,.L166
	.loc 1 418 0
	fcmpu 7,0,31
	cror 30,29,30
	bne- 7,.L168
	.loc 1 419 0
	fadd 0,8,10
.LVL85:
	fadd 13,7,11
	fadd 12,12,9
	b .L182
.LVL86:
.L168:
	.loc 1 421 0
	fsub 0,8,10
.LVL87:
	fsub 13,7,11
	fsub 12,12,9
.L182:
	stfd 0,0(4)
	stfd 13,8(4)
	stfd 12,16(4)
	b .L171
.LVL88:
.L166:
	.loc 1 423 0
	fcmpu 7,0,1
	beq- 7,.L171
	cmpwi 6,0,0
	.loc 1 425 0
	bng- 7,.L174
	.loc 1 426 0
	blt- 6,.L177
	li 0,1
	b .L171
.L174:
	.loc 1 429 0
	bgt- 6,.L177
	li 0,-1
.L171:
	fmr 9,4
	fmr 5,3
	fmr 6,2
.LVL89:
.L164:
	.loc 1 402 0
	addi 9,9,32
	cmplw 7,9,11
	blt+ 7,.L165
	b .L180
.LVL90:
.L177:
	li 0,2
.LVL91:
.L180:
	.loc 1 435 0
	mr 3,0
.LVL92:
	lfd 31,8(1)
	addi 1,1,16
	blr
.LFE11:
	.size	ComputeNormal, .-ComputeNormal
	.align 2
	.globl __gl_renderCache
	.type	__gl_renderCache, @function
__gl_renderCache:
.LFB12:
	.loc 1 445 0
.LVL93:
	mflr 0
.LCFI20:
	stwu 1,-56(1)
.LCFI21:
	stmw 28,40(1)
.LCFI22:
	mr 31,3
	stw 0,60(1)
.LCFI23:
	.loc 1 446 0
	addi 28,3,160
.LVL94:
	.loc 1 447 0
	lwz 29,152(3)
	.loc 1 452 0
	cmpwi 7,29,2
	ble- 7,.L184
	.loc 1 460 0
	lis 9,.LC0@ha
	.loc 1 457 0
	lfd 0,16(3)
	.loc 1 460 0
	lfd 11,.LC0@l(9)
	.loc 1 458 0
	lfd 12,24(3)
	.loc 1 460 0
	fcmpu 7,0,11
	.loc 1 459 0
	lfd 13,32(3)
	.loc 1 457 0
	stfd 0,8(1)
	.loc 1 458 0
	stfd 12,16(1)
	.loc 1 459 0
	stfd 13,24(1)
	.loc 1 460 0
	bne- 7,.L186
	fcmpu 7,12,11
	bne- 7,.L186
	fcmpu 7,13,11
	bne+ 7,.L186
	.loc 1 461 0
	addi 4,1,8
	li 5,0
	bl ComputeNormal
.LVL95:
.L186:
	.loc 1 464 0
	mr 3,31
	addi 4,1,8
	li 5,1
	bl ComputeNormal
	.loc 1 465 0
	cmpwi 7,3,2
.LVL96:
	.loc 1 464 0
	mr 30,3
.LVL97:
	.loc 1 465 0
	li 3,0
	beq- 7,.L195
	.loc 1 469 0
	cmpwi 6,30,0
	beq- 6,.L184
	.loc 1 475 0
	lwz 9,96(31)
	xoris 0,9,0xfffe
	cmpwi 7,0,-30939
	beq 7,.L199
	xoris 0,9,0xfffe
	cmpwi 7,0,-30938
	beq 7,.L184
	xoris 0,9,0xfffe
	cmpwi 7,0,-30940
	bne 7,.L197
	.loc 1 480 0
	bge+ 6,.L197
	b .L184
.L199:
	.loc 1 483 0
	bgt+ 6,.L184
.L197:
	.loc 1 489 0
	lwz 11,3360(31)
	lis 9,__gl_noBeginData@ha
	la 9,__gl_noBeginData@l(9)
	lbz 0,121(31)
	cmpw 7,11,9
	beq- 7,.L200
	cmpwi 7,0,0
	li 3,2
	bne- 7,.L204
	lwz 0,152(31)
	cmpwi 7,0,4
	mfcr 0
	rlwinm 0,0,29,1
	neg 0,0
	rlwinm 3,0,0,0,30
	addi 3,3,6
.L204:
	lwz 4,3640(31)
	mtctr 11
	bctrl
	b .L207
.L200:
	cmpwi 7,0,0
	lwz 0,128(31)
	li 3,2
	mtctr 0
	bne- 7,.L210
	lwz 0,152(31)
	cmpwi 7,0,4
	mfcr 0
	rlwinm 0,0,29,1
	neg 0,0
	rlwinm 3,0,0,0,30
	addi 3,3,6
.L210:
	bctrl
.L207:
	.loc 1 493 0
	lwz 0,3368(31)
	lis 9,__gl_noVertexData@ha
	la 9,__gl_noVertexData@l(9)
	lwz 3,184(31)
	cmpw 7,0,9
	beq- 7,.L213
	lwz 4,3640(31)
	mtctr 0
	bctrl
	b .L215
.L213:
	lwz 0,136(31)
	mtctr 0
	bctrl
.L215:
	.loc 1 494 0
	cmpwi 7,30,0
	.loc 1 447 0
	slwi 9,29,5
	addi 9,9,160
	add 29,31,9
.LVL98:
	.loc 1 494 0
	ble- 7,.L216
	.loc 1 496 0
	lis 9,__gl_noVertexData@ha
	.loc 1 495 0
	addi 30,31,192
.LVL99:
	.loc 1 496 0
	la 28,__gl_noVertexData@l(9)
.LVL100:
	b .L218
.L219:
	lwz 9,3368(31)
	lwz 0,24(30)
	cmpw 7,9,28
	mr 3,0
	beq- 7,.L220
	lwz 4,3640(31)
	mtctr 9
	bctrl
	b .L222
.L220:
	mr 3,0
	lwz 0,136(31)
	mtctr 0
	bctrl
.L222:
	.loc 1 495 0
	addi 30,30,32
.L218:
	cmplw 7,30,29
	blt+ 7,.L219
	b .L223
.LVL101:
.L216:
	.loc 1 500 0
	lis 9,__gl_noVertexData@ha
	.loc 1 499 0
	addi 30,29,-32
.LVL102:
	.loc 1 500 0
	la 29,__gl_noVertexData@l(9)
.LVL103:
	b .L224
.L225:
	lwz 9,3368(31)
	lwz 0,24(30)
	cmpw 7,9,29
	mr 3,0
	beq- 7,.L226
	lwz 4,3640(31)
	mtctr 9
	bctrl
	b .L228
.L226:
	mr 3,0
	lwz 0,136(31)
	mtctr 0
	bctrl
.L228:
	.loc 1 499 0
	addi 30,30,-32
.L224:
	cmplw 7,30,28
	bgt+ 7,.L225
.LVL104:
.L223:
	.loc 1 503 0
	lwz 0,3372(31)
	lis 9,__gl_noEndData@ha
	la 9,__gl_noEndData@l(9)
	cmpw 7,0,9
	beq- 7,.L229
	lwz 3,3640(31)
	mtctr 0
	bctrl
	b .L184
.L229:
	lwz 31,140(31)
.LVL105:
	mtctr 31
	bctrl
.LVL106:
.L184:
	li 3,1
.L195:
	.loc 1 505 0
	lwz 0,60(1)
	lmw 28,40(1)
.LVL107:
	addi 1,1,56
	mtlr 0
	blr
.LFE12:
	.size	__gl_renderCache, .-__gl_renderCache
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	C.0.9572, @object
	.size	C.0.9572, 12
C.0.9572:
	.long	0
	.long	0
	.long	RenderFan
	.type	C.1.9602, @object
	.size	C.1.9602, 12
C.1.9602:
	.long	0
	.long	0
	.long	RenderStrip
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI1-.LFB5
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI3-.LFB2
	.byte	0xe
	.uleb128 0x50
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
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
	.byte	0x9a
	.uleb128 0x6
	.byte	0x99
	.uleb128 0x7
	.byte	0x98
	.uleb128 0x8
	.byte	0x97
	.uleb128 0x9
	.byte	0x96
	.uleb128 0xa
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI7-.LFB8
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI9-.LCFI7
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
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI11-.LFB9
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI13-.LCFI11
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
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI15-.LFB10
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
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
	.byte	0x9a
	.uleb128 0x6
	.byte	0x99
	.uleb128 0x7
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI18-.LFB11
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xbf
	.uleb128 0x2
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI21-.LFB12
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
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
	.4byte	.LCFI23-.LCFI22
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE16:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL41-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB8-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB9-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL71-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL70-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LFB11-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL88-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x29
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x29
	.4byte	.LVL90-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL90-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL90-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LFB12-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x6e
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
	.4byte	0xda7
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0x1
	.4byte	.LASF126
	.4byte	.LASF127
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
	.4byte	.LASF128
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
	.uleb128 0xc
	.4byte	.LASF99
	.byte	0xc
	.byte	0x1
	.byte	0x38
	.4byte	0x8e8
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x1
	.byte	0x39
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0x1
	.byte	0x3a
	.4byte	0x4a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF101
	.byte	0x1
	.byte	0x3b
	.4byte	0x904
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.byte	0x1
	.4byte	0x8fe
	.uleb128 0x11
	.4byte	0x8fe
	.uleb128 0x11
	.4byte	0x4a2
	.uleb128 0x11
	.4byte	0x70
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xbd
	.uleb128 0x7
	.byte	0x4
	.4byte	0x8e8
	.uleb128 0x17
	.4byte	.LASF103
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.4byte	0x8b1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST0
	.4byte	0x95e
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x1
	.byte	0xa1
	.4byte	0x4a2
	.4byte	.LLST1
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0x1
	.byte	0xa7
	.4byte	0x8b1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x19
	.4byte	.LASF61
	.byte	0x1
	.byte	0xa8
	.4byte	0x4b8
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1a
	.string	"e"
	.byte	0x1
	.byte	0xa9
	.4byte	0x4a2
	.4byte	.LLST2
	.byte	0x0
	.uleb128 0x17
	.4byte	.LASF104
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.4byte	0x8b1
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST3
	.4byte	0x9e4
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x1
	.byte	0xbc
	.4byte	0x4a2
	.4byte	.LLST4
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0x1
	.byte	0xc8
	.4byte	0x8b1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x19
	.4byte	.LASF106
	.byte	0x1
	.byte	0xc9
	.4byte	0x70
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.4byte	.LASF107
	.byte	0x1
	.byte	0xc9
	.4byte	0x70
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	.LASF61
	.byte	0x1
	.byte	0xca
	.4byte	0x4b8
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1a
	.string	"e"
	.byte	0x1
	.byte	0xcb
	.4byte	0x4a2
	.4byte	.LLST6
	.uleb128 0x1c
	.4byte	.LASF108
	.byte	0x1
	.byte	0xcb
	.4byte	0x4a2
	.uleb128 0x1c
	.4byte	.LASF51
	.byte	0x1
	.byte	0xcb
	.4byte	0x4a2
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF115
	.byte	0x1
	.byte	0xf2
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x51
	.4byte	0xa20
	.uleb128 0x1e
	.4byte	.LASF109
	.byte	0x1
	.byte	0xf1
	.4byte	0x8fe
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.string	"e"
	.byte	0x1
	.byte	0xf1
	.4byte	0x4a2
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LASF82
	.byte	0x1
	.byte	0xf1
	.4byte	0x70
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x20
	.4byte	.LASF111
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.byte	0x1
	.4byte	0xa63
	.uleb128 0x21
	.4byte	.LASF109
	.byte	0x1
	.byte	0x71
	.4byte	0x8fe
	.uleb128 0x21
	.4byte	.LASF110
	.byte	0x1
	.byte	0x71
	.4byte	0x4b8
	.uleb128 0x22
	.string	"e"
	.byte	0x1
	.byte	0x7a
	.4byte	0x4a2
	.uleb128 0x22
	.string	"max"
	.byte	0x1
	.byte	0x7b
	.4byte	0x8b1
	.uleb128 0x1c
	.4byte	.LASF102
	.byte	0x1
	.byte	0x7b
	.4byte	0x8b1
	.byte	0x0
	.uleb128 0x20
	.4byte	.LASF112
	.byte	0x1
	.byte	0xfc
	.byte	0x1
	.byte	0x1
	.4byte	0xaa7
	.uleb128 0x21
	.4byte	.LASF109
	.byte	0x1
	.byte	0xfb
	.4byte	0x8fe
	.uleb128 0x23
	.string	"f"
	.byte	0x1
	.byte	0xfb
	.4byte	0x4b8
	.uleb128 0x24
	.string	"e"
	.byte	0x1
	.2byte	0x100
	.4byte	0x4a2
	.uleb128 0x25
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x101
	.4byte	0x4d
	.uleb128 0x25
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x102
	.4byte	0x4d
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF118
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST8
	.4byte	0xb61
	.uleb128 0x18
	.4byte	.LASF109
	.byte	0x1
	.byte	0x55
	.4byte	0x8fe
	.4byte	.LLST9
	.uleb128 0x18
	.4byte	.LASF19
	.byte	0x1
	.byte	0x55
	.4byte	0x7ad
	.4byte	.LLST10
	.uleb128 0x1a
	.string	"f"
	.byte	0x1
	.byte	0x57
	.4byte	0x4b8
	.4byte	.LLST11
	.uleb128 0x27
	.4byte	0xa20
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x66
	.4byte	0xb21
	.uleb128 0x28
	.4byte	0xa38
	.uleb128 0x28
	.4byte	0xa2d
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0x2a
	.4byte	0xa43
	.uleb128 0x2b
	.4byte	0xa4c
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.4byte	0xa57
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.4byte	0xa63
	.4byte	.LBB20
	.4byte	.LBE20
	.byte	0x1
	.byte	0x6b
	.uleb128 0x2d
	.4byte	0xa7b
	.4byte	.LLST12
	.uleb128 0x28
	.4byte	0xa70
	.uleb128 0x2e
	.4byte	.LBB21
	.4byte	.LBE21
	.uleb128 0x2f
	.4byte	0xa84
	.4byte	.LLST13
	.uleb128 0x2a
	.4byte	0xa8e
	.uleb128 0x2f
	.4byte	0xa9a
	.4byte	.LLST14
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x11f
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST15
	.4byte	0xba9
	.uleb128 0x31
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x11e
	.4byte	0x8fe
	.4byte	.LLST16
	.uleb128 0x32
	.string	"e"
	.byte	0x1
	.2byte	0x11e
	.4byte	0x4a2
	.4byte	.LLST17
	.uleb128 0x31
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x11e
	.4byte	0x70
	.4byte	.LLST18
	.byte	0x0
	.uleb128 0x30
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x135
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST19
	.4byte	0xbf1
	.uleb128 0x31
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x134
	.4byte	0x8fe
	.4byte	.LLST20
	.uleb128 0x32
	.string	"e"
	.byte	0x1
	.2byte	0x134
	.4byte	0x4a2
	.4byte	.LLST21
	.uleb128 0x31
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x134
	.4byte	0x70
	.4byte	.LLST22
	.byte	0x0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x157
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST23
	.4byte	0xc48
	.uleb128 0x31
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x156
	.4byte	0x8fe
	.4byte	.LLST24
	.uleb128 0x31
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x156
	.4byte	0x7ad
	.4byte	.LLST25
	.uleb128 0x34
	.string	"f"
	.byte	0x1
	.2byte	0x158
	.4byte	0x4b8
	.4byte	.LLST26
	.uleb128 0x34
	.string	"e"
	.byte	0x1
	.2byte	0x159
	.4byte	0x4a2
	.4byte	.LLST27
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x176
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST28
	.4byte	0xd2d
	.uleb128 0x31
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x16d
	.4byte	0x8fe
	.4byte	.LLST29
	.uleb128 0x36
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x16d
	.4byte	0xb7
	.byte	0x1
	.byte	0x54
	.uleb128 0x36
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x16d
	.4byte	0x4d
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.string	"v0"
	.byte	0x1
	.2byte	0x177
	.4byte	0xd2d
	.uleb128 0x37
	.string	"vn"
	.byte	0x1
	.2byte	0x178
	.4byte	0xd2d
	.byte	0x1
	.byte	0x5b
	.uleb128 0x37
	.string	"vc"
	.byte	0x1
	.2byte	0x179
	.4byte	0xd2d
	.byte	0x1
	.byte	0x59
	.uleb128 0x34
	.string	"dot"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x9f
	.4byte	.LLST30
	.uleb128 0x34
	.string	"xc"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x9f
	.4byte	.LLST31
	.uleb128 0x34
	.string	"yc"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x9f
	.4byte	.LLST32
	.uleb128 0x34
	.string	"zc"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x9f
	.4byte	.LLST33
	.uleb128 0x24
	.string	"xp"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x9f
	.uleb128 0x24
	.string	"yp"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x9f
	.uleb128 0x24
	.string	"zp"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x9f
	.uleb128 0x24
	.string	"n"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x4a8
	.uleb128 0x38
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x17b
	.4byte	0x4d
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x7a2
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x1bd
	.byte	0x1
	.4byte	0x82
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST34
	.uleb128 0x31
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x8fe
	.4byte	.LLST35
	.uleb128 0x34
	.string	"v0"
	.byte	0x1
	.2byte	0x1be
	.4byte	0xd2d
	.4byte	.LLST36
	.uleb128 0x34
	.string	"vn"
	.byte	0x1
	.2byte	0x1bf
	.4byte	0xd2d
	.4byte	.LLST37
	.uleb128 0x34
	.string	"vc"
	.byte	0x1
	.2byte	0x1c0
	.4byte	0xd2d
	.4byte	.LLST38
	.uleb128 0x38
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x4a8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3a
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x4d
	.4byte	.LLST39
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
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x4f
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xdab
	.4byte	0xaa7
	.string	"__gl_renderMesh"
	.4byte	0xbf1
	.string	"__gl_renderBoundary"
	.4byte	0xd33
	.string	"__gl_renderCache"
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
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF55:
	.string	"prev"
.LASF59:
	.string	"pqHandle"
.LASF75:
	.string	"frame"
.LASF44:
	.string	"callEndData"
.LASF119:
	.string	"__gl_renderBoundary"
.LASF62:
	.string	"marked"
.LASF116:
	.string	"RenderFan"
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
.LASF109:
	.string	"tess"
.LASF37:
	.string	"callMesh"
.LASF54:
	.string	"next"
.LASF73:
	.string	"DictList"
.LASF90:
	.string	"PQSortHandle"
.LASF20:
	.string	"callError"
.LASF3:
	.string	"signed char"
.LASF100:
	.string	"eStart"
.LASF108:
	.string	"eTail"
.LASF78:
	.string	"PQHeapHandle"
.LASF17:
	.string	"state"
.LASF9:
	.string	"long int"
.LASF56:
	.string	"anEdge"
.LASF127:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\freespace2wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF106:
	.string	"headSize"
.LASF77:
	.string	"PQHeapKey"
.LASF5:
	.string	"long long int"
.LASF12:
	.string	"GLfloat"
.LASF97:
	.string	"T_IN_CONTOUR"
.LASF38:
	.string	"emptyCache"
.LASF29:
	.string	"callCombine"
.LASF79:
	.string	"PriorityQHeap"
.LASF110:
	.string	"fOrig"
.LASF118:
	.string	"__gl_renderMesh"
.LASF92:
	.string	"heap"
.LASF102:
	.string	"newFace"
.LASF84:
	.string	"initialized"
.LASF0:
	.string	"unsigned int"
.LASF50:
	.string	"fHead"
.LASF68:
	.string	"activeRegion"
.LASF128:
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
.LASF107:
	.string	"tailSize"
.LASF64:
	.string	"GLUhalfEdge"
.LASF91:
	.string	"PriorityQSort"
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
.LASF114:
	.string	"edgeState"
.LASF86:
	.string	"PQnode"
.LASF11:
	.string	"GLboolean"
.LASF121:
	.string	"norm"
.LASF113:
	.string	"newState"
.LASF30:
	.string	"flagBoundary"
.LASF19:
	.string	"mesh"
.LASF89:
	.string	"PQSortKey"
.LASF115:
	.string	"RenderTriangle"
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
.LASF105:
	.string	"eOrig"
.LASF1:
	.string	"unsigned char"
.LASF87:
	.string	"node"
.LASF4:
	.string	"short int"
.LASF67:
	.string	"Lface"
.LASF101:
	.string	"render"
.LASF49:
	.string	"vHead"
.LASF98:
	.string	"CachedVertex"
.LASF51:
	.string	"eHead"
.LASF18:
	.string	"lastEdge"
.LASF125:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF63:
	.string	"inside"
.LASF74:
	.string	"head"
.LASF47:
	.string	"polygonData"
.LASF112:
	.string	"RenderLonelyTriangles"
.LASF27:
	.string	"dict"
.LASF124:
	.string	"__gl_renderCache"
.LASF117:
	.string	"RenderStrip"
.LASF36:
	.string	"callEnd"
.LASF65:
	.string	"Onext"
.LASF8:
	.string	"char"
.LASF70:
	.string	"ActiveRegion"
.LASF10:
	.string	"GLenum"
.LASF122:
	.string	"check"
.LASF69:
	.string	"winding"
.LASF120:
	.string	"ComputeNormal"
.LASF88:
	.string	"PQhandleElem"
.LASF80:
	.string	"nodes"
.LASF83:
	.string	"freeList"
.LASF126:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/render.c"
.LASF32:
	.string	"lonelyTriList"
.LASF99:
	.string	"FaceCount"
.LASF22:
	.string	"sUnit"
.LASF53:
	.string	"GLUvertex"
.LASF24:
	.string	"relTolerance"
.LASF58:
	.string	"coords"
.LASF66:
	.string	"Lnext"
.LASF39:
	.string	"cacheCount"
.LASF104:
	.string	"MaximumStrip"
.LASF71:
	.string	"jmp_buf"
.LASF33:
	.string	"callBegin"
.LASF111:
	.string	"RenderMaximumFaceGroup"
.LASF42:
	.string	"callEdgeFlagData"
.LASF123:
	.string	"sign"
.LASF85:
	.string	"handle"
.LASF35:
	.string	"callVertex"
.LASF76:
	.string	"DictListNode"
.LASF103:
	.string	"MaximumFan"
.LASF60:
	.string	"GLUface"
.LASF14:
	.string	"GLdouble"
.LASF40:
	.string	"cache"
.LASF15:
	.string	"double"
.LASF34:
	.string	"callEdgeFlag"
.LASF26:
	.string	"fatalError"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
