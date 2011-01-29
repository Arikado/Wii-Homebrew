	.file	"gl_matrix.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl CopyMtxToMtx44
	.type	CopyMtxToMtx44, @function
CopyMtxToMtx44:
.LFB66:
	.file 1 "c:/devkitPro/examples/wii/cube_source/gl2gx/libogc/../source/gl_matrix.c"
	.loc 1 13 0
.LVL0:
	.loc 1 13 0
	mr 9,4
	li 11,0
.LVL1:
	b .L2
.LVL2:
.L10:
	.loc 1 24 0
	li 9,4
	.loc 1 15 0
	li 11,0
.LVL3:
	.loc 1 24 0
	mtctr 9
	li 0,0
.L4:
	add 9,4,11
	addi 11,11,4
	stw 0,48(9)
	.loc 1 23 0
	bdz .L9
	b .L4
.LVL4:
.L2:
	.loc 1 19 0
	lfs 0,0(3)
.LVL5:
	.loc 1 15 0
	cmpwi 7,11,2
	addi 11,11,1
	.loc 1 19 0
	stfs 0,0(9)
	lfs 0,4(3)
	stfs 0,4(9)
	lfs 0,8(3)
	stfs 0,8(9)
	lfs 0,12(3)
	.loc 1 15 0
	addi 3,3,16
	.loc 1 19 0
	stfs 0,12(9)
	.loc 1 15 0
	addi 9,9,16
	beq- 7,.L10
	b .L2
.LVL6:
.L9:
	blr
.LFE66:
	.size	CopyMtxToMtx44, .-CopyMtxToMtx44
	.align 2
	.globl CopyMtx44ToMtx
	.type	CopyMtx44ToMtx, @function
CopyMtx44ToMtx:
.LFB67:
	.loc 1 28 0
.LVL7:
	.loc 1 28 0
	li 9,0
.LVL8:
.L12:
	.loc 1 34 0
	lfs 0,0(3)
.LVL9:
	.loc 1 30 0
	cmpwi 7,9,2
	addi 9,9,1
	.loc 1 34 0
	stfs 0,0(4)
.LVL10:
	lfs 0,4(3)
	stfs 0,4(4)
	lfs 0,8(3)
	stfs 0,8(4)
	lfs 0,12(3)
	.loc 1 30 0
	addi 3,3,16
	.loc 1 34 0
	stfs 0,12(4)
	.loc 1 30 0
	addi 4,4,16
	bne+ 7,.L12
	.loc 1 37 0
	blr
.LFE67:
	.size	CopyMtx44ToMtx, .-CopyMtx44ToMtx
	.align 2
	.type	computeZplanes, @function
computeZplanes:
.LFB69:
	.loc 1 54 0
.LVL11:
.LBB4:
.LBB6:
	.loc 1 41 0
	lis 9,.LC2@ha
	lfs 0,12(3)
	lfs 13,.LC2@l(9)
.LBE6:
.LBE4:
	.loc 1 55 0
	lfs 11,40(3)
.LVL12:
.LBB8:
.LBB5:
	.loc 1 41 0
	fcmpu 7,0,13
.LBE5:
.LBE8:
	.loc 1 56 0
	lfs 12,44(3)
.LVL13:
.LBB9:
.LBB7:
	.loc 1 41 0
	bne- 7,.L18
	lfs 0,28(3)
	.loc 1 49 0
	li 0,0
	.loc 1 41 0
	fcmpu 7,0,13
	beq- 7,.L27
.L18:
	.loc 1 44 0
	li 0,1
.L27:
	.loc 1 49 0
	stb 0,64(3)
	lis 9,.LC0@ha
.LBE7:
.LBE9:
	.loc 1 61 0
	lbz 0,64(3)
	cmpwi 7,0,0
	bne- 7,.L23
	.loc 1 63 0
	lfs 0,.LC0@l(9)
	.loc 1 64 0
	fsubs 13,11,0
	.loc 1 63 0
	fadds 0,11,0
	.loc 1 64 0
	fdivs 13,12,13
	.loc 1 63 0
	fdivs 0,12,0
	.loc 1 64 0
	stfs 13,68(3)
	.loc 1 63 0
	stfs 0,72(3)
	blr
.L23:
	.loc 1 68 0
	lfs 0,.LC0@l(9)
	.loc 1 69 0
	fsubs 13,12,0
	.loc 1 68 0
	fadds 0,12,0
	.loc 1 69 0
	fdivs 13,13,11
	.loc 1 68 0
	fdivs 0,0,11
	.loc 1 69 0
	stfs 13,72(3)
	.loc 1 68 0
	stfs 0,68(3)
	blr
.LFE69:
	.size	computeZplanes, .-computeZplanes
	.align 2
	.globl CopyGLfloatToMtx
	.type	CopyGLfloatToMtx, @function
CopyGLfloatToMtx:
.LFB84:
	.loc 1 534 0
.LVL14:
	.loc 1 534 0
	li 8,0
.LVL15:
	b .L29
.LVL16:
.L30:
	.loc 1 539 0
	cmpwi 7,9,2
	.loc 1 541 0
	lfs 0,0(11)
	.loc 1 539 0
	addi 9,9,1
	.loc 1 541 0
	addi 11,11,4
	stfs 0,0(10)
	.loc 1 539 0
	addi 10,10,16
	bne+ 7,.L30
	.loc 1 537 0
	cmpwi 7,8,3
	addi 8,8,1
	beqlr- 7
	.loc 1 545 0
	addi 3,3,16
.LVL17:
.L29:
	slwi 0,8,2
	mr 11,3
	add 10,4,0
	li 9,0
	b .L30
.LFE84:
	.size	CopyGLfloatToMtx, .-CopyGLfloatToMtx
	.align 2
	.globl CopyGLfloatToMtx44
	.type	CopyGLfloatToMtx44, @function
CopyGLfloatToMtx44:
.LFB85:
	.loc 1 548 0
.LVL18:
	.loc 1 548 0
	li 10,0
.LVL19:
	b .L39
.LVL20:
.L40:
	.loc 1 555 0
	lfs 0,0(9)
	addi 9,9,4
	stfs 0,0(11)
	.loc 1 553 0
	addi 11,11,16
	bdnz .L40
	.loc 1 551 0
	cmpwi 7,10,3
	.loc 1 553 0
	addi 3,3,16
.LVL21:
	.loc 1 551 0
	addi 10,10,1
	beqlr- 7
.L39:
	.loc 1 558 0
	slwi 0,10,2
	mr 9,3
	add 11,4,0
	li 0,4
	mtctr 0
	b .L40
.LFE85:
	.size	CopyGLfloatToMtx44, .-CopyGLfloatToMtx44
	.align 2
	.globl glMatrixMode
	.type	glMatrixMode, @function
glMatrixMode:
.LFB72:
	.loc 1 157 0
.LVL22:
	mflr 0
.LCFI0:
	stwu 1,-8(1)
.LCFI1:
	.loc 1 158 0
	lis 9,cur_state@ha
	.loc 1 157 0
	stw 0,12(1)
.LCFI2:
	.loc 1 158 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq+ 0,.L48
	lis 4,.LC3@ha
	li 3,1282
.LVL23:
	la 4,.LC3@l(4)
	li 5,158
	b .L58
.LVL24:
.L48:
	.loc 1 160 0
	cmpwi 7,3,5889
	beq- 7,.L53
	cmpwi 7,3,5890
	beq- 7,.L54
	cmpwi 7,3,5888
	bne+ 7,.L51
	.loc 1 163 0
	lis 9,model_stack@ha
	la 9,model_stack@l(9)
	b .L57
.L53:
	.loc 1 166 0
	lis 9,projection_stack@ha
	la 9,projection_stack@l(9)
.L57:
	lis 11,curmtx@ha
	stw 9,curmtx@l(11)
	b .L55
.L54:
	.loc 1 169 0
	lis 9,cur_tex@ha
	lwz 0,cur_tex@l(9)
	lis 9,texture_stack@ha
	la 9,texture_stack@l(9)
	slwi 0,0,4
	add 0,0,9
	lis 9,curmtx@ha
	stw 0,curmtx@l(9)
	b .L55
.L51:
	.loc 1 172 0
	lis 4,.LC3@ha
	li 3,1280
.LVL25:
	la 4,.LC3@l(4)
	li 5,172
.L58:
	bl _glSetErrorEx
	b .L56
.LVL26:
.L55:
	.loc 1 177 0
	lis 9,cur_mode@ha
	stw 3,cur_mode@l(9)
.L56:
	.loc 1 178 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE72:
	.size	glMatrixMode, .-glMatrixMode
	.align 2
	.globl gluPerspective
	.type	gluPerspective, @function
gluPerspective:
.LFB87:
	.loc 1 611 0
.LVL27:
	mflr 0
.LCFI3:
	stwu 1,-120(1)
.LCFI4:
	.loc 1 612 0
	lis 9,cur_state@ha
	.loc 1 611 0
	stfd 28,88(1)
.LCFI5:
	fmr 28,2
	stfd 29,96(1)
.LCFI6:
	fmr 29,1
	stfd 30,104(1)
.LCFI7:
	fmr 30,3
	stfd 31,112(1)
.LCFI8:
	fmr 31,4
	stmw 28,72(1)
.LCFI9:
	stw 0,124(1)
.LCFI10:
	.loc 1 612 0
	lwz 0,cur_state@l(9)
	andi. 28,0,1
	beq+ 0,.L60
.LVL28:
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,612
	bl _glSetErrorEx
	b .L66
.LVL29:
.L60:
	.loc 1 614 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	bne+ 7,.L63
.LBB12:
	.loc 1 616 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
	bl TopPrjMtx
	.loc 1 618 0
	mr. 29,3
.LVL30:
	beq- 0,.L66
	.loc 1 623 0
	frsp 30,30
.LVL31:
	frsp 31,31
.LVL32:
	frsp 1,29
	frsp 2,28
	fmr 3,30
	fmr 4,31
	bl guPerspective
	.loc 1 627 0
	stfs 31,72(29)
	.loc 1 624 0
	stb 28,64(29)
	.loc 1 626 0
	stfs 30,68(29)
	b .L66
.LVL33:
.L63:
.LBE12:
.LBB13:
	.loc 1 632 0
	lis 9,curmtx@ha
	.loc 1 634 0
	addi 29,1,8
	.loc 1 632 0
	lwz 3,curmtx@l(9)
	bl TopMtx
	.loc 1 634 0
	frsp 1,29
	frsp 2,28
	.loc 1 632 0
	mr 28,3
.LVL34:
	.loc 1 634 0
	frsp 3,30
	mr 3,29
	frsp 4,31
	bl guPerspective
	.loc 1 636 0
	mr 3,29
	mr 4,28
	bl CopyMtx44ToMtx
.LVL35:
.L66:
.LBE13:
	.loc 1 638 0
	lwz 0,124(1)
	lmw 28,72(1)
.LVL36:
	lfd 28,88(1)
.LVL37:
	mtlr 0
	lfd 29,96(1)
.LVL38:
	lfd 30,104(1)
.LVL39:
	lfd 31,112(1)
.LVL40:
	addi 1,1,120
	blr
.LFE87:
	.size	gluPerspective, .-gluPerspective
	.align 2
	.globl _glGetMatrixf
	.type	_glGetMatrixf, @function
_glGetMatrixf:
.LFB83:
	.loc 1 509 0
.LVL41:
	stwu 1,-16(1)
.LCFI11:
	mflr 0
.LCFI12:
	stw 31,12(1)
.LCFI13:
	.loc 1 512 0
	mr. 31,4
	.loc 1 509 0
	stw 0,20(1)
.LCFI14:
	.loc 1 512 0
	beq- 0,.L75
.LVL42:
	.loc 1 515 0
	cmpwi 7,3,2982
	bne+ 7,.L75
.LBB15:
	.loc 1 519 0
	lis 3,model_stack@ha
.LVL43:
	la 3,model_stack@l(3)
	bl TopMtx
	li 8,0
.LVL44:
	.loc 1 526 0
	li 7,0
	b .L71
.LVL45:
.L72:
	.loc 1 522 0
	cmpwi 7,9,2
	.loc 1 524 0
	lfs 0,0(10)
	.loc 1 522 0
	addi 9,9,1
	addi 10,10,16
	.loc 1 524 0
	stfs 0,0(11)
	addi 11,11,4
	.loc 1 522 0
	bne+ 7,.L72
	.loc 1 520 0
	cmpwi 7,8,3
	.loc 1 526 0
	stw 7,12(31)
	.loc 1 520 0
	addi 8,8,1
	beq- 7,.L75
.LVL46:
	addi 31,31,16
.L71:
	slwi 0,8,2
	mr 11,31
	add 10,3,0
	li 9,0
	b .L72
.LVL47:
.L75:
.LBE15:
	.loc 1 531 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL48:
	addi 1,1,16
	mtlr 0
	blr
.LFE83:
	.size	_glGetMatrixf, .-_glGetMatrixf
	.align 2
	.globl glLoadMatrixd
	.type	glLoadMatrixd, @function
glLoadMatrixd:
.LFB75:
	.loc 1 269 0
.LVL49:
	mflr 0
.LCFI15:
	stwu 1,-16(1)
