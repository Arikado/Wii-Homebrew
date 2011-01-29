	.file	"gl_textures.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl _glGetSize
	.type	_glGetSize, @function
_glGetSize:
.LFB71:
	.file 1 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/gl_textures.c"
	.loc 1 197 0
.LVL0:
	.loc 1 199 0
	cmpwi 7,3,3
	beq- 7,.L6
	cmplwi 7,3,3
	bgt- 7,.L10
	cmpwi 7,3,1
	beq- 7,.L4
	cmplwi 7,3,1
	bgt- 7,.L5
	b .L20
.L10:
	cmpwi 7,3,6
	beq- 7,.L8
	cmpwi 7,3,39
	beq- 7,.L9
	cmpwi 7,3,4
	bne+ 7,.L21
	b .L7
.L8:
	li 10,8
.LVL1:
	li 11,8
.LVL2:
	li 0,8
.LVL3:
	b .L25
.LVL4:
.L21:
	li 10,0
.LVL5:
	li 11,0
.LVL6:
	li 0,0
.LVL7:
	b .L26
.LVL8:
.L9:
	li 10,0
.LVL9:
	li 11,0
.LVL10:
	li 0,0
.LVL11:
.L25:
	li 9,8
.LVL12:
	b .L22
.LVL13:
.L20:
	.loc 1 201 0
	li 10,0
.LVL14:
	li 11,0
.LVL15:
	li 0,0
.LVL16:
	li 9,0
.LVL17:
	b .L23
.LVL18:
.L4:
	.loc 1 202 0
	li 10,0
.LVL19:
	li 11,0
.LVL20:
	li 0,0
.LVL21:
	li 9,0
.LVL22:
	b .L24
.LVL23:
.L5:
	.loc 1 203 0
	li 10,0
.LVL24:
	li 11,0
.LVL25:
	li 0,0
.LVL26:
	li 9,4
.LVL27:
.L23:
	li 8,4
.LVL28:
	b .L11
.LVL29:
.L6:
	.loc 1 204 0
	li 10,0
.LVL30:
	li 11,0
.LVL31:
	li 0,0
.LVL32:
	li 9,8
.LVL33:
.L24:
	li 8,8
.LVL34:
	b .L11
.LVL35:
.L7:
	.loc 1 205 0
	li 10,5
.LVL36:
	li 11,6
.LVL37:
	li 0,5
.LVL38:
.L26:
	li 9,0
.LVL39:
.L22:
	li 8,0
.LVL40:
.L11:
	.loc 1 210 0
	cmpwi 7,4,6405
	beq- 7,.L15
	cmplwi 7,4,6405
	bgt- 7,.L18
	cmpwi 7,4,6403
	beq- 7,.L13
	cmpwi 7,4,6404
	bnelr+ 7
	b .L14
.L18:
	cmpwi 7,4,6409
	beq- 7,.L17
	xoris 0,4,0xffff
.LVL41:
	cmpwi 7,0,-32695
	beq 7,.L17
	cmpwi 7,4,6406
	bnelr+ 7
	b .L16
.LVL42:
.L13:
	.loc 1 212 0
	stw 10,0(5)
	blr
.L14:
	.loc 1 213 0
	stw 11,0(5)
	blr
.L15:
	.loc 1 214 0
	stw 0,0(5)
	blr
.LVL43:
.L16:
	.loc 1 215 0
	stw 9,0(5)
	blr
.LVL44:
.L17:
	.loc 1 217 0
	stw 8,0(5)
	blr
.LFE71:
	.size	_glGetSize, .-_glGetSize
	.align 2
	.globl GX_SetTevCIn
	.type	GX_SetTevCIn, @function
GX_SetTevCIn:
.LFB73:
	.loc 1 269 0
.LVL45:
	.loc 1 272 0
	cmpwi 6,3,5890
	.loc 1 270 0
	li 0,15
	stb 0,0(5)
	.loc 1 272 0
	bne+ 6,.L28
	.loc 1 274 0
	lis 9,cur_tex@ha
	lwz 0,cur_tex@l(9)
	b .L43
.L28:
	.loc 1 276 0
	addis 9,3,0xffff
	addi 9,9,31552
	cmplwi 7,9,7
	bgt- 7,.L31
	.loc 1 278 0
	addi 0,3,64
.L43:
	stb 0,0(6)
	b .L30
.L31:
	.loc 1 287 0
	li 0,0
	ori 0,0,34167
	cmpw 7,3,0
	.loc 1 284 0
	li 0,-1
	stb 0,0(6)
	.loc 1 287 0
	beq- 7,.L34
	xoris 0,3,0xffff
	cmpwi 7,0,-31368
	beq 7,.L35
	bnelr+ 6
.L30:
	.loc 1 290 0
	cmpwi 7,4,768
	beq- 7,.L36
	cmpwi 7,4,770
	bnelr+ 7
	b .L37
.L36:
	.loc 1 292 0
	li 0,8
	b .L44
.L37:
	.loc 1 293 0
	li 0,9
	b .L44
.L34:
	.loc 1 297 0
	cmpwi 7,4,768
	beq- 7,.L38
	cmpwi 7,4,770
	bnelr+ 7
	b .L39
.L38:
	.loc 1 299 0
	li 0,10
	b .L44
.L39:
	.loc 1 300 0
	li 0,5
.L44:
	stb 0,0(5)
	blr
.L35:
	.loc 1 304 0
	cmpwi 7,4,768
	beq- 7,.L40
	cmpwi 7,4,770
	bnelr+ 7
	b .L41
.L40:
	.loc 1 306 0
	stb 7,0(5)
	blr
.L41:
	.loc 1 307 0
	stb 8,0(5)
	blr
.LFE73:
	.size	GX_SetTevCIn, .-GX_SetTevCIn
	.align 2
	.globl GX_SetTevAIn
	.type	GX_SetTevAIn, @function
GX_SetTevAIn:
.LFB74:
	.loc 1 314 0
.LVL46:
	.loc 1 317 0
	cmpwi 6,3,5890
	.loc 1 315 0
	li 0,7
	stb 0,0(5)
	.loc 1 317 0
	bne+ 6,.L46
	.loc 1 319 0
	lis 9,cur_tex@ha
	lwz 0,cur_tex@l(9)
	b .L55
.L46:
	.loc 1 321 0
	addis 9,3,0xffff
	addi 9,9,31552
	cmplwi 7,9,7
	bgt- 7,.L49
	.loc 1 323 0
	addi 0,3,64
.L55:
	stb 0,0(6)
	b .L48
.L49:
	.loc 1 332 0
	li 0,0
	ori 0,0,34167
	cmpw 7,3,0
	.loc 1 329 0
	li 0,-1
	stb 0,0(6)
	.loc 1 332 0
	beq- 7,.L52
	xoris 0,3,0xffff
	cmpwi 7,0,-31368
	beq 7,.L53
	bnelr+ 6
.L48:
	.loc 1 334 0
	li 0,4
	b .L56
.L52:
	.loc 1 335 0
	li 0,5
.L56:
	stb 0,0(5)
	blr
.L53:
	.loc 1 336 0
	stb 7,0(5)
	blr
.LFE74:
	.size	GX_SetTevAIn, .-GX_SetTevAIn
	.align 2
	.globl GX_IncReg
	.type	GX_IncReg, @function
GX_IncReg:
.LFB75:
	.loc 1 341 0
.LVL47:
	.loc 1 342 0
	cmpwi 7,3,1
	.loc 1 341 0
	mr 0,3
	.loc 1 342 0
	li 3,2
.LVL48:
	beqlr- 7
	cmpwi 7,0,2
	li 3,1
	bnelr+ 7
	li 3,3
	.loc 1 349 0
	blr
.LFE75:
	.size	GX_IncReg, .-GX_IncReg
	.align 2
	.globl GX_IncCCReg
	.type	GX_IncCCReg, @function
GX_IncCCReg:
.LFB76:
	.loc 1 352 0
.LVL49:
	.loc 1 353 0
	cmpwi 7,3,1
	.loc 1 352 0
	mr 0,3
	.loc 1 353 0
	li 3,4
.LVL50:
	beqlr- 7
	cmpwi 7,0,2
	li 3,2
	bnelr+ 7
	li 3,6
	.loc 1 360 0
	blr
.LFE76:
	.size	GX_IncCCReg, .-GX_IncCCReg
	.align 2
	.globl GX_IncCAReg
	.type	GX_IncCAReg, @function
GX_IncCAReg:
.LFB77:
	.loc 1 363 0
.LVL51:
	.loc 1 364 0
	cmpwi 7,3,1
	.loc 1 363 0
	mr 0,3
	.loc 1 364 0
	li 3,5
.LVL52:
	beqlr- 7
	cmpwi 7,0,2
	li 3,3
	bnelr+ 7
	li 3,7
	.loc 1 371 0
	blr
.LFE77:
	.size	GX_IncCAReg, .-GX_IncCAReg
	.align 2
	.globl GX_IncAAReg
	.type	GX_IncAAReg, @function
GX_IncAAReg:
.LFB78:
	.loc 1 374 0
.LVL53:
	.loc 1 375 0
	cmpwi 7,3,1
	.loc 1 374 0
	mr 0,3
	.loc 1 375 0
	li 3,2
.LVL54:
	beqlr- 7
	cmpwi 7,0,2
	li 3,1
	bnelr+ 7
	li 3,3
	.loc 1 382 0
	blr
.LFE78:
	.size	GX_IncAAReg, .-GX_IncAAReg
	.align 2
	.globl GX_IncTexMap
	.type	GX_IncTexMap, @function
GX_IncTexMap:
.LFB79:
	.loc 1 385 0
.LVL55:
	.loc 1 386 0
	addi 3,3,-1
.LVL56:
	rlwinm 0,3,0,0xff
	li 3,0
	cmplwi 7,0,6
	bgtlr- 7
	lis 9,.L94@ha
	slwi 0,0,2
	la 9,.L94@l(9)
	lwzx 0,9,0
	add 0,0,9
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L94:
	.long .L87-.L94
	.long .L88-.L94
	.long .L89-.L94
	.long .L90-.L94
	.long .L91-.L94
	.long .L92-.L94
	.long .L93-.L94
	.section	".text"
.L92:
	li 3,6
	blr
.L93:
	li 3,7
	blr
.L87:
	.loc 1 389 0
	li 3,1
	blr
.L88:
	.loc 1 390 0
	li 3,2
	blr
.L89:
	.loc 1 391 0
	li 3,3
	blr
.L90:
	.loc 1 392 0
	li 3,4
	blr
.L91:
	.loc 1 393 0
	li 3,5
	.loc 1 398 0
	blr
.LFE79:
	.size	GX_IncTexMap, .-GX_IncTexMap
	.align 2
	.globl GX_IncTexCoord
	.type	GX_IncTexCoord, @function
GX_IncTexCoord:
.LFB80:
	.loc 1 401 0
.LVL57:
	.loc 1 402 0
	addi 3,3,-1
.LVL58:
	rlwinm 0,3,0,0xff
	li 3,0
	cmplwi 7,0,6
	bgtlr- 7
	lis 9,.L106@ha
	slwi 0,0,2
	la 9,.L106@l(9)
	lwzx 0,9,0
	add 0,0,9
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L106:
	.long .L99-.L106
	.long .L100-.L106
	.long .L101-.L106
	.long .L102-.L106
	.long .L103-.L106
	.long .L104-.L106
	.long .L105-.L106
	.section	".text"
.L104:
	li 3,6
	blr
.L105:
	li 3,7
	blr
.L99:
	.loc 1 405 0
	li 3,1
	blr
.L100:
	.loc 1 406 0
	li 3,2
	blr
.L101:
	.loc 1 407 0
	li 3,3
	blr
.L102:
	.loc 1 408 0
	li 3,4
	blr
.L103:
	.loc 1 409 0
	li 3,5
	.loc 1 414 0
	blr
.LFE80:
	.size	GX_IncTexCoord, .-GX_IncTexCoord
	.align 2
	.globl setAniso
	.type	setAniso, @function
setAniso:
.LFB83:
	.loc 1 785 0
.LVL59:
	.loc 1 786 0
	lis 9,.LC0@ha
	lfs 0,.LC0@l(9)
	fcmpu 7,1,0
	bnl- 7,.L110
	.loc 1 788 0
	lis 9,cur_tex@ha
	li 0,0
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	add 11,11,9
	stb 0,22(11)
	blr
.L110:
	.loc 1 790 0
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	lis 9,glTexEnvs@ha
	la 0,glTexEnvs@l(9)
	lis 9,cur_tex@ha
	fcmpu 7,1,0
	bnl- 7,.L114
	.loc 1 792 0
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	add 9,9,0
	li 0,1
	b .L118
.L114:
	.loc 1 796 0
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	add 9,9,0
	li 0,2
.L118:
	stb 0,22(9)
	blr
.LFE83:
	.size	setAniso, .-setAniso
	.align 2
	.globl setMaxLod
	.type	setMaxLod, @function
setMaxLod:
.LFB84:
	.loc 1 801 0
.LVL60:
	.loc 1 802 0
	lis 9,.LC6@ha
	lfs 0,.LC6@l(9)
	fcmpu 7,1,0
	bng- 7,.L120
	.loc 1 804 0
	lis 9,cur_tex@ha
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	add 11,11,9
	stfs 0,12(11)
	blr
.L120:
	.loc 1 806 0
	lis 9,.LC8@ha
	lfs 0,.LC8@l(9)
	lis 9,glTexEnvs@ha
	la 0,glTexEnvs@l(9)
	lis 9,cur_tex@ha
	fcmpu 7,1,0
	bnl+ 7,.L124
	.loc 1 808 0
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	add 9,9,0
	stfs 0,12(9)
	blr
.L124:
	.loc 1 812 0
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	add 9,9,0
	stfs 1,12(9)
	blr
.LFE84:
	.size	setMaxLod, .-setMaxLod
	.align 2
	.type	scale_s32, @function
scale_s32:
.LFB98:
	.loc 1 1112 0
.LVL61:
	stwu 1,-16(1)
.LCFI0:
	.loc 1 1119 0
	xoris 0,3,0x8000
	lis 9,.LC10@ha
	lis 11,.LC11@ha
	stw 0,12(1)
	lis 0,0x4330
	stw 0,8(1)
	lfs 13,.LC10@l(9)
	lfd 0,8(1)
	.loc 1 1121 0
	addi 1,1,16
	.loc 1 1119 0
	lfs 12,.LC11@l(11)
	fsub 0,0,13
	frsp 0,0
	fmuls 1,0,12
	.loc 1 1121 0
	blr
.LFE98:
	.size	scale_s32, .-scale_s32
	.align 2
	.globl isUsed
	.type	isUsed, @function
isUsed:
.LFB106:
	.loc 1 1403 0
.LVL62:
	.loc 1 1405 0
	lwz 0,8(3)
	.loc 1 1404 0
	addi 4,4,-1
.LVL63:
	.loc 1 1405 0
	cmplw 7,0,4
	li 0,0
	ble- 7,.L136
	.loc 1 1409 0
	lwz 9,4(3)
	lbzx 0,9,4
.L136:
	.loc 1 1410 0
	mr 3,0
.LVL64:
	blr
.LFE106:
	.size	isUsed, .-isUsed
	.align 2
	.globl getTex
	.type	getTex, @function
getTex:
.LFB107:
	.loc 1 1414 0
.LVL65:
	.loc 1 1414 0
	lwz 3,0(3)
.LVL66:
	mulli 4,4,76
.LVL67:
	addi 3,3,-76
	.loc 1 1416 0
	add 3,3,4
	blr
.LFE107:
	.size	getTex, .-getTex
	.align 2
	.globl getCur
	.type	getCur, @function
getCur:
.LFB108:
	.loc 1 1419 0
.LVL68:
	mflr 0
.LCFI1:
	stwu 1,-24(1)
.LCFI2:
	.loc 1 1420 0
	lis 9,cur_tex@ha
	.loc 1 1419 0
	stmw 29,12(1)
.LCFI3:
	mr 29,3
	stw 0,28(1)
.LCFI4:
	.loc 1 1420 0
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	add 11,11,9
	lwz 31,84(11)
	mr 4,31
	bl isUsed
.LVL69:
	cmpwi 7,3,0
	lwz 3,0(29)
	beq- 7,.L143
	.loc 1 1421 0
	mulli 9,31,76
	addi 0,3,-76
	add 3,0,9
.L143:
	.loc 1 1425 0
	lwz 0,28(1)
	lmw 29,12(1)
.LVL70:
	addi 1,1,24
	mtlr 0
	blr
.LFE108:
	.size	getCur, .-getCur
	.align 2
	.globl _glSetEnableTex
	.type	_glSetEnableTex, @function
_glSetEnableTex:
.LFB112:
	.loc 1 1484 0
.LVL71:
	.loc 1 1485 0
	lis 9,cur_tex@ha
	lwz 0,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 0,0,108
	stbx 3,9,0
	.loc 1 1486 0
	blr
.LFE112:
	.size	_glSetEnableTex, .-_glSetEnableTex
	.align 2
	.globl _glGetEnableTex
	.type	_glGetEnableTex, @function
_glGetEnableTex:
.LFB113:
	.loc 1 1488 0
.LVL72:
	.loc 1 1488 0
	lis 9,cur_tex@ha
	lwz 0,cur_tex@l(9)
	.loc 1 1490 0
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1488 0
	mulli 0,0,108
	.loc 1 1490 0
	lbzx 3,9,0
.LVL73:
	blr
.LFE113:
	.size	_glGetEnableTex, .-_glGetEnableTex
	.align 2
	.globl convertInternalFormat
	.type	convertInternalFormat, @function
convertInternalFormat:
.LFB115:
	.loc 1 1558 0
.LVL74:
	.loc 1 1560 0
	li 0,0
	ori 0,0,32834
	cmpw 7,3,0
	.loc 1 1559 0
	li 0,1
	stw 0,0(4)
	.loc 1 1560 0
	bgt- 7,.L158
	li 0,0
	ori 0,0,32832
	cmpw 7,3,0
	bge- 7,.L156
	cmpwi 7,3,6408
	beq- 7,.L154
	bgt- 7,.L159
	cmpwi 7,3,3
	beq- 7,.L153
	bgt- 7,.L160
	cmpwi 7,3,1
	beq- 7,.L151
	cmpwi 7,3,2
	b .L167
.L160:
	cmpwi 7,3,6406
	beq- 7,.L155
	bgt- 7,.L153
	cmpwi 7,3,4
	bne+ 7,.L150
	b .L154
.L159:
	cmpwi 7,3,10768
	beq- 7,.L153
	bgt- 7,.L161
	cmpwi 7,3,6409
	beq- 7,.L151
	cmpwi 7,3,6410
.L167:
	bne+ 7,.L150
	b .L152
.L161:
	li 0,0
	ori 0,0,32827
	cmpw 7,3,0
	blt- 7,.L150
	li 0,0
	ori 0,0,32830
	cmpw 7,3,0
	ble- 7,.L155
	b .L151
.L158:
	li 0,0
	ori 0,0,32845
	cmpw 7,3,0
	bgt- 7,.L162
	li 0,0
	ori 0,0,32843
	cmpw 7,3,0
	bge- 7,.L156
	li 0,0
	ori 0,0,32840
	cmpw 7,3,0
	bgt- 7,.L151
	li 0,0
	ori 0,0,32836
	cmpw 7,3,0
	bge- 7,.L155
	b .L152
.L162:
	li 0,0
	ori 0,0,32854
	cmpw 7,3,0
	bgt- 7,.L163
	li 0,0
	ori 0,0,32853
	cmpw 7,3,0
	bge- 7,.L154
	li 0,0
	ori 0,0,32847
	cmpw 7,3,0
	blt- 7,.L150
	b .L153
.L163:
	li 0,0
	li 9,5
	ori 0,0,32855
	cmpw 7,3,0
	beq- 7,.L164
	li 0,0
	ori 0,0,32859
	cmpw 7,3,0
	bgt- 7,.L150
.L154:
	li 9,6
	b .L164
.L151:
	li 9,0
	b .L164
.L156:
	.loc 1 1571 0
	li 9,1
	b .L164
.L152:
	.loc 1 1577 0
	li 9,2
	b .L164
.L153:
	.loc 1 1580 0
	li 9,4
	b .L164
.L150:
	.loc 1 1606 0
	li 0,0
	li 9,5
	stw 0,0(4)
	b .L164
.L155:
	.loc 1 1607 0
	li 9,3
.L164:
	.loc 1 1608 0
	mr 3,9
.LVL75:
	blr
.LFE115:
	.size	convertInternalFormat, .-convertInternalFormat
	.align 2
	.globl IsPowerOfTwo
	.type	IsPowerOfTwo, @function
IsPowerOfTwo:
.LFB117:
	.loc 1 1627 0
.LVL76:
	.loc 1 1627 0
	mr 0,3
	neg 3,3
.LVL77:
	and 3,3,0
	.loc 1 1629 0
	xor 3,3,0
	cntlzw 3,3
	srwi 3,3,5
	blr
.LFE117:
	.size	IsPowerOfTwo, .-IsPowerOfTwo
	.align 2
	.globl glIsTexture
	.type	glIsTexture, @function
glIsTexture:
.LFB124:
	.loc 1 2028 0
.LVL78:
	mflr 0
.LCFI5:
	stwu 1,-8(1)
.LCFI6:
	.loc 1 2029 0
	lis 9,cur_state@ha
	.loc 1 2028 0
	mr 4,3
	stw 0,12(1)
.LCFI7:
	.loc 1 2029 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L171
.LVL79:
	lis 4,.LC14@ha
.LVL80:
	li 3,1282
.LVL81:
	la 4,.LC14@l(4)
	li 5,2029
	bl _glSetErrorEx
	li 3,0
	b .L173
.LVL82:
.L171:
	.loc 1 2031 0
	lis 3,texMan@ha
	la 3,texMan@l(3)
	bl isUsed
.LVL83:
.L173:
	.loc 1 2032 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE124:
	.size	glIsTexture, .-glIsTexture
	.align 2
	.globl CorrectGLtype
	.type	CorrectGLtype, @function
CorrectGLtype:
.LFB119:
	.loc 1 1656 0
.LVL84:
	.loc 1 1657 0
	cmplwi 7,4,6410
	.loc 1 1656 0
	mflr 0
.LCFI8:
	stwu 1,-8(1)
.LCFI9:
	stw 0,12(1)
.LCFI10:
	.loc 1 1657 0
	bgt- 7,.L178
	cmplwi 7,4,6403
	bge- 7,.L177
	cmpwi 7,4,6400
	bne+ 7,.L176
	b .L177
.L178:
	addis 9,4,0xffff
	addi 9,9,32544
	cmplwi 7,9,1
	ble- 7,.L177
.L176:
	.loc 1 1672 0
	lis 4,.LC14@ha
.LVL85:
	li 3,1280
.LVL86:
	la 4,.LC14@l(4)
	li 5,1672
	b .L189
.LVL87:
.L177:
	.loc 1 1676 0
	cmplwi 7,3,32822
	bgt- 7,.L184
	cmplwi 7,3,32819
	bge- 7,.L183
	cmplwi 7,3,5120
	blt- 7,.L180
	cmplwi 7,3,5126
	ble- 7,.L181
	xoris 0,3,0xffff
	cmpwi 7,0,-32718
	bne 7,.L180
	b .L182
.L184:
	cmplwi 7,3,33634
	blt- 7,.L180
	cmplwi 7,3,33636
	ble- 7,.L182
	cmplwi 7,3,33640
	bgt- 7,.L180
	b .L183
.L182:
	.loc 1 1682 0
	cmpwi 7,4,6407
	beq- 7,.L181
	.loc 1 1688 0
	lis 4,.LC14@ha
.LVL88:
	li 3,1280
.LVL89:
	la 4,.LC14@l(4)
	li 5,1688
	b .L189
.LVL90:
.L183:
	.loc 1 1700 0
	cmpwi 7,4,6408
	beq- 7,.L181
	xoris 0,4,0xffff
	cmpwi 7,0,-32543
	beq 7,.L181
	.loc 1 1706 0
	lis 4,.LC14@ha
.LVL91:
	li 3,1280
.LVL92:
	la 4,.LC14@l(4)
	li 5,1706
.L189:
	bl _glSetErrorEx
	li 3,0
	b .L179
.LVL93:
.L180:
	.loc 1 1721 0
	lis 4,.LC14@ha
.LVL94:
	li 3,1280
.LVL95:
	la 4,.LC14@l(4)
	li 5,1721
	b .L189
.LVL96:
.L181:
	.loc 1 1722 0
	li 3,1
.LVL97:
.L179:
	.loc 1 1726 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE119:
	.size	CorrectGLtype, .-CorrectGLtype
	.align 2
	.globl glSetComAlpha
	.type	glSetComAlpha, @function
glSetComAlpha:
.LFB93:
	.loc 1 980 0
.LVL98:
	.loc 1 981 0
	cmpwi 7,3,8448
	.loc 1 980 0
	mflr 0
.LCFI11:
	stwu 1,-8(1)
.LCFI12:
	stw 0,12(1)
.LCFI13:
	.loc 1 981 0
	beq- 7,.L192
	cmplwi 7,3,8448
	bgt- 7,.L193
	cmpwi 7,3,260
	beq- 7,.L192
	cmpwi 7,3,7681
	bne+ 7,.L191
	b .L192
.L193:
	xoris 0,3,0xffff
	cmpwi 7,0,-31513
	beq 7,.L192
	cmplwi 7,3,34023
	blt- 7,.L191
	addis 9,3,0xffff
	addi 9,9,31372
	cmplwi 7,9,1
	bgt- 7,.L191
.L192:
	.loc 1 989 0
	stw 3,0(4)
.L191:
	.loc 1 991 0
	lis 4,.LC14@ha
.LVL99:
	li 3,1280
.LVL100:
	la 4,.LC14@l(4)
	li 5,991
	bl _glSetErrorEx
	.loc 1 994 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE93:
	.size	glSetComAlpha, .-glSetComAlpha
	.align 2
	.globl glSetComRGB
	.type	glSetComRGB, @function
glSetComRGB:
.LFB92:
	.loc 1 962 0
.LVL101:
	.loc 1 963 0
	cmpwi 7,3,8448
	.loc 1 962 0
	mflr 0
.LCFI14:
	stwu 1,-8(1)
.LCFI15:
	stw 0,12(1)
.LCFI16:
	.loc 1 963 0
	beq- 7,.L197
	cmplwi 7,3,8448
	bgt- 7,.L198
	cmpwi 7,3,260
	beq- 7,.L197
	cmpwi 7,3,7681
	bne+ 7,.L196
	b .L197
.L198:
	xoris 0,3,0xffff
	cmpwi 7,0,-31513
	beq 7,.L197
	cmplwi 7,3,34023
	blt- 7,.L196
	addis 9,3,0xffff
	addi 9,9,31372
	cmplwi 7,9,1
	bgt- 7,.L196
.L197:
	.loc 1 971 0
	stw 3,0(4)
.L196:
	.loc 1 975 0
	lis 4,.LC14@ha
.LVL102:
	li 3,1280
.LVL103:
	la 4,.LC14@l(4)
	li 5,975
	bl _glSetErrorEx
	.loc 1 977 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE92:
	.size	glSetComRGB, .-glSetComRGB
	.align 2
	.globl glSetAlphaOp
	.type	glSetAlphaOp, @function
glSetAlphaOp:
.LFB91:
	.loc 1 950 0
.LVL104:
	.loc 1 951 0
	cmpwi 7,3,770
	.loc 1 950 0
	mflr 0
.LCFI17:
	stwu 1,-8(1)
.LCFI18:
	stw 0,12(1)
.LCFI19:
	.loc 1 951 0
	bne+ 7,.L201
	.loc 1 954 0
	stw 3,0(4)
.L201:
	.loc 1 957 0
	lis 4,.LC14@ha
.LVL105:
	li 3,1280
.LVL106:
	la 4,.LC14@l(4)
	li 5,957
	bl _glSetErrorEx
	.loc 1 959 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE91:
	.size	glSetAlphaOp, .-glSetAlphaOp
	.align 2
	.globl glSetRGBOp
	.type	glSetRGBOp, @function
glSetRGBOp:
.LFB90:
	.loc 1 936 0
.LVL107:
	.loc 1 937 0
	cmpwi 7,3,768
	.loc 1 936 0
	mflr 0
.LCFI20:
	stwu 1,-8(1)
.LCFI21:
	stw 0,12(1)
.LCFI22:
	.loc 1 937 0
	beq- 7,.L206
	cmpwi 7,3,770
	bne+ 7,.L205
.L206:
	.loc 1 941 0
	stw 3,0(4)
.L205:
	.loc 1 945 0
	lis 4,.LC14@ha
.LVL108:
	li 3,1280
.LVL109:
	la 4,.LC14@l(4)
	li 5,945
	bl _glSetErrorEx
	.loc 1 947 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE90:
	.size	glSetRGBOp, .-glSetRGBOp
	.align 2
	.globl glSetSrc
	.type	glSetSrc, @function
glSetSrc:
.LFB89:
	.loc 1 917 0
.LVL110:
	mflr 0
.LCFI23:
	stwu 1,-8(1)
.LCFI24:
	.loc 1 918 0
	addis 9,3,0xffff
	.loc 1 917 0
	stw 0,12(1)
.LCFI25:
	.loc 1 918 0
	addi 0,9,31552
	cmplwi 7,0,7
	bgt- 7,.L209
	.loc 1 920 0
	stw 3,0(4)
	b .L214
.L209:
	.loc 1 923 0
	cmpwi 7,3,5890
	beq- 7,.L213
	cmplwi 7,3,5890
	blt- 7,.L212
	addi 0,9,31370
	cmplwi 7,0,2
	bgt- 7,.L212
.L213:
	.loc 1 929 0
	stw 3,0(4)
.L212:
	.loc 1 931 0
	lis 4,.LC14@ha
.LVL111:
	li 3,1280
.LVL112:
	la 4,.LC14@l(4)
	li 5,931
	bl _glSetErrorEx
.LVL113:
.L214:
	.loc 1 933 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE89:
	.size	glSetSrc, .-glSetSrc
	.align 2
	.globl glSetTexEnvMode
	.type	glSetTexEnvMode, @function
glSetTexEnvMode:
.LFB88:
	.loc 1 901 0
.LVL114:
	.loc 1 902 0
	cmplwi 7,3,8449
	.loc 1 901 0
	mflr 0
.LCFI26:
	stwu 1,-8(1)
.LCFI27:
	stw 0,12(1)
.LCFI28:
	.loc 1 902 0
	bgt- 7,.L218
	cmplwi 7,3,8448
	bge- 7,.L217
	cmpwi 7,3,260
	beq- 7,.L217
	cmpwi 7,3,7681
	b .L222
.L218:
	li 0,0
	ori 0,0,34160
	cmpw 7,3,0
.L222:
	bne+ 7,.L216
.L217:
	.loc 1 909 0
	stw 3,0(4)
	b .L220
.L216:
	.loc 1 912 0
	lis 4,.LC14@ha
.LVL115:
	li 3,1280
.LVL116:
	la 4,.LC14@l(4)
	li 5,912
	bl _glSetErrorEx
.LVL117:
.L220:
	.loc 1 914 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE88:
	.size	glSetTexEnvMode, .-glSetTexEnvMode
	.align 2
	.globl glGetTexLevelParameteriv
	.type	glGetTexLevelParameteriv, @function
glGetTexLevelParameteriv:
.LFB72:
	.loc 1 225 0
.LVL118:
	mflr 0
.LCFI29:
	stwu 1,-16(1)
.LCFI30:
	.loc 1 226 0
	lis 9,cur_state@ha
	.loc 1 225 0
	stmw 30,8(1)
.LCFI31:
	mr 30,4
	stw 0,20(1)
.LCFI32:
	.loc 1 225 0
	mr 31,6
	.loc 1 226 0
	lwz 0,cur_state@l(9)
	andi. 11,0,1
	beq+ 0,.L224
.LVL119:
	lis 4,.LC14@ha
	li 3,1282
.LVL120:
	la 4,.LC14@l(4)
	li 5,226
.LVL121:
	b .L252
.LVL122:
.L224:
	.loc 1 228 0
	cmpwi 7,6,0
	bne+ 7,.L227
.LVL123:
	.loc 1 230 0
	lis 4,.LC14@ha
	li 3,1281
.LVL124:
	la 4,.LC14@l(4)
	li 5,230
.LVL125:
	b .L252
.LVL126:
.L227:
	.loc 1 234 0
	addis 9,3,0xffff
	addi 9,9,32669
	cmplwi 7,9,1
	ble- 7,.L229
	xoris 0,3,0xffff
	cmpwi 7,0,-32656
	bne 7,.L231
.L229:
	.loc 1 236 0
	cmpwi 7,5,4097
	beq- 7,.L234
	xoris 0,5,0xffff
	cmpwi 7,0,-32655
	beq 7,.L247
	cmpwi 7,5,4096
	bne+ 7,.L232
	.loc 1 238 0
	lis 3,texMan@ha
.LVL127:
	la 3,texMan@l(3)
	bl getCur
.LVL128:
	lwz 0,20(3)
	b .L255
.LVL129:
.L234:
	.loc 1 239 0
	lis 3,texMan@ha
.LVL130:
	la 3,texMan@l(3)
	bl getCur
.LVL131:
	lwz 0,24(3)
.L255:
	sraw 0,0,30
	b .L253
.LVL132:
.L232:
	.loc 1 243 0
	lis 4,.LC14@ha
	li 3,1281
.LVL133:
	la 4,.LC14@l(4)
	li 5,243
.LVL134:
	.loc 1 242 0
	stw 11,0(31)
	b .L252
.LVL135:
.L231:
	.loc 1 249 0
	xoris 0,5,0xffff
	cmpwi 7,0,-32675
	beq 7,.L242
	cmplwi 7,5,32861
	bgt- 7,.L248
	cmpwi 7,5,4099
	beq- 7,.L239
	cmplwi 7,5,4099
	bgt- 7,.L249
	cmpwi 7,5,4096
	beq- 7,.L237
	cmpwi 7,5,4097
	bne+ 7,.L236
	b .L238
.L249:
	cmpwi 7,5,4101
	beq- 7,.L240
	xoris 0,5,0xffff
	cmpwi 7,0,-32676
	bne 7,.L236
	b .L241
.L248:
	xoris 0,5,0xffff
	cmpwi 7,0,-32672
	beq 7,.L245
	cmplwi 7,5,32864
	bgt- 7,.L250
	xoris 0,5,0xffff
	cmpwi 7,0,-32674
	beq 7,.L243
	xoris 0,5,0xffff
	cmpwi 7,0,-32673
	bne 7,.L236
	b .L244
.L250:
	xoris 0,5,0xffff
	cmpwi 7,0,-32671
	beq 7,.L246
	xoris 0,5,0xffff
	cmpwi 7,0,-32655
	bne 7,.L236
	b .L247
.L237:
	.loc 1 251 0
	lis 3,texMan@ha
.LVL136:
	la 3,texMan@l(3)
	bl getCur
.LVL137:
	lwz 0,20(3)
	b .L253
.LVL138:
.L238:
	.loc 1 252 0
	lis 3,texMan@ha
.LVL139:
	la 3,texMan@l(3)
	bl getCur
.LVL140:
	lwz 0,24(3)
	b .L253
.LVL141:
.L247:
	.loc 1 253 0
	li 0,1
	b .L253
.L239:
	.loc 1 254 0
	lis 3,texMan@ha
.LVL142:
	la 3,texMan@l(3)
	bl getCur
.LVL143:
	lwz 0,68(3)
.LVL144:
.L253:
	stw 0,0(31)
	b .L251
