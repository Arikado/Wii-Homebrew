	.file	"glut.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl ShowConsole
	.type	ShowConsole, @function
ShowConsole:
.LFB67:
	.file 1 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/glut.c"
	.loc 1 240 0
	.loc 1 241 0
	li 0,1
	lis 9,_console_enabled@ha
	stb 0,_console_enabled@l(9)
	.loc 1 244 0
	blr
.LFE67:
	.size	ShowConsole, .-ShowConsole
	.align 2
	.globl HideConsole
	.type	HideConsole, @function
HideConsole:
.LFB68:
	.loc 1 247 0
	.loc 1 250 0
	li 0,0
	lis 9,_console_enabled@ha
	stb 0,_console_enabled@l(9)
	.loc 1 251 0
	blr
.LFE68:
	.size	HideConsole, .-HideConsole
	.align 2
	.globl getVImode
	.type	getVImode, @function
getVImode:
.LFB69:
	.loc 1 254 0
.LVL0:
	.loc 1 255 0
	lis 11,rmode@ha
	lwz 9,rmode@l(11)
	lhz 0,14(9)
	stw 0,0(3)
	.loc 1 256 0
	lwz 9,rmode@l(11)
	lhz 0,16(9)
	stw 0,0(4)
	.loc 1 257 0
	blr
.LFE69:
	.size	getVImode, .-getVImode
	.align 2
	.globl computeFactor
	.type	computeFactor, @function
computeFactor:
.LFB72:
	.loc 1 399 0
	stwu 1,-16(1)
.LCFI0:
	.loc 1 400 0
	lis 9,rmode@ha
	lwz 9,rmode@l(9)
	lhz 11,6(9)
	lis 9,offset@ha
	lwz 0,offset@l(9)
	lis 9,0x4330
	stw 11,12(1)
	stw 9,8(1)
	slwi 0,0,1
	lis 9,.LC1@ha
	xoris 0,0,0x8000
	lfd 13,8(1)
	lfs 0,.LC1@l(9)
	lis 9,.LC3@ha
	stw 0,12(1)
	fsub 13,13,0
	lfs 0,.LC3@l(9)
	lfd 1,8(1)
	.loc 1 401 0
	addi 1,1,16
	.loc 1 400 0
	fsub 1,1,0
	frsp 13,13
	frsp 1,1
	fsubs 1,13,1
	.loc 1 401 0
	fdivs 1,1,13
	blr
.LFE72:
	.size	computeFactor, .-computeFactor
	.align 2
	.globl glutGet
	.type	glutGet, @function
glutGet:
.LFB78:
	.loc 1 452 0
.LVL1:
	.loc 1 454 0
	cmpwi 7,3,201
	beq- 7,.L12
	cmpwi 7,3,504
	li 0,18
.LVL2:
	beq- 7,.L14
	cmpwi 7,3,200
	li 0,0
	bne+ 7,.L14
	.loc 1 456 0
	lis 9,rmode@ha
	lwz 9,rmode@l(9)
	lhz 0,4(9)
	b .L14
.LVL3:
.L12:
	.loc 1 457 0
	lis 9,rmode@ha
	lwz 9,rmode@l(9)
	lhz 0,6(9)
.LVL4:
.L14:
	.loc 1 461 0
	mr 3,0
.LVL5:
	blr
.LFE78:
	.size	glutGet, .-glutGet
	.align 2
	.globl glutDisplayFunc
	.type	glutDisplayFunc, @function
glutDisplayFunc:
.LFB79:
	.loc 1 465 0
.LVL6:
	.loc 1 466 0
	lis 9,displayfunc@ha
	stw 3,displayfunc@l(9)
	.loc 1 467 0
	blr
.LFE79:
	.size	glutDisplayFunc, .-glutDisplayFunc
	.align 2
	.globl glutIdleFunc
	.type	glutIdleFunc, @function
glutIdleFunc:
.LFB80:
	.loc 1 471 0
.LVL7:
	.loc 1 472 0
	lis 9,idlefunc@ha
	stw 3,idlefunc@l(9)
	.loc 1 473 0
	blr
.LFE80:
	.size	glutIdleFunc, .-glutIdleFunc
	.align 2
	.globl getFPS
	.type	getFPS, @function
getFPS:
.LFB82:
	.loc 1 499 0
	.loc 1 501 0
	lis 9,FPS@ha
	lbz 3,FPS@l(9)
	blr
.LFE82:
	.size	getFPS, .-getFPS
	.align 2
	.globl getFrontFramebuffer
	.type	getFrontFramebuffer, @function
getFrontFramebuffer:
.LFB85:
	.loc 1 553 0
	.loc 1 553 0
	lis 9,fb@ha
	lwz 0,fb@l(9)
	.loc 1 555 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	.loc 1 553 0
	slwi 0,0,2
	.loc 1 555 0
	lwzx 3,9,0
	blr
.LFE85:
	.size	getFrontFramebuffer, .-getFrontFramebuffer
	.align 2
	.globl getBackFramebuffer
	.type	getBackFramebuffer, @function
getBackFramebuffer:
.LFB86:
	.loc 1 558 0
	.loc 1 558 0
	lis 9,fb@ha
	lwz 0,fb@l(9)
	.loc 1 560 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	.loc 1 558 0
	xori 0,0,1
	slwi 0,0,2
	.loc 1 560 0
	lwzx 3,9,0
	blr
.LFE86:
	.size	getBackFramebuffer, .-getBackFramebuffer
	.align 2
	.globl power_off
	.type	power_off, @function
power_off:
.LFB87:
	.loc 1 563 0
.LVL8:
	.loc 1 564 0
	li 0,1
	lis 9,kill@ha
	stb 0,kill@l(9)
	.loc 1 565 0
	blr
.LFE87:
	.size	power_off, .-power_off
	.align 2
	.globl glutMainLoop
	.type	glutMainLoop, @function
glutMainLoop:
.LFB84:
	.loc 1 515 0
	stwu 1,-48(1)
.LCFI1:
	mflr 0
.LCFI2:
	stmw 30,40(1)
.LCFI3:
	.loc 1 520 0
	lis 31,watchdog@ha
	la 3,watchdog@l(31)
	.loc 1 515 0
	stw 0,52(1)
.LCFI4:
	.loc 1 520 0
	bl SYS_CreateAlarm
	.loc 1 522 0
	lis 30,kill@ha
	.loc 1 530 0
	mr. 11,3
	.loc 1 522 0
	li 0,0
	.loc 1 524 0
	li 9,0
	.loc 1 522 0
	stb 0,kill@l(30)
	.loc 1 527 0
	li 0,1
	.loc 1 528 0
	stw 9,24(1)
	.loc 1 527 0
	stw 0,20(1)
	.loc 1 524 0
	stw 9,12(1)
	.loc 1 525 0
	stw 9,16(1)
	.loc 1 530 0
	bne+ 0,.L30
	.loc 1 534 0
	lis 6,timercallback@ha
	lwz 3,watchdog@l(31)
	.loc 1 532 0
	lis 9,count@ha
	.loc 1 534 0
	la 6,timercallback@l(6)
	addi 4,1,12
	addi 5,1,20
	.loc 1 532 0
	stb 11,count@l(9)
	.loc 1 534 0
	bl SYS_SetPeriodicAlarm
.L30:
	.loc 1 539 0
	lis 4,glutThread@ha
	addi 3,1,8
	la 4,glutThread@l(4)
	li 5,0
	li 6,0
	li 7,0
	li 8,67
	.loc 1 543 0
	addi 31,1,20
	.loc 1 539 0
	bl LWP_CreateThread
.L38:
	.loc 1 543 0
	mr 3,31
	bl nanosleep
	.loc 1 544 0
	lbz 0,kill@l(30)
	cmpwi 7,0,0
	beq- 7,.L38
	.loc 1 546 0
	bl do_reset
	b .L38
.LFE84:
	.size	glutMainLoop, .-glutMainLoop
	.align 2
	.globl glutThread
	.type	glutThread, @function
glutThread:
.LFB83:
	.loc 1 503 0
.LVL9:
	mflr 0
.LCFI5:
	stwu 1,-24(1)
.LCFI6:
	.loc 1 505 0
	lis 9,displayfunc@ha
	.loc 1 503 0
	stmw 29,12(1)
.LCFI7:
	stw 0,28(1)
.LCFI8:
	.loc 1 505 0
	lwz 0,displayfunc@l(9)
	cmpwi 7,0,0
	beq- 7,.L40
	mtctr 0
	bctrl
.LVL10:
.L40:
	.loc 1 508 0
	lis 29,count@ha
	li 30,0
	.loc 1 509 0
	lis 31,idlefunc@ha
.L45:
	lwz 0,idlefunc@l(31)
	.loc 1 508 0
	stb 30,count@l(29)
	.loc 1 509 0
	cmpwi 7,0,0
	beq- 7,.L42
	mtctr 0
	bctrl
.LVL11:
.L42:
	.loc 1 510 0
	bl LWP_YieldThread
.LVL12:
	b .L45
.LFE83:
	.size	glutThread, .-glutThread
	.align 2
	.globl timercallback
	.type	timercallback, @function
timercallback:
.LFB81:
	.loc 1 481 0
.LVL13:
	mflr 0
.LCFI9:
	stwu 1,-16(1)
.LCFI10:
	stw 31,12(1)
.LCFI11:
	.loc 1 482 0
	lis 31,count@ha
	.loc 1 481 0
	stw 0,20(1)
.LCFI12:
	.loc 1 482 0
	lbz 9,count@l(31)
	addi 9,9,1
	rlwinm 9,9,0,0xff
	stb 9,count@l(31)
	.loc 1 483 0
	lbz 0,count@l(31)
	cmplwi 7,0,2
	ble+ 7,.L47
	.loc 1 485 0
	lbz 4,count@l(31)
.LVL14:
	lis 3,.LC6@ha
.LVL15:
	la 3,.LC6@l(3)
	crxor 6,6,6
	bl printf
	.loc 1 486 0
	bl GX_AbortFrame
.LVL16:
.L47:
	.loc 1 489 0
	lbz 0,count@l(31)
	cmplwi 7,0,10
	ble- 7,.L49
	.loc 1 491 0
	li 0,1
	lis 9,kill@ha
	stb 0,kill@l(9)
.L49:
	.loc 1 494 0
	lis 11,incFPS@ha
	lis 9,FPS@ha
	lbz 0,incFPS@l(11)
	stb 0,FPS@l(9)
	.loc 1 495 0
	li 0,0
	stb 0,incFPS@l(11)
	.loc 1 496 0
	lwz 0,20(1)
	lwz 31,12(1)
	addi 1,1,16
	mtlr 0
	blr
.LFE81:
	.size	timercallback, .-timercallback
	.align 2
	.globl glutSwapBuffers
	.type	glutSwapBuffers, @function
glutSwapBuffers:
.LFB76:
	.loc 1 425 0
	stwu 1,-24(1)
.LCFI13:
	mflr 0
.LCFI14:
	stmw 28,8(1)
.LCFI15:
	.loc 1 428 0
	lis 28,fb@ha
	.loc 1 425 0
	stw 0,28(1)
.LCFI16:
	.loc 1 426 0
	bl glFlush
	.loc 1 428 0
	lwz 9,fb@l(28)
	.loc 1 430 0
	lis 29,.LANCHOR0@ha
	la 29,.LANCHOR0@l(29)
	li 4,0
	.loc 1 428 0
	xori 9,9,1
	.loc 1 430 0
	slwi 0,9,2
	.loc 1 428 0
	stw 9,fb@l(28)
	.loc 1 430 0
	lwzx 3,29,0
	bl GX_CopyDisp
	.loc 1 432 0
	bl GX_DrawDone
	.loc 1 433 0
	lis 11,incFPS@ha
	.loc 1 441 0
	lwz 0,fb@l(28)
	.loc 1 433 0
	lbz 9,incFPS@l(11)
	.loc 1 441 0
	slwi 0,0,2
	lwzx 3,29,0
	.loc 1 433 0
	addi 9,9,1
	rlwinm 9,9,0,0xff
	stb 9,incFPS@l(11)
	.loc 1 441 0
	bl VIDEO_SetNextFramebuffer
	.loc 1 443 0
	bl VIDEO_Flush
	.loc 1 445 0
	bl VIDEO_WaitVSync
	.loc 1 446 0
	lwz 0,28(1)
	lmw 28,8(1)
	addi 1,1,24
	mtlr 0
	blr