.LCFI16:
	.loc 1 270 0
	lis 9,cur_state@ha
	.loc 1 269 0
	stw 31,12(1)
.LCFI17:
	mr 31,3
	stw 0,20(1)
.LCFI18:
	.loc 1 270 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq+ 0,.L80
.LVL50:
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,270
	bl _glSetErrorEx
	b .L92
.LVL51:
.L80:
	.loc 1 274 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	lis 9,curmtx@ha
	cmpwi 7,0,5889
	bne+ 7,.L83
.LBB18:
	.loc 1 276 0
	lwz 3,curmtx@l(9)
	bl TopMtx44
	.loc 1 278 0
	cmpwi 0,3,0
.LVL52:
	bne+ 0,.L96
	b .L92
.LVL53:
.L86:
	.loc 1 287 0
	lfd 0,0(9)
	addi 9,9,8
	frsp 0,0
	stfs 0,0(11)
	.loc 1 285 0
	addi 11,11,16
	bdnz .L86
	.loc 1 283 0
	cmpwi 7,10,3
	.loc 1 285 0
	addi 31,31,32
.LVL54:
	.loc 1 283 0
	addi 10,10,1
	bne+ 7,.L88
	.loc 1 291 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
.LVL55:
	bl TopPrjMtx
.LVL56:
.LBE18:
	.loc 1 311 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL57:
	addi 1,1,16
	mtlr 0
.LBB19:
	.loc 1 291 0
	b computeZplanes
.LVL58:
.L83:
.LBE19:
.LBB20:
	.loc 1 295 0
	lwz 3,curmtx@l(9)
	bl TopMtx
	.loc 1 297 0
	mr. 10,3
.LVL59:
	bne+ 0,.L90
	b .L92
.LVL60:
.L96:
	li 10,0
.LVL61:
.L88:
	slwi 0,10,2
	mr 9,31
	add 11,3,0
	li 0,4
	mtctr 0
	b .L86
.LVL62:
.L90:
	li 9,4
	addi 3,31,16
	mtctr 9
	li 11,0
.LVL63:
.L91:
	.loc 1 306 0
	lfd 0,-16(3)
	slwi 0,11,2
	add 9,0,10
	.loc 1 302 0
	addi 11,11,1
	.loc 1 306 0
	frsp 0,0
	stfsx 0,10,0
	lfd 0,-8(3)
	frsp 0,0
	stfs 0,16(9)
	lfd 0,0(3)
	.loc 1 302 0
	addi 3,3,32
	.loc 1 306 0
	frsp 0,0
	stfs 0,32(9)
	.loc 1 302 0
	bdnz .L91
.LVL64:
.L92:
.LBE20:
	.loc 1 311 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL65:
	addi 1,1,16
	mtlr 0
	blr
.LFE75:
	.size	glLoadMatrixd, .-glLoadMatrixd
	.align 2
	.globl glLoadMatrixf
	.type	glLoadMatrixf, @function
glLoadMatrixf:
.LFB74:
	.loc 1 221 0
.LVL66:
	mflr 0
.LCFI19:
	stwu 1,-16(1)
.LCFI20:
	.loc 1 222 0
	lis 9,cur_state@ha
	.loc 1 221 0
	stw 31,12(1)
.LCFI21:
	mr 31,3
	stw 0,20(1)
.LCFI22:
	.loc 1 222 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq+ 0,.L100
.LVL67:
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,222
	bl _glSetErrorEx
	b .L112
.LVL68:
.L100:
	.loc 1 226 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	lis 9,curmtx@ha
	cmpwi 7,0,5889
	bne+ 7,.L103
.LBB23:
	.loc 1 228 0
	lwz 3,curmtx@l(9)
	bl TopMtx44
	.loc 1 230 0
	cmpwi 0,3,0
.LVL69:
	bne+ 0,.L116
	b .L112
.LVL70:
.L106:
	.loc 1 239 0
	lfs 0,0(9)
	addi 9,9,4
	stfs 0,0(11)
	.loc 1 237 0
	addi 11,11,16
	bdnz .L106
	.loc 1 235 0
	cmpwi 7,10,3
	.loc 1 237 0
	addi 31,31,16
.LVL71:
	.loc 1 235 0
	addi 10,10,1
	bne+ 7,.L108
	.loc 1 243 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
.LVL72:
	bl TopPrjMtx
.LVL73:
.LBE23:
	.loc 1 266 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL74:
	addi 1,1,16
	mtlr 0
.LBB24:
	.loc 1 243 0
	b computeZplanes
.LVL75:
.L103:
.LBE24:
.LBB25:
	.loc 1 247 0
	lwz 3,curmtx@l(9)
	bl TopMtx
	.loc 1 249 0
	mr. 10,3
.LVL76:
	bne+ 0,.L110
	b .L112
.LVL77:
.L116:
	li 10,0
.LVL78:
.L108:
	slwi 0,10,2
	mr 9,31
	add 11,3,0
	li 0,4
	mtctr 0
	b .L106
.LVL79:
.L110:
	li 9,4
	addi 3,31,8
	mtctr 9
	li 11,0
.LVL80:
.L111:
	.loc 1 261 0
	lfs 0,-8(3)
	slwi 9,11,2
	.loc 1 257 0
	addi 11,11,1
	.loc 1 261 0
	stfsx 0,9,10
	add 9,9,10
	lfs 0,-4(3)
	stfs 0,16(9)
	lfs 0,0(3)
	.loc 1 257 0
	addi 3,3,16
	.loc 1 261 0
	stfs 0,32(9)
	.loc 1 257 0
	bdnz .L111
.LVL81:
.L112:
.LBE25:
	.loc 1 266 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL82:
	addi 1,1,16
	mtlr 0
	blr
.LFE74:
	.size	glLoadMatrixf, .-glLoadMatrixf
	.align 2
	.globl gluLookAt
	.type	gluLookAt, @function
gluLookAt:
.LFB86:
	.loc 1 571 0
.LVL83:
	mflr 0
.LCFI23:
	stwu 1,-120(1)
.LCFI24:
	.loc 1 573 0
	lis 9,cur_state@ha
	.loc 1 571 0
	fmr 9,7
	stmw 29,108(1)
.LCFI25:
	stw 0,124(1)
.LCFI26:
	.loc 1 573 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq+ 0,.L120
.LVL84:
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,573
	bl _glSetErrorEx
.LVL85:
	b .L127
.LVL86:
.L120:
	.loc 1 579 0
	lis 9,cur_mode@ha
	.loc 1 576 0
	lfd 0,128(1)
	.loc 1 579 0
	lwz 0,cur_mode@l(9)
	.loc 1 575 0
	frsp 10,3
	frsp 7,1
	.loc 1 579 0
	cmpwi 7,0,5889
	.loc 1 576 0
	frsp 3,0
.LVL87:
	.loc 1 575 0
	frsp 11,2
	stfs 10,16(1)
	.loc 1 576 0
	frsp 9,9
.LVL88:
	.loc 1 575 0
	stfs 7,8(1)
	.loc 1 576 0
	frsp 8,8
.LVL89:
	stfs 3,28(1)
	.loc 1 577 0
	frsp 0,4
	.loc 1 575 0
	stfs 11,12(1)
	.loc 1 577 0
	frsp 13,5
	.loc 1 576 0
	stfs 9,20(1)
	.loc 1 577 0
	frsp 12,6
	.loc 1 576 0
	stfs 8,24(1)
	.loc 1 577 0
	stfs 0,32(1)
	stfs 13,36(1)
	stfs 12,40(1)
	.loc 1 579 0
	bne+ 7,.L123
.LBB28:
	.loc 1 581 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
	bl TopMtx44
.LVL90:
	.loc 1 584 0
	mr. 31,3
.LVL91:
	beq- 0,.L127
	.loc 1 589 0
	addi 29,1,44
	addi 5,1,20
	addi 6,1,32
	mr 3,29
	addi 4,1,8
	bl guLookAt
	.loc 1 591 0
	mr 3,29
	mr 4,31
	bl CopyMtxToMtx44
	.loc 1 593 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopPrjMtx
	bl computeZplanes
	b .L127
.LVL92:
.L123:
.LBE28:
.LBB29:
	.loc 1 597 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
.LVL93:
	.loc 1 599 0
	cmpwi 7,3,0
	beq- 7,.L127
	.loc 1 604 0
	addi 4,1,8
	addi 5,1,20
	addi 6,1,32
	bl guLookAt
.LVL94:
.L127:
.LBE29:
	.loc 1 606 0
	lwz 0,124(1)
	lmw 29,108(1)
.LVL95:
	addi 1,1,120
	mtlr 0
	blr
.LFE86:
	.size	gluLookAt, .-gluLookAt
	.align 2
	.globl glPushMatrix
	.type	glPushMatrix, @function
glPushMatrix:
.LFB82:
	.loc 1 499 0
	mflr 0
.LCFI27:
	stwu 1,-8(1)
.LCFI28:
	.loc 1 501 0
	lis 9,cur_state@ha
	.loc 1 499 0
	stw 0,12(1)
.LCFI29:
	.loc 1 501 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L129
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,501
	bl _glSetErrorEx
	b .L132
.L129:
	.loc 1 503 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl Push
.L132:
	.loc 1 504 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE82:
	.size	glPushMatrix, .-glPushMatrix
	.align 2
	.globl glPopMatrix
	.type	glPopMatrix, @function
glPopMatrix:
.LFB81:
	.loc 1 493 0
	mflr 0
.LCFI30:
	stwu 1,-8(1)
.LCFI31:
	.loc 1 494 0
	lis 9,cur_state@ha
	.loc 1 493 0
	stw 0,12(1)
.LCFI32:
	.loc 1 494 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L134
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,494
	bl _glSetErrorEx
	b .L137
.L134:
	.loc 1 496 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl Pop
.L137:
	.loc 1 497 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE81:
	.size	glPopMatrix, .-glPopMatrix
	.align 2
	.globl glMultMatrixf
	.type	glMultMatrixf, @function
glMultMatrixf:
.LFB80:
	.loc 1 430 0
.LVL96:
	mflr 0
.LCFI33:
	stwu 1,-160(1)
.LCFI34:
	.loc 1 431 0
	lis 9,cur_state@ha
	.loc 1 430 0
	stmw 29,148(1)
.LCFI35:
	mr 30,3
	stw 0,164(1)
.LCFI36:
	.loc 1 431 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq+ 0,.L139
.LVL97:
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,431
	bl _glSetErrorEx
	b .L154
.LVL98:
.L139:
	.loc 1 434 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	lis 9,curmtx@ha
	cmpwi 7,0,5889
	bne+ 7,.L142
.LBB32:
	.loc 1 436 0
	lwz 3,curmtx@l(9)
	bl TopMtx44
	.loc 1 438 0
	mr. 31,3
.LVL99:
	beq- 0,.L154
	.loc 1 448 0
	addi 29,1,8
	mr 3,30
	mr 4,29
	bl CopyGLfloatToMtx44
	mr 3,31
	mr 7,31
.LVL100:
	li 6,0
.LVL101:
	.loc 1 464 0
	addi 4,1,72
	.loc 1 456 0
	li 5,0
	b .L145
.LVL102:
.L146:
	stw 5,0(10)
	slwi 0,11,2
	stw 5,136(1)
	add 9,29,0
	li 0,4
	li 8,0
	lfs 12,136(1)
	mtctr 0
.L147:
	.loc 1 459 0
	lfsx 13,8,7
	addi 8,8,4
	lfs 0,0(9)
	addi 9,9,16
	fmadds 12,13,0,12
	.loc 1 457 0
	bdnz .L147
	.loc 1 454 0
	cmpwi 7,11,3
	.loc 1 457 0
	stfs 12,0(10)
	.loc 1 454 0
	addi 11,11,1
	addi 10,10,4
	bne+ 7,.L146
	.loc 1 452 0
	cmpwi 7,6,3
	addi 7,7,16
	addi 6,6,1
	beq- 7,.L161
	b .L145
.L162:
	.loc 1 472 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopPrjMtx
.LVL103:
	bl computeZplanes
	b .L154
.LVL104:
.L142:
.LBE32:
.LBB33:
	.loc 1 476 0
	lwz 3,curmtx@l(9)
	bl TopMtx
	.loc 1 479 0
	mr. 31,3
.LVL105:
	beq- 0,.L154
	.loc 1 487 0
	addi 29,1,8
	mr 3,30
	mr 4,29
	bl CopyGLfloatToMtx
	.loc 1 489 0
	mr 3,31
	mr 4,29
	mr 5,31
.LVL106:
	bl ps_guMtxConcat
	b .L154
.LVL107:
.L161:
.LBE33:
.LBB34:
	.loc 1 464 0
	li 0,4
.LBE34:
.LBB35:
	.loc 1 489 0
	addi 9,1,72
.LBE35:
.LBB36:
	.loc 1 464 0
	mtctr 0
.L153:
	.loc 1 468 0
	lfs 0,0(9)
	stfs 0,0(3)
	lfs 0,4(9)
	stfs 0,4(3)
	lfs 0,8(9)
	stfs 0,8(3)
	lfs 0,12(9)
	addi 9,9,16
	stfs 0,12(3)
	addi 3,3,16
	.loc 1 464 0
	bdz .L162
	b .L153
