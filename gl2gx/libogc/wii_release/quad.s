	.file	"quad.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.type	gluQuadricError, @function
gluQuadricError:
.LFB4:
	.file 1 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libutil/quad.c"
	.loc 1 85 0
.LVL0:
	mflr 0
.LCFI0:
	stwu 1,-8(1)
.LCFI1:
	stw 0,12(1)
.LCFI2:
	.loc 1 86 0
	lwz 0,16(3)
	.loc 1 85 0
	mr 3,4
.LVL1:
	.loc 1 86 0
	cmpwi 7,0,0
	beq- 7,.L4
.LVL2:
	.loc 1 87 0
	mtctr 0
	bctrl
.LVL3:
.LVL4:
.L4:
	.loc 1 89 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE4:
	.size	gluQuadricError, .-gluQuadricError
	.align 2
	.globl gluQuadricCallback
	.type	gluQuadricCallback, @function
gluQuadricCallback:
.LFB5:
	.loc 1 93 0
.LVL5:
	.loc 1 94 0
	lis 0,0x1
	ori 0,0,34567
	cmpw 7,4,0
	bne+ 7,.L6
	.loc 1 96 0
	stw 5,16(3)
	.loc 1 102 0
	blr
.L6:
	.loc 1 99 0
	lis 4,0x1
.LVL6:
	ori 4,4,35364
	b gluQuadricError
.LVL7:
.LFE5:
	.size	gluQuadricCallback, .-gluQuadricCallback
	.align 2
	.globl gluQuadricNormals
	.type	gluQuadricNormals, @function
gluQuadricNormals:
.LFB6:
	.loc 1 106 0
.LVL8:
	.loc 1 107 0
	addis 9,4,0xfffe
	addi 9,9,31072
	cmplwi 7,9,2
	ble- 7,.L12
	.loc 1 113 0
	lis 4,0x1
.LVL9:
	ori 4,4,35364
	b gluQuadricError
.LVL10:
.L12:
	.loc 1 116 0
	stw 4,0(3)
	.loc 1 117 0
	blr
.LFE6:
	.size	gluQuadricNormals, .-gluQuadricNormals
	.align 2
	.globl gluQuadricTexture
	.type	gluQuadricTexture, @function
gluQuadricTexture:
.LFB7:
	.loc 1 121 0
.LVL11:
	.loc 1 122 0
	stb 4,4(3)
	.loc 1 123 0
	blr
.LFE7:
	.size	gluQuadricTexture, .-gluQuadricTexture
	.align 2
	.globl gluQuadricOrientation
	.type	gluQuadricOrientation, @function
gluQuadricOrientation:
.LFB8:
	.loc 1 127 0
.LVL12:
	.loc 1 128 0
	addis 9,4,0xfffe
	addi 9,9,31052
	cmplwi 7,9,1
	ble- 7,.L19
	.loc 1 133 0
	lis 4,0x1
.LVL13:
	ori 4,4,35364
	b gluQuadricError
.LVL14:
.L19:
	.loc 1 136 0
	stw 4,8(3)
	.loc 1 137 0
	blr
.LFE8:
	.size	gluQuadricOrientation, .-gluQuadricOrientation
	.align 2
	.globl gluQuadricDrawStyle
	.type	gluQuadricDrawStyle, @function
gluQuadricDrawStyle:
.LFB9:
	.loc 1 141 0
.LVL15:
	.loc 1 142 0
	addis 9,4,0xfffe
	addi 9,9,31062
	cmplwi 7,9,3
	ble- 7,.L24
	.loc 1 149 0
	lis 4,0x1
.LVL16:
	ori 4,4,35364
	b gluQuadricError
.LVL17:
.L24:
	.loc 1 152 0
	stw 4,12(3)
	.loc 1 153 0
	blr
.LFE9:
	.size	gluQuadricDrawStyle, .-gluQuadricDrawStyle
	.align 2
	.globl gluSphere
	.type	gluSphere, @function
gluSphere:
.LFB13:
	.loc 1 702 0
.LVL18:
	mfcr 12
.LCFI3:
	cmpwi 7,4,239
	mflr 0
.LCFI4:
	stwu 1,-11760(1)
.LCFI5:
	stfd 26,11712(1)
.LCFI6:
	fmr 26,1
	stfd 16,11632(1)
.LCFI7:
	stfd 17,11640(1)
.LCFI8:
	stfd 18,11648(1)
.LCFI9:
	stfd 19,11656(1)
.LCFI10:
	stfd 20,11664(1)
.LCFI11:
	stfd 21,11672(1)
.LCFI12:
	stfd 22,11680(1)
.LCFI13:
	stfd 23,11688(1)
.LCFI14:
	stfd 24,11696(1)
.LCFI15:
	stfd 25,11704(1)
.LCFI16:
	stfd 27,11720(1)
.LCFI17:
	stfd 28,11728(1)
.LCFI18:
	stfd 29,11736(1)
.LCFI19:
	stfd 30,11744(1)
.LCFI20:
	stfd 31,11752(1)
.LCFI21:
	stmw 14,11560(1)
.LCFI22:
	mr 24,4
	stw 0,11764(1)
.LCFI23:
	mr 25,3
	stw 12,11556(1)
.LCFI24:
	.loc 1 702 0
	ble- 7,.L28
.LVL19:
	li 24,239
	b .L172
.LVL20:
.L28:
	.loc 1 727 0
	cmpwi 7,4,1
	ble- 7,.L29
.L172:
	cmpwi 7,5,239
	mr 21,5
	ble- 7,.L31
.LVL21:
	li 21,239
	b .L173
.LVL22:
.L31:
	cmpwi 7,5,0
	ble- 7,.L29
.L173:
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	fcmpu 7,26,0
	bnl+ 7,.L33
.LVL23:
.L29:
	.loc 1 1164 0
	lwz 0,11764(1)
	.loc 1 728 0
	lis 4,0x1
.LVL24:
	.loc 1 1164 0
	lwz 12,11556(1)
	.loc 1 728 0
	mr 3,25
	.loc 1 1164 0
	mtlr 0
	lmw 14,11560(1)
.LVL25:
	lfd 16,11632(1)
	.loc 1 728 0
	ori 4,4,35365
	.loc 1 1164 0
	lfd 17,11640(1)
	mtcrf 8,12
	lfd 18,11648(1)
	lfd 19,11656(1)
	lfd 20,11664(1)
	lfd 21,11672(1)
	lfd 22,11680(1)
	lfd 23,11688(1)
	lfd 24,11696(1)
	lfd 25,11704(1)
	lfd 26,11712(1)
.LVL26:
	lfd 27,11720(1)
	lfd 28,11728(1)
	lfd 29,11736(1)
	lfd 30,11744(1)
	lfd 31,11752(1)
	addi 1,1,11760
	.loc 1 728 0
	b gluQuadricError
.LVL27:
.L33:
	.loc 1 737 0
	lwz 23,0(25)
	lis 0,0x1
	ori 0,0,34464
	li 15,1
.LVL28:
	cmpw 7,23,0
	li 22,0
.LVL29:
	beq- 7,.L37
	.loc 1 741 0
	xoris 0,23,0xfffe
	cmpwi 7,0,-31071
	bne 7,.L38
	.loc 1 742 0
	lwz 9,12(25)
	xoris 0,9,0xfffe
	cmpwi 7,0,-31062
	beq 7,.L38
	.loc 1 745 0
	lis 0,0x1
	li 22,1
	ori 0,0,34475
	cmpw 7,9,0
	beq- 7,.L37
	li 15,0
	b .L37
.L38:
	li 15,0
	li 22,0
.L37:
	.loc 1 752 0
	lis 28,0x4330
	xoris 0,24,0x8000
	stw 0,11540(1)
	lis 9,.LC2@ha
	stw 28,11536(1)
	.loc 1 754 0
	cmpwi 4,15,0
	.loc 1 752 0
	lfs 28,.LC2@l(9)
	lis 9,.LC3@ha
	lfd 0,11536(1)
	.loc 1 745 0
	li 20,0
.LVL30:
	.loc 1 752 0
	lfd 27,.LC3@l(9)
	.loc 1 745 0
	li 31,0
	.loc 1 752 0
	fsub 29,0,28
	.loc 1 755 0
	addi 26,1,1928
	.loc 1 756 0
	addi 27,1,2888
	.loc 1 752 0
	addi 29,1,8
	.loc 1 753 0
	addi 30,1,968
.L43:
	.loc 1 752 0
	xoris 0,20,0x8000
	stw 28,11528(1)
	stw 0,11532(1)
	.loc 1 750 0
	addi 20,20,1
	.loc 1 752 0
	lfd 31,11528(1)
	fsub 31,31,28
	fmul 31,31,27
	fdiv 31,31,29
	frsp 31,31
	fmr 1,31
	bl sin
	frsp 30,1
	.loc 1 753 0
	fmr 1,31
	bl cos
	.loc 1 750 0
	cmpw 7,20,24
	.loc 1 753 0
	frsp 1,1
	.loc 1 754 0
	beq- 4,.L44
	.loc 1 755 0
	stfsx 30,31,26
	.loc 1 756 0
	stfsx 1,31,27
.L44:
	.loc 1 752 0
	stfsx 30,31,29
	.loc 1 753 0
	stfsx 1,31,30
	.loc 1 750 0
	addi 31,31,4
	bne+ 7,.L43
	.loc 1 761 0
	lis 19,0x4330
	xoris 0,21,0x8000
	stw 0,11532(1)
	lis 9,.LC2@ha
	stw 19,11528(1)
	.loc 1 763 0
	lis 30,0x1
	.loc 1 761 0
	lfs 29,.LC2@l(9)
	lis 9,.LC4@ha
	lfd 0,11528(1)
	.loc 1 762 0
	cmpwi 4,15,0
	.loc 1 761 0
	lfd 28,.LC4@l(9)
	.loc 1 763 0
	ori 30,30,34484
	.loc 1 761 0
	fsub 30,0,29
	.loc 1 750 0
	li 26,0
.LVL31:
	li 31,0
	addi 27,1,7688
	addi 28,1,8648
	.loc 1 771 0
	addi 17,1,5768
	.loc 1 772 0
	addi 18,1,6728
	.loc 1 702 0
	addi 29,21,1
.LVL32:
.L47:
	.loc 1 761 0
	xoris 0,26,0x8000
	stw 19,11528(1)
	stw 0,11532(1)
	fmr 25,30
	lfd 0,11528(1)
	fsub 0,0,29
	fmul 0,0,28
	fdiv 0,0,30
	frsp 31,0
	.loc 1 762 0
	beq- 4,.L48
	.loc 1 763 0
	lwz 0,8(25)
	cmpw 7,0,30
	bne+ 7,.L50
	.loc 1 764 0
	fmr 1,31
	bl sin
	frsp 0,1
	.loc 1 765 0
	fmr 1,31
	.loc 1 764 0
	stfsx 0,31,27
	.loc 1 765 0
	bl cos
	frsp 1,1
	b .L185
.L50:
	.loc 1 767 0
	fmr 1,31
	bl sin
	frsp 0,1
	.loc 1 768 0
	fmr 1,31
	.loc 1 767 0
	fneg 0,0
	stfsx 0,31,27
	.loc 1 768 0
	bl cos
	frsp 1,1
	fneg 1,1
.L185:
	stfsx 1,31,28
.L48:
	.loc 1 771 0
	fmr 1,31
	.loc 1 760 0
	addi 26,26,1
	.loc 1 702 0
	mr 16,29
	.loc 1 771 0
	bl sin
	fmul 0,26,1
	.loc 1 772 0
	fmr 1,31
	.loc 1 771 0
	frsp 0,0
	stfsx 0,31,17
	.loc 1 772 0
	bl cos
	.loc 1 760 0
	cmpw 7,26,29
	.loc 1 772 0
	fmul 1,26,1
	frsp 1,1
	stfsx 1,31,18
	.loc 1 760 0
	addi 31,31,4
	bne+ 7,.L47
	.loc 1 778 0
	cmpwi 7,22,0
	.loc 1 776 0
	slwi 0,21,2
	add 9,1,0
	.loc 1 775 0
	li 0,0
	stw 0,5768(1)
	.loc 1 776 0
	stw 0,5768(9)
	.loc 1 778 0
	beq+ 7,.L53
	.loc 1 781 0
	lis 27,0x4330
	xoris 0,20,0x8000
	stw 0,11540(1)
	lis 9,.LC2@ha
	stw 27,11536(1)
	.loc 1 778 0
	li 30,0
.LVL33:
	.loc 1 781 0
	lfs 29,.LC2@l(9)
	lis 9,.LC6@ha
	lfd 0,11536(1)
	.loc 1 778 0
	li 31,0
	.loc 1 781 0
	lfs 27,.LC6@l(9)
	lis 9,.LC3@ha
	fsub 30,0,29
	lfd 28,.LC3@l(9)
	addi 28,1,3848
	.loc 1 782 0
	addi 29,1,4808
.L55:
	.loc 1 781 0
	xoris 0,30,0x8000
	stw 27,11528(1)
	stw 0,11532(1)
	.loc 1 779 0
	addi 30,30,1
	.loc 1 781 0
	lfd 31,11528(1)
.LVL34:
	fsub 31,31,29
	fsub 31,31,27
	fmul 31,31,28
	fdiv 31,31,30
	frsp 31,31
	fmr 1,31
	bl sin
	frsp 0,1
	.loc 1 782 0
	fmr 1,31
	.loc 1 781 0
	stfsx 0,31,28
	.loc 1 782 0
	bl cos
	.loc 1 779 0
	cmpw 7,30,20
	.loc 1 782 0
	frsp 1,1
	stfsx 1,31,29
	.loc 1 779 0
	addi 31,31,4
	bne+ 7,.L55
.LVL35:
	.loc 1 785 0
	lis 9,.LC2@ha
	.loc 1 786 0
	lwz 11,8(25)
	lis 0,0x1
	.loc 1 785 0
	lfs 28,.LC2@l(9)
	lis 9,.LC6@ha
	.loc 1 786 0
	ori 0,0,34484
	.loc 1 785 0
	lfs 29,.LC6@l(9)
	lis 9,.LC4@ha
	.loc 1 786 0
	cmpw 4,11,0
	.loc 1 785 0
	lfd 30,.LC4@l(9)
	.loc 1 786 0
	li 30,0
.LVL36:
	li 31,0
	addi 28,1,9608
	addi 29,1,10568
.LVL37:
.L57:
	.loc 1 785 0
	xoris 0,30,0x8000
	stw 0,11532(1)
	lis 0,0x4330
	stw 0,11528(1)
	lfd 0,11528(1)
	fsub 0,0,28
	fsub 0,0,29
	fmul 0,0,30
	fdiv 0,0,25
	frsp 31,0
	.loc 1 786 0
	bne+ 4,.L58
	.loc 1 787 0
	fmr 1,31
	bl sin
	frsp 0,1
	.loc 1 788 0
	fmr 1,31
	.loc 1 787 0
	stfsx 0,31,28
	.loc 1 788 0
	bl cos
	frsp 1,1
	b .L186
.L58:
	.loc 1 790 0
	fmr 1,31
	bl sin
	frsp 0,1
	.loc 1 791 0
	fmr 1,31
	.loc 1 790 0
	fneg 0,0
	stfsx 0,31,28
	.loc 1 791 0
	bl cos
	frsp 1,1
	fneg 1,1
.L186:
	.loc 1 784 0
	addi 30,30,1
	.loc 1 791 0
	stfsx 1,31,29
	.loc 1 784 0
	cmpw 7,30,26
	addi 31,31,4
	bne+ 7,.L57
.LVL38:
.L53:
	.loc 1 796 0
	lfs 0,8(1)
	.loc 1 798 0
	cmpwi 7,15,0
	.loc 1 796 0
	slwi 0,20,2
	addi 9,1,8
	stfsx 0,9,0
	add 11,0,9
	.loc 1 797 0
	lfs 0,968(1)
	stfs 0,960(11)
	.loc 1 798 0
	beq- 7,.L61
	.loc 1 799 0
	lfs 0,1928(1)
	stfs 0,1920(11)
	.loc 1 800 0
	lfs 0,2888(1)
	stfs 0,2880(11)
.L61:
	.loc 1 802 0
	cmpwi 7,22,0
	beq- 7,.L63
	.loc 1 803 0
	lfs 0,3848(1)
	stfs 0,3840(11)
	.loc 1 804 0
	lfs 0,4808(1)
	stfs 0,4800(11)
.L63:
	.loc 1 807 0
	lwz 9,12(25)
	lis 0,0x1
	ori 0,0,34475
	cmpw 7,9,0
	beq- 7,.L67
	bgt- 7,.L69
	xoris 0,9,0xfffe
	cmpwi 7,0,-31062
	bne 7,.L171
	b .L66
.L69:
	xoris 0,9,0xfffe
	cmpwi 7,0,-31060
	beq 7,.L68
	xoris 0,9,0xfffe
	cmpwi 7,0,-31059
	bne 7,.L171
.L67:
	.loc 1 1112 0
	lis 9,.LC2@ha
	.loc 1 1096 0
	lis 27,0x1
	.loc 1 1112 0
	lfs 26,.LC2@l(9)
.LVL39:
	lis 9,.LC7@ha
	.loc 1 1096 0
	lis 28,0x1
	.loc 1 1112 0
	lfs 27,.LC7@l(9)
	.loc 1 1096 0
	ori 27,27,34464
	ori 28,28,34465
	.loc 1 807 0
	li 29,1
.LVL40:
	.loc 1 1088 0
	addi 14,1,8648
	.loc 1 1095 0
	addi 26,20,1
	.loc 1 1103 0
	addi 15,1,1928
.LVL41:
	addi 17,1,2888
	.loc 1 1098 0
	addi 18,1,3848
	addi 19,1,4808
	.loc 1 1115 0
	addi 22,1,8
.LVL42:
	addi 23,1,968
	b .L70
.LVL43:
.L68:
	.loc 1 814 0
	lbz 0,4(25)
	li 10,0