.LVL145:
.L240:
	.loc 1 255 0
	stw 11,0(6)
	b .L251
.L241:
	.loc 1 256 0
	lis 3,texMan@ha
.LVL146:
	la 3,texMan@l(3)
	bl getCur
.LVL147:
	mr 5,31
	lbz 3,3(3)
	li 4,6403
	b .L254
.LVL148:
.L242:
	.loc 1 257 0
	lis 3,texMan@ha
.LVL149:
	la 3,texMan@l(3)
	bl getCur
.LVL150:
	mr 5,31
	lbz 3,3(3)
	li 4,6404
	b .L254
.LVL151:
.L243:
	.loc 1 258 0
	lis 3,texMan@ha
.LVL152:
	la 3,texMan@l(3)
	bl getCur
.LVL153:
	mr 5,31
	lbz 3,3(3)
	li 4,6405
	b .L254
.LVL154:
.L244:
	.loc 1 259 0
	lis 3,texMan@ha
.LVL155:
	la 3,texMan@l(3)
	bl getCur
.LVL156:
	mr 5,31
	lbz 3,3(3)
	li 4,6406
	b .L254
.LVL157:
.L245:
	.loc 1 260 0
	lis 3,texMan@ha
.LVL158:
	la 3,texMan@l(3)
	bl getCur
.LVL159:
	mr 5,31
	lbz 3,3(3)
	li 4,6409
	b .L254
.LVL160:
.L246:
	.loc 1 261 0
	lis 3,texMan@ha
.LVL161:
	la 3,texMan@l(3)
	bl getCur
.LVL162:
	li 4,0
	lbz 3,3(3)
	ori 4,4,32841
	mr 5,31
.LVL163:
.L254:
	.loc 1 266 0
	lwz 0,20(1)
	lmw 30,8(1)
.LVL164:
	addi 1,1,16
	mtlr 0
	.loc 1 261 0
	b _glGetSize
.LVL165:
.L236:
	.loc 1 263 0
	lis 4,.LC14@ha
	li 3,1281
.LVL166:
	la 4,.LC14@l(4)
	li 5,263
.LVL167:
.L252:
	bl _glSetErrorEx
.LVL168:
.LVL169:
.L251:
	.loc 1 266 0
	lwz 0,20(1)
	lmw 30,8(1)
.LVL170:
	addi 1,1,16
	mtlr 0
	blr
.LFE72:
	.size	glGetTexLevelParameteriv, .-glGetTexLevelParameteriv
	.align 2
	.globl GL2GX_Filter
	.type	GL2GX_Filter, @function
GL2GX_Filter:
.LFB70:
	.loc 1 146 0
.LVL171:
	.loc 1 147 0
	cmpwi 7,3,9984
	.loc 1 146 0
	mflr 0
.LCFI33:
	stwu 1,-8(1)
.LCFI34:
	stw 0,12(1)
.LCFI35:
	.loc 1 147 0
	beq- 7,.L260
	bgt- 7,.L264
	cmpwi 7,3,9728
	beq- 7,.L258
	cmpwi 7,3,9729
	bne+ 7,.L257
	b .L259
.L264:
	cmpwi 7,3,9986
	beq- 7,.L262
	blt- 7,.L261
	cmpwi 7,3,9987
	bne+ 7,.L257
	b .L263
.L258:
	.loc 1 149 0
	li 0,0
	b .L267
.L259:
	.loc 1 150 0
	li 0,1
	b .L267
.L260:
	.loc 1 151 0
	li 0,2
	b .L267
.L261:
	.loc 1 152 0
	li 0,3
	b .L267
.L262:
	.loc 1 153 0
	li 0,4
	b .L267
.L263:
	.loc 1 154 0
	li 0,5
.L267:
	stb 0,0(4)
	b .L266
.L257:
	.loc 1 156 0
	lis 4,.LC14@ha
.LVL172:
	li 3,1280
.LVL173:
	la 4,.LC14@l(4)
	li 5,156
	bl _glSetErrorEx
.LVL174:
.L266:
	.loc 1 159 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE70:
	.size	GL2GX_Filter, .-GL2GX_Filter
	.align 2
	.globl GL2GX_Wrap
	.type	GL2GX_Wrap, @function
GL2GX_Wrap:
.LFB69:
	.loc 1 133 0
.LVL175:
	.loc 1 134 0
	cmpwi 7,3,10497
	.loc 1 133 0
	mflr 0
.LCFI36:
	stwu 1,-8(1)
.LCFI37:
	stw 0,12(1)
.LCFI38:
	.loc 1 134 0
	beq- 7,.L271
	xoris 0,3,0xffff
	cmpwi 7,0,-32465
	beq 7,.L270
	cmpwi 7,3,10496
	bne+ 7,.L269
.L270:
	.loc 1 137 0
	li 0,0
	b .L274
.L271:
	.loc 1 138 0
	li 0,1
.L274:
	stb 0,0(4)
	b .L273
.L269:
	.loc 1 140 0
	lis 4,.LC14@ha
.LVL176:
	li 3,1280
.LVL177:
	la 4,.LC14@l(4)
	li 5,140
	bl _glSetErrorEx
.LVL178:
.L273:
	.loc 1 143 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE69:
	.size	GL2GX_Wrap, .-GL2GX_Wrap
	.align 2
	.globl glTexParameteri
	.type	glTexParameteri, @function
glTexParameteri:
.LFB85:
	.loc 1 817 0
.LVL179:
	mflr 0
.LCFI39:
	stwu 1,-24(1)
.LCFI40:
	.loc 1 818 0
	lis 9,cur_state@ha
	.loc 1 817 0
	stw 31,20(1)
.LCFI41:
	mr 31,5
	stw 0,28(1)
.LCFI42:
	.loc 1 818 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq+ 0,.L276
.LVL180:
	lis 4,.LC14@ha
.LVL181:
	li 3,1282
.LVL182:
	la 4,.LC14@l(4)
	li 5,818
	b .L292
.LVL183:
.L276:
	.loc 1 820 0
	xoris 0,4,0xffff
	cmpwi 7,0,-32454
	beq 7,.L284
	cmplwi 7,4,33082
	bgt- 7,.L289
	cmpwi 7,4,10241
	beq- 7,.L281
	cmplwi 7,4,10241
	bgt- 7,.L290
	cmpwi 7,4,10240
	bne+ 7,.L279
	b .L280
.L290:
	cmpwi 7,4,10242
	beq- 7,.L282
	cmpwi 7,4,10243
	bne+ 7,.L279
	b .L283
.L289:
	xoris 0,4,0xffff
	cmpwi 7,0,-32452
	beq 7,.L286
	cmplwi 7,4,33084
	blt- 7,.L285
	xoris 0,4,0xffff
	cmpwi 7,0,-32451
	beq 7,.L287
	xoris 0,4,0xffff
	cmpwi 7,0,-31490
	bne 7,.L279
	b .L288
.L281:
	.loc 1 822 0
	lis 9,cur_tex@ha
	mr 3,5
.LVL184:
	lwz 4,cur_tex@l(9)
.LVL185:
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,1
	b .L293
.LVL186:
.L280:
	.loc 1 823 0
	lis 9,cur_tex@ha
	mr 3,5
.LVL187:
	lwz 4,cur_tex@l(9)
.LVL188:
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,2
.LVL189:
.L293:
	.loc 1 841 0
	lwz 0,28(1)
	lwz 31,20(1)
	addi 1,1,24
	mtlr 0
	.loc 1 823 0
	b GL2GX_Filter
.LVL190:
.L282:
	.loc 1 824 0
	lis 9,cur_tex@ha
	mr 3,5
.LVL191:
	lwz 4,cur_tex@l(9)
.LVL192:
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,3
	b .L294
.LVL193:
.L283:
	.loc 1 825 0
	lis 9,cur_tex@ha
	mr 3,5
.LVL194:
	lwz 4,cur_tex@l(9)
.LVL195:
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,4
.LVL196:
.L294:
	.loc 1 841 0
	lwz 0,28(1)
	lwz 31,20(1)
	addi 1,1,24
	mtlr 0
	.loc 1 825 0
	b GL2GX_Wrap
.LVL197:
.L284:
	.loc 1 826 0
	xoris 0,5,0x8000
	lis 9,.LC10@ha
	stw 0,12(1)
	lis 0,0x4330
	stw 0,8(1)
	lfs 0,.LC10@l(9)
	lis 9,cur_tex@ha
	lfd 13,8(1)
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	fsub 13,13,0
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	frsp 13,13
	add 11,11,9
	stfs 13,8(11)
	b .L291
.L285:
	.loc 1 827 0
	xoris 0,5,0x8000
	lis 9,.LC10@ha
	stw 0,12(1)
	lis 0,0x4330
	stw 0,8(1)
	lfs 0,.LC10@l(9)
	lfd 1,8(1)
	.loc 1 841 0
	lwz 0,28(1)
	.loc 1 827 0
	fsub 1,1,0
	.loc 1 841 0
	lwz 31,20(1)
.LVL198:
	mtlr 0
	addi 1,1,24
	.loc 1 827 0
	frsp 1,1
	b setMaxLod
.LVL199:
.L288:
	.loc 1 828 0
	xoris 0,5,0x8000
	lis 9,.LC10@ha
	stw 0,12(1)
	lis 0,0x4330
	stw 0,8(1)
	lfs 0,.LC10@l(9)
	lfd 1,8(1)
	.loc 1 841 0
	lwz 0,28(1)
	.loc 1 828 0
	fsub 1,1,0
	.loc 1 841 0
	lwz 31,20(1)
.LVL200:
	mtlr 0
	addi 1,1,24
	.loc 1 828 0
	frsp 1,1
	b setAniso
.LVL201:
.L286:
	.loc 1 830 0
	lis 3,texMan@ha
.LVL202:
	la 3,texMan@l(3)
	bl getCur
.LVL203:
	stb 31,73(3)
.LVL204:
	b .L291
.LVL205:
.L287:
	.loc 1 833 0
	lis 3,texMan@ha
.LVL206:
	la 3,texMan@l(3)
	bl getCur
.LVL207:
	stb 31,74(3)
.LVL208:
	b .L291
.LVL209:
.L279:
	.loc 1 838 0
	lis 4,.LC14@ha
.LVL210:
	li 3,1280
.LVL211:
	la 4,.LC14@l(4)
	li 5,838
.L292:
	bl _glSetErrorEx
.LVL212:
.L291:
	.loc 1 841 0
	lwz 0,28(1)
	lwz 31,20(1)
.LVL213:
	addi 1,1,24
	mtlr 0
	blr
.LFE85:
	.size	glTexParameteri, .-glTexParameteri
	.align 2
	.globl glTexParameterf
	.type	glTexParameterf, @function
glTexParameterf:
.LFB86:
	.loc 1 847 0
.LVL214:
	mflr 0
.LCFI43:
	stwu 1,-24(1)
.LCFI44:
	.loc 1 848 0
	lis 9,cur_state@ha
	.loc 1 847 0
	stfd 31,16(1)
.LCFI45:
	fmr 31,1
	stw 0,28(1)
.LCFI46:
	.loc 1 848 0
	lwz 0,cur_state@l(9)
	andi. 11,0,1
	beq+ 0,.L296
.LVL215:
	lis 4,.LC14@ha
.LVL216:
	li 3,1282
.LVL217:
	la 4,.LC14@l(4)
	li 5,848
	b .L308
.LVL218:
.L296:
	.loc 1 849 0
	xoris 0,4,0xffff
	cmpwi 7,0,-32453
	beq 7,.L302
	cmplwi 7,4,33083
	bgt- 7,.L306
	cmplwi 7,4,10240
	blt- 7,.L299
	cmplwi 7,4,10243
	ble- 7,.L300
	xoris 0,4,0xffff
	cmpwi 7,0,-32454
	bne 7,.L299
	b .L301
.L306:
	xoris 0,4,0xffff
	cmpwi 7,0,-32451
	beq 7,.L304
	cmplwi 7,4,33085
	blt- 7,.L303
	xoris 0,4,0xffff
	cmpwi 7,0,-31490
	bne 7,.L299
	b .L305
.L300:
	.loc 1 854 0
	fmr 0,1
	addi 9,1,8
	fctiwz 0,0
	stfiwx 0,0,9
	.loc 1 869 0
	lwz 0,28(1)
	.loc 1 854 0
	lwz 5,8(1)
	.loc 1 869 0
	mtlr 0
	lfd 31,16(1)
.LVL219:
	addi 1,1,24
	.loc 1 854 0
	b glTexParameteri
.LVL220:
.L301:
	.loc 1 855 0
	lis 9,cur_tex@ha
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	add 11,11,9
	stfs 1,8(11)
	b .L307
.L302:
	.loc 1 869 0
	lwz 0,28(1)
	lfd 31,16(1)
.LVL221:
	addi 1,1,24
	mtlr 0
	.loc 1 856 0
	b setMaxLod
.LVL222:
.L305:
	.loc 1 869 0
	lwz 0,28(1)
	lfd 31,16(1)
.LVL223:
	addi 1,1,24
	mtlr 0
	.loc 1 857 0
	b setAniso
.LVL224:
.L303:
	.loc 1 859 0
	lis 3,texMan@ha
.LVL225:
	la 3,texMan@l(3)
	bl getCur
.LVL226:
	fmr 0,31
	addi 9,1,8
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 0,8(1)
	stb 0,73(3)
	b .L307
.LVL227:
.L304:
	.loc 1 862 0
	lis 3,texMan@ha
.LVL228:
	la 3,texMan@l(3)
	bl getCur
.LVL229:
	fmr 0,31
	addi 9,1,8
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 0,8(1)
	stb 0,74(3)
	b .L307
.LVL230:
.L299:
	.loc 1 866 0
	lis 4,.LC14@ha
.LVL231:
	li 3,1280
.LVL232:
	la 4,.LC14@l(4)
	li 5,866
.L308:
	bl _glSetErrorEx
.LVL233:
.L307:
	.loc 1 869 0
	lwz 0,28(1)
	lfd 31,16(1)
.LVL234:
	addi 1,1,24
	mtlr 0
	blr
.LFE86:
	.size	glTexParameterf, .-glTexParameterf
	.align 2
	.globl glTexParameterfv
	.type	glTexParameterfv, @function
glTexParameterfv:
.LFB87:
	.loc 1 874 0
.LVL235:
	mflr 0
.LCFI47:
	stwu 1,-8(1)
.LCFI48:
	.loc 1 875 0
	lis 9,cur_state@ha
	.loc 1 874 0
	stw 0,12(1)
.LCFI49:
	.loc 1 875 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq+ 0,.L310
	lis 4,.LC14@ha
.LVL236:
	li 3,1282
.LVL237:
	la 4,.LC14@l(4)
	li 5,875
.LVL238:
	b .L320
.LVL239:
.L310:
	.loc 1 876 0
	xoris 0,4,0xffff
	cmpwi 7,0,-32666
	beq 7,.L315
	cmplwi 7,4,32870
	bgt- 7,.L316
	cmpwi 7,4,4100
	beq- 7,.L314
	cmplwi 7,4,4100
	blt- 7,.L313
	addi 0,4,-10240
	cmplwi 7,0,3
	b .L319
.L316:
	xoris 0,4,0xffff
	cmpwi 7,0,-32654
	beq 7,.L315
	cmplwi 7,4,32882
	blt- 7,.L313
	addis 9,4,0xffff
	addi 9,9,32454
	cmplwi 7,9,3
.L319:
	bgt- 7,.L313
.L315:
	.loc 1 898 0
	lwz 0,12(1)
	addi 1,1,8
	.loc 1 888 0
	lfs 1,0(5)
	.loc 1 898 0
	mtlr 0
	.loc 1 888 0
	b glTexParameterf
.LVL240:
.L314:
	.loc 1 891 0
	lfs 11,12(5)
	lis 11,.LANCHOR0@ha
	lfs 13,0(5)
	la 9,.LANCHOR0@l(11)
	lfs 0,4(5)
	lfs 12,8(5)
	stfs 0,4(9)
	stfs 13,.LANCHOR0@l(11)
	stfs 11,12(9)
	stfs 12,8(9)
	b .L317
.L313:
	.loc 1 895 0
	lis 4,.LC14@ha
.LVL241:
	li 3,1280
.LVL242:
	la 4,.LC14@l(4)
	li 5,895
.LVL243:
.L320:
	bl _glSetErrorEx
.LVL244:
.L317:
	.loc 1 898 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE87:
	.size	glTexParameterfv, .-glTexParameterfv
	.align 2
	.globl _glGetPixelStore
	.type	_glGetPixelStore, @function
_glGetPixelStore:
.LFB68:
	.loc 1 111 0
.LVL245:
	mflr 0
.LCFI50:
	stwu 1,-8(1)
.LCFI51:
	stw 0,12(1)
.LCFI52:
	.loc 1 112 0
	addi 0,3,-3312
	cmplwi 7,0,21
	bgt- 7,.L322
	lis 9,.L335@ha
	slwi 0,0,2
	la 9,.L335@l(9)
	lwzx 0,9,0
	add 0,0,9
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L335:
	.long .L323-.L335
	.long .L324-.L335
	.long .L325-.L335
	.long .L326-.L335
	.long .L327-.L335
	.long .L328-.L335
	.long .L322-.L335
	.long .L322-.L335
	.long .L322-.L335
	.long .L322-.L335
	.long .L322-.L335
	.long .L322-.L335
	.long .L322-.L335
	.long .L322-.L335
	.long .L322-.L335
	.long .L322-.L335
	.long .L329-.L335
	.long .L330-.L335
	.long .L331-.L335
	.long .L332-.L335
	.long .L333-.L335
	.long .L334-.L335
	.section	".text"
.L329:
	.loc 1 114 0
	lis 9,pack@ha
	lbz 0,pack@l(9)
	b .L338
.L330:
	.loc 1 115 0
	lis 9,pack+1@ha
	lbz 0,pack+1@l(9)
	b .L338
.L331:
	.loc 1 116 0
	lis 9,pack+4@ha
	lwz 0,pack+4@l(9)
	b .L338
.L332:
	.loc 1 117 0
	lis 9,pack+8@ha
	lwz 0,pack+8@l(9)
	b .L338
.L333:
	.loc 1 118 0
	lis 9,pack+12@ha
	lwz 0,pack+12@l(9)
	b .L338
.L334:
	.loc 1 119 0
	lis 9,pack+16@ha
	lwz 0,pack+16@l(9)
	b .L338
.L323:
	.loc 1 120 0
	lis 9,unpack@ha
	lbz 0,unpack@l(9)
	b .L338
.L324:
	.loc 1 121 0
	lis 9,unpack+1@ha
	lbz 0,unpack+1@l(9)
	b .L338
.L325:
	.loc 1 122 0
	lis 9,unpack+4@ha
	lwz 0,unpack+4@l(9)
	b .L338
.L326:
	.loc 1 123 0
	lis 9,unpack+8@ha
	lwz 0,unpack+8@l(9)
	b .L338
.L327:
	.loc 1 124 0
	lis 9,unpack+12@ha
	lwz 0,unpack+12@l(9)
	b .L338
.L328:
	.loc 1 125 0
	lis 9,unpack+16@ha
	lwz 0,unpack+16@l(9)
.L338:
	stw 0,0(4)
	b .L337
.L322:
	.loc 1 127 0
	lis 4,.LC14@ha
.LVL246:
	li 3,1280
.LVL247:
	la 4,.LC14@l(4)
	li 5,127
	bl _glSetErrorEx
.LVL248:
.L337:
	.loc 1 130 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE68:
	.size	_glGetPixelStore, .-_glGetPixelStore
	.align 2
	.globl glPixelStorei
	.type	glPixelStorei, @function
glPixelStorei:
.LFB67:
	.loc 1 22 0
.LVL249:
	mflr 0
.LCFI53:
	stwu 1,-16(1)
.LCFI54:
	.loc 1 23 0
	lis 9,cur_state@ha
	.loc 1 22 0
	stw 31,12(1)
.LCFI55:
	mr 31,4
	stw 0,20(1)
.LCFI56:
	.loc 1 23 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq+ 0,.L340
.LVL250:
	lis 4,.LC14@ha
	li 3,1282
.LVL251:
	la 4,.LC14@l(4)
	li 5,23
	b .L374
.LVL252:
.L340:
	.loc 1 25 0
	addi 0,3,-3312
	cmplwi 7,0,21
	bgt- 7,.L343
	lis 9,.L356@ha
	slwi 0,0,2
	la 9,.L356@l(9)
	lwzx 0,9,0
	add 0,0,9
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L356:
	.long .L344-.L356
	.long .L345-.L356
	.long .L346-.L356
	.long .L347-.L356
	.long .L348-.L356
	.long .L349-.L356
	.long .L343-.L356
	.long .L343-.L356
	.long .L343-.L356
	.long .L343-.L356
	.long .L343-.L356
	.long .L343-.L356
	.long .L343-.L356
	.long .L343-.L356
	.long .L343-.L356
	.long .L343-.L356
	.long .L350-.L356
	.long .L351-.L356
	.long .L352-.L356
	.long .L353-.L356
	.long .L354-.L356
	.long .L355-.L356
	.section	".text"
.L350:
	.loc 1 27 0
	addic 9,4,-1
	subfe 0,9,4
	lis 9,pack@ha
	stb 0,pack@l(9)
	b .L373
.L351:
	.loc 1 28 0
	addic 9,4,-1
	subfe 0,9,4
	lis 9,pack+1@ha
	stb 0,pack+1@l(9)
	b .L373
.L352:
	.loc 1 30 0
	cmpwi 7,4,0
	bge+ 7,.L357
.LVL253:
	.loc 1 32 0
	lis 4,.LC14@ha
.LVL254:
	li 3,1281
.LVL255:
	la 4,.LC14@l(4)
	li 5,32
	b .L374
.LVL256:
.L357:
	.loc 1 35 0
	lis 9,pack+4@ha
	stw 4,pack+4@l(9)
	b .L373
.LVL257:
.L353:
	.loc 1 38 0
	cmpwi 7,4,0
	bge+ 7,.L359
.LVL258:
	.loc 1 40 0
	lis 4,.LC14@ha
.LVL259:
	li 3,1281
.LVL260:
	la 4,.LC14@l(4)
	li 5,40
	b .L374
.LVL261:
.L359:
	.loc 1 43 0
	lis 9,pack+8@ha
	stw 4,pack+8@l(9)
	b .L373
.LVL262:
.L354:
	.loc 1 46 0
	cmpwi 7,4,0
	bge+ 7,.L361
.LVL263:
	.loc 1 48 0
	lis 4,.LC14@ha
.LVL264:
	li 3,1281
.LVL265:
	la 4,.LC14@l(4)
	li 5,48
	b .L374
.LVL266:
.L361:
	.loc 1 51 0
	lis 9,pack+12@ha
	stw 4,pack+12@l(9)
	b .L373
.LVL267:
.L355:
	.loc 1 54 0
	cmplwi 7,4,8
	bgt- 7,.L363
.LVL268:
	li 0,1
	slw 0,0,4
	andi. 9,0,278
	bne- 0,.L364
.L363:
	.loc 1 61 0
	lis 4,.LC14@ha
.LVL269:
	li 3,1281
.LVL270:
	la 4,.LC14@l(4)
	li 5,61
	bl _glSetErrorEx
.LVL271:
.L364:
	.loc 1 63 0
	lis 9,pack+16@ha
	stw 31,pack+16@l(9)
	b .L373
.L344:
	.loc 1 65 0
	addic 9,4,-1
	subfe 0,9,4
	lis 9,unpack@ha
	stb 0,unpack@l(9)
	b .L373
.L345:
	.loc 1 66 0
	addic 9,4,-1
	subfe 0,9,4
	lis 9,unpack+1@ha
	stb 0,unpack+1@l(9)
	b .L373
.L346:
	.loc 1 68 0
	cmpwi 7,4,0
	bge+ 7,.L365
.LVL272:
	.loc 1 70 0
	lis 4,.LC14@ha
.LVL273:
	li 3,1281
.LVL274:
	la 4,.LC14@l(4)
	li 5,70
	b .L374
.LVL275:
.L365:
	.loc 1 73 0
	lis 9,unpack+4@ha
	stw 4,unpack+4@l(9)
	b .L373
.LVL276:
.L347:
	.loc 1 76 0
	cmpwi 7,4,0
	bge+ 7,.L367
.LVL277:
	.loc 1 78 0
	lis 4,.LC14@ha
.LVL278:
	li 3,1281
.LVL279:
	la 4,.LC14@l(4)
	li 5,78
	b .L374
.LVL280:
.L367:
	.loc 1 81 0
	lis 9,unpack+8@ha
	stw 4,unpack+8@l(9)
	b .L373
.LVL281:
.L348:
	.loc 1 84 0
	cmpwi 7,4,0
	bge+ 7,.L369
.LVL282:
	.loc 1 86 0
	lis 4,.LC14@ha
.LVL283:
	li 3,1281
.LVL284:
	la 4,.LC14@l(4)
	li 5,86
	b .L374
.LVL285:
.L369:
	.loc 1 89 0
	lis 9,unpack+12@ha
	stw 4,unpack+12@l(9)
	b .L373
.LVL286:
.L349:
	.loc 1 92 0
	cmplwi 7,4,8
	bgt- 7,.L371
.LVL287:
	li 0,1
	slw 0,0,4
	andi. 9,0,278
	bne- 0,.L372
.L371:
	.loc 1 99 0
	lis 4,.LC14@ha
.LVL288:
	li 3,1281
.LVL289:
	la 4,.LC14@l(4)
	li 5,99
	bl _glSetErrorEx
.LVL290:
.L372:
	.loc 1 101 0
	lis 9,unpack+16@ha
	stw 31,unpack+16@l(9)
	b .L373
.L343:
	.loc 1 104 0
	lis 4,.LC14@ha
	li 3,1280
.LVL291:
	la 4,.LC14@l(4)
	li 5,104
.L374:
	bl _glSetErrorEx
.LVL292:
.L373:
	.loc 1 107 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL293:
	addi 1,1,16
	mtlr 0
	blr
.LFE67:
	.size	glPixelStorei, .-glPixelStorei
	.align 2
	.globl glPixelStoref
	.type	glPixelStoref, @function
glPixelStoref:
.LFB66:
	.loc 1 17 0
.LVL294:
	stwu 1,-16(1)
.LCFI57:
	.loc 1 18 0
	fctiwz 0,1
.LVL295:
	addi 9,1,8
	stfiwx 0,0,9
	lwz 4,8(1)
	.loc 1 19 0
	addi 1,1,16
	.loc 1 18 0
	b glPixelStorei
.LVL296:
.LFE66:
	.size	glPixelStoref, .-glPixelStoref
	.align 2
	.globl deleteTex
	.type	deleteTex, @function
deleteTex:
.LFB105:
	.loc 1 1372 0
.LVL297:
	mflr 0
.LCFI58:
	stwu 1,-24(1)
.LCFI59:
	stmw 29,12(1)
.LCFI60:
	.loc 1 1373 0
	addi 29,4,-1
	.loc 1 1372 0
	stw 0,28(1)
.LCFI61:
	.loc 1 1372 0
	mr 30,3
	.loc 1 1375 0
	lwz 9,4(3)
	lbzx 0,9,29
	cmpwi 7,0,0
	beq- 7,.L384
	.loc 1 1378 0
	lwz 9,0(3)
	mulli 0,29,76
	add 31,0,9
.LVL298:
	.loc 1 1380 0
	lwz 3,4(31)
.LVL299:
	cmpwi 7,3,0
	beq- 7,.L380
	.loc 1 1382 0
	lwz 4,28(31)
.LVL300:
	bl releaseTextureSlot
.LVL301:
.L380:
	.loc 1 1385 0
	li 0,0
	.loc 1 1388 0
	li 11,0
.LVL302:
	stw 0,32(31)
	.loc 1 1385 0
	stw 0,4(31)
	.loc 1 1386 0
	stw 0,20(31)
	.loc 1 1387 0
	stw 0,24(31)
	.loc 1 1388 0
	li 0,10
	mtctr 0
.L382:
	.loc 1 1393 0
	add 9,31,11
	li 0,0
	stb 0,8(9)
	.loc 1 1391 0
	addi 11,11,1
	bdnz .L382
	.loc 1 1396 0
	lwz 9,4(30)
	stbx 0,9,29
	.loc 1 1397 0
	lwz 9,12(30)
	addi 9,9,-1
	stw 9,12(30)
.LVL303:
.L384:
	.loc 1 1399 0
	lwz 0,28(1)
	lmw 29,12(1)
.LVL304:
	addi 1,1,24
	mtlr 0
	blr
.LFE105:
	.size	deleteTex, .-deleteTex
	.align 2
	.globl glDeleteTextures
	.type	glDeleteTextures, @function
glDeleteTextures:
.LFB123:
	.loc 1 2005 0
.LVL305:
	mflr 0
.LCFI62:
	stwu 1,-24(1)
.LCFI63:
	.loc 1 2006 0
	lis 9,cur_state@ha
	.loc 1 2005 0
	stmw 28,8(1)
.LCFI64:
	mr 29,3
	stw 0,28(1)
.LCFI65:
	.loc 1 2005 0
	mr 31,4
	.loc 1 2006 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq+ 0,.L388
.LVL306:
	lis 4,.LC14@ha
	li 3,1282
	la 4,.LC14@l(4)
	li 5,2006
	b .L398
.LVL307:
.L388:
	.loc 1 2010 0
	cmpwi 7,3,0
	bge+ 7,.L391
.LVL308:
	.loc 1 2012 0
	lis 4,.LC14@ha
	li 3,1281
.LVL309:
	la 4,.LC14@l(4)
	li 5,2012
	b .L398
.LVL310:
.L391:
	.loc 1 2016 0
	cmpwi 7,4,0
	beq- 7,.L393
.LVL311:
	.loc 1 2024 0
	lis 9,texMan@ha
	.loc 1 2016 0
	li 30,0
.LVL312:
	.loc 1 2024 0
	la 28,texMan@l(9)
	b .L395
.LVL313:
.L393:
	.loc 1 2018 0
	lis 4,.LC14@ha
.LVL314:
	li 3,1281
.LVL315:
	la 4,.LC14@l(4)
	li 5,2018
.L398:
	bl _glSetErrorEx
	b .L397
.LVL316:
.L396:
	.loc 1 2024 0
	lwz 4,0(31)
.LVL317:
	addi 31,31,4
	bl deleteTex
.LVL318:
.L395:
	.loc 1 2022 0
	cmpw 7,30,29
	.loc 1 2024 0
	mr 3,28
	.loc 1 2022 0
	addi 30,30,1
	bne+ 7,.L396
.L397:
	.loc 1 2026 0
	lwz 0,28(1)
	lmw 28,8(1)
.LVL319:
	addi 1,1,24
	mtlr 0
	blr
.LFE123:
	.size	glDeleteTextures, .-glDeleteTextures
	.align 2
	.globl computeStart
	.type	computeStart, @function
computeStart:
.LFB118:
	.loc 1 1632 0
.LVL320:
	.loc 1 1633 0
	mr. 7,4
	.loc 1 1632 0
	mflr 0
.LCFI66:
	stwu 1,-32(1)
.LCFI67:
	stw 31,28(1)
.LCFI68:
	mr 31,3
	stw 0,36(1)
.LCFI69:
	.loc 1 1633 0
	bne- 0,.L400
.LVL321:
	.loc 1 1635 0
	lwz 0,4(3)
	b .L402
.L400:
	.loc 1 1640 0
	cmpwi 7,7,1
	lwz 3,20(3)
	lwz 4,24(31)
	lwz 5,0(31)
	bne+ 7,.L403
	.loc 1 1642 0
	rlwinm 3,3,0,0xffff
	rlwinm 4,4,0,0xffff
	li 6,0
	b .L407
.L403:
	.loc 1 1646 0
	rlwinm 3,3,0,0xffff
	rlwinm 4,4,0,0xffff
	rlwinm 7,7,0,0xff
.LVL322:
	li 6,1
.L407:
	bl GX_GetTexBufferSize
.LVL323:
	.loc 1 1649 0
	lwz 0,4(31)
.LBB25:
.LBB26:
	.file 2 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/include/glint.h"
	.loc 2 346 0
	add 0,0,3
.LVL324:
	stw 0,8(1)
.LVL325:
.L402:
.LBE26:
.LBE25:
	.loc 1 1653 0
	mr 3,0
.LVL326:
	lwz 0,36(1)
	lwz 31,28(1)
.LVL327:
	addi 1,1,32
	mtlr 0
	blr
.LFE118:
	.size	computeStart, .-computeStart
	.align 2
	.globl glTexSubImage2D
	.type	glTexSubImage2D, @function
glTexSubImage2D:
.LFB120:
	.loc 1 1734 0
.LVL328:
	mflr 0
.LCFI70:
	stwu 1,-72(1)
.LCFI71:
	.loc 1 1735 0
	lis 11,cur_state@ha
	.loc 1 1734 0
	stmw 24,40(1)
.LCFI72:
	mr 29,4
	stw 0,76(1)
.LCFI73:
	.loc 1 1734 0
	mr 30,5
	mr 26,6
	mr 25,7
	.loc 1 1735 0
	lwz 0,cur_state@l(11)
	.loc 1 1734 0
	mr 24,8
	mr 28,9
	mr 27,10
	.loc 1 1735 0
	andi. 11,0,1
	beq+ 0,.L409
.LVL329:
	lis 4,.LC14@ha
	li 3,1282
.LVL330:
	la 4,.LC14@l(4)
	li 5,1735
	b .L434
.LVL331:
.L409:
	.loc 1 1739 0
	cmpwi 7,3,3553
	beq- 7,.L412
	.loc 1 1741 0
	lis 4,.LC14@ha
	li 3,1280
.LVL332:
	la 4,.LC14@l(4)
	li 5,1741
	b .L434
.LVL333:
.L412:
	.loc 1 1746 0
	cmpwi 7,10,6656
	beq- 7,.L414
.LVL334:
	cmpwi 7,9,6400
	bne+ 7,.L416
.L414:
	.loc 1 1748 0
	lis 4,.LC14@ha
	li 3,1280
.LVL335:
	la 4,.LC14@l(4)
	li 5,1748
	b .L434
.LVL336:
.L416:
	.loc 1 1752 0
	cmplwi 7,4,10
	ble- 7,.L417
.LVL337:
	.loc 1 1754 0
	lis 4,.LC14@ha
.LVL338:
	li 3,1281
.LVL339:
	la 4,.LC14@l(4)
	li 5,1754
	b .L434
.LVL340:
.L417:
	.loc 1 1758 0
	mr 3,10
.LVL341:
	mr 4,9
.LVL342:
	bl CorrectGLtype
.LVL343:
	.loc 1 1760 0
	cmpwi 7,3,0
	beq- 7,.L433
	.loc 1 1765 0
	lis 3,texMan@ha
	la 3,texMan@l(3)
	bl getCur
	.loc 1 1767 0
	lwz 0,4(3)
.LVL344:
	.loc 1 1765 0
	mr 31,3
.LVL345:
	.loc 1 1767 0
	cmpwi 7,0,0
	bne+ 7,.L420
	.loc 1 1769 0
	lis 4,.LC14@ha
	li 3,1282
	la 4,.LC14@l(4)
	li 5,1769
	b .L434
.L420:
	.loc 1 1777 0
	lis 10,0x4330
	xoris 0,30,0x8000
	.loc 1 1774 0
	lwz 11,20(3)
	.loc 1 1777 0
	lis 9,.LC10@ha
	.loc 1 1775 0
	lwz 8,24(3)
	.loc 1 1777 0
	stw 0,28(1)
	stw 10,24(1)
	lfs 12,.LC10@l(9)
	lis 9,.LC8@ha
	lfd 0,24(1)
	lfs 11,.LC8@l(9)
	fsub 0,0,12
	frsp 0,0
	fcmpu 7,0,11
	blt- 7,.L422