.L145:
	slwi 0,6,4
	li 11,0
	add 10,4,0
	b .L146
.LVL108:
.L154:
.LBE36:
	.loc 1 491 0
	lwz 0,164(1)
	lmw 29,148(1)
.LVL109:
	addi 1,1,160
	mtlr 0
	blr
.LFE80:
	.size	glMultMatrixf, .-glMultMatrixf
	.align 2
	.globl glScalef
	.type	glScalef, @function
glScalef:
.LFB79:
	.loc 1 397 0
.LVL110:
	mflr 0
.LCFI37:
	stwu 1,-112(1)
.LCFI38:
	.loc 1 398 0
	lis 9,cur_state@ha
	.loc 1 397 0
	stfd 29,88(1)
.LCFI39:
	fmr 29,3
	stfd 30,96(1)
.LCFI40:
	fmr 30,2
	stfd 31,104(1)
.LCFI41:
	fmr 31,1
	stmw 29,76(1)
.LCFI42:
	stw 0,116(1)
.LCFI43:
	.loc 1 398 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq+ 0,.L164
.LVL111:
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,398
	bl _glSetErrorEx
	b .L170
.LVL112:
.L164:
	.loc 1 400 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	bne+ 7,.L167
.LBB39:
	.loc 1 408 0
	lis 9,.LC0@ha
	.loc 1 405 0
	li 0,0
	.loc 1 408 0
	lfs 0,.LC0@l(9)
	.loc 1 410 0
	addi 3,1,8
	.loc 1 405 0
	stfs 1,8(1)
	.loc 1 406 0
	stfs 2,28(1)
	.loc 1 407 0
	stfs 3,48(1)
	.loc 1 408 0
	stw 0,52(1)
	stfs 0,68(1)
	.loc 1 405 0
	stw 0,24(1)
	stw 0,40(1)
	stw 0,56(1)
	.loc 1 406 0
	stw 0,12(1)
	stw 0,44(1)
	stw 0,60(1)
	.loc 1 407 0
	stw 0,16(1)
	stw 0,32(1)
	stw 0,64(1)
	.loc 1 408 0
	stw 0,20(1)
	stw 0,36(1)
	.loc 1 410 0
	bl glMultMatrixf
	b .L170
.LVL113:
.L167:
.LBE39:
.LBB40:
	.loc 1 416 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
	.loc 1 418 0
	mr. 31,3
.LVL114:
	beq- 0,.L170
	.loc 1 423 0
	addi 29,1,8
	mr 3,29
	bl ps_guMtxIdentity
	.loc 1 424 0
	fmr 1,31
	fmr 2,30
	mr 3,29
	fmr 3,29
	bl ps_guMtxScale
	.loc 1 425 0
	mr 3,31
	mr 4,29
	mr 5,31
.LVL115:
	bl ps_guMtxConcat
.LVL116:
.L170:
.LBE40:
	.loc 1 427 0
	lwz 0,116(1)
	lmw 29,76(1)
.LVL117:
	lfd 29,88(1)
.LVL118:
	mtlr 0
	lfd 30,96(1)
.LVL119:
	lfd 31,104(1)
.LVL120:
	addi 1,1,112
	blr
.LFE79:
	.size	glScalef, .-glScalef
	.align 2
	.globl glRotatef
	.type	glRotatef, @function
glRotatef:
.LFB78:
	.loc 1 352 0
.LVL121:
	mflr 0
.LCFI44:
	stwu 1,-144(1)
.LCFI45:
	.loc 1 353 0
	lis 9,cur_state@ha
	.loc 1 352 0
	stfd 27,104(1)
.LCFI46:
	fmr 27,3
	stfd 28,112(1)
.LCFI47:
	fmr 28,2
	stfd 29,120(1)
.LCFI48:
	fmr 29,4
	stfd 30,128(1)
.LCFI49:
	fmr 30,1
	stfd 31,136(1)
.LCFI50:
	stmw 29,92(1)
.LCFI51:
	stw 0,148(1)
.LCFI52:
	.loc 1 353 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq+ 0,.L172
.LVL122:
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,353
	bl _glSetErrorEx
	b .L178
.LVL123:
.L172:
	.loc 1 355 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	bne+ 7,.L175
.LBB43:
	.loc 1 358 0
	lis 9,.LC8@ha
	lfs 31,.LC8@l(9)
	fmuls 31,1,31
	fmr 1,31
	bl sinf
	fmr 30,1
.LVL124:
	.loc 1 359 0
	fmr 1,31
	bl cosf
	.loc 1 368 0
	lis 9,.LC0@ha
	lfs 0,.LC0@l(9)
	.loc 1 369 0
	fmuls 9,27,29
	.loc 1 368 0
	fmuls 12,27,28
	li 0,0
	fsubs 0,0,1
.LVL125:
	.loc 1 372 0
	addi 3,1,20
	.loc 1 368 0
	fmuls 11,28,29
	.loc 1 371 0
	stw 0,80(1)
	.loc 1 369 0
	fmuls 6,28,30
	.loc 1 368 0
	stw 0,68(1)
	fmuls 7,29,30
	.loc 1 369 0
	stw 0,72(1)
	.loc 1 368 0
	fmuls 12,12,0
	.loc 1 370 0
	stw 0,76(1)
	.loc 1 368 0
	fmuls 11,11,0
	.loc 1 371 0
	stw 0,32(1)
	.loc 1 369 0
	fmuls 9,9,0
	.loc 1 371 0
	stw 0,48(1)
	.loc 1 368 0
	fmuls 30,27,30
.LVL126:
	.loc 1 371 0
	stw 0,64(1)
	.loc 1 370 0
	fmuls 8,29,29
	.loc 1 368 0
	fmuls 13,28,28
	.loc 1 369 0
	fmuls 10,27,27
	fsubs 5,12,7
	.loc 1 370 0
	fadds 4,11,30
	fsubs 3,9,6
	fmadds 8,8,0,1
	.loc 1 369 0
	stfs 5,24(1)
	.loc 1 368 0
	fmadds 13,13,0,1
	.loc 1 370 0
	stfs 4,28(1)
	.loc 1 369 0
	fmadds 10,10,0,1
	.loc 1 370 0
	stfs 3,44(1)
	.loc 1 368 0
	fadds 12,12,7
	.loc 1 370 0
	stfs 8,60(1)
	.loc 1 368 0
	fsubs 11,11,30
	stfs 13,20(1)
	.loc 1 369 0
	fadds 9,9,6
	stfs 10,40(1)
	.loc 1 368 0
	stfs 12,36(1)
	stfs 11,52(1)
	.loc 1 369 0
	stfs 9,56(1)
	.loc 1 372 0
	bl glMultMatrixf
.LVL127:
	b .L178
.LVL128:
.L175:
.LBE43:
.LBB44:
	.loc 1 379 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
	.loc 1 381 0
	mr. 31,3
.LVL129:
	beq- 0,.L178
	.loc 1 391 0
	addi 29,1,20
	.loc 1 388 0
	stfs 28,8(1)
	.loc 1 391 0
	mr 3,29
	.loc 1 389 0
	stfs 27,12(1)
	.loc 1 390 0
	stfs 29,16(1)
	.loc 1 391 0
	bl ps_guMtxIdentity
	.loc 1 392 0
	lis 9,.LC8@ha
	mr 3,29
	lfs 1,.LC8@l(9)
	addi 4,1,8
	fmuls 1,30,1
	bl ps_guMtxRotAxisRad
	.loc 1 393 0
	mr 3,31
	mr 4,29
	mr 5,31
.LVL130:
	bl ps_guMtxConcat
.LVL131:
.L178:
.LBE44:
	.loc 1 395 0
	lwz 0,148(1)
	lmw 29,92(1)
.LVL132:
	lfd 27,104(1)
.LVL133:
	mtlr 0
	lfd 28,112(1)
.LVL134:
	lfd 29,120(1)
.LVL135:
	lfd 30,128(1)
.LVL136:
	lfd 31,136(1)
	addi 1,1,144
	blr
.LFE78:
	.size	glRotatef, .-glRotatef
	.align 2
	.globl glTranslatef
	.type	glTranslatef, @function
glTranslatef:
.LFB76:
	.loc 1 313 0
.LVL137:
	mflr 0
.LCFI53:
	stwu 1,-112(1)
.LCFI54:
	.loc 1 314 0
	lis 9,cur_state@ha
	.loc 1 313 0
	stfd 29,88(1)
.LCFI55:
	fmr 29,3
	stfd 30,96(1)
.LCFI56:
	fmr 30,2
	stfd 31,104(1)
.LCFI57:
	fmr 31,1
	stmw 29,76(1)
.LCFI58:
	stw 0,116(1)
.LCFI59:
	.loc 1 314 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq+ 0,.L180
.LVL138:
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,314
	bl _glSetErrorEx
	b .L186
.LVL139:
.L180:
	.loc 1 316 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	bne+ 7,.L183
.LBB47:
	.loc 1 321 0
	lis 9,.LC0@ha
	li 0,0
	lfs 0,.LC0@l(9)
	.loc 1 326 0
	addi 3,1,8
	.loc 1 321 0
	stfs 1,56(1)
	.loc 1 322 0
	stfs 2,60(1)
	.loc 1 323 0
	stfs 3,64(1)
	.loc 1 324 0
	stw 0,52(1)
	stfs 0,68(1)
	.loc 1 321 0
	stfs 0,8(1)
	stw 0,24(1)
	stw 0,40(1)
	.loc 1 322 0
	stw 0,12(1)
	stfs 0,28(1)
	stw 0,44(1)
	.loc 1 323 0
	stw 0,16(1)
	stw 0,32(1)
	stfs 0,48(1)
	.loc 1 324 0
	stw 0,20(1)
	stw 0,36(1)
	.loc 1 326 0
	bl glMultMatrixf
	b .L186
.LVL140:
.L183:
.LBE47:
.LBB48:
	.loc 1 332 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
	.loc 1 334 0
	mr. 31,3
.LVL141:
	beq- 0,.L186
	.loc 1 339 0
	addi 29,1,8
	mr 3,29
	bl ps_guMtxIdentity
	.loc 1 340 0
	fmr 1,31
	fmr 2,30
	mr 3,29
	fmr 3,29
	bl ps_guMtxTrans
	.loc 1 341 0
	mr 3,31
	mr 4,29
	mr 5,31
.LVL142:
	bl ps_guMtxConcat
.LVL143:
.L186:
.LBE48:
	.loc 1 343 0
	lwz 0,116(1)
	lmw 29,76(1)
.LVL144:
	lfd 29,88(1)
.LVL145:
	mtlr 0
	lfd 30,96(1)
.LVL146:
	lfd 31,104(1)
.LVL147:
	addi 1,1,112
	blr
.LFE76:
	.size	glTranslatef, .-glTranslatef
	.align 2
	.globl glTranslated
	.type	glTranslated, @function
glTranslated:
.LFB77:
	.loc 1 346 0
.LVL148:
	mflr 0
.LCFI60:
	stwu 1,-8(1)
.LCFI61:
	.loc 1 347 0
	lis 9,cur_state@ha
	.loc 1 346 0
	stw 0,12(1)
.LCFI62:
	.loc 1 347 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L188
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,347
	bl _glSetErrorEx
.LVL149:
	.loc 1 350 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL150:
.L188:
	lwz 0,12(1)
	.loc 1 349 0
	frsp 1,1
.LVL151:
	frsp 2,2
.LVL152:
	.loc 1 350 0
	addi 1,1,8
	.loc 1 349 0
	frsp 3,3
.LVL153:
	.loc 1 350 0
	mtlr 0
	.loc 1 349 0
	b glTranslatef
.LFE77:
	.size	glTranslated, .-glTranslated
	.align 2
	.globl glLoadIdentity
	.type	glLoadIdentity, @function
glLoadIdentity:
.LFB73:
	.loc 1 180 0
	mflr 0
.LCFI63:
	stwu 1,-16(1)
.LCFI64:
	.loc 1 181 0
	lis 9,cur_state@ha
	.loc 1 180 0
	stw 31,12(1)
.LCFI65:
	stw 0,20(1)
.LCFI66:
	.loc 1 181 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq+ 0,.L193
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,181
	bl _glSetErrorEx
	b .L200
.L193:
	.loc 1 183 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	bne+ 7,.L196
.LBB51:
	.loc 1 185 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
	bl TopPrjMtx
	.loc 1 187 0
	mr. 31,3
.LVL154:
	beq- 0,.L200
	.loc 1 196 0
	li 4,0
	li 5,64
	bl memset
	.loc 1 200 0
	lis 9,.LC0@ha
	lfs 13,.LC0@l(9)
	.loc 1 205 0
	lis 9,.LC10@ha
	lfs 0,.LC10@l(9)
	.loc 1 203 0
	li 0,1
	stb 0,64(31)
	.loc 1 205 0
	stfs 0,72(31)
	.loc 1 204 0
	stfs 13,68(31)
	.loc 1 200 0
	stfs 13,0(31)
	stfs 13,20(31)
	stfs 13,40(31)
	stfs 13,60(31)
	b .L200