.LFE76:
	.size	glutSwapBuffers, .-glutSwapBuffers
	.align 2
	.globl GX_SetModScissor
	.type	GX_SetModScissor, @function
GX_SetModScissor:
.LFB74:
	.loc 1 411 0
.LVL17:
	mflr 0
.LCFI17:
	stwu 1,-48(1)
.LCFI18:
	stmw 28,32(1)
.LCFI19:
	mr 29,4
	stw 0,52(1)
.LCFI20:
	.loc 1 411 0
	mr 31,6
	mr 30,3
	mr 28,5
	.loc 1 412 0
	bl computeFactor
.LVL18:
	.loc 1 414 0
	lis 9,rmode@ha
	lwz 9,rmode@l(9)
	add 29,31,29
.LVL19:
	.loc 1 412 0
	fmr 11,1
.LVL20:
	.loc 1 414 0
	lhz 0,6(9)
	lis 9,offset@ha
	lwz 11,offset@l(9)
	lis 9,0x4330
	stw 9,16(1)
	stw 29,20(1)
	subf 0,11,0
	stw 9,8(1)
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	xoris 0,0,0x8000
	lfd 13,16(1)
	lis 9,.LC3@ha
	stw 0,12(1)
	fsub 13,13,0
	lfs 12,.LC3@l(9)
	lfd 0,8(1)
	lis 9,.LC8@ha
	frsp 13,13
	fsub 0,0,12
	fmuls 13,1,13
	frsp 0,0
	fsubs 0,0,13
	lfs 13,.LC8@l(9)
	fcmpu 7,0,13
	cror 30,29,30
	beq- 7,.L55
.LVL21:
	fctiwz 0,0
	addi 9,1,24
	stfiwx 0,0,9
	lwz 4,24(1)
	b .L56
.L55:
	fsub 0,0,13
	addi 9,1,28
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 4,28(1)
	addis 4,4,0x8000
.L56:
	lis 0,0x4330
	stw 31,12(1)
	stw 0,8(1)
	lis 9,.LC1@ha
	lfs 13,.LC1@l(9)
	lis 9,.LC8@ha
	lfd 0,8(1)
	lfs 1,.LC8@l(9)
.LVL22:
	fsub 0,0,13
	frsp 0,0
	fmuls 0,11,0
	fcmpu 7,0,1
	cror 30,29,30
	beq- 7,.L57
	fctiwz 0,0
	addi 9,1,24
	stfiwx 0,0,9
	lwz 6,24(1)
	b .L58
.L57:
	fsub 0,0,1
	addi 9,1,28
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 6,28(1)
	addis 6,6,0x8000
.L58:
	mr 3,30
	mr 5,28
	bl GX_SetScissor
.LVL23:
	.loc 1 415 0
	lwz 0,52(1)
	lmw 28,32(1)
.LVL24:
	addi 1,1,48
	mtlr 0
	blr
.LFE74:
	.size	GX_SetModScissor, .-GX_SetModScissor
	.align 2
	.globl GX_SetMaxScissor
	.type	GX_SetMaxScissor, @function
GX_SetMaxScissor:
.LFB75:
	.loc 1 418 0
	.loc 1 419 0
	lis 9,rmode@ha
	li 3,0
	lwz 9,rmode@l(9)
	li 4,0
	lhz 6,6(9)
	lhz 5,4(9)
	b GX_SetModScissor
.LFE75:
	.size	GX_SetMaxScissor, .-GX_SetMaxScissor
	.align 2
	.globl GX_SetModViewport
	.type	GX_SetModViewport, @function
GX_SetModViewport:
.LFB73:
	.loc 1 404 0
.LVL25:
	mflr 0
.LCFI21:
	stwu 1,-64(1)
.LCFI22:
	stfd 26,16(1)
.LCFI23:
	fmr 26,6
	stfd 27,24(1)
.LCFI24:
	fmr 27,5
	stfd 28,32(1)
.LCFI25:
	fmr 28,3
	stfd 29,40(1)
.LCFI26:
	fmr 29,1
	stfd 30,48(1)
.LCFI27:
	fmr 30,4
	stfd 31,56(1)
.LCFI28:
	fmr 31,2
	stw 0,68(1)
.LCFI29:
	.loc 1 405 0
	bl computeFactor
.LVL26:
	.loc 1 407 0
	lis 9,rmode@ha
	lwz 9,rmode@l(9)
	fadds 31,31,30
.LVL27:
	fmuls 4,30,1
.LVL28:
	lhz 0,6(9)
	lis 9,offset@ha
	lwz 9,offset@l(9)
	fmuls 13,1,31
	fmr 3,28
	subf 0,9,0
	lis 9,.LC3@ha
	xoris 0,0,0x8000
	lfs 0,.LC3@l(9)
	stw 0,12(1)
	lis 0,0x4330
	stw 0,8(1)
	fmr 1,29
.LVL29:
	fmr 5,27
	lfd 2,8(1)
	fmr 6,26
	fsub 2,2,0
	frsp 2,2
	fsubs 2,2,13
	bl GX_SetViewport
	.loc 1 408 0
	lwz 0,68(1)
	lfd 26,16(1)
.LVL30:
	lfd 27,24(1)
.LVL31:
	mtlr 0
	lfd 28,32(1)
.LVL32:
	lfd 29,40(1)
.LVL33:
	lfd 30,48(1)
.LVL34:
	lfd 31,56(1)
	addi 1,1,64
	blr
.LFE73:
	.size	GX_SetModViewport, .-GX_SetModViewport
	.align 2
	.globl glutInitWindowSize
	.type	glutInitWindowSize, @function
glutInitWindowSize:
.LFB77:
	.loc 1 448 0
.LVL35:
	stwu 1,-16(1)
.LCFI30:
	.loc 1 449 0
	xoris 3,3,0x8000
.LVL36:
	lis 0,0x4330
	xoris 4,4,0x8000
.LVL37:
	stw 3,12(1)
	lis 9,.LC3@ha
	stw 0,8(1)
	lfs 0,.LC3@l(9)
	lis 9,.LC14@ha
	lfd 3,8(1)
	stw 4,12(1)
	fsub 3,3,0
	lfs 1,.LC14@l(9)
	lfd 4,8(1)
	lis 9,.LC12@ha
	fmr 2,1
	lfs 6,.LC12@l(9)
	fsub 4,4,0
	.loc 1 450 0
	addi 1,1,16
	.loc 1 449 0
	frsp 3,3
	fmr 5,1
	frsp 4,4
	b GX_SetModViewport
.LFE77:
	.size	glutInitWindowSize, .-glutInitWindowSize
	.align 2
	.globl glutCreateWindow
	.type	glutCreateWindow, @function
glutCreateWindow:
.LFB71:
	.loc 1 387 0
.LVL38:
	mflr 0
.LCFI31:
	stwu 1,-32(1)
.LCFI32:
	.loc 1 388 0
	lis 9,rmode@ha
	lis 11,0x4330
	.loc 1 387 0
	stfd 31,24(1)
.LCFI33:
	stw 0,36(1)
.LCFI34:
	.loc 1 388 0
	lwz 9,rmode@l(9)
	lhz 0,4(9)
	stw 11,16(1)
	stw 0,20(1)
	lhz 0,6(9)
	lis 9,.LC1@ha
	lfd 3,16(1)
	stw 0,20(1)
	lfs 0,.LC1@l(9)
	lis 9,.LC14@ha
	lfd 4,16(1)
	lfs 1,.LC14@l(9)
	fsub 3,3,0
	fsub 4,4,0
	lis 9,.LC12@ha
	lfs 31,.LC12@l(9)
	fmr 2,1
	fmr 5,1
	fmr 6,31
	frsp 3,3
	frsp 4,4
	bl GX_SetModViewport
.LVL39:
	.loc 1 390 0
	li 3,5888
	bl glMatrixMode
	.loc 1 391 0
	bl glLoadIdentity
	.loc 1 392 0
	lis 9,.LC15@ha
	lfd 0,.LC15@l(9)
	fmr 8,31
	lis 9,.LC17@ha
	fmr 1,0
	lfs 6,.LC17@l(9)
	fmr 2,0
	stfd 0,8(1)
	fmr 3,0
	fmr 4,0
	fmr 5,0
	fmr 7,0
	bl gluLookAt
	.loc 1 394 0
	lwz 0,36(1)
	li 3,0
	lfd 31,24(1)
	mtlr 0
	addi 1,1,32
	blr
.LFE71:
	.size	glutCreateWindow, .-glutCreateWindow
	.align 2
	.globl glutInit
	.type	glutInit, @function
glutInit:
.LFB66:
	.loc 1 65 0
.LVL40:
	mflr 0
.LCFI35:
	stwu 1,-256(1)
.LCFI36:
	.loc 1 75 0
	lis 9,.LC21@ha
	lis 11,__glutProgramName@ha
	la 9,.LC21@l(9)
	.loc 1 65 0
	stmw 20,200(1)
.LCFI37:
	stw 0,260(1)
.LCFI38:
	.loc 1 89 0
	addi 24,1,8
	.loc 1 65 0
	stfd 31,248(1)
.LCFI39:
	.loc 1 93 0
	addi 25,1,32
	.loc 1 75 0
	stw 9,__glutProgramName@l(11)
	.loc 1 78 0
	bl VIDEO_Init
.LVL41:
	.loc 1 80 0
	li 3,0
	.loc 1 94 0
	addi 26,1,48
	.loc 1 80 0
	bl VIDEO_GetPreferredMode
	.loc 1 83 0
	lis 9,.LC12@ha
	lfs 31,.LC12@l(9)
	.loc 1 80 0
	lis 9,rmode@ha
	stw 3,rmode@l(9)
	.loc 1 95 0
	addi 28,1,64
	.loc 1 83 0
	fmr 3,31
	.loc 1 99 0
	addi 29,1,20
	.loc 1 83 0
	fmr 1,31
	fmr 2,31
	bl glColor3f
	.loc 1 84 0
	lis 9,.LC14@ha
	lfs 1,.LC14@l(9)
	fmr 2,1
	bl glTexCoord2f
	.loc 1 85 0
	lis 9,.LC14@ha
	lfs 1,.LC14@l(9)
	fmr 3,31
	fmr 2,1
	bl glNormal3f
	.loc 1 89 0
	lis 9,.LANCHOR1@ha
	la 27,.LANCHOR1@l(9)
	.loc 1 85 0
	lis 9,lights+68@ha
	la 3,lights+68@l(9)
	.loc 1 97 0
	lis 9,.LC22@ha
	lfs 0,.LC22@l(9)
	.loc 1 88 0
	li 9,8
	mtctr 9
	.loc 1 90 0
	li 0,0
	.loc 1 93 0
	addi 20,27,12
	.loc 1 94 0
	addi 21,27,28
	.loc 1 95 0
	addi 22,27,44
	.loc 1 99 0
	addi 23,27,60
	.loc 1 65 0
	addi 31,3,-68
