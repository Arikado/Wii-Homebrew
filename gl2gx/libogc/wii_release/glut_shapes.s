	.file	"glut_shapes.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.type	crossprod, @function
crossprod:
.LFB14:
	.file 1 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/glut/glut_shapes.c"
	.loc 1 302 0
.LVL0:
	.loc 1 306 0
	lfs 6,0(4)
	lfs 13,0(3)
	.loc 1 305 0
	lfs 12,4(3)
	lfs 7,8(4)
	lfs 8,4(4)
	.loc 1 310 0
	fmuls 11,6,12
	.loc 1 305 0
	lfs 0,8(3)
	.loc 1 309 0
	fmuls 10,7,13
	.loc 1 308 0
	fmuls 9,8,0
	.loc 1 310 0
	fmsubs 13,13,8,11
	.loc 1 309 0
	fmsubs 0,0,6,10
	.loc 1 308 0
	fmsubs 12,12,7,9
	.loc 1 310 0
	stfs 13,8(5)
	.loc 1 309 0
	stfs 0,4(5)
	.loc 1 308 0
	stfs 12,0(5)
	.loc 1 311 0
	blr
.LFE14:
	.size	crossprod, .-crossprod
	.align 2
	.type	drawBox, @function
drawBox:
.LFB7:
	.loc 1 124 0
.LVL1:
	.loc 1 146 0
	lis 9,.LC0@ha
	.loc 1 124 0
	mflr 0
.LCFI0:
	.loc 1 146 0
	lfs 13,.LC0@l(9)
	.loc 1 147 0
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	.loc 1 151 0
	lis 9,.LANCHOR0@ha
	.loc 1 146 0
	fmuls 13,1,13
	.loc 1 124 0
	stwu 1,-128(1)
.LCFI1:
	.loc 1 147 0
	fmuls 1,1,0
.LVL2:
	.loc 1 124 0
	stmw 27,108(1)
.LCFI2:
	.loc 1 151 0
	la 29,.LANCHOR0@l(9)
	.loc 1 124 0
	stw 0,132(1)
.LCFI3:
	.loc 1 151 0
	lis 9,.LANCHOR1@ha
	.loc 1 150 0
	stfs 13,16(1)
	.loc 1 124 0
	mr 28,3
	.loc 1 151 0
	stfs 1,28(1)
	la 31,.LANCHOR1@l(9)
	.loc 1 146 0
	stfs 13,44(1)
	.loc 1 156 0
	addi 30,1,8
	.loc 1 146 0
	stfs 13,32(1)
	.loc 1 153 0
	addi 27,29,72
	.loc 1 146 0
	stfs 13,20(1)
	stfs 13,8(1)
	.loc 1 147 0
	stfs 1,92(1)
	stfs 1,80(1)
	stfs 1,68(1)
	stfs 1,56(1)
	.loc 1 148 0
	stfs 13,72(1)
	stfs 13,60(1)
	stfs 13,24(1)
	stfs 13,12(1)
	.loc 1 149 0
	stfs 1,96(1)
	stfs 1,84(1)
	stfs 1,48(1)
	stfs 1,36(1)
	.loc 1 150 0
	stfs 13,100(1)
	stfs 13,64(1)
	stfs 13,52(1)
	.loc 1 151 0
	stfs 1,88(1)
	stfs 1,76(1)
	stfs 1,40(1)
.LVL3:
.L4:
	.loc 1 154 0
	mr 3,28
	bl glBegin
	.loc 1 155 0
	mr 3,29
	bl glNormal3fv
	.loc 1 156 0
	lwz 3,0(31)
	.loc 1 160 0
	addi 29,29,12
	.loc 1 156 0
	mulli 3,3,12
	add 3,30,3
	bl glVertex3fv
	.loc 1 157 0
	lwz 3,4(31)
	mulli 3,3,12
	add 3,30,3
	bl glVertex3fv
	.loc 1 158 0
	lwz 3,8(31)
	mulli 3,3,12
	add 3,30,3
	bl glVertex3fv
	.loc 1 159 0
	lwz 3,12(31)
	.loc 1 160 0
	addi 31,31,16
	.loc 1 159 0
	mulli 3,3,12
	add 3,30,3
	bl glVertex3fv
	.loc 1 160 0
	bl glEnd
	.loc 1 153 0
	cmpw 7,29,27
	bne+ 7,.L4
	.loc 1 162 0
	lwz 0,132(1)
	lmw 27,108(1)
.LVL4:
	addi 1,1,128
	mtlr 0
	blr
.LFE7:
	.size	drawBox, .-drawBox
	.align 2
	.globl glutSolidCube
	.type	glutSolidCube, @function
glutSolidCube:
.LFB9:
	.loc 1 173 0
.LVL5:
	.loc 1 174 0
	frsp 1,1
.LVL6:
	li 3,7
	b drawBox
.LFE9:
	.size	glutSolidCube, .-glutSolidCube
	.align 2
	.globl glutWireCube
	.type	glutWireCube, @function
glutWireCube:
.LFB8:
	.loc 1 167 0
.LVL7:
	.loc 1 168 0
	frsp 1,1
.LVL8:
	li 3,2
	b drawBox
.LFE8:
	.size	glutWireCube, .-glutWireCube
	.align 2
	.type	normalize, @function
normalize:
.LFB15:
	.loc 1 315 0
.LVL9:
	mflr 0
.LCFI4:
	stwu 1,-16(1)
.LCFI5:
	stw 31,12(1)
.LCFI6:
	mr 31,3
	stw 0,20(1)
.LCFI7:
	.loc 1 318 0
	lfs 0,4(3)
	lfs 13,0(3)
	fmuls 0,0,0
	lfs 1,8(3)
	fmadds 13,13,13,0
	fmadds 1,1,1,13
	bl sqrt
.LVL10:
	.loc 1 319 0
	lis 9,.LC9@ha
	.loc 1 318 0
	frsp 1,1
.LVL11:
	.loc 1 319 0
	lfs 0,.LC9@l(9)
	fcmpu 7,1,0
	bne- 7,.L14
	.loc 1 320 0
	lis 3,.LC5@ha
	la 3,.LC5@l(3)
	crxor 6,6,6
	bl __glutWarning
.LVL12:
	.loc 1 321 0
	lis 9,.LC6@ha
	lfs 0,.LC6@l(9)
	fmr 1,0
.LVL13:
	stfs 0,0(31)
.L14:
	.loc 1 323 0
	lis 9,.LC6@ha
	.loc 1 324 0
	lfs 11,0(31)
	.loc 1 323 0
	lfs 0,.LC6@l(9)
	.loc 1 325 0
	lfs 12,4(31)
	.loc 1 323 0
	fdivs 0,0,1
.LVL14:
	.loc 1 326 0
	lfs 13,8(31)
	.loc 1 324 0
	fmuls 11,11,0
	.loc 1 326 0
	fmuls 13,13,0
	.loc 1 325 0
	fmuls 12,12,0
	.loc 1 324 0
	stfs 11,0(31)
	.loc 1 326 0
	stfs 13,8(31)
	.loc 1 325 0
	stfs 12,4(31)
	.loc 1 327 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL15:
	addi 1,1,16
	mtlr 0
	blr
.LFE15:
	.size	normalize, .-normalize
	.align 2
	.type	drawtriangle, @function
drawtriangle:
.LFB22:
	.loc 1 446 0
.LVL16:
	mflr 0
.LCFI8:
	stwu 1,-136(1)
.LCFI9:
	.loc 1 449 0
	mulli 3,3,12
.LVL17:
	.loc 1 446 0
	stmw 22,80(1)
.LCFI10:
	mr 26,6
	stfd 30,120(1)
.LCFI11:
	.loc 1 449 0
	add 9,5,3
	.loc 1 446 0
	stfd 31,128(1)
.LCFI12:
	.loc 1 451 0
	li 31,0
.LVL18:
	.loc 1 446 0
	stw 0,140(1)
.LCFI13:
.LBB6:
.LBB10:
	.loc 1 420 0
	addi 24,1,8
	.loc 1 421 0
	addi 23,1,20
	.loc 1 423 0
	addi 25,1,32
.LBE10:
.LBE6:
	.loc 1 451 0
	lwz 0,8(9)
.LBB33:
.LBB23:
.LBB11:
.LBB14:
	.loc 1 395 0
	addi 22,1,44
.LBE14:
.LBE11:
.LBE23:
.LBE33:
	.loc 1 450 0
	lwz 11,4(9)
.LBB34:
.LBB9:
	.loc 1 420 0
	lis 9,.LC11@ha
.LBE9:
.LBE34:
	.loc 1 449 0
	lwzx 10,5,3
	.loc 1 451 0
	mulli 0,0,12
	.loc 1 450 0
	mulli 11,11,12
.LBB35:
.LBB24:
	.loc 1 420 0
	lfs 30,.LC11@l(9)
.LBE24:
.LBE35:
	.loc 1 449 0
	mulli 10,10,12
.LBB36:
.LBB8:
	.loc 1 420 0
	lis 9,.LC9@ha
	lfs 31,.LC9@l(9)
.LBE8:
.LBE36:
	.loc 1 451 0
	add 28,4,0
	.loc 1 449 0
	add 29,4,10
	.loc 1 450 0
	add 30,4,11
.LBB37:
.LBB25:
.LBB18:
.LBB15:
	.loc 1 395 0
	addi 27,1,56
.LVL19:
.L19:
.LBE15:
.LBE18:
	.loc 1 420 0
	lis 9,0x4330
	xoris 0,31,0x8000
	stw 0,76(1)
.LBE25:
.LBE37:
	.loc 1 446 0
	subfic 0,31,1
.LVL20:
.LBB38:
.LBB7:
	.loc 1 420 0
	stw 9,72(1)
	xoris 0,0,0x8000
.LVL21:
	.loc 1 423 0
	addi 11,31,1
	.loc 1 420 0
	fmr 0,30
	lfd 10,72(1)
.LBE7:
.LBE38:
	.loc 1 446 0
	li 9,0
.LBB39:
.LBB26:
	.loc 1 420 0
	stw 0,76(1)
	.loc 1 421 0
	neg 0,31
	xoris 0,0,0x8000
	.loc 1 420 0
	fsub 10,10,0
	lfd 11,72(1)
	.loc 1 421 0
	stw 0,76(1)
	.loc 1 423 0
	xoris 0,11,0x8000
	.loc 1 420 0
	fsub 11,11,0
	.loc 1 421 0
	lfd 12,72(1)
	.loc 1 420 0
	frsp 10,10
	.loc 1 423 0
	stw 0,76(1)
	.loc 1 421 0
	fsub 12,12,0
	.loc 1 423 0
	lfd 13,72(1)
	.loc 1 420 0
	frsp 11,11
	.loc 1 423 0
	fsub 13,13,0
	.loc 1 421 0
	frsp 9,12
	.loc 1 423 0
	frsp 8,13