.LVL155:
.L196:
.LBE51:
.LBB52:
	.loc 1 209 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
	.loc 1 211 0
	cmpwi 7,3,0
	beq- 7,.L200
	.loc 1 216 0
	bl ps_guMtxIdentity
.LVL156:
.L200:
.LBE52:
	.loc 1 218 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL157:
	addi 1,1,16
	mtlr 0
	blr
.LFE73:
	.size	glLoadIdentity, .-glLoadIdentity
	.align 2
	.globl glOrtho
	.type	glOrtho, @function
glOrtho:
.LFB71:
	.loc 1 115 0
.LVL158:
	mflr 0
.LCFI67:
	stwu 1,-136(1)
.LCFI68:
	.loc 1 116 0
	lis 9,cur_state@ha
	.loc 1 115 0
	stfd 26,88(1)
.LCFI69:
	fmr 26,2
	stfd 27,96(1)
.LCFI70:
	fmr 27,1
	stfd 28,104(1)
.LCFI71:
	fmr 28,3
	stfd 29,112(1)
.LCFI72:
	fmr 29,4
	stfd 30,120(1)
.LCFI73:
	fmr 30,5
	stfd 31,128(1)
.LCFI74:
	fmr 31,6
	stmw 29,76(1)
.LCFI75:
	stw 0,140(1)
.LCFI76:
	.loc 1 116 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq+ 0,.L202
.LVL159:
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,116
	b .L214
.L202:
	.loc 1 118 0
	fcmpu 7,1,2
	beq- 7,.L205
.LVL160:
	fcmpu 7,3,4
	bne- 7,.L207
.L205:
	.loc 1 120 0
	lis 4,.LC3@ha
	li 3,1281
	la 4,.LC3@l(4)
	li 5,120
.L214:
	bl _glSetErrorEx
.LVL161:
	b .L213
.LVL162:
.L207:
	.loc 1 124 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	bne+ 7,.L209
.LBB55:
	.loc 1 126 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
	bl TopPrjMtx
.LVL163:
	.loc 1 128 0
	mr. 29,3
.LVL164:
	beq- 0,.L213
	.loc 1 134 0
	frsp 30,30
.LVL165:
	frsp 31,31
.LVL166:
	frsp 1,29
	frsp 2,28
	frsp 3,27
	frsp 4,26
	fmr 5,30
	fmr 6,31
	bl guOrtho
	.loc 1 135 0
	li 0,1
	.loc 1 138 0
	stfs 31,72(29)
	.loc 1 135 0
	stb 0,64(29)
	.loc 1 137 0
	stfs 30,68(29)
	b .L213
.LVL167:
.L209:
.LBE55:
.LBB56:
	.loc 1 143 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
.LVL168:
	.loc 1 145 0
	mr. 31,3
.LVL169:
	beq- 0,.L213
	.loc 1 150 0
	frsp 1,29
	addi 29,1,8
	frsp 2,28
	mr 3,29
	frsp 3,27
	frsp 4,26
	frsp 5,30
	frsp 6,31
	bl guOrtho
	.loc 1 152 0
	mr 3,29
	mr 4,31
	bl CopyMtx44ToMtx
.LVL170:
.L213:
.LBE56:
	.loc 1 154 0
	lwz 0,140(1)
	lmw 29,76(1)
.LVL171:
	lfd 26,88(1)
.LVL172:
	mtlr 0
	lfd 27,96(1)
.LVL173:
	lfd 28,104(1)
.LVL174:
	lfd 29,112(1)
.LVL175:
	lfd 30,120(1)
.LVL176:
	lfd 31,128(1)
.LVL177:
	addi 1,1,136
	blr
.LFE71:
	.size	glOrtho, .-glOrtho
	.align 2
	.globl glFrustum
	.type	glFrustum, @function
glFrustum:
.LFB70:
	.loc 1 79 0
.LVL178:
	mflr 0
.LCFI77:
	stwu 1,-136(1)
.LCFI78:
	.loc 1 80 0
	lis 9,cur_state@ha
	.loc 1 79 0
	stfd 26,88(1)
.LCFI79:
	fmr 26,2
	stfd 27,96(1)
.LCFI80:
	fmr 27,1
	stfd 28,104(1)
.LCFI81:
	fmr 28,3
	stfd 29,112(1)
.LCFI82:
	fmr 29,4
	stfd 30,120(1)
.LCFI83:
	fmr 30,5
	stfd 31,128(1)
.LCFI84:
	fmr 31,6
	stmw 28,72(1)
.LCFI85:
	stw 0,140(1)
.LCFI86:
	.loc 1 80 0
	lwz 0,cur_state@l(9)
	andi. 31,0,1
	beq+ 0,.L216
.LVL179:
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,80
	bl _glSetErrorEx
	b .L222
.LVL180:
.L216:
	.loc 1 82 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	bne+ 7,.L219
.LBB59:
	.loc 1 84 0
	lis 29,projection_stack@ha
	la 29,projection_stack@l(29)
	mr 3,29
	bl TopPrjMtx
	mr 28,3
.LVL181:
	.loc 1 85 0
	mr 3,29
	bl TopMtx44
	.loc 1 87 0
	cmpwi 7,3,0
	beq- 7,.L222
	.loc 1 92 0
	frsp 30,30
.LVL182:
	frsp 31,31
.LVL183:
	frsp 1,29
	frsp 2,28
	frsp 3,27
	frsp 4,26
	fmr 5,30
	fmr 6,31
	bl guFrustum
	.loc 1 96 0
	stfs 31,72(28)
	.loc 1 93 0
	stb 31,64(28)
	.loc 1 95 0
	stfs 30,68(28)
	b .L222
.LVL184:
.L219:
.LBE59:
.LBB60:
	.loc 1 101 0
	lis 9,curmtx@ha
	.loc 1 103 0
	addi 29,1,8
	.loc 1 101 0
	lwz 3,curmtx@l(9)
	bl TopMtx
	.loc 1 103 0
	frsp 1,29
	frsp 2,28
	.loc 1 101 0
	mr 28,3
.LVL185:
	.loc 1 103 0
	frsp 3,27
	mr 3,29
	frsp 4,26
	frsp 5,30
	frsp 6,31
	bl guFrustum
	.loc 1 105 0
	mr 3,29
	mr 4,28
	bl CopyMtx44ToMtx
.LVL186:
.L222:
.LBE60:
	.loc 1 107 0
	lwz 0,140(1)
	lmw 28,72(1)
.LVL187:
	lfd 26,88(1)
.LVL188:
	mtlr 0
	lfd 27,96(1)
.LVL189:
	lfd 28,104(1)
.LVL190:
	lfd 29,112(1)
.LVL191:
	lfd 30,120(1)
.LVL192:
	lfd 31,128(1)
.LVL193:
	addi 1,1,136
	blr
.LFE70:
	.size	glFrustum, .-glFrustum
	.comm	_tempcolorelement,16,4
	.comm	_tempnormalelement,12,4
	.comm	_temptexcoordelement,1600,4
	.comm	norm,20,4
	.comm	vert,20,4
	.comm	tex,4000,4
	.comm	color,20,4
	.comm	_normalelements,12000,32
	.comm	_vertexelements,12000,32
	.comm	_texcoordelements,1600000,32
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
	.comm	texture_stack,3200,4
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
	.comm	glTexEnvs,21600,4
	.comm	read_mode,4,4
	.comm	call_offset,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	1065353216
.LC2:
	.4byte	0
.LC8:
	.4byte	1016003125
.LC10:
	.4byte	-1082130432
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC3:
	.string	"c:/devkitPro/examples/wii/cube_source/gl2gx/libogc/../source/gl_matrix.c"
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
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x4
	.4byte	.LCFI1-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.byte	0x4
	.4byte	.LCFI4-.LFB87
	.byte	0xe
	.uleb128 0x78
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xbc
	.uleb128 0x8
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xbd
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xbe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xbf
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI10-.LCFI8
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x9f
	.uleb128 0x9
	.byte	0x9e
	.uleb128 0xa
	.byte	0x9d
	.uleb128 0xb
	.byte	0x9c
	.uleb128 0xc
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.byte	0x4
	.4byte	.LCFI11-.LFB83
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI13-.LCFI11
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x4
	.4byte	.LCFI16-.LFB75
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x4
	.4byte	.LCFI20-.LFB74
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.byte	0x4
	.4byte	.LCFI24-.LFB86
	.byte	0xe
	.uleb128 0x78
	.byte	0x4
	.4byte	.LCFI26-.LCFI24
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
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.byte	0x4
	.4byte	.LCFI28-.LFB82
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.byte	0x4
	.4byte	.LCFI31-.LFB81
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.byte	0x4
	.4byte	.LCFI34-.LFB80
	.byte	0xe
	.uleb128 0xa0
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
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
	.4byte	.LCFI36-.LCFI35
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.byte	0x4
	.4byte	.LCFI38-.LFB79
	.byte	0xe
	.uleb128 0x70
	.byte	0x4
	.4byte	.LCFI39-.LCFI38
	.byte	0xbd
	.uleb128 0x6
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI40-.LCFI39
	.byte	0xbe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI41-.LCFI40
	.byte	0xbf
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI43-.LCFI41
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x9f
	.uleb128 0x7
	.byte	0x9e
	.uleb128 0x8
	.byte	0x9d
	.uleb128 0x9
	.align 2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.byte	0x4
	.4byte	.LCFI45-.LFB78
	.byte	0xe
	.uleb128 0x90
	.byte	0x4
	.4byte	.LCFI46-.LCFI45
	.byte	0xbb
	.uleb128 0xa
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
	.byte	0xbc
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI48-.LCFI47
	.byte	0xbd
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI49-.LCFI48
	.byte	0xbe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI52-.LCFI49
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x9f
	.uleb128 0xb
	.byte	0x9e
	.uleb128 0xc
	.byte	0x9d
	.uleb128 0xd
	.byte	0xbf
	.uleb128 0x2
	.align 2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x4
	.4byte	.LCFI54-.LFB76
	.byte	0xe
	.uleb128 0x70
	.byte	0x4
	.4byte	.LCFI55-.LCFI54
	.byte	0xbd
	.uleb128 0x6
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI56-.LCFI55
	.byte	0xbe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI57-.LCFI56
	.byte	0xbf
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI59-.LCFI57
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x9f
	.uleb128 0x7
	.byte	0x9e
	.uleb128 0x8
	.byte	0x9d
	.uleb128 0x9
	.align 2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.byte	0x4
	.4byte	.LCFI61-.LFB77
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI62-.LCFI61
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x4
	.4byte	.LCFI64-.LFB73
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI66-.LCFI64
	.byte	0x9f
	.uleb128 0x1
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x4
	.4byte	.LCFI68-.LFB71
	.byte	0xe
	.uleb128 0x88
	.byte	0x4
	.4byte	.LCFI69-.LCFI68
	.byte	0xba
	.uleb128 0xc
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI70-.LCFI69
	.byte	0xbb
	.uleb128 0xa
	.byte	0x4
	.4byte	.LCFI71-.LCFI70
	.byte	0xbc
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI72-.LCFI71
	.byte	0xbd
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI73-.LCFI72
	.byte	0xbe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI74-.LCFI73
	.byte	0xbf
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI76-.LCFI74
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x9f
	.uleb128 0xd
	.byte	0x9e
	.uleb128 0xe
	.byte	0x9d
	.uleb128 0xf
	.align 2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x4
	.4byte	.LCFI78-.LFB70
	.byte	0xe
	.uleb128 0x88
	.byte	0x4
	.4byte	.LCFI79-.LCFI78
	.byte	0xba
	.uleb128 0xc
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI80-.LCFI79
	.byte	0xbb
	.uleb128 0xa
	.byte	0x4
	.4byte	.LCFI81-.LCFI80
	.byte	0xbc
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI82-.LCFI81
	.byte	0xbd
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI83-.LCFI82
	.byte	0xbe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI84-.LCFI83
	.byte	0xbf
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI86-.LCFI84
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x9f
	.uleb128 0xd
	.byte	0x9e
	.uleb128 0xe
	.byte	0x9d
	.uleb128 0xf
	.byte	0x9c
	.uleb128 0x10
	.align 2
.LEFDE40:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE84-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE85-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB72-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB87-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE87-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 120
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LFB83-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE83-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47-.Ltext0
	.4byte	.LFE83-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE83-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LFB75-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL64-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LFB74-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI20-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL81-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LFB86-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI24-.Ltext0
	.4byte	.LFE86-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 120
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x27
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x29
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x29
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x28
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x28
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LFB82-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI28-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LFB81-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LFB80-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI34-.Ltext0
	.4byte	.LFE80-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 160
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LFB79-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI38-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LFB78-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI45-.Ltext0
	.4byte	.LFE78-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 144
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST62:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST63:
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST64:
	.4byte	.LFB76-.Ltext0
	.4byte	.LCFI54-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI54-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	0x0
	.4byte	0x0
.LLST65:
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST66:
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST67:
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST68:
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST69:
	.4byte	.LFB77-.Ltext0
	.4byte	.LCFI61-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI61-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST70:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST71:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST72:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0x0
	.4byte	0x0