.L69:
	.loc 1 93 0
	lswi 5,20,16
	stswi 5,25,16
	addi 9,3,28
	.loc 1 89 0
	lswi 5,27,12
	stswi 5,24,12
	.loc 1 94 0
	addi 11,3,44
	lswi 5,21,16
	stswi 5,26,16
	.loc 1 95 0
	addi 10,3,60
	lswi 5,22,16
	stswi 5,28,16
	.loc 1 99 0
	addi 4,3,16
	lswi 5,23,12
	stswi 5,29,12
	.loc 1 92 0
	li 12,0
	.loc 1 93 0
	lswi 5,25,16
	stswi 5,9,16
	.loc 1 94 0
	lswi 5,26,16
	stswi 5,11,16
	.loc 1 95 0
	lswi 5,28,16
	stswi 5,10,16
	.loc 1 99 0
	lswi 5,29,12
	stswi 5,4,12
	.loc 1 89 0
	lswi 5,24,12
	stswi 5,3,12
	.loc 1 90 0
	stw 0,12(3)
	.loc 1 92 0
	stb 12,-68(3)
	.loc 1 97 0
	stfs 0,80(3)
	.loc 1 98 0
	stw 0,76(3)
	.loc 1 101 0
	stfs 31,84(3)
	.loc 1 102 0
	stw 0,88(3)
	.loc 1 103 0
	stw 0,92(3)
	addi 3,3,164
	.loc 1 88 0
	bdnz .L69
	.loc 1 106 0
	addi 29,27,72
	addi 22,1,80
	lswi 5,29,16
	stswi 5,22,16
	.loc 1 114 0
	addi 9,27,152
	addi 26,1,160
	.loc 1 115 0
	addi 28,27,168
	.loc 1 114 0
	lswi 5,9,16
	stswi 5,26,16
	.loc 1 107 0
	addi 3,27,88
	.loc 1 109 0
	addi 4,27,104
	.loc 1 112 0
	addi 10,27,120
	.loc 1 113 0
	addi 11,27,136
	.loc 1 107 0
	addi 23,1,96
	.loc 1 109 0
	addi 21,1,112
	.loc 1 112 0
	addi 20,1,128
	.loc 1 113 0
	addi 24,1,144
	.loc 1 115 0
	addi 25,1,176
	.loc 1 106 0
	addi 9,31,112
	.loc 1 109 0
	lswi 5,4,16
	stswi 5,21,16
	.loc 1 112 0
	lswi 5,10,16
	stswi 5,20,16
	.loc 1 118 0
	li 0,1
	.loc 1 113 0
	lswi 5,11,16
	stswi 5,24,16
	.loc 1 112 0
	lis 11,curmat@ha
	.loc 1 115 0
	lswi 5,28,16
	stswi 5,25,16
	.loc 1 107 0
	addi 28,31,128
	lswi 5,3,16
	stswi 5,23,16
	.loc 1 112 0
	la 11,curmat@l(11)
	.loc 1 106 0
	lswi 5,22,16
	stswi 5,9,16
	.loc 1 109 0
	lis 9,globAmbient@ha
	la 9,globAmbient@l(9)
	.loc 1 115 0
	addi 27,11,48
	.loc 1 107 0
	lswi 5,23,16
	stswi 5,28,16
	.loc 1 114 0
	addi 29,11,32
	.loc 1 113 0
	addi 10,11,16
	.loc 1 124 0
	lis 3,model_stack@ha
	.loc 1 109 0
	lswi 5,21,16
	stswi 5,9,16
	.loc 1 118 0
	lis 9,blend_src@ha
	stb 0,blend_src@l(9)
	.loc 1 120 0
	lis 9,blend_op@ha
	stb 12,blend_op@l(9)
	.loc 1 122 0
	li 0,2
	lis 9,cull_mode@ha
	.loc 1 113 0
	lswi 5,24,16
	stswi 5,10,16
	.loc 1 122 0
	stb 0,cull_mode@l(9)
	.loc 1 117 0
	lis 9,blend_type@ha
	.loc 1 112 0
	lswi 5,20,16
	stswi 5,11,16
	.loc 1 124 0
	li 4,32
	.loc 1 114 0
	lswi 5,26,16
	stswi 5,29,16
	.loc 1 124 0
	la 3,model_stack@l(3)
	.loc 1 115 0
	lswi 5,25,16
	stswi 5,27,16
	.loc 1 130 0
	li 29,0
	.loc 1 117 0
	stb 12,blend_type@l(9)
	.loc 1 119 0
	lis 9,blend_dst@ha
	stb 12,blend_dst@l(9)
	.loc 1 124 0
	bl InitStackMtx
	.loc 1 125 0
	li 3,5888
	.loc 1 132 0
	li 27,0
	.loc 1 125 0
	bl glMatrixMode
	.loc 1 130 0
	ori 29,29,33984
	.loc 1 126 0
	bl glLoadIdentity
	.loc 1 128 0
	lis 3,projection_stack@ha
	li 4,2
	la 3,projection_stack@l(3)
	bl InitStackPrjMtx
	.loc 1 129 0
	li 3,5889
	bl glMatrixMode
	.loc 1 132 0
	ori 27,27,33992
	.loc 1 130 0
	bl glLoadIdentity
	lis 9,texture_stack@ha
	la 28,texture_stack@l(9)
.L71:
	.loc 1 134 0
	li 4,2
	mr 3,28
	bl InitStackMtx
	.loc 1 135 0
	li 3,5890
	bl glMatrixMode
	.loc 1 136 0
	mr 3,29
	.loc 1 137 0
	addi 29,29,1
	.loc 1 136 0
	bl glActiveTextureARB
	.loc 1 137 0
	bl glLoadIdentity
	.loc 1 132 0
	cmpw 7,29,27
	.loc 1 137 0
	addi 28,28,16
	.loc 1 132 0
	bne+ 7,.L71
	.loc 1 140 0
	li 3,0
	ori 3,3,33984
	bl glActiveTextureARB
	.loc 1 148 0
	lis 9,vert@ha
	.loc 1 142 0
	li 0,0
	.loc 1 148 0
	la 11,vert@l(9)
	.loc 1 142 0
	lis 8,norm@ha
	.loc 1 148 0
	stb 0,vert@l(9)
	.loc 1 143 0
	lis 9,_normalelements@ha
	.loc 1 142 0
	la 10,norm@l(8)
	.loc 1 143 0
	la 9,_normalelements@l(9)
	.loc 1 144 0
	li 6,12
	.loc 1 143 0
	stw 9,4(10)
	.loc 1 149 0
	lis 9,_vertexelements@ha
	.loc 1 145 0
	li 5,5126
	.loc 1 146 0
	li 7,3
	.loc 1 149 0
	la 9,_vertexelements@l(9)
	.loc 1 142 0
	stb 0,norm@l(8)
	.loc 1 154 0
	li 0,8
	.loc 1 149 0
	stw 9,4(11)
	.loc 1 152 0
	stw 5,16(11)
	lis 9,tex+4@ha
	.loc 1 146 0
	stw 7,12(10)
	.loc 1 154 0
	mtctr 0
	.loc 1 150 0
	stb 6,8(11)
	.loc 1 152 0
	la 9,tex+4@l(9)
	.loc 1 151 0
	stw 7,12(11)
	.loc 1 144 0
	stb 6,8(10)
	.loc 1 145 0
	stw 5,16(10)
.L73:
	.loc 1 157 0
	li 0,8
	.loc 1 156 0
	li 27,0
	.loc 1 157 0
	stb 0,4(9)
	.loc 1 159 0
	li 11,5126
	.loc 1 158 0
	li 0,2
	.loc 1 156 0
	stw 27,0(9)
	.loc 1 158 0
	stw 0,8(9)
	.loc 1 159 0
	stw 11,12(9)
	.loc 1 160 0
	stb 27,-4(9)
	addi 9,9,20
	.loc 1 154 0
	bdnz .L73
	.loc 1 166 0
	lis 7,color@ha
	.loc 1 172 0
	lis 9,model_stack@ha
	.loc 1 166 0
	la 10,color@l(7)
	.loc 1 172 0
	la 9,model_stack@l(9)
	.loc 1 170 0
	stw 11,16(10)
	.loc 1 172 0
	lis 11,curmtx@ha
	stw 9,curmtx@l(11)
	.loc 1 173 0
	li 0,5888
	lis 9,cur_mode@ha
	.loc 1 187 0
	li 6,1
	.loc 1 173 0
	stw 0,cur_mode@l(9)
	.loc 1 184 0
	li 0,2305
	lis 9,gxwinding@ha
	.loc 1 177 0
	li 29,0
	.loc 1 184 0
	stw 0,gxwinding@l(9)
	.loc 1 188 0
	lis 9,depthupdate@ha
	stb 6,depthupdate@l(9)
	.loc 1 167 0
	lis 9,_colorelements@ha
	la 9,_colorelements@l(9)
	.loc 1 168 0
	li 0,16
	.loc 1 167 0
	stw 9,4(10)
	.loc 1 174 0
	lis 9,cur_tex@ha
	stw 27,cur_tex@l(9)
	.loc 1 175 0
	lis 9,cur_tex_client@ha
	stw 27,cur_tex_client@l(9)
	.loc 1 177 0
	lis 9,curmat+64@ha
	stw 29,curmat+64@l(9)
	.loc 1 180 0
	lis 9,lighting@ha
	.loc 1 190 0
	lis 5,_clearcolor@ha
	.loc 1 168 0
	stb 0,8(10)
	.loc 1 180 0
	stb 27,lighting@l(9)
	.loc 1 169 0
	li 0,4
	.loc 1 183 0
	lis 9,gxcullfaceanabled@ha
	.loc 1 190 0
	la 8,_clearcolor@l(5)
	.loc 1 169 0
	stw 0,12(10)
	.loc 1 191 0
	lis 28,.LC12@ha
	.loc 1 190 0
	li 0,-1
	.loc 1 183 0
	stb 27,gxcullfaceanabled@l(9)
	.loc 1 186 0
	lis 9,depthtestenabled@ha
	.loc 1 190 0
	stb 0,3(8)
	stb 27,1(8)
	stb 27,2(8)
	.loc 1 191 0
	lfs 31,.LC12@l(28)
	.loc 1 186 0
	stb 27,depthtestenabled@l(9)
	.loc 1 187 0
	lis 9,depthfunction@ha
	stw 6,depthfunction@l(9)
	.loc 1 191 0
	lis 9,_cleardepth@ha
	stfs 31,_cleardepth@l(9)
	.loc 1 166 0
	stb 27,color@l(7)
	.loc 1 190 0
	stb 27,_clearcolor@l(5)
	.loc 1 193 0
	bl initTextures
	.loc 1 194 0
	bl initCalllist
	.loc 1 195 0
	bl initTextureSlots
	.loc 1 199 0
	lis 9,Trans+4@ha
	.loc 1 203 0
	li 0,5
	.loc 1 199 0
	la 11,Trans+4@l(9)
	.loc 1 203 0
	mtctr 0
	.loc 1 199 0
	lis 9,scissor_test@ha
	stb 27,scissor_test@l(9)
	.loc 1 197 0
	lis 9,cur_state@ha
	stw 27,cur_state@l(9)
	b .L75
.L76:
	.loc 1 203 0
	stw 29,-8(11)
	stfs 31,-12(11)
.L75:
	addi 11,11,8
	bdnz .L76
	.loc 1 209 0
	li 0,1029
	lis 9,read_mode@ha
	stw 0,read_mode@l(9)
	.loc 1 212 0
	li 0,5634
	lis 9,copy_material@ha
	.loc 1 206 0
	li 7,0
	.loc 1 212 0
	stw 0,copy_material@l(9)
	.loc 1 215 0
	li 0,4
	lis 9,fog_mode@ha
	.loc 1 207 0
	lfs 13,.LC12@l(28)
	.loc 1 215 0
	stb 0,fog_mode@l(9)
	.loc 1 216 0
	lis 9,fog_startz@ha
	stw 7,fog_startz@l(9)
	.loc 1 218 0
	lis 9,.LC23@ha
	lfs 0,.LC23@l(9)
	lis 9,fog_density@ha
	.loc 1 219 0
	lis 8,fog_color@ha
	.loc 1 211 0
	li 11,0
	.loc 1 218 0
	stfs 0,fog_density@l(9)
	.loc 1 221 0
	lis 9,line_width@ha
	stfs 13,line_width@l(9)
	.loc 1 206 0
	lis 9,normNear@ha
	stw 7,normNear@l(9)
	.loc 1 207 0
	lis 9,normFar@ha
	.loc 1 219 0
	li 29,1
	la 10,fog_color@l(8)
	.loc 1 207 0
	stfs 13,normFar@l(9)
	.loc 1 211 0
	lis 9,copy_mat_enabled@ha
	stb 11,copy_mat_enabled@l(9)
	.loc 1 214 0
	lis 9,fog_enable@ha
	.loc 1 219 0
	stb 11,1(10)
	stb 29,3(10)
	stb 11,2(10)
	.loc 1 214 0
	stb 11,fog_enable@l(9)
	.loc 1 217 0
	lis 9,fog_endz@ha
	.loc 1 219 0
	stb 11,fog_color@l(8)
	.loc 1 217 0
	stfs 13,fog_endz@l(9)
	.loc 1 223 0
	bl _glInitStacks
	.loc 1 227 0
	lis 11,color_write_mask@ha
	la 9,color_write_mask@l(11)
	stb 29,color_write_mask@l(11)
	stb 29,3(9)
	stb 29,1(9)
	stb 29,2(9)
	.loc 1 233 0
	lwz 0,260(1)
	lmw 20,200(1)
	lfd 31,248(1)
	mtlr 0
	addi 1,1,256
	blr