.L20:
	.loc 1 420 0
	lfsx 13,9,30
	.loc 1 419 0
	cmpwi 7,9,8
	.loc 1 420 0
	lfsx 12,9,29
	fmuls 13,10,13
	lfsx 0,9,28
	fmadds 12,12,31,13
	fmadds 0,11,0,12
	stfsx 0,9,24
	.loc 1 421 0
	lfsx 12,9,29
	lfsx 13,9,30
	lfsx 0,9,28
	fmadds 13,10,13,12
	fmadds 0,9,0,13
	stfsx 0,9,23
	.loc 1 423 0
	lfsx 13,9,30
	lfsx 12,9,29
	fmuls 13,8,13
	lfsx 0,9,28
	fmadds 12,12,31,13
	fmadds 0,9,0,12
	stfsx 0,9,25
	.loc 1 419 0
	addi 9,9,4
	bne+ 7,.L20
	.loc 1 426 0
	lfs 0,12(1)
	.loc 1 419 0
	mr 31,11
	.loc 1 426 0
	lfs 13,8(1)
.LBE26:
	fmuls 0,0,0
.LBB27:
	lfs 1,16(1)
.LBE27:
	fmadds 13,13,13,0
	fmadds 1,1,1,13
	bl sqrt
.LVL22:
.LBB28:
	.loc 1 427 0
	lfs 0,8(1)
	.loc 1 426 0
	frsp 10,1
.LVL23:
	.loc 1 429 0
	lfs 13,16(1)
	.loc 1 430 0
	lfs 12,24(1)
	lfs 11,20(1)
	.loc 1 427 0
	fdivs 0,0,10
	.loc 1 430 0
	lfs 1,28(1)
	.loc 1 427 0
	stfs 0,8(1)
	.loc 1 429 0
	fdivs 13,13,10
	.loc 1 428 0
	lfs 0,12(1)
	fdivs 0,0,10
	.loc 1 429 0
	stfs 13,16(1)
.LBE28:
	.loc 1 430 0
	fmuls 12,12,12
.LBB29:
	.loc 1 428 0
	stfs 0,12(1)
.LBE29:
	.loc 1 430 0
	fmadds 11,11,11,12
	fmadds 1,1,1,11
	bl sqrt
.LVL24:
.LBB30:
	.loc 1 431 0
	lfs 0,20(1)
	.loc 1 430 0
	frsp 10,1
.LVL25:
	.loc 1 433 0
	lfs 13,28(1)
	.loc 1 434 0
	lfs 12,36(1)
	lfs 11,32(1)
	.loc 1 431 0
	fdivs 0,0,10
	.loc 1 434 0
	lfs 1,40(1)
	.loc 1 431 0
	stfs 0,20(1)
	.loc 1 433 0
	fdivs 13,13,10
	.loc 1 432 0
	lfs 0,24(1)
	fdivs 0,0,10
	.loc 1 433 0
	stfs 13,28(1)
.LBE30:
	.loc 1 434 0
	fmuls 12,12,12
.LBB31:
	.loc 1 432 0
	stfs 0,24(1)
.LBE31:
	.loc 1 434 0
	fmadds 11,11,11,12
	fmadds 1,1,1,11
	bl sqrt
.LVL26:
.LBB32:
	.loc 1 435 0
	lfs 9,32(1)
	.loc 1 434 0
	frsp 1,1
.LVL27:
	.loc 1 437 0
	lfs 11,40(1)
	.loc 1 436 0
	lfs 10,36(1)
.LBB19:
.LBB13:
	.loc 1 395 0
	mr 4,27
	.loc 1 393 0
	lfs 0,8(1)
	.loc 1 395 0
	mr 5,27
.LBE13:
.LBE19:
	.loc 1 435 0
	fdivs 9,9,1
.LBB20:
.LBB16:
	.loc 1 393 0
	lfs 12,20(1)
	lfs 8,12(1)
	.loc 1 395 0
	mr 3,22
	.loc 1 393 0
	lfs 7,16(1)
	lfs 13,24(1)
.LBE16:
.LBE20:
	.loc 1 437 0
	fdivs 11,11,1
	.loc 1 435 0
	stfs 9,32(1)
	.loc 1 436 0
	fdivs 10,10,1
	.loc 1 437 0
	stfs 11,40(1)
.LBB21:
.LBB12:
	.loc 1 394 0
	fsubs 9,0,9
.LBE12:
.LBE21:
	.loc 1 436 0
	stfs 10,36(1)
.LBB22:
.LBB17:
	.loc 1 393 0
	fsubs 12,12,0
	lfs 0,28(1)
	.loc 1 394 0
	fsubs 6,8,10
	fsubs 11,7,11
	stfs 9,56(1)
	.loc 1 393 0
	fsubs 13,13,8
	stfs 12,44(1)
	fsubs 0,0,7
	.loc 1 394 0
	stfs 6,60(1)
	stfs 11,64(1)
	.loc 1 393 0
	stfs 13,48(1)
	stfs 0,52(1)
	.loc 1 395 0
	bl crossprod
.LVL28:
	.loc 1 396 0
	mr 3,27
	bl normalize
	.loc 1 398 0
	mr 3,26
	bl glBegin
	.loc 1 399 0
	mr 3,27
	bl glNormal3fv
	.loc 1 400 0
	mr 3,23
	bl glVertex3fv
	.loc 1 401 0
	mr 3,24
	bl glVertex3fv
	.loc 1 402 0
	mr 3,25
	bl glVertex3fv
	.loc 1 403 0
	bl glEnd
.LBE17:
.LBE22:
	.loc 1 417 0
	cmpwi 7,31,1
	bne- 7,.L19
.LBE32:
.LBE39:
	.loc 1 453 0
	lwz 0,140(1)
	lmw 22,80(1)
.LVL29:
	lfd 30,120(1)
	mtlr 0
	lfd 31,128(1)
	addi 1,1,136
	blr
.LFE22:
	.size	drawtriangle, .-drawtriangle
	.align 2
	.type	tetrahedron, @function
tetrahedron:
.LFB29:
	.loc 1 597 0
.LVL30:
	mflr 0
.LCFI14:
	stwu 1,-24(1)
.LCFI15:
	.loc 1 601 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	.loc 1 597 0
	stmw 28,8(1)
.LCFI16:
	stw 0,28(1)
.LCFI17:
	.loc 1 597 0
	mr 30,3
	.loc 1 601 0
	addi 28,9,120
	.loc 1 597 0
	li 31,0
.LVL31:
	.loc 1 601 0
	addi 29,9,72
.LVL32:
.L29:
	mr 3,31
	mr 4,29
	mr 5,28
	mr 6,30
	bl drawtriangle
	.loc 1 600 0
	cmpwi 7,31,3
	addi 31,31,1
	bne+ 7,.L29
	.loc 1 602 0
	lwz 0,28(1)
	lmw 28,8(1)
.LVL33:
	addi 1,1,24
	mtlr 0
	blr
.LFE29:
	.size	tetrahedron, .-tetrahedron
	.align 2
	.globl glutSolidTetrahedron
	.type	glutSolidTetrahedron, @function
glutSolidTetrahedron:
.LFB31:
	.loc 1 613 0
	.loc 1 614 0
	li 3,4
	b tetrahedron
.LFE31:
	.size	glutSolidTetrahedron, .-glutSolidTetrahedron
	.align 2
	.globl glutWireTetrahedron
	.type	glutWireTetrahedron, @function
glutWireTetrahedron:
.LFB30:
	.loc 1 607 0
	.loc 1 608 0
	li 3,2
	b tetrahedron
.LFE30:
	.size	glutWireTetrahedron, .-glutWireTetrahedron
	.align 2
	.type	icosahedron, @function
icosahedron:
.LFB26:
	.loc 1 552 0
.LVL34:
	mflr 0
.LCFI18:
	stwu 1,-24(1)
.LCFI19:
	.loc 1 556 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	.loc 1 552 0
	stmw 28,8(1)
.LCFI20:
	stw 0,28(1)
.LCFI21:
	.loc 1 552 0
	mr 30,3
	.loc 1 556 0
	addi 28,9,312
	.loc 1 552 0
	li 31,0
.LVL35:
	.loc 1 556 0
	addi 29,9,168
.LVL36:
.L39:
	mr 3,31
	mr 4,29
	mr 5,28
	mr 6,30
	bl drawtriangle
	.loc 1 555 0
	cmpwi 7,31,19
	addi 31,31,1
	bne+ 7,.L39
	.loc 1 558 0
	lwz 0,28(1)
	lmw 28,8(1)
.LVL37:
	addi 1,1,24
	mtlr 0
	blr
.LFE26:
	.size	icosahedron, .-icosahedron
	.align 2
	.globl glutSolidIcosahedron
	.type	glutSolidIcosahedron, @function
glutSolidIcosahedron:
.LFB28:
	.loc 1 569 0
	.loc 1 570 0
	li 3,4
	b icosahedron
.LFE28:
	.size	glutSolidIcosahedron, .-glutSolidIcosahedron
	.align 2
	.globl glutWireIcosahedron
	.type	glutWireIcosahedron, @function
glutWireIcosahedron:
.LFB27:
	.loc 1 563 0
	.loc 1 564 0
	li 3,2
	b icosahedron
.LFE27:
	.size	glutWireIcosahedron, .-glutWireIcosahedron
	.align 2
	.type	octahedron, @function
octahedron:
.LFB23:
	.loc 1 481 0
.LVL38:
	mflr 0
.LCFI22:
	stwu 1,-24(1)
.LCFI23:
	.loc 1 485 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	.loc 1 481 0
	stmw 28,8(1)
.LCFI24:
	stw 0,28(1)
.LCFI25:
	.loc 1 481 0
	mr 30,3
	.loc 1 485 0
	addi 28,9,624
	.loc 1 481 0
	li 31,0
.LVL39:
	.loc 1 485 0
	addi 29,9,552
.LVL40:
.L49:
	mr 3,31
	mr 4,29
	mr 5,28
	mr 6,30
	bl drawtriangle
	.loc 1 484 0
	cmpwi 7,31,7
	addi 31,31,1
	bne+ 7,.L49
	.loc 1 487 0
	lwz 0,28(1)
	lmw 28,8(1)