.LVL44:
	stw 21,11544(1)
.LVL45:
	cmpwi 7,0,0
	bne- 7,.L73
	.loc 1 821 0
	lis 0,0x1
	.loc 1 819 0
	lfs 30,5772(1)
.LVL46:
	.loc 1 821 0
	ori 0,0,34464
	.loc 1 820 0
	lfs 28,6732(1)
.LVL47:
	.loc 1 821 0
	cmpw 7,23,0
	.loc 1 816 0
	addi 0,21,-1
	stw 0,11544(1)
.LVL48:
	.loc 1 821 0
	beq- 7,.L75
	xoris 0,23,0xfffe
	cmpwi 7,0,-31071
	bne 7,.L74
	.loc 1 823 0
	lfs 31,9612(1)
.LVL49:
	.loc 1 824 0
	lfs 29,10572(1)
.LVL50:
	b .L74
.LVL51:
.L75:
	.loc 1 829 0
	lfs 2,7688(1)
	lfs 1,1928(1)
	lfs 0,2888(1)
	fmuls 1,2,1
	lfs 3,8648(1)
	fmuls 2,2,0
	.loc 1 827 0
	lfs 31,7692(1)
.LVL52:
	.loc 1 828 0
	lfs 29,8652(1)
.LVL53:
	.loc 1 829 0
	bl glNormal3f
.LVL54:
.L74:
	.loc 1 836 0
	li 3,6
	.loc 1 837 0
	frsp 27,26
	.loc 1 836 0
	bl glBegin
.LVL55:
	.loc 1 837 0
	lis 9,.LC14@ha
	lfs 1,.LC14@l(9)
	fmr 3,27
	fmr 2,1
	bl glVertex3f
	.loc 1 838 0
	lis 0,0x1
	lwz 9,8(25)
	ori 0,0,34484
	cmpw 7,9,0
	beq- 7,.L77
	.loc 1 862 0
	lis 28,0x1
	lis 29,0x1
	ori 28,28,34464
	ori 29,29,34465
	.loc 1 838 0
	li 30,0
.LVL56:
	li 31,0
	.loc 1 861 0
	addi 27,20,1
	.loc 1 864 0
	addi 18,1,1928
	addi 19,1,2888
	.loc 1 869 0
	addi 22,1,3848
.LVL57:
	addi 23,1,4808
	.loc 1 877 0
	addi 24,1,8
.LVL58:
	addi 26,1,968
.LVL59:
	b .L79
.LVL60:
.L77:
	.loc 1 838 0
	slwi 9,20,2
	.loc 1 702 0
	addi 10,20,1
	.loc 1 838 0
	addi 0,1,2888
	.loc 1 702 0
	slwi 11,10,2
	.loc 1 838 0
	add 26,0,9
.LVL61:
	.loc 1 702 0
	addi 0,1,4808
	add 27,0,11
	.loc 1 838 0
	addi 0,1,8
	add 28,0,9
	addi 0,1,968
	add 29,0,9
	addi 0,1,1928
	.loc 1 840 0
	lis 22,0x1
.LVL62:
	lis 23,0x1
	.loc 1 838 0
	add 30,0,9
.LVL63:
	.loc 1 702 0
	addi 0,1,3848
	add 31,0,11
	.loc 1 839 0
	mr 19,10
	.loc 1 840 0
	ori 22,22,34464
	ori 23,23,34465
	.loc 1 702 0
	li 24,0
.LVL64:
	b .L80
.L81:
	.loc 1 840 0
	lwz 0,0(25)
	cmpw 7,0,22
	cmpw 6,0,23
	beq- 7,.L83
	bne+ 6,.L82
	b .L84
.L83:
	.loc 1 842 0
	lfs 1,0(30)
	fmr 3,29
	lfs 2,0(26)
	fmuls 1,31,1
	fmuls 2,31,2
	b .L187
.LVL65:
.L84:
	.loc 1 847 0
	subf 0,24,20
	.loc 1 848 0
	fmr 3,29
	.loc 1 847 0
	cmpw 7,0,20
	beq- 7,.L82
.LVL66:
	.loc 1 848 0
	lfs 1,0(31)
	lfs 2,0(27)
	fmuls 1,31,1
	fmuls 2,31,2
.L187:
	bl glNormal3f
.LVL67:
.L82:
	.loc 1 857 0
	lfs 1,0(28)
	fmr 3,28
	lfs 2,0(29)
	addi 24,24,1
	fmuls 1,30,1
	addi 28,28,-4
	fmuls 2,30,2
	addi 29,29,-4
	addi 30,30,-4
	addi 26,26,-4
	addi 31,31,-4
	addi 27,27,-4
	bl glVertex3f
.L80:
	.loc 1 839 0
	cmpw 7,24,19
	bne+ 7,.L81
	b .L86
.LVL68:
.L87:
	.loc 1 862 0
	lwz 0,0(25)
	cmpw 7,0,28
	cmpw 6,0,29
	beq- 7,.L89
	bne+ 6,.L88
	b .L90
.L89:
	.loc 1 864 0
	lfsx 1,31,18
	lfsx 2,31,19
	b .L188
.L90:
	.loc 1 869 0
	lfsx 1,31,22
	lfsx 2,31,23
.L188:
	fmuls 1,31,1
	fmuls 2,31,2
	fmr 3,29
	bl glNormal3f
.L88:
	.loc 1 877 0
	lfsx 1,31,24
	fmr 3,28
	lfsx 2,31,26
	.loc 1 861 0
	addi 30,30,1
	.loc 1 877 0
	fmuls 1,30,1
	.loc 1 861 0
	addi 31,31,4
	.loc 1 877 0
	fmuls 2,30,2
	bl glVertex3f
.LVL69:
.L79:
	.loc 1 861 0
	cmpw 7,30,27
	bne+ 7,.L87
.LVL70:
.L86:
	.loc 1 881 0
	bl glEnd
	.loc 1 886 0
	lwz 9,0(25)
	lis 0,0x1
	.loc 1 884 0
	lwz 11,11544(1)
	.loc 1 886 0
	ori 0,0,34464
	.loc 1 884 0
	addi 10,1,8
	.loc 1 886 0
	cmpw 7,9,0
	.loc 1 884 0
	slwi 0,11,2
	add 11,0,10
	lfs 30,5760(11)
.LVL71:
	.loc 1 885 0
	lfs 28,6720(11)
.LVL72:
	.loc 1 886 0
	beq- 7,.L92
	xoris 0,9,0xfffe
	cmpwi 7,0,-31071
	bne 7,.L91
	.loc 1 888 0
	slwi 9,21,2
	add 9,9,10
	.loc 1 889 0
	lfs 29,10560(9)
	.loc 1 888 0
	lfs 31,9600(9)
.LVL73:
	b .L91
.LVL74:
.L92:
	.loc 1 894 0
	slwi 9,21,2
	.loc 1 893 0
	lfs 29,8640(11)
	.loc 1 894 0
	add 9,9,10
	.loc 1 892 0
	lfs 31,7680(11)
.LVL75:
	.loc 1 894 0
	lfs 0,7680(9)
	lfs 1,1920(9)
	lfs 2,2880(9)
	fmuls 1,0,1
	lfs 3,8640(9)
	fmuls 2,0,2
	bl glNormal3f
.LVL76:
.L91:
	.loc 1 901 0
	li 3,6
	bl glBegin
	.loc 1 902 0
	lis 9,.LC14@ha
	lfs 1,.LC14@l(9)
	fneg 3,27
	fmr 2,1
	bl glVertex3f
	.loc 1 903 0
	lis 0,0x1
	lwz 9,8(25)
	ori 0,0,34484
	cmpw 7,9,0
	bne+ 7,.L94
	.loc 1 905 0
	lis 28,0x1
	lis 29,0x1
	ori 28,28,34464
	ori 29,29,34465
	.loc 1 903 0
	li 30,0
.LVL77:
	li 31,0
	.loc 1 904 0
	addi 27,20,1
	.loc 1 907 0
	addi 18,1,1928
	addi 19,1,2888
	.loc 1 912 0
	addi 22,1,3848
	addi 23,1,4808
	.loc 1 920 0
	addi 24,1,8
	addi 26,1,968
	b .L96
.LVL78:
.L94:
	.loc 1 903 0
	slwi 9,20,2
	.loc 1 702 0
	addi 10,20,1
	.loc 1 903 0
	addi 0,1,2888
	.loc 1 702 0
	slwi 11,10,2
	.loc 1 903 0
	add 26,0,9
	.loc 1 702 0
	addi 0,1,4808
	add 27,0,11
	.loc 1 903 0
	addi 0,1,8
	add 28,0,9
	addi 0,1,968
	add 29,0,9
	addi 0,1,1928
	.loc 1 925 0
	lis 22,0x1
	lis 23,0x1
	.loc 1 903 0
	add 30,0,9
	.loc 1 702 0
	addi 0,1,3848
	add 31,0,11
	.loc 1 924 0
	mr 19,10
	.loc 1 925 0
	ori 22,22,34464
	ori 23,23,34465
	.loc 1 702 0
	li 24,0
	b .L97
.LVL79:
.L98:
	.loc 1 905 0
	lwz 0,0(25)
	cmpw 7,0,28
	cmpw 6,0,29
	beq- 7,.L100
	bne+ 6,.L99
	b .L101
.L100:
	.loc 1 907 0
	lfsx 1,31,18
	lfsx 2,31,19
	b .L189
.L101:
	.loc 1 912 0
	lfsx 1,31,22
	lfsx 2,31,23
.L189:
	fmuls 1,31,1
	fmuls 2,31,2
	fmr 3,29
	bl glNormal3f
.L99:
	.loc 1 920 0
	lfsx 1,31,24
	fmr 3,28
	lfsx 2,31,26
	.loc 1 904 0
	addi 30,30,1
	.loc 1 920 0
	fmuls 1,30,1
	.loc 1 904 0
	addi 31,31,4
	.loc 1 920 0
	fmuls 2,30,2
	bl glVertex3f
.LVL80:
.L96:
	.loc 1 904 0
	cmpw 7,30,27
	bne+ 7,.L98
	b .L102
.LVL81:
.L103:
	.loc 1 925 0
	lwz 0,0(25)
	cmpw 7,0,22
	cmpw 6,0,23
	beq- 7,.L105
	bne+ 6,.L104
	b .L106
.L105:
	.loc 1 927 0
	lfs 1,0(30)
	fmr 3,29
	lfs 2,0(26)
	fmuls 1,31,1
	fmuls 2,31,2
	b .L190
.LVL82:
.L106:
	.loc 1 932 0
	subf 0,24,20
	.loc 1 933 0
	fmr 3,29
	.loc 1 932 0
	cmpw 7,0,20
	beq- 7,.L104
.LVL83:
	.loc 1 933 0
	lfs 1,0(31)
	lfs 2,0(27)
	fmuls 1,31,1
	fmuls 2,31,2
.L190:
	bl glNormal3f
.LVL84:
.L104:
	.loc 1 942 0
	lfs 1,0(28)
	fmr 3,28
	lfs 2,0(29)
	addi 24,24,1
	fmuls 1,30,1
	addi 28,28,-4
	fmuls 2,30,2
	addi 29,29,-4
	addi 30,30,-4
	addi 26,26,-4
	addi 31,31,-4
	addi 27,27,-4
	bl glVertex3f
.L97:
	.loc 1 924 0
	cmpw 7,24,19
	bne+ 7,.L103
.LVL85:
.L102:
	.loc 1 946 0
	bl glEnd
	li 10,1
.LVL86:
.L73:
	.loc 1 1000 0
	lis 9,.LC2@ha
	.loc 1 946 0
	slwi 11,10,2
	.loc 1 1000 0
	lfs 24,.LC2@l(9)
	lis 9,.LC7@ha
	lfs 27,.LC7@l(9)
	.loc 1 946 0
	addi 0,1,5768
	.loc 1 702 0
	addi 9,10,1
	.loc 1 946 0
	add 24,0,11
.LVL87:
	.loc 1 702 0
	slwi 9,9,2
	addi 0,1,8648
	add 26,0,9
.LVL88:
	.loc 1 946 0
	addi 0,1,6728
	add 27,0,11
	.loc 1 702 0
	addi 0,1,9608
	add 19,0,9
	.loc 1 1030 0
	fmr 18,24
	.loc 1 702 0
	addi 0,1,10568
	.loc 1 1030 0
	fmr 25,27
	.loc 1 993 0
	fmr 16,24
	.loc 1 956 0
	lis 17,0x1
	.loc 1 993 0
	fmr 20,27
	.loc 1 962 0
	lis 18,0x1
	.loc 1 1023 0
	fmr 17,24
	.loc 1 956 0
	lis 14,0x1
	.loc 1 1023 0
	fmr 19,27
	.loc 1 702 0
	add 22,0,9
.LVL89:
	addi 0,1,7688
	mr 29,10
.LVL90:
	add 28,0,9
	.loc 1 956 0
	ori 17,17,34464
	.loc 1 979 0
	addi 0,20,1
	.loc 1 962 0
	ori 18,18,34484
	.loc 1 956 0
	ori 14,14,34465
	.loc 1 1003 0
	addi 15,1,8
.LVL91:
	addi 16,1,968
	.loc 1 979 0
	stw 0,11548(1)
	b .L108
.LVL92:
.L109:
	.loc 1 956 0
	lwz 0,0(25)
	.loc 1 953 0
	addi 23,29,1
.LVL93:
	.loc 1 952 0
	lfs 22,0(27)
	.loc 1 956 0
	cmpw 7,0,17
	.loc 1 953 0
	lfs 23,4(27)
	.loc 1 954 0
	lfs 28,0(24)
	.loc 1 955 0
	lfs 30,4(24)
	.loc 1 956 0
	beq- 7,.L111
	cmpw 7,0,14
	bne+ 7,.L110
	.loc 1 958 0
	lfs 26,0(19)
.LVL94:
	.loc 1 959 0
	lfs 21,0(22)
	b .L110
.LVL95:
.L111:
	.loc 1 962 0
	lwz 0,8(25)
	lfs 2,0(28)
	cmpw 7,0,18
	lfs 0,0(26)
	lfs 1,-4(28)
	lfs 3,-4(26)
	bne+ 7,.L113
	.loc 1 963 0
	fmr 31,2
.LVL96:
	.loc 1 964 0
	fmr 29,0
	.loc 1 965 0
	fmr 26,1
.LVL97:
	.loc 1 966 0
	fmr 21,3
	b .L110
.LVL98:
.L113:
	.loc 1 968 0
	fmr 31,1
.LVL99:
	.loc 1 969 0
	fmr 29,3
	.loc 1 970 0
	fmr 26,2
.LVL100:
	.loc 1 971 0
	fmr 21,0
.LVL101:
.L110:
	.loc 1 978 0
	li 3,8
	li 30,0
	bl glBegin
.LVL102:
	li 31,0
	b .L115
.LVL103:
.L116:
	.loc 1 980 0
	lwz 0,0(25)
	cmpw 7,0,17
	bne+ 7,.L117
	.loc 1 982 0
	addi 9,31,1928
	addi 11,31,2888
	lfsx 1,9,1
	fmr 3,29
	lfsx 2,11,1
	fmuls 1,31,1
	fmuls 2,31,2
	bl glNormal3f
.L117:
	.loc 1 991 0
	lwz 0,8(25)
	lbz 9,4(25)
	cmpw 7,0,18
	bne+ 7,.L119
	.loc 1 992 0
	cmpwi 7,9,0
	beq+ 7,.L121
	.loc 1 993 0
	lis 11,0x4330
	xoris 0,30,0x8000
	xoris 9,20,0x8000
	stw 0,11532(1)
	stw 9,11540(1)
	xoris 0,23,0x8000
	stw 11,11528(1)
	xoris 9,21,0x8000
	stw 11,11536(1)
	fmr 0,16
	lfd 1,11528(1)
	lfd 12,11536(1)
	stw 0,11532(1)
	fsub 1,1,0
	stw 9,11540(1)
	fsub 12,12,0
	lfd 2,11528(1)
	lfd 13,11536(1)
	frsp 1,1
	fsub 2,2,0
	fsub 13,13,0
	frsp 12,12
	frsp 2,2
	frsp 13,13
	fdivs 1,1,12
	fdivs 2,2,13
	fsubs 1,20,1
	fsubs 2,20,2
	bl glTexCoord2f
.L121:
	.loc 1 996 0
	lfsx 1,31,15
	fmr 3,23
	lfsx 2,31,16
	fmuls 1,30,1
	fmuls 2,30,2
	b .L191
.LVL104:
.L119:
	.loc 1 999 0
	rlwinm 0,9,0,0xff
	cmpwi 7,0,0
	beq+ 7,.L124
	.loc 1 1000 0
	lis 11,0x4330
	xoris 0,30,0x8000
	xoris 9,20,0x8000
	stw 0,11532(1)
	stw 9,11540(1)
	xoris 0,29,0x8000
	stw 11,11528(1)
	xoris 9,21,0x8000
	stw 11,11536(1)
	fmr 0,24
	lfd 1,11528(1)
	lfd 12,11536(1)
	stw 0,11532(1)
	fsub 1,1,0
	stw 9,11540(1)
	fsub 12,12,0
	lfd 2,11528(1)
	lfd 13,11536(1)
	frsp 1,1
	fsub 2,2,0
	fsub 13,13,0
	frsp 12,12
	frsp 2,2
	frsp 13,13
	fdivs 1,1,12
	fdivs 2,2,13
	fsubs 1,27,1
	fsubs 2,27,2
	bl glTexCoord2f
.L124:
	.loc 1 1003 0
	lfsx 1,31,15
	fmr 3,22
	lfsx 2,31,16
	fmuls 1,28,1
	fmuls 2,28,2
.LVL105:
.L191:
	bl glVertex3f
	.loc 1 1006 0
	lwz 0,0(25)
	cmpw 7,0,17
	beq- 7,.L127
	cmpw 7,0,14
	bne+ 7,.L126
	b .L128