.LFE66:
	.size	glutInit, .-glutInit
	.align 2
	.globl glutInitDisplayMode
	.type	glutInitDisplayMode, @function
glutInitDisplayMode:
.LFB70:
	.loc 1 259 0
.LVL42:
	mflr 0
.LCFI40:
	stwu 1,-48(1)
.LCFI41:
	stmw 27,28(1)
.LCFI42:
	.loc 1 261 0
	lis 28,rmode@ha
	.loc 1 259 0
	stw 0,52(1)
.LCFI43:
	.loc 1 261 0
	lis 29,.LANCHOR0@ha
	li 31,0
.LVL43:
	lwz 3,rmode@l(28)
.LVL44:
	bl SYS_AllocateFramebuffer
	addis 0,3,0x4000
	.loc 1 262 0
	lwz 3,rmode@l(28)
	.loc 1 261 0
	stw 0,.LANCHOR0@l(29)
	.loc 1 262 0
	bl SYS_AllocateFramebuffer
	.loc 1 264 0
	lwz 4,.LANCHOR0@l(29)
	.loc 1 262 0
	addis 0,3,0x4000
	.loc 1 261 0
	la 29,.LANCHOR0@l(29)
	.loc 1 262 0
	stw 0,4(29)
	.loc 1 264 0
	li 5,0
	lwz 3,rmode@l(28)
	bl VIDEO_ClearFrameBuffer
	.loc 1 265 0
	lwz 4,4(29)
	lwz 3,rmode@l(28)
	li 5,0
	bl VIDEO_ClearFrameBuffer
	.loc 1 267 0
	lwz 3,rmode@l(28)
	bl VIDEO_Configure
	.loc 1 268 0
	lis 9,fb@ha
	lwz 0,fb@l(9)
	slwi 0,0,2
	lwzx 3,29,0
	bl VIDEO_SetNextFramebuffer
	.loc 1 269 0
	li 3,0
	bl VIDEO_SetBlack
	.loc 1 270 0
	bl VIDEO_Flush
	.loc 1 271 0
	bl VIDEO_WaitVSync
	.loc 1 272 0
	lwz 9,rmode@l(28)
	lwz 0,0(9)
	andi. 9,0,1
	beq+ 0,.L86
	bl VIDEO_WaitVSync
.L86:
	.loc 1 277 0
	lwz 3,rmode@l(28)
	.loc 1 280 0
	li 4,30
	li 5,30
	li 7,300
	lhz 6,4(3)
	addi 6,6,-60
	bl CON_InitEx
	.loc 1 282 0
	lis 11,_console_enabled@ha
	lbz 0,_console_enabled@l(11)
	.loc 1 280 0
	cntlzw 3,3
	srwi 3,3,5
	lis 9,_console_inited@ha
	.loc 1 282 0
	cmpwi 7,0,0
	.loc 1 280 0
	stb 3,_console_inited@l(9)
	.loc 1 282 0
	beq- 7,.L88
.LBB4:
.LBB5:
	.loc 1 241 0
	li 0,1
	stb 0,_console_enabled@l(11)
.L88:
.LBE5:
.LBE4:
	.loc 1 294 0
	lis 4,0x4
	li 3,32
	bl memalign
	.loc 1 295 0
	lis 5,0x4
	.loc 1 294 0
	mr 29,3
.LVL45:
	.loc 1 295 0
	li 4,0
	bl memset
	.loc 1 297 0
	lis 4,0x4
	mr 3,29
	bl GX_Init
	.loc 1 300 0
	lwz 9,rmode@l(28)
	lis 11,0x4330
	lhz 0,4(9)
	stw 11,8(1)
	stw 0,12(1)
	lhz 0,6(9)
	lis 9,.LC1@ha
	lfd 3,8(1)
	stw 0,12(1)
	lfs 0,.LC1@l(9)
	lis 9,.LC14@ha
	lfd 4,8(1)
	fsub 3,3,0
	lfs 1,.LC14@l(9)
	fsub 4,4,0
	lis 9,.LC12@ha
	fmr 2,1
	lfs 6,.LC12@l(9)
	frsp 3,3
	frsp 4,4
	fmr 5,1
	bl GX_SetViewport
	.loc 1 301 0
	lwz 9,rmode@l(28)
	lhz 4,8(9)
	lhz 3,6(9)
	bl GX_GetYScaleFactor
	.loc 1 302 0
	bl GX_SetDispCopyYScale
	.loc 1 304 0
	lwz 9,rmode@l(28)
	.loc 1 302 0
	mr 29,3
.LVL46:
	.loc 1 304 0
	li 4,0
	lhz 6,6(9)
	li 3,0
	lhz 5,4(9)
	bl GX_SetScissor
	.loc 1 305 0
	lwz 5,rmode@l(28)
	lis 9,fb_max_height@ha
	.loc 1 307 0
	li 0,0
	.loc 1 305 0
	lhz 7,6(5)
	.loc 1 307 0
	lis 6,scissorInfo@ha
	la 10,scissorInfo@l(6)
	.loc 1 310 0
	li 3,0
	.loc 1 305 0
	stw 7,fb_max_height@l(9)
	.loc 1 308 0
	lis 9,viewPort@ha
	la 11,viewPort@l(9)
	.loc 1 310 0
	li 4,0
	.loc 1 306 0
	lhz 8,4(5)
	.loc 1 308 0
	stw 0,viewPort@l(9)
	.loc 1 306 0
	lis 9,fb_max_width@ha
	stw 8,fb_max_width@l(9)
	.loc 1 307 0
	stw 0,4(10)
	.loc 1 308 0
	stw 0,4(11)
	.loc 1 307 0
	stw 0,scissorInfo@l(6)
	.loc 1 308 0
	stw 7,12(11)
	stw 8,8(11)
	.loc 1 307 0
	stw 7,12(10)
	stw 8,8(10)
	.loc 1 310 0
	lhz 6,6(5)
	lhz 5,4(5)
	bl GX_SetDispCopySrc
	.loc 1 311 0
	lwz 9,rmode@l(28)
	rlwinm 4,29,0,0xffff
.LVL47:
	lhz 3,4(9)
	bl GX_SetDispCopyDst
.LVL48:
	.loc 1 312 0
	lwz 4,rmode@l(28)
	li 5,1
	lbz 3,25(4)
	addi 6,4,50
	addi 4,4,26
	bl GX_SetCopyFilter
	.loc 1 313 0
	lwz 9,rmode@l(28)
	lhz 4,8(9)
	lhz 0,16(9)
	slwi 4,4,1
	lbz 3,24(9)
	xor 4,0,4
	cntlzw 4,4
	srwi 4,4,5
	bl GX_SetFieldMode
	.loc 1 315 0
	lwz 9,rmode@l(28)
	.loc 1 316 0
	li 3,2
	.loc 1 315 0
	lbz 0,25(9)
	cmpwi 7,0,0
	bne- 7,.L102
	.loc 1 318 0
	li 3,0
.L102:
	li 4,0
	.loc 1 322 0
	addi 27,1,16
	.loc 1 318 0
	bl GX_SetPixelFmt
	.loc 1 320 0
	li 0,-1
	rlwimi 31,0,0,24,31
	li 0,127
	rlwimi 31,0,8,16,23
	.loc 1 323 0
	lis 28,fb@ha
	.loc 1 320 0
	rlwimi 31,0,16,8,15
	.loc 1 322 0
	mr 3,27
	.loc 1 320 0
	rlwimi 31,0,24,0,7
	.loc 1 322 0
	li 4,0
	stw 31,16(1)
	bl GX_SetCopyClear
	.loc 1 323 0
	lwz 0,fb@l(28)
	lis 29,.LANCHOR0@ha
	la 29,.LANCHOR0@l(29)
	li 4,1
	slwi 0,0,2
	lwzx 3,29,0
	bl GX_CopyDisp
	.loc 1 324 0
	lis 4,0xff
	mr 3,27
	ori 4,4,65535
	stw 31,16(1)
	bl GX_SetCopyClear
	.loc 1 325 0
	lwz 0,fb@l(28)
	li 4,1
	.loc 1 347 0
	li 31,0
.LVL49:
	.loc 1 325 0
	slwi 0,0,2
	lwzx 3,29,0
	bl GX_CopyDisp
	.loc 1 326 0
	lwz 0,fb@l(28)
	li 4,1
	slwi 0,0,2
	lwzx 3,29,0
	bl GX_CopyDisp
	.loc 1 327 0
	li 3,0
	bl GX_SetDispCopyGamma
	.loc 1 336 0
	li 3,0
	li 4,9
	li 5,1
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 337 0
	li 3,0
	li 4,10
	li 5,0
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 338 0
	li 5,1
	li 6,5
	li 7,0
	li 3,0
	li 4,11
	bl GX_SetVtxAttrFmt
	.loc 1 343 0
	bl GX_ClearVtxDesc
	.loc 1 344 0
	li 3,9
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 345 0
	li 3,10
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 346 0
	li 3,11
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 347 0
	li 3,13
	li 4,1
	bl GX_SetVtxDesc
.L93:
	.loc 1 353 0
	rlwinm 3,31,0,0xff
.LVL50:
	bl incTexDesc
.LVL51:
	li 5,1
	mr 4,3
	li 6,4
	li 3,0
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 351 0
	cmpwi 7,31,7
.LVL52:
	addi 31,31,1
	bne+ 7,.L93
	.loc 1 356 0
	li 3,9
	li 4,0
	li 5,0
	.loc 1 358 0
	li 29,0
.LVL53:
	.loc 1 356 0
	bl GX_SetArray
	.loc 1 357 0
	li 3,10
	li 4,0
	li 5,0
	bl GX_SetArray
	.loc 1 358 0
	li 3,11
	li 4,0
	li 5,0
	bl GX_SetArray
.L95:
	.loc 1 361 0
	rlwinm 3,29,0,0xff
.LVL54:
	bl incTexDesc
.LVL55:
	li 4,0
	li 5,0
	bl GX_SetArray
	.loc 1 359 0
	cmpwi 7,29,7
.LVL56:
	addi 29,29,1
	bne+ 7,.L95
.LVL57:
	.loc 1 366 0
	li 4,1
	li 5,4
	li 6,60
	li 3,0
	bl GX_SetTexCoordGen
	.loc 1 368 0
	li 3,1
	bl GX_SetNumChans
	.loc 1 370 0
	li 3,1
	bl GX_SetNumTexGens
	.loc 1 371 0
	bl GX_InvalidateTexAll
	.loc 1 373 0
	li 5,255
	li 6,4
	li 3,0
	li 4,255
	bl GX_SetTevOrder
	.loc 1 374 0
	li 4,4
	li 3,0
	bl GX_SetTevOp
	.loc 1 377 0
	li 3,1
	bl GX_SetAlphaUpdate
	.loc 1 379 0
	li 3,0
	bl GX_SetCullMode
	.loc 1 381 0
	bl GX_DrawDone
	.loc 1 384 0
	bl ResetArrays
	.loc 1 385 0
	lwz 0,52(1)
	lmw 27,28(1)
.LVL58:
	addi 1,1,48
	mtlr 0
	blr
.LFE70:
	.size	glutInitDisplayMode, .-glutInitDisplayMode
	.globl __glutProgramName
	.globl fb
	.globl _console_enabled
	.globl _console_inited
	.globl offset
	.globl FPS
	.globl incFPS
	.globl displayfunc
	.globl idlefunc
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
	.comm	rmode,4,4
	.comm	watchdog,4,4
	.comm	count,1,1
	.comm	kill,1,1
	.section	.rodata
	.align 2
	.set	.LANCHOR1,. + 0
	.type	C.2.14648, @object
	.size	C.2.14648, 12
C.2.14648:
	.long	0
	.long	0
	.long	1065353216
	.type	C.3.14649, @object
	.size	C.3.14649, 16
C.3.14649:
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.type	C.4.14650, @object
	.size	C.4.14650, 16
C.4.14650:
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.type	C.5.14651, @object
	.size	C.5.14651, 16
C.5.14651:
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.type	C.6.14652, @object
	.size	C.6.14652, 12
C.6.14652:
	.long	0
	.long	0
	.long	-1082130432
	.type	C.7.14653, @object
	.size	C.7.14653, 16