.LVL41:
	addi 1,1,24
	mtlr 0
	blr
.LFE23:
	.size	octahedron, .-octahedron
	.align 2
	.globl glutSolidOctahedron
	.type	glutSolidOctahedron, @function
glutSolidOctahedron:
.LFB25:
	.loc 1 498 0
	.loc 1 499 0
	li 3,4
	b octahedron
.LFE25:
	.size	glutSolidOctahedron, .-glutSolidOctahedron
	.align 2
	.globl glutWireOctahedron
	.type	glutWireOctahedron, @function
glutWireOctahedron:
.LFB24:
	.loc 1 492 0
	.loc 1 493 0
	li 3,2
	b octahedron
.LFE24:
	.size	glutWireOctahedron, .-glutWireOctahedron
	.align 2
	.type	pentagon, @function
pentagon:
.LFB16:
	.loc 1 331 0
.LVL42:
	stwu 1,-96(1)
.LCFI26:
	mflr 0
.LCFI27:
	.loc 1 334 0
	mulli 4,4,12
.LVL43:
	.loc 1 331 0
	stmw 22,56(1)
.LCFI28:
	.loc 1 334 0
	mulli 3,3,12
.LVL44:
	.loc 1 335 0
	mulli 5,5,12
.LVL45:
	.loc 1 334 0
	lis 29,.LANCHOR2@ha
	.loc 1 331 0
	stw 0,100(1)
.LCFI29:
	.loc 1 334 0
	la 29,.LANCHOR2@l(29)
	add 23,4,29
	add 24,3,29
	.loc 1 335 0
	add 22,5,29
	.loc 1 334 0
	lfsx 6,4,29
	lfs 8,4(23)
	.loc 1 336 0
	addi 26,1,8
	.loc 1 334 0
	lfs 7,8(23)
	.loc 1 336 0
	addi 4,1,32
	.loc 1 334 0
	lfsx 10,3,29
	.loc 1 336 0
	addi 3,1,20
	.loc 1 335 0
	lfsx 9,5,29
	.loc 1 336 0
	mr 5,26
	.loc 1 334 0
	lfs 0,4(24)
	fsubs 10,10,6
	lfs 13,8(24)
	.loc 1 335 0
	fsubs 9,6,9
	lfs 12,4(22)
	.loc 1 334 0
	fsubs 0,0,8
	.loc 1 335 0
	lfs 11,8(22)
	.loc 1 334 0
	fsubs 13,13,7
	.loc 1 335 0
	fsubs 12,8,12
	.loc 1 331 0
	mr 28,8
	.loc 1 335 0
	fsubs 11,7,11
	.loc 1 334 0
	stfs 10,20(1)
	stfs 0,24(1)
	.loc 1 331 0
	mr 27,6
	.loc 1 334 0
	stfs 13,28(1)
	.loc 1 331 0
	mr 25,7
	.loc 1 335 0
	stfs 9,32(1)
	.loc 1 344 0
	mulli 27,27,12
	.loc 1 335 0
	stfs 12,36(1)
	.loc 1 345 0
	mulli 25,25,12
	.loc 1 335 0
	stfs 11,40(1)
	.loc 1 336 0
	bl crossprod
.LVL46:
	.loc 1 337 0
	mr 3,26
	bl normalize
	.loc 1 339 0
	mr 3,28
	bl glBegin
	.loc 1 340 0
	mr 3,26
	bl glNormal3fv
	.loc 1 341 0
	mr 3,24
	bl glVertex3fv
	.loc 1 342 0
	mr 3,23
	bl glVertex3fv
	.loc 1 343 0
	mr 3,22
	bl glVertex3fv
	.loc 1 344 0
	add 3,27,29
	bl glVertex3fv
	.loc 1 345 0
	add 3,25,29
	bl glVertex3fv
	.loc 1 346 0
	bl glEnd
	.loc 1 347 0
	lwz 0,100(1)
	lmw 22,56(1)
.LVL47:
	addi 1,1,96
	mtlr 0
	blr
.LFE16:
	.size	pentagon, .-pentagon
	.align 2
	.type	dodecahedron, @function
dodecahedron:
.LFB17:
	.loc 1 351 0
.LVL48:
	mflr 0
.LCFI30:
	stwu 1,-16(1)
.LCFI31:
	.loc 1 354 0
	lis 8,.LANCHOR2@ha
	.loc 1 351 0
	stw 31,12(1)
.LCFI32:
	.loc 1 354 0
	la 10,.LANCHOR2@l(8)
	.loc 1 351 0
	stw 0,20(1)
.LCFI33:
	.loc 1 351 0
	mr 31,3
	.loc 1 354 0
	lwz 0,240(10)
	cmpwi 7,0,0
	bne- 7,.L61
.LVL49:
.LBB42:
.LBB44:
	.loc 1 272 0
	lis 9,.LC15@ha
	.loc 1 270 0
	li 11,0
	.loc 1 272 0
	lfs 0,.LC15@l(9)
	.loc 1 273 0
	lis 9,.LC6@ha
	lfs 13,.LC6@l(9)
	.loc 1 270 0
	lis 9,.LC12@ha
	lfs 10,.LC12@l(9)
	lis 9,.LC13@ha
	lfs 11,.LC13@l(9)
	.loc 1 271 0
	lis 9,.LC14@ha
	lfs 12,.LC14@l(9)
.LBE44:
.LBE42:
	.loc 1 355 0
	li 0,1
.LBB46:
.LBB43:
	.loc 1 282 0
	lis 9,.LC16@ha
	.loc 1 278 0
	stfs 0,104(10)
	.loc 1 272 0
	stfs 0,24(10)
	stfs 0,28(10)
	stfs 0,32(10)
	.loc 1 273 0
	stfs 0,36(10)
	stfs 0,40(10)
	.loc 1 274 0
	stfs 0,48(10)
	stfs 0,56(10)
	.loc 1 275 0
	stfs 0,60(10)
	.loc 1 276 0
	stfs 0,76(10)
	stfs 0,80(10)
	.loc 1 277 0
	stfs 0,88(10)
.LBE43:
.LBE46:
	.loc 1 355 0
	stw 0,240(10)
.LBB47:
.LBB45:
	.loc 1 270 0
	stfs 10,.LANCHOR2@l(8)
	stw 11,4(10)
	stfs 11,8(10)
	.loc 1 271 0
	stfs 12,12(10)
	stw 11,16(10)
	stfs 11,20(10)
	.loc 1 273 0
	stfs 13,44(10)
	.loc 1 274 0
	stfs 13,52(10)
	.loc 1 275 0
	stfs 13,64(10)
	stfs 13,68(10)
	.loc 1 276 0
	stfs 13,72(10)
	.loc 1 277 0
	stfs 13,84(10)
	stfs 13,92(10)
	.loc 1 278 0
	stfs 13,96(10)
	stfs 13,100(10)
	.loc 1 279 0
	stfs 13,108(10)
	.loc 1 282 0
	lfs 0,.LC16@l(9)
	.loc 1 289 0
	stfs 10,236(10)
	.loc 1 279 0
	stfs 13,116(10)
	.loc 1 287 0
	stfs 11,208(10)
	.loc 1 288 0
	stfs 12,224(10)
	.loc 1 289 0
	stw 11,228(10)
	stfs 0,232(10)
	.loc 1 279 0
	stfs 13,112(10)
	.loc 1 280 0
	stfs 11,120(10)
	stfs 12,124(10)
	stw 11,128(10)
	.loc 1 281 0
	stfs 11,132(10)
	stfs 10,136(10)
	stw 11,140(10)
	.loc 1 282 0
	stfs 0,144(10)
	stfs 12,148(10)
	stw 11,152(10)
	.loc 1 283 0
	stfs 0,156(10)
	stfs 10,160(10)
	stw 11,164(10)
	.loc 1 284 0
	stfs 10,168(10)
	stw 11,172(10)
	stfs 0,176(10)
	.loc 1 285 0
	stfs 12,180(10)
	stw 11,184(10)
	stfs 0,188(10)
	.loc 1 286 0
	stw 11,192(10)
	stfs 11,196(10)
	stfs 12,200(10)
	.loc 1 287 0
	stw 11,204(10)
	stfs 10,212(10)
	.loc 1 288 0
	stw 11,216(10)
	stfs 0,220(10)
.L61:
.LBE45:
.LBE47:
	.loc 1 358 0
	mr 8,31
	li 3,0
	li 4,1
	li 5,9
	li 6,16
	li 7,5
	bl pentagon
	.loc 1 359 0
	mr 8,31
	li 3,1
	li 4,0
	li 5,3
	li 6,18
	li 7,7
	bl pentagon
	.loc 1 360 0
	mr 8,31
	li 3,1
	li 4,7
	li 5,11
	li 6,10
	li 7,9
	bl pentagon
	.loc 1 361 0
	mr 8,31
	li 3,11
	li 4,7
	li 5,18
	li 6,19
	li 7,6
	bl pentagon
	.loc 1 362 0
	mr 8,31
	li 3,8
	li 4,17
	li 5,16
	li 6,9
	li 7,10
	bl pentagon
	.loc 1 363 0
	mr 8,31
	li 3,2
	li 4,14
	li 5,15
	li 6,6
	li 7,19
	bl pentagon
	.loc 1 364 0
	mr 8,31
	li 3,2
	li 4,13
	li 5,12
	li 6,4
	li 7,14
	bl pentagon
	.loc 1 365 0
	mr 8,31
	li 3,2
	li 4,19
	li 5,18
	li 6,3
	li 7,13
	bl pentagon
	.loc 1 366 0
	mr 8,31
	li 3,3
	li 4,0
	li 5,5
	li 6,12
	li 7,13
	bl pentagon
	.loc 1 367 0
	mr 8,31
	li 3,6
	li 4,15
	li 5,8
	li 6,10
	li 7,11
	bl pentagon
	.loc 1 368 0
	mr 8,31
	li 3,4
	li 4,17
	li 5,8
	li 6,15
	li 7,14
	bl pentagon
	.loc 1 370 0
	lwz 0,20(1)
	.loc 1 369 0
	mr 8,31
	li 3,4
	.loc 1 370 0
	mtlr 0
	lwz 31,12(1)
.LVL50:
	.loc 1 369 0
	li 4,12
	li 5,5
	li 6,16
	li 7,17
	.loc 1 370 0
	addi 1,1,16
	.loc 1 369 0
	b pentagon
.LVL51:
.LFE17:
	.size	dodecahedron, .-dodecahedron
	.align 2
	.globl glutSolidDodecahedron
	.type	glutSolidDodecahedron, @function