.LVL346:
	sraw 9,11,29
	add 0,25,30
	xoris 0,0,0x8000
	xoris 9,9,0x8000
	stw 0,28(1)
	stw 9,36(1)
	stw 10,32(1)
	lfd 13,24(1)
	lfd 0,32(1)
	fsub 13,13,12
	fsub 0,0,12
	frsp 13,13
	frsp 0,0
	fcmpu 7,13,0
	bgt- 7,.L422
	xoris 0,26,0x8000
	stw 0,28(1)
	lfd 0,24(1)
	fsub 0,0,12
	frsp 0,0
	fcmpu 7,0,11
	blt- 7,.L422
	sraw 9,8,29
	add 0,24,26
	xoris 0,0,0x8000
	xoris 9,9,0x8000
	stw 0,28(1)
	stw 9,36(1)
	lfd 0,24(1)
	lfd 13,32(1)
	fsub 0,0,12
	fsub 13,13,12
	frsp 0,0
	frsp 13,13
	fcmpu 7,0,13
	bng- 7,.L426
.L422:
	.loc 1 1782 0
	lis 4,.LC14@ha
	li 3,1281
.LVL347:
	la 4,.LC14@l(4)
	li 5,1782
	b .L434
.LVL348:
.L426:
	.loc 1 1786 0
	cmpwi 7,24,0
	blt- 7,.L428
	cmpwi 7,25,0
	bge+ 7,.L430
.L428:
	.loc 1 1788 0
	lis 4,.LC14@ha
	li 3,1281
.LVL349:
	la 4,.LC14@l(4)
	li 5,1788
	b .L434
.LVL350:
.L430:
	.loc 1 1792 0
	lwz 0,68(3)
	cmpw 7,0,28
	bne+ 7,.L431
	.loc 1 1794 0
	lis 4,.LC14@ha
	li 3,1280
.LVL351:
	la 4,.LC14@l(4)
	li 5,1794
.LVL352:
.L434:
	bl _glSetErrorEx
	b .L433
.LVL353:
.L431:
	.loc 1 1798 0
	mr 4,29
	bl computeStart
.LVL354:
	.loc 1 1799 0
	lwz 5,0(31)
	lwz 8,20(31)
	.loc 1 1798 0
	mr 4,3
.LVL355:
	.loc 1 1799 0
	lwz 9,24(31)
	mr 3,28
	lwz 6,80(1)
	mr 7,27
	mr 10,30
	stw 26,8(1)
	stw 25,12(1)
	.loc 1 1802 0
	lis 27,cur_tex@ha
.LVL356:
	.loc 1 1799 0
	stw 24,16(1)
	bl TransferPixels
.LVL357:
	.loc 1 1800 0
	li 0,1
	add 9,31,29
	stb 0,8(9)
	.loc 1 1802 0
	lis 29,glTexEnvs@ha
.LVL358:
	la 29,glTexEnvs@l(29)
	addi 28,31,36
.LVL359:
	lwz 11,cur_tex@l(27)
	mr 3,28
	lwz 4,4(31)
	li 10,1
	mulli 11,11,108
	lhz 5,22(31)
	lhz 6,26(31)
	add 11,11,29
	lbz 7,3(31)
	lbz 9,4(11)
	lbz 8,3(11)
	bl GX_InitTexObj
	.loc 1 1804 0
	lwz 9,cur_tex@l(27)
	mr 3,28
	mulli 9,9,108
	add 9,9,29
	addi 11,9,16
	lbz 4,1(9)
	lfs 3,16(9)
	lbz 5,2(9)
	lfs 1,8(9)
	lfs 2,12(9)
	lbz 8,6(11)
	lbz 6,4(11)
	lbz 7,5(11)
	bl GX_InitTexObjLOD
	.loc 1 1808 0
	lwz 9,cur_tex@l(27)
	.loc 1 1810 0
	lwz 4,28(31)
	.loc 1 1808 0
	mulli 9,9,108
	.loc 1 1810 0
	lwz 3,4(31)
	.loc 1 1808 0
	add 9,9,29
	lbz 0,1(9)
	stb 0,72(31)
	.loc 1 1810 0
	bl DCFlushRange
.LVL360:
.L433:
	.loc 1 1811 0
	lwz 0,76(1)
	lmw 24,40(1)
.LVL361:
	addi 1,1,72
	mtlr 0
	blr
.LFE120:
	.size	glTexSubImage2D, .-glTexSubImage2D
	.align 2
	.globl GenArray
	.type	GenArray, @function
GenArray:
.LFB116:
	.loc 1 1612 0
.LVL362:
	mflr 0
.LCFI74:
	stwu 1,-16(1)
.LCFI75:
	stmw 30,8(1)
.LCFI76:
	mr 30,6
	stw 0,20(1)
.LCFI77:
	.loc 1 1612 0
	mr 0,3
	.loc 1 1613 0
	li 6,1
.LVL363:
	rlwinm 3,4,0,0xffff
.LVL364:
	rlwinm 4,5,0,0xffff
.LVL365:
	mr 5,0
	bl GX_GetTexBufferSize
.LVL366:
	stw 3,0(30)
	.loc 1 1615 0
	bl getTextureSlot
	.loc 1 1617 0
	mr. 31,3
.LVL367:
	beq- 0,.L436
	.loc 1 1622 0
	lwz 5,0(30)
	li 4,127
	bl memset
.L436:
	.loc 1 1625 0
	lwz 0,20(1)
	mr 3,31
	lmw 30,8(1)
.LVL368:
	addi 1,1,16
	mtlr 0
	blr
.LFE116:
	.size	GenArray, .-GenArray
	.align 2
	.globl glTexImage2D
	.type	glTexImage2D, @function
glTexImage2D:
.LFB122:
	.loc 1 1842 0
.LVL369:
	mflr 0
.LCFI78:
	stwu 1,-80(1)
.LCFI79:
	.loc 1 1843 0
	lis 11,cur_state@ha
	.loc 1 1842 0
	stmw 22,40(1)
.LCFI80:
	mr 30,4
	stw 0,84(1)
.LCFI81:
	.loc 1 1842 0
	mr 29,5
	mr 27,6
	mr 28,7
	.loc 1 1843 0
	lwz 0,cur_state@l(11)
	.loc 1 1842 0
	mr 24,9
	mr 23,10
	lwz 22,88(1)
	.loc 1 1843 0
	andi. 11,0,1
	beq+ 0,.L440
.LVL370:
	lis 4,.LC14@ha
	li 3,1282
.LVL371:
	la 4,.LC14@l(4)
	li 5,1843
	b .L516
.LVL372:
.L440:
	.loc 1 1847 0
	neg 0,6
	li 9,0
	and 0,0,6
	cmpw 7,0,6
	bne- 7,.L445
.LVL373:
	neg 0,7
	and 0,0,7
	xor 9,0,7
	cntlzw 9,9
	srwi 9,9,5
.LVL374:
.L445:
	.loc 1 1849 0
	li 0,0
	ori 0,0,32868
	cmpw 7,3,0
	.loc 1 1847 0
	rlwinm 0,9,0,0xff
.LVL375:
	.loc 1 1849 0
	bne+ 7,.L446
	.loc 1 1851 0
	cmpwi 7,0,0
	beq- 7,.L448
	li 0,1024
.LVL376:
	sraw 0,0,30
	cmpw 7,27,0
	bgt- 7,.L448
.LVL377:
	cmpw 7,28,0
	bgt- 7,.L448
.LVL378:
	cmpwi 7,30,10
	ble- 7,.L452
.LVL379:
.L448:
.LBB38:
	.loc 1 1853 0
	lis 3,texMan@ha
.LVL380:
	la 3,texMan@l(3)
	bl getCur
.LVL381:
	.loc 1 1854 0
	li 0,0
	.loc 1 1855 0
	stw 0,24(3)
.LVL382:
	.loc 1 1854 0
	stw 0,20(3)
	b .L510
.LVL383:
.L452:
.LBE38:
.LBB39:
	.loc 1 1859 0
	lis 3,texMan@ha
.LVL384:
	la 3,texMan@l(3)
	bl getCur
.LVL385:
	.loc 1 1861 0
	slw 0,28,30
	.loc 1 1860 0
	slw 9,27,30
	.loc 1 1861 0
	stw 0,24(3)
.LVL386:
	.loc 1 1860 0
	stw 9,20(3)
	b .L510
.LVL387:
.L446:
.LBE39:
	.loc 1 1866 0
	cmpwi 7,3,3553
	beq- 7,.L453
	.loc 1 1868 0
	lis 4,.LC14@ha
	li 3,1280
.LVL388:
	la 4,.LC14@l(4)
	li 5,1868
	b .L516
.LVL389:
.L453:
	.loc 1 1872 0
	cmpwi 7,0,0
	beq- 7,.L455
	cmpwi 7,27,0
	blt- 7,.L455
.LVL390:
	cmpwi 7,28,0
	bge+ 7,.L458
.LVL391:
.L455:
	.loc 1 1874 0
	lis 4,.LC14@ha
	li 3,1281
.LVL392:
	la 4,.LC14@l(4)
	li 5,1874
	b .L516
.LVL393:
.L458:
	.loc 1 1879 0
	cmpwi 7,23,6656
	beq- 7,.L459
	cmpwi 7,24,6400
	bne+ 7,.L461
.L459:
	.loc 1 1881 0
	lis 4,.LC14@ha
	li 3,1280
.LVL394:
	la 4,.LC14@l(4)
	li 5,1881
	b .L516
.LVL395:
.L461:
	.loc 1 1886 0
	cmplwi 7,30,10
	ble- 7,.L462
	.loc 1 1888 0
	lis 4,.LC14@ha
	li 3,1281
.LVL396:
	la 4,.LC14@l(4)
	li 5,1888
	b .L516
.LVL397:
.L462:
	.loc 1 1892 0
	mr 3,23
.LVL398:
	mr 4,24
	bl CorrectGLtype
.LVL399:
	.loc 1 1894 0
	cmpwi 7,3,0
	beq- 7,.L510
.LBB40:
.LBB41:
	.loc 1 1560 0
	li 0,0
	ori 0,0,32834
	cmpw 7,29,0
	bgt- 7,.L473
	li 0,0
	ori 0,0,32832
	cmpw 7,29,0
	bge- 7,.L471
	cmpwi 7,29,6408
	beq- 7,.L469
	bgt- 7,.L474
	cmpwi 7,29,3
	beq- 7,.L468
	bgt- 7,.L475
	cmpwi 7,29,1
	beq- 7,.L466
	cmpwi 7,29,2
	b .L514
.L475:
	cmpwi 7,29,6406
	beq- 7,.L470
	bgt- 7,.L468
	cmpwi 7,29,4
	bne+ 7,.L465
	b .L469
.L474:
	cmpwi 7,29,10768
	beq- 7,.L468
	bgt- 7,.L476
	cmpwi 7,29,6409
	beq- 7,.L466
	cmpwi 7,29,6410
.L514:
	bne+ 7,.L465
	b .L467
.L476:
	li 0,0
	ori 0,0,32827
	cmpw 7,29,0
	blt- 7,.L465
	li 0,0
	ori 0,0,32830
	cmpw 7,29,0
	ble- 7,.L470
	b .L466
.L473:
	li 0,0
	ori 0,0,32845
	cmpw 7,29,0
	bgt- 7,.L477
	li 0,0
	ori 0,0,32843
	cmpw 7,29,0
	bge- 7,.L471
	li 0,0
	ori 0,0,32840
	cmpw 7,29,0
	bgt- 7,.L466
	li 0,0
	ori 0,0,32836
	cmpw 7,29,0
	bge- 7,.L470
	b .L467
.L477:
	li 0,0
	ori 0,0,32854
	cmpw 7,29,0
	bgt- 7,.L478
	li 0,0
	ori 0,0,32853
	cmpw 7,29,0
	bge- 7,.L469
	li 0,0
	ori 0,0,32847
	cmpw 7,29,0
	blt- 7,.L465
	b .L468
.L478:
	xoris 0,29,0xffff
	cmpwi 7,0,-32681
	beq 7,.L472
	li 0,0
	ori 0,0,32859
	cmpw 7,29,0
	bgt- 7,.L465
	b .L469
.L472:
	li 26,5
.LVL400:
	b .L479
.LVL401:
.L469:
	li 26,6
.LVL402:
	b .L479
.LVL403:
.L466:
	li 26,0
.LVL404:
	b .L479
.LVL405:
.L471:
	li 26,1
.LVL406:
	b .L479
.LVL407:
.L467:
	li 26,2
.LVL408:
	b .L479
.LVL409:
.L468:
	li 26,4
.LVL410:
	b .L479
.LVL411:
.L470:
	li 26,3
.LVL412:
.L479:
.LBE41:
.LBE40:
	.loc 1 1911 0
	lis 3,texMan@ha
	.loc 1 1913 0
	slw 25,28,30
.LVL413:
	.loc 1 1911 0
	la 3,texMan@l(3)
	.loc 1 1914 0
	slw 29,27,30
.LVL414:
	.loc 1 1911 0
	bl getCur
	.loc 1 1919 0
	cmpwi 7,28,1
	.loc 1 1911 0
	mr 31,3
.LVL415:
	.loc 1 1919 0
	bne+ 7,.L480
	cmpwi 7,27,1
	bne+ 7,.L480
	lwz 0,24(3)
	cmpw 7,0,25
	bne+ 7,.L480
.LVL416:
	lwz 0,20(3)
	xor 11,29,0
	cntlzw 11,11
	srwi 11,11,5
	b .L484
.LVL417:
.L480:
	li 11,0
.L484:
	.loc 1 1922 0
	lwz 0,24(31)
	cmpw 7,0,25
	beq- 7,.L485
	cmpwi 7,28,1
	li 9,0
	bne+ 7,.L488
.L485:
	lwz 0,20(31)
	li 9,1
	cmpw 7,0,29
	beq- 7,.L488
	xori 9,27,1
	cntlzw 9,9
	srwi 9,9,5
.L488:
	.loc 1 1924 0
	or. 0,9,11
	bne- 0,.L491
	cmpwi 7,30,0
	beq+ 7,.L491
	.loc 1 1926 0
	lis 4,.LC14@ha
	li 3,1281
	la 4,.LC14@l(4)
	li 5,1926
	b .L516
.LVL418:
.L491:
	.loc 1 1930 0
	lwz 3,4(31)
	cmpwi 7,3,0
	beq- 7,.L494
	cmpwi 7,0,0
	bne- 7,.L496
	cmpwi 7,30,0
	bne+ 7,.L496
.LBB42:
	.loc 1 1934 0
	lwz 4,28(31)
	bl releaseTextureSlot
	.loc 1 1935 0
	stw 30,4(31)
.L494:
	li 0,10
	li 11,0
.LVL419:
	mtctr 0
.L499:
	.loc 1 1941 0
	add 9,31,11
	li 0,0
	stb 0,8(9)
	.loc 1 1939 0
	addi 11,11,1
	bdnz .L499
	.loc 1 1944 0
	mr 3,26
	mr 4,27
	mr 5,28
	addi 6,1,24
	li 7,10
	bl GenArray
.LVL420:
	.loc 1 1946 0
	cmpwi 7,3,0
	.loc 1 1944 0
	stw 3,4(31)
	.loc 1 1946 0
	bne+ 7,.L501
	.loc 1 1948 0
	lis 4,.LC14@ha
	li 3,1285
	la 4,.LC14@l(4)
	li 5,1948
	b .L516
.L501:
	.loc 1 1962 0
	lbz 9,74(31)
	.loc 1 1953 0
	stw 24,68(31)
	.loc 1 1954 0
	stw 26,0(31)
	.loc 1 1962 0
	cmpwi 7,9,0
	.loc 1 1955 0
	lwz 0,24(1)
.LVL421:
	.loc 1 1957 0
	stw 25,24(31)
	.loc 1 1955 0
	stw 0,28(31)
	.loc 1 1960 0
	li 0,3553
	stw 0,32(31)
	.loc 1 1958 0
	stw 29,20(31)
	.loc 1 1962 0
	bne- 7,.L503
.LBB43:
	.loc 1 1964 0
	cmpw 7,25,29
.LVL422:
	mr 0,25
.LVL423:
	bge- 7,.L515
	mr 0,29
	b .L515
.L507:
	.loc 1 1971 0
	lbz 9,74(31)
	addi 9,9,1
.L515:
	.loc 1 1968 0
	cmpwi 7,0,1
	.loc 1 1971 0
	stb 9,74(31)
	.loc 1 1970 0
	srawi 0,0,1
	.loc 1 1968 0
	bgt+ 7,.L507
	b .L503
.LVL424:
.L496:
.LBE43:
.LBE42:
	.loc 1 1977 0
	lwz 0,0(31)
	cmpw 7,26,0
	beq- 7,.L503
	.loc 1 1979 0
	lis 4,.LC14@ha
	li 3,1281
	la 4,.LC14@l(4)
	li 5,1979
	b .L516
.LVL425:
.L503:
	.loc 1 1984 0
	cmpwi 7,22,0
	beq- 7,.L510
.LBB44:
	.loc 1 1986 0
	mr 4,30
	mr 3,31
	bl computeStart
.LVL426:
	.loc 1 1987 0
	mr 5,26
	.loc 1 1986 0
	mr 4,3
.LVL427:
	.loc 1 1987 0
	mr 6,22
	mr 3,24
	mr 7,23
	mr 8,27
	mr 9,28
	li 0,0
	li 10,0
	stw 0,8(1)
	.loc 1 1991 0
	lis 29,glTexEnvs@ha
.LVL428:
	.loc 1 1987 0
	stw 27,12(1)
	.loc 1 1991 0
	lis 27,cur_tex@ha
.LVL429:
	.loc 1 1987 0
	stw 28,16(1)
	bl TransferPixels
.LVL430:
	.loc 1 1989 0
	li 0,1
	add 9,31,30
	stb 0,8(9)
	.loc 1 1991 0
	la 29,glTexEnvs@l(29)
	addi 28,31,36
.LVL431:
	lwz 4,4(31)
	lwz 11,cur_tex@l(27)
	mr 3,28
	lhz 5,22(31)
	li 10,1
	mulli 11,11,108
	lhz 6,26(31)
	lbz 7,3(31)
	add 11,11,29
	lbz 9,4(11)
	lbz 8,3(11)
	bl GX_InitTexObj
	.loc 1 1993 0
	lwz 9,cur_tex@l(27)
	mr 3,28
	mulli 9,9,108
	add 9,9,29
	addi 11,9,16
	lfs 3,16(9)
	lbz 4,1(9)
	lbz 5,2(9)
	lfs 1,8(9)
	lfs 2,12(9)
	lbz 8,6(11)
	lbz 6,4(11)
	lbz 7,5(11)
	bl GX_InitTexObjLOD
	.loc 1 1997 0
	lwz 9,cur_tex@l(27)
	.loc 1 1999 0
	lwz 3,4(31)
	.loc 1 1997 0
	mulli 9,9,108
	add 9,9,29
	lbz 0,1(9)
	stb 0,72(31)
	.loc 1 1999 0
	lwz 4,24(1)
	bl DCFlushRange
	b .L510
.LVL432:
.L465:
.LBE44:
	.loc 1 1905 0
	lis 4,.LC14@ha
	li 3,1280
	la 4,.LC14@l(4)
	li 5,1905
.LVL433:
.L516:
	bl _glSetErrorEx
.LVL434:
.LVL435:
.L510:
	.loc 1 2001 0
	lwz 0,84(1)
.LVL436:
	lmw 22,40(1)
.LVL437:
	addi 1,1,80
	mtlr 0
	blr
.LFE122:
	.size	glTexImage2D, .-glTexImage2D
	.align 2
	.globl glTexImage1D
	.type	glTexImage1D, @function
glTexImage1D:
.LFB121:
	.loc 1 1821 0
.LVL438:
	mflr 0
.LCFI82:
	stwu 1,-24(1)
.LCFI83:
	.loc 1 1822 0
	lis 11,cur_state@ha
	.loc 1 1821 0
	mr 12,9
	stw 31,20(1)
.LCFI84:
	mr 31,10
	stw 0,28(1)
.LCFI85:
	.loc 1 1822 0
	lwz 0,cur_state@l(11)
	andi. 11,0,1
	.loc 1 1821 0
	mr 11,8
	.loc 1 1822 0
	beq+ 0,.L518
.LVL439:
	lis 4,.LC14@ha
.LVL440:
	li 3,1282
.LVL441:
	la 4,.LC14@l(4)
	li 5,1822
.LVL442:
	bl _glSetErrorEx
.LVL443:
	b .L523
.LVL444:
.L518:
	.loc 1 1824 0
	xoris 0,3,0xffff
	cmpwi 7,0,-32669
	bne 7,.L521
	.loc 1 1826 0
	li 3,0
.LVL445:
	mr 8,7
	ori 3,3,32868
	mr 9,11
	mr 10,12
	b .L524
.LVL446:
.L521:
	.loc 1 1830 0
	mr 8,7
	mr 9,11
	mr 10,12
	li 3,3553
.LVL447:
.L524:
	li 7,1
	stw 31,8(1)
	bl glTexImage2D
.LVL448:
.L523:
	.loc 1 1833 0
	lwz 0,28(1)
	lwz 31,20(1)
.LVL449:
	addi 1,1,24
	mtlr 0
	blr
.LFE121:
	.size	glTexImage1D, .-glTexImage1D
	.align 2
	.globl activateTex
	.type	activateTex, @function
activateTex:
.LFB104:
	.loc 1 1347 0
.LVL450:
	mflr 0
.LCFI86:
	stwu 1,-24(1)
.LCFI87:
	stmw 29,12(1)
.LCFI88:
	mr 31,3
	stw 0,28(1)
.LCFI89:
	.loc 1 1350 0
	lwz 9,4(3)
	.loc 1 1348 0
	addi 3,4,-1
.LVL451:
	.loc 1 1350 0
	lbzx 29,3,9
	cmpwi 7,29,0
	bne- 7,.L530
	.loc 1 1353 0
	li 0,1
	.loc 1 1355 0
	mulli 30,3,76
	.loc 1 1353 0
	stbx 0,3,9
	.loc 1 1355 0
	li 4,0
.LVL452:
	li 5,76
	lwz 3,0(31)
.LVL453:
	add 3,30,3
	bl memset
	.loc 1 1356 0
	lwz 9,0(31)
	.loc 1 1360 0
	li 0,10
	li 11,0
.LVL454:
	.loc 1 1356 0
	add 9,9,30
	.loc 1 1360 0
	mtctr 0
	.loc 1 1356 0
	stw 29,4(9)
	.loc 1 1357 0
	lwz 9,0(31)
	add 9,9,30
	stw 29,20(9)
	.loc 1 1358 0
	lwz 9,0(31)
	add 9,9,30
	stw 29,24(9)
	.loc 1 1359 0
	lwz 9,0(31)
	add 9,9,30
	stw 29,32(9)
	.loc 1 1360 0
	lwz 9,0(31)
	add 9,9,30
	stb 29,74(9)
.L528:
	.loc 1 1365 0
	lwz 0,0(31)
	add 9,11,30
	.loc 1 1363 0
	addi 11,11,1
	.loc 1 1365 0
	add 9,9,0
	li 0,0
	stb 0,8(9)
	.loc 1 1363 0
	bdnz .L528
	.loc 1 1368 0
	lwz 9,12(31)
	addi 9,9,1
	stw 9,12(31)
.LVL455:
.L530:
	.loc 1 1369 0
	lwz 0,28(1)
	lmw 29,12(1)
.LVL456:
	addi 1,1,24
	mtlr 0
	blr
.LFE104:
	.size	activateTex, .-activateTex
	.align 2
	.globl resizeMan
	.type	resizeMan, @function
resizeMan:
.LFB103:
	.loc 1 1280 0
.LVL457:
	mflr 0
.LCFI90:
	stwu 1,-24(1)
.LCFI91:
	stmw 29,12(1)
.LCFI92:
	mr 31,3
	stw 0,28(1)
.LCFI93:
	.loc 1 1280 0
	mr 30,4
	.loc 1 1293 0
	lwz 9,12(3)
	lwz 0,8(3)
	cmplw 7,9,0
	ble- 7,.L534
.LVL458:
	.loc 1 1295 0
	li 0,0
	li 11,0
.LVL459:
	stw 0,12(3)
	b .L557
.LVL460:
.L537:
	.loc 1 1298 0
	lwz 9,4(31)
	lbzx 0,9,11
	.loc 1 1296 0
	addi 11,11,1
	.loc 1 1298 0
	cmpwi 7,0,0
	beq- 7,.L557
	.loc 1 1299 0
	lwz 9,12(31)
	addi 9,9,1
	stw 9,12(31)
.L557:
	.loc 1 1296 0
	lwz 0,8(31)
	cmplw 7,11,0
	blt+ 7,.L537
.LVL461:
.L534:
	.loc 1 1304 0
	lwz 0,0(31)
	cmpwi 7,0,0
	beq- 7,.L540
.LVL462:
	lwz 0,4(31)
	cmpwi 7,0,0
	bne+ 7,.L542
.L540:
	.loc 1 1306 0
	li 0,0
	.loc 1 1307 0
	stw 0,12(31)
	.loc 1 1306 0
	stw 0,8(31)
.L542:
	.loc 1 1311 0
	lwz 0,8(31)
	li 3,1
	cmplw 7,30,0
	blt- 7,.L545
	.loc 1 1316 0
	lwz 3,0(31)
	mulli 4,30,76
	bl realloc
.LVL463:
	.loc 1 1317 0
	mr. 29,3
	bne+ 0,.L546
	.loc 1 1319 0
	lis 4,.LC14@ha
	li 3,1285
	la 4,.LC14@l(4)
	li 5,1319
	b .L556
.L546:
	.loc 1 1323 0
	lwz 3,4(31)
	mr 4,30
	bl realloc
	.loc 1 1325 0
	cmpwi 0,3,0
.LVL464:
	bne+ 0,.L548
	.loc 1 1329 0
	lis 4,.LC14@ha
	.loc 1 1327 0
	stw 29,0(31)
	.loc 1 1329 0
	la 4,.LC14@l(4)
	li 3,1285
.LVL465:
	li 5,1329
.L556:
	bl _glSetErrorEx
	li 3,0
	b .L545
.LVL466:
.L548:
	.loc 1 1334 0
	lwz 0,8(31)
.LVL467:
	cmplw 7,0,30
	subf 9,0,30
	addi 9,9,1
	mtctr 9
	add 9,3,0
	bgt- 7,.L554
	cmpwi 7,30,0
	bne+ 7,.L550
.L554:
	li 0,1
.LVL468:
	mtctr 0
	b .L550
.LVL469:
.L551:
	.loc 1 1336 0
	li 0,0
.LVL470:
	stb 0,-1(9)
.LVL471:
.L550:
	.loc 1 1334 0
	addi 9,9,1
	bdnz .L551
	.loc 1 1339 0
	stw 30,8(31)
	.loc 1 1340 0
	stw 29,0(31)
	.loc 1 1341 0
	stw 3,4(31)
	li 3,1
.LVL472:
.L545:
	.loc 1 1344 0
	lwz 0,28(1)
.LVL473:
	lmw 29,12(1)
.LVL474:
	addi 1,1,24
	mtlr 0
	blr
.LFE103:
	.size	resizeMan, .-resizeMan
	.align 2
	.globl getNextTexID
	.type	getNextTexID, @function
getNextTexID:
.LFB109:
	.loc 1 1428 0
.LVL475:
	mflr 0
.LCFI94:
	stwu 1,-16(1)
.LCFI95:
	stmw 30,8(1)
.LCFI96:
	.loc 1 1430 0
	li 30,0
.LVL476:
	.loc 1 1428 0
	stw 0,20(1)
.LCFI97:
	.loc 1 1430 0
	lwz 9,8(3)
	addi 9,9,1
	mtctr 9
	b .L559
.L560:
	.loc 1 1432 0
	lwz 9,4(3)
	lbzx 0,9,30
	.loc 1 1430 0
	mr 30,4
	.loc 1 1432 0
	cmpwi 7,0,0
	bne+ 7,.L559
	.loc 1 1434 0
	mr 31,4
	bl activateTex
.LVL477:
	b .L563
.LVL478:
.L559:
	addi 4,30,1
	.loc 1 1430 0
	bdnz .L560
	.loc 1 1441 0
	slwi 4,30,1
	li 31,0
	bl resizeMan
.LVL479:
	cmpwi 7,3,0
	beq- 7,.L563
	.loc 1 1443 0
	addi 31,30,1
.L563:
	.loc 1 1449 0
	lwz 0,20(1)
	mr 3,31
	lmw 30,8(1)
.LVL480:
	addi 1,1,16
	mtlr 0
	blr
.LFE109:
	.size	getNextTexID, .-getNextTexID
	.align 2
	.globl glGenTextures
	.type	glGenTextures, @function
glGenTextures:
.LFB110:
	.loc 1 1452 0
.LVL481:
	mflr 0
.LCFI98:
	stwu 1,-24(1)
.LCFI99:
	.loc 1 1453 0
	lis 9,cur_state@ha
	.loc 1 1452 0
	stmw 28,8(1)
.LCFI100:
	mr 28,3
	stw 0,28(1)
.LCFI101:
	.loc 1 1452 0
	mr 30,4
	.loc 1 1453 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq+ 0,.L569
.LVL482:
	lis 4,.LC14@ha
	li 3,1282
	la 4,.LC14@l(4)
	li 5,1453
	b .L577
.LVL483:
.L569:
	.loc 1 1455 0
	cmpwi 7,3,0
	bge+ 7,.L572
.LVL484:
	.loc 1 1457 0
	lis 4,.LC14@ha
	li 3,1281
.LVL485:
	la 4,.LC14@l(4)
	li 5,1457
.L577:
	bl _glSetErrorEx
	b .L576
.LVL486:
.L572:
	.loc 1 1462 0
	lis 29,texMan@ha
	li 31,0
.LVL487:
	la 29,texMan@l(29)
	lwz 4,12(29)
	mr 3,29
.LVL488:
	add 4,28,4
	bl resizeMan
	b .L574
.L575:
.LBB46:
	.loc 1 1466 0
	bl getNextTexID
	.loc 1 1467 0
	stw 3,0(30)
	addi 30,30,4
.L574:
.LBE46:
	.loc 1 1464 0
	cmpw 7,31,28
.LBB47:
	.loc 1 1466 0
	mr 3,29
.LBE47:
	.loc 1 1464 0
	addi 31,31,1
	bne+ 7,.L575
.L576:
	.loc 1 1470 0
	lwz 0,28(1)
	lmw 28,8(1)
.LVL489:
	addi 1,1,24
	mtlr 0
	blr
.LFE110:
	.size	glGenTextures, .-glGenTextures
	.align 2
	.globl initTextures
	.type	initTextures, @function
initTextures:
.LFB102:
	.loc 1 1222 0
	stwu 1,-128(1)
.LCFI102:
	mflr 0
.LCFI103:
	.loc 1 1225 0
	li 5,16
	.loc 1 1223 0
	lis 9,cur_tex@ha
	.loc 1 1222 0
	stmw 25,92(1)
.LCFI104:
	.loc 1 1225 0
	addi 29,1,8
	.loc 1 1222 0
	stw 0,132(1)
.LCFI105:
	.loc 1 1225 0
	li 4,0
	.loc 1 1223 0
	li 0,0
	.loc 1 1225 0
	mr 3,29
	.loc 1 1222 0
	stfd 31,120(1)
.LCFI106:
	.loc 1 1265 0
	li 28,0
	.loc 1 1223 0
	stw 0,cur_tex@l(9)
	.loc 1 1225 0
	bl memset
	lis 9,texMan@ha
	.loc 1 1226 0
	li 4,4000
	.loc 1 1225 0
	la 9,texMan@l(9)
	.loc 1 1265 0
	ori 28,28,34168
	.loc 1 1225 0
	lswi 5,29,16
	stswi 5,9,16
	.loc 1 1226 0
	mr 3,9
	.loc 1 1232 0
	addi 29,1,60
	li 30,0
.LVL490:
	.loc 1 1226 0
	bl resizeMan
	.loc 1 1231 0
	lis 11,.LANCHOR1@ha
	la 11,.LANCHOR1@l(11)
	addi 3,1,40
	lswi 5,11,20
	stswi 5,3,20
	.loc 1 1232 0
	addi 4,11,20
	.loc 1 1231 0
	lis 11,pack@ha
	.loc 1 1232 0
	lswi 5,4,20
	stswi 5,29,20
	.loc 1 1231 0
	la 11,pack@l(11)
	.loc 1 1242 0
	li 26,0
	.loc 1 1231 0
	lswi 5,3,20
	stswi 5,11,20
	.loc 1 1232 0
	lis 11,unpack@ha
	la 11,unpack@l(11)
	.loc 1 1250 0
	addi 27,1,24
	.loc 1 1232 0
	lswi 5,29,20
	stswi 5,11,20
	lis 9,glTexEnvs@ha
	la 31,glTexEnvs@l(9)
	.loc 1 1243 0
	lis 9,.LC6@ha
	lfs 31,.LC6@l(9)
	.loc 1 1254 0
	mr 25,31
.L579:
	.loc 1 1236 0
	li 11,0
	.loc 1 1239 0
	li 9,1
	.loc 1 1249 0
	li 29,8448
	.loc 1 1238 0
	li 0,4
	.loc 1 1241 0
	stb 9,4(31)
	.loc 1 1250 0
	li 5,16
	.loc 1 1247 0
	stb 11,22(31)
	.loc 1 1250 0
	mr 3,27
	.loc 1 1236 0
	stb 11,0(31)
	.loc 1 1250 0
	li 4,0
	.loc 1 1239 0
	stb 9,2(31)
	.loc 1 1240 0
	stb 9,3(31)
	.loc 1 1245 0
	stb 11,20(31)
	.loc 1 1246 0
	stb 11,21(31)
	.loc 1 1238 0
	stb 0,1(31)
	.loc 1 1242 0
	stw 26,8(31)
	.loc 1 1243 0
	stfs 31,12(31)
	.loc 1 1244 0
	stw 26,16(31)
	.loc 1 1249 0
	stw 29,24(31)
	.loc 1 1250 0
	bl memset
	.loc 1 1254 0
	mulli 11,30,108
	.loc 1 1250 0
	addi 9,31,88
	lswi 5,27,16
	stswi 5,9,16
	.loc 1 1254 0
	addi 11,11,48
	stw 29,32(31)
	add 11,11,25
	.loc 1 1253 0
	stw 29,28(31)
	.loc 1 1254 0
	li 9,0
.LVL491:
.L580:
	.loc 1 1258 0
	cmpwi 7,9,0
	.loc 1 1260 0
	li 0,5890
	.loc 1 1258 0
	bne- 7,.L581
	.loc 1 1261 0
	stw 0,60(31)
	.loc 1 1260 0
	stw 0,36(31)
	b .L583
.L581:
	.loc 1 1265 0
	stw 28,-12(11)
	.loc 1 1266 0
	stw 28,12(11)
.L583:
	.loc 1 1256 0
	cmpwi 7,9,2
	.loc 1 1268 0
	li 0,768
	stw 0,0(11)
	.loc 1 1269 0
	li 0,770
	stw 0,24(11)
	.loc 1 1256 0
	addi 9,9,1
	addi 11,11,4
	bne+ 7,.L580
	.loc 1 1234 0
	cmpwi 7,30,7
	.loc 1 1274 0
	li 9,0