C.7.14653:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.type	C.8.14654, @object
	.size	C.8.14654, 16
C.8.14654:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.type	C.9.14655, @object
	.size	C.9.14655, 16
C.9.14655:
	.long	1045220557
	.long	1045220557
	.long	1045220557
	.long	1065353216
	.type	C.10.14656, @object
	.size	C.10.14656, 16
C.10.14656:
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.type	C.11.14657, @object
	.size	C.11.14657, 16
C.11.14657:
	.long	1045220557
	.long	1045220557
	.long	1045220557
	.long	1065353216
	.type	C.12.14658, @object
	.size	C.12.14658, 16
C.12.14658:
	.long	1061997773
	.long	1061997773
	.long	1061997773
	.long	1065353216
	.type	C.13.14659, @object
	.size	C.13.14659, 16
C.13.14659:
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	1501560832
.LC3:
	.4byte	1501560836
.LC8:
	.4byte	1325400064
.LC12:
	.4byte	1065353216
.LC14:
	.4byte	0
.LC17:
	.4byte	-1082130432
.LC22:
	.4byte	1127481344
.LC23:
	.4byte	1085370904
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC15:
	.4byte	0
	.4byte	0
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC6:
	.string	"%d\n"
.LC21:
	.string	"test"
	.section	.sbss,"aw",@nobits
	.align 2
	.type	__glutProgramName, @object
	.size	__glutProgramName, 4
__glutProgramName:
	.zero	4
	.type	fb, @object
	.size	fb, 4
fb:
	.zero	4
	.type	_console_enabled, @object
	.size	_console_enabled, 1
_console_enabled:
	.zero	1
	.type	_console_inited, @object
	.size	_console_inited, 1
_console_inited:
	.zero	1
	.type	FPS, @object
	.size	FPS, 1
FPS:
	.zero	1
	.type	incFPS, @object
	.size	incFPS, 1
incFPS:
	.zero	1
	.type	displayfunc, @object
	.size	displayfunc, 4
displayfunc:
	.zero	4
	.type	idlefunc, @object
	.size	idlefunc, 4
idlefunc:
	.zero	4
	.section	.sdata,"aw",@progbits
	.align 2
	.type	offset, @object
	.size	offset, 4
offset:
	.long	10
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	frameBuffer, @object
	.size	frameBuffer, 8