.L127:
	.loc 1 1008 0
	addi 9,31,1928
	addi 11,31,2888
	lfsx 1,9,1
	b .L192
.L128:
	.loc 1 1013 0
	addi 9,31,3848
	addi 11,31,4808
	lfsx 1,9,1
.L192:
	lfsx 2,11,1
	fmuls 1,26,1
	fmr 3,21
	fmuls 2,26,2
	bl glNormal3f
.L126:
	.loc 1 1021 0
	lwz 0,8(25)
	lbz 9,4(25)
	cmpw 7,0,18
	bne+ 7,.L129
	.loc 1 1022 0
	cmpwi 7,9,0
	beq+ 7,.L131
	.loc 1 1023 0
	lis 11,0x4330
	xoris 0,30,0x8000
	xoris 9,20,0x8000
	stw 0,11532(1)
	stw 9,11540(1)
	xoris 0,29,0x8000
	stw 11,11528(1)
	xoris 9,21,0x8000
	stw 11,11536(1)
	fmr 0,17
	lfd 1,11528(1)
	lfd 12,11536(1)
	stw 0,11532(1)
	fsub 1,1,0
	stw 9,11540(1)
	fsub 12,12,0
	lfd 2,11528(1)
	lfd 13,11536(1)
	frsp 1,1
	fsub 2,2,0
	fsub 13,13,0
	frsp 12,12
	frsp 2,2
	frsp 13,13
	fdivs 1,1,12
	fdivs 2,2,13
	fsubs 1,19,1
	fsubs 2,19,2
	bl glTexCoord2f
.L131:
	.loc 1 1026 0
	lfsx 1,31,15
	fmr 3,22
	lfsx 2,31,16
	fmuls 1,28,1
	fmuls 2,28,2
	b .L193
.LVL106:
.L129:
	.loc 1 1029 0
	rlwinm 0,9,0,0xff
	cmpwi 7,0,0
	beq+ 7,.L134
	.loc 1 1030 0
	lis 11,0x4330
	xoris 0,30,0x8000
	xoris 9,20,0x8000
	stw 0,11532(1)
	stw 9,11540(1)
	xoris 0,23,0x8000
	stw 11,11528(1)
	xoris 9,21,0x8000
	stw 11,11536(1)
	fmr 0,18
	lfd 1,11528(1)
	lfd 12,11536(1)
	stw 0,11532(1)
	fsub 1,1,0
	stw 9,11540(1)
	fsub 12,12,0
	lfd 2,11528(1)
	lfd 13,11536(1)
	frsp 1,1
	fsub 2,2,0
	fsub 13,13,0
	frsp 12,12
	frsp 2,2
	frsp 13,13
	fdivs 1,1,12
	fdivs 2,2,13
	fsubs 1,25,1
	fsubs 2,25,2
	bl glTexCoord2f
.L134:
	.loc 1 1033 0
	lfsx 1,31,15
	fmr 3,23
	lfsx 2,31,16
	fmuls 1,30,1
	fmuls 2,30,2
.LVL107:
.L193:
	bl glVertex3f
	.loc 1 979 0
	addi 30,30,1
	addi 31,31,4
.L115:
	lwz 0,11548(1)
	cmpw 7,30,0
	bne+ 7,.L116
	.loc 1 1037 0
	bl glEnd
	addi 27,27,4
	addi 24,24,4
	addi 19,19,4
	addi 22,22,4
	addi 28,28,4
	addi 26,26,4
	mr 29,23
.LVL108:
.L108:
	.loc 1 951 0
	lwz 0,11544(1)
	cmpw 7,29,0
	blt+ 7,.L109
	b .L171
.LVL109:
.L66:
	.loc 1 1041 0
	li 3,0
	li 28,0
.LVL110:
	bl glBegin
	.loc 1 1070 0
	lis 9,.LC2@ha
	lfs 26,.LC2@l(9)
.LVL111:
	lis 9,.LC7@ha
	lfs 27,.LC7@l(9)
	.loc 1 1041 0
	li 30,0
	.loc 1 1043 0
	addi 15,1,5768
.LVL112:
	.loc 1 1044 0
	addi 17,1,6728
	.loc 1 1048 0
	addi 18,1,7688
	.loc 1 1049 0
	addi 19,1,8648
	.loc 1 1058 0
	addi 22,1,1928
.LVL113:
	addi 23,1,2888
	.loc 1 1073 0
	addi 26,1,8
	addi 27,1,968
.LVL114:
.L137:
	.loc 1 1045 0
	lwz 9,0(25)
	.loc 1 1043 0
	lfsx 30,30,15
	.loc 1 1045 0
	addis 9,9,0xfffe
	.loc 1 1044 0
	lfsx 28,30,17
	.loc 1 1045 0
	addi 9,9,31072
	cmplwi 7,9,1
	bgt- 7,.L138
	.loc 1 1048 0
	lfsx 31,30,18
.LVL115:
	.loc 1 1049 0
	lfsx 29,30,19
.LVL116:
.L138:
	li 29,0
.LVL117:
	li 31,0
	b .L140
.LVL118:
.L141:
	.loc 1 1055 0
	lwz 9,0(25)
	addis 9,9,0xfffe
	addi 9,9,31072
	cmplwi 7,9,1
	bgt- 7,.L142
	.loc 1 1058 0
	lfsx 1,31,22
	lfsx 2,31,23
	fmuls 1,31,1
	fmuls 2,31,2
	bl glNormal3f
.LVL119:
.L142:
	.loc 1 1069 0
	lbz 0,4(25)
	cmpwi 7,0,0
	beq+ 7,.L144
	.loc 1 1070 0
	lis 11,0x4330
	xoris 0,29,0x8000
	xoris 9,24,0x8000
	stw 0,11532(1)
	stw 9,11540(1)
	xoris 0,28,0x8000
	stw 11,11528(1)
	xoris 9,21,0x8000
	stw 11,11536(1)
	fmr 0,26
	lfd 1,11528(1)
	lfd 12,11536(1)
	stw 0,11532(1)
	fsub 1,1,0
	stw 9,11540(1)
	fsub 12,12,0
	lfd 2,11528(1)
	lfd 13,11536(1)
	frsp 1,1
	fsub 2,2,0
	fsub 13,13,0
	frsp 12,12
	frsp 2,2
	frsp 13,13
	fdivs 1,1,12
	fdivs 2,2,13
	fsubs 1,27,1
	fsubs 2,27,2
	bl glTexCoord2f
.LVL120:
.L144:
	.loc 1 1073 0
	lfsx 1,31,26
	fmr 3,28
	lfsx 2,31,27
	.loc 1 1054 0
	addi 29,29,1
.LVL121:
	.loc 1 1073 0
	fmuls 1,30,1
	.loc 1 1054 0
	addi 31,31,4
	.loc 1 1073 0
	fmuls 2,30,2
	bl glVertex3f
.LVL122:
.L140:
	.loc 1 1054 0
	cmpw 7,29,20
	.loc 1 1058 0
	fmr 3,29
	.loc 1 1054 0
	bne+ 7,.L141
.LVL123:
	.loc 1 1042 0
	addi 28,28,1
	addi 30,30,4
	cmpw 7,28,16
	bne+ 7,.L137
	.loc 1 1077 0
	bl glEnd
.LVL124:
	b .L171
.LVL125:
.L148:
	.loc 1 1084 0
	lwz 9,0(25)
	.loc 1 702 0
	slwi 0,29,2
	.loc 1 1083 0
	addi 11,1,6728
	.loc 1 1084 0
	addis 9,9,0xfffe
	.loc 1 1083 0
	lfsx 28,11,0
	.loc 1 1084 0
	addi 9,9,31072
	cmplwi 7,9,1
	.loc 1 1082 0
	addi 9,1,5768
	lfsx 30,9,0
	.loc 1 1084 0
	bgt- 7,.L149
	.loc 1 1087 0
	addi 9,1,7688
	.loc 1 1088 0
	lfsx 29,14,0
	.loc 1 1087 0
	lfsx 31,9,0
.LVL126:
.L149:
	.loc 1 1094 0
	li 3,3
	li 30,0
	bl glBegin
	li 31,0
	b .L151
.L152:
	.loc 1 1096 0
	lwz 0,0(25)
	cmpw 7,0,27
	cmpw 6,0,28
	beq- 7,.L154
	bne+ 6,.L153
	.loc 1 1098 0
	lfsx 1,31,18
	lfsx 2,31,19
	b .L194
.L154:
	.loc 1 1103 0
	lfsx 1,31,15
	lfsx 2,31,17
.L194:
	fmuls 1,31,1
	fmuls 2,31,2
	fmr 3,29
	bl glNormal3f
.L153:
	.loc 1 1111 0
	lbz 0,4(25)
	cmpwi 7,0,0
	beq+ 7,.L156
	.loc 1 1112 0
	lis 11,0x4330
	xoris 0,30,0x8000
	xoris 9,20,0x8000
	stw 0,11532(1)
	stw 9,11540(1)
	xoris 0,29,0x8000
	stw 11,11528(1)
	xoris 9,21,0x8000
	stw 11,11536(1)
	fmr 0,26
	lfd 1,11528(1)
	lfd 12,11536(1)
	stw 0,11532(1)
	fsub 1,1,0
	stw 9,11540(1)
	fsub 12,12,0
	lfd 2,11528(1)
	lfd 13,11536(1)
	frsp 1,1
	fsub 2,2,0
	fsub 13,13,0
	frsp 12,12
	frsp 2,2
	frsp 13,13
	fdivs 1,1,12
	fdivs 2,2,13
	fsubs 1,27,1
	fsubs 2,27,2
	bl glTexCoord2f
.L156:
	.loc 1 1115 0
	lfsx 1,31,22
	fmr 3,28
	lfsx 2,31,23
	.loc 1 1095 0
	addi 30,30,1
	.loc 1 1115 0
	fmuls 1,30,1
	.loc 1 1095 0
	addi 31,31,4
	.loc 1 1115 0
	fmuls 2,30,2
	bl glVertex3f
.L151:
	.loc 1 1095 0
	cmpw 7,30,26
	bne+ 7,.L152
	.loc 1 1118 0
	bl glEnd
	.loc 1 1081 0
	addi 29,29,1
.LVL127:
.L70:
	cmpw 7,29,21
	bne+ 7,.L148
	.loc 1 1152 0
	lis 9,.LC2@ha
	.loc 1 1135 0
	lis 26,0x1
	.loc 1 1152 0
	lfs 26,.LC2@l(9)
	lis 9,.LC7@ha
	.loc 1 1135 0
	lis 27,0x1
	.loc 1 1152 0
	lfs 27,.LC7@l(9)
	.loc 1 1135 0
	ori 26,26,34464
	ori 27,27,34465
	.loc 1 1081 0
	li 28,0
.LVL128:
	li 29,0
.LVL129:
	.loc 1 1127 0
	addi 14,1,2888
	.loc 1 1142 0
	addi 15,1,7688
	addi 17,1,8648
	.loc 1 1137 0
	addi 18,1,9608
	addi 19,1,10568
	.loc 1 1155 0
	addi 22,1,5768
	addi 23,1,6728
	b .L160
.LVL130:
.L161:
	.loc 1 1123 0
	lwz 9,0(25)
	.loc 1 1121 0
	addi 11,29,8
	lfsx 28,11,1
	.loc 1 1123 0
	addis 9,9,0xfffe
	addi 9,9,31072
	cmplwi 7,9,1
	.loc 1 1122 0
	addi 9,29,968
	lfsx 30,9,1
	.loc 1 1123 0
	bgt- 7,.L162
	.loc 1 1126 0
	addi 11,29,1928
	.loc 1 1127 0
	lfsx 29,29,14
	.loc 1 1126 0
	lfsx 31,11,1
.LVL131:
.L162:
	.loc 1 1133 0
	li 3,3
	li 30,0
	bl glBegin
	li 31,0
.L164:
	.loc 1 1135 0
	lwz 0,0(25)
	cmpw 7,0,26
	cmpw 6,0,27
	beq- 7,.L166
	bne+ 6,.L165
	.loc 1 1137 0
	lfsx 1,31,18
	lfsx 3,31,19
	b .L195
.L166:
	.loc 1 1142 0
	lfsx 1,31,15
	lfsx 3,31,17
.L195:
	fmuls 2,29,1
	fmuls 1,31,1
	bl glNormal3f
.L165:
	.loc 1 1151 0
	lbz 0,4(25)
	cmpwi 7,0,0
	beq+ 7,.L168
	.loc 1 1152 0
	lis 11,0x4330
	xoris 0,28,0x8000
	xoris 9,24,0x8000
	stw 0,11532(1)
	stw 9,11540(1)
	xoris 0,30,0x8000
	stw 11,11528(1)
	xoris 9,21,0x8000
	stw 11,11536(1)
	fmr 0,26
	lfd 1,11528(1)
	lfd 12,11536(1)
	stw 0,11532(1)
	fsub 1,1,0
	stw 9,11540(1)
	fsub 12,12,0
	lfd 2,11528(1)
	lfd 13,11536(1)
	frsp 1,1
	fsub 2,2,0
	fsub 13,13,0
	frsp 12,12
	frsp 2,2
	frsp 13,13
	fdivs 1,1,12
	fdivs 2,2,13
	fsubs 1,27,1
	fsubs 2,27,2
	bl glTexCoord2f
.L168:
	.loc 1 1155 0
	lfsx 1,31,22
	.loc 1 1134 0
	addi 30,30,1
	.loc 1 1155 0
	lfsx 3,31,23
	.loc 1 1134 0
	addi 31,31,4
	.loc 1 1155 0
	fmuls 2,30,1
	fmuls 1,28,1
	bl glVertex3f
	.loc 1 1134 0
	cmpw 7,30,16
	bne+ 7,.L164
	.loc 1 1158 0
	bl glEnd
	.loc 1 1120 0
	addi 28,28,1
.LVL132:
	addi 29,29,4
.LVL133:
.L160:
	cmpw 7,28,20
	bne+ 7,.L161
.LVL134:
.L171:
	.loc 1 1164 0
	lwz 0,11764(1)
	lwz 12,11556(1)
	lmw 14,11560(1)
.LVL135:
	mtlr 0
	lfd 16,11632(1)
	mtcrf 8,12
	lfd 17,11640(1)
	lfd 18,11648(1)
	lfd 19,11656(1)
	lfd 20,11664(1)
	lfd 21,11672(1)
.LVL136:
	lfd 22,11680(1)
.LVL137:
	lfd 23,11688(1)
.LVL138:
	lfd 24,11696(1)
	lfd 25,11704(1)
	lfd 26,11712(1)
.LVL139:
	lfd 27,11720(1)
	lfd 28,11728(1)
.LVL140:
	lfd 29,11736(1)
.LVL141:
	lfd 30,11744(1)
.LVL142:
	lfd 31,11752(1)
.LVL143:
	addi 1,1,11760
	blr
.LFE13:
	.size	gluSphere, .-gluSphere
	.align 2
	.globl gluPartialDisk
	.type	gluPartialDisk, @function
gluPartialDisk:
.LFB12:
	.loc 1 440 0
.LVL144:
	.loc 1 454 0
	cmpwi 7,4,239
	.loc 1 440 0
	mflr 0
.LCFI25:
	stwu 1,-2112(1)
.LCFI26:
	stmw 21,1948(1)
.LCFI27:
	mr 28,4
	stfd 28,2080(1)
.LCFI28:
	mr 27,3
	stfd 29,2088(1)
.LCFI29:
	fmr 28,1
	stfd 30,2096(1)
.LCFI30:
	fmr 29,2
	stfd 17,1992(1)
.LCFI31:
	mr 26,5
	stfd 18,2000(1)
.LCFI32:
	fmr 30,4
	stfd 19,2008(1)
.LCFI33:
	stfd 20,2016(1)
.LCFI34:
	stfd 21,2024(1)
.LCFI35:
	stfd 22,2032(1)
.LCFI36:
	stfd 23,2040(1)
.LCFI37:
	stfd 24,2048(1)
.LCFI38:
	stfd 25,2056(1)
.LCFI39:
	stfd 26,2064(1)
.LCFI40:
	stfd 27,2072(1)
.LCFI41:
	stfd 31,2104(1)
.LCFI42:
	stw 0,2116(1)
.LCFI43:
	.loc 1 454 0
	ble- 7,.L197
.LVL145:
	li 28,239
	b .L199
.LVL146:
.L197:
	.loc 1 455 0
	cmpwi 7,4,1
	ble- 7,.L200
.L199:
	cmpwi 7,26,0
	ble- 7,.L200
	lis 9,.LC0@ha
	lfd 12,.LC0@l(9)
	fcmpu 7,29,12
	cror 30,28,30
	beq- 7,.L200
	fcmpu 7,28,12
	blt- 7,.L200
	fcmpu 7,28,29
	bng- 7,.L204
.LVL147:
.L200:
	.loc 1 698 0
	lwz 0,2116(1)
	.loc 1 457 0
	lis 4,0x1
.LVL148:
	mr 3,27
	.loc 1 698 0
	lfd 17,1992(1)
	mtlr 0
	lmw 21,1948(1)
.LVL149:
	lfd 18,2000(1)
	.loc 1 457 0
	ori 4,4,35365
	.loc 1 698 0
	lfd 19,2008(1)
	lfd 20,2016(1)
	lfd 21,2024(1)
	lfd 22,2032(1)
	lfd 23,2040(1)
	lfd 24,2048(1)
	lfd 25,2056(1)
	lfd 26,2064(1)
	lfd 27,2072(1)
	lfd 28,2080(1)
.LVL150:
	lfd 29,2088(1)
.LVL151:
	lfd 30,2096(1)
.LVL152:
	lfd 31,2104(1)
	addi 1,1,2112
	.loc 1 457 0
	b gluQuadricError
.LVL153:
.L204:
	.loc 1 461 0
	lis 9,.LC16@ha
	lis 11,.LC18@ha
	lfs 0,.LC16@l(9)
	fcmpu 7,30,0
	bnl- 7,.L206
	lfs 0,.LC18@l(11)
	mr 24,28