.LVL492:
	.loc 1 1272 0
	li 0,-1
	.loc 1 1275 0
	stb 9,105(31)
	.loc 1 1272 0
	stw 0,84(31)
	.loc 1 1234 0
	addi 30,30,1
	.loc 1 1274 0
	stb 9,104(31)
	.loc 1 1234 0
	addi 31,31,108
	bne+ 7,.L579
	.loc 1 1277 0
	lwz 0,132(1)
	lmw 25,92(1)
.LVL493:
	lfd 31,120(1)
	mtlr 0
	addi 1,1,128
	blr
.LFE102:
	.size	initTextures, .-initTextures
	.align 2
	.globl glSetScale
	.type	glSetScale, @function
glSetScale:
.LFB94:
	.loc 1 997 0
.LVL494:
	fmr 0,1
	stwu 1,-32(1)
.LCFI107:
	mflr 0
.LCFI108:
	stfd 31,24(1)
.LCFI109:
	.loc 1 998 0
	fmr 31,0
	.loc 1 997 0
	stw 31,20(1)
.LCFI110:
	stw 0,36(1)
.LCFI111:
	.loc 1 997 0
	mr 31,3
	.loc 1 998 0
	bl floor
.LVL495:
	fcmpu 7,31,1
	beq+ 7,.L592
	.loc 1 1000 0
	lis 4,.LC14@ha
	li 3,1281
	la 4,.LC14@l(4)
	li 5,1000
	b .L602
.L592:
	.loc 1 1003 0
	fctiwz 0,31
	addi 9,1,8
	stfiwx 0,0,9
	lwz 0,8(1)
	cmpwi 7,0,2
	beq- 7,.L598
	cmpwi 7,0,4
	beq- 7,.L599
	cmpwi 7,0,1
	bne+ 7,.L596
	.loc 1 1005 0
	li 0,0
	b .L601
.L598:
	.loc 1 1006 0
	li 0,1
	b .L601
.L599:
	.loc 1 1007 0
	li 0,2
.L601:
	stb 0,0(31)
	b .L600
.L596:
	.loc 1 1009 0
	lis 4,.LC14@ha
	li 3,1281
	la 4,.LC14@l(4)
	li 5,1009
.L602:
	bl _glSetErrorEx
.L600:
	.loc 1 1011 0
	lwz 0,36(1)
	lwz 31,20(1)
.LVL496:
	lfd 31,24(1)
	mtlr 0
	addi 1,1,32
	blr
.LFE94:
	.size	glSetScale, .-glSetScale
	.align 2
	.globl _glTexEnvi
	.type	_glTexEnvi, @function
_glTexEnvi:
.LFB96:
	.loc 1 1041 0
.LVL497:
	mflr 0
.LCFI112:
	stwu 1,-16(1)
.LCFI113:
	mr 11,4
	stw 0,20(1)
.LCFI114:
	.loc 1 1042 0
	li 0,0
	ori 0,0,34184
	cmpw 7,3,0
	beq- 7,.L613
.LVL498:
	cmplwi 7,3,34184
	bgt- 7,.L622
	xoris 0,3,0xffff
	cmpwi 7,0,-31374
	beq 7,.L608
	cmplwi 7,3,34162
	bgt- 7,.L623
	cmpwi 7,3,8704
	beq- 7,.L606
	xoris 0,3,0xffff
	cmpwi 7,0,-31375
	beq 7,.L607
	cmpwi 7,3,3356
	bne+ 7,.L604
	b .L605
.L623:
	xoris 0,3,0xffff
	cmpwi 7,0,-31360
	beq 7,.L610
	cmplwi 7,3,34176
	bgt- 7,.L624
	xoris 0,3,0xffff
	cmpwi 7,0,-31373
	bne 7,.L604
	b .L609
.L624:
	xoris 0,3,0xffff
	cmpwi 7,0,-31359
	beq 7,.L611
	xoris 0,3,0xffff
	cmpwi 7,0,-31358
	bne 7,.L604
	b .L612
.L622:
	xoris 0,3,0xffff
	cmpwi 7,0,-31343
	beq 7,.L617
	cmplwi 7,3,34193
	bgt- 7,.L625
	xoris 0,3,0xffff
	cmpwi 7,0,-31350
	beq 7,.L615
	cmplwi 7,3,34186
	blt- 7,.L614
	xoris 0,3,0xffff
	cmpwi 7,0,-31344
	bne 7,.L604
	b .L616
.L625:
	xoris 0,3,0xffff
	cmpwi 7,0,-31336
	beq 7,.L619
	cmplwi 7,3,34200
	bgt- 7,.L626
	xoris 0,3,0xffff
	cmpwi 7,0,-31342
	bne 7,.L604
	b .L618
.L626:
	xoris 0,3,0xffff
	cmpwi 7,0,-31335
	beq 7,.L620
	xoris 0,3,0xffff
	cmpwi 7,0,-31334
	bne 7,.L604
	b .L621
.L606:
	.loc 1 1044 0
	lis 9,cur_tex@ha
	.loc 1 1065 0
	lwz 0,20(1)
	.loc 1 1044 0
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1065 0
	mtlr 0
	.loc 1 1044 0
	mulli 4,4,108
	mr 3,11
.LVL499:
	.loc 1 1065 0
	addi 1,1,16
	.loc 1 1044 0
	add 4,4,9
	addi 4,4,24
	b glSetTexEnvMode
.LVL500:
.L607:
	.loc 1 1045 0
	lis 9,cur_tex@ha
	.loc 1 1065 0
	lwz 0,20(1)
	.loc 1 1045 0
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1065 0
	mtlr 0
	.loc 1 1045 0
	mulli 4,4,108
	mr 3,11
.LVL501:
	.loc 1 1065 0
	addi 1,1,16
	.loc 1 1045 0
	add 4,4,9
	addi 4,4,28
	b glSetComRGB
.LVL502:
.L608:
	.loc 1 1046 0
	lis 9,cur_tex@ha
	.loc 1 1065 0
	lwz 0,20(1)
	.loc 1 1046 0
	lwz 9,cur_tex@l(9)
	lis 4,glTexEnvs@ha
	la 4,glTexEnvs@l(4)
	.loc 1 1065 0
	mtlr 0
	.loc 1 1046 0
	mulli 9,9,108
	mr 3,11
.LVL503:
	.loc 1 1065 0
	addi 1,1,16
	.loc 1 1046 0
	addi 9,9,32
	add 4,9,4
	b glSetComAlpha
.LVL504:
.L610:
	.loc 1 1047 0
	lis 9,cur_tex@ha
	mr 3,11
.LVL505:
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,36
	b .L629
.LVL506:
.L611:
	.loc 1 1048 0
	lis 9,cur_tex@ha
	mr 3,11
.LVL507:
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,40
.LVL508:
.L629:
	.loc 1 1065 0
	lwz 0,20(1)
	addi 1,1,16
	mtlr 0
	.loc 1 1048 0
	b glSetSrc
.LVL509:
.L612:
	.loc 1 1049 0
	lis 9,cur_tex@ha
	mr 3,11
.LVL510:
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,44
	b .L629
.LVL511:
.L613:
	.loc 1 1050 0
	lis 9,cur_tex@ha
	mr 3,11
.LVL512:
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,60
	b .L629
.LVL513:
.L614:
	.loc 1 1051 0
	lis 9,cur_tex@ha
	mr 3,11
.LVL514:
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,64
	b .L629
.LVL515:
.L615:
	.loc 1 1052 0
	lis 9,cur_tex@ha
	mr 3,11
.LVL516:
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,68
	b .L629
.LVL517:
.L616:
	.loc 1 1053 0
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,48
	b .L632
.L617:
	.loc 1 1054 0
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,52
	b .L632
.L618:
	.loc 1 1055 0
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,56
.L632:
	.loc 1 1065 0
	lwz 0,20(1)
	.loc 1 1055 0
	lis 4,glTexEnvs@ha
	la 4,glTexEnvs@l(4)
	mr 3,11
.LVL518:
	.loc 1 1065 0
	mtlr 0
	.loc 1 1055 0
	add 4,9,4
	.loc 1 1065 0
	addi 1,1,16
	.loc 1 1055 0
	b glSetRGBOp
.LVL519:
.L619:
	.loc 1 1056 0
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,48
	b .L631
.L620:
	.loc 1 1057 0
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,52
	b .L631
.L621:
	.loc 1 1058 0
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,56
.L631:
	.loc 1 1065 0
	lwz 0,20(1)
	.loc 1 1058 0
	lis 4,glTexEnvs@ha
	la 4,glTexEnvs@l(4)
	mr 3,11
.LVL520:
	.loc 1 1065 0
	mtlr 0
	.loc 1 1058 0
	add 4,9,4
	.loc 1 1065 0
	addi 1,1,16
	.loc 1 1058 0
	b glSetAlphaOp
.LVL521:
.L609:
	.loc 1 1059 0
	xoris 0,4,0x8000
	lis 9,.LC10@ha
	stw 0,12(1)
	lis 0,0x4330
	stw 0,8(1)
	lfs 0,.LC10@l(9)
	lis 9,cur_tex@ha
	lfd 1,8(1)
	lwz 3,cur_tex@l(9)
.LVL522:
	lis 9,glTexEnvs@ha
	fsub 1,1,0
	la 9,glTexEnvs@l(9)
	mulli 3,3,108
	frsp 1,1
	add 3,3,9
	addi 3,3,104
	b .L630
.LVL523:
.L605:
	.loc 1 1060 0
	xoris 0,4,0x8000
	lis 9,.LC10@ha
	stw 0,12(1)
	lis 0,0x4330
	stw 0,8(1)
	lfs 0,.LC10@l(9)
	lis 9,cur_tex@ha
	lfd 1,8(1)
	lwz 3,cur_tex@l(9)
.LVL524:
	lis 9,glTexEnvs@ha
	fsub 1,1,0
	la 9,glTexEnvs@l(9)
	mulli 3,3,108
	frsp 1,1
	add 3,3,9
	addi 3,3,105
.LVL525:
.L630:
	.loc 1 1065 0
	lwz 0,20(1)
	addi 1,1,16
	mtlr 0
	.loc 1 1060 0
	b glSetScale
.LVL526:
.L604:
	.loc 1 1062 0
	lis 4,.LC14@ha
	li 3,1280
.LVL527:
	la 4,.LC14@l(4)
	li 5,1062
	bl _glSetErrorEx
.LVL528:
	.loc 1 1065 0
	lwz 0,20(1)
	addi 1,1,16
	mtlr 0
	blr
.LFE96:
	.size	_glTexEnvi, .-_glTexEnvi
	.align 2
	.globl glTexEnvi
	.type	glTexEnvi, @function
glTexEnvi:
.LFB101:
	.loc 1 1193 0
.LVL529:
	mflr 0
.LCFI115:
	stwu 1,-16(1)
.LCFI116:
	.loc 1 1194 0
	lis 9,cur_state@ha
	.loc 1 1193 0
	stw 0,20(1)
.LCFI117:
	.loc 1 1194 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq+ 0,.L634
	lis 4,.LC14@ha
.LVL530:
	li 3,1282
.LVL531:
	la 4,.LC14@l(4)
	li 5,1194
.LVL532:
	b .L644
.LVL533:
.L634:
	.loc 1 1196 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31488
	bne 7,.L637
	.loc 1 1197 0
	xoris 0,4,0xffff
	cmpwi 7,0,-31487
	bne 7,.L639
	.loc 1 1199 0
	xoris 0,5,0x8000
	lis 9,.LC10@ha
	stw 0,12(1)
	lis 0,0x4330
	stw 0,8(1)
	lfs 0,.LC10@l(9)
	lis 9,cur_tex@ha
	lfd 13,8(1)
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	fsub 13,13,0
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	frsp 13,13
	add 11,11,9
	stfs 13,16(11)
	b .L643
.L639:
	.loc 1 1204 0
	lis 4,.LC14@ha
.LVL534:
	li 3,1280
.LVL535:
	la 4,.LC14@l(4)
	li 5,1204
.LVL536:
	b .L644
.LVL537:
.L637:
	.loc 1 1208 0
	cmpwi 7,3,8960
	bne+ 7,.L641
	.loc 1 1216 0
	lwz 0,20(1)
	.loc 1 1210 0
	mr 3,4
.LVL538:
	.loc 1 1216 0
	addi 1,1,16
	.loc 1 1210 0
	mr 4,5
.LVL539:
	.loc 1 1216 0
	mtlr 0
	.loc 1 1210 0
	b _glTexEnvi
.LVL540:
.L641:
	.loc 1 1213 0
	lis 4,.LC14@ha
.LVL541:
	li 3,1280
.LVL542:
	la 4,.LC14@l(4)
	li 5,1213
.LVL543:
.L644:
	bl _glSetErrorEx
.LVL544:
.L643:
	.loc 1 1216 0
	lwz 0,20(1)
	addi 1,1,16
	mtlr 0
	blr
.LFE101:
	.size	glTexEnvi, .-glTexEnvi
	.align 2
	.globl glTexEnvf
	.type	glTexEnvf, @function
glTexEnvf:
.LFB100:
	.loc 1 1168 0
.LVL545:
	mflr 0
.LCFI118:
	stwu 1,-16(1)
.LCFI119:
	.loc 1 1169 0
	lis 9,cur_state@ha
	.loc 1 1168 0
	stw 0,20(1)
.LCFI120:
	.loc 1 1169 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq+ 0,.L646
	lis 4,.LC14@ha
.LVL546:
	li 3,1282
.LVL547:
	la 4,.LC14@l(4)
	li 5,1169
	b .L656
.LVL548:
.L646:
	.loc 1 1171 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31488
	bne 7,.L649
	.loc 1 1172 0
	xoris 0,4,0xffff
	cmpwi 7,0,-31487
	bne 7,.L651
	.loc 1 1174 0
	lis 9,cur_tex@ha
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	add 11,11,9
	stfs 1,16(11)
	b .L655
.L651:
	.loc 1 1179 0
	lis 4,.LC14@ha
.LVL549:
	li 3,1280
.LVL550:
	la 4,.LC14@l(4)
	li 5,1179
	b .L656
.LVL551:
.L649:
	.loc 1 1183 0
	cmpwi 7,3,8960
	bne+ 7,.L653
	.loc 1 1185 0
	fmr 0,1
	addi 9,1,8
	mr 3,4
.LVL552:
	fctiwz 0,0
	stfiwx 0,0,9
	.loc 1 1190 0
	lwz 0,20(1)
	.loc 1 1185 0
	lwz 4,8(1)
.LVL553:
	.loc 1 1190 0
	addi 1,1,16
	mtlr 0
	.loc 1 1185 0
	b _glTexEnvi
.LVL554:
.L653:
	.loc 1 1187 0
	lis 4,.LC14@ha
.LVL555:
	li 3,1280
.LVL556:
	la 4,.LC14@l(4)
	li 5,1187
.L656:
	bl _glSetErrorEx
.LVL557:
.LVL558:
.L655:
	.loc 1 1190 0
	lwz 0,20(1)
	addi 1,1,16
	mtlr 0
	blr
.LFE100:
	.size	glTexEnvf, .-glTexEnvf
	.align 2
	.globl glTexEnviv
	.type	glTexEnviv, @function
glTexEnviv:
.LFB99:
	.loc 1 1124 0
.LVL559:
	mflr 0
.LCFI121:
	stwu 1,-32(1)
.LCFI122:
	.loc 1 1125 0
	lis 9,cur_state@ha
	.loc 1 1124 0
	stmw 29,20(1)
.LCFI123:
	mr 31,5
	stw 0,36(1)
.LCFI124:
	.loc 1 1125 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq+ 0,.L658
.LVL560:
	lis 4,.LC14@ha
.LVL561:
	li 3,1282
.LVL562:
	la 4,.LC14@l(4)
	li 5,1125
	b .L672
.LVL563:
.L658:
	.loc 1 1127 0
	cmpwi 7,5,0
	bne+ 7,.L661
.LVL564:
	.loc 1 1129 0
	lis 4,.LC14@ha
.LVL565:
	li 3,1281
.LVL566:
	la 4,.LC14@l(4)
	li 5,1129
.LVL567:
	b .L672
.LVL568:
.L661:
	.loc 1 1133 0
	cmpwi 7,3,8960
	bne+ 7,.L663
	.loc 1 1135 0
	cmpwi 7,4,8705
	lwz 0,0(5)
	bne+ 7,.L665
	.loc 1 1137 0
	lis 9,cur_tex@ha
	mr 3,0
.LVL569:
	lwz 29,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 29,29,108
	add 29,29,9
	bl scale_s32
.LVL570:
	stfs 1,88(29)
	.loc 1 1138 0
	lwz 3,4(31)
	bl scale_s32
	stfs 1,92(29)
	.loc 1 1139 0
	lwz 3,8(31)
	bl scale_s32
	stfs 1,96(29)
	.loc 1 1140 0
	lwz 3,12(31)
	bl scale_s32
	stfs 1,100(29)
	b .L671
.LVL571:
.L665:
	.loc 1 1144 0
	xoris 0,0,0x8000
	lis 9,.LC10@ha
	stw 0,12(1)
	lis 0,0x4330
	stw 0,8(1)
	lfs 0,.LC10@l(9)
	lfd 1,8(1)
	.loc 1 1165 0
	lwz 0,36(1)
	.loc 1 1144 0
	fsub 1,1,0
	.loc 1 1165 0
	lmw 29,20(1)
	mtlr 0
	addi 1,1,32
	.loc 1 1144 0
	frsp 1,1
	b glTexEnvf
.LVL572:
.L663:
	.loc 1 1147 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31488
	bne 7,.L667
	.loc 1 1149 0
	xoris 0,4,0xffff
	cmpwi 7,0,-31487
	bne 7,.L669
	.loc 1 1151 0
	lwz 0,0(5)
	lis 9,.LC10@ha
	lfs 0,.LC10@l(9)
	lis 9,cur_tex@ha
	xoris 0,0,0x8000
	stw 0,12(1)
	lis 0,0x4330
	stw 0,8(1)
	lfd 13,8(1)
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	fsub 13,13,0
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	frsp 13,13
	add 11,11,9
	stfs 13,16(11)
	b .L671
.L669:
	.loc 1 1156 0
	lis 4,.LC14@ha
.LVL573:
	li 3,1280
.LVL574:
	la 4,.LC14@l(4)
	li 5,1156
.LVL575:
	b .L672
.LVL576:
.L667:
	.loc 1 1162 0
	lis 4,.LC14@ha
.LVL577:
	li 3,1280
.LVL578:
	la 4,.LC14@l(4)
	li 5,1162
.LVL579:
.L672:
	bl _glSetErrorEx
.LVL580:
.L671:
	.loc 1 1165 0
	lwz 0,36(1)
	lmw 29,20(1)
.LVL581:
	addi 1,1,32
	mtlr 0
	blr
.LFE99:
	.size	glTexEnviv, .-glTexEnviv
	.align 2
	.globl glTexEnvfv
	.type	glTexEnvfv, @function
glTexEnvfv:
.LFB97:
	.loc 1 1068 0
.LVL582:
	mflr 0
.LCFI125:
	stwu 1,-8(1)
.LCFI126:
	.loc 1 1069 0
	lis 9,cur_state@ha
	.loc 1 1068 0
	stw 0,12(1)
.LCFI127:
	.loc 1 1069 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq+ 0,.L674
	lis 4,.LC14@ha
.LVL583:
	li 3,1282
.LVL584:
	la 4,.LC14@l(4)
	li 5,1069
.LVL585:
	b .L688
.LVL586:
.L674:
	.loc 1 1071 0
	cmpwi 7,5,0
	bne+ 7,.L677
	.loc 1 1073 0
	lis 4,.LC14@ha
.LVL587:
	li 3,1281
.LVL588:
	la 4,.LC14@l(4)
	li 5,1073
.LVL589:
	b .L688
.LVL590:
.L677:
	.loc 1 1077 0
	cmpwi 7,3,8960
	bne+ 7,.L679
	.loc 1 1079 0
	cmpwi 7,4,8705
	lfs 1,0(5)
	bne- 7,.L681
	.loc 1 1081 0
	lis 9,cur_tex@ha
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	add 11,11,9
	stfs 1,88(11)
	.loc 1 1082 0
	lfs 0,4(5)
	stfs 0,92(11)
	.loc 1 1083 0
	lfs 0,8(5)
	stfs 0,96(11)
	.loc 1 1084 0
	lfs 0,12(5)
	stfs 0,100(11)
	b .L687
.L681:
	.loc 1 1109 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	.loc 1 1088 0
	b glTexEnvf
.LVL591:
.L679:
	.loc 1 1091 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31488
	bne 7,.L683
	.loc 1 1093 0
	xoris 0,4,0xffff
	cmpwi 7,0,-31487
	bne 7,.L685
	.loc 1 1095 0
	lis 9,cur_tex@ha
	lfs 0,0(5)
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	add 11,11,9
	stfs 0,16(11)
	b .L687
.L685:
	.loc 1 1100 0
	lis 4,.LC14@ha
.LVL592:
	li 3,1280
.LVL593:
	la 4,.LC14@l(4)
	li 5,1100
.LVL594:
	b .L688
.LVL595:
.L683:
	.loc 1 1106 0
	lis 4,.LC14@ha
.LVL596:
	li 3,1280
.LVL597:
	la 4,.LC14@l(4)
	li 5,1106
.LVL598:
.L688:
	bl _glSetErrorEx
.LVL599:
.L687:
	.loc 1 1109 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE97:
	.size	glTexEnvfv, .-glTexEnvfv
	.align 2
	.globl _glTexEnvf
	.type	_glTexEnvf, @function
_glTexEnvf:
.LFB95:
	.loc 1 1014 0
.LVL600:
	mflr 0
.LCFI128:
	stwu 1,-16(1)
.LCFI129:
	fmr 0,1
	stw 0,20(1)
.LCFI130:
	.loc 1 1015 0
	li 0,0
	ori 0,0,34184
	cmpw 7,3,0
	beq- 7,.L699
.LVL601:
	cmplwi 7,3,34184
	bgt- 7,.L708
	xoris 0,3,0xffff
	cmpwi 7,0,-31374
	beq 7,.L694
	cmplwi 7,3,34162
	bgt- 7,.L709
	cmpwi 7,3,8704
	beq- 7,.L692
	xoris 0,3,0xffff
	cmpwi 7,0,-31375
	beq 7,.L693
	cmpwi 7,3,3356
	bne+ 7,.L690
	b .L691
.L709:
	xoris 0,3,0xffff
	cmpwi 7,0,-31360
	beq 7,.L696
	cmplwi 7,3,34176
	bgt- 7,.L710
	xoris 0,3,0xffff
	cmpwi 7,0,-31373
	bne 7,.L690
	b .L695
.L710:
	xoris 0,3,0xffff
	cmpwi 7,0,-31359
	beq 7,.L697
	xoris 0,3,0xffff
	cmpwi 7,0,-31358
	bne 7,.L690
	b .L698
.L708:
	xoris 0,3,0xffff
	cmpwi 7,0,-31343
	beq 7,.L703
	cmplwi 7,3,34193
	bgt- 7,.L711
	xoris 0,3,0xffff
	cmpwi 7,0,-31350
	beq 7,.L701
	cmplwi 7,3,34186
	blt- 7,.L700
	xoris 0,3,0xffff
	cmpwi 7,0,-31344
	bne 7,.L690
	b .L702
.L711:
	xoris 0,3,0xffff
	cmpwi 7,0,-31336
	beq 7,.L705
	cmplwi 7,3,34200
	bgt- 7,.L712
	xoris 0,3,0xffff
	cmpwi 7,0,-31342
	bne 7,.L690
	b .L704
.L712:
	xoris 0,3,0xffff
	cmpwi 7,0,-31335
	beq 7,.L706
	xoris 0,3,0xffff
	cmpwi 7,0,-31334
	bne 7,.L690
	b .L707
.L692:
	.loc 1 1017 0
	lis 9,.LC19@ha
	lfs 1,.LC19@l(9)
	fcmpu 7,0,1
.LVL602:
	cror 30,29,30
	beq- 7,.L713
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL603:
	b .L714
.LVL604:
.L713:
	fsub 0,0,1
	addi 9,1,12
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,12(1)
.LVL605:
	addis 3,3,0x8000
.L714:
	lis 9,cur_tex@ha
	.loc 1 1038 0
	lwz 0,20(1)
	.loc 1 1017 0
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1038 0
	mtlr 0
	.loc 1 1017 0
	mulli 4,4,108
	.loc 1 1038 0
	addi 1,1,16
	.loc 1 1017 0
	add 4,4,9
	addi 4,4,24
	b glSetTexEnvMode
.LVL606:
.L693:
	.loc 1 1018 0
	lis 9,.LC19@ha
	lfs 1,.LC19@l(9)
	fcmpu 7,0,1
.LVL607:
	cror 30,29,30
	beq- 7,.L715
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL608:
	b .L716
.LVL609:
.L715:
	fsub 0,0,1
	addi 9,1,12
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,12(1)
.LVL610:
	addis 3,3,0x8000
.L716:
	lis 9,cur_tex@ha
	.loc 1 1038 0
	lwz 0,20(1)
	.loc 1 1018 0
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1038 0
	mtlr 0
	.loc 1 1018 0
	mulli 4,4,108
	.loc 1 1038 0
	addi 1,1,16
	.loc 1 1018 0
	add 4,4,9
	addi 4,4,28
	b glSetComRGB
.LVL611:
.L694:
	.loc 1 1019 0
	lis 9,.LC19@ha
	lfs 1,.LC19@l(9)
	fcmpu 7,0,1
.LVL612:
	cror 30,29,30
	beq- 7,.L717
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL613:
	b .L718
.LVL614:
.L717:
	fsub 0,0,1
	addi 9,1,12
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,12(1)
.LVL615:
	addis 3,3,0x8000
.L718:
	lis 9,cur_tex@ha
	.loc 1 1038 0
	lwz 0,20(1)
	.loc 1 1019 0
	lwz 9,cur_tex@l(9)
	lis 4,glTexEnvs@ha
	la 4,glTexEnvs@l(4)
	.loc 1 1038 0
	mtlr 0
	.loc 1 1019 0
	mulli 9,9,108
	.loc 1 1038 0
	addi 1,1,16
	.loc 1 1019 0
	addi 9,9,32
	add 4,9,4
	b glSetComAlpha
.LVL616:
.L696:
	.loc 1 1020 0
	lis 9,.LC19@ha
	lfs 1,.LC19@l(9)
	fcmpu 7,0,1
.LVL617:
	cror 30,29,30
	beq- 7,.L719
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL618:
	b .L720
.LVL619:
.L719:
	fsub 0,0,1
	addi 9,1,12
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,12(1)
.LVL620:
	addis 3,3,0x8000
.L720:
	lis 9,cur_tex@ha
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,36
	b .L745
.LVL621:
.L697:
	.loc 1 1021 0
	lis 9,.LC19@ha
	lfs 1,.LC19@l(9)
	fcmpu 7,0,1
.LVL622:
	cror 30,29,30
	beq- 7,.L721
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL623:
	b .L722
.LVL624:
.L721:
	fsub 0,0,1
	addi 9,1,12
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,12(1)
.LVL625:
	addis 3,3,0x8000
.L722:
	lis 9,cur_tex@ha
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,40
.L745:
	.loc 1 1038 0
	lwz 0,20(1)
	addi 1,1,16
	mtlr 0
	.loc 1 1021 0
	b glSetSrc
.LVL626:
.L698:
	.loc 1 1022 0
	lis 9,.LC19@ha
	lfs 1,.LC19@l(9)
	fcmpu 7,0,1
.LVL627:
	cror 30,29,30
	beq- 7,.L723
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL628:
	b .L724
.LVL629:
.L723:
	fsub 0,0,1
	addi 9,1,12
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,12(1)
.LVL630:
	addis 3,3,0x8000
.L724:
	lis 9,cur_tex@ha
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,44
	b .L745
.LVL631:
.L699:
	.loc 1 1023 0
	lis 9,.LC19@ha
	lfs 1,.LC19@l(9)
	fcmpu 7,0,1
.LVL632:
	cror 30,29,30
	beq- 7,.L725
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL633:
	b .L726
.LVL634:
.L725:
	fsub 0,0,1
	addi 9,1,12
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,12(1)
.LVL635:
	addis 3,3,0x8000
.L726:
	lis 9,cur_tex@ha
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,60
	b .L745
.LVL636:
.L700:
	.loc 1 1024 0
	lis 9,.LC19@ha
	lfs 1,.LC19@l(9)
	fcmpu 7,0,1
.LVL637:
	cror 30,29,30
	beq- 7,.L727
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL638:
	b .L728
.LVL639:
.L727:
	fsub 0,0,1
	addi 9,1,12
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,12(1)
.LVL640:
	addis 3,3,0x8000
.L728:
	lis 9,cur_tex@ha
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,64
	b .L745
.LVL641:
.L701:
	.loc 1 1025 0
	lis 9,.LC19@ha
	lfs 1,.LC19@l(9)
	fcmpu 7,0,1
.LVL642:
	cror 30,29,30
	beq- 7,.L729
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL643:
	b .L730
.LVL644:
.L729:
	fsub 0,0,1
	addi 9,1,12
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,12(1)
.LVL645:
	addis 3,3,0x8000
.L730:
	lis 9,cur_tex@ha
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,68
	b .L745
.LVL646:
.L702:
	.loc 1 1026 0
	lis 9,.LC19@ha
	lfs 1,.LC19@l(9)
	fcmpu 7,0,1
.LVL647:
	cror 30,29,30
	beq- 7,.L731
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL648:
	b .L732
.LVL649:
.L731:
	fsub 0,0,1
	addi 9,1,12
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,12(1)
.LVL650:
	addis 3,3,0x8000
.L732:
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,48
	b .L748
.LVL651:
.L703:
	.loc 1 1027 0
	lis 9,.LC19@ha
	lfs 1,.LC19@l(9)
	fcmpu 7,0,1
.LVL652:
	cror 30,29,30
	beq- 7,.L733
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL653:
	b .L734
.LVL654:
.L733:
	fsub 0,0,1
	addi 9,1,12
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,12(1)
.LVL655:
	addis 3,3,0x8000
.L734:
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,52
	b .L748
.LVL656:
.L704:
	.loc 1 1028 0
	lis 9,.LC19@ha
	lfs 1,.LC19@l(9)
	fcmpu 7,0,1
.LVL657:
	cror 30,29,30
	beq- 7,.L735
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL658:
	b .L736
.LVL659:
.L735:
	fsub 0,0,1
	addi 9,1,12
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,12(1)
.LVL660:
	addis 3,3,0x8000
.L736:
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,56
.L748:
	.loc 1 1038 0
	lwz 0,20(1)
	.loc 1 1028 0
	lis 4,glTexEnvs@ha
	la 4,glTexEnvs@l(4)
	.loc 1 1038 0
	addi 1,1,16
	mtlr 0
	.loc 1 1028 0
	add 4,9,4
	b glSetRGBOp
.LVL661:
.L705:
	.loc 1 1029 0
	lis 9,.LC19@ha
	lfs 1,.LC19@l(9)
	fcmpu 7,0,1
.LVL662:
	cror 30,29,30
	beq- 7,.L737
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL663:
	b .L738
.LVL664:
.L737:
	fsub 0,0,1
	addi 9,1,12
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,12(1)
.LVL665:
	addis 3,3,0x8000
.L738:
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,48
	b .L747
.LVL666:
.L706:
	.loc 1 1030 0
	lis 9,.LC19@ha
	lfs 1,.LC19@l(9)
	fcmpu 7,0,1
.LVL667:
	cror 30,29,30
	beq- 7,.L739
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL668:
	b .L740
.LVL669:
.L739:
	fsub 0,0,1
	addi 9,1,12
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,12(1)
.LVL670:
	addis 3,3,0x8000
.L740:
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,52
	b .L747
.LVL671:
.L707:
	.loc 1 1031 0
	lis 9,.LC19@ha
	lfs 1,.LC19@l(9)
	fcmpu 7,0,1
.LVL672:
	cror 30,29,30
	beq- 7,.L741
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL673:
	b .L742
.LVL674:
.L741:
	fsub 0,0,1
	addi 9,1,12
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,12(1)
.LVL675:
	addis 3,3,0x8000
.L742:
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,56
.L747:
	.loc 1 1038 0
	lwz 0,20(1)
	.loc 1 1031 0
	lis 4,glTexEnvs@ha
	la 4,glTexEnvs@l(4)
	.loc 1 1038 0
	addi 1,1,16
	mtlr 0
	.loc 1 1031 0
	add 4,9,4
	b glSetAlphaOp
.LVL676:
.L695:
	.loc 1 1032 0
	lis 9,cur_tex@ha
	lwz 3,cur_tex@l(9)
.LVL677:
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 3,3,108
	add 3,3,9
	addi 3,3,104
	b .L746
.LVL678:
.L691:
	.loc 1 1033 0
	lis 9,cur_tex@ha
	lwz 3,cur_tex@l(9)
.LVL679:
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 3,3,108
	add 3,3,9
	addi 3,3,105
.L746:
	.loc 1 1038 0
	lwz 0,20(1)
	addi 1,1,16
	mtlr 0
	.loc 1 1033 0
	b glSetScale
.LVL680:
.L690:
	.loc 1 1035 0
	lis 4,.LC14@ha
	li 3,1280
.LVL681:
	la 4,.LC14@l(4)
	li 5,1035
	bl _glSetErrorEx
.LVL682:
	.loc 1 1038 0
	lwz 0,20(1)
	addi 1,1,16
	mtlr 0
	blr
.LFE95:
	.size	_glTexEnvf, .-_glTexEnvf
	.align 2
	.globl GX_SetTevCombineStage
	.type	GX_SetTevCombineStage, @function
GX_SetTevCombineStage:
.LFB81:
	.loc 1 418 0
.LVL683:
	stwu 1,-64(1)
.LCFI131:
	mflr 0
.LCFI132:
	stmw 22,24(1)
.LCFI133:
	.loc 1 424 0
	mr. 31,3
	.loc 1 418 0
	stw 0,68(1)
.LCFI134:
	.loc 1 419 0
	li 0,0
	.loc 1 418 0
	mr 22,4
	.loc 1 419 0
	stw 0,0(4)
	.loc 1 424 0
	beq- 0,.L750
.LVL684:
	li 24,0
.LVL685:
	li 23,0
.LVL686:
	b .L752
.LVL687:
.L750:
	li 24,10
.LVL688:
	li 23,5
.LVL689:
.L752:
	.loc 1 454 0
	lis 9,cur_tex@ha
	.loc 1 444 0
	li 0,-1
	.loc 1 454 0
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	add 11,11,9
	.loc 1 446 0
	li 9,15
	.loc 1 454 0
	lwz 10,28(11)
	.loc 1 447 0
	li 11,7
	.loc 1 445 0
	stb 0,19(1)
	.loc 1 454 0
	cmpwi 7,10,8448
	.loc 1 446 0
	stb 9,10(1)
	.loc 1 447 0
	stb 11,13(1)
	.loc 1 444 0
	stb 0,14(1)
	.loc 1 445 0
	stb 0,17(1)
	.loc 1 446 0
	stb 9,8(1)
	.loc 1 447 0
	stb 11,11(1)
	.loc 1 444 0
	stb 0,15(1)
	.loc 1 445 0
	stb 0,18(1)
	.loc 1 446 0
	stb 9,9(1)
	.loc 1 447 0
	stb 11,12(1)
	.loc 1 444 0
	stb 0,16(1)
	.loc 1 454 0
	beq- 7,.L754
	cmplwi 7,10,8448
	bgt- 7,.L757
	cmpwi 7,10,260
	beq- 7,.L754
	cmpwi 7,10,7681
	bne+ 7,.L822
	b .L755