.LLST73:
	.4byte	.LFB73-.Ltext0
	.4byte	.LCFI64-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI64-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST74:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST75:
	.4byte	.LFB71-.Ltext0
	.4byte	.LCFI68-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI68-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 136
	.4byte	0x0
	.4byte	0x0
.LLST76:
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0x0
	.4byte	0x0
.LLST77:
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0x0
	.4byte	0x0
.LLST78:
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST79:
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST80:
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST81:
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST82:
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST83:
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST84:
	.4byte	.LFB70-.Ltext0
	.4byte	.LCFI78-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI78-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 136
	.4byte	0x0
	.4byte	0x0
.LLST85:
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0x0
	.4byte	0x0
.LLST86:
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0x0
	.4byte	0x0
.LLST87:
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST88:
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST89:
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST90:
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST91:
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST92:
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:/devkitPro/libogc/include/gctypes.h"
	.file 3 "c:/devkitPro/libogc/include/ogc/gu.h"
	.file 4 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h"
	.file 5 "c:/devkitPro/libogc/include/ogc/gx.h"
	.file 6 "c:/devkitPro/examples/wii/cube_source/gl2gx/libogc/include/GL/gl.h"
	.file 7 "c:/devkitPro/examples/wii/cube_source/gl2gx/libogc/../source/include/glint.h"
	.file 8 "c:/devkitPro/examples/wii/cube_source/gl2gx/libogc/../source/include/mat_stack.h"
	.section	.debug_info
	.4byte	0x173b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF211
	.byte	0x1
	.4byte	.LASF212
	.4byte	.LASF213
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
	.byte	0x2
	.byte	0x10
	.4byte	0x3a
	.uleb128 0x7
	.string	"u32"
	.byte	0x2
	.byte	0x12
	.4byte	0x30
	.uleb128 0x8
	.4byte	0x3a
	.uleb128 0x8
	.4byte	0x41
	.uleb128 0x8
	.4byte	0x30
	.uleb128 0x8
	.4byte	0x4a
	.uleb128 0x8
	.4byte	0x51
	.uleb128 0x8
	.4byte	0x58
	.uleb128 0x7
	.string	"f32"
	.byte	0x2
	.byte	0x2a
	.4byte	0x89
	.uleb128 0x8
	.4byte	0x89
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF14
	.uleb128 0x9
	.byte	0x4
	.4byte	0xe7
	.uleb128 0xa
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0xc
	.byte	0x3
	.byte	0x27
	.4byte	0x119
	.uleb128 0xc
	.string	"x"
	.byte	0x3
	.byte	0x28
	.4byte	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"y"
	.byte	0x3
	.byte	0x28
	.4byte	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"z"
	.byte	0x3
	.byte	0x28
	.4byte	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x29
	.4byte	0xe8
	.uleb128 0x7
	.string	"Mtx"
	.byte	0x3
	.byte	0x2f
	.4byte	0x12f
	.uleb128 0xd
	.4byte	0xca
	.4byte	0x145
	.uleb128 0xe
	.4byte	0x37
	.byte	0x2
	.uleb128 0xe
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.4byte	0x150
	.uleb128 0x9
	.byte	0x4
	.4byte	0x156
	.uleb128 0xd
	.4byte	0xca
	.4byte	0x166
	.uleb128 0xe
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x3
	.byte	0x35
	.4byte	0x171
	.uleb128 0xd
	.4byte	0xca
	.4byte	0x187
	.uleb128 0xe
	.4byte	0x37
	.byte	0x3
	.uleb128 0xe
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x3
	.byte	0x36
	.4byte	0x150
	.uleb128 0xf
	.4byte	.LASF214
	.byte	0x4
	.byte	0x5
	.2byte	0x3af
	.4byte	0x1f2
	.uleb128 0x10
	.string	"U8"
	.byte	0x5
	.2byte	0x3b0
	.4byte	0xac
	.uleb128 0x10
	.string	"S8"
	.byte	0x5
	.2byte	0x3b1
	.4byte	0xbb
	.uleb128 0x10
	.string	"U16"
	.byte	0x5
	.2byte	0x3b2
	.4byte	0xb1
	.uleb128 0x10
	.string	"S16"
	.byte	0x5
	.2byte	0x3b3
	.4byte	0xc0
	.uleb128 0x10
	.string	"U32"
	.byte	0x5
	.2byte	0x3b4
	.4byte	0xb6
	.uleb128 0x10
	.string	"S32"
	.byte	0x5
	.2byte	0x3b5
	.4byte	0xc5
	.uleb128 0x10
	.string	"F32"
	.byte	0x5
	.2byte	0x3b6
	.4byte	0xd5
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x3b7
	.4byte	0x192
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x4
	.byte	0x5
	.2byte	0x3b9
	.4byte	0x240
	.uleb128 0x13
	.string	"r"
	.byte	0x5
	.2byte	0x3ba
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.string	"g"
	.byte	0x5
	.2byte	0x3bb
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x13
	.string	"b"
	.byte	0x5
	.2byte	0x3bc
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x13
	.string	"a"
	.byte	0x5
	.2byte	0x3bd
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x3be
	.4byte	0x1fe
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x40
	.byte	0x5
	.2byte	0x3d7
	.4byte	0x269
	.uleb128 0x13
	.string	"val"
	.byte	0x5
	.2byte	0x3d8
	.4byte	0x269
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xd
	.4byte	0xa1
	.4byte	0x279
	.uleb128 0xe
	.4byte	0x37
	.byte	0xf
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x3d9
	.4byte	0x24c
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x6
	.byte	0x92
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x6
	.byte	0x93
	.4byte	0x3a
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x6
	.byte	0x98
	.4byte	0x58
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x6
	.byte	0x9b
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x6
	.byte	0x9c
	.4byte	0x58
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x6
	.byte	0x9d
	.4byte	0x89
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x6
	.byte	0x9f
	.4byte	0x82
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2d8
	.uleb128 0x14
	.4byte	0x2c7
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2e3
	.uleb128 0x14
	.4byte	0x2bc
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2bc
	.uleb128 0x15
	.byte	0x10
	.byte	0x7
	.byte	0x16
	.4byte	0x30f
	.uleb128 0xc
	.string	"v"
	.byte	0x7
	.byte	0x17
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"w"
	.byte	0x7
	.byte	0x18
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x7
	.byte	0x19
	.4byte	0x2ee
	.uleb128 0x15
	.byte	0x8
	.byte	0x7
	.byte	0x1c
	.4byte	0x33b
	.uleb128 0xc
	.string	"s"
	.byte	0x7
	.byte	0x1d
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"t"
	.byte	0x7
	.byte	0x1e
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x7
	.byte	0x1f
	.4byte	0x31a
	.uleb128 0x15
	.byte	0x10
	.byte	0x7
	.byte	0x22
	.4byte	0x37f
	.uleb128 0xc
	.string	"r"
	.byte	0x7
	.byte	0x23
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"g"
	.byte	0x7
	.byte	0x24
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"b"
	.byte	0x7
	.byte	0x25
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"a"
	.byte	0x7
	.byte	0x26
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x7
	.byte	0x27
	.4byte	0x346
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x14
	.byte	0x7
	.byte	0x42
	.4byte	0x3db
	.uleb128 0x16
	.4byte	.LASF36
	.byte	0x7
	.byte	0x43
	.4byte	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"p"
	.byte	0x7
	.byte	0x44
	.4byte	0xe1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF37
	.byte	0x7
	.byte	0x45
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF38
	.byte	0x7
	.byte	0x46
	.4byte	0x29b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF39
	.byte	0x7
	.byte	0x47
	.4byte	0x285
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x7
	.byte	0x48
	.4byte	0x38a
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x4c
	.byte	0x7
	.byte	0x6b
	.4byte	0x42b
	.uleb128 0xc
	.string	"mat"
	.byte	0x7
	.byte	0x6c
	.4byte	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF42
	.byte	0x7
	.byte	0x6d
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x16
	.4byte	.LASF43
	.byte	0x7
	.byte	0x6e
	.4byte	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x16
	.4byte	.LASF44
	.byte	0x7
	.byte	0x6f
	.4byte	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x7
	.byte	0x70
	.4byte	0x3e6
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x10
	.byte	0x8
	.byte	0xd
	.4byte	0x47b
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0x8
	.byte	0xe
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF48
	.byte	0x8
	.byte	0xf
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF38
	.byte	0x8
	.byte	0x10
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"cur"
	.byte	0x8
	.byte	0x11
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x8
	.byte	0x12
	.4byte	0x436
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0xa4
	.byte	0x7
	.byte	0x7e
	.4byte	0x541
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x7
	.byte	0x7f
	.4byte	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"obj"
	.byte	0x7
	.byte	0x81
	.4byte	0x279
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"pos"
	.byte	0x7
	.byte	0x83
	.4byte	0x30f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x7
	.byte	0x85
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0x7
	.byte	0x87
	.4byte	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x16
	.4byte	.LASF54
	.byte	0x7
	.byte	0x88
	.4byte	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x16
	.4byte	.LASF55
	.byte	0x7
	.byte	0x89
	.4byte	0x37f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x16
	.4byte	.LASF56
	.byte	0x7
	.byte	0x8b
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x16
	.4byte	.LASF57
	.byte	0x7
	.byte	0x8c
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x16
	.4byte	.LASF58
	.byte	0x7
	.byte	0x8d
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x16
	.4byte	.LASF59
	.byte	0x7
	.byte	0x8e
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x16
	.4byte	.LASF60
	.byte	0x7
	.byte	0x8f
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x7
	.byte	0x90
	.4byte	0x486
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x44
	.byte	0x7
	.byte	0x9b
	.4byte	0x59f
	.uleb128 0x16
	.4byte	.LASF63
	.byte	0x7
	.byte	0x9c
	.4byte	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0x7
	.byte	0x9d
	.4byte	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.4byte	.LASF54
	.byte	0x7
	.byte	0x9e
	.4byte	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.4byte	.LASF55
	.byte	0x7
	.byte	0x9f
	.4byte	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x16
	.4byte	.LASF64
	.byte	0x7
	.byte	0xa0
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x7
	.byte	0xa1
	.4byte	0x54c
	.uleb128 0x17
	.4byte	.LASF215
	.byte	0x4
	.byte	0x7
	.byte	0xba
	.4byte	0x5c9
	.uleb128 0x18
	.4byte	.LASF66
	.sleb128 0
	.uleb128 0x18
	.4byte	.LASF67
	.sleb128 1
	.uleb128 0x18
	.4byte	.LASF68
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x7
	.byte	0xbe
	.4byte	0x5aa
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x10
	.byte	0x7
	.byte	0xe3
	.4byte	0x615
	.uleb128 0xc
	.string	"x"
	.byte	0x7
	.byte	0xe4
	.4byte	0x29b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"y"
	.byte	0x7
	.byte	0xe5
	.4byte	0x29b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x7
	.byte	0xe6
	.4byte	0x2b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x7
	.byte	0xe7
	.4byte	0x2b1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0x7
	.byte	0xe8
	.4byte	0x5d4
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x14
	.byte	0x7
	.byte	0xf8
	.4byte	0x681
	.uleb128 0x16
	.4byte	.LASF74
	.byte	0x7
	.byte	0xf9
	.4byte	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF75
	.byte	0x7
	.byte	0xfa
	.4byte	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x7
	.byte	0xfb
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x7
	.byte	0xfc
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x7
	.byte	0xfd
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0x7
	.byte	0xfe
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0x7
	.byte	0xff
	.4byte	0x620
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0x8
	.byte	0x7
	.2byte	0x114
	.4byte	0x6b8
	.uleb128 0x19
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x115
	.4byte	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x116
	.4byte	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x117
	.4byte	0x68c
	.uleb128 0x12
	.4byte	.LASF85
	.byte	0x6c
	.byte	0x7
	.2byte	0x124
	.4byte	0x81c
	.uleb128 0x19
	.4byte	.LASF51
	.byte	0x7
	.2byte	0x125
	.4byte	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x127
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x128
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x19
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x129
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x19
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x12a
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x12b
	.4byte	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x12c
	.4byte	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x12d
	.4byte	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x19
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x12e
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x12f
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x19
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x130
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x19
	.4byte	.LASF42
	.byte	0x7
	.2byte	0x132
	.4byte	0x285
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x19
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x134
	.4byte	0x285
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x135
	.4byte	0x285
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x137
	.4byte	0x81c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x138
	.4byte	0x81c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x19
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x139
	.4byte	0x81c
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x19
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x13a
	.4byte	0x81c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x13
	.string	"tex"
	.byte	0x7
	.2byte	0x13c
	.4byte	0x29b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x13e
	.4byte	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x19
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x140
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x19
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x141
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0x0
	.uleb128 0xd
	.4byte	0x285
	.4byte	0x82c
	.uleb128 0xe
	.4byte	0x37
	.byte	0x2
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x142
	.4byte	0x6c4
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF107
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.4byte	.LFB66
	.4byte	.LFE66
	.byte	0x1
	.byte	0x51
	.4byte	0x882
	.uleb128 0x1b
	.string	"src"
	.byte	0x1
	.byte	0xc
	.4byte	0x882
	.4byte	.LLST1
	.uleb128 0x1c
	.4byte	.LASF106
	.byte	0x1
	.byte	0xc
	.4byte	0x187
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0xe
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x1e
	.string	"j"
	.byte	0x1
	.byte	0xe
	.4byte	0x25
	.byte	0x0
	.uleb128 0x14
	.4byte	0x145
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF108
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.4byte	.LFB67
	.4byte	.LFE67
	.byte	0x1
	.byte	0x51
	.4byte	0x8d1
	.uleb128 0x1b
	.string	"src"
	.byte	0x1
	.byte	0x1b
	.4byte	0x8d1
	.4byte	.LLST4
	.uleb128 0x1f
	.4byte	.LASF106
	.byte	0x1
	.byte	0x1b
	.4byte	0x145
	.4byte	.LLST5
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0x1d
	.4byte	0x25
	.byte	0x1
	.byte	0x59
	.uleb128 0x1e
	.string	"j"
	.byte	0x1
	.byte	0x1d
	.4byte	0x25
	.byte	0x0
	.uleb128 0x14
	.4byte	0x187
	.uleb128 0x21
	.4byte	.LASF216
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.byte	0x1
	.4byte	0x8ed
	.uleb128 0x22
	.string	"m"
	.byte	0x1
	.byte	0x27
	.4byte	0x8ed
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x42b
	.uleb128 0x23
	.4byte	.LASF217
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.4byte	.LFB69
	.4byte	.LFE69
	.byte	0x1
	.byte	0x51
	.4byte	0x93e
	.uleb128 0x24
	.string	"m"
	.byte	0x1
	.byte	0x35
	.4byte	0x8ed
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.byte	0x37
	.4byte	0xca
	.byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.uleb128 0x20
	.string	"d"
	.byte	0x1
	.byte	0x38
	.4byte	0xca
	.byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.uleb128 0x25
	.4byte	0x8d6
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x3a
	.uleb128 0x26
	.4byte	0x8e3
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x216
	.byte	0x1
	.4byte	.LFB84
	.4byte	.LFE84
	.byte	0x1
	.byte	0x51
	.4byte	0x98b
	.uleb128 0x28
	.string	"m"
	.byte	0x1
	.2byte	0x215
	.4byte	0x2dd
	.4byte	.LLST8
	.uleb128 0x29
	.string	"mat"
	.byte	0x1
	.2byte	0x215
	.4byte	0x145
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.2byte	0x217
	.4byte	0x25
	.byte	0x1
	.byte	0x59
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.2byte	0x217
	.4byte	0x25
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x224
	.byte	0x1
	.4byte	.LFB85
	.4byte	.LFE85
	.byte	0x1
	.byte	0x51
	.4byte	0x9d6
	.uleb128 0x28
	.string	"m"
	.byte	0x1
	.2byte	0x223
	.4byte	0x2dd
	.4byte	.LLST10
	.uleb128 0x29
	.string	"mat"
	.byte	0x1
	.2byte	0x223
	.4byte	0x187
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x225
	.4byte	0x25
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.2byte	0x225
	.4byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF111
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LLST11
	.4byte	0x9ff
	.uleb128 0x1f
	.4byte	.LASF42
	.byte	0x1
	.byte	0x9c
	.4byte	0x285
	.4byte	.LLST12
	.byte	0x0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x263
	.byte	0x1
	.4byte	.LFB87
	.4byte	.LFE87
	.4byte	.LLST13
	.4byte	0xaa0
	.uleb128 0x2e
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x260
	.4byte	0x2c7
	.4byte	.LLST14
	.uleb128 0x2e
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x261
	.4byte	0x2c7
	.4byte	.LLST15
	.uleb128 0x2e
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x262
	.4byte	0x2c7
	.4byte	.LLST16
	.uleb128 0x2e
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x263
	.4byte	0x2c7
	.4byte	.LLST17
	.uleb128 0x2f
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0xa75
	.uleb128 0x30
	.string	"p"
	.byte	0x1
	.2byte	0x268
	.4byte	0x8ed
	.4byte	.LLST18
	.byte	0x0
	.uleb128 0x31
	.4byte	.LBB13
	.4byte	.LBE13
	.uleb128 0x2a
	.string	"tmp"
	.byte	0x1
	.2byte	0x277
	.4byte	0x166
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x32
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x278
	.4byte	0xaa0
	.4byte	.LLST19
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x124
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x1fd
	.byte	0x1
	.4byte	.LFB83
	.4byte	.LFE83
	.4byte	.LLST20
	.4byte	0xb0f
	.uleb128 0x2e
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x1fc
	.4byte	0x285
	.4byte	.LLST21
	.uleb128 0x2e
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x1fc
	.4byte	0x2e8
	.4byte	.LLST22
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.2byte	0x1fe
	.4byte	0x25
	.byte	0x1
	.byte	0x59
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.2byte	0x1fe
	.4byte	0x25
	.byte	0x1
	.byte	0x58
	.uleb128 0x31
	.4byte	.LBB15
	.4byte	.LBE15
	.uleb128 0x33
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x207
	.4byte	0x145
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x10d
	.byte	0x1
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LLST23
	.4byte	0xb84
	.uleb128 0x28
	.string	"m"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x2d2
	.4byte	.LLST24
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x110
	.4byte	0x25
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.2byte	0x110
	.4byte	0x25
	.4byte	.LLST25
	.uleb128 0x34
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0xb69
	.uleb128 0x32
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x114
	.4byte	0xb84
	.4byte	.LLST26
	.byte	0x0
	.uleb128 0x31
	.4byte	.LBB20
	.4byte	.LBE20
	.uleb128 0x32
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x127
	.4byte	0xaa0
	.4byte	.LLST27
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x166
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF123
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LLST28
	.4byte	0xbf9
	.uleb128 0x1b
	.string	"m"
	.byte	0x1
	.byte	0xdc
	.4byte	0x2dd
	.4byte	.LLST29
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.byte	0xe0
	.4byte	0x25
	.uleb128 0x1d
	.string	"j"
	.byte	0x1
	.byte	0xe0
	.4byte	0x25
	.4byte	.LLST30
	.uleb128 0x34
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0xbdf
	.uleb128 0x35
	.4byte	.LASF117
	.byte	0x1
	.byte	0xe4
	.4byte	0xb84
	.4byte	.LLST31
	.byte	0x0
	.uleb128 0x31
	.4byte	.LBB25
	.4byte	.LBE25
	.uleb128 0x35
	.4byte	.LASF117
	.byte	0x1
	.byte	0xf7
	.4byte	0xaa0
	.4byte	.LLST32
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x23b
	.byte	0x1
	.4byte	.LFB86
	.4byte	.LFE86
	.4byte	.LLST33
	.4byte	0xd16
	.uleb128 0x2e
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x233
	.4byte	0x2c7
	.4byte	.LLST34
	.uleb128 0x2e
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x234
	.4byte	0x2c7
	.4byte	.LLST35
	.uleb128 0x2e
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x235
	.4byte	0x2c7
	.4byte	.LLST36
	.uleb128 0x2e
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x236
	.4byte	0x2c7
	.4byte	.LLST37
	.uleb128 0x2e
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x237
	.4byte	0x2c7
	.4byte	.LLST38
	.uleb128 0x2e
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x238
	.4byte	0x2c7
	.4byte	.LLST39
	.uleb128 0x28
	.string	"upX"
	.byte	0x1
	.2byte	0x239
	.4byte	0x2c7
	.4byte	.LLST40
	.uleb128 0x28
	.string	"upY"
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2c7
	.4byte	.LLST41
	.uleb128 0x29
	.string	"upZ"
	.byte	0x1
	.2byte	0x23b
	.4byte	0x2c7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.string	"cam"
	.byte	0x1
	.2byte	0x23f
	.4byte	0x119
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.string	"up"
	.byte	0x1
	.2byte	0x240
	.4byte	0x119
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x36
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x241
	.4byte	0x119
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	0xcff
	.uleb128 0x30
	.string	"tmp"
	.byte	0x1
	.2byte	0x245
	.4byte	0xb84
	.4byte	.LLST42
	.uleb128 0x2a
	.string	"mat"
	.byte	0x1
	.2byte	0x246
	.4byte	0x124
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.uleb128 0x31
	.4byte	.LBB29
	.4byte	.LBE29
	.uleb128 0x33
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x255
	.4byte	0xaa0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x1f3
	.byte	0x1
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LLST43
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x1ed
	.byte	0x1
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LLST44
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x1ae
	.byte	0x1
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LLST45
	.4byte	0xdfb
	.uleb128 0x28
	.string	"m"
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x2dd
	.4byte	.LLST46
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x25
	.4byte	.LLST47
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x25
	.4byte	.LLST48
	.uleb128 0x34
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0xdd4
	.uleb128 0x30
	.string	"p"
	.byte	0x1
	.2byte	0x1b4
	.4byte	0xb84
	.4byte	.LLST49
	.uleb128 0x33
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x187
	.uleb128 0x2a
	.string	"mat"
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x166
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2a
	.string	"tmp"
	.byte	0x1
	.2byte	0x1be
	.4byte	0x166
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"k"
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x25
	.byte	0x0
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x70
	.uleb128 0x32
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x1dc
	.4byte	0xaa0
	.4byte	.LLST50
	.uleb128 0x2a
	.string	"mat"
	.byte	0x1
	.2byte	0x1dd
	.4byte	0x124
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x18d
	.byte	0x1
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LLST51
	.4byte	0xe88
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x2bc
	.4byte	.LLST52
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x2bc
	.4byte	.LLST53
	.uleb128 0x28
	.string	"z"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x2bc
	.4byte	.LLST54
	.uleb128 0x2f
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	0xe5d
	.uleb128 0x2a
	.string	"arr"
	.byte	0x1
	.2byte	0x193
	.4byte	0xe88
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.byte	0x0
	.uleb128 0x31
	.4byte	.LBB40
	.4byte	.LBE40
	.uleb128 0x36
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x19e
	.4byte	0x124
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x32
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x1a0
	.4byte	0xaa0
	.4byte	.LLST55
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.4byte	0x2bc
	.4byte	0xe98
	.uleb128 0xe
	.4byte	0x37
	.byte	0xf
	.byte	0x0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x160
	.byte	0x1
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	.LLST56
	.4byte	0xf61
	.uleb128 0x2e
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x160
	.4byte	0x2bc
	.4byte	.LLST57
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.2byte	0x160
	.4byte	0x2bc
	.4byte	.LLST58
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.2byte	0x160
	.4byte	0x2bc
	.4byte	.LLST59
	.uleb128 0x28
	.string	"z"
	.byte	0x1
	.2byte	0x160
	.4byte	0x2bc
	.4byte	.LLST60
	.uleb128 0x2f
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	0xf26
	.uleb128 0x30
	.string	"s"
	.byte	0x1
	.2byte	0x166
	.4byte	0x2bc
	.4byte	.LLST61
	.uleb128 0x30
	.string	"c"
	.byte	0x1
	.2byte	0x167
	.4byte	0x2bc
	.4byte	.LLST62
	.uleb128 0x2a
	.string	"arr"
	.byte	0x1
	.2byte	0x16e
	.4byte	0xe88
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.byte	0x0
	.uleb128 0x31
	.4byte	.LBB44
	.4byte	.LBE44
	.uleb128 0x36
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x179
	.4byte	0x124
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x32
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x17b
	.4byte	0xaa0
	.4byte	.LLST63
	.uleb128 0x36
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x182
	.4byte	0x119
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x139
	.byte	0x1
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LLST64
	.4byte	0xfee
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.2byte	0x139
	.4byte	0x2bc
	.4byte	.LLST65
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.2byte	0x139
	.4byte	0x2bc
	.4byte	.LLST66
	.uleb128 0x28
	.string	"z"
	.byte	0x1
	.2byte	0x139
	.4byte	0x2bc
	.4byte	.LLST67
	.uleb128 0x2f
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	0xfc3
	.uleb128 0x2a
	.string	"arr"
	.byte	0x1
	.2byte	0x13f
	.4byte	0xe88
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.byte	0x0
	.uleb128 0x31
	.4byte	.LBB48
	.4byte	.LBE48
	.uleb128 0x36
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x14a
	.4byte	0x124
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x32
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x14c
	.4byte	0xaa0
	.4byte	.LLST68
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x15a
	.byte	0x1
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LLST69
	.4byte	0x1033
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.2byte	0x159
	.4byte	0x2c7
	.4byte	.LLST70
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.2byte	0x159
	.4byte	0x2c7
	.4byte	.LLST71
	.uleb128 0x28
	.string	"z"
	.byte	0x1
	.2byte	0x159
	.4byte	0x2c7
	.4byte	.LLST72
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF142
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LLST73
	.4byte	0x1091
	.uleb128 0x2f
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	0x107b
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.byte	0xb9
	.4byte	0x8ed
	.4byte	.LLST74
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.byte	0xc0
	.4byte	0x58
	.uleb128 0x39
	.4byte	.LASF117
	.byte	0x1
	.byte	0xc2
	.4byte	0x187
	.byte	0x0
	.uleb128 0x31
	.4byte	.LBB52
	.4byte	.LBE52
	.uleb128 0x39
	.4byte	.LASF117
	.byte	0x1
	.byte	0xd1
	.4byte	0xaa0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF143
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LLST75
	.4byte	0x1148
	.uleb128 0x1f
	.4byte	.LASF144
	.byte	0x1
	.byte	0x6d
	.4byte	0x2c7
	.4byte	.LLST76
	.uleb128 0x1f
	.4byte	.LASF145
	.byte	0x1
	.byte	0x6e
	.4byte	0x2c7
	.4byte	.LLST77
	.uleb128 0x1f
	.4byte	.LASF146
	.byte	0x1
	.byte	0x6f
	.4byte	0x2c7
	.4byte	.LLST78
	.uleb128 0x1b
	.string	"top"
	.byte	0x1
	.byte	0x70
	.4byte	0x2c7
	.4byte	.LLST79
	.uleb128 0x1f
	.4byte	.LASF147
	.byte	0x1
	.byte	0x71
	.4byte	0x2c7
	.4byte	.LLST80
	.uleb128 0x1f
	.4byte	.LASF148
	.byte	0x1
	.byte	0x72
	.4byte	0x2c7
	.4byte	.LLST81
	.uleb128 0x2f
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	0x111f
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.byte	0x7e
	.4byte	0x8ed
	.4byte	.LLST82
	.byte	0x0
	.uleb128 0x31
	.4byte	.LBB56
	.4byte	.LBE56
	.uleb128 0x20
	.string	"tmp"
	.byte	0x1
	.byte	0x8e
	.4byte	0x166
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x35
	.4byte	.LASF117
	.byte	0x1
	.byte	0x8f
	.4byte	0xaa0
	.4byte	.LLST83
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF149
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LLST84
	.4byte	0x120a
	.uleb128 0x1f
	.4byte	.LASF144
	.byte	0x1
	.byte	0x49
	.4byte	0x2c7
	.4byte	.LLST85
	.uleb128 0x1f
	.4byte	.LASF145
	.byte	0x1
	.byte	0x4a
	.4byte	0x2c7
	.4byte	.LLST86
	.uleb128 0x1f
	.4byte	.LASF146
	.byte	0x1
	.byte	0x4b
	.4byte	0x2c7
	.4byte	.LLST87
	.uleb128 0x1b
	.string	"top"
	.byte	0x1
	.byte	0x4c
	.4byte	0x2c7
	.4byte	.LLST88
	.uleb128 0x1f
	.4byte	.LASF115
	.byte	0x1
	.byte	0x4d
	.4byte	0x2c7
	.4byte	.LLST89
	.uleb128 0x1f
	.4byte	.LASF116
	.byte	0x1
	.byte	0x4e
	.4byte	0x2c7
	.4byte	.LLST90
	.uleb128 0x2f
	.4byte	.LBB59
	.4byte	.LBE59
	.4byte	0x11e1
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.byte	0x54
	.4byte	0x8ed
	.4byte	.LLST91
	.uleb128 0x1e
	.string	"tmp"
	.byte	0x1
	.byte	0x55
	.4byte	0xb84
	.byte	0x0
	.uleb128 0x31
	.4byte	.LBB60
	.4byte	.LBE60
	.uleb128 0x20
	.string	"tmp"
	.byte	0x1
	.byte	0x64
	.4byte	0x166
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x35
	.4byte	.LASF117
	.byte	0x1
	.byte	0x65
	.4byte	0xaa0
	.4byte	.LLST92
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.4byte	.LASF150
	.byte	0x5
	.2byte	0x40e
	.4byte	0x1218
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.4byte	0x121d
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1f2
	.uleb128 0x3b
	.4byte	.LASF151
	.byte	0x7
	.byte	0x3c
	.4byte	0x37f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x3b
	.4byte	.LASF152
	.byte	0x7
	.byte	0x3d
	.4byte	0x119
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0xd
	.4byte	0x33b
	.4byte	0x1257
	.uleb128 0xe
	.4byte	0x37
	.byte	0xc7
	.byte	0x0
	.uleb128 0x3b
	.4byte	.LASF153
	.byte	0x7
	.byte	0x3e
	.4byte	0x1247
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x3b
	.4byte	.LASF154
	.byte	0x7
	.byte	0x4a
	.4byte	0x3db
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x3b
	.4byte	.LASF155
	.byte	0x7
	.byte	0x4b
	.4byte	0x3db
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0xd
	.4byte	0x3db
	.4byte	0x129d
	.uleb128 0xe
	.4byte	0x37
	.byte	0xc7
	.byte	0x0
	.uleb128 0x3c
	.string	"tex"
	.byte	0x7
	.byte	0x4c
	.4byte	0x128d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x3b
	.4byte	.LASF102
	.byte	0x7
	.byte	0x4d
	.4byte	0x3db
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xd
	.4byte	0x119
	.4byte	0x12d2
	.uleb128 0x3d
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x3b
	.4byte	.LASF156
	.byte	0x7
	.byte	0x4f
	.4byte	0x12c1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x3b
	.4byte	.LASF157
	.byte	0x7
	.byte	0x50
	.4byte	0x12c1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xd
	.4byte	0x33b
	.4byte	0x130d
	.uleb128 0xe
	.4byte	0x37
	.byte	0xc7
	.uleb128 0x3d
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x3b
	.4byte	.LASF158
	.byte	0x7
	.byte	0x51
	.4byte	0x12f6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xd
	.4byte	0x37f
	.4byte	0x1330
	.uleb128 0x3d
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x3b
	.4byte	.LASF159
	.byte	0x7
	.byte	0x52
	.4byte	0x131f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x3b
	.4byte	.LASF160
	.byte	0x7
	.byte	0x5c
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x3b
	.4byte	.LASF161
	.byte	0x7
	.byte	0x5d
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x3b
	.4byte	.LASF162
	.byte	0x7
	.byte	0x5e
	.4byte	0x285
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x3b
	.4byte	.LASF163
	.byte	0x7
	.byte	0x60
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x3b
	.4byte	.LASF164
	.byte	0x7
	.byte	0x61
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x3b
	.4byte	.LASF165
	.byte	0x7
	.byte	0x65
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x3b
	.4byte	.LASF166
	.byte	0x7
	.byte	0x66
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x3b
	.4byte	.LASF167
	.byte	0x7
	.byte	0x67
	.4byte	0x285
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x3b
	.4byte	.LASF168
	.byte	0x7
	.byte	0x68
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x3b
	.4byte	.LASF169
	.byte	0x7
	.byte	0x74
	.4byte	0x47b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x3b
	.4byte	.LASF170
	.byte	0x7
	.byte	0x75
	.4byte	0x47b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xd
	.4byte	0x47b
	.4byte	0x1418
	.uleb128 0xe
	.4byte	0x37
	.byte	0xc7
	.byte	0x0
	.uleb128 0x3b
	.4byte	.LASF171
	.byte	0x7
	.byte	0x76
	.4byte	0x1408
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x3b
	.4byte	.LASF172
	.byte	0x7
	.byte	0x77
	.4byte	0x143c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x9
	.byte	0x4
	.4byte	0x47b
	.uleb128 0x3b
	.4byte	.LASF173
	.byte	0x7
	.byte	0x78
	.4byte	0x285
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0xd
	.4byte	0x541
	.4byte	0x1464
	.uleb128 0xe
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x3b
	.4byte	.LASF174
	.byte	0x7
	.byte	0x93
	.4byte	0x1454
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x3b
	.4byte	.LASF175
	.byte	0x7
	.byte	0x96
	.4byte	0x37f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x3b
	.4byte	.LASF176
	.byte	0x7
	.byte	0xa3
	.4byte	0x59f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x3b
	.4byte	.LASF177
	.byte	0x7
	.byte	0xa6
	.4byte	0xda
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x3b
	.4byte	.LASF178
	.byte	0x7
	.byte	0xa7
	.4byte	0x285
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x3b
	.4byte	.LASF179
	.byte	0x7
	.byte	0xab
	.4byte	0xda
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x3b
	.4byte	.LASF180
	.byte	0x7
	.byte	0xb2
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x3b
	.4byte	.LASF181
	.byte	0x7
	.byte	0xb3
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x3b
	.4byte	.LASF182
	.byte	0x7
	.byte	0xb4
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x3b
	.4byte	.LASF183
	.byte	0x7
	.byte	0xb5
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x3b
	.4byte	.LASF184
	.byte	0x7
	.byte	0xb7
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x3b
	.4byte	.LASF185
	.byte	0x7
	.byte	0xc0
	.4byte	0x5c9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x3b
	.4byte	.LASF186
	.byte	0x7
	.byte	0xea
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x3b
	.4byte	.LASF187
	.byte	0x7
	.byte	0xeb
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x3b
	.4byte	.LASF188
	.byte	0x7
	.byte	0xec
	.4byte	0x290
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x3b
	.4byte	.LASF189
	.byte	0x7
	.byte	0xed
	.4byte	0x615
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x3b
	.4byte	.LASF190
	.byte	0x7
	.byte	0xee
	.4byte	0x615
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x3b
	.4byte	.LASF191
	.byte	0x7
	.byte	0xef
	.4byte	0xca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x3b
	.4byte	.LASF192
	.byte	0x7
	.byte	0xf0
	.4byte	0xca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x3b
	.4byte	.LASF193
	.byte	0x7
	.byte	0xf2
	.4byte	0xca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x3b
	.4byte	.LASF194
	.byte	0x7
	.byte	0xf4
	.4byte	0xca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x3e
	.4byte	.LASF195
	.byte	0x7
	.2byte	0x101
	.4byte	0x681
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x3e
	.4byte	.LASF196
	.byte	0x7
	.2byte	0x102
	.4byte	0x681
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xd
	.4byte	0xda
	.4byte	0x1614
	.uleb128 0xe
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x3e
	.4byte	.LASF197
	.byte	0x7
	.2byte	0x103
	.4byte	0x1604
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x3e
	.4byte	.LASF198
	.byte	0x7
	.2byte	0x109
	.4byte	0xda
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x3e
	.4byte	.LASF199
	.byte	0x7
	.2byte	0x10a
	.4byte	0x285
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x3e
	.4byte	.LASF200
	.byte	0x7
	.2byte	0x10d
	.4byte	0x240
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xd
	.4byte	0x6b8
	.4byte	0x1670
	.uleb128 0xe
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x3e
	.4byte	.LASF201
	.byte	0x7
	.2byte	0x121
	.4byte	0x1660
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x3e
	.4byte	.LASF202
	.byte	0x7
	.2byte	0x146
	.4byte	0xda
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x3e
	.4byte	.LASF203
	.byte	0x7
	.2byte	0x147
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x3e
	.4byte	.LASF204
	.byte	0x7
	.2byte	0x148
	.4byte	0xca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x3e
	.4byte	.LASF205
	.byte	0x7
	.2byte	0x149
	.4byte	0xca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x3e
	.4byte	.LASF206
	.byte	0x7
	.2byte	0x14a
	.4byte	0xca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x3e
	.4byte	.LASF207
	.byte	0x7
	.2byte	0x14b
	.4byte	0x240
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0xd
	.4byte	0x82c
	.4byte	0x1705
	.uleb128 0xe
	.4byte	0x37
	.byte	0xc7
	.byte	0x0
	.uleb128 0x3e
	.4byte	.LASF208
	.byte	0x7
	.2byte	0x14d
	.4byte	0x16f5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x3e
	.4byte	.LASF209
	.byte	0x7
	.2byte	0x152
	.4byte	0x285
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x3e
	.4byte	.LASF210
	.byte	0x7
	.2byte	0x155
	.4byte	0x2a6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	call_offset
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
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x17
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
	.uleb128 0x10
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0xa
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.4byte	0x515
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x173f
	.4byte	0x838
	.string	"CopyMtxToMtx44"
	.4byte	0x887
	.string	"CopyMtx44ToMtx"
	.4byte	0x93e
	.string	"CopyGLfloatToMtx"
	.4byte	0x98b
	.string	"CopyGLfloatToMtx44"
	.4byte	0x9d6
	.string	"glMatrixMode"
	.4byte	0x9ff
	.string	"gluPerspective"
	.4byte	0xaa6
	.string	"_glGetMatrixf"
	.4byte	0xb0f
	.string	"glLoadMatrixd"
	.4byte	0xb8a
	.string	"glLoadMatrixf"
	.4byte	0xbf9
	.string	"gluLookAt"
	.4byte	0xd16
	.string	"glPushMatrix"
	.4byte	0xd2c
	.string	"glPopMatrix"
	.4byte	0xd42
	.string	"glMultMatrixf"
	.4byte	0xdfb
	.string	"glScalef"
	.4byte	0xe98
	.string	"glRotatef"
	.4byte	0xf61
	.string	"glTranslatef"
	.4byte	0xfee
	.string	"glTranslated"
	.4byte	0x1033
	.string	"glLoadIdentity"
	.4byte	0x1091
	.string	"glOrtho"
	.4byte	0x1148
	.string	"glFrustum"
	.4byte	0x1223
	.string	"_tempcolorelement"
	.4byte	0x1235
	.string	"_tempnormalelement"
	.4byte	0x1257
	.string	"_temptexcoordelement"
	.4byte	0x1269
	.string	"norm"
	.4byte	0x127b
	.string	"vert"
	.4byte	0x129d
	.string	"tex"
	.4byte	0x12af
	.string	"color"
	.4byte	0x12d2
	.string	"_normalelements"
	.4byte	0x12e4
	.string	"_vertexelements"
	.4byte	0x130d
	.string	"_texcoordelements"
	.4byte	0x1330
	.string	"_colorelements"
	.4byte	0x1342
	.string	"vert_i"
	.4byte	0x1354
	.string	"_type"
	.4byte	0x1366
	.string	"_GLtype"
	.4byte	0x1378
	.string	"cur_tex"
	.4byte	0x138a
	.string	"cur_tex_client"
	.4byte	0x139c
	.string	"depthtestenabled"
	.4byte	0x13ae
	.string	"depthupdate"
	.4byte	0x13c0
	.string	"depthfunction"
	.4byte	0x13d2
	.string	"_cleardepth"
	.4byte	0x13e4
	.string	"model_stack"
	.4byte	0x13f6
	.string	"projection_stack"
	.4byte	0x1418
	.string	"texture_stack"
	.4byte	0x142a
	.string	"curmtx"
	.4byte	0x1442
	.string	"cur_mode"
	.4byte	0x1464
	.string	"lights"
	.4byte	0x1476
	.string	"globAmbient"
	.4byte	0x1488
	.string	"curmat"
	.4byte	0x149a
	.string	"gxcullfaceanabled"
	.4byte	0x14ac
	.string	"gxwinding"
	.4byte	0x14be
	.string	"lighting"
	.4byte	0x14d0
	.string	"blend_type"
	.4byte	0x14e2
	.string	"blend_src"
	.4byte	0x14f4
	.string	"blend_dst"
	.4byte	0x1506
	.string	"blend_op"
	.4byte	0x1518
	.string	"cull_mode"
	.4byte	0x152a
	.string	"cur_state"
	.4byte	0x153c
	.string	"fb_max_height"
	.4byte	0x154e
	.string	"fb_max_width"
	.4byte	0x1560
	.string	"scissor_test"
	.4byte	0x1572
	.string	"scissorInfo"
	.4byte	0x1584
	.string	"viewPort"
	.4byte	0x1596
	.string	"normNear"
	.4byte	0x15a8
	.string	"normFar"
	.4byte	0x15ba
	.string	"line_width"
	.4byte	0x15cc
	.string	"point_size"
	.4byte	0x15de
	.string	"pack"
	.4byte	0x15f1
	.string	"unpack"
	.4byte	0x1614
	.string	"color_write_mask"
	.4byte	0x1627
	.string	"copy_mat_enabled"
	.4byte	0x163a
	.string	"copy_material"
	.4byte	0x164d
	.string	"_clearcolor"
	.4byte	0x1670
	.string	"Trans"
	.4byte	0x1683
	.string	"fog_enable"
	.4byte	0x1696
	.string	"fog_mode"
	.4byte	0x16a9
	.string	"fog_startz"
	.4byte	0x16bc
	.string	"fog_endz"
	.4byte	0x16cf
	.string	"fog_density"
	.4byte	0x16e2
	.string	"fog_color"
	.4byte	0x1705
	.string	"glTexEnvs"
	.4byte	0x1718
	.string	"read_mode"
	.4byte	0x172b
	.string	"call_offset"
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
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	.LBB35-.Ltext0
	.4byte	.LBE35-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF110:
	.string	"CopyGLfloatToMtx44"