.LVL154:
	fmr 30,0
	b .L209
.LVL155:
.L206:
	.loc 1 462 0
	lfs 13,.LC18@l(11)
	fmr 0,13
	fcmpu 7,30,0
	bng- 7,.L210
	fmr 30,13
	mr 24,28
.LVL156:
	b .L209
.LVL157:
.L210:
	.loc 1 463 0
	fcmpu 7,30,12
	bnl- 7,.L213
	.loc 1 464 0
	fadd 3,3,30
.LVL158:
	.loc 1 465 0
	fneg 30,30
.LVL159:
.L213:
	.loc 1 471 0
	fcmpu 7,30,0
	crnot 30,30
	mfcr 0
	rlwinm 0,0,31,1
	add 24,28,0
.LVL160:
.L209:
	.loc 1 479 0
	lis 9,.LC20@ha
	.loc 1 482 0
	lis 25,0x4330
	.loc 1 479 0
	lfs 11,.LC20@l(9)
	lis 9,.LC4@ha
	lfd 12,.LC4@l(9)
	.loc 1 482 0
	xoris 0,28,0x8000
	.loc 1 479 0
	fdiv 13,3,11
	.loc 1 482 0
	stw 0,1940(1)
	stw 25,1936(1)
	lis 9,.LC2@ha
	lfs 25,.LC2@l(9)
	.loc 1 481 0
	li 30,0
.LVL161:
	li 31,0
	.loc 1 482 0
	addi 29,1,8
	.loc 1 483 0
	addi 23,1,968
	.loc 1 481 0
	fmul 0,30,12
	.loc 1 479 0
	fmul 13,13,12
	.loc 1 475 0
	fsub 12,29,28
	.loc 1 481 0
	fdiv 26,0,11
	.loc 1 482 0
	lfd 0,1936(1)
	.loc 1 479 0
	frsp 24,13
.LVL162:
	.loc 1 482 0
	fsub 27,0,25
	.loc 1 475 0
	frsp 22,12
.LVL163:
.L219:
	.loc 1 482 0
	xoris 0,30,0x8000
	stw 25,1928(1)
	stw 0,1932(1)
	fmr 31,24
	.loc 1 480 0
	addi 30,30,1
	.loc 1 482 0
	lfd 0,1928(1)
	fsub 0,0,25
	fmul 0,26,0
	fdiv 0,0,27
	fadd 31,31,0
	frsp 31,31
	fmr 1,31
	bl sin
.LVL164:
	frsp 0,1
	.loc 1 483 0
	fmr 1,31
	.loc 1 482 0
	stfsx 0,31,29
	.loc 1 483 0
	bl cos
	.loc 1 480 0
	cmpw 7,30,28
	.loc 1 483 0
	frsp 1,1
	stfsx 1,31,23
	.loc 1 480 0
	addi 31,31,4
	ble+ 7,.L219
	.loc 1 486 0
	lis 9,.LC18@ha
	lfs 0,.LC18@l(9)
	fcmpu 7,30,0
	bne- 7,.L221
	.loc 1 487 0
	lfs 0,8(1)
	slwi 0,28,2
	add 9,0,29
	stfsx 0,29,0
	.loc 1 488 0
	lfs 0,968(1)
	stfs 0,960(9)
.L221:
	.loc 1 491 0
	lwz 9,0(27)
	addis 9,9,0xfffe
	addi 9,9,31072
	cmplwi 7,9,1
	bgt- 7,.L224
	.loc 1 494 0
	lis 0,0x1
	lwz 9,8(27)
	ori 0,0,34484
	cmpw 7,9,0
	bne+ 7,.L226
	.loc 1 495 0
	lis 9,.LC14@ha
	lfs 1,.LC14@l(9)
	lis 9,.LC7@ha
	lfs 3,.LC7@l(9)
	fmr 2,1
	b .L330
.L226:
	.loc 1 497 0
	lis 9,.LC14@ha
	lfs 1,.LC14@l(9)
	lis 9,.LC21@ha
	lfs 3,.LC21@l(9)
	fmr 2,1
.L330:
	bl glNormal3f
.L224:
	.loc 1 505 0
	lwz 9,12(27)
	lis 0,0x1
	ori 0,0,34475
	cmpw 7,9,0
	beq- 7,.L230
	bgt- 7,.L233
	xoris 0,9,0xfffe
	cmpwi 7,0,-31062
	bne 7,.L318
	b .L229
.L233:
	xoris 0,9,0xfffe
	cmpwi 7,0,-31060
	beq 7,.L231
	xoris 0,9,0xfffe
	cmpwi 7,0,-31059
	bne 7,.L318
	b .L232
.L231:
	.loc 1 507 0
	lis 9,.LC0@ha
	mr 23,26
.LVL165:
	lfd 0,.LC0@l(9)
	fcmpu 7,28,0
	bne+ 7,.L236
	.loc 1 510 0
	li 3,6
	.loc 1 508 0
	addi 23,26,-1
	.loc 1 510 0
	bl glBegin
	.loc 1 511 0
	lbz 0,4(27)
	cmpwi 7,0,0
	beq+ 7,.L237
	.loc 1 512 0
	lis 9,.LC6@ha
	lfs 1,.LC6@l(9)
	fmr 2,1
	bl glTexCoord2f
.L237:
	.loc 1 514 0
	lis 9,.LC14@ha
	lfs 1,.LC14@l(9)
	fmr 2,1
	fmr 3,1
	bl glVertex3f
	.loc 1 515 0
	lis 11,0x4330
	xoris 0,23,0x8000
	xoris 9,26,0x8000
	stw 9,1940(1)
	lis 9,.LC2@ha
	stw 0,1932(1)
	stw 11,1936(1)
	stw 11,1928(1)
	lfs 12,.LC2@l(9)
	lfd 0,1928(1)
	lfd 13,1936(1)
	fsub 0,0,12
	.loc 1 517 0
	lbz 0,4(27)
	.loc 1 515 0
	fsub 13,13,12
	.loc 1 517 0
	cmpwi 7,0,0
	.loc 1 515 0
	frsp 0,0
	frsp 13,13
	fdivs 0,0,13
	fmuls 0,22,0
	fsub 0,29,0
	frsp 31,0
.LVL166:
	.loc 1 517 0
	beq- 7,.L239
	.loc 1 518 0
	fmr 0,31
	lis 9,.LC6@ha
	lfs 13,.LC6@l(9)
	fdiv 0,0,29
	fmul 0,0,13
	frsp 26,0
.LVL167:
.L239:
	.loc 1 521 0
	lis 0,0x1
	lwz 9,8(27)
	ori 0,0,34484
	cmpw 7,9,0
	beq- 7,.L241
	.loc 1 533 0
	lis 9,.LC6@ha
	.loc 1 521 0
	li 30,0
.LVL168:
	.loc 1 533 0
	lfs 30,.LC6@l(9)
.LVL169:
	lis 9,.LC14@ha
	lfs 28,.LC14@l(9)
.LVL170:
	.loc 1 521 0
	li 31,0
	.loc 1 533 0
	addi 25,1,8
	addi 29,1,968
	b .L243
.LVL171:
.L241:
	.loc 1 524 0
	lis 9,.LC6@ha
	.loc 1 521 0
	addi 0,1,968
	.loc 1 524 0
	lfs 30,.LC6@l(9)
.LVL172:
	.loc 1 521 0
	slwi 9,28,2
	add 30,0,9
.LVL173:
	addi 0,1,8
	add 31,0,9
	.loc 1 524 0
	lis 9,.LC14@ha
	lfs 28,.LC14@l(9)
.LVL174:
	.loc 1 521 0
	mr 29,28
.LVL175:
	b .L244
.L245:
	.loc 1 523 0
	lbz 0,4(27)
	cmpwi 7,0,0
	beq+ 7,.L246
	.loc 1 524 0
	lfs 1,0(31)
	lfs 2,0(30)
	fmadds 1,26,1,30
	fmadds 2,26,2,30
	bl glTexCoord2f
.L246:
	.loc 1 527 0
	lfs 1,0(31)
	fmr 3,28
	lfs 2,0(30)
	.loc 1 522 0
	addi 31,31,-4
	.loc 1 527 0
	fmuls 1,31,1
	.loc 1 522 0
	addi 30,30,-4
	.loc 1 527 0
	fmuls 2,31,2
	bl glVertex3f
.L244:
	.loc 1 522 0
	cmpwi 7,29,0
	addi 29,29,-1
	bge+ 7,.L245
	b .L248
.LVL176:
.L249:
	.loc 1 532 0
	lbz 0,4(27)
	cmpwi 7,0,0
	beq+ 7,.L250
	.loc 1 533 0
	lfsx 1,31,25
	lfsx 2,31,29
	fmadds 1,26,1,30
	fmadds 2,26,2,30
	bl glTexCoord2f
.L250:
	.loc 1 536 0
	lfsx 1,31,25
	fmr 3,28
	lfsx 2,31,29
	.loc 1 531 0
	addi 31,31,4
	.loc 1 536 0
	fmuls 1,31,1
	fmuls 2,31,2
	bl glVertex3f
.L243:
	.loc 1 531 0
	cmpw 7,30,28
	addi 30,30,1
	ble+ 7,.L249
.LVL177:
.L248:
	.loc 1 540 0
	bl glEnd
.LVL178:
.L236:
	.loc 1 548 0
	lis 9,.LC6@ha
	.loc 1 554 0
	lis 22,0x1
	.loc 1 548 0
	lfs 18,.LC6@l(9)
	.loc 1 545 0
	lis 9,.LC2@ha
	lfs 17,.LC2@l(9)
	.loc 1 573 0
	lis 9,.LC14@ha
	.loc 1 577 0
	fmr 25,18
	.loc 1 573 0
	lfs 24,.LC14@l(9)
.LVL179:
	.loc 1 570 0
	fmr 19,18
	.loc 1 554 0
	ori 22,22,34484
	.loc 1 563 0
	fmr 20,18
	.loc 1 540 0
	li 29,0
.LVL180:
	.loc 1 556 0
	fmr 21,18
	.loc 1 573 0
	addi 24,1,8
.LVL181:
	addi 25,1,968
	b .L252
.LVL182:
.L253:
	.loc 1 545 0
	xoris 0,26,0x8000
	lis 9,0x4330
	stw 0,1932(1)
	xoris 0,29,0x8000
	stw 9,1928(1)
	.loc 1 546 0
	addi 29,29,1
	.loc 1 545 0
	fmr 12,17
	lfd 11,1928(1)
	stw 0,1932(1)
	.loc 1 546 0
	xoris 0,29,0x8000
	.loc 1 545 0
	fsub 11,11,12
	lfd 13,1928(1)
	.loc 1 546 0
	stw 0,1932(1)
	.loc 1 545 0
	fsub 13,13,12
	.loc 1 546 0
	lfd 0,1928(1)
	.loc 1 545 0
	frsp 11,11
	.loc 1 547 0
	lbz 0,4(27)
	.loc 1 546 0
	fsub 0,0,12
	.loc 1 545 0
	frsp 13,13
	.loc 1 547 0
	cmpwi 7,0,0
	.loc 1 546 0
	frsp 0,0
	.loc 1 545 0
	fdivs 13,13,11
	.loc 1 546 0
	fdivs 0,0,11
	.loc 1 545 0
	fmuls 13,22,13
	.loc 1 546 0
	fmuls 0,22,0
	.loc 1 545 0
	fsub 13,29,13
	.loc 1 546 0
	fsub 0,29,0
	.loc 1 545 0
	frsp 28,13
.LVL183:
	.loc 1 546 0
	frsp 27,0
	.loc 1 547 0
	beq- 7,.L254
	.loc 1 548 0
	fmr 0,28
	.loc 1 549 0
	fmr 13,27
	.loc 1 548 0
	fmr 12,18
	fdiv 0,0,29
	.loc 1 549 0
	fdiv 13,13,29
	.loc 1 548 0
	fmul 0,0,12
	.loc 1 549 0
	fmul 13,13,12
	.loc 1 548 0
	frsp 26,0
	.loc 1 549 0
	frsp 23,13
.L254:
	.loc 1 552 0
	li 3,8
	li 30,0
	bl glBegin
	li 31,0
	b .L256
.L257:
	.loc 1 554 0
	lwz 0,8(27)
	lbz 9,4(27)
	cmpw 7,0,22
	bne+ 7,.L258
	.loc 1 555 0
	cmpwi 7,9,0
	beq+ 7,.L260
	.loc 1 556 0
	lfsx 1,31,24
	lfsx 2,31,25
	fmadds 1,26,1,21
	fmadds 2,26,2,21
	bl glTexCoord2f
.L260:
	.loc 1 559 0
	lfsx 31,31,24
	fmr 3,24
	lfsx 30,31,25
.LVL184:
	fmuls 1,28,31
	fmuls 2,28,30
	bl glVertex3f
	.loc 1 562 0
	lbz 0,4(27)
	cmpwi 7,0,0
	beq+ 7,.L262
	.loc 1 563 0
	fmadds 1,23,31,20
	fmadds 2,23,30,20
	bl glTexCoord2f
.L262:
	.loc 1 566 0
	fmuls 1,27,31
	fmuls 2,27,30
	b .L331
.LVL185:
.L258:
	.loc 1 569 0
	cmpwi 7,9,0
	beq+ 7,.L265
	.loc 1 570 0
	lfsx 1,31,24
	lfsx 2,31,25
	fmadds 1,23,1,19
	fmadds 2,23,2,19
	bl glTexCoord2f
.L265:
	.loc 1 573 0
	lfsx 31,31,24
	fmr 3,24
	lfsx 30,31,25
.LVL186:
	fmuls 1,27,31
	fmuls 2,27,30
	bl glVertex3f
	.loc 1 576 0
	lbz 0,4(27)
	cmpwi 7,0,0
	beq+ 7,.L267
	.loc 1 577 0
	fmadds 1,26,31,25
	fmadds 2,26,30,25
	bl glTexCoord2f
.L267:
	.loc 1 580 0
	fmuls 1,28,31
	fmuls 2,28,30
.L331:
	fmr 3,24
	.loc 1 553 0
	addi 30,30,1
	addi 31,31,4
	.loc 1 580 0
	bl glVertex3f
.LVL187:
.L256:
	.loc 1 553 0
	cmpw 7,30,28
	ble+ 7,.L257
	.loc 1 584 0
	bl glEnd
.LVL188:
.L252:
	.loc 1 544 0
	cmpw 7,29,23
	blt+ 7,.L253
	b .L318
.LVL189:
.L229:
	.loc 1 588 0
	li 3,0
	li 29,0
.LVL190:
	bl glBegin
	.loc 1 593 0
	lis 9,.LC2@ha
	lfs 23,.LC2@l(9)
	.loc 1 596 0
	lis 9,.LC6@ha
	lfs 26,.LC6@l(9)
	lis 9,.LC14@ha
	lfs 24,.LC14@l(9)
.LVL191:
	.loc 1 588 0
	li 30,0
	.loc 1 590 0
	addi 22,1,8
	.loc 1 591 0
	addi 23,1,968
	.loc 1 592 0
	addi 28,26,1
.LVL192:
	b .L270
.LVL193:
.L271:
	.loc 1 593 0
	lis 25,0x4330
	xoris 0,26,0x8000
	.loc 1 590 0
	lfsx 27,30,22
	.loc 1 593 0
	fmr 30,23
.LVL194:
	.loc 1 591 0
	lfsx 28,30,23
.LVL195:
	li 31,0
	.loc 1 593 0
	stw 0,1940(1)
	stw 25,1936(1)
	lfd 0,1936(1)
	fsub 0,0,30
	frsp 25,0
.L272:
	xoris 0,31,0x8000
	stw 25,1928(1)
	stw 0,1932(1)
	.loc 1 592 0
	addi 31,31,1
	.loc 1 593 0
	lfd 0,1928(1)
	.loc 1 595 0
	lbz 0,4(27)
	.loc 1 593 0
	fsub 0,0,30
	.loc 1 595 0
	cmpwi 7,0,0
	.loc 1 593 0
	frsp 0,0
	fdivs 0,0,25
	fmuls 0,22,0
	fsub 0,29,0
	frsp 31,0
	.loc 1 595 0
	beq+ 7,.L273
	.loc 1 596 0
	fmr 1,31
	fmr 0,26
	fdiv 1,1,29
	fmul 1,1,0
	frsp 1,1
.LVL196:
	.loc 1 598 0
	fmadds 2,1,28,26
	fmadds 1,1,27,26
.LVL197:
	bl glTexCoord2f
.L273:
	.loc 1 601 0
	fmr 3,24
	fmuls 2,31,28
	fmuls 1,31,27
	bl glVertex3f
	.loc 1 592 0
	cmpw 7,31,28
	bne+ 7,.L272
	.loc 1 589 0
	addi 29,29,1
	addi 30,30,4
.LVL198:
.L270:
	cmpw 7,29,24
	blt+ 7,.L271
	b .L332
.LVL199:
.L230:
	.loc 1 607 0
	fcmpu 7,28,29
	bne+ 7,.L277
	.loc 1 608 0
	li 3,3
	li 30,0
.LVL200:
	bl glBegin
	.loc 1 612 0
	lis 9,.LC6@ha
	lfs 31,.LC6@l(9)
	lis 9,.LC14@ha
	lfs 30,.LC14@l(9)
.LVL201:
	.loc 1 608 0
	li 31,0
	.loc 1 612 0
	addi 26,1,8
.LVL202:
	addi 29,1,968
	b .L280
.L281:
	.loc 1 611 0
	lbz 0,4(27)
	cmpwi 7,0,0
	beq+ 7,.L282
	.loc 1 612 0
	lfsx 1,31,26
	lfsx 2,31,29
	fmadds 1,1,31,31
	fmadds 2,2,31,31
	bl glTexCoord2f
.L282:
	.loc 1 615 0
	lfsx 1,31,26
	fmr 3,30
	lfsx 2,31,29
	.loc 1 610 0
	addi 31,31,4
	.loc 1 615 0
	fmul 1,28,1
	fmul 2,28,2
	frsp 1,1
	frsp 2,2
	bl glVertex3f