.L757:
	xoris 0,10,0xffff
	cmpwi 7,0,-31372
	beq 7,.L754
	xoris 0,10,0xffff
	cmpwi 7,0,-31371
	beq 7,.L756
	xoris 0,10,0xffff
	cmpwi 7,0,-31513
	bne 7,.L822
.L754:
	li 30,2
.LVL690:
	b .L758
.LVL691:
.L756:
	li 30,3
.LVL692:
	b .L758
.LVL693:
.L755:
	li 30,1
.LVL694:
.L758:
	lis 9,glTexEnvs@ha
	li 29,0
.LVL695:
	la 27,glTexEnvs@l(9)
	lis 28,cur_tex@ha
	.loc 1 470 0
	addi 25,1,8
	addi 26,1,14
	b .L759
.L760:
	lwz 9,cur_tex@l(9)
	add 5,25,29
	add 6,26,29
	mr 7,24
	mulli 9,9,27
	mr 8,23
	add 9,9,29
	.loc 1 468 0
	addi 29,29,1
	.loc 1 470 0
	slwi 9,9,2
	add 9,9,0
	lwz 4,48(9)
.LVL696:
	lwz 3,36(9)
	bl GX_SetTevCIn
.LVL697:
.L759:
	.loc 1 468 0
	cmpw 7,29,30
	mr 0,27
	mr 9,28
	blt+ 7,.L760
.LVL698:
	.loc 1 474 0
	lwz 9,cur_tex@l(28)
	mulli 9,9,108
	add 9,9,27
	lwz 9,32(9)
	cmpwi 7,9,8448
	beq- 7,.L762
	cmplwi 7,9,8448
	bgt- 7,.L765
	cmpwi 7,9,260
	beq- 7,.L762
	cmpwi 7,9,7681
	bne+ 7,.L822
	b .L763
.L765:
	xoris 0,9,0xffff
	cmpwi 7,0,-31372
	beq 7,.L762
	xoris 0,9,0xffff
	cmpwi 7,0,-31371
	beq 7,.L764
	xoris 0,9,0xffff
	cmpwi 7,0,-31513
	bne 7,.L822
.L762:
	li 28,2
.LVL699:
	b .L766
.LVL700:
.L764:
	li 28,3
.LVL701:
	b .L766
.LVL702:
.L763:
	li 28,1
.LVL703:
.L766:
	.loc 1 488 0
	lis 9,glTexEnvs@ha
	.loc 1 474 0
	li 29,0
.LVL704:
	.loc 1 488 0
	la 24,glTexEnvs@l(9)
.LVL705:
	lis 25,cur_tex@ha
	addi 26,1,11
	addi 27,1,17
	b .L767
.L768:
	lwz 9,cur_tex@l(25)
	add 5,26,29
	add 6,27,29
	mr 7,23
	mulli 9,9,27
	add 9,9,29
	.loc 1 486 0
	addi 29,29,1
	.loc 1 488 0
	slwi 9,9,2
	add 9,9,24
	lwz 4,72(9)
.LVL706:
	lwz 3,60(9)
	bl GX_SetTevAIn
.LVL707:
.L767:
	.loc 1 486 0
	cmpw 7,29,28
	blt+ 7,.L768
.LVL708:
	cmpw 7,28,30
.LVL709:
	mr 9,28
.LVL710:
	bge- 7,.L770
	mr 9,30
.L770:
	cmpwi 7,9,0
	.loc 1 520 0
	addi 9,9,1
.LVL711:
	.loc 1 486 0
	li 30,-1
.LVL712:
	li 27,0
.LVL713:
	.loc 1 505 0
	addi 10,1,14
	.loc 1 520 0
	addi 11,1,17
	mtctr 9
	bge+ 7,.L771
	li 0,1
	mtctr 0
	b .L771
.LVL714:
.L772:
	.loc 1 505 0
	lbzx 0,27,10
	extsb 0,0
.LVL715:
	cmpwi 7,0,-1
	beq- 7,.L773
	.loc 1 507 0
	cmpwi 7,30,-1
	beq- 7,.L775
.LVL716:
	.loc 1 513 0
	cmpw 7,30,0
	beq+ 7,.L773
.LVL717:
	.loc 1 515 0
	lis 4,.LC14@ha
.LVL718:
	li 3,1280
	la 4,.LC14@l(4)
	li 5,515
	b .L829
.LVL719:
.L775:
	.loc 1 516 0
	mr 30,0
.LVL720:
.L773:
	.loc 1 520 0
	lbzx 0,27,11
.LVL721:
	extsb 0,0
.LVL722:
	cmpwi 7,0,-1
	beq- 7,.L778
	.loc 1 522 0
	cmpwi 7,30,-1
	beq- 7,.L780
.LVL723:
	.loc 1 528 0
	cmpw 7,30,0
	beq+ 7,.L778
.LVL724:
	.loc 1 530 0
	lis 4,.LC14@ha
.LVL725:
	li 3,1280
	la 4,.LC14@l(4)
	li 5,530
.L829:
	bl _glSetErrorEx
.LVL726:
	b .L822
.LVL727:
.L780:
	.loc 1 531 0
	mr 30,0
.LVL728:
.L778:
	.loc 1 503 0
	addi 27,27,1
.LVL729:
.L771:
	bdnz .L772
	.loc 1 545 0
	lis 9,cur_tex@ha
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	add 11,11,9
	lwz 9,28(11)
	cmpwi 7,9,8448
	beq- 7,.L786
	cmplwi 7,9,8448
	bgt- 7,.L790
	cmpwi 7,9,260
	beq- 7,.L784
	cmpwi 7,9,7681
	bne+ 7,.L822
	b .L785
.L790:
	xoris 0,9,0xffff
	cmpwi 7,0,-31372
	beq 7,.L788
	xoris 0,9,0xffff
	cmpwi 7,0,-31371
	beq 7,.L789
	xoris 0,9,0xffff
	cmpwi 7,0,-31513
	bne 7,.L822
	b .L787
.LVL730:
.L785:
	.loc 1 548 0
	lbz 7,8(1)
	mr 3,31
	li 4,15
.LVL731:
	b .L831
.LVL732:
.L786:
	.loc 1 553 0
	lbz 5,8(1)
	mr 3,31
	lbz 6,9(1)
	li 4,15
.LVL733:
	b .L832
.LVL734:
.L784:
	.loc 1 558 0
	lbz 4,9(1)
.LVL735:
	mr 3,31
	lbz 7,8(1)
.LVL736:
.L831:
	li 5,15
	li 6,15
	b .L825
.LVL737:
.L788:
	.loc 1 563 0
	lbz 4,9(1)
.LVL738:
	li 5,15
	lbz 7,8(1)
	mr 3,31
	li 6,15
	bl GX_SetTevColorIn
	li 4,0
.LVL739:
	li 5,2
.LVL740:
	b .L791
.LVL741:
.L787:
	.loc 1 568 0
	lbz 4,9(1)
.LVL742:
	mr 3,31
	lbz 7,8(1)
	li 5,15
	li 6,15
	bl GX_SetTevColorIn
	li 4,1
.LVL743:
	b .L826
.LVL744:
.L789:
	.loc 1 573 0
	lbz 4,9(1)
.LVL745:
	mr 3,31
	lbz 5,8(1)
	lbz 6,10(1)
.LVL746:
.L832:
	li 7,15
.L825:
	bl GX_SetTevColorIn
.LVL747:
	li 4,0
.LVL748:
.L826:
	li 5,0
.LVL749:
.L791:
	.loc 1 583 0
	lis 28,cur_tex@ha
.LVL750:
	lis 29,glTexEnvs@ha
	lwz 9,cur_tex@l(28)
	la 29,glTexEnvs@l(29)
	mr 3,31
	li 7,1
	mulli 9,9,108
	li 8,0
	add 9,9,29
	lbz 6,104(9)
	bl GX_SetTevColorOp
.LVL751:
	.loc 1 593 0
	lwz 9,cur_tex@l(28)
	mulli 9,9,108
	add 9,9,29
	lwz 9,32(9)
	cmpwi 7,9,8448
	beq- 7,.L794
	cmplwi 7,9,8448
	bgt- 7,.L798
	cmpwi 7,9,260
	beq- 7,.L792
	cmpwi 7,9,7681
	bne+ 7,.L822
	b .L793
.L798:
	xoris 0,9,0xffff
	cmpwi 7,0,-31372
	beq 7,.L796
	xoris 0,9,0xffff
	cmpwi 7,0,-31371
	beq 7,.L797
	xoris 0,9,0xffff
	cmpwi 7,0,-31513
	bne 7,.L822
	b .L795
.L793:
	.loc 1 596 0
	lbz 7,11(1)
	mr 3,31
	li 4,7
	b .L833
.LVL752:
.L794:
	.loc 1 601 0
	lbz 5,11(1)
	mr 3,31
	lbz 6,12(1)
	li 4,7
	b .L834
.LVL753:
.L792:
	.loc 1 606 0
	lbz 4,12(1)
	mr 3,31
	lbz 7,11(1)
.LVL754:
.L833:
	li 5,7
	li 6,7
	b .L827
.LVL755:
.L796:
	.loc 1 611 0
	lbz 4,12(1)
	li 5,7
	lbz 7,11(1)
	mr 3,31
	li 6,7
	bl GX_SetTevAlphaIn
	li 4,0
.LVL756:
	li 5,2
.LVL757:
	b .L799
.LVL758:
.L795:
	.loc 1 616 0
	lbz 4,12(1)
	mr 3,31
	lbz 7,11(1)
	li 5,7
	li 6,7
	bl GX_SetTevAlphaIn
	li 4,1
.LVL759:
	b .L828
.LVL760:
.L797:
	.loc 1 621 0
	lbz 4,12(1)
	mr 3,31
	lbz 5,11(1)
	lbz 6,13(1)
.LVL761:
.L834:
	li 7,7
.L827:
	bl GX_SetTevAlphaIn
.LVL762:
	li 4,0
.LVL763:
.L828:
	li 5,0
.LVL764:
.L799:
	.loc 1 629 0
	lis 9,cur_tex@ha
	mr 3,31
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	li 7,1
	mulli 11,11,108
	li 8,0
	add 11,11,9
	lbz 6,105(11)
	bl GX_SetTevAlphaOp
.LVL765:
	.loc 1 637 0
	cmpwi 7,30,-1
	.loc 1 635 0
	li 0,1
	stw 0,0(22)
	.loc 1 637 0
	bne+ 7,.L800
	.loc 1 639 0
	mr 3,31
	li 4,255
	li 5,255
	b .L830
.LVL766:
.L800:
	.loc 1 643 0
	rlwinm 11,27,0,0xff
.LVL767:
.LBB52:
.LBB53:
	.loc 1 402 0
	li 4,0
	addi 0,11,-1
	rlwinm 0,0,0,0xff
	cmplwi 7,0,6
	bgt- 7,.L812
	lis 9,.L810@ha
	slwi 0,0,2
	la 9,.L810@l(9)
	lwzx 0,9,0
	add 0,0,9
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L810:
	.long .L803-.L810
	.long .L804-.L810
	.long .L805-.L810
	.long .L806-.L810
	.long .L807-.L810
	.long .L808-.L810
	.long .L809-.L810
	.section	".text"
.L809:
	li 4,7
	b .L811
.L808:
	li 4,6
.L812:
.LBE53:
.LBE52:
.LBB54:
.LBB55:
	.loc 1 386 0
	addi 0,11,-1
	li 5,0
	rlwinm 0,0,0,0xff
	cmplwi 7,0,6
	bgt- 7,.L821
	lis 9,.L820@ha
	slwi 0,0,2
	la 9,.L820@l(9)
	lwzx 0,9,0
	add 0,0,9
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L820:
	.long .L814-.L820
	.long .L815-.L820
	.long .L816-.L820
	.long .L817-.L820
	.long .L818-.L820
	.long .L819-.L820
	.long .L811-.L820
	.section	".text"
.L819:
	li 5,6
	b .L821
.L811:
	li 5,7
	b .L821
.L803:
	li 4,1
.L814:
	li 5,1
	b .L821
.L804:
	li 4,2
.L815:
	li 5,2
	b .L821
.L805:
	li 4,3
.L816:
	li 5,3
	b .L821
.L806:
	li 4,4
.L817:
	li 5,4
	b .L821
.L807:
	li 4,5
.L818:
	li 5,5
.L821:
.LBE55:
.LBE54:
	.loc 1 643 0
	mr 3,31
.LVL768:
.L830:
	li 6,4
	bl GX_SetTevOrder
.LVL769:
.LVL770:
.L822:
	.loc 1 645 0
	lwz 0,68(1)
	lmw 22,24(1)
.LVL771:
	addi 1,1,64
	mtlr 0
	blr
.LFE81:
	.size	GX_SetTevCombineStage, .-GX_SetTevCombineStage
	.align 2
	.globl GX_SetTevStage
	.type	GX_SetTevStage, @function
GX_SetTevStage:
.LFB82:
	.loc 1 648 0
.LVL772:
	mflr 0
.LCFI135:
	stwu 1,-32(1)
.LCFI136:
	.loc 1 649 0
	lis 9,cur_tex@ha
	.loc 1 648 0
	stmw 26,8(1)
.LCFI137:
	mr 31,3
	stw 0,36(1)
.LCFI138:
	.loc 1 649 0
	li 0,0
	ori 0,0,34160
	lwz 29,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 11,29,108
	add 11,11,9
	lwz 9,24(11)
	cmpw 7,9,0
	bne+ 7,.L836
.LVL773:
	.loc 1 782 0
	lwz 0,36(1)
	lmw 26,8(1)
.LVL774:
	addi 1,1,32
	mtlr 0
	.loc 1 652 0
	b GX_SetTevCombineStage
.LVL775:
.L836:
	.loc 1 661 0
	cmpwi 7,3,0
	.loc 1 656 0
	li 0,1
	stw 0,0(4)
	.loc 1 661 0
	li 30,0
.LVL776:
	li 26,0
.LVL777:
	bne- 7,.L840
.LVL778:
	li 30,10
	li 26,5
.L840:
	.loc 1 666 0
	lis 3,texMan@ha
.LVL779:
	la 3,texMan@l(3)
	bl getCur
.LVL780:
	.loc 1 667 0
	rlwinm 11,29,0,0xff
.LVL781:
.LBB60:
.LBB61:
	.loc 1 402 0
	addi 0,11,-1
.LBE61:
.LBE60:
	.loc 1 666 0
	mr 27,3
.LVL782:
.LBB63:
.LBB62:
	.loc 1 402 0
	rlwinm 0,0,0,0xff
	li 4,0
	cmplwi 7,0,6
	bgt- 7,.L851
	lis 9,.L849@ha
	slwi 0,0,2
	la 9,.L849@l(9)
	lwzx 0,9,0
	add 0,0,9
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L849:
	.long .L842-.L849
	.long .L843-.L849
	.long .L844-.L849
	.long .L845-.L849
	.long .L846-.L849
	.long .L847-.L849
	.long .L848-.L849
	.section	".text"
.L848:
	li 4,7
	b .L850
.L847:
	li 4,6
.L851:
.LBE62:
.LBE63:
.LBB64:
.LBB65:
	.loc 1 386 0
	addi 0,11,-1
	li 5,0
	rlwinm 0,0,0,0xff
	cmplwi 7,0,6
	bgt- 7,.L860
	lis 9,.L859@ha
	slwi 0,0,2
	la 9,.L859@l(9)
	lwzx 0,9,0
	add 0,0,9
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L859:
	.long .L853-.L859
	.long .L854-.L859
	.long .L855-.L859
	.long .L856-.L859
	.long .L857-.L859
	.long .L858-.L859
	.long .L850-.L859
	.section	".text"
.L858:
	li 5,6
	b .L860
.L850:
	li 5,7
	b .L860
.L842:
	li 4,1
.L853:
	li 5,1
	b .L860
.L843:
	li 4,2
.L854:
	li 5,2
	b .L860
.L844:
	li 4,3
.L855:
	li 5,3
	b .L860
.L845:
	li 4,4
.L856:
	li 5,4
	b .L860
.L846:
	li 4,5
.L857:
	li 5,5
.L860:
.LBE65:
.LBE64:
	.loc 1 669 0
	lis 28,cur_tex@ha
	.loc 1 667 0
	mr 3,31
	li 6,4
	.loc 1 669 0
	lis 29,glTexEnvs@ha
	.loc 1 667 0
	bl GX_SetTevOrder
.LVL783:
	.loc 1 669 0
	lwz 9,cur_tex@l(28)
	la 29,glTexEnvs@l(29)
	mr 3,31
	mulli 9,9,108
	li 4,0
	li 5,0
	li 7,1
	add 9,9,29
	li 8,0
	lbz 6,104(9)
	bl GX_SetTevColorOp
	.loc 1 670 0
	lwz 9,cur_tex@l(28)
	mr 3,31
	li 4,0
	mulli 9,9,108
	li 5,0
	li 7,1
	li 8,0
	add 9,9,29
	lbz 6,105(9)
	bl GX_SetTevAlphaOp
	.loc 1 680 0
	lwz 9,cur_tex@l(28)
	mulli 9,9,108
	add 9,9,29
	lwz 0,24(9)
	cmpwi 7,0,7681
	beq- 7,.L863
	cmplwi 7,0,7681
	bgt- 7,.L866
	cmpwi 7,0,260
	bne+ 7,.L884
	b .L862
.L866:
	cmpwi 7,0,8448
	beq- 7,.L864
	cmpwi 7,0,8449
	bne+ 7,.L884
	b .L865
.L862:
	.loc 1 684 0
	lwz 0,68(27)
	cmpwi 7,0,6406
	beq- 7,.L887
	.loc 1 691 0
	mr 7,30
	mr 3,31
	li 4,8
	b .L888
.LVL784:
.L864:
	.loc 1 698 0
	lwz 0,68(27)
	cmpwi 7,0,6406
	beq- 7,.L887
	.loc 1 705 0
	mr 5,30
	mr 3,31
	li 4,15
	li 6,8
	b .L889
.LVL785:
.L865:
	.loc 1 712 0
	lwz 0,68(27)
	cmpwi 7,0,6408
	bne+ 7,.L874
	.loc 1 715 0
	mr 4,30
	mr 3,31
	li 5,8
	li 6,9
.LVL786:
.L889:
	li 7,15
	b .L885
.LVL787:
.L863:
	.loc 1 725 0
	lwz 0,68(27)
	cmpwi 7,0,6406
	bne+ 7,.L874
.L887:
	.loc 1 729 0
	mr 7,30
	mr 3,31
	li 4,15
.LVL788:
.L888:
	li 5,15
	li 6,15
	b .L885
.LVL789:
.L874:
	.loc 1 732 0
	mr 3,31
	li 4,15
	li 5,15
	li 6,15
	li 7,8
.LVL790:
.L885:
	bl GX_SetTevColorIn
.LVL791:
	.loc 1 744 0
	lis 9,cur_tex@ha
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	add 11,11,9
	lwz 0,24(11)
	cmpwi 7,0,7681
	beq- 7,.L877
	cmplwi 7,0,7681
	bgt- 7,.L879
	cmpwi 7,0,260
	beq- 7,.L876
	cmpwi 7,0,3042
	bne+ 7,.L884
	b .L876
.L879:
	cmpwi 7,0,8448
	beq- 7,.L876
	cmpwi 7,0,8449
	bne+ 7,.L884
	b .L878
.L876:
	.loc 1 750 0
	lwz 3,68(27)
	cmpwi 7,3,6407
	beq- 7,.L878
	cmpwi 7,3,6409
	beq- 7,.L878
	.loc 1 758 0
	mr 3,31
	mr 6,26
	li 4,7
	li 5,4
	li 7,7
	b .L886
.LVL792:
.L878:
	.loc 1 765 0
	mr 3,31
	mr 7,26
	li 4,7
	li 5,7
	li 6,7
	b .L886
.LVL793:
.L877:
	.loc 1 770 0
	lwz 3,68(27)
	cmpwi 7,3,6407
	beq- 7,.L883
	cmpwi 7,3,6409
	bne+ 7,.L882
.L883:
	.loc 1 775 0
	mr 7,26
	mr 3,31
	li 4,7
	li 5,7
	li 6,7
	bl GX_SetTevAlphaIn
.L882:
	.loc 1 777 0
	mr 3,31
	li 4,7
	li 5,7
	li 6,7
	li 7,4
.LVL794:
.L886:
	bl GX_SetTevAlphaIn
.LVL795:
.L884:
	.loc 1 782 0
	lwz 0,36(1)
	lmw 26,8(1)
.LVL796:
	addi 1,1,32
	mtlr 0
	blr
.LFE82:
	.size	GX_SetTevStage, .-GX_SetTevStage
	.align 2
	.globl glBindTexture
	.type	glBindTexture, @function
glBindTexture:
.LFB111:
	.loc 1 1473 0
.LVL797:
	mflr 0
.LCFI139:
	stwu 1,-24(1)
.LCFI140:
	.loc 1 1474 0
	lis 9,cur_state@ha
	.loc 1 1473 0
	stmw 29,12(1)
.LCFI141:
	mr 30,3
	stw 0,28(1)
.LCFI142:
	.loc 1 1473 0
	mr 31,4
	.loc 1 1474 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L891
.LVL798:
	lis 4,.LC14@ha
	li 3,1282
	la 4,.LC14@l(4)
	li 5,1474
	bl _glSetErrorEx
	b .L894
.LVL799:
.L891:
	.loc 1 1476 0
	lis 29,texMan@ha
	la 3,texMan@l(29)
	bl activateTex
	.loc 1 1478 0
	lwz 0,texMan@l(29)
	mulli 9,31,76
	add 9,9,0
	stw 30,-44(9)
	.loc 1 1480 0
	lis 9,cur_tex@ha
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	add 11,11,9
	stw 31,84(11)
.L894:
	.loc 1 1481 0
	lwz 0,28(1)
	lmw 29,12(1)
.LVL800:
	addi 1,1,24
	mtlr 0
	blr
.LFE111:
	.size	glBindTexture, .-glBindTexture
	.align 2
	.globl GX_SetTextures
	.type	GX_SetTextures, @function
GX_SetTextures:
.LFB114:
	.loc 1 1493 0
.LVL801:
	mflr 0
.LCFI143:
	stwu 1,-56(1)
.LCFI144:
	lis 9,glTexEnvs+84@ha
	stmw 25,28(1)
.LCFI145:
	la 29,glTexEnvs+84@l(9)
	stw 0,60(1)
.LCFI146:
.LBB74:
.LBB76:
.LBB78:
	.loc 1 386 0
	lis 9,.L915@ha
.LBE78:
.LBE76:
.LBE74:
	.loc 1 1493 0
	mr 31,3
.LBB86:
.LBB75:
.LBB77:
	.loc 1 386 0
	la 27,.L915@l(9)
.LBE77:
.LBE75:
.LBE86:
	.loc 1 1493 0
	li 30,0
.LVL802:
	li 28,0
.LVL803:
.LBB87:
.LBB80:
.LBB81:
	.loc 1 1415 0
	lis 25,texMan@ha
.LBE81:
.LBE80:
	.loc 1 1545 0
	addi 26,1,8
.LVL804:
.L896:
	.loc 1 1499 0
	lwz 11,0(29)
.LVL805:
	cmpwi 7,11,-1
	beq- 7,.L897
	.loc 1 1504 0
	lbz 0,-84(29)
	cmpwi 7,0,0
	beq- 7,.L897
.LBB83:
.LBB82:
	.loc 1 1415 0
	lwz 9,texMan@l(25)
	mulli 0,11,76
	addi 9,9,-76
	add 3,9,0
.LBE82:
.LBE83:
	.loc 1 1513 0
	lwz 0,4(3)
	cmpwi 7,0,0
	beq- 7,.L897
	.loc 1 1518 0
	lbz 9,72(3)
	addi 9,9,-2
	cmplwi 7,9,3
	bgt- 7,.L901
.LBB84:
	.loc 1 1528 0
	lbz 8,74(3)
	li 11,1
.LVL806:
	b .L903
.L904:
	.loc 1 1530 0
	add 9,3,11
	lbz 0,8(9)
	cmpwi 7,0,0
	beq- 7,.L905
	.loc 1 1528 0
	addi 11,11,1
.L903:
	cmpw 7,11,8
	.loc 1 1493 0
	addi 10,11,-1
	.loc 1 1528 0
	ble+ 7,.L904
.L905:
	.loc 1 1536 0
	cmpw 7,10,8
	blt- 7,.L897
.L901:
.LBE84:
.LBB85:
.LBB79:
	.loc 1 386 0
	addi 0,30,-1
	li 4,0
	rlwinm 0,0,0,0xff
	cmplwi 7,0,6
	bgt- 7,.L916
	slwi 0,0,2
	lwzx 0,27,0
	add 0,0,27
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L915:
	.long .L908-.L915
	.long .L909-.L915
	.long .L910-.L915
	.long .L911-.L915
	.long .L912-.L915
	.long .L913-.L915
	.long .L914-.L915
	.section	".text"
.L913:
	li 4,6
	b .L916
.L914:
	li 4,7
	b .L916
.L908:
	li 4,1
	b .L916
.L909:
	li 4,2
	b .L916
.L910:
	li 4,3
	b .L916
.L911:
	li 4,4
	b .L916
.L912:
	li 4,5
.L916:
.LBE79:
.LBE85:
	.loc 1 1543 0
	addi 3,3,36
.LVL807:
	.loc 1 1547 0
	addi 28,28,1
	.loc 1 1543 0
	bl GX_LoadTexObj
.LVL808:
	.loc 1 1545 0
	mr 3,31
	mr 4,26
	bl GX_SetTevStage
	.loc 1 1549 0
	lwz 0,8(1)
	add 0,31,0
	rlwinm 31,0,0,0xff
.LVL809:
.L897:
.LBE87:
	.loc 1 1497 0
	cmpwi 7,30,7
	addi 29,29,108
	addi 30,30,1
	bne+ 7,.L896
	.loc 1 1552 0
	mr 3,28
.LVL810:
	bl GX_SetNumTexGens
.LVL811:
	.loc 1 1555 0
	lwz 0,60(1)
	mr 3,31
	lmw 25,28(1)
.LVL812:
	mtlr 0
	addi 1,1,56
	blr
.LFE114:
	.size	GX_SetTextures, .-GX_SetTextures
	.globl border_color
	.comm	_tempcolorelement,16,4
	.comm	_tempnormalelement,12,4
	.comm	_temptexcoordelement,64,4
	.comm	norm,20,4
	.comm	vert,20,4
	.comm	tex,160,4
	.comm	color,20,4
	.comm	_normalelements,12000,32
	.comm	_vertexelements,12000,32
	.comm	_texcoordelements,64000,32
	.comm	_colorelements,16000,32
	.comm	vert_i,4,4
	.comm	_type,4,4
	.comm	_GLtype,4,4
	.comm	cur_tex,4,4
	.comm	cur_tex_client,4,4
	.comm	depthtestenabled,1,1
	.comm	depthupdate,1,1
	.comm	depthfunction,4,4
	.comm	_cleardepth,4,4
	.comm	model_stack,16,4
	.comm	projection_stack,16,4
	.comm	texture_stack,128,4
	.comm	curmtx,4,4
	.comm	cur_mode,4,4
	.comm	lights,1312,4
	.comm	globAmbient,16,4
	.comm	curmat,68,4
	.comm	gxcullfaceanabled,1,1
	.comm	gxwinding,4,4
	.comm	lighting,1,1
	.comm	blend_type,1,1
	.comm	blend_src,1,1
	.comm	blend_dst,1,1
	.comm	blend_op,1,1
	.comm	cull_mode,1,1
	.comm	cur_state,4,4
	.comm	fb_max_height,4,4
	.comm	fb_max_width,4,4
	.comm	scissor_test,1,1
	.comm	scissorInfo,16,4
	.comm	viewPort,16,4
	.comm	normNear,4,4
	.comm	normFar,4,4
	.comm	line_width,4,4
	.comm	point_size,4,4
	.comm	pack,20,4
	.comm	unpack,20,4
	.comm	color_write_mask,4,4
	.comm	copy_mat_enabled,1,1
	.comm	copy_material,4,4
	.comm	_clearcolor,4,1
	.comm	Trans,32,4
	.comm	fog_enable,1,1
	.comm	fog_mode,1,1
	.comm	fog_startz,4,4
	.comm	fog_endz,4,4
	.comm	fog_density,4,4
	.comm	fog_color,4,1
	.comm	glTexEnvs,864,4
	.comm	read_mode,4,4
	.comm	call_offset,4,4
	.comm	texMan,16,4
	.section	.rodata
	.align 2
	.set	.LANCHOR1,. + 0
	.type	C.38.14358, @object
	.size	C.38.14358, 20
C.38.14358:
	.byte	0
	.byte	0
	.zero	2
	.long	0
	.long	0
	.long	0
	.long	4
	.type	C.39.14359, @object
	.size	C.39.14359, 20
C.39.14359:
	.byte	0
	.byte	0
	.zero	2
	.long	0
	.long	0
	.long	0
	.long	4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	1073741824
.LC1:
	.4byte	1082130432
.LC6:
	.4byte	1092616192
.LC8:
	.4byte	0
.LC10:
	.4byte	1501560836
.LC11:
	.4byte	805306368
.LC19:
	.4byte	1325400064
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC14:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/gl_textures.c"
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	border_color, @object
	.size	border_color, 16
border_color:
	.zero	16
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
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.align 2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.byte	0x4
	.4byte	.LCFI0-.LFB98
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.align 2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.align 2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.byte	0x4
	.4byte	.LCFI2-.LFB108
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
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
	.4byte	.LCFI4-.LCFI3
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.align 2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.align 2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.align 2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.align 2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.byte	0x4
	.4byte	.LCFI6-.LFB124
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.byte	0x4
	.4byte	.LCFI9-.LFB119
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.byte	0x4
	.4byte	.LCFI12-.LFB93
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.byte	0x4
	.4byte	.LCFI15-.LFB92
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.byte	0x4
	.4byte	.LCFI18-.LFB91
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.byte	0x4
	.4byte	.LCFI21-.LFB90
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.byte	0x4
	.4byte	.LCFI24-.LFB89
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.byte	0x4
	.4byte	.LCFI27-.LFB88
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x4
	.4byte	.LCFI30-.LFB72
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x4
	.4byte	.LCFI34-.LFB70
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x4
	.4byte	.LCFI37-.LFB69
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI38-.LCFI37
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.byte	0x4
	.4byte	.LCFI40-.LFB85
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI41-.LCFI40
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI42-.LCFI41
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.byte	0x4
	.4byte	.LCFI44-.LFB86
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI45-.LCFI44
	.byte	0xbf
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI46-.LCFI45
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.byte	0x4
	.4byte	.LCFI48-.LFB87
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI49-.LCFI48
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.byte	0x4
	.4byte	.LCFI51-.LFB68
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI52-.LCFI51
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.byte	0x4
	.4byte	.LCFI54-.LFB67
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
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x4
	.4byte	.LCFI57-.LFB66
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.byte	0x4
	.4byte	.LCFI59-.LFB105
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI60-.LCFI59
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
	.4byte	.LCFI61-.LCFI60
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.byte	0x4
	.4byte	.LCFI63-.LFB123
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI64-.LCFI63
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
	.4byte	.LCFI65-.LCFI64
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.byte	0x4
	.4byte	.LCFI67-.LFB118
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI68-.LCFI67
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI69-.LCFI68
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.byte	0x4
	.4byte	.LCFI71-.LFB120
	.byte	0xe
	.uleb128 0x48
	.byte	0x4
	.4byte	.LCFI72-.LCFI71
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
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI73-.LCFI72
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.byte	0x4
	.4byte	.LCFI75-.LFB116
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI76-.LCFI75
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI77-.LCFI76
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE80:
.LSFDE82:
	.4byte	.LEFDE82-.LASFDE82
.LASFDE82:
	.4byte	.Lframe0
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.byte	0x4
	.4byte	.LCFI79-.LFB122
	.byte	0xe
	.uleb128 0x50
	.byte	0x4
	.4byte	.LCFI80-.LCFI79
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
	.4byte	.LCFI81-.LCFI80
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE82:
.LSFDE84:
	.4byte	.LEFDE84-.LASFDE84
.LASFDE84:
	.4byte	.Lframe0
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.byte	0x4
	.4byte	.LCFI83-.LFB121
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI84-.LCFI83
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI85-.LCFI84
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE84:
.LSFDE86:
	.4byte	.LEFDE86-.LASFDE86
.LASFDE86:
	.4byte	.Lframe0
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.byte	0x4
	.4byte	.LCFI87-.LFB104
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI88-.LCFI87
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
	.4byte	.LCFI89-.LCFI88
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE86:
.LSFDE88:
	.4byte	.LEFDE88-.LASFDE88
.LASFDE88:
	.4byte	.Lframe0
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.byte	0x4
	.4byte	.LCFI91-.LFB103
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI92-.LCFI91
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
	.4byte	.LCFI93-.LCFI92
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE88:
.LSFDE90:
	.4byte	.LEFDE90-.LASFDE90
.LASFDE90:
	.4byte	.Lframe0
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.byte	0x4
	.4byte	.LCFI95-.LFB109
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI96-.LCFI95
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI97-.LCFI96
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE90:
.LSFDE92:
	.4byte	.LEFDE92-.LASFDE92
.LASFDE92:
	.4byte	.Lframe0
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.byte	0x4
	.4byte	.LCFI99-.LFB110
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI100-.LCFI99
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
	.4byte	.LCFI101-.LCFI100
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE92:
.LSFDE94:
	.4byte	.LEFDE94-.LASFDE94
.LASFDE94:
	.4byte	.Lframe0
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.byte	0x4
	.4byte	.LCFI102-.LFB102
	.byte	0xe
	.uleb128 0x80
	.byte	0x4
	.4byte	.LCFI104-.LCFI102
	.byte	0x9f
	.uleb128 0x3
	.byte	0x9e
	.uleb128 0x4
	.byte	0x9d
	.uleb128 0x5
	.byte	0x9c
	.uleb128 0x6
	.byte	0x9b
	.uleb128 0x7
	.byte	0x9a
	.uleb128 0x8
	.byte	0x99
	.uleb128 0x9
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI105-.LCFI104
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI106-.LCFI105
	.byte	0xbf
	.uleb128 0x2
	.align 2
.LEFDE94:
.LSFDE96:
	.4byte	.LEFDE96-.LASFDE96
.LASFDE96:
	.4byte	.Lframe0
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.byte	0x4
	.4byte	.LCFI107-.LFB94
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI109-.LCFI107
	.byte	0xbf
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI111-.LCFI109
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x9f
	.uleb128 0x3
	.align 2
.LEFDE96:
.LSFDE98:
	.4byte	.LEFDE98-.LASFDE98
.LASFDE98:
	.4byte	.Lframe0
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.byte	0x4
	.4byte	.LCFI113-.LFB96
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI114-.LCFI113
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE98:
.LSFDE100:
	.4byte	.LEFDE100-.LASFDE100
.LASFDE100:
	.4byte	.Lframe0
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.byte	0x4
	.4byte	.LCFI116-.LFB101
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI117-.LCFI116
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE100:
.LSFDE102:
	.4byte	.LEFDE102-.LASFDE102
.LASFDE102:
	.4byte	.Lframe0
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.byte	0x4
	.4byte	.LCFI119-.LFB100
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI120-.LCFI119
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE102:
.LSFDE104:
	.4byte	.LEFDE104-.LASFDE104
.LASFDE104:
	.4byte	.Lframe0
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.byte	0x4
	.4byte	.LCFI122-.LFB99
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI123-.LCFI122
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
	.4byte	.LCFI124-.LCFI123
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE104:
.LSFDE106:
	.4byte	.LEFDE106-.LASFDE106