.LASF112:
	.string	"gluPerspective"
.LASF120:
	.string	"params"
.LASF115:
	.string	"zNear"
.LASF128:
	.string	"centerX"
.LASF129:
	.string	"centerY"
.LASF130:
	.string	"centerZ"
.LASF8:
	.string	"char"
.LASF27:
	.string	"GLint"
.LASF18:
	.string	"Mtx44P"
.LASF70:
	.string	"boxInfo"
.LASF175:
	.string	"globAmbient"
.LASF171:
	.string	"texture_stack"
.LASF185:
	.string	"cur_state"
.LASF122:
	.string	"glLoadMatrixd"
.LASF123:
	.string	"glLoadMatrixf"
.LASF186:
	.string	"fb_max_height"
.LASF156:
	.string	"_normalelements"
.LASF213:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\cube_source\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF116:
	.string	"zFar"
.LASF62:
	.string	"_mat"
.LASF55:
	.string	"specular"
.LASF158:
	.string	"_texcoordelements"
.LASF139:
	.string	"axis"
.LASF57:
	.string	"spotCutoff"
.LASF85:
	.string	"_tex_env"
.LASF176:
	.string	"curmat"
.LASF47:
	.string	"begin"
.LASF42:
	.string	"mode"
.LASF200:
	.string	"_clearcolor"