glutSolidDodecahedron:
.LFB19:
	.loc 1 381 0
	.loc 1 382 0
	li 3,6
	b dodecahedron
.LFE19:
	.size	glutSolidDodecahedron, .-glutSolidDodecahedron
	.align 2
	.globl glutWireDodecahedron
	.type	glutWireDodecahedron, @function
glutWireDodecahedron:
.LFB18:
	.loc 1 375 0
	.loc 1 376 0
	li 3,2
	b dodecahedron
.LFE18:
	.size	glutWireDodecahedron, .-glutWireDodecahedron
	.align 2
	.type	doughnut, @function
doughnut:
.LFB10:
	.loc 1 182 0
.LVL52:
	mflr 0
.LCFI34:
	stwu 1,-312(1)
.LCFI35:
	.loc 1 189 0
	lis 9,.LC21@ha
	.loc 1 182 0
	stmw 18,112(1)
.LCFI36:
	mr 27,3
	stfd 14,168(1)
.LCFI37:
	fmr 14,2
	stfd 15,176(1)
.LCFI38:
	fmr 15,1
	stfd 16,184(1)
.LCFI39:
	mr 28,4
	stfd 19,208(1)
.LCFI40:
	mr 26,5
	stfd 17,192(1)
.LCFI41:
	li 30,0
.LVL53:
	stfd 18,200(1)
.LCFI42:
	.loc 1 228 0
	addi 20,1,92
	.loc 1 182 0
	stfd 20,216(1)
.LCFI43:
	.loc 1 229 0
	addi 19,1,44
	.loc 1 182 0
	stfd 21,224(1)
.LCFI44:
	.loc 1 230 0
	addi 18,1,80
	.loc 1 182 0
	stfd 22,232(1)
.LCFI45:
	.loc 1 231 0
	addi 23,1,32
	.loc 1 182 0
	stfd 23,240(1)
.LCFI46:
	.loc 1 232 0
	addi 22,1,68
	.loc 1 182 0
	stfd 24,248(1)
.LCFI47:
	.loc 1 233 0
	addi 21,1,20
	.loc 1 182 0
	stfd 25,256(1)
.LCFI48:
	.loc 1 234 0
	addi 25,1,56
	.loc 1 182 0
	stfd 26,264(1)
.LCFI49:
	.loc 1 235 0
	addi 24,1,8
	.loc 1 182 0
	stfd 27,272(1)
.LCFI50:
	stfd 28,280(1)
.LCFI51:
	stfd 29,288(1)
.LCFI52:
	stfd 30,296(1)
.LCFI53:
	stfd 31,304(1)
.LCFI54:
	stw 0,316(1)
.LCFI55:
	.loc 1 189 0
	lfd 19,.LC21@l(9)
	.loc 1 192 0
	fmr 16,19
	b .L69
.LVL54:
.L70:
	.loc 1 189 0
	lis 9,0x4330
	xoris 0,28,0x8000
	stw 0,108(1)
	xoris 0,30,0x8000
	stw 9,104(1)
	.loc 1 190 0
	addi 30,30,1
	.loc 1 189 0
	lis 9,.LC11@ha
	.loc 1 190 0
	li 31,0
	.loc 1 189 0
	lfd 11,104(1)
	stw 0,108(1)
	.loc 1 190 0
	xoris 0,30,0x8000
	.loc 1 189 0
	lfs 13,.LC11@l(9)
	lfd 12,104(1)
	.loc 1 190 0
	stw 0,108(1)
	.loc 1 189 0
	fsub 11,11,13
	fsub 12,12,13
	.loc 1 190 0
	lfd 0,104(1)
	.loc 1 189 0
	frsp 12,12
	.loc 1 190 0
	fsub 0,0,13
	.loc 1 189 0
	fmr 13,12
	.loc 1 190 0
	frsp 0,0
	.loc 1 189 0
	fadd 13,13,13
	.loc 1 190 0
	fadd 0,0,0
	.loc 1 189 0
	fmul 13,13,19
	.loc 1 190 0
	fmul 0,0,19
	.loc 1 189 0
	fdiv 13,13,11
	.loc 1 190 0
	fdiv 0,0,11
	.loc 1 189 0
	frsp 18,13
	.loc 1 190 0
	frsp 17,0
	b .L71
.L72:
	.loc 1 192 0
	lis 29,0x4330
	xoris 0,27,0x8000
	stw 0,108(1)
	xoris 0,31,0x8000
	stw 29,104(1)
	lis 11,.LC11@ha
	lfs 21,.LC11@l(11)
	.loc 1 195 0
	fmr 1,18
	.loc 1 192 0
	lfd 22,104(1)
	.loc 1 195 0
	fmr 24,15
	.loc 1 192 0
	stw 0,108(1)
	.loc 1 195 0
	fmr 27,14
	.loc 1 192 0
	fsub 22,22,21
	.loc 1 193 0
	addi 31,31,1
	.loc 1 192 0
	lfd 0,104(1)
	fsub 0,0,21
	frsp 0,0
	fmr 31,0
	.loc 1 195 0
	bl cos
	fmr 25,1
	.loc 1 192 0
	fadd 31,31,31
	fmul 31,31,16
	fdiv 31,31,22
	frsp 31,31
.LVL55:
	.loc 1 195 0
	fmr 1,31
	bl cos
	fmr 23,1
	.loc 1 196 0
	fmr 1,18
	.loc 1 195 0
	fmadd 30,24,23,27
	fmul 0,25,30
	frsp 0,0
	stfs 0,8(1)
	.loc 1 196 0
	bl sin
	fneg 26,1
	.loc 1 197 0
	fmr 1,31
	.loc 1 196 0
	fmul 0,26,30
	frsp 0,0
	stfs 0,12(1)
	.loc 1 197 0
	bl sin
	fmr 20,1
	.loc 1 199 0
	fmr 1,17
	.loc 1 197 0
	fmul 31,24,20
.LVL56:
	.loc 1 213 0
	frsp 20,20
	.loc 1 197 0
	frsp 31,31
	stfs 31,16(1)
	.loc 1 199 0
	bl cos
	fmr 28,1
	.loc 1 200 0
	fmr 1,17
	.loc 1 199 0
	fmul 0,28,30
	frsp 0,0
	stfs 0,20(1)
	.loc 1 200 0
	bl sin
	.loc 1 203 0
	xoris 0,31,0x8000
	stw 0,108(1)
	.loc 1 200 0
	fneg 29,1
	.loc 1 203 0
	stw 29,104(1)
	.loc 1 201 0
	stfs 31,28(1)
	.loc 1 203 0
	lfd 0,104(1)
	.loc 1 200 0
	fmul 30,29,30
	.loc 1 203 0
	fsub 0,0,21
	.loc 1 200 0
	frsp 30,30
	.loc 1 203 0
	frsp 0,0
	.loc 1 200 0
	stfs 30,24(1)
	.loc 1 203 0
	fmr 31,0
	fadd 31,31,31
	fmul 31,31,16
	fdiv 31,31,22
	frsp 31,31
	fmr 1,31
	bl cos
	fmr 30,1
	.loc 1 205 0
	fmr 1,31
	.loc 1 203 0
	fmadd 27,24,30,27
	fmul 0,28,27
	.loc 1 204 0
	fmul 13,29,27
	.loc 1 203 0
	frsp 0,0
	.loc 1 204 0
	frsp 13,13
	.loc 1 203 0
	stfs 0,32(1)
	.loc 1 204 0
	stfs 13,36(1)
	.loc 1 205 0
	bl sin
	.loc 1 224 0
	fmul 11,26,30
	.loc 1 227 0
	mr 3,26
	.loc 1 217 0
	stfs 20,76(1)
	.loc 1 208 0
	fmul 0,26,27
	.loc 1 213 0
	stfs 20,64(1)
	.loc 1 219 0
	fmul 12,28,30
	.loc 1 205 0
	fmul 24,24,1
	.loc 1 216 0
	fmul 13,29,23
	.loc 1 207 0
	fmul 27,25,27
	.loc 1 220 0
	fmul 29,29,30
	.loc 1 212 0
	fmul 26,26,23
	.loc 1 223 0
	fmul 30,25,30
	.loc 1 215 0
	fmul 28,28,23
	.loc 1 211 0
	fmul 25,25,23
	.loc 1 221 0
	frsp 1,1
	.loc 1 208 0
	frsp 0,0
	.loc 1 216 0
	frsp 13,13
	.loc 1 219 0
	frsp 12,12
	.loc 1 225 0
	stfs 1,100(1)
	.loc 1 224 0
	frsp 11,11
	.loc 1 208 0
	stfs 0,48(1)
	.loc 1 205 0
	frsp 24,24
	.loc 1 216 0
	stfs 13,72(1)
	.loc 1 207 0
	frsp 27,27
	.loc 1 219 0
	stfs 12,80(1)
	.loc 1 211 0
	frsp 25,25
	.loc 1 224 0
	stfs 11,96(1)
	.loc 1 212 0
	frsp 26,26
	.loc 1 221 0
	stfs 1,88(1)
	.loc 1 215 0
	frsp 28,28
	.loc 1 207 0
	stfs 27,44(1)
	.loc 1 220 0
	frsp 29,29
	.loc 1 209 0
	stfs 24,52(1)
	.loc 1 223 0
	frsp 30,30
	.loc 1 211 0
	stfs 25,56(1)
	.loc 1 212 0
	stfs 26,60(1)
	.loc 1 215 0
	stfs 28,68(1)
	.loc 1 220 0
	stfs 29,84(1)
	.loc 1 223 0
	stfs 30,92(1)
	.loc 1 205 0
	stfs 24,40(1)
	.loc 1 227 0
	bl glBegin
	.loc 1 228 0
	mr 3,20
	bl glNormal3fv
	.loc 1 229 0
	mr 3,19
	bl glVertex3fv
	.loc 1 230 0
	mr 3,18
	bl glNormal3fv
	.loc 1 231 0
	mr 3,23
	bl glVertex3fv
	.loc 1 232 0
	mr 3,22
	bl glNormal3fv
	.loc 1 233 0
	mr 3,21
	bl glVertex3fv
	.loc 1 234 0
	mr 3,25
	bl glNormal3fv
	.loc 1 235 0
	mr 3,24
	bl glVertex3fv
	.loc 1 236 0
	bl glEnd
.LVL57:
.L71:
	.loc 1 191 0
	cmpw 7,31,27
	blt- 7,.L72
.L69:
	.loc 1 188 0
	cmpw 7,30,28
	blt+ 7,.L70
	.loc 1 239 0
	lwz 0,316(1)
	lmw 18,112(1)