.LASFDE106:
	.4byte	.Lframe0
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.byte	0x4
	.4byte	.LCFI126-.LFB97
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI127-.LCFI126
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE106:
.LSFDE108:
	.4byte	.LEFDE108-.LASFDE108
.LASFDE108:
	.4byte	.Lframe0
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.byte	0x4
	.4byte	.LCFI129-.LFB95
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI130-.LCFI129
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE108:
.LSFDE110:
	.4byte	.LEFDE110-.LASFDE110
.LASFDE110:
	.4byte	.Lframe0
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.byte	0x4
	.4byte	.LCFI131-.LFB81
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.4byte	.LCFI133-.LCFI131
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
	.4byte	.LCFI134-.LCFI133
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE110:
.LSFDE112:
	.4byte	.LEFDE112-.LASFDE112
.LASFDE112:
	.4byte	.Lframe0
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.byte	0x4
	.4byte	.LCFI136-.LFB82
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI137-.LCFI136
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
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI138-.LCFI137
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE112:
.LSFDE114:
	.4byte	.LEFDE114-.LASFDE114
.LASFDE114:
	.4byte	.Lframe0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.byte	0x4
	.4byte	.LCFI140-.LFB111
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI141-.LCFI140
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
	.4byte	.LCFI142-.LCFI141
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE114:
.LSFDE116:
	.4byte	.LEFDE116-.LASFDE116
.LASFDE116:
	.4byte	.Lframe0
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.byte	0x4
	.4byte	.LCFI144-.LFB114
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI145-.LCFI144
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
	.4byte	.LCFI146-.LCFI145
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE116:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL37-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL44-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL39-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54-.Ltext0
	.4byte	.LFE78-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LFB98-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LFB108-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LFB124-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE124-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LFB119-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL96-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LFB93-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LFB92-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE92-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LFB91-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE91-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LFB90-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE90-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LFB89-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI24-.Ltext0
	.4byte	.LFE89-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL113-.Ltext0
	.4byte	.LFE89-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL113-.Ltext0
	.4byte	.LFE89-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LFB88-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI27-.Ltext0
	.4byte	.LFE88-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL117-.Ltext0
	.4byte	.LFE88-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL117-.Ltext0
	.4byte	.LFE88-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LFB72-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI30-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL169-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST62:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL170-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST63:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL169-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST64:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL170-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST65:
	.4byte	.LFB70-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI34-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST66:
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL174-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST67:
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL174-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST68:
	.4byte	.LFB69-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI37-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST69:
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL178-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST70:
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL178-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST71:
	.4byte	.LFB85-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI40-.Ltext0
	.4byte	.LFE85-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST72:
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL206-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL212-.Ltext0
	.4byte	.LFE85-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST73:
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL212-.Ltext0
	.4byte	.LFE85-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST74:
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL213-.Ltext0
	.4byte	.LFE85-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST75:
	.4byte	.LFB86-.Ltext0
	.4byte	.LCFI44-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI44-.Ltext0
	.4byte	.LFE86-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST76:
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL233-.Ltext0
	.4byte	.LFE86-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST77:
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL233-.Ltext0
	.4byte	.LFE86-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST78:
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL219-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL234-.Ltext0
	.4byte	.LFE86-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST79:
	.4byte	.LFB87-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI48-.Ltext0
	.4byte	.LFE87-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST80:
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL244-.Ltext0
	.4byte	.LFE87-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST81:
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL244-.Ltext0
	.4byte	.LFE87-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST82:
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL244-.Ltext0
	.4byte	.LFE87-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST83:
	.4byte	.LFB68-.Ltext0
	.4byte	.LCFI51-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI51-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST84:
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL248-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST85:
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL248-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST86:
	.4byte	.LFB67-.Ltext0
	.4byte	.LCFI54-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI54-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST87:
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL251-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL265-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL266-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL289-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL292-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST88:
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL254-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL259-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL261-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL264-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL264-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL266-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL276-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL277-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL278-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL282-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL286-.Ltext0
	.4byte	.LVL287-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL288-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL293-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST89:
	.4byte	.LFB66-.Ltext0
	.4byte	.LCFI57-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI57-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST90:
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST91:
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST92:
	.4byte	.LFB105-.Ltext0
	.4byte	.LCFI59-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI59-.Ltext0
	.4byte	.LFE105-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST93:
	.4byte	.LVL297-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL304-.Ltext0
	.4byte	.LFE105-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST94:
	.4byte	.LVL297-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL301-.Ltext0
	.4byte	.LFE105-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST95:
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST96:
	.4byte	.LFB123-.Ltext0
	.4byte	.LCFI63-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI63-.Ltext0
	.4byte	.LFE123-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST97:
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL315-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL319-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST98:
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL311-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL317-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL317-.Ltext0
	.4byte	.LVL319-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL319-.Ltext0
	.4byte	.LFE123-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST99:
	.4byte	.LVL312-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL319-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST100:
	.4byte	.LFB118-.Ltext0
	.4byte	.LCFI67-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI67-.Ltext0
	.4byte	.LFE118-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST101:
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL321-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL327-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST102:
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL321-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL323-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL325-.Ltext0
	.4byte	.LFE118-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST103:
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL326-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST104:
	.4byte	.LFB120-.Ltext0
	.4byte	.LCFI71-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI71-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	0x0
	.4byte	0x0
.LLST105:
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL331-.Ltext0
	.4byte	.LVL332-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL336-.Ltext0
	.4byte	.LVL339-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL341-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST106:
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL337-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL337-.Ltext0
	.4byte	.LVL338-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL342-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL342-.Ltext0
	.4byte	.LVL358-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL360-.Ltext0
	.4byte	.LVL361-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST107:
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL361-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST108:
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL361-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST109:
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL361-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0x0
	.4byte	0x0
.LLST110:
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL361-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0x0
	.4byte	0x0
.LLST111:
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL336-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL336-.Ltext0
	.4byte	.LVL343-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL359-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL360-.Ltext0
	.4byte	.LVL361-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST112:
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL334-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL334-.Ltext0
	.4byte	.LVL343-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL356-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL357-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL360-.Ltext0
	.4byte	.LVL361-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST113:
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL345-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL346-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL346-.Ltext0
	.4byte	.LVL347-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL347-.Ltext0
	.4byte	.LVL348-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL348-.Ltext0
	.4byte	.LVL349-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL349-.Ltext0
	.4byte	.LVL350-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL350-.Ltext0
	.4byte	.LVL351-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL353-.Ltext0
	.4byte	.LVL354-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL361-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST114:
	.4byte	.LVL355-.Ltext0
	.4byte	.LVL357-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST115:
	.4byte	.LFB116-.Ltext0
	.4byte	.LCFI75-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI75-.Ltext0
	.4byte	.LFE116-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST116:
	.4byte	.LVL362-.Ltext0
	.4byte	.LVL364-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL364-.Ltext0
	.4byte	.LVL366-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST117:
	.4byte	.LVL362-.Ltext0
	.4byte	.LVL364-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL364-.Ltext0
	.4byte	.LVL366-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST118:
	.4byte	.LVL362-.Ltext0
	.4byte	.LVL365-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL365-.Ltext0
	.4byte	.LVL366-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST119:
	.4byte	.LVL362-.Ltext0
	.4byte	.LVL363-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL363-.Ltext0
	.4byte	.LVL368-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST120:
	.4byte	.LVL362-.Ltext0
	.4byte	.LVL366-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST121:
	.4byte	.LVL367-.Ltext0
	.4byte	.LVL368-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST122:
	.4byte	.LFB122-.Ltext0
	.4byte	.LCFI79-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI79-.Ltext0
	.4byte	.LFE122-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	0x0
	.4byte	0x0
.LLST123:
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL371-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL372-.Ltext0
	.4byte	.LVL380-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL383-.Ltext0
	.4byte	.LVL384-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL387-.Ltext0
	.4byte	.LVL388-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL389-.Ltext0
	.4byte	.LVL392-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL393-.Ltext0
	.4byte	.LVL394-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL395-.Ltext0
	.4byte	.LVL396-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL397-.Ltext0
	.4byte	.LVL398-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST124:
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL370-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL437-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST125:
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL370-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL414-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL437-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST126:
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL370-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL373-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL373-.Ltext0
	.4byte	.LVL377-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL377-.Ltext0
	.4byte	.LVL379-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL381-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL381-.Ltext0
	.4byte	.LVL387-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL387-.Ltext0
	.4byte	.LVL390-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL390-.Ltext0
	.4byte	.LVL391-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL391-.Ltext0
	.4byte	.LVL393-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL393-.Ltext0
	.4byte	.LVL429-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL437-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST127:
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL370-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL374-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL374-.Ltext0
	.4byte	.LVL378-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL378-.Ltext0
	.4byte	.LVL379-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL381-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL381-.Ltext0
	.4byte	.LVL387-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL387-.Ltext0
	.4byte	.LVL393-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL393-.Ltext0
	.4byte	.LVL431-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL437-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST128:
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL381-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL383-.Ltext0
	.4byte	.LVL385-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL387-.Ltext0
	.4byte	.LVL399-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL433-.Ltext0
	.4byte	.LVL434-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST129:
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL370-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL437-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0x0
	.4byte	0x0
.LLST130:
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL370-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL437-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0x0
	.4byte	0x0
.LLST131:
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL370-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL437-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL437-.Ltext0
	.4byte	.LFE122-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST132:
	.4byte	.LVL375-.Ltext0
	.4byte	.LVL376-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL381-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL387-.Ltext0
	.4byte	.LVL399-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL433-.Ltext0
	.4byte	.LVL434-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST133:
	.4byte	.LVL400-.Ltext0
	.4byte	.LVL401-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL402-.Ltext0
	.4byte	.LVL403-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL404-.Ltext0
	.4byte	.LVL405-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL406-.Ltext0
	.4byte	.LVL407-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL408-.Ltext0
	.4byte	.LVL409-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL410-.Ltext0
	.4byte	.LVL411-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL412-.Ltext0
	.4byte	.LVL432-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL433-.Ltext0
	.4byte	.LVL437-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST134:
	.4byte	.LVL421-.Ltext0
	.4byte	.LVL424-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL425-.Ltext0
	.4byte	.LVL432-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL435-.Ltext0
	.4byte	.LFE122-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0x0
	.4byte	0x0
.LLST135:
	.4byte	.LVL415-.Ltext0
	.4byte	.LVL416-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL417-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL417-.Ltext0
	.4byte	.LVL432-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL433-.Ltext0
	.4byte	.LVL437-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST136:
	.4byte	.LVL413-.Ltext0
	.4byte	.LVL432-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL433-.Ltext0
	.4byte	.LVL437-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0x0
	.4byte	0x0
.LLST137:
	.4byte	.LVL414-.Ltext0
	.4byte	.LVL428-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL433-.Ltext0
	.4byte	.LVL437-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST138:
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL383-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL435-.Ltext0
	.4byte	.LFE122-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST139:
	.4byte	.LVL386-.Ltext0
	.4byte	.LVL387-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL435-.Ltext0
	.4byte	.LFE122-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST140:
	.4byte	.LVL419-.Ltext0
	.4byte	.LVL420-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST141:
	.4byte	.LVL422-.Ltext0
	.4byte	.LVL423-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL423-.Ltext0
	.4byte	.LVL424-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL425-.Ltext0
	.4byte	.LVL426-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL435-.Ltext0
	.4byte	.LVL436-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST142:
	.4byte	.LVL427-.Ltext0
	.4byte	.LVL430-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST143:
	.4byte	.LFB121-.Ltext0
	.4byte	.LCFI83-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI83-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST144:
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL441-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL444-.Ltext0
	.4byte	.LVL445-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL446-.Ltext0
	.4byte	.LVL447-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST145:
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL440-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL444-.Ltext0
	.4byte	.LVL448-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST146:
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL442-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL444-.Ltext0
	.4byte	.LVL448-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST147:
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL443-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL444-.Ltext0
	.4byte	.LVL448-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST148:
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL443-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL444-.Ltext0
	.4byte	.LVL447-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL447-.Ltext0
	.4byte	.LVL448-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST149:
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL439-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL439-.Ltext0
	.4byte	.LVL443-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL444-.Ltext0
	.4byte	.LVL447-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL447-.Ltext0
	.4byte	.LVL448-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST150:
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL439-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL439-.Ltext0
	.4byte	.LVL443-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL444-.Ltext0
	.4byte	.LVL447-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL447-.Ltext0
	.4byte	.LVL448-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST151:
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL439-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL439-.Ltext0
	.4byte	.LVL449-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST152:
	.4byte	.LFB104-.Ltext0
	.4byte	.LCFI87-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI87-.Ltext0
	.4byte	.LFE104-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST153:
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL451-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL451-.Ltext0
	.4byte	.LVL456-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST154:
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL452-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL455-.Ltext0
	.4byte	.LFE104-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST155:
	.4byte	.LVL451-.Ltext0
	.4byte	.LVL453-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL455-.Ltext0
	.4byte	.LFE104-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST156:
	.4byte	.LFB103-.Ltext0
	.4byte	.LCFI91-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI91-.Ltext0
	.4byte	.LFE103-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST157:
	.4byte	.LVL457-.Ltext0
	.4byte	.LVL460-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL460-.Ltext0
	.4byte	.LVL461-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL461-.Ltext0
	.4byte	.LVL462-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL462-.Ltext0
	.4byte	.LVL474-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST158:
	.4byte	.LVL457-.Ltext0
	.4byte	.LVL458-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL458-.Ltext0
	.4byte	.LVL474-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL474-.Ltext0
	.4byte	.LFE103-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST159:
	.4byte	.LVL459-.Ltext0
	.4byte	.LVL463-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL467-.Ltext0
	.4byte	.LVL468-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL469-.Ltext0
	.4byte	.LVL470-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL471-.Ltext0
	.4byte	.LVL473-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL473-.Ltext0
	.4byte	.LFE103-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST160:
	.4byte	.LVL464-.Ltext0
	.4byte	.LVL465-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL466-.Ltext0
	.4byte	.LVL472-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST161:
	.4byte	.LFB109-.Ltext0
	.4byte	.LCFI95-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI95-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST162:
	.4byte	.LVL475-.Ltext0
	.4byte	.LVL477-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL478-.Ltext0
	.4byte	.LVL479-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST163:
	.4byte	.LVL476-.Ltext0
	.4byte	.LVL480-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST164:
	.4byte	.LFB110-.Ltext0
	.4byte	.LCFI99-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI99-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST165:
	.4byte	.LVL481-.Ltext0
	.4byte	.LVL482-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL482-.Ltext0
	.4byte	.LVL484-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL484-.Ltext0
	.4byte	.LVL485-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL485-.Ltext0
	.4byte	.LVL486-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL486-.Ltext0
	.4byte	.LVL488-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL488-.Ltext0
	.4byte	.LVL489-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST166:
	.4byte	.LVL481-.Ltext0
	.4byte	.LVL482-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL482-.Ltext0
	.4byte	.LVL489-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST167:
	.4byte	.LVL487-.Ltext0
	.4byte	.LVL489-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST168:
	.4byte	.LFB102-.Ltext0
	.4byte	.LCFI102-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI102-.Ltext0
	.4byte	.LFE102-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	0x0
	.4byte	0x0
.LLST169:
	.4byte	.LVL490-.Ltext0
	.4byte	.LVL493-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST170:
	.4byte	.LVL491-.Ltext0
	.4byte	.LVL492-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST171:
	.4byte	.LFB94-.Ltext0
	.4byte	.LCFI107-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI107-.Ltext0
	.4byte	.LFE94-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST172:
	.4byte	.LVL494-.Ltext0
	.4byte	.LVL495-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST173:
	.4byte	.LVL494-.Ltext0
	.4byte	.LVL495-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL495-.Ltext0
	.4byte	.LVL496-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST174:
	.4byte	.LFB96-.Ltext0
	.4byte	.LCFI113-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI113-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST175:
	.4byte	.LVL497-.Ltext0
	.4byte	.LVL499-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL500-.Ltext0
	.4byte	.LVL501-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL502-.Ltext0
	.4byte	.LVL503-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL504-.Ltext0
	.4byte	.LVL505-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL506-.Ltext0
	.4byte	.LVL507-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL509-.Ltext0
	.4byte	.LVL510-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL511-.Ltext0
	.4byte	.LVL512-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL513-.Ltext0
	.4byte	.LVL514-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL515-.Ltext0
	.4byte	.LVL516-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL517-.Ltext0
	.4byte	.LVL518-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL519-.Ltext0
	.4byte	.LVL520-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL521-.Ltext0
	.4byte	.LVL522-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL523-.Ltext0
	.4byte	.LVL524-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL526-.Ltext0
	.4byte	.LVL527-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST176:
	.4byte	.LVL497-.Ltext0
	.4byte	.LVL498-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL498-.Ltext0
	.4byte	.LVL500-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL500-.Ltext0
	.4byte	.LVL502-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL502-.Ltext0
	.4byte	.LVL504-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL504-.Ltext0
	.4byte	.LVL508-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL508-.Ltext0
	.4byte	.LVL509-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL509-.Ltext0
	.4byte	.LVL519-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL519-.Ltext0
	.4byte	.LVL521-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL521-.Ltext0
	.4byte	.LVL525-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL525-.Ltext0
	.4byte	.LVL526-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL526-.Ltext0
	.4byte	.LVL528-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST177:
	.4byte	.LFB101-.Ltext0
	.4byte	.LCFI116-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI116-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST178:
	.4byte	.LVL529-.Ltext0
	.4byte	.LVL531-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL533-.Ltext0
	.4byte	.LVL535-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL537-.Ltext0
	.4byte	.LVL538-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL540-.Ltext0
	.4byte	.LVL542-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL544-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST179:
	.4byte	.LVL529-.Ltext0
	.4byte	.LVL530-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL533-.Ltext0
	.4byte	.LVL534-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL537-.Ltext0
	.4byte	.LVL539-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL539-.Ltext0
	.4byte	.LVL540-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL540-.Ltext0
	.4byte	.LVL541-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL544-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST180:
	.4byte	.LVL529-.Ltext0
	.4byte	.LVL532-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL533-.Ltext0
	.4byte	.LVL536-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL537-.Ltext0
	.4byte	.LVL540-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL540-.Ltext0
	.4byte	.LVL543-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL544-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST181:
	.4byte	.LFB100-.Ltext0
	.4byte	.LCFI119-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI119-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST182:
	.4byte	.LVL545-.Ltext0
	.4byte	.LVL547-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL548-.Ltext0
	.4byte	.LVL550-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL551-.Ltext0
	.4byte	.LVL552-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL554-.Ltext0
	.4byte	.LVL556-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL558-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST183:
	.4byte	.LVL545-.Ltext0
	.4byte	.LVL546-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL548-.Ltext0
	.4byte	.LVL549-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL551-.Ltext0
	.4byte	.LVL553-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL553-.Ltext0
	.4byte	.LVL554-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL554-.Ltext0
	.4byte	.LVL555-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL558-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST184:
	.4byte	.LVL545-.Ltext0
	.4byte	.LVL554-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL554-.Ltext0
	.4byte	.LVL557-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL558-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST185:
	.4byte	.LFB99-.Ltext0
	.4byte	.LCFI122-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI122-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST186:
	.4byte	.LVL559-.Ltext0
	.4byte	.LVL562-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL563-.Ltext0
	.4byte	.LVL566-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL568-.Ltext0
	.4byte	.LVL569-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL571-.Ltext0
	.4byte	.LVL572-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL572-.Ltext0
	.4byte	.LVL574-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL576-.Ltext0
	.4byte	.LVL578-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL580-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST187:
	.4byte	.LVL559-.Ltext0
	.4byte	.LVL561-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL563-.Ltext0
	.4byte	.LVL565-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL568-.Ltext0
	.4byte	.LVL570-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL571-.Ltext0
	.4byte	.LVL572-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL572-.Ltext0
	.4byte	.LVL573-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL576-.Ltext0
	.4byte	.LVL577-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL580-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST188:
	.4byte	.LVL559-.Ltext0
	.4byte	.LVL560-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL560-.Ltext0
	.4byte	.LVL564-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL564-.Ltext0
	.4byte	.LVL567-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL567-.Ltext0
	.4byte	.LVL568-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL568-.Ltext0
	.4byte	.LVL570-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL570-.Ltext0
	.4byte	.LVL571-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL571-.Ltext0
	.4byte	.LVL572-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL572-.Ltext0
	.4byte	.LVL575-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL575-.Ltext0
	.4byte	.LVL576-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL576-.Ltext0
	.4byte	.LVL579-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL579-.Ltext0
	.4byte	.LVL581-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL581-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST189:
	.4byte	.LFB97-.Ltext0
	.4byte	.LCFI126-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI126-.Ltext0
	.4byte	.LFE97-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST190:
	.4byte	.LVL582-.Ltext0
	.4byte	.LVL584-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL586-.Ltext0
	.4byte	.LVL588-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL590-.Ltext0
	.4byte	.LVL591-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL591-.Ltext0
	.4byte	.LVL593-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL595-.Ltext0
	.4byte	.LVL597-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL599-.Ltext0
	.4byte	.LFE97-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST191:
	.4byte	.LVL582-.Ltext0
	.4byte	.LVL583-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL586-.Ltext0
	.4byte	.LVL587-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL590-.Ltext0
	.4byte	.LVL591-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL591-.Ltext0
	.4byte	.LVL592-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL595-.Ltext0
	.4byte	.LVL596-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL599-.Ltext0
	.4byte	.LFE97-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST192:
	.4byte	.LVL582-.Ltext0
	.4byte	.LVL585-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL586-.Ltext0
	.4byte	.LVL589-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL590-.Ltext0
	.4byte	.LVL591-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL591-.Ltext0
	.4byte	.LVL594-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL595-.Ltext0
	.4byte	.LVL598-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL599-.Ltext0
	.4byte	.LFE97-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST193:
	.4byte	.LFB95-.Ltext0
	.4byte	.LCFI129-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI129-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST194:
	.4byte	.LVL600-.Ltext0
	.4byte	.LVL603-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL604-.Ltext0
	.4byte	.LVL605-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL606-.Ltext0
	.4byte	.LVL608-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL609-.Ltext0
	.4byte	.LVL610-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL611-.Ltext0
	.4byte	.LVL613-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL614-.Ltext0
	.4byte	.LVL615-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL616-.Ltext0
	.4byte	.LVL618-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL619-.Ltext0
	.4byte	.LVL620-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL621-.Ltext0
	.4byte	.LVL623-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL624-.Ltext0
	.4byte	.LVL625-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL626-.Ltext0
	.4byte	.LVL628-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL629-.Ltext0
	.4byte	.LVL630-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL631-.Ltext0
	.4byte	.LVL633-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL634-.Ltext0
	.4byte	.LVL635-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL636-.Ltext0
	.4byte	.LVL638-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL639-.Ltext0
	.4byte	.LVL640-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL641-.Ltext0
	.4byte	.LVL643-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL644-.Ltext0
	.4byte	.LVL645-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL646-.Ltext0
	.4byte	.LVL648-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL649-.Ltext0
	.4byte	.LVL650-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL651-.Ltext0
	.4byte	.LVL653-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL654-.Ltext0
	.4byte	.LVL655-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL656-.Ltext0
	.4byte	.LVL658-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL659-.Ltext0
	.4byte	.LVL660-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL661-.Ltext0
	.4byte	.LVL663-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL664-.Ltext0
	.4byte	.LVL665-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL666-.Ltext0
	.4byte	.LVL668-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL669-.Ltext0
	.4byte	.LVL670-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL671-.Ltext0
	.4byte	.LVL673-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL674-.Ltext0
	.4byte	.LVL675-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL676-.Ltext0
	.4byte	.LVL677-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL678-.Ltext0
	.4byte	.LVL679-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL680-.Ltext0
	.4byte	.LVL681-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST195:
	.4byte	.LVL600-.Ltext0
	.4byte	.LVL601-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL601-.Ltext0
	.4byte	.LVL602-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL606-.Ltext0
	.4byte	.LVL607-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL611-.Ltext0
	.4byte	.LVL612-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL616-.Ltext0
	.4byte	.LVL617-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL621-.Ltext0
	.4byte	.LVL622-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL626-.Ltext0
	.4byte	.LVL627-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL631-.Ltext0
	.4byte	.LVL632-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL636-.Ltext0
	.4byte	.LVL637-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL641-.Ltext0
	.4byte	.LVL642-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL646-.Ltext0
	.4byte	.LVL647-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL651-.Ltext0
	.4byte	.LVL652-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL656-.Ltext0
	.4byte	.LVL657-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL661-.Ltext0
	.4byte	.LVL662-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL666-.Ltext0
	.4byte	.LVL667-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL671-.Ltext0
	.4byte	.LVL672-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL676-.Ltext0
	.4byte	.LVL680-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL680-.Ltext0
	.4byte	.LVL682-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST196:
	.4byte	.LFB81-.Ltext0
	.4byte	.LCFI131-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI131-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	0x0
	.4byte	0x0
.LLST197:
	.4byte	.LVL683-.Ltext0
	.4byte	.LVL684-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL684-.Ltext0
	.4byte	.LVL736-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL736-.Ltext0
	.4byte	.LVL737-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL737-.Ltext0
	.4byte	.LVL746-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL746-.Ltext0
	.4byte	.LVL747-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL747-.Ltext0
	.4byte	.LVL754-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL754-.Ltext0
	.4byte	.LVL755-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL755-.Ltext0
	.4byte	.LVL761-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL761-.Ltext0
	.4byte	.LVL762-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL762-.Ltext0
	.4byte	.LVL768-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL768-.Ltext0
	.4byte	.LVL769-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL769-.Ltext0
	.4byte	.LVL771-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL771-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST198:
	.4byte	.LVL683-.Ltext0
	.4byte	.LVL696-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL696-.Ltext0
	.4byte	.LVL698-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL698-.Ltext0
	.4byte	.LVL706-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL706-.Ltext0
	.4byte	.LVL708-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL708-.Ltext0
	.4byte	.LVL718-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL718-.Ltext0
	.4byte	.LVL719-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL719-.Ltext0
	.4byte	.LVL725-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL725-.Ltext0
	.4byte	.LVL727-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL727-.Ltext0
	.4byte	.LVL731-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL731-.Ltext0
	.4byte	.LVL732-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL732-.Ltext0
	.4byte	.LVL733-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL733-.Ltext0
	.4byte	.LVL734-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL734-.Ltext0
	.4byte	.LVL735-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL735-.Ltext0
	.4byte	.LVL737-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL737-.Ltext0
	.4byte	.LVL738-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL738-.Ltext0
	.4byte	.LVL741-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL741-.Ltext0
	.4byte	.LVL742-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL742-.Ltext0
	.4byte	.LVL744-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL744-.Ltext0
	.4byte	.LVL745-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL745-.Ltext0
	.4byte	.LVL771-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL771-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST199:
	.4byte	.LVL685-.Ltext0
	.4byte	.LVL687-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL688-.Ltext0
	.4byte	.LVL705-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL770-.Ltext0
	.4byte	.LVL771-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0x0
	.4byte	0x0
.LLST200:
	.4byte	.LVL686-.Ltext0
	.4byte	.LVL687-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL689-.Ltext0
	.4byte	.LVL771-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0x0
	.4byte	0x0
.LLST201:
	.4byte	.LVL739-.Ltext0
	.4byte	.LVL741-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL743-.Ltext0
	.4byte	.LVL744-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL748-.Ltext0
	.4byte	.LVL751-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST202:
	.4byte	.LVL756-.Ltext0
	.4byte	.LVL758-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL759-.Ltext0
	.4byte	.LVL760-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL763-.Ltext0
	.4byte	.LVL765-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST203:
	.4byte	.LVL740-.Ltext0
	.4byte	.LVL741-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL749-.Ltext0
	.4byte	.LVL751-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST204:
	.4byte	.LVL757-.Ltext0
	.4byte	.LVL758-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL764-.Ltext0
	.4byte	.LVL765-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST205:
	.4byte	.LVL712-.Ltext0
	.4byte	.LVL715-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL715-.Ltext0
	.4byte	.LVL716-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL716-.Ltext0
	.4byte	.LVL717-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL717-.Ltext0
	.4byte	.LVL719-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL719-.Ltext0
	.4byte	.LVL720-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL720-.Ltext0
	.4byte	.LVL721-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL721-.Ltext0
	.4byte	.LVL722-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL722-.Ltext0
	.4byte	.LVL723-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL723-.Ltext0
	.4byte	.LVL724-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL724-.Ltext0
	.4byte	.LVL726-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL726-.Ltext0
	.4byte	.LVL728-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL728-.Ltext0
	.4byte	.LVL729-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL729-.Ltext0
	.4byte	.LVL771-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST206:
	.4byte	.LVL695-.Ltext0
	.4byte	.LVL713-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL713-.Ltext0
	.4byte	.LVL771-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST207:
	.4byte	.LVL690-.Ltext0
	.4byte	.LVL691-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL692-.Ltext0
	.4byte	.LVL693-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL694-.Ltext0
	.4byte	.LVL712-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL770-.Ltext0
	.4byte	.LVL771-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST208:
	.4byte	.LVL699-.Ltext0
	.4byte	.LVL700-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL701-.Ltext0
	.4byte	.LVL702-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL703-.Ltext0
	.4byte	.LVL750-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL770-.Ltext0
	.4byte	.LVL771-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST209:
	.4byte	.LVL709-.Ltext0
	.4byte	.LVL710-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL710-.Ltext0
	.4byte	.LVL711-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST210:
	.4byte	.LVL767-.Ltext0
	.4byte	.LVL769-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST211:
	.4byte	.LFB82-.Ltext0
	.4byte	.LCFI136-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI136-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST212:
	.4byte	.LVL772-.Ltext0
	.4byte	.LVL773-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL773-.Ltext0
	.4byte	.LVL774-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL774-.Ltext0
	.4byte	.LVL775-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL775-.Ltext0
	.4byte	.LVL778-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL778-.Ltext0
	.4byte	.LVL779-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL779-.Ltext0
	.4byte	.LVL786-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL786-.Ltext0
	.4byte	.LVL787-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL787-.Ltext0
	.4byte	.LVL788-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL788-.Ltext0
	.4byte	.LVL789-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL789-.Ltext0
	.4byte	.LVL790-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL790-.Ltext0
	.4byte	.LVL791-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL791-.Ltext0
	.4byte	.LVL794-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL794-.Ltext0
	.4byte	.LVL795-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL795-.Ltext0
	.4byte	.LVL796-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST213:
	.4byte	.LVL772-.Ltext0
	.4byte	.LVL775-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL775-.Ltext0
	.4byte	.LVL780-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST214:
	.4byte	.LVL776-.Ltext0
	.4byte	.LVL788-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL788-.Ltext0
	.4byte	.LVL789-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL789-.Ltext0
	.4byte	.LVL796-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST215:
	.4byte	.LVL777-.Ltext0
	.4byte	.LVL796-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST216:
	.4byte	.LVL782-.Ltext0
	.4byte	.LVL796-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST217:
	.4byte	.LVL781-.Ltext0
	.4byte	.LVL783-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST218:
	.4byte	.LFB111-.Ltext0
	.4byte	.LCFI140-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI140-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST219:
	.4byte	.LVL797-.Ltext0
	.4byte	.LVL798-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL798-.Ltext0
	.4byte	.LVL800-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST220:
	.4byte	.LVL797-.Ltext0
	.4byte	.LVL798-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL798-.Ltext0
	.4byte	.LVL800-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST221:
	.4byte	.LFB114-.Ltext0
	.4byte	.LCFI144-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI144-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0x0
	.4byte	0x0