.L280:
	.loc 1 610 0
	cmpw 7,30,28
	addi 30,30,1
	ble+ 7,.L281
.LVL203:
.L332:
	.loc 1 618 0
	bl glEnd
	b .L318
.LVL204:
.L277:
	.loc 1 622 0
	lis 21,0x4330
	xoris 0,26,0x8000
	stw 0,1932(1)
	lis 9,.LC2@ha
	stw 21,1928(1)
	.loc 1 619 0
	li 29,0
.LVL205:
	.loc 1 622 0
	lfs 30,.LC2@l(9)
.LVL206:
	.loc 1 624 0
	lis 9,.LC6@ha
	.loc 1 622 0
	lfd 0,1928(1)
	.loc 1 630 0
	addi 22,1,8
	.loc 1 624 0
	lfs 24,.LC6@l(9)
.LVL207:
	.loc 1 630 0
	lis 9,.LC14@ha
	.loc 1 622 0
	fsub 0,0,30
	.loc 1 630 0
	lfs 23,.LC14@l(9)
	fmr 27,24
	addi 23,1,968
	.loc 1 621 0
	addi 25,26,1
	.loc 1 622 0
	frsp 28,0
.LVL208:
.L285:
	xoris 0,29,0x8000
	stw 21,1928(1)
	stw 0,1932(1)
	fmr 25,28
	lfd 0,1928(1)
	.loc 1 623 0
	lbz 0,4(27)
	.loc 1 622 0
	fsub 0,0,30
	.loc 1 623 0
	cmpwi 7,0,0
	.loc 1 622 0
	frsp 0,0
	fdivs 0,0,28
	fmuls 0,22,0
	fsub 0,29,0
	frsp 31,0
	.loc 1 623 0
	beq- 7,.L286
	.loc 1 624 0
	fmr 0,31
	fmr 13,24
	fdiv 0,0,29
	fmul 0,0,13
	frsp 26,0
.L286:
	.loc 1 627 0
	li 3,3
	li 30,0
.LVL209:
	bl glBegin
	li 31,0
	b .L288
.L289:
	.loc 1 629 0
	lbz 0,4(27)
	cmpwi 7,0,0
	beq+ 7,.L290
	.loc 1 630 0
	lfsx 1,31,22
	lfsx 2,31,23
	fmadds 1,26,1,27
	fmadds 2,26,2,27
	bl glTexCoord2f
.L290:
	.loc 1 633 0
	lfsx 1,31,22
	fmr 3,23
	lfsx 2,31,23
	.loc 1 628 0
	addi 31,31,4
	.loc 1 633 0
	fmuls 1,31,1
	fmuls 2,31,2
	bl glVertex3f
.L288:
	.loc 1 628 0
	cmpw 7,30,28
	addi 30,30,1
	ble+ 7,.L289
	.loc 1 621 0
	addi 29,29,1
	.loc 1 636 0
	bl glEnd
	.loc 1 621 0
	cmpw 7,29,25
	bne+ 7,.L285
	.loc 1 643 0
	lis 9,.LC2@ha
	.loc 1 621 0
	li 29,0
.LVL210:
	.loc 1 643 0
	lfs 23,.LC2@l(9)
	.loc 1 645 0
	lis 9,.LC6@ha
	lfs 27,.LC6@l(9)
	lis 9,.LC14@ha
	lfs 24,.LC14@l(9)
	.loc 1 621 0
	li 30,0
	.loc 1 639 0
	addi 25,1,8
	.loc 1 640 0
	addi 28,1,968
.LVL211:
	b .L294
.LVL212:
.L295:
	.loc 1 643 0
	fmr 26,23
.LVL213:
	.loc 1 641 0
	li 3,3
	.loc 1 639 0
	lfsx 28,30,25
	.loc 1 641 0
	li 31,0
	.loc 1 640 0
	lfsx 30,30,28
	.loc 1 641 0
	bl glBegin
.L296:
	.loc 1 643 0
	xoris 0,31,0x8000
	.loc 1 642 0
	addi 31,31,1
	.loc 1 643 0
	stw 0,1932(1)
	lis 0,0x4330
	stw 0,1928(1)
	lfd 0,1928(1)
	.loc 1 644 0
	lbz 0,4(27)
	.loc 1 643 0
	fsub 0,0,26
	.loc 1 644 0
	cmpwi 7,0,0
	.loc 1 643 0
	frsp 0,0
	fdivs 0,0,25
	fmuls 0,22,0
	fsub 0,29,0
	frsp 31,0
	.loc 1 644 0
	beq+ 7,.L297
	.loc 1 645 0
	fmr 1,31
	fmr 0,27
	fdiv 1,1,29
	fmul 1,1,0
	frsp 1,1
.LVL214:
	.loc 1 649 0
	fmadds 2,1,30,27
	fmadds 1,1,28,27
.LVL215:
	bl glTexCoord2f
.L297:
	.loc 1 652 0
	fmr 3,24
	fmuls 2,31,30
	fmuls 1,31,28
	bl glVertex3f
	.loc 1 642 0
	cmpw 7,31,26
	ble+ 7,.L296
	.loc 1 654 0
	bl glEnd
	.loc 1 638 0
	addi 29,29,1
	addi 30,30,4
.LVL216:
.L294:
	cmpw 7,29,24
	blt+ 7,.L295
	b .L318
.LVL217:
.L232:
	.loc 1 658 0
	lis 9,.LC18@ha
	lfs 0,.LC18@l(9)
	fcmpu 7,30,0
	bnl- 7,.L300
	.loc 1 664 0
	lis 9,.LC2@ha
	.loc 1 440 0
	slwi 23,28,2
	.loc 1 664 0
	lfs 20,.LC2@l(9)
	.loc 1 667 0
	lis 9,.LC6@ha
	lfs 24,.LC6@l(9)
.LVL218:
	lis 9,.LC14@ha
	lfs 21,.LC14@l(9)
	.loc 1 440 0
	li 29,0
.LVL219:
	li 30,0
	.loc 1 660 0
	addi 21,1,8
	.loc 1 661 0
	addi 22,1,968
	.loc 1 663 0
	addi 25,26,1
	b .L303
.LVL220:
.L304:
	.loc 1 662 0
	li 3,3
	.loc 1 660 0
	lfsx 25,30,21
	.loc 1 661 0
	lfsx 27,30,22
	.loc 1 664 0
	lis 24,0x4330
.LVL221:
	.loc 1 662 0
	bl glBegin
	.loc 1 664 0
	xoris 0,26,0x8000
	stw 0,1940(1)
	fmr 30,20
.LVL222:
	stw 24,1936(1)
	.loc 1 662 0
	li 31,0
	.loc 1 664 0
	lfd 0,1936(1)
	fsub 0,0,30
	frsp 23,0
.L305:
	xoris 0,31,0x8000
	stw 24,1928(1)
	stw 0,1932(1)
	.loc 1 663 0
	addi 31,31,1
	.loc 1 664 0
	lfd 0,1928(1)
	.loc 1 666 0
	lbz 0,4(27)
	.loc 1 664 0
	fsub 0,0,30
	.loc 1 666 0
	cmpwi 7,0,0
	.loc 1 664 0
	frsp 0,0
	fdivs 0,0,23
	fmuls 0,22,0
	fsub 0,29,0
	frsp 31,0
	.loc 1 666 0
	beq+ 7,.L306
	.loc 1 667 0
	fmr 0,31
	fmr 13,24
	fdiv 0,0,29
	fmul 0,0,13
	frsp 26,0
	.loc 1 668 0
	fmadds 1,26,25,24
	fmadds 2,26,27,24
	bl glTexCoord2f
.L306:
	.loc 1 671 0
	fmr 3,21
	fmuls 2,31,27
	fmuls 1,31,25
	bl glVertex3f
	.loc 1 663 0
	cmpw 7,31,25
	bne+ 7,.L305
	.loc 1 673 0
	bl glEnd
	add 29,29,28
	add 30,30,23
.LVL223:
.L303:
	.loc 1 659 0
	cmpw 7,29,28
	ble+ 7,.L304
.LVL224:
.L300:
	.loc 1 677 0
	lis 23,0x4330
	xoris 0,26,0x8000
	stw 0,1940(1)
	lis 9,.LC2@ha
	stw 23,1936(1)
	.loc 1 659 0
	li 29,0
.LVL225:
	.loc 1 677 0
	lfs 30,.LC2@l(9)
.LVL226:
	.loc 1 679 0
	lis 9,.LC6@ha
	.loc 1 677 0
	lfd 0,1936(1)
	.loc 1 685 0
	addi 24,1,8
.LVL227:
	.loc 1 679 0
	lfs 24,.LC6@l(9)
.LVL228:
	.loc 1 685 0
	lis 9,.LC14@ha
	.loc 1 677 0
	fsub 0,0,30
	.loc 1 685 0
	lfs 23,.LC14@l(9)
	fmr 25,24
.LVL229:
	addi 25,1,968
	.loc 1 677 0
	frsp 27,0
.LVL230:
.L309:
	xoris 0,29,0x8000
	stw 23,1928(1)
	stw 0,1932(1)
	lfd 0,1928(1)
	.loc 1 678 0
	lbz 0,4(27)
	.loc 1 677 0
	fsub 0,0,30
	.loc 1 678 0
	cmpwi 7,0,0
	.loc 1 677 0
	frsp 0,0
	fdivs 0,0,27
	fmuls 0,22,0
	fsub 0,29,0
	frsp 31,0
.LVL231:
	.loc 1 678 0
	beq- 7,.L310
	.loc 1 679 0
	fmr 0,31
	fmr 13,24
	fdiv 0,0,29
	fmul 0,0,13
	frsp 26,0
.L310:
	.loc 1 682 0
	li 3,3
	li 30,0
.LVL232:
	bl glBegin
	li 31,0
	b .L312
.L313:
	.loc 1 684 0
	lbz 0,4(27)
	cmpwi 7,0,0
	beq+ 7,.L314
	.loc 1 685 0
	lfsx 1,31,24
	lfsx 2,31,25
	fmadds 1,26,1,25
	fmadds 2,26,2,25
	bl glTexCoord2f
.L314:
	.loc 1 688 0
	lfsx 1,31,24
	fmr 3,23
	lfsx 2,31,25
	.loc 1 683 0
	addi 31,31,4
	.loc 1 688 0
	fmuls 1,31,1
	fmuls 2,31,2
	bl glVertex3f
.L312:
	.loc 1 683 0
	cmpw 7,30,28
	addi 30,30,1
	ble+ 7,.L313
	.loc 1 691 0
	bl glEnd
	.loc 1 692 0
	fcmpu 7,28,29
	beq- 7,.L318
	add 29,29,26
	.loc 1 676 0
	cmpw 7,29,26
	ble+ 7,.L309
.LVL233:
.L318:
	.loc 1 698 0
	lwz 0,2116(1)
	lmw 21,1948(1)
.LVL234:
	lfd 17,1992(1)
	mtlr 0
	lfd 18,2000(1)
	lfd 19,2008(1)
	lfd 20,2016(1)
	lfd 21,2024(1)
	lfd 22,2032(1)
.LVL235:
	lfd 23,2040(1)
.LVL236:
	lfd 24,2048(1)
.LVL237:
	lfd 25,2056(1)
	lfd 26,2064(1)
.LVL238:
	lfd 27,2072(1)
.LVL239:
	lfd 28,2080(1)
.LVL240:
	lfd 29,2088(1)
.LVL241:
	lfd 30,2096(1)
.LVL242:
	lfd 31,2104(1)
.LVL243:
	addi 1,1,2112
	blr
.LFE12:
	.size	gluPartialDisk, .-gluPartialDisk
	.align 2
	.globl gluDisk
	.type	gluDisk, @function
gluDisk:
.LFB11:
	.loc 1 432 0
.LVL244:
	.loc 1 433 0
	lis 9,.LC18@ha
	lfs 4,.LC18@l(9)
	lis 9,.LC0@ha
	lfd 3,.LC0@l(9)
	b gluPartialDisk
.LVL245:
.LFE11:
	.size	gluDisk, .-gluDisk
	.align 2
	.globl gluCylinder
	.type	gluCylinder, @function
gluCylinder:
.LFB10:
	.loc 1 158 0
.LVL246:
	mfcr 12
.LCFI44:
	.loc 1 176 0
	cmpwi 7,4,239
	.loc 1 158 0
	mflr 0
.LCFI45:
	stwu 1,-6000(1)
.LCFI46:
	stfd 25,5944(1)
.LCFI47:
	fmr 25,1
	stfd 27,5960(1)
.LCFI48:
	fmr 27,3
	stfd 14,5856(1)
.LCFI49:
	stfd 15,5864(1)
.LCFI50:
	stfd 16,5872(1)
.LCFI51:
	stfd 17,5880(1)
.LCFI52:
	stfd 18,5888(1)
.LCFI53:
	stfd 19,5896(1)
.LCFI54:
	stfd 20,5904(1)
.LCFI55:
	stfd 21,5912(1)
.LCFI56:
	stfd 22,5920(1)
.LCFI57:
	stfd 23,5928(1)
.LCFI58:
	stfd 24,5936(1)
.LCFI59:
	stfd 26,5952(1)
.LCFI60:
	stfd 28,5968(1)
.LCFI61:
	stfd 29,5976(1)
.LCFI62:
	stfd 30,5984(1)
.LCFI63:
	stfd 31,5992(1)
.LCFI64:
	stmw 16,5792(1)
.LCFI65:
	mr 30,4
	stw 0,6004(1)
.LCFI66:
	mr 29,3
	stw 12,5788(1)
.LCFI67:
	.loc 1 158 0
	mr 23,5
	.loc 1 176 0
	ble- 7,.L336
.LVL247:
	li 30,239
	b .L338
.LVL248:
.L336:
	.loc 1 178 0
	cmpwi 7,4,1
	ble- 7,.L449
.L338:
	cmpwi 7,23,0
	ble- 7,.L449
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	fcmpu 7,25,0
	blt- 7,.L449
	fcmpu 7,2,0
	blt- 7,.L449
	fcmpu 7,27,0
	blt- 7,.L449
	.loc 1 185 0
	fsub 0,25,2
	frsp 21,0
.LVL249:
	.loc 1 186 0
	fmuls 1,21,21
	fmadd 1,27,27,1
	bl sqrt
.LVL250:
	.loc 1 187 0
	lis 9,.LC14@ha
	.loc 1 186 0
	frsp 1,1
.LVL251:
	.loc 1 187 0
	lfs 0,.LC14@l(9)
	fcmpu 7,1,0
	bne+ 7,.L345
.LVL252:
.L449:
	.loc 1 427 0
	lwz 0,6004(1)
	.loc 1 188 0
	lis 4,0x1
	.loc 1 427 0
	lwz 12,5788(1)
	.loc 1 188 0
	mr 3,29
	.loc 1 427 0
	mtlr 0
	lmw 16,5792(1)
.LVL253:
	lfd 14,5856(1)
	.loc 1 188 0
	ori 4,4,35365
	.loc 1 427 0
	lfd 15,5864(1)
	mtcrf 8,12
	lfd 16,5872(1)
	lfd 17,5880(1)
	lfd 18,5888(1)
	lfd 19,5896(1)
	lfd 20,5904(1)
	lfd 21,5912(1)
.LVL254:
	lfd 22,5920(1)
	lfd 23,5928(1)
	lfd 24,5936(1)
	lfd 25,5944(1)
.LVL255:
	lfd 26,5952(1)
	lfd 27,5960(1)
.LVL256:
	lfd 28,5968(1)
	lfd 29,5976(1)
	lfd 30,5984(1)
	lfd 31,5992(1)
	addi 1,1,6000
	.loc 1 188 0
	b gluQuadricError
.LVL257:
.L345:
	.loc 1 196 0
	lwz 9,0(29)
	lis 0,0x1
	ori 0,0,34464
	li 22,1
.LVL258:
	cmpw 7,9,0
	li 26,0
.LVL259:
	beq- 7,.L350
	.loc 1 200 0
	xoris 0,9,0xfffe
	cmpwi 7,0,-31071
	bne 7,.L351
	.loc 1 201 0
	lwz 9,12(29)
	xoris 0,9,0xfffe
	cmpwi 7,0,-31062
	beq 7,.L351
	.loc 1 204 0
	lis 0,0x1
	li 26,1
	ori 0,0,34475
	cmpw 7,9,0
	beq- 7,.L350
	li 22,0
	b .L350
.L351:
	li 22,0
	li 26,0
.L350:
	.loc 1 210 0
	fmr 0,1
	.loc 1 213 0
	lis 9,.LC2@ha
	.loc 1 209 0
	fdivs 20,21,1
.LVL260:
	.loc 1 214 0
	cmpwi 4,22,0
	.loc 1 213 0
	lfs 24,.LC2@l(9)
	lis 9,.LC3@ha
	.loc 1 215 0
	lis 27,0x1
	.loc 1 213 0
	lfd 26,.LC3@l(9)
	.loc 1 215 0
	ori 27,27,34484
	.loc 1 210 0
	li 28,0
.LVL261:
	li 31,0
	addi 24,1,1928
	addi 25,1,2888
	.loc 1 223 0
	addi 20,1,8
	.loc 1 224 0
	addi 21,1,968
	.loc 1 210 0
	fdiv 0,27,0
	frsp 29,0
.LVL262:
	.loc 1 219 0
	fneg 28,29
	b .L356
.LVL263:
.L357:
	.loc 1 213 0
	stw 0,5772(1)
	fmr 0,24
	stw 11,5768(1)
	stw 9,5780(1)
	lfd 13,5768(1)
	stw 11,5776(1)
	fsub 13,13,0
	lfd 12,5776(1)
	fmul 13,13,26
	fsub 12,12,0
	fdiv 13,13,12
	frsp 30,13
	.loc 1 214 0
	beq- 4,.L358
	.loc 1 215 0
	lwz 0,8(29)
	cmpw 7,0,27
	bne+ 7,.L360
	.loc 1 216 0
	fmr 1,30