.LVL58:
	lfd 14,168(1)
.LVL59:
	mtlr 0
	lfd 15,176(1)
.LVL60:
	lfd 16,184(1)
	lfd 17,192(1)
.LVL61:
	lfd 18,200(1)
.LVL62:
	lfd 19,208(1)
	lfd 20,216(1)
	lfd 21,224(1)
	lfd 22,232(1)
	lfd 23,240(1)
	lfd 24,248(1)
	lfd 25,256(1)
	lfd 26,264(1)
	lfd 27,272(1)
	lfd 28,280(1)
	lfd 29,288(1)
	lfd 30,296(1)
	lfd 31,304(1)
	addi 1,1,312
	blr
.LFE10:
	.size	doughnut, .-doughnut
	.align 2
	.globl glutSolidTorus
	.type	glutSolidTorus, @function
glutSolidTorus:
.LFB12:
	.loc 1 253 0
.LVL63:
	.loc 1 254 0
	frsp 1,1
.LVL64:
	li 5,7
	frsp 2,2
.LVL65:
	b doughnut
.LVL66:
.LFE12:
	.size	glutSolidTorus, .-glutSolidTorus
	.align 2
	.globl glutWireTorus
	.type	glutWireTorus, @function
glutWireTorus:
.LFB11:
	.loc 1 245 0
.LVL67:
	.loc 1 246 0
	frsp 1,1
.LVL68:
	li 5,2
	frsp 2,2
.LVL69:
	b doughnut
.LVL70:
.LFE11:
	.size	glutWireTorus, .-glutWireTorus
	.align 2
	.type	initQuadObj, @function
initQuadObj:
.LFB2:
	.loc 1 63 0
	mflr 0
.LCFI56:
	stwu 1,-8(1)
.LCFI57:
	stw 0,12(1)
.LCFI58:
	.loc 1 64 0
	bl gluNewQuadric
	lis 9,.LANCHOR2+244@ha
	stw 3,.LANCHOR2+244@l(9)
	.loc 1 67 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE2:
	.size	initQuadObj, .-initQuadObj
	.align 2
	.globl glutSolidCone
	.type	glutSolidCone, @function
glutSolidCone:
.LFB6:
	.loc 1 110 0
.LVL71:
	mflr 0
.LCFI59:
	stwu 1,-40(1)
.LCFI60:
	.loc 1 111 0
	lis 9,.LANCHOR2@ha
	.loc 1 110 0
	stmw 29,12(1)
.LCFI61:
	.loc 1 111 0
	la 31,.LANCHOR2@l(9)
	.loc 1 110 0
	stfd 30,24(1)
.LCFI62:
	mr 30,3
	stfd 31,32(1)
.LCFI63:
	fmr 30,1
	stw 0,44(1)
.LCFI64:
	.loc 1 110 0
	fmr 31,2
	mr 29,4
	.loc 1 111 0
	lwz 0,244(31)
	cmpwi 7,0,0
	bne+ 7,.L82
.LVL72:
	bl initQuadObj
.LVL73:
.L82:
	lwz 3,244(31)
	cmpwi 7,3,0
	beq- 7,.L86
	.loc 1 112 0
	lis 4,0x1
	ori 4,4,34476
	bl gluQuadricDrawStyle
	.loc 1 113 0
	lwz 3,244(31)
	lis 4,0x1
	ori 4,4,34464
	bl gluQuadricNormals
	.loc 1 117 0
	lis 9,.LC24@ha
	fmr 1,30
	lwz 3,244(31)
	fmr 3,31
	lfd 2,.LC24@l(9)
	mr 4,30
	mr 5,29
	bl gluCylinder
.LVL74:
.L86:
	.loc 1 118 0
	lwz 0,44(1)
	lmw 29,12(1)
.LVL75:
	lfd 30,24(1)
.LVL76:
	mtlr 0
	lfd 31,32(1)
.LVL77:
	addi 1,1,40
	blr
.LFE6:
	.size	glutSolidCone, .-glutSolidCone
	.align 2
	.globl glutWireCone
	.type	glutWireCone, @function
glutWireCone:
.LFB5:
	.loc 1 97 0
.LVL78:
	mflr 0
.LCFI65:
	stwu 1,-40(1)
.LCFI66:
	.loc 1 98 0
	lis 9,.LANCHOR2@ha
	.loc 1 97 0
	stmw 29,12(1)
.LCFI67:
	.loc 1 98 0
	la 31,.LANCHOR2@l(9)
	.loc 1 97 0
	stfd 30,24(1)
.LCFI68:
	mr 30,3
	stfd 31,32(1)
.LCFI69:
	fmr 30,1
	stw 0,44(1)
.LCFI70:
	.loc 1 97 0
	fmr 31,2
	mr 29,4
	.loc 1 98 0
	lwz 0,244(31)
	cmpwi 7,0,0
	bne+ 7,.L88
.LVL79:
	bl initQuadObj
.LVL80:
.L88:
	lwz 3,244(31)
	cmpwi 7,3,0
	beq- 7,.L92
	.loc 1 99 0
	lis 4,0x1
	ori 4,4,34475
	bl gluQuadricDrawStyle
	.loc 1 100 0
	lwz 3,244(31)
	lis 4,0x1
	ori 4,4,34464
	bl gluQuadricNormals
	.loc 1 104 0
	lis 9,.LC24@ha
	fmr 1,30
	lwz 3,244(31)
	fmr 3,31
	lfd 2,.LC24@l(9)
	mr 4,30
	mr 5,29
	bl gluCylinder
.LVL81:
.L92:
	.loc 1 105 0
	lwz 0,44(1)
	lmw 29,12(1)
.LVL82:
	lfd 30,24(1)
.LVL83:
	mtlr 0
	lfd 31,32(1)
.LVL84:
	addi 1,1,40
	blr
.LFE5:
	.size	glutWireCone, .-glutWireCone
	.align 2
	.globl glutSolidSphere
	.type	glutSolidSphere, @function
glutSolidSphere:
.LFB4:
	.loc 1 84 0
.LVL85:
	mflr 0
.LCFI71:
	stwu 1,-32(1)
.LCFI72:
	.loc 1 85 0
	lis 9,.LANCHOR2@ha
	.loc 1 84 0
	stmw 29,12(1)
.LCFI73:
	.loc 1 85 0
	la 31,.LANCHOR2@l(9)
	.loc 1 84 0
	stfd 31,24(1)
.LCFI74:
	mr 30,3
	stw 0,36(1)
.LCFI75:
	.loc 1 84 0
	fmr 31,1
	mr 29,4
	.loc 1 85 0
	lwz 0,244(31)
	cmpwi 7,0,0
	bne+ 7,.L94
.LVL86:
	bl initQuadObj
.LVL87:
.L94:
	lwz 3,244(31)
	cmpwi 7,3,0
	beq- 7,.L98
	.loc 1 86 0
	lis 4,0x1
	ori 4,4,34476
	bl gluQuadricDrawStyle
	.loc 1 87 0
	lwz 3,244(31)
	lis 4,0x1
	ori 4,4,34464
	bl gluQuadricNormals
	.loc 1 91 0
	fmr 1,31
	lwz 3,244(31)
	mr 4,30
	mr 5,29
	bl gluSphere
.LVL88:
.L98:
	.loc 1 92 0
	lwz 0,36(1)
	lmw 29,12(1)
.LVL89:
	lfd 31,24(1)
.LVL90:
	mtlr 0
	addi 1,1,32
	blr
.LFE4:
	.size	glutSolidSphere, .-glutSolidSphere
	.align 2
	.globl glutWireSphere
	.type	glutWireSphere, @function
glutWireSphere:
.LFB3:
	.loc 1 72 0
.LVL91:
	mflr 0
.LCFI76:
	stwu 1,-32(1)
.LCFI77:
	.loc 1 73 0
	lis 9,.LANCHOR2@ha
	.loc 1 72 0
	stmw 29,12(1)
.LCFI78:
	.loc 1 73 0
	la 31,.LANCHOR2@l(9)
	.loc 1 72 0
	stfd 31,24(1)
.LCFI79:
	mr 30,3
	stw 0,36(1)
.LCFI80:
	.loc 1 72 0
	fmr 31,1
	mr 29,4
	.loc 1 73 0
	lwz 0,244(31)
	cmpwi 7,0,0
	bne+ 7,.L100
.LVL92:
	bl initQuadObj
.LVL93:
.L100:
	lwz 3,244(31)
	cmpwi 7,3,0
	beq- 7,.L104
	.loc 1 74 0
	lis 4,0x1
	ori 4,4,34475
	bl gluQuadricDrawStyle
	.loc 1 75 0
	lwz 3,244(31)
	lis 4,0x1
	ori 4,4,34464
	bl gluQuadricNormals
	.loc 1 79 0
	fmr 1,31
	lwz 3,244(31)
	mr 4,30
	mr 5,29
	bl gluSphere
.LVL94:
.L104:
	.loc 1 80 0
	lwz 0,36(1)
	lmw 29,12(1)
.LVL95:
	lfd 31,24(1)
.LVL96:
	mtlr 0
	addi 1,1,32
	blr
.LFE3:
	.size	glutWireSphere, .-glutWireSphere
	.section	.rodata
	.align 2
	.set	.LANCHOR1,. + 0
	.type	faces.9231, @object
	.size	faces.9231, 96
faces.9231:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	3
	.long	2
	.long	6
	.long	7
	.long	7
	.long	6
	.long	5
	.long	4
	.long	4
	.long	5
	.long	1
	.long	0
	.long	5
	.long	6
	.long	2
	.long	1
	.long	7
	.long	4
	.long	0
	.long	3
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	-1090519040
.LC1:
	.4byte	1056964608
.LC6:
	.4byte	1065353216
.LC9:
	.4byte	0
.LC11:
	.4byte	1501560836
.LC12:
	.4byte	-1088538758
.LC13:
	.4byte	1070537661
.LC14:
	.4byte	1058944890
.LC15:
	.4byte	-1082130432
.LC16:
	.4byte	-1076945987
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC21:
	.4byte	1074340347
	.4byte	1413754136
.LC24:
	.4byte	0
	.4byte	0
	.section	".data"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	n.9230, @object
	.size	n.9230, 72
n.9230:
	.long	-1082130432
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.long	-1082130432
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	-1082130432
	.type	tdata, @object
	.size	tdata, 48
tdata:
	.long	1071494103
	.long	1071494103
	.long	1071494103
	.long	1071494103
	.long	-1075989545
	.long	-1075989545
	.long	-1075989545
	.long	1071494103
	.long	-1075989545
	.long	-1075989545
	.long	-1075989545
	.long	1071494103
	.type	tndex, @object
	.size	tndex, 48