frameBuffer:
	.zero	8
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
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
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
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x4
	.4byte	.LCFI0-.LFB72
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.align 2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.byte	0x4
	.4byte	.LCFI1-.LFB84
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI3-.LCFI1
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.byte	0x4
	.4byte	.LCFI6-.LFB83
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI8-.LCFI6
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
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.byte	0x4
	.4byte	.LCFI10-.LFB81
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x4
	.4byte	.LCFI13-.LFB76
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI15-.LCFI13
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
	.4byte	.LCFI16-.LCFI15
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x4
	.4byte	.LCFI18-.LFB74
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
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
	.4byte	.LCFI20-.LCFI19
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.align 2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x4
	.4byte	.LCFI22-.LFB73
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xba
	.uleb128 0xc
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xbb
	.uleb128 0xa
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xbc
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0xbd
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xbe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0xbf
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.byte	0x4
	.4byte	.LCFI30-.LFB77
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x4
	.4byte	.LCFI32-.LFB71
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI34-.LCFI32
	.byte	0xbf
	.uleb128 0x2
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x4
	.4byte	.LCFI36-.LFB66
	.byte	0xe
	.uleb128 0x100
	.byte	0x4
	.4byte	.LCFI38-.LCFI36
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
	.byte	0x98
	.uleb128 0xa
	.byte	0x97
	.uleb128 0xb
	.byte	0x96
	.uleb128 0xc
	.byte	0x95
	.uleb128 0xd
	.byte	0x94
	.uleb128 0xe
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI39-.LCFI38
	.byte	0xbf
	.uleb128 0x2
	.align 2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x4
	.4byte	.LCFI41-.LFB70
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI42-.LCFI41
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
	.4byte	.LCFI43-.LCFI42
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE42:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST3:
	.4byte	.LFB72-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE78-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB84-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE84-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB83-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE83-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LFB81-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB76-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LFB74-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LFB73-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LFB77-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI30-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LFB71-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI32-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LFB66-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI36-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 256
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LFB70-.Ltext0
	.4byte	.LCFI41-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI41-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h"
	.file 3 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/types.h"
	.file 4 "c:/devkitPro/libogc/include/gctypes.h"
	.file 5 "c:/devkitPro/libogc/include/ogc/gx_struct.h"
	.file 6 "c:/devkitPro/libogc/include/ogc/gu.h"
	.file 7 "c:/devkitPro/libogc/include/ogc/lwp.h"
	.file 8 "c:/devkitPro/libogc/include/ogc/gx.h"
	.file 9 "c:/devkitPro/libogc/include/ogc/system.h"
	.file 10 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/include/GL/gl.h"
	.file 11 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/include/glint.h"
	.file 12 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/include/mat_stack.h"
	.section	.debug_info
	.4byte	0x1321
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF234
	.byte	0x1
	.4byte	.LASF235
	.4byte	.LASF236
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x2
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
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x8
	.byte	0x4
	.4byte	0x74
	.uleb128 0x8
	.byte	0x4
	.4byte	0x82
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x8
	.byte	0x4
	.4byte	0x8f
	.uleb128 0x9
	.4byte	0x82
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x3
	.byte	0x6d
	.4byte	0x94
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x8
	.byte	0x3
	.byte	0x72
	.4byte	0xcf
	.uleb128 0xb
	.4byte	.LASF12
	.byte	0x3
	.byte	0x73
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x3
	.byte	0x74
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF16
	.uleb128 0xc
	.string	"u8"
	.byte	0x4
	.byte	0xf
	.4byte	0x3a
	.uleb128 0xc
	.string	"u16"
	.byte	0x4
	.byte	0x10
	.4byte	0x41
	.uleb128 0xc
	.string	"u32"
	.byte	0x4
	.byte	0x11
	.4byte	0x30
	.uleb128 0xc
	.string	"s32"
	.byte	0x4
	.byte	0x16
	.4byte	0x58
	.uleb128 0xd
	.4byte	0x3a
	.uleb128 0xc
	.string	"f32"
	.byte	0x4
	.byte	0x29
	.4byte	0xd6
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x35
	.4byte	0xe4
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.byte	0x36
	.4byte	0x13f
	.uleb128 0xf
	.4byte	.LASF18
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF19
	.sleb128 1
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7c
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x3c
	.byte	0x5
	.byte	0x3a
	.4byte	0x207
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x5
	.byte	0x3b
	.4byte	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0x3c
	.4byte	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x3d
	.4byte	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0x3e
	.4byte	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x5
	.byte	0x3f
	.4byte	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x5
	.byte	0x40
	.4byte	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x5
	.byte	0x41
	.4byte	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0x42
	.4byte	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0x43
	.4byte	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x5
	.byte	0x44
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"aa"
	.byte	0x5
	.byte	0x45
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x5
	.byte	0x46
	.4byte	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x47
	.4byte	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0x0
	.uleb128 0x11
	.4byte	0xe4
	.4byte	0x21d
	.uleb128 0x12
	.4byte	0x37
	.byte	0xb
	.uleb128 0x12
	.4byte	0x37
	.byte	0x1
	.byte	0x0
	.uleb128 0x11
	.4byte	0xe4
	.4byte	0x22d
	.uleb128 0x12
	.4byte	0x37
	.byte	0x6
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x5
	.byte	0x48
	.4byte	0x145
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0xc
	.byte	0x6
	.byte	0x27
	.4byte	0x269
	.uleb128 0x10
	.string	"x"
	.byte	0x6
	.byte	0x28
	.4byte	0x114
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"y"
	.byte	0x6
	.byte	0x28
	.4byte	0x114
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"z"
	.byte	0x6
	.byte	0x28
	.4byte	0x114
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x6
	.byte	0x29
	.4byte	0x238
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x7
	.byte	0x3e
	.4byte	0xf9
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x4
	.byte	0x8
	.2byte	0x3b8
	.4byte	0x2c1
	.uleb128 0x14
	.string	"r"
	.byte	0x8
	.2byte	0x3b9
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"g"
	.byte	0x8
	.2byte	0x3ba
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x14
	.string	"b"
	.byte	0x8
	.2byte	0x3bb
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x14
	.string	"a"
	.byte	0x8
	.2byte	0x3bc
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x8
	.2byte	0x3bd
	.4byte	0x27f
	.uleb128 0x13
	.4byte	.LASF40
	.byte	0x40
	.byte	0x8
	.2byte	0x3d6
	.4byte	0x2ea
	.uleb128 0x14
	.string	"val"
	.byte	0x8
	.2byte	0x3d7
	.4byte	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x11
	.4byte	0xf9
	.4byte	0x2fa
	.uleb128 0x12
	.4byte	0x37
	.byte	0xf
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF41
	.byte	0x8
	.2byte	0x3d8
	.4byte	0x2cd
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x9
	.byte	0x86
	.4byte	0xf9
	.uleb128 0x8
	.byte	0x4
	.4byte	0x317
	.uleb128 0x16
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf9
	.uleb128 0x8
	.byte	0x4
	.4byte	0x58
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0xa
	.byte	0x92
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0xa
	.byte	0x93
	.4byte	0x3a
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0xa
	.byte	0x98
	.4byte	0x58
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0xa
	.byte	0x9b
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0xa
	.byte	0x9c
	.4byte	0x58
	.uleb128 0x17
	.byte	0x10
	.byte	0xb
	.byte	0x16
	.4byte	0x37c
	.uleb128 0x10
	.string	"v"
	.byte	0xb
	.byte	0x17
	.4byte	0x269
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"w"
	.byte	0xb
	.byte	0x18
	.4byte	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0xb
	.byte	0x19
	.4byte	0x35b
	.uleb128 0x17
	.byte	0x8
	.byte	0xb
	.byte	0x1c
	.4byte	0x3a8
	.uleb128 0x10
	.string	"s"
	.byte	0xb
	.byte	0x1d
	.4byte	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"t"
	.byte	0xb
	.byte	0x1e
	.4byte	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0xb
	.byte	0x1f
	.4byte	0x387
	.uleb128 0x17
	.byte	0x10
	.byte	0xb
	.byte	0x22
	.4byte	0x3ec
	.uleb128 0x10
	.string	"r"
	.byte	0xb
	.byte	0x23
	.4byte	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"g"
	.byte	0xb
	.byte	0x24
	.4byte	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"b"
	.byte	0xb
	.byte	0x25
	.4byte	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"a"
	.byte	0xb
	.byte	0x26
	.4byte	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0xb
	.byte	0x27
	.4byte	0x3b3
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x14
	.byte	0xb
	.byte	0x42
	.4byte	0x448
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0xb
	.byte	0x43
	.4byte	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"p"
	.byte	0xb
	.byte	0x44
	.4byte	0x311
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0xb
	.byte	0x45
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0xb
	.byte	0x46
	.4byte	0x33a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0xb
	.byte	0x47
	.4byte	0x324
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0xb
	.byte	0x48
	.4byte	0x3f7
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x10
	.byte	0xc
	.byte	0xd
	.4byte	0x498
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0xc
	.byte	0xe
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0xc
	.byte	0xf
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0xc
	.byte	0x10
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"cur"
	.byte	0xc
	.byte	0x11
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0xc
	.byte	0x12
	.4byte	0x453
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0xa4
	.byte	0xb
	.byte	0x7e
	.4byte	0x55e
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0xb
	.byte	0x7f
	.4byte	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"obj"
	.byte	0xb
	.byte	0x81
	.4byte	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"pos"
	.byte	0xb
	.byte	0x83
	.4byte	0x37c
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0xb
	.byte	0x85
	.4byte	0x269
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0xb
	.byte	0x87
	.4byte	0x3ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0xb
	.byte	0x88
	.4byte	0x3ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0xb
	.byte	0x89
	.4byte	0x3ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0xb
	.byte	0x8b
	.4byte	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0xb
	.byte	0x8c
	.4byte	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0xb
	.byte	0x8d
	.4byte	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0xb
	.byte	0x8e
	.4byte	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0xb
	.byte	0x8f
	.4byte	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0xb
	.byte	0x90
	.4byte	0x4a3
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x44
	.byte	0xb
	.byte	0x9b
	.4byte	0x5bc
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0xb
	.byte	0x9c
	.4byte	0x3ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0xb
	.byte	0x9d
	.4byte	0x3ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0xb
	.byte	0x9e
	.4byte	0x3ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0xb
	.byte	0x9f
	.4byte	0x3ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0xb
	.byte	0xa0
	.4byte	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0xb
	.byte	0xa1
	.4byte	0x569
	.uleb128 0x18
	.4byte	.LASF237
	.byte	0x4
	.byte	0xb
	.byte	0xba
	.4byte	0x5e6
	.uleb128 0xf
	.4byte	.LASF77
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF78
	.sleb128 1
	.uleb128 0xf
	.4byte	.LASF79
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0xb
	.byte	0xbe
	.4byte	0x5c7
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x10
	.byte	0xb
	.byte	0xe3
	.4byte	0x632
	.uleb128 0x10
	.string	"x"
	.byte	0xb
	.byte	0xe4
	.4byte	0x33a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"y"
	.byte	0xb
	.byte	0xe5
	.4byte	0x33a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0xb
	.byte	0xe6
	.4byte	0x350
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0xb
	.byte	0xe7
	.4byte	0x350
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0xb
	.byte	0xe8
	.4byte	0x5f1
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x14
	.byte	0xb
	.byte	0xf8
	.4byte	0x69e
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0xb
	.byte	0xf9
	.4byte	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0xb
	.byte	0xfa
	.4byte	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0xb
	.byte	0xfb
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0xb
	.byte	0xfc
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0xb
	.byte	0xfd
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0xb
	.byte	0xfe
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0xb
	.byte	0xff
	.4byte	0x63d
	.uleb128 0x13
	.4byte	.LASF92
	.byte	0x8
	.byte	0xb
	.2byte	0x114
	.4byte	0x6d5
	.uleb128 0x19
	.4byte	.LASF93
	.byte	0xb
	.2byte	0x115
	.4byte	0x114
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0xb
	.2byte	0x116
	.4byte	0x114
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0xb
	.2byte	0x117
	.4byte	0x6a9
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x6c
	.byte	0xb
	.2byte	0x124
	.4byte	0x839
	.uleb128 0x19
	.4byte	.LASF62
	.byte	0xb
	.2byte	0x125
	.4byte	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0xb
	.2byte	0x127
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0xb
	.2byte	0x128
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0xb
	.2byte	0x129
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x19
	.4byte	.LASF100
	.byte	0xb
	.2byte	0x12a
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.4byte	.LASF101
	.byte	0xb
	.2byte	0x12b
	.4byte	0x114
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0xb
	.2byte	0x12c
	.4byte	0x114
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.4byte	.LASF103
	.byte	0xb
	.2byte	0x12d
	.4byte	0x114
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x19
	.4byte	.LASF104
	.byte	0xb
	.2byte	0x12e
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x19
	.4byte	.LASF105
	.byte	0xb
	.2byte	0x12f
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x19
	.4byte	.LASF106
	.byte	0xb
	.2byte	0x130
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x19
	.4byte	.LASF107
	.byte	0xb
	.2byte	0x132
	.4byte	0x324
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x19
	.4byte	.LASF108
	.byte	0xb
	.2byte	0x134
	.4byte	0x324
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x19
	.4byte	.LASF109
	.byte	0xb
	.2byte	0x135
	.4byte	0x324
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x19
	.4byte	.LASF110
	.byte	0xb
	.2byte	0x137
	.4byte	0x839
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x19
	.4byte	.LASF111
	.byte	0xb
	.2byte	0x138
	.4byte	0x839
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x19
	.4byte	.LASF112
	.byte	0xb
	.2byte	0x139
	.4byte	0x839
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x19
	.4byte	.LASF113
	.byte	0xb
	.2byte	0x13a
	.4byte	0x839
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x14
	.string	"tex"
	.byte	0xb
	.2byte	0x13c
	.4byte	0x33a
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x19
	.4byte	.LASF114
	.byte	0xb
	.2byte	0x13e
	.4byte	0x3ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x19
	.4byte	.LASF115
	.byte	0xb
	.2byte	0x140
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x19
	.4byte	.LASF116
	.byte	0xb
	.2byte	0x141
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0x0
	.uleb128 0x11
	.4byte	0x324
	.4byte	0x849
	.uleb128 0x12
	.4byte	0x37
	.byte	0x2
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0xb
	.2byte	0x142
	.4byte	0x6e1
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF238
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.uleb128 0x1b
	.4byte	0x855
	.4byte	.LFB67
	.4byte	.LFE67
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF141
	.byte	0x1
	.byte	0xf7
	.4byte	.LFB68
	.4byte	.LFE68
	.byte	0x1
	.byte	0x51
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF118
	.byte	0x1
	.byte	0xfe
	.byte	0x1
	.4byte	.LFB69
	.4byte	.LFE69
	.byte	0x1
	.byte	0x51
	.4byte	0x8ad
	.uleb128 0x1e
	.string	"w"
	.byte	0x1
	.byte	0xfd
	.4byte	0x318
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"h"
	.byte	0x1
	.byte	0xfd
	.4byte	0x318
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x18f
	.4byte	0xd6
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LLST3
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x1c4
	.byte	0x1
	.4byte	0x58
	.4byte	.LFB78
	.4byte	.LFE78
	.byte	0x1
	.byte	0x51
	.4byte	0x903
	.uleb128 0x21
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x324
	.4byte	.LLST5
	.uleb128 0x22
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x58
	.4byte	.LLST6
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x1d1
	.byte	0x1
	.4byte	.LFB79
	.4byte	.LFE79
	.byte	0x1
	.byte	0x51
	.4byte	0x92a
	.uleb128 0x24
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x76
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x1d7
	.byte	0x1
	.4byte	.LFB80
	.4byte	.LFE80
	.byte	0x1
	.byte	0x51
	.4byte	0x951
	.uleb128 0x24
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x1d7
	.4byte	0x76
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x3a
	.4byte	.LFB82
	.4byte	.LFE82
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x229
	.4byte	0x48
	.4byte	.LFB85
	.4byte	.LFE85
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x22e
	.4byte	0x48
	.4byte	.LFB86
	.4byte	.LFE86
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x233
	.byte	0x1
	.4byte	.LFB87
	.4byte	.LFE87
	.byte	0x1
	.byte	0x51
	.4byte	0x9bd
	.uleb128 0x24
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x232
	.4byte	0x104
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x203
	.byte	0x1
	.4byte	.LFB84
	.4byte	.LFE84
	.4byte	.LLST13
	.4byte	0xa11
	.uleb128 0x27
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x204
	.4byte	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x205
	.4byte	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x206
	.4byte	0x58
	.uleb128 0x27
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x219
	.4byte	0x274
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x1f7
	.byte	0x1
	.4byte	0x48
	.4byte	.LFB83
	.4byte	.LFE83
	.4byte	.LLST14
	.4byte	0xa3e
	.uleb128 0x2a
	.string	"a"
	.byte	0x1
	.2byte	0x1f7
	.4byte	0x48
	.4byte	.LLST15
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x1e1
	.byte	0x1
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LLST16
	.4byte	0xa78
	.uleb128 0x21
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x306
	.4byte	.LLST17
	.uleb128 0x2a
	.string	"cb"
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x48
	.4byte	.LLST18
	.byte	0x0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x1a9
	.byte	0x1
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LLST19
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x19b
	.byte	0x1
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LLST20
	.4byte	0xaf5
	.uleb128 0x21
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x19a
	.4byte	0xf9
	.4byte	.LLST21
	.uleb128 0x21
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x19a
	.4byte	0xf9
	.4byte	.LLST22
	.uleb128 0x2a
	.string	"wd"
	.byte	0x1
	.2byte	0x19a
	.4byte	0xf9
	.4byte	.LLST23
	.uleb128 0x2a
	.string	"ht"
	.byte	0x1
	.2byte	0x19a
	.4byte	0xf9
	.4byte	.LLST24
	.uleb128 0x2c
	.string	"f"
	.byte	0x1
	.2byte	0x19c
	.4byte	0xd6
	.4byte	.LLST25
	.byte	0x0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x1a2
	.4byte	.LFB75
	.4byte	.LFE75
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x194
	.byte	0x1
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LLST27
	.4byte	0xb8f
	.uleb128 0x21
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x193
	.4byte	0x114
	.4byte	.LLST28
	.uleb128 0x21
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x193
	.4byte	0x114
	.4byte	.LLST29
	.uleb128 0x2a
	.string	"wd"
	.byte	0x1
	.2byte	0x193
	.4byte	0x114
	.4byte	.LLST30
	.uleb128 0x2a
	.string	"ht"
	.byte	0x1
	.2byte	0x193
	.4byte	0x114
	.4byte	.LLST31
	.uleb128 0x21
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x193
	.4byte	0x114
	.4byte	.LLST32
	.uleb128 0x21
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x193
	.4byte	0x114
	.4byte	.LLST33
	.uleb128 0x2c
	.string	"f"
	.byte	0x1
	.2byte	0x195
	.4byte	0xd6
	.4byte	.LLST34
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x1c0
	.byte	0x1
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LLST35
	.4byte	0xbca
	.uleb128 0x21
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x58
	.4byte	.LLST36
	.uleb128 0x21
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x58
	.4byte	.LLST37
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x183
	.byte	0x1
	.4byte	0x58
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LLST38
	.4byte	0xbf9
	.uleb128 0x21
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x183
	.4byte	0x89
	.4byte	.LLST39
	.byte	0x0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF151
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LLST40
	.4byte	0xc3a
	.uleb128 0x2f
	.4byte	.LASF152
	.byte	0x1
	.byte	0x41
	.4byte	0x31e
	.4byte	.LLST41
	.uleb128 0x2f
	.4byte	.LASF153
	.byte	0x1
	.byte	0x41
	.4byte	0x13f
	.4byte	.LLST42
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.byte	0x57
	.4byte	0x58
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x103
	.byte	0x1
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LLST43
	.4byte	0xced
	.uleb128 0x21
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x103
	.4byte	0x30
	.4byte	.LLST44
	.uleb128 0x28
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x112
	.4byte	0x58
	.uleb128 0x28
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x113
	.4byte	0x58
	.uleb128 0x28
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x114
	.4byte	0x58
	.uleb128 0x28
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x115
	.4byte	0x58
	.uleb128 0x28
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x120
	.4byte	0x114
	.uleb128 0x22
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x122
	.4byte	0xf9
	.4byte	.LLST45
	.uleb128 0x22
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x125
	.4byte	0x48
	.4byte	.LLST46
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.2byte	0x140
	.4byte	0x2c1
	.4byte	.LLST47
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.2byte	0x15e
	.4byte	0x58
	.4byte	.LLST48
	.uleb128 0x31
	.4byte	0x855
	.4byte	.LBB4
	.4byte	.LBE4
	.byte	0x1
	.2byte	0x11c
	.byte	0x0
	.uleb128 0x11
	.4byte	0x48
	.4byte	0xcfd
	.uleb128 0x12
	.4byte	0x37
	.byte	0x1
	.byte	0x0
	.uleb128 0x32
	.4byte	.LASF162
	.byte	0x1
	.byte	0x14
	.4byte	0xced
	.byte	0x5
	.byte	0x3
	.4byte	frameBuffer
	.uleb128 0x33
	.4byte	.LASF163
	.byte	0xb
	.byte	0x3c
	.4byte	0x3ec
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x33
	.4byte	.LASF164
	.byte	0xb
	.byte	0x3d
	.4byte	0x269
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0x11
	.4byte	0x3a8
	.4byte	0xd42
	.uleb128 0x12
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x33
	.4byte	.LASF165
	.byte	0xb
	.byte	0x3e
	.4byte	0xd32
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x33
	.4byte	.LASF166
	.byte	0xb
	.byte	0x4a
	.4byte	0x448
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x33
	.4byte	.LASF167
	.byte	0xb
	.byte	0x4b
	.4byte	0x448
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0x11
	.4byte	0x448
	.4byte	0xd88
	.uleb128 0x12
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x34
	.string	"tex"
	.byte	0xb
	.byte	0x4c
	.4byte	0xd78
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x33
	.4byte	.LASF114
	.byte	0xb
	.byte	0x4d
	.4byte	0x448
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0x11
	.4byte	0x269
	.4byte	0xdbd
	.uleb128 0x35
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x33
	.4byte	.LASF168
	.byte	0xb
	.byte	0x4f
	.4byte	0xdac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x33
	.4byte	.LASF169
	.byte	0xb
	.byte	0x50
	.4byte	0xdac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0x11
	.4byte	0x3a8
	.4byte	0xdf8
	.uleb128 0x12
	.4byte	0x37
	.byte	0x7
	.uleb128 0x35
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x33
	.4byte	.LASF170
	.byte	0xb
	.byte	0x51
	.4byte	0xde1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0x11
	.4byte	0x3ec
	.4byte	0xe1b
	.uleb128 0x35
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x33
	.4byte	.LASF171
	.byte	0xb
	.byte	0x52
	.4byte	0xe0a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x33
	.4byte	.LASF172
	.byte	0xb
	.byte	0x5c
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x33
	.4byte	.LASF173
	.byte	0xb
	.byte	0x5d
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x33
	.4byte	.LASF174
	.byte	0xb
	.byte	0x5e
	.4byte	0x324
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x33
	.4byte	.LASF175
	.byte	0xb
	.byte	0x60
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x33
	.4byte	.LASF176
	.byte	0xb
	.byte	0x61
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x33
	.4byte	.LASF177
	.byte	0xb
	.byte	0x65
	.4byte	0xe4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x33
	.4byte	.LASF178
	.byte	0xb
	.byte	0x66
	.4byte	0xe4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x33
	.4byte	.LASF179
	.byte	0xb
	.byte	0x67
	.4byte	0x324
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x33
	.4byte	.LASF180
	.byte	0xb
	.byte	0x68
	.4byte	0xd6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x33
	.4byte	.LASF181
	.byte	0xb
	.byte	0x74
	.4byte	0x498
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x33
	.4byte	.LASF182
	.byte	0xb
	.byte	0x75
	.4byte	0x498
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0x11
	.4byte	0x498
	.4byte	0xf03
	.uleb128 0x12
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x33
	.4byte	.LASF183
	.byte	0xb
	.byte	0x76
	.4byte	0xef3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x33
	.4byte	.LASF184
	.byte	0xb
	.byte	0x77
	.4byte	0xf27
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x8
	.byte	0x4
	.4byte	0x498
	.uleb128 0x33
	.4byte	.LASF185
	.byte	0xb
	.byte	0x78
	.4byte	0x324
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0x11
	.4byte	0x55e
	.4byte	0xf4f
	.uleb128 0x12
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x33
	.4byte	.LASF186
	.byte	0xb
	.byte	0x93
	.4byte	0xf3f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x33
	.4byte	.LASF187
	.byte	0xb
	.byte	0x96
	.4byte	0x3ec
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x33
	.4byte	.LASF188
	.byte	0xb
	.byte	0xa3
	.4byte	0x5bc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x33
	.4byte	.LASF189
	.byte	0xb
	.byte	0xa6
	.4byte	0x11f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x33
	.4byte	.LASF190
	.byte	0xb
	.byte	0xa7
	.4byte	0x324
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x33
	.4byte	.LASF191
	.byte	0xb
	.byte	0xab
	.4byte	0x11f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x33
	.4byte	.LASF192
	.byte	0xb
	.byte	0xb2
	.4byte	0xe4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x33
	.4byte	.LASF193
	.byte	0xb
	.byte	0xb3
	.4byte	0xe4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x33
	.4byte	.LASF194
	.byte	0xb
	.byte	0xb4
	.4byte	0xe4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x33
	.4byte	.LASF195
	.byte	0xb
	.byte	0xb5
	.4byte	0xe4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x33
	.4byte	.LASF196
	.byte	0xb
	.byte	0xb7
	.4byte	0xe4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x33
	.4byte	.LASF197
	.byte	0xb
	.byte	0xc0
	.4byte	0x5e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x33
	.4byte	.LASF198
	.byte	0xb
	.byte	0xea
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x33
	.4byte	.LASF199
	.byte	0xb
	.byte	0xeb
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x33
	.4byte	.LASF200
	.byte	0xb
	.byte	0xec
	.4byte	0x32f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x33
	.4byte	.LASF201
	.byte	0xb
	.byte	0xed
	.4byte	0x632
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x33
	.4byte	.LASF202
	.byte	0xb
	.byte	0xee
	.4byte	0x632
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x33
	.4byte	.LASF203
	.byte	0xb
	.byte	0xef
	.4byte	0x114
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x33
	.4byte	.LASF204
	.byte	0xb
	.byte	0xf0
	.4byte	0x114
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x33
	.4byte	.LASF205
	.byte	0xb
	.byte	0xf2
	.4byte	0x114
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x33
	.4byte	.LASF206
	.byte	0xb
	.byte	0xf4
	.4byte	0x114
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x36
	.4byte	.LASF207
	.byte	0xb
	.2byte	0x101
	.4byte	0x69e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x36
	.4byte	.LASF208
	.byte	0xb
	.2byte	0x102
	.4byte	0x69e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0x11
	.4byte	0x11f
	.4byte	0x10ff
	.uleb128 0x12
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x36
	.4byte	.LASF209
	.byte	0xb
	.2byte	0x103
	.4byte	0x10ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x36
	.4byte	.LASF210
	.byte	0xb
	.2byte	0x109
	.4byte	0x11f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x36
	.4byte	.LASF211
	.byte	0xb
	.2byte	0x10a
	.4byte	0x324
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x36
	.4byte	.LASF212
	.byte	0xb
	.2byte	0x10d
	.4byte	0x2c1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0x11
	.4byte	0x6d5
	.4byte	0x115b
	.uleb128 0x12
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x36
	.4byte	.LASF213
	.byte	0xb
	.2byte	0x121
	.4byte	0x114b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x36
	.4byte	.LASF214
	.byte	0xb
	.2byte	0x146
	.4byte	0x11f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x36
	.4byte	.LASF215
	.byte	0xb
	.2byte	0x147
	.4byte	0xe4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x36
	.4byte	.LASF216
	.byte	0xb
	.2byte	0x148
	.4byte	0x114
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x36
	.4byte	.LASF217
	.byte	0xb
	.2byte	0x149
	.4byte	0x114
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x36
	.4byte	.LASF218
	.byte	0xb
	.2byte	0x14a
	.4byte	0x114
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x36
	.4byte	.LASF219
	.byte	0xb
	.2byte	0x14b
	.4byte	0x2c1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0x11
	.4byte	0x849
	.4byte	0x11f0
	.uleb128 0x12
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x36
	.4byte	.LASF220
	.byte	0xb
	.2byte	0x14d
	.4byte	0x11e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x36
	.4byte	.LASF221
	.byte	0xb
	.2byte	0x152
	.4byte	0x324
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x36
	.4byte	.LASF222
	.byte	0xb
	.2byte	0x155
	.4byte	0x345
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	call_offset
	.uleb128 0x33
	.4byte	.LASF223
	.byte	0x1
	.byte	0x13
	.4byte	0x7c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__glutProgramName
	.uleb128 0x33
	.4byte	.LASF224
	.byte	0x1
	.byte	0x15
	.4byte	0x124d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rmode
	.uleb128 0x8
	.byte	0x4
	.4byte	0x22d
	.uleb128 0x33
	.4byte	.LASF225
	.byte	0x1
	.byte	0x16
	.4byte	0x306
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	watchdog
	.uleb128 0x34
	.string	"fb"
	.byte	0x1
	.byte	0x18
	.4byte	0xf9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb
	.uleb128 0x33
	.4byte	.LASF226
	.byte	0x1
	.byte	0xec
	.4byte	0x11f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_console_enabled
	.uleb128 0x33
	.4byte	.LASF227
	.byte	0x1
	.byte	0xed
	.4byte	0x11f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_console_inited
	.uleb128 0x36
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x18c
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	offset
	.uleb128 0x37
	.string	"FPS"
	.byte	0x1
	.2byte	0x1a6
	.4byte	0x12c0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	FPS
	.uleb128 0xd
	.4byte	0x82
	.uleb128 0x36
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x1a7
	.4byte	0x12c0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	incFPS
	.uleb128 0x36
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x76
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	displayfunc
	.uleb128 0x36
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x76
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	idlefunc
	.uleb128 0x36
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x1db
	.4byte	0x10f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	count
	.uleb128 0x36
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x10f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	kill
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
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
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
	.uleb128 0x1f
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x1d
	.byte	0x0
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x5f9
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1325
	.4byte	0x85e
	.string	"ShowConsole"
	.4byte	0x86d
	.string	"HideConsole"
	.4byte	0x87f
	.string	"getVImode"
	.4byte	0x8ad
	.string	"computeFactor"
	.4byte	0x8c6
	.string	"glutGet"
	.4byte	0x903
	.string	"glutDisplayFunc"
	.4byte	0x92a
	.string	"glutIdleFunc"
	.4byte	0x951
	.string	"getFPS"
	.4byte	0x968
	.string	"getFrontFramebuffer"
	.4byte	0x97f
	.string	"getBackFramebuffer"
	.4byte	0x996
	.string	"power_off"
	.4byte	0x9bd
	.string	"glutMainLoop"
	.4byte	0xa11
	.string	"glutThread"
	.4byte	0xa3e
	.string	"timercallback"
	.4byte	0xa78
	.string	"glutSwapBuffers"
	.4byte	0xa8e
	.string	"GX_SetModScissor"
	.4byte	0xaf5
	.string	"GX_SetMaxScissor"
	.4byte	0xb08
	.string	"GX_SetModViewport"
	.4byte	0xb8f
	.string	"glutInitWindowSize"
	.4byte	0xbca
	.string	"glutCreateWindow"
	.4byte	0xbf9
	.string	"glutInit"
	.4byte	0xc3a
	.string	"glutInitDisplayMode"
	.4byte	0xd0e
	.string	"_tempcolorelement"
	.4byte	0xd20
	.string	"_tempnormalelement"
	.4byte	0xd42
	.string	"_temptexcoordelement"
	.4byte	0xd54
	.string	"norm"
	.4byte	0xd66
	.string	"vert"
	.4byte	0xd88
	.string	"tex"
	.4byte	0xd9a
	.string	"color"
	.4byte	0xdbd
	.string	"_normalelements"
	.4byte	0xdcf
	.string	"_vertexelements"
	.4byte	0xdf8
	.string	"_texcoordelements"
	.4byte	0xe1b
	.string	"_colorelements"
	.4byte	0xe2d
	.string	"vert_i"
	.4byte	0xe3f
	.string	"_type"
	.4byte	0xe51
	.string	"_GLtype"
	.4byte	0xe63
	.string	"cur_tex"
	.4byte	0xe75
	.string	"cur_tex_client"
	.4byte	0xe87
	.string	"depthtestenabled"
	.4byte	0xe99
	.string	"depthupdate"
	.4byte	0xeab
	.string	"depthfunction"
	.4byte	0xebd
	.string	"_cleardepth"
	.4byte	0xecf
	.string	"model_stack"
	.4byte	0xee1
	.string	"projection_stack"
	.4byte	0xf03
	.string	"texture_stack"
	.4byte	0xf15
	.string	"curmtx"
	.4byte	0xf2d
	.string	"cur_mode"
	.4byte	0xf4f
	.string	"lights"
	.4byte	0xf61
	.string	"globAmbient"
	.4byte	0xf73
	.string	"curmat"
	.4byte	0xf85
	.string	"gxcullfaceanabled"
	.4byte	0xf97
	.string	"gxwinding"
	.4byte	0xfa9
	.string	"lighting"
	.4byte	0xfbb
	.string	"blend_type"
	.4byte	0xfcd
	.string	"blend_src"
	.4byte	0xfdf
	.string	"blend_dst"
	.4byte	0xff1
	.string	"blend_op"
	.4byte	0x1003
	.string	"cull_mode"
	.4byte	0x1015
	.string	"cur_state"
	.4byte	0x1027
	.string	"fb_max_height"
	.4byte	0x1039
	.string	"fb_max_width"
	.4byte	0x104b
	.string	"scissor_test"
	.4byte	0x105d
	.string	"scissorInfo"
	.4byte	0x106f
	.string	"viewPort"
	.4byte	0x1081
	.string	"normNear"
	.4byte	0x1093
	.string	"normFar"
	.4byte	0x10a5
	.string	"line_width"
	.4byte	0x10b7
	.string	"point_size"
	.4byte	0x10c9
	.string	"pack"
	.4byte	0x10dc
	.string	"unpack"
	.4byte	0x10ff
	.string	"color_write_mask"
	.4byte	0x1112
	.string	"copy_mat_enabled"
	.4byte	0x1125
	.string	"copy_material"
	.4byte	0x1138
	.string	"_clearcolor"
	.4byte	0x115b
	.string	"Trans"
	.4byte	0x116e
	.string	"fog_enable"
	.4byte	0x1181
	.string	"fog_mode"
	.4byte	0x1194
	.string	"fog_startz"
	.4byte	0x11a7
	.string	"fog_endz"
	.4byte	0x11ba
	.string	"fog_density"
	.4byte	0x11cd
	.string	"fog_color"
	.4byte	0x11f0
	.string	"glTexEnvs"
	.4byte	0x1203
	.string	"read_mode"
	.4byte	0x1216
	.string	"call_offset"
	.4byte	0x1229
	.string	"__glutProgramName"
	.4byte	0x123b
	.string	"rmode"
	.4byte	0x1253
	.string	"watchdog"
	.4byte	0x1265
	.string	"fb"
	.4byte	0x1276
	.string	"_console_enabled"
	.4byte	0x1288
	.string	"_console_inited"
	.4byte	0x129a
	.string	"offset"
	.4byte	0x12ad
	.string	"FPS"
	.4byte	0x12c5
	.string	"incFPS"
	.4byte	0x12d8
	.string	"displayfunc"
	.4byte	0x12eb
	.string	"idlefunc"
	.4byte	0x12fe
	.string	"count"
	.4byte	0x1311
	.string	"kill"
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
.LASF155:
	.string	"glutInitDisplayMode"