.LVL264:
	fmr 31,29
	bl sin
	fmul 0,31,1
	.loc 1 217 0
	fmr 1,30
	.loc 1 216 0
	frsp 0,0
	stfsx 0,31,24
	.loc 1 217 0
	bl cos
	b .L443
.LVL265:
.L360:
	.loc 1 219 0
	fmr 1,30
.LVL266:
	fmr 31,28
	bl sin
	fmul 0,31,1
	.loc 1 220 0
	fmr 1,30
	.loc 1 219 0
	frsp 0,0
	stfsx 0,31,24
	.loc 1 220 0
	bl cos
.L443:
	fmul 31,31,1
	frsp 31,31
	stfsx 31,31,25
.LVL267:
.L358:
	.loc 1 223 0
	fmr 1,30
.LVL268:
	.loc 1 212 0
	addi 28,28,1
	.loc 1 223 0
	bl sin
	frsp 0,1
	.loc 1 224 0
	fmr 1,30
	.loc 1 223 0
	stfsx 0,31,20
	.loc 1 224 0
	bl cos
	frsp 1,1
	stfsx 1,31,21
	.loc 1 212 0
	addi 31,31,4
.LVL269:
.L356:
	cmpw 7,28,30
	.loc 1 213 0
	lis 11,0x4330
	xoris 0,28,0x8000
	xoris 9,30,0x8000
	.loc 1 212 0
	blt+ 7,.L357
	.loc 1 227 0
	cmpwi 7,26,0
	beq- 7,.L363
	.loc 1 229 0
	lis 9,.LC2@ha
	.loc 1 234 0
	fneg 26,29
	.loc 1 229 0
	lfs 23,.LC2@l(9)
	lis 9,.LC6@ha
	lfs 24,.LC6@l(9)
	lis 9,.LC3@ha
	.loc 1 230 0
	lis 27,0x1
	.loc 1 229 0
	lfd 28,.LC3@l(9)
	.loc 1 230 0
	ori 27,27,34484
	.loc 1 227 0
	li 28,0
.LVL270:
	li 31,0
	addi 24,1,3848
	addi 25,1,4808
	b .L365
.L366:
	.loc 1 229 0
	stw 0,5772(1)
	fmr 12,23
	stw 11,5768(1)
	fmr 0,24
	stw 9,5780(1)
	lfd 13,5768(1)
	stw 11,5776(1)
	fsub 13,13,12
	.loc 1 230 0
	lwz 0,8(29)
	.loc 1 229 0
	fsub 13,13,0
	lfd 0,5776(1)
	.loc 1 230 0
	cmpw 7,0,27
	.loc 1 229 0
	fsub 0,0,12
	fmul 13,13,28
	fdiv 13,13,0
	frsp 30,13
	.loc 1 230 0
	bne+ 7,.L367
	.loc 1 231 0
	fmr 1,30
.LVL271:
	fmr 31,29
	bl sin
	fmul 0,31,1
	.loc 1 232 0
	fmr 1,30
	.loc 1 231 0
	frsp 0,0
	stfsx 0,31,24
	.loc 1 232 0
	bl cos
	b .L444
.LVL272:
.L367:
	.loc 1 234 0
	fmr 1,30
.LVL273:
	fmr 31,26
	bl sin
	fmul 0,31,1
	.loc 1 235 0
	fmr 1,30
	.loc 1 234 0
	frsp 0,0
	stfsx 0,31,24
	.loc 1 235 0
	bl cos
.L444:
	fmul 31,31,1
	.loc 1 228 0
	addi 28,28,1
	.loc 1 235 0
	frsp 31,31
	stfsx 31,31,25
	.loc 1 228 0
	addi 31,31,4
.LVL274:
.L365:
	cmpw 7,28,30
	.loc 1 229 0
	lis 11,0x4330
	xoris 0,28,0x8000
	xoris 9,30,0x8000
	.loc 1 228 0
	blt+ 7,.L366
.L363:
	.loc 1 240 0
	lfs 0,8(1)
	.loc 1 242 0
	cmpwi 7,22,0
	.loc 1 240 0
	slwi 0,30,2
	addi 11,1,8
	stfsx 0,11,0
	add 9,0,11
	.loc 1 241 0
	lfs 0,968(1)
	stfs 0,960(9)
	.loc 1 242 0
	beq- 7,.L370
	.loc 1 243 0
	lfs 0,1928(1)
	stfs 0,1920(9)
	.loc 1 244 0
	lfs 0,2888(1)
	stfs 0,2880(9)
.L370:
	.loc 1 246 0
	cmpwi 7,26,0
	beq- 7,.L372
	.loc 1 247 0
	lfs 0,3848(1)
	stfs 0,3840(9)
	.loc 1 248 0
	lfs 0,4808(1)
	stfs 0,4800(9)
.L372:
	.loc 1 251 0
	lwz 9,12(29)
	lis 0,0x1
	ori 0,0,34475
	cmpw 7,9,0
	beq- 7,.L376
	bgt- 7,.L379
	xoris 0,9,0xfffe
	cmpwi 7,0,-31062
	bne 7,.L436
	b .L375
.L379:
	xoris 0,9,0xfffe
	cmpwi 7,0,-31060
	beq 7,.L377
	xoris 0,9,0xfffe
	cmpwi 7,0,-31059
	bne 7,.L436
	b .L378
.L376:
	.loc 1 344 0
	lis 9,.LC2@ha
	.loc 1 349 0
	lis 25,0x1
	.loc 1 344 0
	lfs 28,.LC2@l(9)
	.loc 1 361 0
	lis 9,.LC7@ha
	.loc 1 349 0
	lis 26,0x1
.LVL275:
	.loc 1 361 0
	lfs 24,.LC7@l(9)
	fmr 26,28
	.loc 1 349 0
	ori 25,25,34464
	ori 26,26,34465
	.loc 1 364 0
	mr 18,11
	.loc 1 251 0
	li 27,1
.LVL276:
	.loc 1 354 0
	addi 19,1,1928
	addi 20,1,2888
	.loc 1 351 0
	addi 21,1,3848
	addi 22,1,4808
.LVL277:
	.loc 1 364 0
	addi 24,1,968
	b .L380
.LVL278:
.L377:
	.loc 1 265 0
	lis 9,.LC2@ha
	lis 28,0x4330
.LVL279:
	lfs 13,.LC2@l(9)
	xoris 0,23,0x8000
	stw 0,5772(1)
	.loc 1 304 0
	lis 9,.LC7@ha
	.loc 1 265 0
	stw 28,5768(1)
	fmr 22,13
	.loc 1 304 0
	lfs 18,.LC7@l(9)
	fmr 19,13
	.loc 1 265 0
	lfd 0,5768(1)
	.loc 1 272 0
	lis 22,0x1
.LVL280:
	.loc 1 285 0
	fmr 14,18
	.loc 1 272 0
	lis 24,0x1
	.loc 1 265 0
	fsub 29,0,22
.LVL281:
	.loc 1 283 0
	lis 25,0x1
	.loc 1 272 0
	ori 22,22,34464
	ori 24,24,34465
	.loc 1 283 0
	ori 25,25,34484
	.loc 1 301 0
	mr 20,11
	.loc 1 267 0
	frsp 15,29
	.loc 1 251 0
	li 9,0
.LVL282:
	.loc 1 277 0
	addi 17,1,1928
	addi 16,1,2888
	.loc 1 274 0
	addi 19,1,3848
	addi 18,1,4808
	.loc 1 301 0
	addi 21,1,968
.LVL283:
.L381:
	.loc 1 265 0
	xoris 0,9,0x8000
	stw 28,5768(1)
	stw 0,5772(1)
	.loc 1 266 0
	addi 26,9,1
.LVL284:
	xoris 0,26,0x8000
	.loc 1 270 0
	li 3,8
	.loc 1 265 0
	lfd 12,5768(1)
	.loc 1 270 0
	li 27,0
	.loc 1 266 0
	stw 0,5772(1)
	.loc 1 270 0
	li 31,0
	.loc 1 265 0
	fsub 12,12,22
	.loc 1 266 0
	lfd 0,5768(1)
	.loc 1 265 0
	fmul 13,12,27
	.loc 1 266 0
	fsub 0,0,22
	.loc 1 267 0
	frsp 12,12
	.loc 1 265 0
	fdiv 13,13,29
	.loc 1 266 0
	fmul 11,0,27
	.loc 1 268 0
	frsp 0,0
	.loc 1 267 0
	fdivs 23,12,15
	.loc 1 266 0
	fdiv 11,11,29
	.loc 1 268 0
	fdivs 24,0,15
	.loc 1 265 0
	frsp 16,13
	.loc 1 267 0
	fmuls 0,21,23
	.loc 1 268 0
	fmuls 13,21,24
	.loc 1 266 0
	frsp 17,11
	.loc 1 267 0
	fsub 0,25,0
	.loc 1 268 0
	fsub 13,25,13
	.loc 1 267 0
	frsp 26,0
	.loc 1 268 0
	frsp 28,13
	.loc 1 270 0
	bl glBegin
.LVL285:
	b .L382
.L383:
	.loc 1 272 0
	lwz 0,0(29)
	cmpw 7,0,22
	beq- 7,.L385
	cmpw 7,0,24
	bne+ 7,.L384
	.loc 1 274 0
	fmr 3,20
	lfsx 1,31,19
	lfsx 2,31,18
	b .L445
.LVL286:
.L385:
	.loc 1 277 0
	fmr 3,20
	lfsx 1,31,17
	lfsx 2,31,16
.LVL287:
.L445:
	bl glNormal3f
.LVL288:
.L384:
	.loc 1 283 0
	lwz 0,8(29)
	lbz 9,4(29)
	cmpw 7,0,25
	bne+ 7,.L387
	.loc 1 284 0
	cmpwi 7,9,0
	beq+ 7,.L389
	.loc 1 285 0
	xoris 9,30,0x8000
	xoris 0,27,0x8000
	stw 9,5780(1)
	lis 9,.LC2@ha
	stw 0,5772(1)
	fmr 2,23
	stw 28,5768(1)
	stw 28,5776(1)
	lfs 13,.LC2@l(9)
	lfd 1,5768(1)
	lfd 0,5776(1)
	fsub 1,1,13
	fsub 0,0,13
	frsp 1,1
	frsp 0,0
	fdivs 1,1,0
	fsubs 1,14,1
	bl glTexCoord2f
.L389:
	.loc 1 288 0
	lfsx 30,31,20
.LVL289:
	fmr 3,16
	lfsx 31,31,21
	fmuls 1,26,30
	fmuls 2,26,31
	bl glVertex3f
	.loc 1 290 0
	lbz 0,4(29)
	cmpwi 7,0,0
	beq+ 7,.L391
	.loc 1 291 0
	xoris 9,30,0x8000
	xoris 0,27,0x8000
	stw 9,5780(1)
	lis 9,.LC2@ha
	stw 0,5772(1)
	lis 11,.LC7@ha
	stw 28,5768(1)
	fmr 2,24
	stw 28,5776(1)
	lfs 13,.LC2@l(9)
	lfd 1,5768(1)
	lfd 0,5776(1)
	fsub 1,1,13
	fsub 0,0,13
	frsp 1,1
	frsp 0,0
	fdivs 1,1,0
	lfs 0,.LC7@l(11)
	fsubs 1,0,1
	bl glTexCoord2f
.L391:
	.loc 1 294 0
	fmuls 1,28,30
	fmuls 2,28,31
	fmr 3,17
	b .L446
.LVL290:
.L387:
	.loc 1 297 0
	cmpwi 7,9,0
	beq+ 7,.L394
	.loc 1 298 0
	xoris 9,30,0x8000
	xoris 0,27,0x8000
	stw 9,5780(1)
	lis 9,.LC2@ha
	stw 0,5772(1)
	lis 11,.LC7@ha
	stw 28,5768(1)
	fmr 2,24
	stw 28,5776(1)
	lfs 13,.LC2@l(9)
	lfd 1,5768(1)
	lfd 0,5776(1)
	fsub 1,1,13
	fsub 0,0,13
	frsp 1,1
	frsp 0,0
	fdivs 1,1,0
	lfs 0,.LC7@l(11)
	fsubs 1,0,1
	bl glTexCoord2f
.L394:
	.loc 1 301 0
	lfsx 31,31,20
	fmr 3,17
	lfsx 30,31,21
.LVL291:
	fmuls 1,28,31
	fmuls 2,28,30
	bl glVertex3f
	.loc 1 303 0
	lbz 0,4(29)
	cmpwi 7,0,0
	beq+ 7,.L396
	.loc 1 304 0
	xoris 0,27,0x8000
	xoris 9,30,0x8000
	stw 0,5772(1)
	fmr 13,19
	stw 9,5780(1)
	fmr 2,23
	stw 28,5768(1)
	stw 28,5776(1)
	lfd 1,5768(1)
	lfd 0,5776(1)
	fsub 1,1,13
	fsub 0,0,13
	frsp 1,1
	frsp 0,0
	fdivs 1,1,0
	fsubs 1,18,1
	bl glTexCoord2f
.L396:
	.loc 1 307 0
	fmuls 1,26,31
	fmuls 2,26,30
	fmr 3,16
.LVL292:
.L446:
	bl glVertex3f
	.loc 1 271 0
	addi 27,27,1
	addi 31,31,4
.LVL293:
.L382:
	cmpw 7,27,30
	ble+ 7,.L383
	.loc 1 311 0
	bl glEnd
	.loc 1 264 0
	cmpw 7,26,23
	beq- 7,.L436
	mr 9,26
	b .L381
.LVL294:
.L375:
	.loc 1 315 0
	li 3,0
	li 26,0
.LVL295:
	bl glBegin
.LVL296:
	.loc 1 330 0
	lis 9,.LC2@ha
	lfs 19,.LC2@l(9)
	.loc 1 333 0
	lis 9,.LC7@ha
	lfs 22,.LC7@l(9)
	.loc 1 315 0
	li 27,0
	.loc 1 320 0
	addi 20,1,1928
	addi 21,1,2888
	.loc 1 326 0
	addi 22,1,8
.LVL297:
	.loc 1 327 0
	addi 24,1,968
	.loc 1 328 0
	addi 25,23,1
	b .L400
.LVL298:
.L401:
	.loc 1 317 0
	lwz 9,0(29)
	addis 9,9,0xfffe
	addi 9,9,31072
	cmplwi 7,9,1
	bgt- 7,.L402
	.loc 1 320 0
	fmr 3,20
	lfsx 1,27,20
	lfsx 2,27,21
	bl glNormal3f
.L402:
	.loc 1 330 0
	lis 28,0x4330
	xoris 0,23,0x8000
	.loc 1 326 0
	lfsx 23,27,22
	.loc 1 330 0
	fmr 30,19
.LVL299:
	.loc 1 327 0
	lfsx 24,27,24
	li 31,0
	.loc 1 330 0
	stw 0,5780(1)
	stw 28,5776(1)
	lfd 0,5776(1)
	fsub 29,0,30
.LVL300:
	frsp 26,29
.L404:
	xoris 0,31,0x8000
	stw 28,5768(1)
	stw 0,5772(1)
	.loc 1 328 0
	addi 31,31,1
	.loc 1 330 0
	lfd 0,5768(1)
	.loc 1 332 0
	lbz 0,4(29)
	.loc 1 330 0
	fsub 31,0,30
	.loc 1 332 0
	cmpwi 7,0,0
	.loc 1 330 0
	frsp 0,31
	fdivs 2,0,26
	fmuls 0,21,2
	fsub 0,25,0
	frsp 28,0
	.loc 1 332 0
	beq+ 7,.L405
	.loc 1 333 0
	xoris 0,26,0x8000
	xoris 9,30,0x8000
	stw 0,5772(1)
	stw 9,5780(1)
	stw 28,5776(1)
	lfd 1,5768(1)
	lfd 0,5776(1)
	fsub 1,1,30
	fsub 0,0,30
	frsp 1,1
	frsp 0,0
	fdivs 1,1,0
	fsubs 1,22,1
	bl glTexCoord2f
.L405:
	.loc 1 336 0
	fmul 3,31,27
	fmuls 2,28,24
	fmuls 1,28,23
	fdiv 3,3,29
	frsp 3,3
	bl glVertex3f
	.loc 1 328 0
	cmpw 7,31,25
	bne+ 7,.L404
	.loc 1 316 0
	addi 26,26,1
	addi 27,27,4
.LVL301:
.L400:
	cmpw 7,26,30
	blt+ 7,.L401
	.loc 1 340 0
	bl glEnd
	b .L436
.LVL302:
.L409:
	.loc 1 344 0
	lis 9,0x4330
	xoris 0,27,0x8000
	stw 0,5772(1)
	fmr 11,28
	stw 9,5768(1)
	xoris 0,23,0x8000
	stw 0,5780(1)
	.loc 1 347 0
	li 3,3
	.loc 1 344 0
	lfd 13,5768(1)
	.loc 1 347 0
	li 28,0
	.loc 1 344 0
	stw 9,5776(1)
	.loc 1 347 0
	li 31,0
	.loc 1 344 0
	fsub 13,13,11
	lfd 0,5776(1)
	fmul 12,13,27
	fsub 0,0,11
	.loc 1 345 0
	frsp 13,13
	.loc 1 344 0
	fdiv 12,12,0
	.loc 1 345 0
	frsp 0,0
	.loc 1 344 0
	frsp 29,12
.LVL303:
	.loc 1 345 0
	fdivs 30,13,0
.LVL304:
	fmuls 0,21,30
	fsub 0,25,0
	frsp 31,0
	.loc 1 347 0
	bl glBegin
.LVL305:
	b .L410
.L411:
	.loc 1 349 0
	lwz 0,0(29)
	cmpw 7,0,25
	cmpw 6,0,26
	beq- 7,.L413
	bne+ 6,.L412
	.loc 1 351 0
	fmr 3,20
	lfsx 1,31,21
	lfsx 2,31,22
	b .L447