tndex:
	.long	0
	.long	1
	.long	3
	.long	2
	.long	1
	.long	0
	.long	3
	.long	2
	.long	0
	.long	1
	.long	2
	.long	3
	.type	idata, @object
	.size	idata, 144
idata:
	.long	-1090087344
	.long	0
	.long	1062847552
	.long	1057396304
	.long	0
	.long	1062847552
	.long	-1090087344
	.long	0
	.long	-1084636096
	.long	1057396304
	.long	0
	.long	-1084636096
	.long	0
	.long	1062847552
	.long	1057396304
	.long	0
	.long	1062847552
	.long	-1090087344
	.long	0
	.long	-1084636096
	.long	1057396304
	.long	0
	.long	-1084636096
	.long	-1090087344
	.long	1062847552
	.long	1057396304
	.long	0
	.long	-1084636096
	.long	1057396304
	.long	0
	.long	1062847552
	.long	-1090087344
	.long	0
	.long	-1084636096
	.long	-1090087344
	.long	0
	.type	index, @object
	.size	index, 240
index:
	.long	0
	.long	4
	.long	1
	.long	0
	.long	9
	.long	4
	.long	9
	.long	5
	.long	4
	.long	4
	.long	5
	.long	8
	.long	4
	.long	8
	.long	1
	.long	8
	.long	10
	.long	1
	.long	8
	.long	3
	.long	10
	.long	5
	.long	3
	.long	8
	.long	5
	.long	2
	.long	3
	.long	2
	.long	7
	.long	3
	.long	7
	.long	10
	.long	3
	.long	7
	.long	6
	.long	10
	.long	7
	.long	11
	.long	6
	.long	11
	.long	0
	.long	6
	.long	0
	.long	1
	.long	6
	.long	6
	.long	1
	.long	10
	.long	9
	.long	0
	.long	11
	.long	9
	.long	11
	.long	2
	.long	9
	.long	2
	.long	5
	.long	7
	.long	2
	.long	11
	.type	odata, @object
	.size	odata, 72
odata:
	.long	1065353216
	.long	0
	.long	0
	.long	-1082130432
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	-1082130432
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	-1082130432
	.type	ondex, @object
	.size	ondex, 96
ondex:
	.long	0
	.long	4
	.long	2
	.long	1
	.long	2
	.long	4
	.long	0
	.long	3
	.long	4
	.long	1
	.long	4
	.long	3
	.long	0
	.long	2
	.long	5
	.long	1
	.long	5
	.long	2
	.long	0
	.long	5
	.long	3
	.long	1
	.long	3
	.long	5
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC5:
	.string	"normalize: zero length vector"
	.section	".bss"
	.align 2
	.set	.LANCHOR2,. + 0
	.type	dodec, @object
	.size	dodec, 240
dodec:
	.zero	240
	.type	inited.9590, @object
	.size	inited.9590, 4
inited.9590:
	.zero	4
	.type	quadObj, @object
	.size	quadObj, 4
quadObj:
	.zero	4
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI1-.LFB7
	.byte	0xe
	.uleb128 0x80
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
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
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI5-.LFB15
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI9-.LFB22
	.byte	0xe
	.uleb128 0x88
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0x9f
	.uleb128 0x5
	.byte	0x9e
	.uleb128 0x6
	.byte	0x9d
	.uleb128 0x7
	.byte	0x9c
	.uleb128 0x8
	.byte	0x9b
	.uleb128 0x9
	.byte	0x9a
	.uleb128 0xa
	.byte	0x99
	.uleb128 0xb
	.byte	0x98
	.uleb128 0xc
	.byte	0x97
	.uleb128 0xd
	.byte	0x96
	.uleb128 0xe
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI13-.LCFI10
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI15-.LFB29
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI17-.LCFI15
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9c
	.uleb128 0x4
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI19-.LFB26
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI21-.LCFI19
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9c
	.uleb128 0x4
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.align 2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.align 2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI23-.LFB23
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI25-.LCFI23
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9c
	.uleb128 0x4
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.align 2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.align 2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI26-.LFB16
	.byte	0xe
	.uleb128 0x60
	.byte	0x4
	.4byte	.LCFI28-.LCFI26
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
	.4byte	.LCFI29-.LCFI28
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI31-.LFB17
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI33-.LCFI31
	.byte	0x9f
	.uleb128 0x1
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.align 2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.align 2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI35-.LFB10
	.byte	0xe
	.uleb128 0x138
	.byte	0x4
	.4byte	.LCFI36-.LCFI35
	.byte	0x9f
	.uleb128 0x25
	.byte	0x9e
	.uleb128 0x26
	.byte	0x9d
	.uleb128 0x27
	.byte	0x9c
	.uleb128 0x28
	.byte	0x9b
	.uleb128 0x29
	.byte	0x9a
	.uleb128 0x2a
	.byte	0x99
	.uleb128 0x2b
	.byte	0x98
	.uleb128 0x2c
	.byte	0x97
	.uleb128 0x2d
	.byte	0x96
	.uleb128 0x2e
	.byte	0x95
	.uleb128 0x2f
	.byte	0x94
	.uleb128 0x30
	.byte	0x93
	.uleb128 0x31
	.byte	0x92
	.uleb128 0x32
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI37-.LCFI36
	.byte	0xae
	.uleb128 0x24
	.byte	0x4
	.4byte	.LCFI38-.LCFI37
	.byte	0xaf
	.uleb128 0x22
	.byte	0x4
	.4byte	.LCFI55-.LCFI38
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
	.byte	0xbb
	.uleb128 0xa
	.byte	0xba
	.uleb128 0xc
	.byte	0xb9
	.uleb128 0xe
	.byte	0xb8
	.uleb128 0x10
	.byte	0xb7
	.uleb128 0x12
	.byte	0xb6
	.uleb128 0x14
	.byte	0xb5
	.uleb128 0x16
	.byte	0xb4
	.uleb128 0x18
	.byte	0xb2
	.uleb128 0x1c
	.byte	0xb1
	.uleb128 0x1e
	.byte	0xb3
	.uleb128 0x1a
	.byte	0xb0
	.uleb128 0x20
	.align 2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.align 2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.align 2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI57-.LFB2
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI58-.LCFI57
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI60-.LFB6
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI61-.LCFI60
	.byte	0x9f
	.uleb128 0x5
	.byte	0x9e
	.uleb128 0x6
	.byte	0x9d
	.uleb128 0x7
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI63-.LCFI61
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI64-.LCFI63
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI66-.LFB5
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI67-.LCFI66
	.byte	0x9f
	.uleb128 0x5
	.byte	0x9e
	.uleb128 0x6
	.byte	0x9d
	.uleb128 0x7
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI69-.LCFI67
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI70-.LCFI69
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI72-.LFB4
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI73-.LCFI72
	.byte	0x9f
	.uleb128 0x3
	.byte	0x9e
	.uleb128 0x4
	.byte	0x9d
	.uleb128 0x5
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI75-.LCFI73
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0xbf
	.uleb128 0x2
	.align 2
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI77-.LFB3
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI78-.LCFI77
	.byte	0x9f
	.uleb128 0x3
	.byte	0x9e
	.uleb128 0x4
	.byte	0x9d
	.uleb128 0x5
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI80-.LCFI78
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0xbf
	.uleb128 0x2
	.align 2