.LLST222:
	.4byte	.LVL801-.Ltext0
	.4byte	.LVL804-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL804-.Ltext0
	.4byte	.LVL812-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST223:
	.4byte	.LVL802-.Ltext0
	.4byte	.LVL812-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST224:
	.4byte	.LVL803-.Ltext0
	.4byte	.LVL812-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST225:
	.4byte	.LVL804-.Ltext0
	.4byte	.LVL807-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL809-.Ltext0
	.4byte	.LVL810-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST226:
	.4byte	.LVL804-.Ltext0
	.4byte	.LVL805-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL806-.Ltext0
	.4byte	.LVL808-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL809-.Ltext0
	.4byte	.LVL811-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST227:
	.4byte	.LVL804-.Ltext0
	.4byte	.LVL808-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL809-.Ltext0
	.4byte	.LVL811-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
	.file 3 "c:/devkitPro/libogc/include/gctypes.h"
	.file 4 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h"
	.file 5 "c:/devkitPro/libogc/include/ogc/gu.h"
	.file 6 "c:/devkitPro/libogc/include/ogc/gx.h"
	.file 7 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/include/GL/gl.h"
	.file 8 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/include/mat_stack.h"
	.section	.debug_info
	.4byte	0x224f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF277
	.byte	0x1
	.4byte	.LASF278
	.4byte	.LASF279
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0xd6
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x7
	.string	"u8"
	.byte	0x3
	.byte	0xf
	.4byte	0x3a
	.uleb128 0x7
	.string	"u32"
	.byte	0x3
	.byte	0x11
	.4byte	0x30
	.uleb128 0x7
	.string	"s8"
	.byte	0x3
	.byte	0x14
	.4byte	0x4a
	.uleb128 0x7
	.string	"s32"
	.byte	0x3
	.byte	0x16
	.4byte	0x58
	.uleb128 0x7
	.string	"f32"
	.byte	0x3
	.byte	0x29
	.4byte	0x89
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x35
	.4byte	0x97
	.uleb128 0x8
	.byte	0x4
	.byte	0x3
	.byte	0x36
	.4byte	0xec
	.uleb128 0x9
	.4byte	.LASF15
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF16
	.sleb128 1
	.byte	0x0
	.uleb128 0xa
	.4byte	0xa1
	.4byte	0xfc
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0xc
	.byte	0x5
	.byte	0x27
	.4byte	0x12d
	.uleb128 0xd
	.string	"x"
	.byte	0x5
	.byte	0x28
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"y"
	.byte	0x5
	.byte	0x28
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"z"
	.byte	0x5
	.byte	0x28
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x29
	.4byte	0xfc
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x4
	.byte	0x6
	.2byte	0x3b8
	.4byte	0x17a
	.uleb128 0xf
	.string	"r"
	.byte	0x6
	.2byte	0x3b9
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"g"
	.byte	0x6
	.2byte	0x3ba
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xf
	.string	"b"
	.byte	0x6
	.2byte	0x3bb
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.string	"a"
	.byte	0x6
	.2byte	0x3bc
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x3bd
	.4byte	0x138
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x20
	.byte	0x6
	.2byte	0x3c6
	.4byte	0x1a3
	.uleb128 0xf
	.string	"val"
	.byte	0x6
	.2byte	0x3c7
	.4byte	0xec
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x3c8
	.4byte	0x186
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x40
	.byte	0x6
	.2byte	0x3d6
	.4byte	0x1cc
	.uleb128 0xf
	.string	"val"
	.byte	0x6
	.2byte	0x3d7
	.4byte	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.4byte	0xa1
	.4byte	0x1dc
	.uleb128 0xb
	.4byte	0x37
	.byte	0xf
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x3d8
	.4byte	0x1af
	.uleb128 0x11
	.byte	0x4
	.4byte	0x97
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1f4
	.uleb128 0x12
	.uleb128 0x11
	.byte	0x4
	.4byte	0xa1
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x7
	.byte	0x92
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x7
	.byte	0x93
	.4byte	0x3a
	.uleb128 0x13
	.4byte	.LASF280
	.byte	0x7
	.byte	0x95
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x7
	.byte	0x98
	.4byte	0x58
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x7
	.byte	0x9b
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x7
	.byte	0x9c
	.4byte	0x58
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x7
	.byte	0x9d
	.4byte	0x89
	.uleb128 0x11
	.byte	0x4
	.4byte	0x24a
	.uleb128 0x14
	.4byte	0x211
	.uleb128 0x11
	.byte	0x4
	.4byte	0x255
	.uleb128 0x14
	.4byte	0x239
	.uleb128 0x11
	.byte	0x4
	.4byte	0x260
	.uleb128 0x14
	.4byte	0x218
	.uleb128 0x11
	.byte	0x4
	.4byte	0x218
	.uleb128 0x11
	.byte	0x4
	.4byte	0x271
	.uleb128 0x14
	.4byte	0x223
	.uleb128 0x11
	.byte	0x4
	.4byte	0x223
	.uleb128 0x14
	.4byte	0x1fb
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1fb
	.uleb128 0x15
	.byte	0x10
	.byte	0x2
	.byte	0x16
	.4byte	0x2a8
	.uleb128 0xd
	.string	"v"
	.byte	0x2
	.byte	0x17
	.4byte	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"w"
	.byte	0x2
	.byte	0x18
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x2
	.byte	0x19
	.4byte	0x287
	.uleb128 0x15
	.byte	0x8
	.byte	0x2
	.byte	0x1c
	.4byte	0x2d4
	.uleb128 0xd
	.string	"s"
	.byte	0x2
	.byte	0x1d
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"t"
	.byte	0x2
	.byte	0x1e
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x2
	.byte	0x1f
	.4byte	0x2b3
	.uleb128 0x15
	.byte	0x10
	.byte	0x2
	.byte	0x22
	.4byte	0x318
	.uleb128 0xd
	.string	"r"
	.byte	0x2
	.byte	0x23
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"g"
	.byte	0x2
	.byte	0x24
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"b"
	.byte	0x2
	.byte	0x25
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"a"
	.byte	0x2
	.byte	0x26
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x2
	.byte	0x27
	.4byte	0x2df
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x14
	.byte	0x2
	.byte	0x42
	.4byte	0x374
	.uleb128 0x16
	.4byte	.LASF35
	.byte	0x2
	.byte	0x43
	.4byte	0xcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"p"
	.byte	0x2
	.byte	0x44
	.4byte	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF36
	.byte	0x2
	.byte	0x45
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF37
	.byte	0x2
	.byte	0x46
	.4byte	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF38
	.byte	0x2
	.byte	0x47
	.4byte	0x1fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x2
	.byte	0x48
	.4byte	0x323
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x10
	.byte	0x8
	.byte	0xd
	.4byte	0x3c4
	.uleb128 0x16
	.4byte	.LASF41
	.byte	0x8
	.byte	0xe
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF42
	.byte	0x8
	.byte	0xf
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF37
	.byte	0x8
	.byte	0x10
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"cur"
	.byte	0x8
	.byte	0x11
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x8
	.byte	0x12
	.4byte	0x37f
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0xa4
	.byte	0x2
	.byte	0x7e
	.4byte	0x48a
	.uleb128 0x16
	.4byte	.LASF45
	.byte	0x2
	.byte	0x7f
	.4byte	0xcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"obj"
	.byte	0x2
	.byte	0x81
	.4byte	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"pos"
	.byte	0x2
	.byte	0x83
	.4byte	0x2a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x16
	.4byte	.LASF46
	.byte	0x2
	.byte	0x85
	.4byte	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0x2
	.byte	0x87
	.4byte	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x16
	.4byte	.LASF48
	.byte	0x2
	.byte	0x88
	.4byte	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x16
	.4byte	.LASF49
	.byte	0x2
	.byte	0x89
	.4byte	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x16
	.4byte	.LASF50
	.byte	0x2
	.byte	0x8b
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x2
	.byte	0x8c
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x2
	.byte	0x8d
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0x2
	.byte	0x8e
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x16
	.4byte	.LASF54
	.byte	0x2
	.byte	0x8f
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0x2
	.byte	0x90
	.4byte	0x3cf
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x44
	.byte	0x2
	.byte	0x9b
	.4byte	0x4e8
	.uleb128 0x16
	.4byte	.LASF57
	.byte	0x2
	.byte	0x9c
	.4byte	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0x2
	.byte	0x9d
	.4byte	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.4byte	.LASF48
	.byte	0x2
	.byte	0x9e
	.4byte	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.4byte	.LASF49
	.byte	0x2
	.byte	0x9f
	.4byte	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x16
	.4byte	.LASF58
	.byte	0x2
	.byte	0xa0
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x2
	.byte	0xa1
	.4byte	0x495
	.uleb128 0x17
	.4byte	.LASF281
	.byte	0x4
	.byte	0x2
	.byte	0xba
	.4byte	0x512
	.uleb128 0x9
	.4byte	.LASF60
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF61
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF62
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x2
	.byte	0xbe
	.4byte	0x4f3
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x10
	.byte	0x2
	.byte	0xe3
	.4byte	0x55e
	.uleb128 0xd
	.string	"x"
	.byte	0x2
	.byte	0xe4
	.4byte	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"y"
	.byte	0x2
	.byte	0xe5
	.4byte	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x2
	.byte	0xe6
	.4byte	0x22e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x2
	.byte	0xe7
	.4byte	0x22e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x2
	.byte	0xe8
	.4byte	0x51d
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x14
	.byte	0x2
	.byte	0xf8
	.4byte	0x5ca
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x2
	.byte	0xf9
	.4byte	0xcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF69
	.byte	0x2
	.byte	0xfa
	.4byte	0xcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x16
	.4byte	.LASF70
	.byte	0x2
	.byte	0xfb
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x2
	.byte	0xfc
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x2
	.byte	0xfd
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF73
	.byte	0x2
	.byte	0xfe
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0x2
	.byte	0xff
	.4byte	0x569
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x8
	.byte	0x2
	.2byte	0x114
	.4byte	0x601
	.uleb128 0x18
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x115
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.4byte	.LASF77
	.byte	0x2
	.2byte	0x116
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x117
	.4byte	0x5d5
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0x6c
	.byte	0x2
	.2byte	0x124
	.4byte	0x765
	.uleb128 0x18
	.4byte	.LASF45
	.byte	0x2
	.2byte	0x125
	.4byte	0xcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x2
	.2byte	0x127
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x128
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x18
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x129
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x12a
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x12b
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x12c
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.4byte	.LASF86
	.byte	0x2
	.2byte	0x12d
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x12e
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x12f
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0x2
	.2byte	0x130
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x18
	.4byte	.LASF90
	.byte	0x2
	.2byte	0x132
	.4byte	0x1fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x18
	.4byte	.LASF91
	.byte	0x2
	.2byte	0x134
	.4byte	0x1fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x18
	.4byte	.LASF92
	.byte	0x2
	.2byte	0x135
	.4byte	0x1fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x18
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x137
	.4byte	0x765
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x138
	.4byte	0x765
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x139
	.4byte	0x765
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x2
	.2byte	0x13a
	.4byte	0x765
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"tex"
	.byte	0x2
	.2byte	0x13c
	.4byte	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x2
	.2byte	0x13e
	.4byte	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x2
	.2byte	0x140
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x2
	.2byte	0x141
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0x0
	.uleb128 0xa
	.4byte	0x1fb
	.4byte	0x775
	.uleb128 0xb
	.4byte	0x37
	.byte	0x2
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0x2
	.2byte	0x142
	.4byte	0x60d
	.uleb128 0xc
	.4byte	.LASF101
	.byte	0x4c
	.byte	0x1
	.byte	0xa4
	.4byte	0x836
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x1
	.byte	0xa5
	.4byte	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0x1
	.byte	0xa6
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x1
	.byte	0xa8
	.4byte	0x836
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x1
	.byte	0xaa
	.4byte	0x22e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x1
	.byte	0xab
	.4byte	0x22e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.4byte	.LASF37
	.byte	0x1
	.byte	0xac
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.4byte	.LASF105
	.byte	0x1
	.byte	0xae
	.4byte	0x1fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.4byte	.LASF106
	.byte	0x1
	.byte	0xaf
	.4byte	0x1a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0x1
	.byte	0xb0
	.4byte	0x1fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x1
	.byte	0xb2
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x1
	.byte	0xb3
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x1
	.byte	0xb4
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.byte	0x0
	.uleb128 0xa
	.4byte	0xcc
	.4byte	0x846
	.uleb128 0xb
	.4byte	0x37
	.byte	0xa
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0x1
	.byte	0xb5
	.4byte	0x781
	.uleb128 0xc
	.4byte	.LASF111
	.byte	0x10
	.byte	0x1
	.byte	0xb9
	.4byte	0x896
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x1
	.byte	0xba
	.4byte	0x896
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x1
	.byte	0xbb
	.4byte	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x1
	.byte	0xbc
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0x1
	.byte	0xbd
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x846
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0x1
	.byte	0xbe
	.4byte	0x851
	.uleb128 0x19
	.4byte	.LASF282
	.byte	0x2
	.2byte	0x158
	.byte	0x1
	.byte	0x3
	.4byte	0x8d6
	.uleb128 0x1a
	.4byte	.LASF117
	.byte	0x2
	.2byte	0x157
	.4byte	0x8d6
	.uleb128 0x1b
	.string	"n"
	.byte	0x2
	.2byte	0x157
	.4byte	0x25
	.uleb128 0x1c
	.string	"p"
	.byte	0x2
	.2byte	0x159
	.4byte	0x8dc
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x48
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1e8
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x65b
	.byte	0x1
	.4byte	0x58
	.byte	0x1
	.4byte	0x902
	.uleb128 0x1a
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x65b
	.4byte	0x58
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x616
	.byte	0x1
	.4byte	0xa1
	.byte	0x1
	.4byte	0x92e
	.uleb128 0x1a
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x615
	.4byte	0x218
	.uleb128 0x1a
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x615
	.4byte	0x92e
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x58
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x191
	.byte	0x1
	.4byte	0x97
	.byte	0x1
	.4byte	0x952
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.2byte	0x190
	.4byte	0x97
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x181
	.byte	0x1
	.4byte	0x97
	.byte	0x1
	.4byte	0x970
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.2byte	0x180
	.4byte	0x97
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF125
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.4byte	.LFB71
	.4byte	.LFE71
	.byte	0x1
	.byte	0x51
	.4byte	0x9f0
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0xc4
	.4byte	0x97
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LASF38
	.byte	0x1
	.byte	0xc4
	.4byte	0x1fb
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	.LASF124
	.byte	0x1
	.byte	0xc4
	.4byte	0x265
	.byte	0x1
	.byte	0x55
	.uleb128 0x20
	.string	"r"
	.byte	0x1
	.byte	0xc6
	.4byte	0x218
	.4byte	.LLST1
	.uleb128 0x20
	.string	"g"
	.byte	0x1
	.byte	0xc6
	.4byte	0x218
	.4byte	.LLST2
	.uleb128 0x20
	.string	"b"
	.byte	0x1
	.byte	0xc6
	.4byte	0x218
	.4byte	.LLST3
	.uleb128 0x20
	.string	"a"
	.byte	0x1
	.byte	0xc6
	.4byte	0x218
	.4byte	.LLST4
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0xc6
	.4byte	0x218
	.4byte	.LLST5
	.byte	0x0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x10d
	.byte	0x1
	.4byte	.LFB73
	.4byte	.LFE73
	.byte	0x1
	.byte	0x51
	.4byte	0xa5a
	.uleb128 0x22
	.string	"src"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x1fb
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"op"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x1fb
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"C"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x1e8
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x10c
	.4byte	0xa5a
	.byte	0x1
	.byte	0x56
	.uleb128 0x23
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x10c
	.4byte	0x97
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x10c
	.4byte	0x97
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0xac
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x13a
	.byte	0x1
	.4byte	.LFB74
	.4byte	.LFE74
	.byte	0x1
	.byte	0x51
	.4byte	0xabc
	.uleb128 0x22
	.string	"src"
	.byte	0x1
	.2byte	0x139
	.4byte	0x1fb
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"op"
	.byte	0x1
	.2byte	0x139
	.4byte	0x1fb
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"C"
	.byte	0x1
	.2byte	0x139
	.4byte	0x1e8
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x139
	.4byte	0xa5a
	.byte	0x1
	.byte	0x56
	.uleb128 0x23
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x139
	.4byte	0x97
	.byte	0x1
	.byte	0x57
	.byte	0x0
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x155
	.byte	0x1
	.4byte	0x97
	.4byte	.LFB75
	.4byte	.LFE75
	.byte	0x1
	.byte	0x51
	.4byte	0xae7
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.2byte	0x154
	.4byte	0x97
	.4byte	.LLST9
	.byte	0x0
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x160
	.byte	0x1
	.4byte	0x97
	.4byte	.LFB76
	.4byte	.LFE76
	.byte	0x1
	.byte	0x51
	.4byte	0xb12
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.2byte	0x15f
	.4byte	0x97
	.4byte	.LLST11
	.byte	0x0
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x16b
	.byte	0x1
	.4byte	0x97
	.4byte	.LFB77
	.4byte	.LFE77
	.byte	0x1
	.byte	0x51
	.4byte	0xb3d
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.2byte	0x16a
	.4byte	0x97
	.4byte	.LLST13
	.byte	0x0
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x176
	.byte	0x1
	.4byte	0x97
	.4byte	.LFB78
	.4byte	.LFE78
	.byte	0x1
	.byte	0x51
	.4byte	0xb68
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.2byte	0x175
	.4byte	0x97
	.4byte	.LLST15
	.byte	0x0
	.uleb128 0x26
	.4byte	0x952
	.4byte	.LFB79
	.4byte	.LFE79
	.byte	0x1
	.byte	0x51
	.4byte	0xb85
	.uleb128 0x27
	.4byte	0x965
	.4byte	.LLST17
	.byte	0x0
	.uleb128 0x26
	.4byte	0x934
	.4byte	.LFB80
	.4byte	.LFE80
	.byte	0x1
	.byte	0x51
	.4byte	0xba2
	.uleb128 0x27
	.4byte	0x947
	.4byte	.LLST19
	.byte	0x0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x311
	.byte	0x1
	.4byte	.LFB83
	.4byte	.LFE83
	.byte	0x1
	.byte	0x51
	.4byte	0xbca
	.uleb128 0x22
	.string	"val"
	.byte	0x1
	.2byte	0x310
	.4byte	0x239
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x321
	.byte	0x1
	.4byte	.LFB84
	.4byte	.LFE84
	.byte	0x1
	.byte	0x51
	.4byte	0xbf2
	.uleb128 0x22
	.string	"val"
	.byte	0x1
	.2byte	0x320
	.4byte	0x239
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x28
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x458
	.byte	0x1
	.4byte	0x239
	.4byte	.LFB98
	.4byte	.LFE98
	.4byte	.LLST22
	.4byte	0xc1c
	.uleb128 0x22
	.string	"t"
	.byte	0x1
	.2byte	0x457
	.4byte	0xb6
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x57b
	.byte	0x1
	.4byte	0x97
	.4byte	.LFB106
	.4byte	.LFE106
	.byte	0x1
	.byte	0x51
	.4byte	0xc57
	.uleb128 0x29
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x57a
	.4byte	0xc57
	.4byte	.LLST24
	.uleb128 0x23
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x57a
	.4byte	0x223
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x89c
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x586
	.byte	0x1
	.4byte	0x896
	.byte	0x1
	.4byte	0xc89
	.uleb128 0x1a
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x585
	.4byte	0xc57
	.uleb128 0x1a
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x585
	.4byte	0x223
	.byte	0x0
	.uleb128 0x26
	.4byte	0xc5d
	.4byte	.LFB107
	.4byte	.LFE107
	.byte	0x1
	.byte	0x51
	.4byte	0xcaf
	.uleb128 0x27
	.4byte	0xc70
	.4byte	.LLST26
	.uleb128 0x27
	.4byte	0xc7c
	.4byte	.LLST27
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x58b
	.byte	0x1
	.4byte	0x896
	.4byte	.LFB108
	.4byte	.LFE108
	.4byte	.LLST28
	.4byte	0xcde
	.uleb128 0x29
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x58a
	.4byte	0xc57
	.4byte	.LLST29
	.byte	0x0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x5cc
	.byte	0x1
	.4byte	.LFB112
	.4byte	.LFE112
	.byte	0x1
	.byte	0x51
	.4byte	0xd05
	.uleb128 0x22
	.string	"val"
	.byte	0x1
	.2byte	0x5cb
	.4byte	0xcc
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x5d0
	.byte	0x1
	.4byte	0xcc
	.4byte	.LFB113
	.4byte	.LFE113
	.byte	0x1
	.byte	0x51
	.4byte	0xd32
	.uleb128 0x25
	.string	"tex"
	.byte	0x1
	.2byte	0x5cf
	.4byte	0x58
	.4byte	.LLST32
	.byte	0x0
	.uleb128 0x26
	.4byte	0x902
	.4byte	.LFB115
	.4byte	.LFE115
	.byte	0x1
	.byte	0x51
	.4byte	0xd56
	.uleb128 0x27
	.4byte	0x915
	.4byte	.LLST34
	.uleb128 0x2b
	.4byte	0x921
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x26
	.4byte	0x8e2
	.4byte	.LFB117
	.4byte	.LFE117
	.byte	0x1
	.byte	0x51
	.4byte	0xd73
	.uleb128 0x27
	.4byte	0x8f5
	.4byte	.LLST36
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x7ec
	.byte	0x1
	.4byte	0x206
	.4byte	.LFB124
	.4byte	.LFE124
	.4byte	.LLST37
	.4byte	0xda2
	.uleb128 0x29
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x7ec
	.4byte	0x223
	.4byte	.LLST38
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x678
	.byte	0x1
	.4byte	0x58
	.4byte	.LFB119
	.4byte	.LFE119
	.4byte	.LLST39
	.4byte	0xde1
	.uleb128 0x29
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x677
	.4byte	0x1fb
	.4byte	.LLST40
	.uleb128 0x29
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x677
	.4byte	0x1fb
	.4byte	.LLST41
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x3d4
	.byte	0x1
	.4byte	.LFB93
	.4byte	.LFE93
	.4byte	.LLST42
	.4byte	0xe1a
	.uleb128 0x29
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x3d3
	.4byte	0x27c
	.4byte	.LLST43
	.uleb128 0x25
	.string	"p"
	.byte	0x1
	.2byte	0x3d3
	.4byte	0x281
	.4byte	.LLST44
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x3c2
	.byte	0x1
	.4byte	.LFB92
	.4byte	.LFE92
	.4byte	.LLST45
	.4byte	0xe53
	.uleb128 0x29
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x3c1
	.4byte	0x27c
	.4byte	.LLST46
	.uleb128 0x25
	.string	"p"
	.byte	0x1
	.2byte	0x3c1
	.4byte	0x281
	.4byte	.LLST47
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x3b6
	.byte	0x1
	.4byte	.LFB91
	.4byte	.LFE91
	.4byte	.LLST48
	.4byte	0xe8c
	.uleb128 0x29
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x3b5
	.4byte	0x27c
	.4byte	.LLST49
	.uleb128 0x25
	.string	"p"
	.byte	0x1
	.2byte	0x3b5
	.4byte	0x281
	.4byte	.LLST50
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x3a8
	.byte	0x1
	.4byte	.LFB90
	.4byte	.LFE90
	.4byte	.LLST51
	.4byte	0xec5
	.uleb128 0x29
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x3a7
	.4byte	0x27c
	.4byte	.LLST52
	.uleb128 0x25
	.string	"p"
	.byte	0x1
	.2byte	0x3a7
	.4byte	0x281
	.4byte	.LLST53
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x395
	.byte	0x1
	.4byte	.LFB89
	.4byte	.LFE89
	.4byte	.LLST54
	.4byte	0xefe
	.uleb128 0x29
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x394
	.4byte	0x27c
	.4byte	.LLST55
	.uleb128 0x25
	.string	"p"
	.byte	0x1
	.2byte	0x394
	.4byte	0x281
	.4byte	.LLST56
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x385
	.byte	0x1
	.4byte	.LFB88
	.4byte	.LFE88
	.4byte	.LLST57
	.4byte	0xf37
	.uleb128 0x29
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x384
	.4byte	0x27c
	.4byte	.LLST58
	.uleb128 0x25
	.string	"p"
	.byte	0x1
	.2byte	0x384
	.4byte	0x281
	.4byte	.LLST59
	.byte	0x0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF152
	.byte	0x1
	.byte	0xe1
	.byte	0x1
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LLST60
	.4byte	0xf8d
	.uleb128 0x2e
	.4byte	.LASF105
	.byte	0x1
	.byte	0xdf
	.4byte	0x1fb
	.4byte	.LLST61
	.uleb128 0x2e
	.4byte	.LASF104
	.byte	0x1
	.byte	0xdf
	.4byte	0x218
	.4byte	.LLST62
	.uleb128 0x2e
	.4byte	.LASF153
	.byte	0x1
	.byte	0xe0
	.4byte	0x1fb
	.4byte	.LLST63
	.uleb128 0x2e
	.4byte	.LASF154
	.byte	0x1
	.byte	0xe0
	.4byte	0x265
	.4byte	.LLST64
	.byte	0x0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF155
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LLST65
	.4byte	0xfc2
	.uleb128 0x2f
	.string	"p1"
	.byte	0x1
	.byte	0x91
	.4byte	0x218
	.4byte	.LLST66
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.byte	0x91
	.4byte	0x1e8
	.4byte	.LLST67
	.byte	0x0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF156
	.byte	0x1
	.byte	0x85
	.byte	0x1
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LLST68
	.4byte	0xff7
	.uleb128 0x2f
	.string	"p1"
	.byte	0x1
	.byte	0x84
	.4byte	0x218
	.4byte	.LLST69
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.byte	0x84
	.4byte	0x1e8
	.4byte	.LLST70
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x331
	.byte	0x1
	.4byte	.LFB85
	.4byte	.LFE85
	.4byte	.LLST71
	.4byte	0x1042
	.uleb128 0x29
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x330
	.4byte	0x1fb
	.4byte	.LLST72
	.uleb128 0x29
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x330
	.4byte	0x1fb
	.4byte	.LLST73
	.uleb128 0x29
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x330
	.4byte	0x218
	.4byte	.LLST74
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x34f
	.byte	0x1
	.4byte	.LFB86
	.4byte	.LFE86
	.4byte	.LLST75
	.4byte	0x108d
	.uleb128 0x29
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x34e
	.4byte	0x1fb
	.4byte	.LLST76
	.uleb128 0x29
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x34e
	.4byte	0x1fb
	.4byte	.LLST77
	.uleb128 0x29
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x34e
	.4byte	0x239
	.4byte	.LLST78
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x36a
	.byte	0x1
	.4byte	.LFB87
	.4byte	.LFE87
	.4byte	.LLST79
	.4byte	0x10d8
	.uleb128 0x29
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x369
	.4byte	0x1fb
	.4byte	.LLST80
	.uleb128 0x29
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x369
	.4byte	0x1fb
	.4byte	.LLST81
	.uleb128 0x29
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x369
	.4byte	0x24f
	.4byte	.LLST82
	.byte	0x0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF160
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LLST83
	.4byte	0x1110
	.uleb128 0x2e
	.4byte	.LASF153
	.byte	0x1
	.byte	0x6e
	.4byte	0x1fb
	.4byte	.LLST84
	.uleb128 0x2e
	.4byte	.LASF154
	.byte	0x1
	.byte	0x6e
	.4byte	0x265
	.4byte	.LLST85
	.byte	0x0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF161
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LLST86
	.4byte	0x1148
	.uleb128 0x2e
	.4byte	.LASF153
	.byte	0x1
	.byte	0x15
	.4byte	0x1fb
	.4byte	.LLST87
	.uleb128 0x2e
	.4byte	.LASF124
	.byte	0x1
	.byte	0x15
	.4byte	0x218
	.4byte	.LLST88
	.byte	0x0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF162
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LLST89
	.4byte	0x1180
	.uleb128 0x2e
	.4byte	.LASF153
	.byte	0x1
	.byte	0x10
	.4byte	0x1fb
	.4byte	.LLST90
	.uleb128 0x2e
	.4byte	.LASF124
	.byte	0x1
	.byte	0x10
	.4byte	0x239
	.4byte	.LLST91
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x55c
	.byte	0x1
	.4byte	.LFB105
	.4byte	.LFE105
	.4byte	.LLST92
	.4byte	0x11e1
	.uleb128 0x29
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x55b
	.4byte	0xc57
	.4byte	.LLST93
	.uleb128 0x29
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x55b
	.4byte	0x223
	.4byte	.LLST94
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.2byte	0x55d
	.4byte	0x25
	.uleb128 0x30
	.string	"tex"
	.byte	0x1
	.2byte	0x562
	.4byte	0x896
	.4byte	.LLST95
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.2byte	0x56e
	.4byte	0x58
	.byte	0x1
	.byte	0x5b
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x7d5
	.byte	0x1
	.4byte	.LFB123
	.4byte	.LFE123
	.4byte	.LLST96
	.4byte	0x1228
	.uleb128 0x25
	.string	"n"
	.byte	0x1
	.2byte	0x7d4
	.4byte	0x22e
	.4byte	.LLST97
	.uleb128 0x29
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x7d4
	.4byte	0x26b
	.4byte	.LLST98
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.2byte	0x7d8
	.4byte	0x25
	.4byte	.LLST99
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x660
	.byte	0x1
	.4byte	0x48
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	.LLST100
	.4byte	0x12ae
	.uleb128 0x25
	.string	"tex"
	.byte	0x1
	.2byte	0x65f
	.4byte	0x896
	.4byte	.LLST101
	.uleb128 0x29
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x65f
	.4byte	0x218
	.4byte	.LLST102
	.uleb128 0x32
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x666
	.4byte	0xa1
	.4byte	.LLST103
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.2byte	0x671
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.4byte	0x8a7
	.4byte	.LBB25
	.4byte	.LBE25
	.byte	0x1
	.2byte	0x672
	.uleb128 0x34
	.4byte	0x8c1
	.uleb128 0x34
	.4byte	0x8b5
	.uleb128 0x35
	.4byte	.LBB26
	.4byte	.LBE26
	.uleb128 0x36
	.4byte	0x8cb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x6c6
	.byte	0x1
	.4byte	.LFB120
	.4byte	.LFE120
	.4byte	.LLST104
	.4byte	0x13a2
	.uleb128 0x29
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x6c1
	.4byte	0x1fb
	.4byte	.LLST105
	.uleb128 0x29
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x6c1
	.4byte	0x218
	.4byte	.LLST106
	.uleb128 0x29
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x6c2
	.4byte	0x218
	.4byte	.LLST107
	.uleb128 0x29
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x6c2
	.4byte	0x218
	.4byte	.LLST108
	.uleb128 0x29
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x6c3
	.4byte	0x22e
	.4byte	.LLST109
	.uleb128 0x29
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x6c3
	.4byte	0x22e
	.4byte	.LLST110
	.uleb128 0x29
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x6c4
	.4byte	0x1fb
	.4byte	.LLST111
	.uleb128 0x29
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x6c4
	.4byte	0x1fb
	.4byte	.LLST112
	.uleb128 0x23
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x6c5
	.4byte	0x244
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x6de
	.4byte	0x58
	.uleb128 0x30
	.string	"tex"
	.byte	0x1
	.2byte	0x6e5
	.4byte	0x896
	.4byte	.LLST113
	.uleb128 0x1c
	.string	"b"
	.byte	0x1
	.2byte	0x6ed
	.4byte	0x239
	.uleb128 0x1c
	.string	"w"
	.byte	0x1
	.2byte	0x6ee
	.4byte	0x239
	.uleb128 0x1c
	.string	"h"
	.byte	0x1
	.2byte	0x6ef
	.4byte	0x239
	.uleb128 0x32
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x706
	.4byte	0x48
	.4byte	.LLST114
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x64c
	.byte	0x1
	.4byte	0x48
	.4byte	.LFB116
	.4byte	.LFE116
	.4byte	.LLST115
	.4byte	0x1421
	.uleb128 0x29
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x64b
	.4byte	0xa1
	.4byte	.LLST116
	.uleb128 0x29
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x64b
	.4byte	0x22e
	.4byte	.LLST117
	.uleb128 0x29
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x64b
	.4byte	0x22e
	.4byte	.LLST118
	.uleb128 0x29
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x64b
	.4byte	0x1421
	.4byte	.LLST119
	.uleb128 0x29
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x64b
	.4byte	0x97
	.4byte	.LLST120
	.uleb128 0x30
	.string	"ptr"
	.byte	0x1
	.2byte	0x64f
	.4byte	0x48
	.4byte	.LLST121
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x25
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x732
	.byte	0x1
	.4byte	.LFB122
	.4byte	.LFE122
	.4byte	.LLST122
	.4byte	0x1601
	.uleb128 0x29
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x72d
	.4byte	0x1fb
	.4byte	.LLST123
	.uleb128 0x29
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x72d
	.4byte	0x218
	.4byte	.LLST124
	.uleb128 0x29
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x72e
	.4byte	0x218
	.4byte	.LLST125
	.uleb128 0x29
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x72f
	.4byte	0x22e
	.4byte	.LLST126
	.uleb128 0x29
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x72f
	.4byte	0x22e
	.4byte	.LLST127
	.uleb128 0x29
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x730
	.4byte	0x218
	.4byte	.LLST128
	.uleb128 0x29
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x730
	.4byte	0x1fb
	.4byte	.LLST129
	.uleb128 0x29
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x730
	.4byte	0x1fb
	.4byte	.LLST130
	.uleb128 0x29
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x731
	.4byte	0x244
	.4byte	.LLST131
	.uleb128 0x32
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x737
	.4byte	0xcc
	.4byte	.LLST132
	.uleb128 0x37
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x764
	.4byte	0x58
	.uleb128 0x32
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x76b
	.4byte	0xa1
	.4byte	.LLST133
	.uleb128 0x32
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x775
	.4byte	0x25
	.4byte	.LLST134
	.uleb128 0x30
	.string	"tex"
	.byte	0x1
	.2byte	0x777
	.4byte	0x896
	.4byte	.LLST135
	.uleb128 0x32
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x779
	.4byte	0x22e
	.4byte	.LLST136
	.uleb128 0x32
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x77a
	.4byte	0x22e
	.4byte	.LLST137
	.uleb128 0x37
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x77f
	.4byte	0xcc
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x782
	.4byte	0xcc
	.uleb128 0x38
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	0x1573
	.uleb128 0x30
	.string	"tex"
	.byte	0x1
	.2byte	0x73d
	.4byte	0x896
	.4byte	.LLST138
	.byte	0x0
	.uleb128 0x38
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	0x1591
	.uleb128 0x30
	.string	"tex"
	.byte	0x1
	.2byte	0x743
	.4byte	0x896
	.4byte	.LLST139
	.byte	0x0
	.uleb128 0x39
	.4byte	0x902
	.4byte	.LBB40
	.4byte	.LBE40
	.byte	0x1
	.2byte	0x76b
	.4byte	0x15b0
	.uleb128 0x34
	.4byte	0xd4e
	.uleb128 0x34
	.4byte	0xd45
	.byte	0x0
	.uleb128 0x38
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	0x15e6
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.2byte	0x792
	.4byte	0x58
	.4byte	.LLST140
	.uleb128 0x35
	.4byte	.LBB43
	.4byte	.LBE43
	.uleb128 0x32
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x7ac
	.4byte	0x58
	.4byte	.LLST141
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.4byte	.LBB44
	.4byte	.LBE44
	.uleb128 0x32
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x7c2
	.4byte	0x48
	.4byte	.LLST142
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x71d
	.byte	0x1
	.4byte	.LFB121
	.4byte	.LFE121
	.4byte	.LLST143
	.4byte	0x169c
	.uleb128 0x29
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x715
	.4byte	0x1fb
	.4byte	.LLST144
	.uleb128 0x29
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x716
	.4byte	0x218
	.4byte	.LLST145
	.uleb128 0x29
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x717
	.4byte	0x218
	.4byte	.LLST146
	.uleb128 0x29
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x718
	.4byte	0x22e
	.4byte	.LLST147
	.uleb128 0x29
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x719
	.4byte	0x218
	.4byte	.LLST148
	.uleb128 0x29
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x71a
	.4byte	0x1fb
	.4byte	.LLST149
	.uleb128 0x29
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x71b
	.4byte	0x1fb
	.4byte	.LLST150
	.uleb128 0x29
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x71c
	.4byte	0x244
	.4byte	.LLST151
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x543
	.byte	0x1
	.4byte	.LFB104
	.4byte	.LFE104
	.4byte	.LLST152
	.4byte	0x16f1
	.uleb128 0x29
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x542
	.4byte	0xc57
	.4byte	.LLST153
	.uleb128 0x29
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x542
	.4byte	0x223
	.4byte	.LLST154
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.2byte	0x544
	.4byte	0x25
	.4byte	.LLST155
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.2byte	0x552
	.4byte	0x58
	.byte	0x1
	.byte	0x5b
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x500
	.byte	0x1
	.4byte	0xcc
	.4byte	.LFB103
	.4byte	.LFE103
	.4byte	.LLST156
	.4byte	0x1758
	.uleb128 0x29
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x4ff
	.4byte	0xc57
	.4byte	.LLST157
	.uleb128 0x25
	.string	"n"
	.byte	0x1
	.2byte	0x4ff
	.4byte	0x25
	.4byte	.LLST158
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.2byte	0x501
	.4byte	0x25
	.4byte	.LLST159
	.uleb128 0x37
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x524
	.4byte	0x896
	.uleb128 0x32
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x52b
	.4byte	0x1e8
	.4byte	.LLST160
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x594
	.byte	0x1
	.4byte	0x223
	.4byte	.LFB109
	.4byte	.LFE109
	.4byte	.LLST161
	.4byte	0x1795
	.uleb128 0x29
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x593
	.4byte	0xc57
	.4byte	.LLST162
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.2byte	0x595
	.4byte	0x25
	.4byte	.LLST163
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x5ac
	.byte	0x1
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	.LLST164
	.4byte	0x17ed
	.uleb128 0x25
	.string	"n"
	.byte	0x1
	.2byte	0x5ab
	.4byte	0x22e
	.4byte	.LLST165
	.uleb128 0x25
	.string	"tex"
	.byte	0x1
	.2byte	0x5ab
	.4byte	0x276
	.4byte	.LLST166
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.2byte	0x5b5
	.4byte	0x25
	.4byte	.LLST167
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0x0
	.uleb128 0x1c
	.string	"nt"
	.byte	0x1
	.2byte	0x5ba
	.4byte	0x223
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x4c6
	.4byte	.LFB102
	.4byte	.LFE102
	.4byte	.LLST168
	.4byte	0x1823
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.2byte	0x4cc
	.4byte	0x25
	.4byte	.LLST169
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.2byte	0x4cd
	.4byte	0x25
	.4byte	.LLST170
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x3e5
	.byte	0x1
	.4byte	.LFB94
	.4byte	.LFE94
	.4byte	.LLST171
	.4byte	0x185c
	.uleb128 0x29
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x3e4
	.4byte	0x255
	.4byte	.LLST172
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.2byte	0x3e4
	.4byte	0x1e8
	.4byte	.LLST173
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x411
	.byte	0x1
	.4byte	.LFB96
	.4byte	.LFE96
	.4byte	.LLST174
	.4byte	0x1897
	.uleb128 0x29
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x410
	.4byte	0x1fb
	.4byte	.LLST175
	.uleb128 0x29
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x410
	.4byte	0x218
	.4byte	.LLST176
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x4a9
	.byte	0x1
	.4byte	.LFB101
	.4byte	.LFE101
	.4byte	.LLST177
	.4byte	0x18e2
	.uleb128 0x29
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x4a8
	.4byte	0x1fb
	.4byte	.LLST178
	.uleb128 0x29
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x4a8
	.4byte	0x1fb
	.4byte	.LLST179
	.uleb128 0x29
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x4a8
	.4byte	0x218
	.4byte	.LLST180
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x490
	.byte	0x1
	.4byte	.LFB100
	.4byte	.LFE100
	.4byte	.LLST181
	.4byte	0x192d
	.uleb128 0x29
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x48f
	.4byte	0x1fb
	.4byte	.LLST182
	.uleb128 0x29
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x48f
	.4byte	0x1fb
	.4byte	.LLST183
	.uleb128 0x29
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x48f
	.4byte	0x239
	.4byte	.LLST184
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x464
	.byte	0x1
	.4byte	.LFB99
	.4byte	.LFE99
	.4byte	.LLST185
	.4byte	0x1978
	.uleb128 0x29
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x463
	.4byte	0x1fb
	.4byte	.LLST186
	.uleb128 0x29
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x463
	.4byte	0x1fb
	.4byte	.LLST187
	.uleb128 0x29
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x463
	.4byte	0x25a
	.4byte	.LLST188
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x42c
	.byte	0x1
	.4byte	.LFB97
	.4byte	.LFE97
	.4byte	.LLST189
	.4byte	0x19c3
	.uleb128 0x29
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x42b
	.4byte	0x1fb
	.4byte	.LLST190
	.uleb128 0x29
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x42b
	.4byte	0x1fb
	.4byte	.LLST191
	.uleb128 0x29
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x42b
	.4byte	0x24f
	.4byte	.LLST192
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x3f6
	.byte	0x1
	.4byte	.LFB95
	.4byte	.LFE95
	.4byte	.LLST193
	.4byte	0x19fe
	.uleb128 0x29
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x3f5
	.4byte	0x1fb
	.4byte	.LLST194
	.uleb128 0x29
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x3f5
	.4byte	0x239
	.4byte	.LLST195
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x1a2
	.byte	0x1
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LLST196
	.4byte	0x1b53
	.uleb128 0x29
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x97
	.4byte	.LLST197
	.uleb128 0x29
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x1f5
	.4byte	.LLST198
	.uleb128 0x32
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x97
	.4byte	.LLST199
	.uleb128 0x32
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x1a6
	.4byte	0x97
	.4byte	.LLST200
	.uleb128 0x32
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x97
	.4byte	.LLST201
	.uleb128 0x30
	.string	"Aop"
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x97
	.4byte	.LLST202
	.uleb128 0x32
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x1af
	.4byte	0x97
	.4byte	.LLST203
	.uleb128 0x32
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x97
	.4byte	.LLST204
	.uleb128 0x31
	.string	"C"
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x1b53
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"A"
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x1b53
	.byte	0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x3c
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x1b63
	.byte	0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x3c
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x1b63
	.byte	0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0x30
	.string	"Tex"
	.byte	0x1
	.2byte	0x1b6
	.4byte	0xac
	.4byte	.LLST205
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x58
	.4byte	.LLST206
	.uleb128 0x32
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x58
	.4byte	.LLST207
	.uleb128 0x32
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x58
	.4byte	.LLST208
	.uleb128 0x32
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x58
	.4byte	.LLST209
	.uleb128 0x39
	.4byte	0x934
	.4byte	.LBB52
	.4byte	.LBE52
	.byte	0x1
	.2byte	0x283
	.4byte	0x1b3c
	.uleb128 0x27
	.4byte	0xb98
	.4byte	.LLST210
	.byte	0x0
	.uleb128 0x33
	.4byte	0x952
	.4byte	.LBB54
	.4byte	.LBE54
	.byte	0x1
	.2byte	0x283
	.uleb128 0x34
	.4byte	0xb7b
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.4byte	0x97
	.4byte	0x1b63
	.uleb128 0xb
	.4byte	0x37
	.byte	0x2
	.byte	0x0
	.uleb128 0xa
	.4byte	0xac
	.4byte	0x1b73
	.uleb128 0xb
	.4byte	0x37
	.byte	0x2
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x288
	.byte	0x1
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LLST211
	.4byte	0x1c0e
	.uleb128 0x29
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x287
	.4byte	0x97
	.4byte	.LLST212
	.uleb128 0x29
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x287
	.4byte	0x1f5
	.4byte	.LLST213
	.uleb128 0x32
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x292
	.4byte	0x97
	.4byte	.LLST214
	.uleb128 0x32
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x293
	.4byte	0x97
	.4byte	.LLST215
	.uleb128 0x30
	.string	"tex"
	.byte	0x1
	.2byte	0x29a
	.4byte	0x896
	.4byte	.LLST216
	.uleb128 0x3d
	.4byte	0x934
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x29b
	.4byte	0x1bf7
	.uleb128 0x27
	.4byte	0xb98
	.4byte	.LLST217
	.byte	0x0
	.uleb128 0x33
	.4byte	0x952
	.4byte	.LBB64
	.4byte	.LBE64
	.byte	0x1
	.2byte	0x29b
	.uleb128 0x34
	.4byte	0xb7b
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x5c1
	.byte	0x1
	.4byte	.LFB111
	.4byte	.LFE111
	.4byte	.LLST218
	.4byte	0x1c49
	.uleb128 0x29
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x5c0
	.4byte	0x1fb
	.4byte	.LLST219
	.uleb128 0x29
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x5c0
	.4byte	0x223
	.4byte	.LLST220
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x5d5
	.byte	0x1
	.4byte	0x97
	.4byte	.LFB114
	.4byte	.LFE114
	.4byte	.LLST221
	.4byte	0x1d12
	.uleb128 0x29
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x5d4
	.4byte	0x97
	.4byte	.LLST222
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.2byte	0x5d6
	.4byte	0x58
	.4byte	.LLST223
	.uleb128 0x31
	.string	"inc"
	.byte	0x1
	.2byte	0x5d7
	.4byte	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x5d8
	.4byte	0x58
	.4byte	.LLST224
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x30
	.string	"p"
	.byte	0x1
	.2byte	0x5e5
	.4byte	0x896
	.4byte	.LLST225
	.uleb128 0x3d
	.4byte	0x952
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.2byte	0x607
	.4byte	0x1ccd
	.uleb128 0x34
	.4byte	0xb7b
	.byte	0x0
	.uleb128 0x3d
	.4byte	0xc5d
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.2byte	0x5e5
	.4byte	0x1ce8
	.uleb128 0x34
	.4byte	0xca5
	.uleb128 0x34
	.4byte	0xc9c
	.byte	0x0
	.uleb128 0x35
	.4byte	.LBB84
	.4byte	.LBE84
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.2byte	0x5f6
	.4byte	0x58
	.4byte	.LLST226
	.uleb128 0x32
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x5f7
	.4byte	0x58
	.4byte	.LLST227
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.4byte	.LASF216
	.byte	0x2
	.byte	0x3c
	.4byte	0x318
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x3e
	.4byte	.LASF217
	.byte	0x2
	.byte	0x3d
	.4byte	0x12d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0xa
	.4byte	0x2d4
	.4byte	0x1d46
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x3e
	.4byte	.LASF218
	.byte	0x2
	.byte	0x3e
	.4byte	0x1d36
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x3e
	.4byte	.LASF219
	.byte	0x2
	.byte	0x4a
	.4byte	0x374
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x3e
	.4byte	.LASF220
	.byte	0x2
	.byte	0x4b
	.4byte	0x374
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0xa
	.4byte	0x374
	.4byte	0x1d8c
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x3f
	.string	"tex"
	.byte	0x2
	.byte	0x4c
	.4byte	0x1d7c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x3e
	.4byte	.LASF97
	.byte	0x2
	.byte	0x4d
	.4byte	0x374
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xa
	.4byte	0x12d
	.4byte	0x1dc1
	.uleb128 0x40
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x3e
	.4byte	.LASF221
	.byte	0x2
	.byte	0x4f
	.4byte	0x1db0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x3e
	.4byte	.LASF222
	.byte	0x2
	.byte	0x50
	.4byte	0x1db0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xa
	.4byte	0x2d4
	.4byte	0x1dfc
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.uleb128 0x40
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x3e
	.4byte	.LASF223
	.byte	0x2
	.byte	0x51
	.4byte	0x1de5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xa
	.4byte	0x318
	.4byte	0x1e1f
	.uleb128 0x40
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x3e
	.4byte	.LASF224
	.byte	0x2
	.byte	0x52
	.4byte	0x1e0e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x3e
	.4byte	.LASF225
	.byte	0x2
	.byte	0x5c
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x3e
	.4byte	.LASF226
	.byte	0x2
	.byte	0x5d
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x3e
	.4byte	.LASF227
	.byte	0x2
	.byte	0x5e
	.4byte	0x1fb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x3e
	.4byte	.LASF228
	.byte	0x2
	.byte	0x60
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x3e
	.4byte	.LASF229
	.byte	0x2
	.byte	0x61
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x3e
	.4byte	.LASF230
	.byte	0x2
	.byte	0x65
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x3e
	.4byte	.LASF231
	.byte	0x2
	.byte	0x66
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x3e
	.4byte	.LASF232
	.byte	0x2
	.byte	0x67
	.4byte	0x1fb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x3e
	.4byte	.LASF233
	.byte	0x2
	.byte	0x68
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x3e
	.4byte	.LASF234
	.byte	0x2
	.byte	0x74
	.4byte	0x3c4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x3e
	.4byte	.LASF235
	.byte	0x2
	.byte	0x75
	.4byte	0x3c4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xa
	.4byte	0x3c4
	.4byte	0x1f07
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x3e
	.4byte	.LASF236
	.byte	0x2
	.byte	0x76
	.4byte	0x1ef7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x3e
	.4byte	.LASF237
	.byte	0x2
	.byte	0x77
	.4byte	0x1f2b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x11
	.byte	0x4
	.4byte	0x3c4
	.uleb128 0x3e
	.4byte	.LASF238
	.byte	0x2
	.byte	0x78
	.4byte	0x1fb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0xa
	.4byte	0x48a
	.4byte	0x1f53
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x3e
	.4byte	.LASF239
	.byte	0x2
	.byte	0x93
	.4byte	0x1f43
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x3e
	.4byte	.LASF240
	.byte	0x2
	.byte	0x96
	.4byte	0x318
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x3e
	.4byte	.LASF241
	.byte	0x2
	.byte	0xa3
	.4byte	0x4e8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x3e
	.4byte	.LASF242
	.byte	0x2
	.byte	0xa6
	.4byte	0xcc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x3e
	.4byte	.LASF243
	.byte	0x2
	.byte	0xa7
	.4byte	0x1fb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x3e
	.4byte	.LASF244
	.byte	0x2
	.byte	0xab
	.4byte	0xcc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x3e
	.4byte	.LASF245
	.byte	0x2
	.byte	0xb2
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x3e
	.4byte	.LASF246
	.byte	0x2
	.byte	0xb3
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x3e
	.4byte	.LASF247
	.byte	0x2
	.byte	0xb4
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x3e
	.4byte	.LASF248
	.byte	0x2
	.byte	0xb5
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x3e
	.4byte	.LASF249
	.byte	0x2
	.byte	0xb7
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x3e
	.4byte	.LASF250
	.byte	0x2
	.byte	0xc0
	.4byte	0x512
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x3e
	.4byte	.LASF251
	.byte	0x2
	.byte	0xea
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x3e
	.4byte	.LASF252
	.byte	0x2
	.byte	0xeb
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x3e
	.4byte	.LASF253
	.byte	0x2
	.byte	0xec
	.4byte	0x206
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x3e
	.4byte	.LASF254
	.byte	0x2
	.byte	0xed
	.4byte	0x55e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x3e
	.4byte	.LASF255
	.byte	0x2
	.byte	0xee
	.4byte	0x55e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x3e
	.4byte	.LASF256
	.byte	0x2
	.byte	0xef
	.4byte	0xc1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x3e
	.4byte	.LASF257
	.byte	0x2
	.byte	0xf0
	.4byte	0xc1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x3e
	.4byte	.LASF258
	.byte	0x2
	.byte	0xf2
	.4byte	0xc1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x3e
	.4byte	.LASF259
	.byte	0x2
	.byte	0xf4
	.4byte	0xc1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x41
	.4byte	.LASF260
	.byte	0x2
	.2byte	0x101
	.4byte	0x5ca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x41
	.4byte	.LASF261
	.byte	0x2
	.2byte	0x102
	.4byte	0x5ca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xa
	.4byte	0xcc
	.4byte	0x2103
	.uleb128 0xb
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x41
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x103
	.4byte	0x20f3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x41
	.4byte	.LASF263
	.byte	0x2
	.2byte	0x109
	.4byte	0xcc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x41
	.4byte	.LASF264
	.byte	0x2
	.2byte	0x10a
	.4byte	0x1fb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x41
	.4byte	.LASF265
	.byte	0x2
	.2byte	0x10d
	.4byte	0x17a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xa
	.4byte	0x601
	.4byte	0x215f
	.uleb128 0xb
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x41
	.4byte	.LASF266
	.byte	0x2
	.2byte	0x121
	.4byte	0x214f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x41
	.4byte	.LASF267
	.byte	0x2
	.2byte	0x146
	.4byte	0xcc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x41
	.4byte	.LASF268
	.byte	0x2
	.2byte	0x147
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x41
	.4byte	.LASF269
	.byte	0x2
	.2byte	0x148
	.4byte	0xc1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x41
	.4byte	.LASF270
	.byte	0x2
	.2byte	0x149
	.4byte	0xc1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x41
	.4byte	.LASF271
	.byte	0x2
	.2byte	0x14a
	.4byte	0xc1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x41
	.4byte	.LASF272
	.byte	0x2
	.2byte	0x14b
	.4byte	0x17a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0xa
	.4byte	0x775
	.4byte	0x21f4
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x41
	.4byte	.LASF273
	.byte	0x2
	.2byte	0x14d
	.4byte	0x21e4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x41
	.4byte	.LASF274
	.byte	0x2
	.2byte	0x152
	.4byte	0x1fb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x41
	.4byte	.LASF275
	.byte	0x2
	.2byte	0x155
	.4byte	0x223
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	call_offset
	.uleb128 0x3e
	.4byte	.LASF138
	.byte	0x1
	.byte	0xc2
	.4byte	0x89c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texMan
	.uleb128 0x41
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x367
	.4byte	0x318
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	border_color
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x16
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
	.uleb128 0x8
	.uleb128 0x4
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x41
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x7b6
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x2253
	.4byte	0x970
	.string	"_glGetSize"
	.4byte	0x9f0
	.string	"GX_SetTevCIn"
	.4byte	0xa60
	.string	"GX_SetTevAIn"
	.4byte	0xabc
	.string	"GX_IncReg"
	.4byte	0xae7
	.string	"GX_IncCCReg"
	.4byte	0xb12
	.string	"GX_IncCAReg"
	.4byte	0xb3d
	.string	"GX_IncAAReg"
	.4byte	0xb68
	.string	"GX_IncTexMap"
	.4byte	0xb85
	.string	"GX_IncTexCoord"
	.4byte	0xba2
	.string	"setAniso"
	.4byte	0xbca
	.string	"setMaxLod"
	.4byte	0xc1c
	.string	"isUsed"
	.4byte	0xc89
	.string	"getTex"
	.4byte	0xcaf
	.string	"getCur"
	.4byte	0xcde
	.string	"_glSetEnableTex"
	.4byte	0xd05
	.string	"_glGetEnableTex"
	.4byte	0xd32
	.string	"convertInternalFormat"
	.4byte	0xd56
	.string	"IsPowerOfTwo"
	.4byte	0xd73
	.string	"glIsTexture"
	.4byte	0xda2
	.string	"CorrectGLtype"
	.4byte	0xde1
	.string	"glSetComAlpha"
	.4byte	0xe1a
	.string	"glSetComRGB"
	.4byte	0xe53
	.string	"glSetAlphaOp"
	.4byte	0xe8c
	.string	"glSetRGBOp"
	.4byte	0xec5
	.string	"glSetSrc"
	.4byte	0xefe
	.string	"glSetTexEnvMode"
	.4byte	0xf37
	.string	"glGetTexLevelParameteriv"
	.4byte	0xf8d
	.string	"GL2GX_Filter"
	.4byte	0xfc2
	.string	"GL2GX_Wrap"
	.4byte	0xff7
	.string	"glTexParameteri"
	.4byte	0x1042
	.string	"glTexParameterf"
	.4byte	0x108d
	.string	"glTexParameterfv"
	.4byte	0x10d8
	.string	"_glGetPixelStore"
	.4byte	0x1110
	.string	"glPixelStorei"
	.4byte	0x1148
	.string	"glPixelStoref"
	.4byte	0x1180
	.string	"deleteTex"
	.4byte	0x11e1
	.string	"glDeleteTextures"
	.4byte	0x1228
	.string	"computeStart"
	.4byte	0x12ae
	.string	"glTexSubImage2D"
	.4byte	0x13a2
	.string	"GenArray"
	.4byte	0x1427
	.string	"glTexImage2D"
	.4byte	0x1601
	.string	"glTexImage1D"
	.4byte	0x169c
	.string	"activateTex"
	.4byte	0x16f1
	.string	"resizeMan"
	.4byte	0x1758
	.string	"getNextTexID"
	.4byte	0x1795
	.string	"glGenTextures"
	.4byte	0x17ed
	.string	"initTextures"
	.4byte	0x1823
	.string	"glSetScale"
	.4byte	0x185c
	.string	"_glTexEnvi"
	.4byte	0x1897
	.string	"glTexEnvi"
	.4byte	0x18e2
	.string	"glTexEnvf"
	.4byte	0x192d
	.string	"glTexEnviv"
	.4byte	0x1978
	.string	"glTexEnvfv"
	.4byte	0x19c3
	.string	"_glTexEnvf"
	.4byte	0x19fe
	.string	"GX_SetTevCombineStage"
	.4byte	0x1b73
	.string	"GX_SetTevStage"
	.4byte	0x1c0e
	.string	"glBindTexture"
	.4byte	0x1c49
	.string	"GX_SetTextures"
	.4byte	0x1d12
	.string	"_tempcolorelement"
	.4byte	0x1d24
	.string	"_tempnormalelement"
	.4byte	0x1d46
	.string	"_temptexcoordelement"
	.4byte	0x1d58
	.string	"norm"
	.4byte	0x1d6a
	.string	"vert"
	.4byte	0x1d8c
	.string	"tex"
	.4byte	0x1d9e
	.string	"color"
	.4byte	0x1dc1
	.string	"_normalelements"
	.4byte	0x1dd3
	.string	"_vertexelements"
	.4byte	0x1dfc
	.string	"_texcoordelements"
	.4byte	0x1e1f
	.string	"_colorelements"
	.4byte	0x1e31
	.string	"vert_i"
	.4byte	0x1e43
	.string	"_type"
	.4byte	0x1e55
	.string	"_GLtype"
	.4byte	0x1e67
	.string	"cur_tex"
	.4byte	0x1e79
	.string	"cur_tex_client"
	.4byte	0x1e8b
	.string	"depthtestenabled"
	.4byte	0x1e9d
	.string	"depthupdate"
	.4byte	0x1eaf
	.string	"depthfunction"
	.4byte	0x1ec1
	.string	"_cleardepth"
	.4byte	0x1ed3
	.string	"model_stack"
	.4byte	0x1ee5
	.string	"projection_stack"
	.4byte	0x1f07
	.string	"texture_stack"
	.4byte	0x1f19
	.string	"curmtx"
	.4byte	0x1f31
	.string	"cur_mode"
	.4byte	0x1f53
	.string	"lights"
	.4byte	0x1f65
	.string	"globAmbient"
	.4byte	0x1f77
	.string	"curmat"
	.4byte	0x1f89
	.string	"gxcullfaceanabled"
	.4byte	0x1f9b
	.string	"gxwinding"
	.4byte	0x1fad
	.string	"lighting"
	.4byte	0x1fbf
	.string	"blend_type"
	.4byte	0x1fd1
	.string	"blend_src"
	.4byte	0x1fe3
	.string	"blend_dst"
	.4byte	0x1ff5
	.string	"blend_op"
	.4byte	0x2007
	.string	"cull_mode"
	.4byte	0x2019
	.string	"cur_state"
	.4byte	0x202b
	.string	"fb_max_height"
	.4byte	0x203d
	.string	"fb_max_width"
	.4byte	0x204f
	.string	"scissor_test"
	.4byte	0x2061
	.string	"scissorInfo"
	.4byte	0x2073
	.string	"viewPort"
	.4byte	0x2085
	.string	"normNear"
	.4byte	0x2097
	.string	"normFar"
	.4byte	0x20a9
	.string	"line_width"
	.4byte	0x20bb
	.string	"point_size"
	.4byte	0x20cd
	.string	"pack"
	.4byte	0x20e0
	.string	"unpack"
	.4byte	0x2103
	.string	"color_write_mask"
	.4byte	0x2116
	.string	"copy_mat_enabled"
	.4byte	0x2129
	.string	"copy_material"
	.4byte	0x213c
	.string	"_clearcolor"
	.4byte	0x215f
	.string	"Trans"
	.4byte	0x2172
	.string	"fog_enable"
	.4byte	0x2185
	.string	"fog_mode"
	.4byte	0x2198
	.string	"fog_startz"
	.4byte	0x21ab
	.string	"fog_endz"
	.4byte	0x21be
	.string	"fog_density"
	.4byte	0x21d1
	.string	"fog_color"
	.4byte	0x21f4
	.string	"glTexEnvs"
	.4byte	0x2207
	.string	"read_mode"
	.4byte	0x221a
	.string	"call_offset"
	.4byte	0x222d
	.string	"texMan"
	.4byte	0x223f
	.string	"border_color"
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
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	.LBB47-.Ltext0
	.4byte	.LBE47-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB60-.Ltext0
	.4byte	.LBE60-.Ltext0
	.4byte	.LBB63-.Ltext0
	.4byte	.LBE63-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB74-.Ltext0
	.4byte	.LBE74-.Ltext0
	.4byte	.LBB87-.Ltext0
	.4byte	.LBE87-.Ltext0
	.4byte	.LBB86-.Ltext0
	.4byte	.LBE86-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB76-.Ltext0
	.4byte	.LBE76-.Ltext0
	.4byte	.LBB85-.Ltext0
	.4byte	.LBE85-.Ltext0
	.4byte	.LBB75-.Ltext0
	.4byte	.LBE75-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB80-.Ltext0
	.4byte	.LBE80-.Ltext0
	.4byte	.LBB83-.Ltext0
	.4byte	.LBE83-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF154:
	.string	"params"