.LVL306:
.L413:
	.loc 1 354 0
	fmr 3,20
	lfsx 1,31,19
	lfsx 2,31,20
.LVL307:
.L447:
	bl glNormal3f
.LVL308:
.L412:
	.loc 1 360 0
	lbz 0,4(29)
	cmpwi 7,0,0
	beq+ 7,.L415
	.loc 1 361 0
	lis 11,0x4330
	xoris 0,28,0x8000
	xoris 9,30,0x8000
	stw 0,5772(1)
	stw 9,5780(1)
	fmr 13,26
	stw 11,5776(1)
	fmr 2,30
	stw 11,5768(1)
	lfd 0,5776(1)
	lfd 1,5768(1)
	fsub 0,0,13
	fsub 1,1,13
	frsp 0,0
	frsp 1,1
	fdivs 1,1,0
	fsubs 1,24,1
	bl glTexCoord2f
.L415:
	.loc 1 364 0
	lfsx 1,31,18
	fmr 3,29
	lfsx 2,31,24
	.loc 1 348 0
	addi 28,28,1
	.loc 1 364 0
	fmuls 1,31,1
	.loc 1 348 0
	addi 31,31,4
	.loc 1 364 0
	fmuls 2,31,2
	bl glVertex3f
.L410:
	.loc 1 348 0
	cmpw 7,28,30
	ble+ 7,.L411
	.loc 1 367 0
	bl glEnd
	.loc 1 343 0
	addi 27,27,1
.LVL309:
.L380:
	cmpw 7,27,23
	bne+ 7,.L409
.LVL310:
.L378:
	.loc 1 372 0
	lis 9,.LC2@ha
	lis 26,0x4330
.LVL311:
	lfs 13,.LC2@l(9)
	xoris 0,23,0x8000
	stw 0,5772(1)
	.loc 1 389 0
	lis 9,.LC7@ha
	.loc 1 372 0
	stw 26,5768(1)
	fmr 26,13
	.loc 1 389 0
	fmr 19,13
	.loc 1 377 0
	lis 24,0x1
	.loc 1 372 0
	lfd 0,5768(1)
	.loc 1 377 0
	lis 25,0x1
	.loc 1 389 0
	lfs 18,.LC7@l(9)
	.loc 1 377 0
	ori 24,24,34464
	.loc 1 372 0
	fsub 31,0,26
.LVL312:
	.loc 1 377 0
	ori 25,25,34465
	.loc 1 343 0
	li 27,0
.LVL313:
	.loc 1 382 0
	addi 17,1,1928
	addi 18,1,2888
	.loc 1 379 0
	addi 19,1,3848
	.loc 1 373 0
	frsp 23,31
	.loc 1 379 0
	addi 20,1,4808
	.loc 1 392 0
	addi 21,1,8
	addi 22,1,968
.LVL314:
.L418:
	.loc 1 372 0
	xoris 0,27,0x8000
	stw 26,5768(1)
	stw 0,5772(1)
	fmr 24,31
	.loc 1 373 0
	fmr 22,23
	.loc 1 375 0
	li 3,3
	.loc 1 372 0
	lfd 0,5768(1)
	.loc 1 375 0
	li 28,0
.LVL315:
	li 31,0
	.loc 1 372 0
	fsub 0,0,26
	fmul 13,0,27
	.loc 1 373 0
	frsp 0,0
	.loc 1 372 0
	fdiv 13,13,31
	.loc 1 373 0
	fdivs 29,0,23
.LVL316:
	fmuls 0,21,29
	.loc 1 372 0
	frsp 28,13
	.loc 1 373 0
	fsub 0,25,0
	frsp 30,0
.LVL317:
	.loc 1 375 0
	bl glBegin
.LVL318:
	b .L419
.L420:
	.loc 1 377 0
	lwz 0,0(29)
	cmpw 7,0,24
	cmpw 6,0,25
	beq- 7,.L422
	bne+ 6,.L421
	.loc 1 379 0
	fmr 3,20
	lfsx 1,31,19
	lfsx 2,31,20
	b .L448
.LVL319:
.L422:
	.loc 1 382 0
	fmr 3,20
	lfsx 1,31,17
	lfsx 2,31,18
.LVL320:
.L448:
	bl glNormal3f
.LVL321:
.L421:
	.loc 1 388 0
	lbz 0,4(29)
	cmpwi 7,0,0
	beq+ 7,.L424
	.loc 1 389 0
	xoris 0,28,0x8000
	xoris 9,30,0x8000
	stw 0,5772(1)
	fmr 13,19
	stw 9,5780(1)
	fmr 2,29
	stw 26,5768(1)
	stw 26,5776(1)
	lfd 1,5768(1)
	lfd 0,5776(1)
	fsub 1,1,13
	fsub 0,0,13
	frsp 1,1
	frsp 0,0
	fdivs 1,1,0
	fsubs 1,18,1
	bl glTexCoord2f
.L424:
	.loc 1 392 0
	lfsx 1,31,21
	fmr 3,28
	lfsx 2,31,22
	.loc 1 376 0
	addi 28,28,1
	.loc 1 392 0
	fmuls 1,30,1
	.loc 1 376 0
	addi 31,31,4
	.loc 1 392 0
	fmuls 2,30,2
	bl glVertex3f
.L419:
	.loc 1 376 0
	cmpw 7,28,30
	ble+ 7,.L420
	.loc 1 395 0
	add 27,27,23
	bl glEnd
	.loc 1 371 0
	cmpw 7,27,23
	ble+ 7,.L418
	.loc 1 412 0
	lis 9,.LC2@ha
	.loc 1 371 0
	li 27,0
.LVL322:
	.loc 1 412 0
	lfs 19,.LC2@l(9)
	.loc 1 415 0
	lis 9,.LC7@ha
	lfs 20,.LC7@l(9)
.LVL323:
	.loc 1 401 0
	lis 9,.LC14@ha
	lfs 23,.LC14@l(9)
	.loc 1 371 0
	li 28,0
	.loc 1 401 0
	addi 22,1,1928
	addi 24,1,2888
	.loc 1 407 0
	addi 25,1,8
	.loc 1 408 0
	addi 26,1,968
	b .L428
.LVL324:
.L429:
	.loc 1 398 0
	lwz 9,0(29)
	addis 9,9,0xfffe
	addi 9,9,31072
	cmplwi 7,9,1
	bgt- 7,.L430
	.loc 1 401 0
	fmr 3,23
	lfsx 1,28,22
	lfsx 2,28,24
	bl glNormal3f
.L430:
	.loc 1 412 0
	fmr 30,19
	.loc 1 409 0
	li 3,3
	.loc 1 407 0
	lfsx 26,28,25
	.loc 1 409 0
	li 31,0
	.loc 1 408 0
	lfsx 28,28,26
.LVL325:
	.loc 1 409 0
	bl glBegin
.L432:
	.loc 1 412 0
	xoris 0,31,0x8000
	lis 11,0x4330
	stw 0,5772(1)
	.loc 1 410 0
	addi 31,31,1
	.loc 1 412 0
	stw 11,5768(1)
	lfd 0,5768(1)
	.loc 1 414 0
	lbz 0,4(29)
	.loc 1 412 0
	fsub 31,0,30
	.loc 1 414 0
	cmpwi 7,0,0
	.loc 1 412 0
	frsp 0,31
	fdivs 2,0,22
	fmuls 0,21,2
	fsub 0,25,0
	frsp 29,0
	.loc 1 414 0
	beq+ 7,.L433
	.loc 1 415 0
	xoris 0,27,0x8000
	xoris 9,30,0x8000
	stw 0,5772(1)
	stw 9,5780(1)
	stw 11,5776(1)
	lfd 1,5768(1)
	lfd 0,5776(1)
	fsub 1,1,30
	fsub 0,0,30
	frsp 1,1
	frsp 0,0
	fdivs 1,1,0
	fsubs 1,20,1
	bl glTexCoord2f
.L433:
	.loc 1 418 0
	fmul 3,31,27
	fmuls 2,29,28
	fmuls 1,29,26
	fdiv 3,3,24
	frsp 3,3
	bl glVertex3f
	.loc 1 410 0
	cmpw 7,31,23
	ble+ 7,.L432
	.loc 1 421 0
	bl glEnd
	.loc 1 397 0
	addi 27,27,1
	addi 28,28,4
.LVL326:
.L428:
	cmpw 7,27,30
	blt+ 7,.L429
.LVL327:
.L436:
	.loc 1 427 0
	lwz 0,6004(1)
	lwz 12,5788(1)
	lmw 16,5792(1)
.LVL328:
	mtlr 0
	lfd 14,5856(1)
	mtcrf 8,12
	lfd 15,5864(1)
	lfd 16,5872(1)
	lfd 17,5880(1)
.LVL329:
	lfd 18,5888(1)
	lfd 19,5896(1)
	lfd 20,5904(1)
.LVL330:
	lfd 21,5912(1)
.LVL331:
	lfd 22,5920(1)
	lfd 23,5928(1)
	lfd 24,5936(1)
	lfd 25,5944(1)
.LVL332:
	lfd 26,5952(1)
.LVL333:
	lfd 27,5960(1)
.LVL334:
	lfd 28,5968(1)
.LVL335:
	lfd 29,5976(1)
.LVL336:
	lfd 30,5984(1)
.LVL337:
	lfd 31,5992(1)
	addi 1,1,6000
	blr
.LFE10:
	.size	gluCylinder, .-gluCylinder
	.align 2
	.globl gluDeleteQuadric
	.type	gluDeleteQuadric, @function
gluDeleteQuadric:
.LFB3:
	.loc 1 80 0
.LVL338:
	mflr 0
.LCFI68:
	stwu 1,-8(1)
.LCFI69:
	stw 0,12(1)
.LCFI70:
	.loc 1 81 0
	bl free
.LVL339:
	.loc 1 82 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE3:
	.size	gluDeleteQuadric, .-gluDeleteQuadric
	.align 2
	.globl gluNewQuadric
	.type	gluNewQuadric, @function
gluNewQuadric:
.LFB2:
	.loc 1 61 0
	mflr 0
.LCFI71:
	stwu 1,-8(1)
.LCFI72:
	.loc 1 64 0
	li 3,20
	.loc 1 61 0
	stw 0,12(1)
.LCFI73:
	.loc 1 64 0
	bl malloc
	.loc 1 65 0
	mr. 10,3
	li 3,0
.LVL340:
	beq- 0,.L455
	.loc 1 69 0
	lis 0,0x1
	.loc 1 71 0
	lis 9,0x1
	.loc 1 69 0
	ori 0,0,34464
	.loc 1 72 0
	lis 11,0x1
	.loc 1 69 0
	stw 0,0(10)
	.loc 1 70 0
	li 0,0
	.loc 1 71 0
	ori 9,9,34484
	.loc 1 72 0
	ori 11,11,34476
	.loc 1 70 0
	stb 0,4(10)
	.loc 1 73 0
	li 0,0
	.loc 1 71 0
	stw 9,8(10)
	.loc 1 64 0
	mr 3,10
	.loc 1 72 0
	stw 11,12(10)
	.loc 1 73 0
	stw 0,16(10)
.L455:
	.loc 1 75 0
	lwz 0,12(1)
	addi 1,1,8
.LVL341:
	mtlr 0
	blr
.LFE2:
	.size	gluNewQuadric, .-gluNewQuadric
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC2:
	.4byte	1501560836
.LC6:
	.4byte	1056964608
.LC7:
	.4byte	1065353216
.LC14:
	.4byte	0
.LC16:
	.4byte	-1011613696
.LC18:
	.4byte	1135869952
.LC20:
	.4byte	1127481344
.LC21:
	.4byte	-1082130432
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC0:
	.4byte	0
	.4byte	0
.LC3:
	.4byte	1075388923
	.4byte	1413754136
.LC4:
	.4byte	1074340347
	.4byte	1413754136
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
	.4byte	.LCFI1-.LFB4
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI5-.LFB13
	.byte	0xe
	.uleb128 0x2df0
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xba
	.uleb128 0xc
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x9
	.uleb128 0x40
	.uleb128 0xc
	.byte	0x4
	.4byte	.LCFI22-.LCFI6
	.byte	0x9f
	.uleb128 0x21
	.byte	0x9e
	.uleb128 0x22
	.byte	0x9d
	.uleb128 0x23
	.byte	0x9c
	.uleb128 0x24
	.byte	0x9b
	.uleb128 0x25
	.byte	0x9a
	.uleb128 0x26
	.byte	0x99
	.uleb128 0x27
	.byte	0x98
	.uleb128 0x28
	.byte	0x97
	.uleb128 0x29
	.byte	0x96
	.uleb128 0x2a
	.byte	0x95
	.uleb128 0x2b
	.byte	0x94
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x2d
	.byte	0x92
	.uleb128 0x2e
	.byte	0x91
	.uleb128 0x2f
	.byte	0x90
	.uleb128 0x30
	.byte	0x8f
	.uleb128 0x31
	.byte	0x8e
	.uleb128 0x32
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
	.byte	0xb3
	.uleb128 0x1a
	.byte	0xb2
	.uleb128 0x1c
	.byte	0xb1
	.uleb128 0x1e
	.byte	0xb0
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI24-.LCFI22
	.byte	0x5
	.uleb128 0x40
	.uleb128 0x33
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI26-.LFB12
	.byte	0xe
	.uleb128 0x840
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0x9f
	.uleb128 0x1f
	.byte	0x9e
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x21
	.byte	0x9c
	.uleb128 0x22
	.byte	0x9b
	.uleb128 0x23
	.byte	0x9a
	.uleb128 0x24
	.byte	0x99
	.uleb128 0x25
	.byte	0x98
	.uleb128 0x26
	.byte	0x97
	.uleb128 0x27
	.byte	0x96
	.uleb128 0x28
	.byte	0x95
	.uleb128 0x29
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI29-.LCFI27
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI32-.LCFI29
	.byte	0xb2
	.uleb128 0x1c
	.byte	0xb1
	.uleb128 0x1e
	.byte	0xbe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI43-.LCFI32
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0xbf
	.uleb128 0x2
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
	.byte	0xb3
	.uleb128 0x1a
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI46-.LFB10
	.byte	0xe
	.uleb128 0x1770
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
	.byte	0xb9
	.uleb128 0xe
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x9
	.uleb128 0x40
	.uleb128 0xc
	.byte	0x4
	.4byte	.LCFI48-.LCFI47
	.byte	0xbb
	.uleb128 0xa
	.byte	0x4
	.4byte	.LCFI65-.LCFI48
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
	.byte	0x91
	.uleb128 0x33
	.byte	0x90
	.uleb128 0x34
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0xba
	.uleb128 0xc
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
	.byte	0xb3
	.uleb128 0x1a
	.byte	0xb2
	.uleb128 0x1c
	.byte	0xb1
	.uleb128 0x1e
	.byte	0xb0
	.uleb128 0x20
	.byte	0xaf
	.uleb128 0x22
	.byte	0xae
	.uleb128 0x24
	.byte	0x4
	.4byte	.LCFI67-.LCFI65
	.byte	0x5
	.uleb128 0x40
	.uleb128 0x35
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI69-.LFB3
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI70-.LCFI69
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI72-.LFB2
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI73-.LCFI72
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE22:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
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
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LFB13-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0x71
	.sleb128 11760
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x35
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x35
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL134-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -216
	.4byte	.LVL134-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -216
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LFB12-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI26-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 2112
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL206-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL219-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL235-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL227-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LVL244-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LVL244-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST62:
	.4byte	.LVL244-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST63:
	.4byte	.LVL244-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST64:
	.4byte	.LVL244-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST65:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI46-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI46-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 6000
	.4byte	0x0
	.4byte	0x0
.LLST66:
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST67:
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL332-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	0x0
	.4byte	0x0
.LLST68:
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST69:
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL334-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0x0
	.4byte	0x0
.LLST70:
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST71:
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0x0
	.4byte	0x0
.LLST72:
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL322-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST73:
	.4byte	.LVL276-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST74:
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL289-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL317-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL337-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST75:
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x30
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL325-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL326-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST76:
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.4byte	0x0
	.4byte	0x0
.LLST77:
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL333-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0x0
	.4byte	0x0
.LLST78:
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST79:
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL264-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL318-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL327-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST80:
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x35
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL331-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x35
	.4byte	0x0
	.4byte	0x0
.LLST81:
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL287-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL288-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL307-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL320-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL321-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL323-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	0x0
	.4byte	0x0
.LLST82:
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL336-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST83:
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL312-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL336-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL336-.Ltext0
	.4byte	.LVL337-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST84:
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST85:
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL278-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL297-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0x0
	.4byte	0x0