.LASF156:
	.string	"conX"
.LASF157:
	.string	"conY"
.LASF131:
	.string	"interval"
.LASF60:
	.string	"Stack"
.LASF8:
	.string	"char"
.LASF45:
	.string	"GLint"
.LASF81:
	.string	"boxInfo"
.LASF192:
	.string	"blend_type"
.LASF187:
	.string	"globAmbient"
.LASF183:
	.string	"texture_stack"
.LASF149:
	.string	"glutCreateWindow"
.LASF197:
	.string	"cur_state"
.LASF198:
	.string	"fb_max_height"
.LASF0:
	.string	"unsigned int"
.LASF168:
	.string	"_normalelements"
.LASF73:
	.string	"_mat"
.LASF223:
	.string	"__glutProgramName"
.LASF66:
	.string	"specular"
.LASF231:
	.string	"idlefunc"
.LASF119:
	.string	"glutDisplayFunc"
.LASF118:
	.string	"getVImode"
.LASF170:
	.string	"_texcoordelements"
.LASF162:
	.string	"frameBuffer"
.LASF92:
	.string	"_trans"
.LASF68:
	.string	"spotCutoff"
.LASF96:
	.string	"_tex_env"
.LASF120:
	.string	"func"
.LASF188:
	.string	"curmat"