.LASF190:
	.string	"getNextTexID"
.LASF201:
	.string	"stage"
.LASF43:
	.string	"Stack"
.LASF108:
	.string	"base_level"
.LASF165:
	.string	"computeStart"
.LASF130:
	.string	"GX_SetTevAIn"
.LASF187:
	.string	"resizeMan"
.LASF8:
	.string	"char"
.LASF155:
	.string	"GL2GX_Filter"
.LASF27:
	.string	"GLint"
.LASF102:
	.string	"format"
.LASF54:
	.string	"quad_t"
.LASF64:
	.string	"boxInfo"
.LASF240:
	.string	"globAmbient"
.LASF236:
	.string	"texture_stack"
.LASF22:
	.string	"GXTexObj"
.LASF93:
	.string	"Carg"
.LASF251:
	.string	"fb_max_height"
.LASF115:
	.string	"usedTexs"
.LASF221:
	.string	"_normalelements"
.LASF185:
	.string	"internalformat"
.LASF166:
	.string	"byteOffset"
.LASF56:
	.string	"_mat"
.LASF283:
	.string	"scale_s32"
.LASF168:
	.string	"xoffset"
.LASF160:
	.string	"_glGetPixelStore"
.LASF49:
	.string	"specular"
.LASF40:
	.string	"_stack"
.LASF280:
	.string	"GLvoid"
.LASF104:
	.string	"level"
.LASF114:
	.string	"nTexs"
.LASF223:
	.string	"_texcoordelements"
.LASF75:
	.string	"_trans"
.LASF51:
	.string	"spotCutoff"
.LASF79:
	.string	"_tex_env"
.LASF241:
	.string	"curmat"
.LASF90:
	.string	"mode"
.LASF265:
	.string	"_clearcolor"
.LASF128:
	.string	"defcolor"
.LASF85:
	.string	"maxlod"
.LASF60:
	.string	"GL_STATE_NONE"
.LASF106:
	.string	"gxObj"
.LASF23:
	.string	"_gx_litobj"
.LASF58:
	.string	"shininess"
.LASF109:
	.string	"max_level"
.LASF205:
	.string	"Alphabias"
.LASF222:
	.string	"_vertexelements"
.LASF33:
	.string	"GXColorf"
.LASF94:
	.string	"CargOp"
.LASF233:
	.string	"_cleardepth"
.LASF48:
	.string	"diffuse"
.LASF250:
	.string	"cur_state"
.LASF210:
	.string	"max_src"
.LASF217:
	.string	"_tempnormalelement"
.LASF3:
	.string	"signed char"
.LASF164:
	.string	"glDeleteTextures"
.LASF229:
	.string	"cur_tex_client"
.LASF220:
	.string	"vert"
.LASF268:
	.string	"fog_mode"
.LASF193:
	.string	"glSetScale"
.LASF198:
	.string	"glTexEnvfv"
.LASF91:
	.string	"comRGB"
.LASF270:
	.string	"fog_endz"
.LASF226:
	.string	"_type"
.LASF11:
	.string	"float"
.LASF34:
	.string	"_array"
.LASF174:
	.string	"internalFormat"
.LASF77:
	.string	"bias"
.LASF20:
	.string	"GXColor"
.LASF145:
	.string	"CorrectGLtype"
.LASF39:
	.string	"VertexArray"
.LASF258:
	.string	"line_width"
.LASF6:
	.string	"long long unsigned int"
.LASF266:
	.string	"Trans"
.LASF260:
	.string	"pack"
.LASF57:
	.string	"emissive"
.LASF136:
	.string	"setMaxLod"
.LASF255:
	.string	"viewPort"
.LASF80:
	.string	"min_filter"
.LASF196:
	.string	"glTexEnvf"
.LASF234:
	.string	"model_stack"
.LASF262:
	.string	"color_write_mask"
.LASF195:
	.string	"glTexEnvi"
.LASF175:
	.string	"border"
.LASF35:
	.string	"enable"
.LASF273:
	.string	"glTexEnvs"
.LASF245:
	.string	"blend_type"
.LASF118:
	.string	"value"
.LASF144:
	.string	"glIsTexture"
.LASF113:
	.string	"used"
.LASF107:
	.string	"glFormat"
.LASF177:
	.string	"iFor"
.LASF272:
	.string	"fog_color"
.LASF105:
	.string	"target"
.LASF65:
	.string	"width"
.LASF211:
	.string	"GX_SetTevStage"
.LASF263:
	.string	"copy_mat_enabled"
.LASF228:
	.string	"cur_tex"
.LASF92:
	.string	"comAlpha"
.LASF180:
	.string	"base_width"
.LASF186:
	.string	"activateTex"
.LASF137:
	.string	"isUsed"
.LASF178:
	.string	"bytes"
.LASF162:
	.string	"glPixelStoref"
.LASF161:
	.string	"glPixelStorei"
.LASF259:
	.string	"point_size"
.LASF188:
	.string	"new_arr"
.LASF209:
	.string	"max_Asrc"
.LASF30:
	.string	"GLfloat"
.LASF16:
	.string	"true"
.LASF264:
	.string	"copy_material"
.LASF146:
	.string	"glSetComAlpha"
.LASF139:
	.string	"texture"
.LASF62:
	.string	"GL_STATE_NEWLIST"
.LASF242:
	.string	"gxcullfaceanabled"
.LASF237:
	.string	"curmtx"
.LASF215:
	.string	"maxlod_in_tex"
.LASF127:
	.string	"texN"
.LASF47:
	.string	"ambient"
.LASF254:
	.string	"scissorInfo"
.LASF197:
	.string	"glTexEnviv"
.LASF243:
	.string	"gxwinding"
.LASF24:
	.string	"GXLightObj"
.LASF110:
	.string	"glTex"
.LASF214:
	.string	"texs"
.LASF123:
	.string	"GX_IncTexMap"
.LASF78:
	.string	"ColorTrans"
.LASF246:
	.string	"blend_src"
.LASF59:
	.string	"Material"
.LASF103:
	.string	"pixels"
.LASF232:
	.string	"depthfunction"
.LASF100:
	.string	"glTexEnvSet"
.LASF253:
	.string	"scissor_test"
.LASF101:
	.string	"_glTex"
.LASF235:
	.string	"projection_stack"
.LASF224:
	.string	"_colorelements"
.LASF68:
	.string	"swap"
.LASF5:
	.string	"long long int"
.LASF125:
	.string	"_glGetSize"
.LASF120:
	.string	"convertInternalFormat"
.LASF257:
	.string	"normFar"
.LASF150:
	.string	"glSetSrc"
.LASF28:
	.string	"GLuint"
.LASF121:
	.string	"valid"
.LASF61:
	.string	"GL_STATE_BEGIN"
.LASF274:
	.string	"read_mode"
.LASF42:
	.string	"elem_size"
.LASF63:
	.string	"glState"
.LASF189:
	.string	"new_used"
.LASF52:
	.string	"constant"
.LASF267:
	.string	"fog_enable"
.LASF140:
	.string	"getTex"
.LASF208:
	.string	"max_Csrc"
.LASF18:
	.string	"_vecf"
.LASF31:
	.string	"VertexElement"
.LASF76:
	.string	"scale"
.LASF87:
	.string	"biasclamp"
.LASF131:
	.string	"GX_IncReg"
.LASF70:
	.string	"row_length"
.LASF231:
	.string	"depthupdate"
.LASF276:
	.string	"border_color"
.LASF202:
	.string	"nstages"
.LASF37:
	.string	"size"
.LASF55:
	.string	"LightObj"
.LASF124:
	.string	"param"
.LASF122:
	.string	"GX_IncTexCoord"
.LASF83:
	.string	"wrap_t"
.LASF212:
	.string	"glBindTexture"
.LASF247:
	.string	"blend_dst"
.LASF66:
	.string	"height"
.LASF218:
	.string	"_temptexcoordelement"
.LASF112:
	.string	"textures"
.LASF163:
	.string	"deleteTex"
.LASF159:
	.string	"glTexParameterfv"
.LASF238:
	.string	"cur_mode"
.LASF134:
	.string	"GX_IncAAReg"
.LASF213:
	.string	"GX_SetTextures"
.LASF179:
	.string	"base_height"
.LASF67:
	.string	"_pixelStore"
.LASF116:
	.string	"TextManager"
.LASF12:
	.string	"long double"
.LASF82:
	.string	"wrap_s"
.LASF192:
	.string	"initTextures"
.LASF143:
	.string	"_glGetEnableTex"
.LASF13:
	.string	"size_t"
.LASF279:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\freespace2wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF219:
	.string	"norm"
.LASF261:
	.string	"unpack"
.LASF46:
	.string	"spotDir"
.LASF183:
	.string	"max_dim"
.LASF21:
	.string	"_gx_texobj"
.LASF129:
	.string	"defalpha"
.LASF50:
	.string	"spotExponent"
.LASF86:
	.string	"lodbias"
.LASF278:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/gl_textures.c"
.LASF239:
	.string	"lights"
.LASF4:
	.string	"short int"
.LASF84:
	.string	"minlod"
.LASF81:
	.string	"max_filter"
.LASF9:
	.string	"long int"
.LASF184:
	.string	"glTexImage1D"
.LASF181:
	.string	"case1"
.LASF182:
	.string	"case2"
.LASF25:
	.string	"GLenum"
.LASF176:
	.string	"powerOf2"
.LASF44:
	.string	"_light"
.LASF97:
	.string	"color"
.LASF29:
	.string	"GLsizei"
.LASF275:
	.string	"call_offset"
.LASF216:
	.string	"_tempcolorelement"
.LASF167:
	.string	"glTexSubImage2D"
.LASF72:
	.string	"skip_pixels"
.LASF14:
	.string	"bool"
.LASF95:
	.string	"Aarg"
.LASF89:
	.string	"maxaniso"
.LASF156:
	.string	"GL2GX_Wrap"
.LASF173:
	.string	"glTexImage2D"
.LASF0:
	.string	"unsigned int"
.LASF271:
	.string	"fog_density"
.LASF36:
	.string	"stride"
.LASF244:
	.string	"lighting"
.LASF200:
	.string	"GX_SetTevCombineStage"
.LASF147:
	.string	"glSetComRGB"
.LASF7:
	.string	"long unsigned int"
.LASF148:
	.string	"glSetAlphaOp"
.LASF248:
	.string	"blend_op"
.LASF152:
	.string	"glGetTexLevelParameteriv"
.LASF269:
	.string	"fog_startz"
.LASF74:
	.string	"pixelStore"
.LASF138:
	.string	"texMan"
.LASF170:
	.string	"correct_type"
.LASF132:
	.string	"GX_IncCCReg"
.LASF282:
	.string	"OffsetN"
.LASF126:
	.string	"GX_SetTevCIn"
.LASF207:
	.string	"Atex"
.LASF277:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF38:
	.string	"type"
.LASF1:
	.string	"unsigned char"
.LASF149:
	.string	"glSetRGBOp"
.LASF45:
	.string	"enabled"
.LASF119:
	.string	"IsPowerOfTwo"
.LASF71:
	.string	"skip_rows"
.LASF169:
	.string	"yoffset"
.LASF15:
	.string	"false"
.LASF225:
	.string	"vert_i"
.LASF69:
	.string	"lsb_first"
.LASF99:
	.string	"alpha_scale"
.LASF135:
	.string	"setAniso"
.LASF111:
	.string	"_textMan"
.LASF158:
	.string	"glTexParameterf"
.LASF17:
	.string	"Vector"
.LASF172:
	.string	"byte_size"
.LASF157:
	.string	"glTexParameteri"
.LASF252:
	.string	"fb_max_width"
.LASF53:
	.string	"linear"
.LASF191:
	.string	"glGenTextures"
.LASF256:
	.string	"normNear"
.LASF227:
	.string	"_GLtype"
.LASF230:
	.string	"depthtestenabled"
.LASF19:
	.string	"_gx_color"
.LASF151:
	.string	"glSetTexEnvMode"
.LASF88:
	.string	"edgelod"
.LASF204:
	.string	"RGBbias"
.LASF142:
	.string	"_glSetEnableTex"
.LASF203:
	.string	"RGBop"
.LASF133:
	.string	"GX_IncCAReg"
.LASF2:
	.string	"short unsigned int"
.LASF41:
	.string	"begin"
.LASF10:
	.string	"double"
.LASF73:
	.string	"alignment"
.LASF32:
	.string	"TexCoordElement"
.LASF26:
	.string	"GLboolean"
.LASF98:
	.string	"rgb_scale"
.LASF171:
	.string	"GenArray"
.LASF141:
	.string	"getCur"
.LASF281:
	.string	"_glState"
.LASF199:
	.string	"_glTexEnvf"
.LASF194:
	.string	"_glTexEnvi"
.LASF206:
	.string	"Ctex"
.LASF153:
	.string	"pname"
.LASF117:
	.string	"dest"
.LASF249:
	.string	"cull_mode"
.LASF96:
	.string	"AargOp"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