.LLST86:
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL278-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST87:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI69-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI69-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST88:
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL339-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST89:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI72-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI72-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST90:
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL341-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL341-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/include/GL/gl.h"
	.file 3 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/include/GL/glu.h"
	.section	.debug_info
	.4byte	0x925
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x1
	.4byte	.LASF95
	.4byte	.LASF96
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x2
	.byte	0x92
	.4byte	0x25
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x2
	.byte	0x93
	.4byte	0x2f
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x2
	.byte	0x98
	.4byte	0x4b
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x2
	.byte	0x9d
	.4byte	0x7c
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x2
	.byte	0x9f
	.4byte	0x75
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x10e
	.4byte	0xcd
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x14
	.byte	0x3
	.2byte	0x10e
	.4byte	0x121
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x34
	.4byte	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x35
	.4byte	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x36
	.4byte	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x37
	.4byte	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x38
	.4byte	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.4byte	0x12d
	.uleb128 0xa
	.4byte	0xa0
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x121
	.uleb128 0xc
	.4byte	.LASF97
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST0
	.4byte	0x16a
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x54
	.4byte	0x16a
	.4byte	.LLST1
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0x54
	.4byte	0x8a
	.4byte	.LLST2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc1
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF26
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x51
	.4byte	0x1b4
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x5c
	.4byte	0x16a
	.4byte	.LLST4
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0x5c
	.4byte	0x8a
	.4byte	.LLST5
	.uleb128 0xf
	.string	"fn"
	.byte	0x1
	.byte	0x5c
	.4byte	0x1bb
	.4byte	.LLST6
	.byte	0x0
	.uleb128 0x10
	.4byte	0x1bb
	.uleb128 0x11
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1b4
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x51
	.4byte	0x1f7
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x69
	.4byte	0x16a
	.4byte	.LLST8
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x69
	.4byte	0x8a
	.4byte	.LLST9
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF28
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x51
	.4byte	0x229
	.uleb128 0x12
	.4byte	.LASF24
	.byte	0x1
	.byte	0x78
	.4byte	0x16a
	.byte	0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LASF20
	.byte	0x1
	.byte	0x78
	.4byte	0x95
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF29
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x51
	.4byte	0x25f
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x7e
	.4byte	0x16a
	.4byte	.LLST12
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0x7e
	.4byte	0x8a
	.4byte	.LLST13
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF30
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x51
	.4byte	0x295
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x8c
	.4byte	0x16a
	.4byte	.LLST15
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0x8c
	.4byte	0x8a
	.4byte	.LLST16
	.byte	0x0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x2be
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST17
	.4byte	0x4f8
	.uleb128 0x14
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x2bd
	.4byte	0x16a
	.4byte	.LLST18
	.uleb128 0x14
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x2bd
	.4byte	0xb6
	.4byte	.LLST19
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x2bd
	.4byte	0xa0
	.4byte	.LLST20
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x2bd
	.4byte	0xa0
	.4byte	.LLST21
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.2byte	0x2bf
	.4byte	0xa0
	.4byte	.LLST22
	.uleb128 0x15
	.string	"j"
	.byte	0x1
	.2byte	0x2bf
	.4byte	0xa0
	.4byte	.LLST23
	.uleb128 0x16
	.string	"max"
	.byte	0x1
	.2byte	0x2bf
	.4byte	0xa0
	.uleb128 0x17
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x2c0
	.4byte	0x4f8
	.byte	0x4
	.byte	0x91
	.sleb128 -11752
	.uleb128 0x17
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x2c1
	.4byte	0x4f8
	.byte	0x4
	.byte	0x91
	.sleb128 -10792
	.uleb128 0x17
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x2c2
	.4byte	0x4f8
	.byte	0x4
	.byte	0x91
	.sleb128 -9832
	.uleb128 0x17
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x2c3
	.4byte	0x4f8
	.byte	0x4
	.byte	0x91
	.sleb128 -8872
	.uleb128 0x17
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x4f8
	.byte	0x3
	.byte	0x91
	.sleb128 -7912
	.uleb128 0x17
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x2c5
	.4byte	0x4f8
	.byte	0x3
	.byte	0x91
	.sleb128 -6952
	.uleb128 0x17
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x2c6
	.4byte	0x4f8
	.byte	0x3
	.byte	0x91
	.sleb128 -5992
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x2c7
	.4byte	0x4f8
	.byte	0x3
	.byte	0x91
	.sleb128 -5032
	.uleb128 0x17
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x2c8
	.4byte	0x4f8
	.byte	0x3
	.byte	0x91
	.sleb128 -4072
	.uleb128 0x17
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x2c9
	.4byte	0x4f8
	.byte	0x3
	.byte	0x91
	.sleb128 -3112
	.uleb128 0x17
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x2ca
	.4byte	0x4f8
	.byte	0x3
	.byte	0x91
	.sleb128 -2152
	.uleb128 0x17
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x2cb
	.4byte	0x4f8
	.byte	0x3
	.byte	0x91
	.sleb128 -1192
	.uleb128 0x18
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x2cc
	.4byte	0xab
	.4byte	.LLST24
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.2byte	0x2cd
	.4byte	0xab
	.uleb128 0x16
	.string	"y"
	.byte	0x1
	.2byte	0x2cd
	.4byte	0xab
	.uleb128 0x18
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x2cd
	.4byte	0xab
	.4byte	.LLST25
	.uleb128 0x18
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x2cd
	.4byte	0xab
	.4byte	.LLST26
	.uleb128 0x18
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x2ce
	.4byte	0xab
	.4byte	.LLST27
	.uleb128 0x18
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x2ce
	.4byte	0xab
	.4byte	.LLST28
	.uleb128 0x18
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x2ce
	.4byte	0xab
	.4byte	.LLST29
	.uleb128 0x18
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x2ce
	.4byte	0xab
	.4byte	.LLST30
	.uleb128 0x18
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x2cf
	.4byte	0xab
	.4byte	.LLST31
	.uleb128 0x18
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x2cf
	.4byte	0xab
	.4byte	.LLST32
	.uleb128 0x18
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x2cf
	.4byte	0xab
	.4byte	.LLST33
	.uleb128 0x18
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x2cf
	.4byte	0xab
	.4byte	.LLST34
	.uleb128 0x19
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x2d0
	.4byte	0xab
	.uleb128 0x19
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x2d1
	.4byte	0xab
	.uleb128 0x18
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x2d2
	.4byte	0x95
	.4byte	.LLST35
	.uleb128 0x18
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x2d2
	.4byte	0x95
	.4byte	.LLST36
	.uleb128 0x18
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x2d3
	.4byte	0xa0
	.4byte	.LLST37
	.uleb128 0x18
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x2d3
	.4byte	0xa0
	.4byte	.LLST38
	.byte	0x0
	.uleb128 0x1a
	.4byte	0xab
	.4byte	0x508
	.uleb128 0x1b
	.4byte	0x2c
	.byte	0xef
	.byte	0x0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1b8
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST39
	.4byte	0x69b
	.uleb128 0x14
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x16a
	.4byte	.LLST40
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x1b5
	.4byte	0xb6
	.4byte	.LLST41
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1b6
	.4byte	0xb6
	.4byte	.LLST42
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x1b6
	.4byte	0xa0
	.4byte	.LLST43
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1b6
	.4byte	0xa0
	.4byte	.LLST44
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1b7
	.4byte	0xb6
	.4byte	.LLST45
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1b7
	.4byte	0xb6
	.4byte	.LLST46
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.2byte	0x1b9
	.4byte	0xa0
	.4byte	.LLST47
	.uleb128 0x15
	.string	"j"
	.byte	0x1
	.2byte	0x1b9
	.4byte	0xa0
	.4byte	.LLST48
	.uleb128 0x16
	.string	"max"
	.byte	0x1
	.2byte	0x1b9
	.4byte	0xa0
	.uleb128 0x17
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x4f8
	.byte	0x3
	.byte	0x91
	.sleb128 -2104
	.uleb128 0x17
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x4f8
	.byte	0x3
	.byte	0x91
	.sleb128 -1144
	.uleb128 0x19
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x1bc
	.4byte	0xab
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.2byte	0x1bd
	.4byte	0xab
	.uleb128 0x16
	.string	"y"
	.byte	0x1
	.2byte	0x1bd
	.4byte	0xab
	.uleb128 0x18
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1be
	.4byte	0xab
	.4byte	.LLST49
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1be
	.4byte	0xab
	.4byte	.LLST50
	.uleb128 0x18
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1bf
	.4byte	0xab
	.4byte	.LLST51
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1c0
	.4byte	0xab
	.4byte	.LLST52
	.uleb128 0x18
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1c0
	.4byte	0xab
	.4byte	.LLST53
	.uleb128 0x18
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1c1
	.4byte	0xab
	.4byte	.LLST54
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x1c1
	.4byte	0xab
	.4byte	.LLST55
	.uleb128 0x18
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x1c2
	.4byte	0xab
	.4byte	.LLST56
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1c3
	.4byte	0xa0
	.4byte	.LLST57
	.uleb128 0x18
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1c4
	.4byte	0xa0
	.4byte	.LLST58
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x1b0
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x1
	.byte	0x51
	.4byte	0x704
	.uleb128 0x14
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x16a
	.4byte	.LLST60
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x1ae
	.4byte	0xb6
	.4byte	.LLST61
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1ae
	.4byte	0xb6
	.4byte	.LLST62
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x1af
	.4byte	0xa0
	.4byte	.LLST63
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1af
	.4byte	0xa0
	.4byte	.LLST64
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF82
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST65
	.4byte	0x8cc
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x9c
	.4byte	0x16a
	.4byte	.LLST66
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0x1
	.byte	0x9c
	.4byte	0xb6
	.4byte	.LLST67
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x1
	.byte	0x9c
	.4byte	0xb6
	.4byte	.LLST68
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0x1
	.byte	0x9d
	.4byte	0xb6
	.4byte	.LLST69
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0x9d
	.4byte	0xa0
	.4byte	.LLST70
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x9d
	.4byte	0xa0
	.4byte	.LLST71
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.byte	0x9f
	.4byte	0xa0
	.4byte	.LLST72
	.uleb128 0x1e
	.string	"j"
	.byte	0x1
	.byte	0x9f
	.4byte	0xa0
	.4byte	.LLST73
	.uleb128 0x1f
	.string	"max"
	.byte	0x1
	.byte	0x9f
	.4byte	0xa0
	.uleb128 0x20
	.4byte	.LASF70
	.byte	0x1
	.byte	0xa0
	.4byte	0x4f8
	.byte	0x3
	.byte	0x91
	.sleb128 -5992
	.uleb128 0x20
	.4byte	.LASF71
	.byte	0x1
	.byte	0xa1
	.4byte	0x4f8
	.byte	0x3
	.byte	0x91
	.sleb128 -5032
	.uleb128 0x20
	.4byte	.LASF86
	.byte	0x1
	.byte	0xa2
	.4byte	0x4f8
	.byte	0x3
	.byte	0x91
	.sleb128 -4072
	.uleb128 0x20
	.4byte	.LASF87
	.byte	0x1
	.byte	0xa3
	.4byte	0x4f8
	.byte	0x3
	.byte	0x91
	.sleb128 -3112
	.uleb128 0x20
	.4byte	.LASF88
	.byte	0x1
	.byte	0xa4
	.4byte	0x4f8
	.byte	0x3
	.byte	0x91
	.sleb128 -2152
	.uleb128 0x20
	.4byte	.LASF89
	.byte	0x1
	.byte	0xa5
	.4byte	0x4f8
	.byte	0x3
	.byte	0x91
	.sleb128 -1192
	.uleb128 0x21
	.4byte	.LASF47
	.byte	0x1
	.byte	0xa6
	.4byte	0xab
	.4byte	.LLST74
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.byte	0xa7
	.4byte	0xab
	.uleb128 0x1f
	.string	"y"
	.byte	0x1
	.byte	0xa7
	.4byte	0xab
	.uleb128 0x21
	.4byte	.LASF48
	.byte	0x1
	.byte	0xa7
	.4byte	0xab
	.4byte	.LLST75
	.uleb128 0x21
	.4byte	.LASF49
	.byte	0x1
	.byte	0xa7
	.4byte	0xab
	.4byte	.LLST76
	.uleb128 0x21
	.4byte	.LASF72
	.byte	0x1
	.byte	0xa8
	.4byte	0xab
	.4byte	.LLST77
	.uleb128 0x21
	.4byte	.LASF73
	.byte	0x1
	.byte	0xa8
	.4byte	0xab
	.4byte	.LLST78
	.uleb128 0x21
	.4byte	.LASF90
	.byte	0x1
	.byte	0xa9
	.4byte	0xab
	.4byte	.LLST79
	.uleb128 0x21
	.4byte	.LASF74
	.byte	0x1
	.byte	0xaa
	.4byte	0xab
	.4byte	.LLST80
	.uleb128 0x21
	.4byte	.LASF58
	.byte	0x1
	.byte	0xab
	.4byte	0xab
	.4byte	.LLST81
	.uleb128 0x21
	.4byte	.LASF59
	.byte	0x1
	.byte	0xac
	.4byte	0xab
	.4byte	.LLST82
	.uleb128 0x21
	.4byte	.LASF75
	.byte	0x1
	.byte	0xad
	.4byte	0xab
	.4byte	.LLST83
	.uleb128 0x21
	.4byte	.LASF76
	.byte	0x1
	.byte	0xad
	.4byte	0xab
	.4byte	.LLST84
	.uleb128 0x21
	.4byte	.LASF60
	.byte	0x1
	.byte	0xae
	.4byte	0x4b
	.4byte	.LLST85
	.uleb128 0x21
	.4byte	.LASF61
	.byte	0x1
	.byte	0xae
	.4byte	0x4b
	.4byte	.LLST86
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF91
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST87
	.4byte	0x8f5
	.uleb128 0xd
	.4byte	.LASF92
	.byte	0x1
	.byte	0x4f
	.4byte	0x16a
	.4byte	.LLST88
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF98
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.4byte	0x922
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST89
	.4byte	0x922
	.uleb128 0x21
	.4byte	.LASF93
	.byte	0x1
	.byte	0x3e
	.4byte	0x16a
	.4byte	.LLST90
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc1
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
	.uleb128 0x5
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0xa
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.4byte	0xe7
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x929
	.4byte	0x170
	.string	"gluQuadricCallback"
	.4byte	0x1c1
	.string	"gluQuadricNormals"
	.4byte	0x1f7
	.string	"gluQuadricTexture"
	.4byte	0x229
	.string	"gluQuadricOrientation"
	.4byte	0x25f
	.string	"gluQuadricDrawStyle"
	.4byte	0x295
	.string	"gluSphere"
	.4byte	0x508
	.string	"gluPartialDisk"
	.4byte	0x69b
	.string	"gluDisk"
	.4byte	0x704
	.string	"gluCylinder"
	.4byte	0x8cc
	.string	"gluDeleteQuadric"
	.4byte	0x8f5
	.string	"gluNewQuadric"
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
.LASF53:
	.string	"sintemp4"
.LASF16:
	.string	"GLfloat"
.LASF87:
	.string	"cosCache2"
.LASF89:
	.string	"cosCache3"
.LASF92:
	.string	"state"
.LASF48:
	.string	"zLow"
.LASF22:
	.string	"drawStyle"
.LASF84:
	.string	"topRadius"
.LASF71:
	.string	"cosCache"
.LASF35:
	.string	"sinCache1a"
.LASF41:
	.string	"sinCache1b"
.LASF96:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\freespace2wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF12:
	.string	"long double"
.LASF97:
	.string	"gluQuadricError"
.LASF40:
	.string	"cosCache3a"
.LASF98:
	.string	"gluNewQuadric"
.LASF67:
	.string	"loops"
.LASF4:
	.string	"short int"
.LASF29:
	.string	"gluQuadricOrientation"
.LASF28:
	.string	"gluQuadricTexture"
.LASF73:
	.string	"costemp"
.LASF75:
	.string	"radiusLow"
.LASF19:
	.string	"normals"
.LASF14:
	.string	"GLboolean"
.LASF82:
	.string	"gluCylinder"
.LASF83:
	.string	"baseRadius"
.LASF11:
	.string	"float"
.LASF94:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF5:
	.string	"long long int"
.LASF74:
	.string	"deltaRadius"
.LASF60:
	.string	"needCache2"
.LASF61:
	.string	"needCache3"
.LASF79:
	.string	"angleOffset"
.LASF88:
	.string	"sinCache3"
.LASF9:
	.string	"long int"
.LASF64:
	.string	"gluPartialDisk"
.LASF17:
	.string	"GLdouble"
.LASF37:
	.string	"sinCache2a"
.LASF43:
	.string	"sinCache2b"
.LASF63:
	.string	"finish"
.LASF20:
	.string	"textureCoords"
.LASF45:
	.string	"sinCache3b"
.LASF90:
	.string	"length"
.LASF62:
	.string	"start"
.LASF1:
	.string	"unsigned char"
.LASF93:
	.string	"newstate"
.LASF32:
	.string	"radius"
.LASF3:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF85:
	.string	"height"
.LASF66:
	.string	"outerRadius"
.LASF69:
	.string	"sweepAngle"
.LASF7:
	.string	"long unsigned int"
.LASF21:
	.string	"orientation"
.LASF33:
	.string	"slices"
.LASF68:
	.string	"startAngle"
.LASF13:
	.string	"GLenum"
.LASF65:
	.string	"innerRadius"
.LASF2:
	.string	"short unsigned int"
.LASF70:
	.string	"sinCache"
.LASF8:
	.string	"char"
.LASF36:
	.string	"cosCache1a"
.LASF42:
	.string	"cosCache1b"
.LASF39:
	.string	"sinCache3a"
.LASF72:
	.string	"sintemp"
.LASF24:
	.string	"qobj"
.LASF59:
	.string	"xyNormalRatio"
.LASF27:
	.string	"gluQuadricNormals"
.LASF18:
	.string	"GLUquadric"
.LASF50:
	.string	"sintemp1"
.LASF51:
	.string	"sintemp2"
.LASF52:
	.string	"sintemp3"
.LASF49:
	.string	"zHigh"
.LASF78:
	.string	"texHigh"
.LASF10:
	.string	"double"
.LASF46:
	.string	"cosCache3b"
.LASF38:
	.string	"cosCache2a"
.LASF81:
	.string	"gluDisk"
.LASF76:
	.string	"radiusHigh"
.LASF91:
	.string	"gluDeleteQuadric"
.LASF77:
	.string	"texLow"
.LASF58:
	.string	"zNormal"
.LASF80:
	.string	"slices2"
.LASF26:
	.string	"gluQuadricCallback"
.LASF47:
	.string	"angle"
.LASF31:
	.string	"gluSphere"
.LASF86:
	.string	"sinCache2"
.LASF34:
	.string	"stacks"
.LASF44:
	.string	"cosCache2b"
.LASF25:
	.string	"which"
.LASF95:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libutil/quad.c"
.LASF0:
	.string	"unsigned int"
.LASF23:
	.string	"errorCallback"
.LASF30:
	.string	"gluQuadricDrawStyle"
.LASF54:
	.string	"costemp1"
.LASF55:
	.string	"costemp2"
.LASF56:
	.string	"costemp3"
.LASF57:
	.string	"costemp4"
.LASF15:
	.string	"GLint"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