.LASF91:
	.string	"maxlod"
.LASF66:
	.string	"GL_STATE_NONE"
.LASF149:
	.string	"glFrustum"
.LASF23:
	.string	"_gx_litobj"
.LASF64:
	.string	"shininess"
.LASF173:
	.string	"cur_mode"
.LASF157:
	.string	"_vertexelements"
.LASF34:
	.string	"GXColorf"
.LASF99:
	.string	"CargOp"
.LASF124:
	.string	"gluLookAt"
.LASF168:
	.string	"_cleardepth"
.LASF54:
	.string	"diffuse"
.LASF152:
	.string	"_tempnormalelement"
.LASF164:
	.string	"cur_tex_client"
.LASF155:
	.string	"vert"
.LASF203:
	.string	"fog_mode"
.LASF205:
	.string	"fog_endz"
.LASF161:
	.string	"_type"
.LASF11:
	.string	"float"
.LASF83:
	.string	"bias"
.LASF134:
	.string	"glMultMatrixf"
.LASF22:
	.string	"GXColor"
.LASF44:
	.string	"farZclip"
.LASF40:
	.string	"VertexArray"
.LASF193:
	.string	"line_width"
.LASF6:
	.string	"long long unsigned int"
.LASF111:
	.string	"glMatrixMode"