.LASF233:
	.string	"kill"
.LASF107:
	.string	"mode"
.LASF212:
	.string	"_clearcolor"
.LASF102:
	.string	"maxlod"
.LASF77:
	.string	"GL_STATE_NONE"
.LASF30:
	.string	"xfbMode"
.LASF40:
	.string	"_gx_litobj"
.LASF75:
	.string	"shininess"
.LASF185:
	.string	"cur_mode"
.LASF169:
	.string	"_vertexelements"
.LASF50:
	.string	"GXColorf"
.LASF111:
	.string	"CargOp"
.LASF180:
	.string	"_cleardepth"
.LASF65:
	.string	"diffuse"
.LASF164:
	.string	"_tempnormalelement"
.LASF150:
	.string	"title"
.LASF176:
	.string	"cur_tex_client"
.LASF167:
	.string	"vert"
.LASF215:
	.string	"fog_mode"
.LASF27:
	.string	"viYOrigin"
.LASF217:
	.string	"fog_endz"
.LASF173:
	.string	"_type"
.LASF15:
	.string	"float"
.LASF97:
	.string	"min_filter"
.LASF230:
	.string	"displayfunc"
.LASF232:
	.string	"count"
.LASF94:
	.string	"bias"
.LASF39:
	.string	"GXColor"
.LASF205:
	.string	"line_width"
.LASF6:
	.string	"long long unsigned int"
.LASF213:
	.string	"Trans"
.LASF151:
	.string	"glutInit"
.LASF207:
	.string	"pack"
.LASF74:
	.string	"emissive"
.LASF202:
	.string	"viewPort"
.LASF143:
	.string	"GX_SetModViewport"
.LASF181:
	.string	"model_stack"
.LASF209:
	.string	"color_write_mask"
.LASF110:
	.string	"Carg"
.LASF52:
	.string	"enable"
.LASF220:
	.string	"glTexEnvs"
.LASF20:
	.string	"timespec"
.LASF219:
	.string	"fog_color"
.LASF13:
	.string	"tv_nsec"
.LASF10:
	.string	"size_t"
.LASF154:
	.string	"watchdog_conf"
.LASF82:
	.string	"width"
.LASF228:
	.string	"offset"
.LASF210:
	.string	"copy_mat_enabled"
.LASF23:
	.string	"fbWidth"
.LASF175:
	.string	"cur_tex"
.LASF14:
	.string	"double"
.LASF109:
	.string	"comAlpha"
.LASF174:
	.string	"_GLtype"
.LASF115:
	.string	"rgb_scale"
.LASF206:
	.string	"point_size"
.LASF137:
	.string	"glutSwapBuffers"
.LASF133:
	.string	"glutGet"
.LASF152:
	.string	"argcp"
.LASF19:
	.string	"true"
.LASF211:
	.string	"copy_material"
.LASF79:
	.string	"GL_STATE_NEWLIST"
.LASF184:
	.string	"curmtx"
.LASF64:
	.string	"ambient"
.LASF201:
	.string	"scissorInfo"
.LASF127:
	.string	"chan"
.LASF190:
	.string	"gxwinding"
.LASF121:
	.string	"glutIdleFunc"
.LASF41:
	.string	"GXLightObj"
.LASF160:
	.string	"yscale"
.LASF95:
	.string	"ColorTrans"
.LASF148:
	.string	"glutInitWindowSize"
.LASF193:
	.string	"blend_src"
.LASF76:
	.string	"Material"
.LASF179:
	.string	"depthfunction"
.LASF117:
	.string	"glTexEnvSet"
.LASF200:
	.string	"scissor_test"
.LASF42:
	.string	"syswd_t"
.LASF145:
	.string	"yOrig"
.LASF11:
	.string	"time_t"
.LASF182:
	.string	"projection_stack"
.LASF171:
	.string	"_colorelements"
.LASF129:
	.string	"retval"
.LASF85:
	.string	"swap"
.LASF24:
	.string	"efbHeight"
.LASF5:
	.string	"long long int"
.LASF56:
	.string	"VertexArray"
.LASF204:
	.string	"normFar"
.LASF46:
	.string	"GLuint"
.LASF159:
	.string	"conWidth"
.LASF140:
	.string	"yOrigin"
.LASF221:
	.string	"read_mode"
.LASF59:
	.string	"elem_size"
.LASF28:
	.string	"viWidth"
.LASF80:
	.string	"glState"
.LASF69:
	.string	"constant"
.LASF136:
	.string	"alarm"
.LASF214:
	.string	"fog_enable"
.LASF32:
	.string	"sample_pattern"
.LASF17:
	.string	"bool"
.LASF33:
	.string	"vfilter"
.LASF225:
	.string	"watchdog"
.LASF48:
	.string	"VertexElement"
.LASF227:
	.string	"_console_inited"
.LASF104:
	.string	"biasclamp"
.LASF87:
	.string	"row_length"
.LASF178:
	.string	"depthupdate"
.LASF141:
	.string	"HideConsole"
.LASF54:
	.string	"size"
.LASF72:
	.string	"LightObj"
.LASF29:
	.string	"viHeight"
.LASF99:
	.string	"wrap_s"
.LASF100:
	.string	"wrap_t"
.LASF70:
	.string	"linear"
.LASF35:
	.string	"_vecf"
.LASF194:
	.string	"blend_dst"
.LASF83:
	.string	"height"
.LASF165:
	.string	"_temptexcoordelement"
.LASF226:
	.string	"_console_enabled"
.LASF26:
	.string	"viXOrigin"
.LASF153:
	.string	"argv"
.LASF34:
	.string	"GXRModeObj"
.LASF16:
	.string	"long double"
.LASF138:
	.string	"GX_SetModScissor"
.LASF135:
	.string	"timercallback"
.LASF236:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\freespace2wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF125:
	.string	"getBackFramebuffer"
.LASF208:
	.string	"unpack"
.LASF126:
	.string	"power_off"
.LASF63:
	.string	"spotDir"
.LASF51:
	.string	"_array"
.LASF67:
	.string	"spotExponent"
.LASF71:
	.string	"quad_t"
.LASF103:
	.string	"lodbias"
.LASF186:
	.string	"lights"
.LASF4:
	.string	"short int"
.LASF101:
	.string	"minlod"
.LASF98:
	.string	"max_filter"
.LASF9:
	.string	"long int"
.LASF21:
	.string	"_gx_rmodeobj"
.LASF224:
	.string	"rmode"
.LASF123:
	.string	"getFPS"
.LASF134:
	.string	"glutThread"
.LASF43:
	.string	"GLenum"
.LASF61:
	.string	"_light"
.LASF114:
	.string	"color"
.LASF124:
	.string	"getFrontFramebuffer"
.LASF47:
	.string	"GLsizei"
.LASF222:
	.string	"call_offset"
.LASF163:
	.string	"_tempcolorelement"
.LASF37:
	.string	"lwp_t"
.LASF89:
	.string	"skip_pixels"
.LASF112:
	.string	"Aarg"
.LASF106:
	.string	"maxaniso"
.LASF130:
	.string	"start"
.LASF218:
	.string	"fog_density"
.LASF53:
	.string	"stride"
.LASF191:
	.string	"lighting"
.LASF12:
	.string	"tv_sec"
.LASF235:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/glut.c"
.LASF7:
	.string	"long unsigned int"
.LASF132:
	.string	"draw_thread"
.LASF195:
	.string	"blend_op"
.LASF147:
	.string	"farZ"
.LASF91:
	.string	"pixelStore"
.LASF144:
	.string	"xOrig"
.LASF78:
	.string	"GL_STATE_BEGIN"
.LASF234:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF55:
	.string	"type"
.LASF1:
	.string	"unsigned char"
.LASF62:
	.string	"enabled"
.LASF88:
	.string	"skip_rows"
.LASF18:
	.string	"false"
.LASF172:
	.string	"vert_i"
.LASF86:
	.string	"lsb_first"
.LASF116:
	.string	"alpha_scale"
.LASF158:
	.string	"conHeight"
.LASF216:
	.string	"fog_startz"
.LASF36:
	.string	"Vector"
.LASF108:
	.string	"comRGB"
.LASF199:
	.string	"fb_max_width"
.LASF93:
	.string	"scale"
.LASF203:
	.string	"normNear"
.LASF177:
	.string	"depthtestenabled"
.LASF22:
	.string	"viTVMode"
.LASF38:
	.string	"_gx_color"
.LASF105:
	.string	"edgelod"
.LASF189:
	.string	"gxcullfaceanabled"
.LASF57:
	.string	"_stack"
.LASF142:
	.string	"GX_SetMaxScissor"
.LASF3:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
.LASF58:
	.string	"begin"
.LASF166:
	.string	"norm"
.LASF146:
	.string	"nearZ"
.LASF229:
	.string	"incFPS"
.LASF128:
	.string	"glutMainLoop"
.LASF31:
	.string	"field_rendering"
.LASF139:
	.string	"xOrigin"
.LASF25:
	.string	"xfbHeight"
.LASF90:
	.string	"alignment"
.LASF49:
	.string	"TexCoordElement"
.LASF44:
	.string	"GLboolean"
.LASF161:
	.string	"gp_fifo"
.LASF238:
	.string	"ShowConsole"
.LASF237:
	.string	"_glState"
.LASF84:
	.string	"_pixelStore"
.LASF122:
	.string	"computeFactor"
.LASF196:
	.string	"cull_mode"
.LASF113:
	.string	"AargOp"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