.LEFDE52:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LFB7-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB22-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 136
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2a
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2a
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB29-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LFB26-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LFB23-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI23-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LFB16-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI26-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LFB17-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI35-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 312
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2f
	.4byte	.LVL60-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2e
	.4byte	.LVL59-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL58-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL58-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL58-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x32
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST62:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST63:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST64:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST65:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST66:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI57-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI57-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST67:
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI60-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI60-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST68:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL76-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST69:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL77-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST70:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST71:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL75-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST72:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI66-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI66-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST73:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL83-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST74:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL84-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST75:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST76:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL82-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST77:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI72-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI72-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST78:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL90-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST79:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST80:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL89-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST81:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI77-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI77-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST82:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL96-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST83:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST84:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL95-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/include/GL/gl.h"
	.file 3 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/include/GL/glu.h"
	.section	.debug_info
	.4byte	0xb29
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x1
	.4byte	.LASF79
	.4byte	.LASF80
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x2
	.byte	0x92
	.4byte	0x48
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x2
	.byte	0x98
	.4byte	0x41
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x2
	.byte	0x9d
	.4byte	0x75
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x2
	.byte	0x9f
	.4byte	0x6e
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0x99
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x10e
	.4byte	0xc8
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x113
	.4byte	0xbc
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x12e
	.byte	0x1
	.4byte	.LFB14
	.4byte	.LFE14
	.byte	0x1
	.byte	0x51
	.4byte	0x124
	.uleb128 0xa
	.string	"v1"
	.byte	0x1
	.2byte	0x12d
	.4byte	0xb6
	.byte	0x1
	.byte	0x53
	.uleb128 0xa
	.string	"v2"
	.byte	0x1
	.2byte	0x12d
	.4byte	0xb6
	.byte	0x1
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x12d
	.4byte	0xb6
	.byte	0x1
	.byte	0x55
	.uleb128 0xc
	.string	"p"
	.byte	0x1
	.2byte	0x12f
	.4byte	0x124
	.byte	0x0
	.uleb128 0xd
	.4byte	0x99
	.4byte	0x134
	.uleb128 0xe
	.4byte	0x5d
	.byte	0x2
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST1
	.4byte	0x1a1
	.uleb128 0x10
	.4byte	.LASF22
	.byte	0x1
	.byte	0x7b
	.4byte	0x99
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x1
	.byte	0x7b
	.4byte	0x83
	.4byte	.LLST3
	.uleb128 0x11
	.string	"v"
	.byte	0x1
	.byte	0x8f
	.4byte	0x1a1
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x90
	.4byte	0x8e
	.uleb128 0x11
	.string	"n"
	.byte	0x1
	.byte	0x7d
	.4byte	0x9e2
	.byte	0x5
	.byte	0x3
	.4byte	n.9230
	.uleb128 0x13
	.4byte	.LASF24
	.byte	0x1
	.byte	0x86
	.4byte	0xa0e
	.byte	0x5
	.byte	0x3
	.4byte	faces.9231
	.byte	0x0
	.uleb128 0xd
	.4byte	0x99
	.4byte	0x1b7
	.uleb128 0xe
	.4byte	0x5d
	.byte	0x7
	.uleb128 0xe
	.4byte	0x5d
	.byte	0x2
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF25
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x51
	.4byte	0x1de
	.uleb128 0x10
	.4byte	.LASF22
	.byte	0x1
	.byte	0xac
	.4byte	0xa4
	.4byte	.LLST5
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF26
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x51
	.4byte	0x205
	.uleb128 0x10
	.4byte	.LASF22
	.byte	0x1
	.byte	0xa6
	.4byte	0xa4
	.4byte	.LLST7
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x13b
	.byte	0x1
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST8
	.4byte	0x23b
	.uleb128 0x16
	.string	"v"
	.byte	0x1
	.2byte	0x13a
	.4byte	0xb6
	.4byte	.LLST9
	.uleb128 0x17
	.string	"d"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x99
	.4byte	.LLST10
	.byte	0x0
	.uleb128 0x18
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x199
	.byte	0x1
	.byte	0x1
	.4byte	0x2d6
	.uleb128 0x19
	.string	"v0"
	.byte	0x1
	.2byte	0x197
	.4byte	0xb6
	.uleb128 0x19
	.string	"v1"
	.byte	0x1
	.2byte	0x197
	.4byte	0xb6
	.uleb128 0x19
	.string	"v2"
	.byte	0x1
	.2byte	0x197
	.4byte	0xb6
	.uleb128 0x1a
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x198
	.4byte	0x83
	.uleb128 0x1b
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x19a
	.4byte	0x41
	.uleb128 0xc
	.string	"w0"
	.byte	0x1
	.2byte	0x19b
	.4byte	0x124
	.uleb128 0xc
	.string	"w1"
	.byte	0x1
	.2byte	0x19b
	.4byte	0x124
	.uleb128 0xc
	.string	"w2"
	.byte	0x1
	.2byte	0x19b
	.4byte	0x124
	.uleb128 0xc
	.string	"l"
	.byte	0x1
	.2byte	0x19c
	.4byte	0x99
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.2byte	0x19d
	.4byte	0x41
	.uleb128 0xc
	.string	"j"
	.byte	0x1
	.2byte	0x19d
	.4byte	0x41
	.uleb128 0xc
	.string	"k"
	.byte	0x1
	.2byte	0x19d
	.4byte	0x41
	.uleb128 0xc
	.string	"n"
	.byte	0x1
	.2byte	0x19d
	.4byte	0x41
	.byte	0x0
	.uleb128 0x18
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x186
	.byte	0x1
	.byte	0x1
	.4byte	0x328
	.uleb128 0x19
	.string	"n1"
	.byte	0x1
	.2byte	0x184
	.4byte	0xb6
	.uleb128 0x19
	.string	"n2"
	.byte	0x1
	.2byte	0x184
	.4byte	0xb6
	.uleb128 0x19
	.string	"n3"
	.byte	0x1
	.2byte	0x184
	.4byte	0xb6
	.uleb128 0x1a
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x185
	.4byte	0x83
	.uleb128 0xc
	.string	"q0"
	.byte	0x1
	.2byte	0x187
	.4byte	0x124
	.uleb128 0xc
	.string	"q1"
	.byte	0x1
	.2byte	0x187
	.4byte	0x124
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1be
	.byte	0x1
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LLST11
	.4byte	0x446
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x41
	.4byte	.LLST12
	.uleb128 0x1c
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x446
	.4byte	.LLST13
	.uleb128 0x16
	.string	"ndx"
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x45c
	.4byte	.LLST14
	.uleb128 0x1c
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x83
	.4byte	.LLST15
	.uleb128 0xc
	.string	"x0"
	.byte	0x1
	.2byte	0x1bf
	.4byte	0xb6
	.uleb128 0xc
	.string	"x1"
	.byte	0x1
	.2byte	0x1bf
	.4byte	0xb6
	.uleb128 0xc
	.string	"x2"
	.byte	0x1
	.2byte	0x1bf
	.4byte	0xb6
	.uleb128 0x1d
	.4byte	0x23b
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.2byte	0x1c4
	.uleb128 0x1e
	.4byte	0x26a
	.uleb128 0x1e
	.4byte	0x25f
	.uleb128 0x1e
	.4byte	0x254
	.uleb128 0x1e
	.4byte	0x249
	.uleb128 0x1f
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x20
	.4byte	0x276
	.uleb128 0x21
	.4byte	0x282
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x21
	.4byte	0x28d
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x21
	.4byte	0x298
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.4byte	0x2a3
	.4byte	.LLST16
	.uleb128 0x20
	.4byte	0x2ad
	.uleb128 0x22
	.4byte	0x2b7
	.4byte	.LLST17
	.uleb128 0x22
	.4byte	0x2c1
	.4byte	.LLST18
	.uleb128 0x20
	.4byte	0x2cb
	.uleb128 0x1d
	.4byte	0x2d6
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x1
	.2byte	0x1b6
	.uleb128 0x1e
	.4byte	0x305
	.uleb128 0x1e
	.4byte	0x2fa
	.uleb128 0x1e
	.4byte	0x2ef
	.uleb128 0x1e
	.4byte	0x2e4
	.uleb128 0x1f
	.4byte	.Ldebug_ranges0+0xf8
	.uleb128 0x21
	.4byte	0x311
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x21
	.4byte	0x31c
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x124
	.uleb128 0xd
	.4byte	0x41
	.4byte	0x45c
	.uleb128 0xe
	.4byte	0x5d
	.byte	0x2
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x44c
	.uleb128 0x15
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x255
	.byte	0x1
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LLST19
	.4byte	0x49a
	.uleb128 0x1c
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x254
	.4byte	0x83
	.4byte	.LLST20
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.2byte	0x256
	.4byte	0x41
	.4byte	.LLST21
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x265
	.byte	0x1
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x25f
	.byte	0x1
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x228
	.byte	0x1
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LLST24
	.4byte	0x4fa
	.uleb128 0x1c
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x227
	.4byte	0x83
	.4byte	.LLST25
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.2byte	0x229
	.4byte	0x41
	.4byte	.LLST26
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x239
	.byte	0x1
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x233
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x1e1
	.byte	0x1
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LLST29
	.4byte	0x55a
	.uleb128 0x1c
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x83
	.4byte	.LLST30
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x41
	.4byte	.LLST31
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x1f2
	.byte	0x1
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x1ec
	.byte	0x1
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x14b
	.byte	0x1
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST34
	.4byte	0x61e
	.uleb128 0x16
	.string	"a"
	.byte	0x1
	.2byte	0x14a
	.4byte	0x41
	.4byte	.LLST35
	.uleb128 0x16
	.string	"b"
	.byte	0x1
	.2byte	0x14a
	.4byte	0x41
	.4byte	.LLST36
	.uleb128 0x16
	.string	"c"
	.byte	0x1
	.2byte	0x14a
	.4byte	0x41
	.4byte	.LLST37
	.uleb128 0x16
	.string	"d"
	.byte	0x1
	.2byte	0x14a
	.4byte	0x41
	.4byte	.LLST38
	.uleb128 0x16
	.string	"e"
	.byte	0x1
	.2byte	0x14a
	.4byte	0x41
	.4byte	.LLST39
	.uleb128 0x1c
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x14a
	.4byte	0x83
	.4byte	.LLST40
	.uleb128 0x24
	.string	"n0"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x124
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.string	"d1"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x124
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x24
	.string	"d2"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x18
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x107
	.byte	0x1
	.byte	0x1
	.4byte	0x645
	.uleb128 0x1b
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x108
	.4byte	0x99
	.uleb128 0x1b
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x108
	.4byte	0x99
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x15f
	.byte	0x1
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST41
	.4byte	0x6a2
	.uleb128 0x1c
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x15e
	.4byte	0x83
	.4byte	.LLST42
	.uleb128 0x25
	.4byte	0x61e
	.4byte	.Ldebug_ranges0+0x130
	.byte	0x1
	.2byte	0x164
	.4byte	0x68f
	.uleb128 0x1f
	.4byte	.Ldebug_ranges0+0x150
	.uleb128 0x20
	.4byte	0x62c
	.uleb128 0x20
	.4byte	0x638
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x160
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	inited.9590
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x17d
	.byte	0x1
	.4byte	.LFB19
	.4byte	.LFE19
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x177
	.byte	0x1
	.4byte	.LFB18
	.4byte	.LFE18
	.byte	0x1
	.byte	0x51
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST45
	.4byte	0x7ec
	.uleb128 0x27
	.string	"r"
	.byte	0x1
	.byte	0xb4
	.4byte	0x99
	.4byte	.LLST46
	.uleb128 0x27
	.string	"R"
	.byte	0x1
	.byte	0xb4
	.4byte	0x99
	.4byte	.LLST47
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x1
	.byte	0xb4
	.4byte	0x8e
	.4byte	.LLST48
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0x1
	.byte	0xb5
	.4byte	0x8e
	.4byte	.LLST49
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x1
	.byte	0xb5
	.4byte	0x83
	.4byte	.LLST50
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.byte	0xb7
	.4byte	0x41
	.4byte	.LLST51
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.byte	0xb7
	.4byte	0x41
	.4byte	.LLST52
	.uleb128 0x29
	.4byte	.LASF54
	.byte	0x1
	.byte	0xb8
	.4byte	0x99
	.4byte	.LLST53
	.uleb128 0x28
	.string	"phi"
	.byte	0x1
	.byte	0xb8
	.4byte	0x99
	.4byte	.LLST54
	.uleb128 0x29
	.4byte	.LASF55
	.byte	0x1
	.byte	0xb8
	.4byte	0x99
	.4byte	.LLST55
	.uleb128 0x2a
	.4byte	.LASF56
	.byte	0x1
	.byte	0xb8
	.4byte	0x99
	.uleb128 0x11
	.string	"p0"
	.byte	0x1
	.byte	0xb9
	.4byte	0x124
	.byte	0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x11
	.string	"p1"
	.byte	0x1
	.byte	0xb9
	.4byte	0x124
	.byte	0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x11
	.string	"p2"
	.byte	0x1
	.byte	0xb9
	.4byte	0x124
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x11
	.string	"p3"
	.byte	0x1
	.byte	0xb9
	.4byte	0x124
	.byte	0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x11
	.string	"n0"
	.byte	0x1
	.byte	0xba
	.4byte	0x124
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x11
	.string	"n1"
	.byte	0x1
	.byte	0xba
	.4byte	0x124
	.byte	0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x11
	.string	"n2"
	.byte	0x1
	.byte	0xba
	.4byte	0x124
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x11
	.string	"n3"
	.byte	0x1
	.byte	0xba
	.4byte	0x124
	.byte	0x3
	.byte	0x91
	.sleb128 -220
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF57
	.byte	0x1
	.byte	0xfd
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12
	.byte	0x1
	.byte	0x51
	.4byte	0x840
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x1
	.byte	0xfb
	.4byte	0xa4
	.4byte	.LLST57
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x1
	.byte	0xfb
	.4byte	0xa4
	.4byte	.LLST58
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x1
	.byte	0xfc
	.4byte	0x8e
	.4byte	.LLST59
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0x1
	.byte	0xfc
	.4byte	0x8e
	.4byte	.LLST60
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF60
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x1
	.byte	0x51
	.4byte	0x894
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x1
	.byte	0xf3
	.4byte	0xa4
	.4byte	.LLST62
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x1
	.byte	0xf3
	.4byte	0xa4
	.4byte	.LLST63
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x1
	.byte	0xf4
	.4byte	0x8e
	.4byte	.LLST64
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0x1
	.byte	0xf4
	.4byte	0x8e
	.4byte	.LLST65
	.byte	0x0
	.uleb128 0x2b
	.4byte	.LASF81
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST66
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST67
	.4byte	0x8fe
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x6c
	.4byte	0xa4
	.4byte	.LLST68
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.byte	0x6c
	.4byte	0xa4
	.4byte	.LLST69
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.byte	0x6d
	.4byte	0x8e
	.4byte	.LLST70
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x1
	.byte	0x6d
	.4byte	0x8e
	.4byte	.LLST71
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF66
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST72
	.4byte	0x954
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x5f
	.4byte	0xa4
	.4byte	.LLST73
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.byte	0x5f
	.4byte	0xa4
	.4byte	.LLST74
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.byte	0x60
	.4byte	0x8e
	.4byte	.LLST75
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x1
	.byte	0x60
	.4byte	0x8e
	.4byte	.LLST76
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF67
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST77
	.4byte	0x99b
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x1
	.byte	0x53
	.4byte	0xa4
	.4byte	.LLST78
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.byte	0x53
	.4byte	0x8e
	.4byte	.LLST79
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x1
	.byte	0x53
	.4byte	0x8e
	.4byte	.LLST80
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF69
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST81
	.4byte	0x9e2
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x1
	.byte	0x47
	.4byte	0xa4
	.4byte	.LLST82
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.byte	0x47
	.4byte	0x8e
	.4byte	.LLST83
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x1
	.byte	0x47
	.4byte	0x8e
	.4byte	.LLST84
	.byte	0x0
	.uleb128 0xd
	.4byte	0x99
	.4byte	0x9f8
	.uleb128 0xe
	.4byte	0x5d
	.byte	0x5
	.uleb128 0xe
	.4byte	0x5d
	.byte	0x2
	.byte	0x0
	.uleb128 0xd
	.4byte	0x8e
	.4byte	0xa0e
	.uleb128 0xe
	.4byte	0x5d
	.byte	0x5
	.uleb128 0xe
	.4byte	0x5d
	.byte	0x3
	.byte	0x0
	.uleb128 0x2d
	.4byte	0x9f8
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x1
	.byte	0x39
	.4byte	0xa24
	.byte	0x5
	.byte	0x3
	.4byte	quadObj
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce
	.uleb128 0xd
	.4byte	0x99
	.4byte	0xa40
	.uleb128 0xe
	.4byte	0x5d
	.byte	0x13
	.uleb128 0xe
	.4byte	0x5d
	.byte	0x2
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x103
	.4byte	0xa2a
	.byte	0x5
	.byte	0x3
	.4byte	dodec
	.uleb128 0x26
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1c9
	.4byte	0x9e2
	.byte	0x5
	.byte	0x3
	.4byte	odata
	.uleb128 0xd
	.4byte	0x41
	.4byte	0xa7a
	.uleb128 0xe
	.4byte	0x5d
	.byte	0x7
	.uleb128 0xe
	.4byte	0x5d
	.byte	0x2
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1d3
	.4byte	0xa64
	.byte	0x5
	.byte	0x3
	.4byte	ondex
	.uleb128 0xd
	.4byte	0x99
	.4byte	0xaa2
	.uleb128 0xe
	.4byte	0x5d
	.byte	0xb
	.uleb128 0xe
	.4byte	0x5d
	.byte	0x2
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1fe
	.4byte	0xa8c
	.byte	0x5
	.byte	0x3
	.4byte	idata
	.uleb128 0xd
	.4byte	0x41
	.4byte	0xaca
	.uleb128 0xe
	.4byte	0x5d
	.byte	0x13
	.uleb128 0xe
	.4byte	0x5d
	.byte	0x2
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x20e
	.4byte	0xab4
	.byte	0x5
	.byte	0x3
	.4byte	index
	.uleb128 0xd
	.4byte	0x99
	.4byte	0xaf2
	.uleb128 0xe
	.4byte	0x5d
	.byte	0x3
	.uleb128 0xe
	.4byte	0x5d
	.byte	0x2
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x243
	.4byte	0xadc
	.byte	0x5
	.byte	0x3
	.4byte	tdata
	.uleb128 0xd
	.4byte	0x41
	.4byte	0xb1a
	.uleb128 0xe
	.4byte	0x5d
	.byte	0x3
	.uleb128 0xe
	.4byte	0x5d
	.byte	0x2
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x24b
	.4byte	0xb04
	.byte	0x5
	.byte	0x3
	.4byte	tndex
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
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x6
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x164
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xb2d
	.4byte	0x1b7
	.string	"glutSolidCube"
	.4byte	0x1de
	.string	"glutWireCube"
	.4byte	0x49a
	.string	"glutSolidTetrahedron"
	.4byte	0x4ae
	.string	"glutWireTetrahedron"
	.4byte	0x4fa
	.string	"glutSolidIcosahedron"
	.4byte	0x50e
	.string	"glutWireIcosahedron"
	.4byte	0x55a
	.string	"glutSolidOctahedron"
	.4byte	0x56e
	.string	"glutWireOctahedron"
	.4byte	0x6a2
	.string	"glutSolidDodecahedron"
	.4byte	0x6b6
	.string	"glutWireDodecahedron"
	.4byte	0x7ec
	.string	"glutSolidTorus"
	.4byte	0x840
	.string	"glutWireTorus"
	.4byte	0x8a8
	.string	"glutSolidCone"
	.4byte	0x8fe
	.string	"glutWireCone"
	.4byte	0x954
	.string	"glutSolidSphere"
	.4byte	0x99b
	.string	"glutWireSphere"
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
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	.LBB37-.Ltext0
	.4byte	.LBE37-.Ltext0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB35-.Ltext0
	.4byte	.LBE35-.Ltext0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	.LBB47-.Ltext0
	.4byte	.LBE47-.Ltext0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	.LBB45-.Ltext0
	.4byte	.LBE45-.Ltext0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF72:
	.string	"odata"