.LASF201:
	.string	"Trans"
.LASF195:
	.string	"pack"
.LASF190:
	.string	"viewPort"
.LASF86:
	.string	"min_filter"
.LASF133:
	.string	"glPopMatrix"
.LASF169:
	.string	"model_stack"
.LASF197:
	.string	"color_write_mask"
.LASF98:
	.string	"Carg"
.LASF147:
	.string	"nearVal"
.LASF36:
	.string	"enable"
.LASF208:
	.string	"glTexEnvs"
.LASF117:
	.string	"cur_mat"
.LASF131:
	.string	"look"
.LASF180:
	.string	"blend_type"
.LASF113:
	.string	"fovy"
.LASF135:
	.string	"glScalef"
.LASF207:
	.string	"fog_color"
.LASF13:
	.string	"size_t"
.LASF71:
	.string	"width"
.LASF198:
	.string	"copy_mat_enabled"
.LASF163:
	.string	"cur_tex"
.LASF51:
	.string	"enabled"
.LASF214:
	.string	"_wgpipe"
.LASF97:
	.string	"comAlpha"
.LASF14:
	.string	"_Bool"
.LASF33:
	.string	"TexCoordElement"
.LASF31:
	.string	"GLdouble"
.LASF118:
	.string	"_glGetMatrixf"
.LASF194:
	.string	"point_size"
.LASF142:
	.string	"glLoadIdentity"
.LASF30:
	.string	"GLfloat"
.LASF199:
	.string	"copy_material"
.LASF68:
	.string	"GL_STATE_NEWLIST"
.LASF172:
	.string	"curmtx"
.LASF212:
	.string	"c:/devkitPro/examples/wii/cube_source/gl2gx/libogc/../source/gl_matrix.c"
.LASF53:
	.string	"ambient"
.LASF189:
	.string	"scissorInfo"
.LASF178:
	.string	"gxwinding"
.LASF143:
	.string	"glOrtho"
.LASF24:
	.string	"GXLightObj"
.LASF109:
	.string	"CopyGLfloatToMtx"
.LASF146:
	.string	"bottom"
.LASF84:
	.string	"ColorTrans"
.LASF5:
	.string	"long long int"
.LASF181:
	.string	"blend_src"
.LASF65:
	.string	"Material"
.LASF167:
	.string	"depthfunction"
.LASF105:
	.string	"glTexEnvSet"
.LASF188:
	.string	"scissor_test"
.LASF170:
	.string	"projection_stack"
.LASF114:
	.string	"aspect"
.LASF159:
	.string	"_colorelements"
.LASF145:
	.string	"right"
.LASF74:
	.string	"swap"
.LASF15:
	.string	"guVector"
.LASF137:
	.string	"glRotatef"
.LASF141:
	.string	"glTranslated"
.LASF140:
	.string	"glTranslatef"
.LASF28:
	.string	"GLuint"
.LASF67:
	.string	"GL_STATE_BEGIN"
.LASF16:
	.string	"MtxP"
.LASF209:
	.string	"read_mode"
.LASF48:
	.string	"elem_size"
.LASF69:
	.string	"glState"
.LASF58:
	.string	"constant"
.LASF202:
	.string	"fog_enable"
.LASF32:
	.string	"VertexElement"
.LASF82:
	.string	"scale"
.LASF93:
	.string	"biasclamp"
.LASF125:
	.string	"eyeX"
.LASF126:
	.string	"eyeY"
.LASF127:
	.string	"eyeZ"
.LASF76:
	.string	"row_length"
.LASF166:
	.string	"depthupdate"
.LASF38:
	.string	"size"
.LASF61:
	.string	"LightObj"
.LASF88:
	.string	"wrap_s"
.LASF89:
	.string	"wrap_t"
.LASF59:
	.string	"linear"
.LASF20:
	.string	"_vecf"
.LASF182:
	.string	"blend_dst"
.LASF217:
	.string	"computeZplanes"
.LASF72:
	.string	"height"
.LASF153:
	.string	"_temptexcoordelement"
.LASF107:
	.string	"CopyMtxToMtx44"
.LASF43:
	.string	"nearZclip"
.LASF192:
	.string	"normFar"
.LASF12:
	.string	"long double"
.LASF45:
	.string	"PrjMtx"
.LASF154:
	.string	"norm"
.LASF196:
	.string	"unpack"
.LASF138:
	.string	"angle"
.LASF52:
	.string	"spotDir"
.LASF35:
	.string	"_array"
.LASF56:
	.string	"spotExponent"
.LASF60:
	.string	"quad_t"
.LASF92:
	.string	"lodbias"
.LASF174:
	.string	"lights"
.LASF4:
	.string	"short int"
.LASF90:
	.string	"minlod"
.LASF87:
	.string	"max_filter"
.LASF9:
	.string	"long int"
.LASF19:
	.string	"WGPipe"
.LASF136:
	.string	"temp"
.LASF50:
	.string	"_light"
.LASF102:
	.string	"color"
.LASF29:
	.string	"GLsizei"
.LASF210:
	.string	"call_offset"
.LASF151:
	.string	"_tempcolorelement"
.LASF78:
	.string	"skip_pixels"
.LASF144:
	.string	"left"
.LASF100:
	.string	"Aarg"
.LASF95:
	.string	"maxaniso"
.LASF0:
	.string	"unsigned int"
.LASF206:
	.string	"fog_density"
.LASF37:
	.string	"stride"
.LASF179:
	.string	"lighting"
.LASF211:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF7:
	.string	"long unsigned int"
.LASF148:
	.string	"farVal"
.LASF183:
	.string	"blend_op"
.LASF204:
	.string	"fog_startz"
.LASF80:
	.string	"pixelStore"
.LASF25:
	.string	"GLenum"
.LASF39:
	.string	"type"
.LASF1:
	.string	"unsigned char"
.LASF17:
	.string	"Mtx44"
.LASF77:
	.string	"skip_rows"
.LASF160:
	.string	"vert_i"
.LASF75:
	.string	"lsb_first"
.LASF104:
	.string	"alpha_scale"
.LASF108:
	.string	"CopyMtx44ToMtx"
.LASF63:
	.string	"emissive"
.LASF96:
	.string	"comRGB"
.LASF187:
	.string	"fb_max_width"
.LASF191:
	.string	"normNear"
.LASF162:
	.string	"_GLtype"
.LASF132:
	.string	"glPushMatrix"
.LASF165:
	.string	"depthtestenabled"
.LASF216:
	.string	"guessProjection"
.LASF21:
	.string	"_gx_color"
.LASF94:
	.string	"edgelod"
.LASF177:
	.string	"gxcullfaceanabled"
.LASF46:
	.string	"_stack"
.LASF3:
	.string	"signed char"
.LASF49:
	.string	"Stack"
.LASF2:
	.string	"short unsigned int"
.LASF150:
	.string	"wgPipe"
.LASF10:
	.string	"double"
.LASF79:
	.string	"alignment"
.LASF81:
	.string	"_trans"
.LASF41:
	.string	"_prj_mat"
.LASF121:
	.string	"model"
.LASF26:
	.string	"GLboolean"
.LASF103:
	.string	"rgb_scale"
.LASF215:
	.string	"_glState"
.LASF73:
	.string	"_pixelStore"
.LASF119:
	.string	"pname"
.LASF106:
	.string	"dest"
.LASF184:
	.string	"cull_mode"
.LASF101:
	.string	"AargOp"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