.LASF40:
	.string	"octahedron"
.LASF9:
	.string	"double"
.LASF6:
	.string	"long long unsigned int"
.LASF80:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\freespace2wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF57:
	.string	"glutSolidTorus"
.LASF43:
	.string	"pentagon"
.LASF2:
	.string	"short int"
.LASF69:
	.string	"glutWireSphere"
.LASF45:
	.string	"alpha"
.LASF32:
	.string	"drawtriangle"
.LASF42:
	.string	"glutWireOctahedron"
.LASF37:
	.string	"icosahedron"
.LASF64:
	.string	"slices"
.LASF14:
	.string	"GLfloat"
.LASF30:
	.string	"subdivide"
.LASF18:
	.string	"GLUquadricObj"
.LASF10:
	.string	"float"
.LASF78:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF71:
	.string	"dodec"
.LASF66:
	.string	"glutWireCone"
.LASF5:
	.string	"long long int"
.LASF55:
	.string	"theta1"
.LASF73:
	.string	"ondex"
.LASF16:
	.string	"long int"
.LASF70:
	.string	"quadObj"
.LASF27:
	.string	"normalize"
.LASF41:
	.string	"glutSolidOctahedron"
.LASF28:
	.string	"shadeType"
.LASF26:
	.string	"glutWireCube"
.LASF31:
	.string	"recorditem"
.LASF11:
	.string	"long double"
.LASF1:
	.string	"unsigned char"
.LASF51:
	.string	"doughnut"
.LASF68:
	.string	"radius"
.LASF0:
	.string	"signed char"
.LASF19:
	.string	"prod"
.LASF23:
	.string	"type"
.LASF63:
	.string	"height"
.LASF17:
	.string	"GLUquadric"
.LASF36:
	.string	"glutWireTetrahedron"
.LASF38:
	.string	"glutSolidIcosahedron"
.LASF7:
	.string	"long unsigned int"
.LASF12:
	.string	"GLenum"
.LASF77:
	.string	"tndex"
.LASF58:
	.string	"innerRadius"
.LASF8:
	.string	"char"
.LASF35:
	.string	"glutSolidTetrahedron"
.LASF79:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/glut/glut_shapes.c"
.LASF76:
	.string	"tdata"
.LASF47:
	.string	"dodecahedron"
.LASF53:
	.string	"rings"
.LASF60:
	.string	"glutWireTorus"
.LASF29:
	.string	"depth"
.LASF33:
	.string	"data"
.LASF67:
	.string	"glutSolidSphere"
.LASF46:
	.string	"beta"
.LASF65:
	.string	"stacks"
.LASF59:
	.string	"outerRadius"
.LASF50:
	.string	"glutWireDodecahedron"
.LASF81:
	.string	"initQuadObj"
.LASF15:
	.string	"GLdouble"
.LASF3:
	.string	"short unsigned int"
.LASF22:
	.string	"size"
.LASF21:
	.string	"drawBox"
.LASF44:
	.string	"initDodecahedron"
.LASF48:
	.string	"inited"
.LASF25:
	.string	"glutSolidCube"
.LASF54:
	.string	"theta"
.LASF56:
	.string	"phi1"
.LASF74:
	.string	"idata"
.LASF24:
	.string	"faces"
.LASF75:
	.string	"index"
.LASF4:
	.string	"unsigned int"
.LASF62:
	.string	"base"
.LASF52:
	.string	"nsides"
.LASF20:
	.string	"crossprod"
.LASF61:
	.string	"glutSolidCone"
.LASF39:
	.string	"glutWireIcosahedron"
.LASF49:
	.string	"glutSolidDodecahedron"
.LASF13:
	.string	"GLint"
.LASF34:
	.string	"tetrahedron"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
