	.file	"sweep.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.type	IsWindingInside, @function
IsWindingInside:
.LFB8:
	.file 1 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/sweep.c"
	.loc 1 240 0
.LVL0:
	.loc 1 241 0
	lwz 9,96(3)
	addis 9,9,0xfffe
	addi 0,9,30942
	cmplwi 7,0,4
	bgt- 7,.L2
	lis 9,.L8@ha
	slwi 0,0,2
	la 9,.L8@l(9)
	lwzx 0,9,0
	add 0,0,9
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L8:
	.long .L3-.L8
	.long .L4-.L8
	.long .L5-.L8
	.long .L6-.L8
	.long .L7-.L8
	.section	".text"
.L3:
	.loc 1 243 0
	rlwinm 3,4,0,31,31
.LVL1:
	blr
.LVL2:
.L4:
	.loc 1 245 0
	addic 0,4,-1
	subfe 3,0,4
.LVL3:
	blr
.LVL4:
.L5:
	.loc 1 247 0
	srawi 0,4,31
	subf 0,4,0
	srwi 3,0,31
.LVL5:
	blr
.LVL6:
.L6:
	.loc 1 249 0
	srwi 3,4,31
.LVL7:
	blr
.LVL8:
.L7:
	.loc 1 251 0
	addi 0,4,1
	subfic 3,0,2
	subfe 3,3,3
.LVL9:
	neg 3,3
	blr
.LVL10:
.L2:
.LVL11:
	.loc 1 256 0
	blr
.LFE8:
	.size	IsWindingInside, .-IsWindingInside
	.align 2
	.type	CallCombine, @function
CallCombine:
.LFB13:
	.loc 1 414 0
.LVL12:
	mflr 0
.LCFI0:
	stwu 1,-56(1)
.LCFI1:
	.loc 1 423 0
	lis 9,__gl_noCombineData@ha
	.loc 1 414 0
	stmw 28,40(1)
.LCFI2:
	.loc 1 423 0
	la 9,__gl_noCombineData@l(9)
	.loc 1 414 0
	stw 0,60(1)
.LCFI3:
	.loc 1 422 0
	li 0,0
	stw 0,12(4)
	.loc 1 414 0
	mr 30,3
	.loc 1 418 0
	lfd 0,16(4)
	.loc 1 414 0
	mr 29,5
	.loc 1 423 0
	lwz 0,3380(3)
	.loc 1 414 0
	mr 5,6
.LVL13:
	.loc 1 419 0
	lfd 13,24(4)
	.loc 1 414 0
	mr 31,4
	.loc 1 423 0
	cmpw 7,0,9
	.loc 1 420 0
	lfd 12,32(4)
	.loc 1 414 0
	mr 28,7
	.loc 1 418 0
	stfd 0,8(1)
	.loc 1 419 0
	stfd 13,16(1)
	addi 6,4,12
.LVL14:
	.loc 1 420 0
	stfd 12,24(1)
	addi 3,1,8
.LVL15:
	.loc 1 423 0
	beq- 7,.L12
.LVL16:
	mr 4,29
.LVL17:
	lwz 7,3640(30)
	mtctr 0
	bctrl
.LVL18:
	b .L14
.LVL19:
.L12:
	lwz 0,116(30)
	mr 4,29
.LVL20:
	mtctr 0
	bctrl
.LVL21:
.L14:
	.loc 1 424 0
	lwz 0,12(31)
	cmpwi 7,0,0
	bne+ 7,.L23
	.loc 1 425 0
	cmpwi 7,28,0
	bne- 7,.L17
	.loc 1 426 0
	lwz 0,0(29)
	stw 0,12(31)
	b .L23
.L17:
	.loc 1 427 0
	lbz 0,100(30)
	cmpwi 7,0,0
	bne- 7,.L23
	.loc 1 432 0
	lwz 0,3376(30)
	lis 9,__gl_noErrorData@ha
	la 9,__gl_noErrorData@l(9)
	cmpw 7,0,9
	beq- 7,.L20
	lis 3,0x1
	lwz 4,3640(30)
	ori 3,3,34620
	mtctr 0
	bctrl
	b .L22
.L20:
	lwz 0,12(30)
	lis 3,0x1
	ori 3,3,34620
	mtctr 0
	bctrl
.L22:
	.loc 1 433 0
	li 0,1
	stb 0,100(30)
.L23:
	.loc 1 436 0
	lwz 0,60(1)
	lmw 28,40(1)
.LVL22:
	addi 1,1,56
	mtlr 0
	blr
.LFE13:
	.size	CallCombine, .-CallCombine
	.align 2
	.type	VertexWeights, @function
VertexWeights:
.LFB15:
	.loc 1 463 0
.LVL23:
	.loc 1 464 0
	lfd 0,48(4)
	lis 9,.LC0@ha
	lfd 9,48(3)
	lfd 10,.LC0@l(9)
	fsub 13,0,9
	lfd 12,40(3)
	lfd 0,40(4)
	fcmpu 7,13,10
	fsub 11,0,12
	fabs 11,11
	bnl+ 7,.L28
	fneg 13,13
.L28:
	.loc 1 465 0
	lfd 0,40(5)
	.loc 1 464 0
	fadd 13,11,13
.LVL24:
	.loc 1 465 0
	fsub 12,0,12
	fcmpu 7,12,10
	bnl+ 7,.L31
	fneg 12,12
.L31:
	lfd 0,48(5)
	fsub 0,0,9
	fcmpu 7,0,10
	bnl+ 7,.L34
	fneg 0,0
.L34:
	fadd 0,12,0
.LVL25:
	.loc 1 467 0
	lis 9,.LC2@ha
	lfs 12,.LC2@l(9)
	fadd 11,13,0
	.loc 1 468 0
	fmul 13,13,12
.LVL26:
	.loc 1 467 0
	fmul 0,0,12
.LVL27:
	.loc 1 468 0
	fdiv 13,13,11
	.loc 1 467 0
	fdiv 0,0,11
	.loc 1 468 0
	frsp 13,13
	.loc 1 467 0
	frsp 0,0
	.loc 1 468 0
	stfs 13,4(6)
	.loc 1 467 0
	stfs 0,0(6)
	.loc 1 469 0
	lfd 0,16(5)
	lfd 11,16(4)
	fmul 13,13,0
	lfs 12,0(6)
	lfd 0,16(3)
	.loc 1 470 0
	lfd 10,24(3)
	.loc 1 469 0
	fmadd 12,12,11,13
	.loc 1 471 0
	lfd 11,32(3)
	.loc 1 469 0
	fadd 0,0,12
	stfd 0,16(3)
	.loc 1 470 0
	lfd 13,24(5)
	lfs 12,4(6)
	lfs 0,0(6)
	fmul 12,12,13
	lfd 13,24(4)
	fmadd 0,0,13,12
	fadd 10,10,0
	stfd 10,24(3)
	.loc 1 471 0
	lfd 0,32(5)
	lfs 13,4(6)
	lfd 12,32(4)
	fmul 13,13,0
	lfs 0,0(6)
	fmadd 0,0,12,13
	fadd 11,11,0
	stfd 11,32(3)
	.loc 1 472 0
	blr
.LFE15:
	.size	VertexWeights, .-VertexWeights
	.align 2
	.type	FixUpperEdge, @function
FixUpperEdge:
.LFB4:
	.loc 1 171 0
.LVL28:
	mflr 0
.LCFI4:
	stwu 1,-16(1)
.LCFI5:
	stmw 30,8(1)
.LCFI6:
	mr 31,3
	stw 0,20(1)
.LCFI7:
	.loc 1 171 0
	mr 30,4
	.loc 1 173 0
	lwz 3,0(3)
.LVL29:
	bl __gl_meshDelete
.LVL30:
	cmpwi 7,3,0
	li 3,0
	beq- 7,.L41
	.loc 1 174 0
	li 0,0
	.loc 1 175 0
	stw 30,0(31)
	.loc 1 174 0
	stb 0,15(31)
	.loc 1 176 0
	li 3,1
	stw 31,24(30)
.L41:
	.loc 1 179 0
	lwz 0,20(1)
	lmw 30,8(1)
.LVL31:
	addi 1,1,16
	mtlr 0
	blr
.LFE4:
	.size	FixUpperEdge, .-FixUpperEdge
	.align 2
	.type	AddSentinel, @function
AddSentinel:
.LFB25:
	.loc 1 1133 0
.LVL32:
	stwu 1,-24(1)
.LCFI8:
	mflr 0
.LCFI9:
	stmw 30,8(1)
.LCFI10:
	mr 30,3
	.loc 1 1135 0
	li 3,16
.LVL33:
	.loc 1 1133 0
	stfd 31,16(1)
.LCFI11:
	stw 0,28(1)
.LCFI12:
	.loc 1 1133 0
	fmr 31,1
	.loc 1 1135 0
	bl malloc
.LVL34:
	.loc 1 1136 0
	mr. 31,3
	beq- 0,.L52
	.loc 1 1138 0
	lwz 3,8(30)
	bl __gl_meshMakeEdge
	.loc 1 1139 0
	cmpwi 0,3,0
.LVL35:
	beq- 0,.L52
	.loc 1 1141 0
	lis 9,.LC5@ha
	lwz 11,16(3)
	lfd 0,.LC5@l(9)
	.loc 1 1148 0
	li 10,0
	.loc 1 1153 0
	mr 5,31
.LVL36:
	.loc 1 1141 0
	stfd 0,40(11)
	.loc 1 1142 0
	lwz 9,16(3)
	stfd 31,48(9)
	.loc 1 1143 0
	lwz 9,4(3)
	lwz 11,16(9)
	lis 9,.LC6@ha
	lfd 0,.LC6@l(9)
	stfd 0,40(11)
	.loc 1 1144 0
	lwz 9,4(3)
	lwz 9,16(9)
	stfd 31,48(9)
	.loc 1 1145 0
	lwz 9,4(3)
	lwz 0,16(9)
	stw 0,112(30)
	.loc 1 1151 0
	li 0,1
	.loc 1 1147 0
	stw 3,0(31)
	.loc 1 1151 0
	stb 0,13(31)
	.loc 1 1152 0
	stb 10,14(31)
	.loc 1 1148 0
	stw 10,8(31)
	.loc 1 1149 0
	stb 10,12(31)
	.loc 1 1150 0
	stb 10,15(31)
	.loc 1 1153 0
	lwz 3,104(30)
.LVL37:
	mr 4,3
	bl __gl_dictListInsertBefore
.LVL38:
	.loc 1 1154 0
	cmpwi 7,3,0
	.loc 1 1153 0
	stw 3,4(31)
	.loc 1 1154 0
	bne+ 7,.L50
.LVL39:
.L52:
	addi 3,30,3384
.LVL40:
	li 4,1
	bl longjmp
.L50:
	.loc 1 1155 0
	lwz 0,28(1)
	lmw 30,8(1)
.LVL41:
	lfd 31,16(1)
.LVL42:
	mtlr 0
	addi 1,1,24
	blr
.LFE25:
	.size	AddSentinel, .-AddSentinel
	.align 2
	.type	AddRegionBelow, @function
AddRegionBelow:
.LFB7:
	.loc 1 223 0
.LVL43:
	stwu 1,-24(1)
.LCFI13:
	mflr 0
.LCFI14:
	stmw 28,8(1)
.LCFI15:
	mr 30,3
	.loc 1 224 0
	li 3,16
.LVL44:
	.loc 1 223 0
	stw 0,28(1)
.LCFI16:
	.loc 1 223 0
	mr 29,4
	mr 28,5
	.loc 1 224 0
	bl malloc
.LVL45:
	.loc 1 225 0
	mr. 31,3
	beq- 0,.L59
	.loc 1 227 0
	stw 28,0(31)
	.loc 1 229 0
	mr 5,31
.LVL46:
	lwz 4,4(29)
	lwz 3,104(30)
	bl __gl_dictListInsertBefore
.LVL47:
	.loc 1 230 0
	cmpwi 7,3,0
	.loc 1 229 0
	stw 3,4(31)
	.loc 1 230 0
	bne+ 7,.L56
.L59:
	addi 3,30,3384
	li 4,1
	bl longjmp
.L56:
	.loc 1 231 0
	li 0,0
	.loc 1 237 0
	mr 3,31
	.loc 1 233 0
	stb 0,14(31)
	.loc 1 231 0
	stb 0,15(31)
	.loc 1 232 0
	stb 0,13(31)
	.loc 1 235 0
	stw 31,24(28)
	.loc 1 237 0
	lwz 0,28(1)
	lmw 28,8(1)
.LVL48:
	addi 1,1,24
	mtlr 0
	blr
.LFE7:
	.size	AddRegionBelow, .-AddRegionBelow
	.align 2
	.type	EdgeLeq, @function
EdgeLeq:
.LFB2:
	.loc 1 121 0
.LVL49:
	mflr 0
.LCFI17:
	stwu 1,-24(1)
.LCFI18:
	stfd 31,16(1)
.LCFI19:
	stmw 30,8(1)
.LCFI20:
	stw 0,28(1)
.LCFI21:
	.loc 1 126 0
	lwz 4,0(4)
.LVL50:
	.loc 1 122 0
	lwz 31,112(3)
.LVL51:
	.loc 1 129 0
	lwz 9,4(4)
	.loc 1 127 0
	lwz 30,0(5)
.LVL52:
	.loc 1 129 0
	lwz 3,16(9)
.LVL53:
	lwz 9,4(30)
	cmpw 7,3,31
	bne+ 7,.L61
	.loc 1 130 0
	lwz 3,16(9)
	lwz 9,16(30)
	cmpw 7,3,31
	bne+ 7,.L63
	.loc 1 134 0
	lwz 5,16(4)
.LVL54:
	lfd 13,40(9)
	lfd 0,40(5)
	fcmpu 7,0,13
	blt- 7,.L65
	bne- 7,.L67
	lfd 13,48(5)
	lfd 0,48(9)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L67
.L65:
	.loc 1 135 0
	mr 3,31
	mr 4,5
.LVL55:
	b .L76
.LVL56:
.L67:
	.loc 1 137 0
	mr 4,9
.LVL57:
	b .L78
.LVL58:
.L63:
	.loc 1 139 0
	mr 4,31
.LVL59:
.L76:
	mr 5,9
.LVL60:
	bl __gl_edgeSign
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	fcmpu 7,1,0
	cror 30,28,30
	b .L75
.LVL61:
.L61:
	.loc 1 141 0
	lwz 0,16(9)
	lwz 5,16(4)
.LVL62:
	cmpw 7,0,31
	bne+ 7,.L72
	.loc 1 142 0
	mr 4,31
.LVL63:
.L78:
	bl __gl_edgeSign
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	fcmpu 7,1,0
	b .L77
.LVL64:
.L72:
	.loc 1 146 0
	mr 4,31
.LVL65:
	bl __gl_edgeEval
	.loc 1 147 0
	lwz 9,4(30)
	.loc 1 146 0
	fmr 31,1
.LVL66:
	.loc 1 147 0
	lwz 5,16(30)
	lwz 3,16(9)
	mr 4,31
	bl __gl_edgeEval
	.loc 1 148 0
	fcmpu 7,31,1
.L77:
	cror 30,29,30
.L75:
	.loc 1 149 0
	lwz 0,28(1)
	.loc 1 148 0
	mfcr 3
	rlwinm 3,3,31,1
	.loc 1 149 0
	lmw 30,8(1)
.LVL67:
	lfd 31,16(1)
.LVL68:
	mtlr 0
	addi 1,1,24
	blr
.LFE2:
	.size	EdgeLeq, .-EdgeLeq
	.align 2
	.type	SpliceMergeVertices, @function
SpliceMergeVertices:
.LFB14:
	.loc 1 444 0
.LVL69:
	stwu 1,-64(1)
.LCFI22:
	mflr 0
.LCFI23:
	stmw 27,44(1)
.LCFI24:
	.loc 1 445 0
	addi 29,1,8
	.loc 1 444 0
	mr 28,4
	mr 27,5
	mr 31,3
	.loc 1 445 0
	li 5,16
.LVL70:
	li 4,0
.LVL71:
	mr 3,29
.LVL72:
	.loc 1 444 0
	stw 0,68(1)
.LCFI25:
	.loc 1 445 0
	bl memset
	.loc 1 446 0
	lis 9,.LANCHOR0@ha
	addi 11,1,24
	la 9,.LANCHOR0@l(9)
	.loc 1 450 0
	mr 3,31
	.loc 1 446 0
	lswi 5,9,16
	stswi 5,11,16
	.loc 1 450 0
	mr 5,29
	mr 6,11
	li 7,0
	.loc 1 448 0
	lwz 4,16(28)
	.loc 1 449 0
	lwz 9,16(27)
	.loc 1 448 0
	lwz 0,12(4)
	stw 0,8(1)
	.loc 1 449 0
	lwz 0,12(9)
	stw 0,12(1)
	.loc 1 450 0
	bl CallCombine
	.loc 1 451 0
	mr 3,28
	mr 4,27
	bl __gl_meshSplice
	cmpwi 7,3,0
	bne+ 7,.L82
	addi 3,31,3384
	li 4,1
	bl longjmp
.L82:
	.loc 1 452 0
	lwz 0,68(1)
	lmw 27,44(1)
.LVL73:
	addi 1,1,64
	mtlr 0
	blr
.LFE14:
	.size	SpliceMergeVertices, .-SpliceMergeVertices
	.align 2
	.type	TopLeftRegion, @function
TopLeftRegion:
.LFB5:
	.loc 1 182 0
.LVL74:
	mflr 0
.LCFI26:
	stwu 1,-16(1)
.LCFI27:
	stw 31,12(1)
.LCFI28:
	mr 31,3
	stw 0,20(1)
.LCFI29:
	.loc 1 183 0
	lwz 9,0(3)
	lwz 10,16(9)
.LVL75:
.L84:
	.loc 1 188 0
	lwz 9,4(31)
	lwz 9,4(9)
	lwz 31,0(9)
.LVL76:
	.loc 1 189 0
	lwz 11,0(31)
	lwz 0,16(11)
	cmpw 7,0,10
	beq+ 7,.L84
	.loc 1 194 0
	lbz 0,15(31)
	cmpwi 7,0,0
	beq+ 7,.L86
	.loc 1 195 0
	lwz 9,4(31)
	lwz 4,12(11)
	lwz 9,8(9)
	lwz 9,0(9)
	lwz 9,0(9)
	lwz 3,4(9)
	bl __gl_meshConnect
.LVL77:
	.loc 1 196 0
	cmpwi 0,3,0
.LVL78:
	beq+ 0,.L88
	.loc 1 197 0
	mr 4,3
	mr 3,31
.LVL79:
	bl FixUpperEdge
.LVL80:
	cmpwi 7,3,0
	beq- 7,.L88
	.loc 1 198 0
	lwz 9,4(31)
	lwz 9,4(9)
	lwz 31,0(9)
	b .L86
.LVL81:
.L88:
	li 31,0
.LVL82:
.L86:
	.loc 1 201 0
	lwz 0,20(1)
	mr 3,31
.LVL83:
	lwz 31,12(1)
.LVL84:
	addi 1,1,16
	mtlr 0
	blr
.LFE5:
	.size	TopLeftRegion, .-TopLeftRegion
	.align 2
	.type	DeleteRegion, @function
DeleteRegion:
.LFB3:
	.loc 1 153 0
.LVL85:
	mflr 0
.LCFI30:
	stwu 1,-24(1)
.LCFI31:
	stmw 29,12(1)
.LCFI32:
	mr 29,4
	stw 0,28(1)
.LCFI33:
	.loc 1 161 0
	li 0,0
	lwz 9,0(4)
	stw 0,24(9)
	.loc 1 162 0
	lwz 3,104(3)
.LVL86:
	lwz 4,4(4)
.LVL87:
	bl __gl_dictListDelete
	.loc 1 163 0
	mr 3,29
	bl free
	.loc 1 164 0
	lwz 0,28(1)
	lmw 29,12(1)
.LVL88:
	addi 1,1,24
	mtlr 0
	blr
.LFE3:
	.size	DeleteRegion, .-DeleteRegion
	.align 2
	.type	FinishRegion, @function
FinishRegion:
.LFB10:
	.loc 1 274 0
.LVL89:
	.loc 1 275 0
	lwz 11,0(4)
.LVL90:
	.loc 1 278 0
	lbz 0,12(4)
	.loc 1 276 0
	lwz 9,20(11)
.LVL91:
	.loc 1 279 0
	stw 11,8(9)
	.loc 1 278 0
	stb 0,21(9)
	.loc 1 280 0
	b DeleteRegion
.LVL92:
.LFE10:
	.size	FinishRegion, .-FinishRegion
	.align 2
	.type	FinishLeftRegions, @function
FinishLeftRegions:
.LFB11:
	.loc 1 298 0
.LVL93:
	mflr 0
.LCFI34:
	stwu 1,-32(1)
.LCFI35:
	stmw 26,8(1)
.LCFI36:
	mr 27,3
	stw 0,36(1)
.LCFI37:
	.loc 1 298 0
	mr 26,5
	.loc 1 303 0
	mr 29,4
.LVL94:
	lwz 28,0(4)
.LVL95:
	b .L99
.LVL96:
.L100:
	.loc 1 305 0
	li 0,0
	.loc 1 306 0
	lwz 9,4(29)
	.loc 1 305 0
	stb 0,15(29)
	.loc 1 306 0
	lwz 9,8(9)
	.loc 1 308 0
	lwz 11,16(28)
	.loc 1 306 0
	lwz 30,0(9)
	.loc 1 307 0
	lwz 31,0(30)
	.loc 1 308 0
	lwz 0,16(31)
	cmpw 7,0,11
	beq- 7,.L101
	.loc 1 309 0
	lbz 0,15(30)
	cmpwi 7,0,0
	bne+ 7,.L103
	.loc 1 316 0
	mr 3,27
	mr 4,29
.LVL97:
	bl FinishRegion
	b .L105
.LVL98:
.L103:
	.loc 1 322 0
	lwz 9,8(28)
	lwz 4,4(31)
.LVL99:
	lwz 3,4(9)
	bl __gl_meshConnect
	.loc 1 323 0
	mr. 31,3
	beq- 0,.L116
	.loc 1 324 0
	mr 3,30
	mr 4,31
	bl FixUpperEdge
	cmpwi 7,3,0
	beq- 7,.L116
.LVL100:
.L101:
	.loc 1 328 0
	lwz 0,8(28)
	cmpw 7,0,31
	beq- 7,.L109
	.loc 1 329 0
	lwz 9,4(31)
	mr 4,31
.LVL101:
	lwz 3,12(9)
	bl __gl_meshSplice
	cmpwi 7,3,0
	beq- 7,.L116
	.loc 1 330 0
	mr 3,28
	mr 4,31
	bl __gl_meshSplice
	cmpwi 7,3,0
	bne+ 7,.L109
.L116:
	addi 3,27,3384
	li 4,1
	bl longjmp
.LVL102:
.L109:
	.loc 1 332 0
	mr 4,29
.LVL103:
	mr 3,27
	bl FinishRegion
	.loc 1 333 0
	lwz 28,0(30)
	mr 29,30
.LVL104:
.L99:
	.loc 1 304 0
	cmpw 7,29,26
	bne+ 7,.L100
.L105:
	.loc 1 337 0
	lwz 0,36(1)
	mr 3,28
	lmw 26,8(1)
.LVL105:
	addi 1,1,32
	mtlr 0
	blr
.LFE11:
	.size	FinishLeftRegions, .-FinishLeftRegions
	.align 2
	.type	CheckForRightSplice, @function
CheckForRightSplice:
.LFB17:
	.loc 1 525 0
.LVL106:
	mflr 0
.LCFI38:
	stwu 1,-32(1)
.LCFI39:
	stmw 27,12(1)
.LCFI40:
	mr 28,4
	stw 0,36(1)
.LCFI41:
	.loc 1 525 0
	mr 29,3
	.loc 1 526 0
	lwz 9,4(4)
	.loc 1 527 0
	lwz 30,0(4)
.LVL107:
	.loc 1 526 0
	lwz 9,8(9)
	.loc 1 530 0
	lwz 11,16(30)
	.loc 1 526 0
	lwz 27,0(9)
.LVL108:
	.loc 1 530 0
	lfd 13,40(11)
	.loc 1 528 0
	lwz 31,0(27)
.LVL109:
	.loc 1 530 0
	lwz 5,16(31)
	lfd 0,40(5)
	fcmpu 7,13,0
	blt- 7,.L118
.LVL110:
	bne- 7,.L120
	lfd 13,48(11)
	lfd 0,48(5)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L120
.L118:
	.loc 1 531 0
	lwz 9,4(31)
	mr 4,11
.LVL111:
	lwz 3,16(9)
	bl __gl_edgeSign
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	fcmpu 7,1,0
	bgt+ 7,.L124
	.loc 1 534 0
	lwz 11,16(30)
	lwz 9,16(31)
	lfd 0,40(11)
	lfd 13,40(9)
	fcmpu 7,0,13
	bne- 7,.L126
	lfd 0,48(11)
	lfd 13,48(9)
	fcmpu 7,0,13
	beq- 7,.L129
.L126:
	.loc 1 536 0
	lwz 3,4(31)
	bl __gl_meshSplitEdge
	cmpwi 7,3,0
	beq- 7,.L143
	.loc 1 537 0
	lwz 9,4(31)
	mr 3,30
	lwz 4,12(9)
	bl __gl_meshSplice
	cmpwi 7,3,0
	beq- 7,.L143
	.loc 1 538 0
	li 0,1
	li 3,1
	stb 0,14(27)
	stb 0,14(28)
	b .L134
.L129:
	.loc 1 540 0
	cmpw 7,11,9
	beq- 7,.L135
	.loc 1 542 0
	lwz 4,56(11)
	lwz 3,108(29)
	bl __gl_pqSortDelete
	.loc 1 543 0
	lwz 9,4(31)
	mr 3,29
	mr 5,30
	lwz 4,12(9)
	bl SpliceMergeVertices
	b .L135
.LVL112:
.L120:
	.loc 1 546 0
	lwz 9,4(30)
	mr 4,5
.LVL113:
	mr 5,11
	lwz 3,16(9)
	bl __gl_edgeSign
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	fcmpu 7,1,0
	blt- 7,.L124
	.loc 1 549 0
	lwz 9,4(28)
	li 0,1
	lwz 9,4(9)
	lwz 9,0(9)
	stb 0,14(28)
	stb 0,14(9)
	.loc 1 550 0
	lwz 3,4(30)
	bl __gl_meshSplitEdge
	cmpwi 7,3,0
	beq- 7,.L143
	.loc 1 551 0
	lwz 9,4(31)
	mr 4,30
	lwz 3,12(9)
	bl __gl_meshSplice
	cmpwi 7,3,0
	bne+ 7,.L135
.L143:
	addi 3,29,3384
	li 4,1
	bl longjmp
.L124:
	li 3,0
	b .L134
.L135:
	li 3,1
.L134:
	.loc 1 554 0
	lwz 0,36(1)
	lmw 27,12(1)
.LVL114:
	addi 1,1,32
	mtlr 0
	blr
.LFE17:
	.size	CheckForRightSplice, .-CheckForRightSplice
	.align 2
	.type	AddRightEdges, @function
AddRightEdges:
.LFB12:
	.loc 1 353 0
.LVL115:
	mflr 0
.LCFI42:
	stwu 1,-40(1)
.LCFI43:
	stmw 25,12(1)
.LCFI44:
	mr 28,3
	stw 0,44(1)
.LCFI45:
	.loc 1 353 0
	mr 29,4
	mr 27,6
	mr 30,7
	mr 25,8
	mr 31,5
.LVL116:
.L145:
	.loc 1 362 0
	lwz 5,4(31)
.LVL117:
	mr 3,28
	mr 4,29
	bl AddRegionBelow
	.loc 1 363 0
	lwz 31,8(31)
	.loc 1 364 0
	cmpw 7,31,27
	bne+ 7,.L145
	.loc 1 370 0
	cmpwi 7,30,0
	bne+ 7,.L147
	.loc 1 371 0
	lwz 9,4(29)
	lwz 9,8(9)
	lwz 9,0(9)
	lwz 9,0(9)
	lwz 9,4(9)
	lwz 30,8(9)
.L147:
	li 26,1
.LVL118:
.L149:
	.loc 1 376 0
	lwz 9,4(29)
	.loc 1 378 0
	lwz 11,16(30)
	.loc 1 376 0
	lwz 9,8(9)
	lwz 27,0(9)
.LVL119:
	.loc 1 377 0
	lwz 9,0(27)
	lwz 31,4(9)
.LVL120:
	.loc 1 378 0
	lwz 0,16(31)
	cmpw 7,0,11
	bne- 7,.L150
	.loc 1 380 0
	lwz 0,8(31)
	cmpw 7,0,30
	beq- 7,.L152
	.loc 1 382 0
	lwz 9,4(31)
	mr 4,31
	lwz 3,12(9)
	bl __gl_meshSplice
	cmpwi 7,3,0
	beq- 7,.L167
	.loc 1 383 0
	lwz 9,4(30)
	mr 4,31
	lwz 3,12(9)
	bl __gl_meshSplice
	cmpwi 7,3,0
	beq- 7,.L167
.L152:
	.loc 1 386 0
	lwz 0,28(31)
	.loc 1 387 0
	mr 3,28
	.loc 1 386 0
	lwz 4,8(29)
	subf 4,0,4
	stw 4,8(27)
	.loc 1 387 0
	bl IsWindingInside
	.loc 1 393 0
	cmpwi 7,26,0
	.loc 1 392 0
	li 0,1
	.loc 1 387 0
	stb 3,12(27)
	.loc 1 392 0
	stb 0,14(29)
	.loc 1 393 0
	bne+ 7,.L157
	mr 3,28
	mr 4,29
	bl CheckForRightSplice
	cmpwi 7,3,0
	beq+ 7,.L157
	.loc 1 394 0
	lwz 9,28(30)
	.loc 1 395 0
	mr 4,29
	.loc 1 394 0
	lwz 0,28(31)
	.loc 1 395 0
	mr 3,28
	.loc 1 394 0
	lwz 11,4(31)
	add 0,0,9
	lwz 9,4(30)
	stw 0,28(31)
	lwz 0,28(11)
	lwz 9,28(9)
	add 0,0,9
	stw 0,28(11)
	.loc 1 395 0
	bl DeleteRegion
	.loc 1 396 0
	mr 3,30
	bl __gl_meshDelete
	cmpwi 7,3,0
	bne+ 7,.L157
.L167:
	addi 3,28,3384
	li 4,1
	bl longjmp
.L157:
	mr 30,31
.LVL121:
	mr 29,27
.LVL122:
	li 26,0
	b .L149
.LVL123:
.L150:
	.loc 1 405 0
	cmpwi 7,25,0
	.loc 1 402 0
	li 0,1
	stb 0,14(29)
	.loc 1 405 0
	beq- 7,.L163
	.loc 1 409 0
	lwz 0,44(1)
	.loc 1 407 0
	mr 3,28
	mr 4,29
	.loc 1 409 0
	lmw 25,12(1)
.LVL124:
	mtlr 0
	addi 1,1,40
	.loc 1 407 0
	b WalkDirtyRegions
.LVL125:
.LVL126:
.L163:
	.loc 1 409 0
	lwz 0,44(1)
	lmw 25,12(1)
.LVL127:
	addi 1,1,40
	mtlr 0
	blr
.LFE12:
	.size	AddRightEdges, .-AddRightEdges
	.align 2
	.type	CheckForIntersect, @function
CheckForIntersect:
.LFB19:
	.loc 1 616 0
.LVL128:
	mflr 0
.LCFI46:
	stwu 1,-144(1)
.LCFI47:
	stmw 22,104(1)
.LCFI48:
	mr 23,4
	stw 0,148(1)
.LCFI49:
	.loc 1 616 0
	mr 30,3
	.loc 1 617 0
	lwz 9,4(4)
	.loc 1 618 0
	lwz 28,0(4)
.LVL129:
	.loc 1 617 0
	lwz 9,8(9)
	.loc 1 620 0
	lwz 27,16(28)
.LVL130:
	.loc 1 617 0
	lwz 22,0(9)
.LVL131:
	.loc 1 622 0
	lwz 11,4(28)
	.loc 1 619 0
	lwz 29,0(22)
.LVL132:
	.loc 1 622 0
	lwz 25,16(11)
.LVL133:
	.loc 1 621 0
	lwz 26,16(29)
.LVL134:
	.loc 1 623 0
	lwz 9,4(29)
	.loc 1 634 0
	cmpw 7,27,26
	.loc 1 623 0
	lwz 24,16(9)
.LVL135:
	.loc 1 634 0
	beq- 7,.L169
.LVL136:
	.loc 1 636 0
	lfd 11,48(27)
.LVL137:
	lfd 13,48(25)
.LVL138:
	fcmpu 7,11,13
	cror 30,28,30
	bne- 7,.L171
	fmr 13,11
.L171:
	.loc 1 637 0
	lfd 12,48(26)
.LVL139:
	lfd 0,48(24)
.LVL140:
	fcmpu 7,12,0
	cror 30,29,30
	bne- 7,.L174
	fmr 0,12
.L174:
	.loc 1 638 0
	fcmpu 7,13,0
	bgt- 7,.L169
	.loc 1 640 0
	lfd 13,40(27)
.LVL141:
	lfd 0,40(26)
.LVL142:
	fcmpu 7,13,0
	blt- 7,.L178
	bne- 7,.L180
	fcmpu 7,11,12
	cror 30,28,30
	bne- 7,.L180
.L178:
	.loc 1 641 0
	mr 3,24
	mr 4,27
.LVL143:
	mr 5,26
	bl __gl_edgeSign
.LVL144:
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	fcmpu 7,1,0
	bgt+ 7,.L169
	b .L184
.LVL145:
.L180:
	.loc 1 643 0
	mr 3,25
	mr 4,26
.LVL146:
	mr 5,27
	bl __gl_edgeSign
.LVL147:
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	fcmpu 7,1,0
	blt- 7,.L169
.L184:
	.loc 1 649 0
	mr 3,25
	mr 4,27
	mr 5,24
	mr 6,26
	addi 7,1,40
	bl __gl_edgeIntersect
	.loc 1 656 0
	lwz 9,112(30)
	lfd 0,80(1)
	lfd 12,40(9)
	fcmpu 7,0,12
	blt- 7,.L185
	bne- 7,.L187
	lfd 13,48(9)
	lfd 0,88(1)
	fcmpu 7,0,13
	cror 30,28,30
	bne- 7,.L187
.L185:
	.loc 1 664 0
	lfd 0,48(9)
	.loc 1 663 0
	stfd 12,80(1)
	.loc 1 664 0
	stfd 0,88(1)
.L187:
	.loc 1 672 0
	lfd 13,40(27)
	lfd 0,40(26)
	fcmpu 7,13,0
	blt- 7,.L191
	bne- 7,.L193
	lfd 13,48(27)
	lfd 0,48(26)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L193
.L191:
	mr 9,27
.LVL148:
	b .L197
.LVL149:
.L193:
	mr 9,26
.LVL150:
.L197:
	.loc 1 673 0
	lfd 12,40(9)
	lfd 0,80(1)
	fcmpu 7,12,0
	blt- 7,.L198
	bne- 7,.L200
	lfd 13,48(9)
	lfd 0,88(1)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L200
.L198:
	.loc 1 675 0
	lfd 0,48(9)
	.loc 1 674 0
	stfd 12,80(1)
	.loc 1 675 0
	stfd 0,88(1)
.L200:
	.loc 1 678 0
	lfd 12,80(1)
	lfd 0,40(27)
	fcmpu 7,12,0
	bne- 7,.L204
	lfd 0,48(27)
	lfd 13,88(1)
	fcmpu 7,13,0
	beq- 7,.L207
.L204:
	lfd 0,40(26)
	fcmpu 7,12,0
	bne- 7,.L208
	lfd 0,48(26)
	lfd 13,88(1)
	fcmpu 7,13,0
	bne- 7,.L208
.L207:
	.loc 1 680 0
	mr 3,30
	mr 4,23
	bl CheckForRightSplice
.LVL151:
	b .L169
.LVL152:
.L208:
	.loc 1 684 0
	lwz 4,112(30)
	lfd 0,40(25)
	lfd 13,40(4)
	fcmpu 7,0,13
	bne- 7,.L213
	lfd 0,48(25)
	lfd 13,48(4)
	fcmpu 7,0,13
	beq- 7,.L216
.L213:
	mr 3,25
	addi 5,1,40
	bl __gl_edgeSign
.LVL153:
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	fcmpu 7,1,0
	cror 30,29,30
	beq+ 7,.L217
.LVL154:
.L216:
	lwz 4,112(30)
	lfd 0,40(24)
	lfd 13,40(4)
	fcmpu 7,0,13
	bne- 7,.L218
	lfd 0,48(24)
	lfd 13,48(4)
	fcmpu 7,0,13
	beq- 7,.L221
.L218:
	mr 3,24
	addi 5,1,40
	bl __gl_edgeSign
.LVL155:
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	fcmpu 7,1,0
	cror 30,28,30
	bne+ 7,.L221
.L217:
	.loc 1 693 0
	lwz 4,112(30)
	cmpw 7,24,4
	bne+ 7,.L223
	.loc 1 695 0
	lwz 3,4(28)
	bl __gl_meshSplitEdge
	cmpwi 7,3,0
	beq- 7,.L261
	.loc 1 696 0
	lwz 3,4(29)
	mr 4,28
	bl __gl_meshSplice
	cmpwi 7,3,0
	beq- 7,.L261
	.loc 1 697 0
	mr 3,23
	bl TopLeftRegion
	.loc 1 698 0
	mr. 31,3
.LVL156:
	beq- 0,.L261
	.loc 1 699 0
	lwz 9,4(31)
	.loc 1 700 0
	mr 5,22
	mr 3,30
	.loc 1 699 0
	lwz 9,8(9)
	lwz 4,0(9)
	lwz 29,0(4)
.LVL157:
	.loc 1 700 0
	bl FinishLeftRegions
	.loc 1 701 0
	mr 3,30
	mr 4,31
	lwz 9,4(29)
	mr 6,29
	mr 7,29
	lwz 5,12(9)
	b .L259
.LVL158:
.L223:
	.loc 1 704 0
	cmpw 7,25,4
	bne+ 7,.L231
	.loc 1 706 0
	lwz 3,4(29)
	bl __gl_meshSplitEdge
	cmpwi 7,3,0
	beq- 7,.L261
	.loc 1 707 0
	lwz 9,4(29)
	lwz 3,12(28)
	lwz 4,12(9)
	bl __gl_meshSplice
	cmpwi 7,3,0
	beq- 7,.L261
.LBB10:
.LBB11:
	.loc 1 205 0
	lwz 9,0(23)
	mr 31,23
	lwz 9,4(9)
	lwz 11,16(9)
.LVL159:
.L237:
	.loc 1 209 0
	lwz 9,4(31)
	lwz 9,4(9)
	lwz 31,0(9)
	.loc 1 210 0
	lwz 9,0(31)
	lwz 9,4(9)
	lwz 0,16(9)
	cmpw 7,0,11
	beq+ 7,.L237
.LBE11:
.LBE10:
	.loc 1 710 0
	lwz 9,4(31)
	.loc 1 712 0
	mr 4,23
	.loc 1 711 0
	lwz 11,4(29)
.LVL160:
	.loc 1 712 0
	li 5,0
	.loc 1 710 0
	lwz 9,8(9)
	.loc 1 712 0
	mr 3,30
	.loc 1 711 0
	lwz 0,12(11)
	.loc 1 710 0
	lwz 9,0(9)
	lwz 9,0(9)
	lwz 9,4(9)
	lwz 29,8(9)
.LVL161:
	.loc 1 711 0
	stw 0,0(23)
	.loc 1 712 0
	bl FinishLeftRegions
	.loc 1 713 0
	lwz 9,4(28)
	lwz 5,8(3)
	mr 4,31
	lwz 6,8(9)
	mr 3,30
	mr 7,29
.LVL162:
.L259:
	li 8,1
	bl AddRightEdges
.LVL163:
	li 3,1
	b .L212
.LVL164:
.L231:
	.loc 1 720 0
	mr 3,25
	addi 5,1,40
	bl __gl_edgeSign
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	fcmpu 7,1,0
	cror 30,29,30
	bne- 7,.L239
	.loc 1 721 0
	lwz 9,4(23)
	li 0,1
	lwz 9,4(9)
	lwz 9,0(9)
	stb 0,14(23)
	stb 0,14(9)
	.loc 1 722 0
	lwz 3,4(28)
	bl __gl_meshSplitEdge
	cmpwi 7,3,0
	beq- 7,.L261
	.loc 1 723 0
	lwz 9,112(30)
	lwz 11,16(28)
	lfd 0,40(9)
	stfd 0,40(11)
	.loc 1 724 0
	lwz 9,112(30)
	lwz 11,16(28)
	lfd 0,48(9)
	stfd 0,48(11)
.L239:
	.loc 1 726 0
	lwz 4,112(30)
	mr 3,24
	addi 5,1,40
	bl __gl_edgeSign
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	fcmpu 7,1,0
	cror 30,28,30
	bne+ 7,.L169
	.loc 1 727 0
	li 0,1
	stb 0,14(22)
	stb 0,14(23)
	.loc 1 728 0
	lwz 3,4(29)
	bl __gl_meshSplitEdge
	cmpwi 7,3,0
	beq- 7,.L261
	.loc 1 729 0
	lwz 9,112(30)
	.loc 1 730 0
	li 3,0
	.loc 1 729 0
	lwz 11,16(29)
	lfd 0,40(9)
	stfd 0,40(11)
	.loc 1 730 0
	lwz 9,112(30)
	lwz 11,16(29)
	lfd 0,48(9)
	stfd 0,48(11)
	b .L212
.LVL165:
.L221:
	.loc 1 744 0
	lwz 3,4(28)
	bl __gl_meshSplitEdge
.LVL166:
	cmpwi 7,3,0
	beq- 7,.L261
	.loc 1 745 0
	lwz 3,4(29)
	bl __gl_meshSplitEdge
	cmpwi 7,3,0
	beq- 7,.L261
	.loc 1 746 0
	lwz 9,4(29)
	mr 4,28
	lwz 3,12(9)
	bl __gl_meshSplice
	cmpwi 7,3,0
	beq- 7,.L261
	.loc 1 747 0
	lwz 9,16(28)
	lfd 0,80(1)
	stfd 0,40(9)
	.loc 1 748 0
	lfd 0,88(1)
	lwz 9,16(28)
	stfd 0,48(9)
	.loc 1 749 0
	lwz 29,16(28)
.LVL167:
	lwz 3,108(30)
	mr 4,29
	bl __gl_pqSortInsert
	.loc 1 750 0
	lis 0,0x7fff
	.loc 1 749 0
	stw 3,56(29)
	.loc 1 750 0
	ori 0,0,65535
	lwz 31,16(28)
	lwz 9,56(31)
	cmpw 7,9,0
	bne+ 7,.L254
	.loc 1 751 0
	lwz 3,108(30)
	bl __gl_pqSortDeletePriorityQ
	.loc 1 752 0
	li 0,0
	stw 0,108(30)
.LVL168:
.L261:
	.loc 1 753 0
	addi 3,30,3384
	li 4,1
	bl longjmp
.LVL169:
.L254:
.LBB12:
.LBB13:
	.loc 1 487 0
	lwz 0,12(27)
	.loc 1 492 0
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	.loc 1 493 0
	addi 29,1,24
	.loc 1 487 0
	stw 0,8(1)
	.loc 1 493 0
	mr 4,27
	mr 5,25
	mr 6,29
	.loc 1 488 0
	lwz 0,12(25)
	.loc 1 493 0
	mr 3,31
	.loc 1 488 0
	stw 0,12(1)
	.loc 1 489 0
	lwz 0,12(26)
	stw 0,16(1)
	.loc 1 490 0
	lwz 0,12(24)
	stw 0,20(1)
	.loc 1 492 0
	stfd 0,16(31)
	stfd 0,32(31)
	stfd 0,24(31)
	.loc 1 493 0
	bl VertexWeights
	.loc 1 494 0
	mr 3,31
	mr 4,26
	mr 5,24
	addi 6,1,32
	bl VertexWeights
	.loc 1 496 0
	mr 3,30
	mr 4,31
	mr 6,29
	addi 5,1,8
	li 7,1
	bl CallCombine
.LBE13:
.LBE12:
	.loc 1 756 0
	lwz 9,4(23)
	li 0,1
	li 3,0
	lwz 9,4(9)
	lwz 9,0(9)
	stb 0,14(22)
	stb 0,14(23)
	stb 0,14(9)
	b .L212
.LVL170:
.L169:
	.loc 1 757 0
	li 3,0
.LVL171:
.L212:
	.loc 1 758 0
	lwz 0,148(1)
	lmw 22,104(1)
.LVL172:
	addi 1,1,144
	mtlr 0
	blr
.LFE19:
	.size	CheckForIntersect, .-CheckForIntersect
	.align 2
	.type	WalkDirtyRegions, @function
WalkDirtyRegions:
.LFB20:
	.loc 1 769 0
.LVL173:
	mflr 0
.LCFI50:
	stwu 1,-56(1)
.LCFI51:
	mr 10,4
	stfd 30,40(1)
.LCFI52:
	stfd 31,48(1)
.LCFI53:
	stmw 25,12(1)
.LCFI54:
	mr 26,3
	stw 0,60(1)
.LCFI55:
	.loc 1 770 0
	lwz 9,4(4)
	lwz 11,8(9)
.LBB16:
.LBB26:
	.loc 1 584 0
	lis 9,.LC0@ha
	lfd 31,.LC0@l(9)
.LBE26:
.LBE16:
	.loc 1 770 0
	lwz 27,0(11)
.LVL174:
.LBB29:
.LBB27:
	.loc 1 593 0
	fmr 30,31
	b .L263
.LVL175:
.L264:
.LBE27:
.LBE29:
	.loc 1 777 0
	lwz 9,4(27)
	mr 31,27
.LVL176:
	lwz 9,8(9)
	lwz 27,0(9)
.LVL177:
.L265:
	mr 10,31
.LVL178:
.L263:
	.loc 1 775 0
	lbz 0,14(27)
	cmpwi 7,0,0
	bne- 7,.L264
	.loc 1 779 0
	lbz 0,14(10)
	mr 31,10
	cmpwi 7,0,0
	bne- 7,.L269
.LVL179:
	.loc 1 781 0
	lwz 9,4(10)
	lwz 9,4(9)
	lwz 4,0(9)
	.loc 1 782 0
	cmpwi 7,4,0
	beq- 7,.L311
.LVL180:
	lbz 0,14(4)
	.loc 1 781 0
	mr 31,4
.LVL181:
	.loc 1 782 0
	cmpwi 7,0,0
	beq- 7,.L311
	mr 27,10
.LVL182:
.L269:
	.loc 1 787 0
	li 0,0
	.loc 1 788 0
	lwz 28,0(31)
	.loc 1 787 0
	stb 0,14(31)
	.loc 1 789 0
	lwz 25,0(27)
	.loc 1 791 0
	lwz 9,4(28)
	lwz 11,4(25)
	lwz 10,16(9)
.LVL183:
	lwz 0,16(11)
	cmpw 7,10,0
	beq- 7,.L273
.LBB30:
.LBB25:
	.loc 1 576 0
	lwz 9,4(31)
	.loc 1 583 0
	lfd 13,40(10)
	.loc 1 576 0
	lwz 9,8(9)
	lwz 30,0(9)
.LVL184:
	.loc 1 578 0
	lwz 29,0(30)
	.loc 1 583 0
	lwz 9,4(29)
	lwz 4,16(9)
	lfd 0,40(4)
	fcmpu 7,13,0
	blt- 7,.L275
	bne- 7,.L277
	lfd 13,48(10)
	lfd 0,48(4)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L277
.L275:
.LBE25:
	.loc 1 584 0
	lwz 5,16(28)
	mr 3,10
	bl __gl_edgeSign
.LBB24:
	fcmpu 7,1,30
	blt- 7,.L273
	.loc 1 587 0
	lwz 9,4(31)
	li 0,1
.LBE24:
	.loc 1 588 0
	mr 3,28
.LBB23:
	.loc 1 587 0
	lwz 9,4(9)
	lwz 9,0(9)
	stb 0,14(31)
	stb 0,14(9)
.LBE23:
	.loc 1 588 0
	bl __gl_meshSplitEdge
.LBB22:
	.loc 1 589 0
	mr. 30,3
.LVL185:
	beq- 0,.L315
.LBE22:
	.loc 1 590 0
	lwz 3,4(29)
	mr 4,30
	bl __gl_meshSplice
.LBB21:
	cmpwi 7,3,0
	beq- 7,.L315
	.loc 1 591 0
	lwz 9,20(30)
	lbz 0,12(31)
	b .L313
.LVL186:
.L277:
.LBE21:
	.loc 1 593 0
	lwz 5,16(29)
	mr 3,4
	mr 4,10
	bl __gl_edgeSign
.LBB20:
	fcmpu 7,1,31
	bgt+ 7,.L273
	.loc 1 596 0
	li 0,1
.LBE20:
	.loc 1 597 0
	mr 3,29
.LBB19:
	.loc 1 596 0
	stb 0,14(30)
	stb 0,14(31)
.LBE19:
	.loc 1 597 0
	bl __gl_meshSplitEdge
.LBB18:
	.loc 1 598 0
	mr. 30,3
.LVL187:
	beq- 0,.L315
.LBE18:
	.loc 1 599 0
	lwz 4,4(29)
	lwz 3,12(28)
	bl __gl_meshSplice
.LBB17:
	cmpwi 7,3,0
	beq- 7,.L315
	.loc 1 600 0
	lwz 9,4(30)
	lbz 0,12(31)
	lwz 9,20(9)
	b .L313
.L292:
.LBE17:
.LBE30:
	.loc 1 800 0
	mr 4,27
	mr 3,26
	bl DeleteRegion
	.loc 1 801 0
	mr 3,25
	bl __gl_meshDelete
	cmpwi 7,3,0
	beq- 7,.L315
	.loc 1 802 0
	lwz 9,4(31)
	lwz 9,8(9)
	lwz 27,0(9)
	.loc 1 803 0
	lwz 25,0(27)
	b .L273
.L312:
	.loc 1 804 0
	lbz 0,15(31)
	cmpwi 7,0,0
	beq+ 7,.L273
	.loc 1 805 0
	mr 4,31
	mr 3,26
	bl DeleteRegion
	.loc 1 806 0
	mr 3,28
	bl __gl_meshDelete
	cmpwi 7,3,0
	beq- 7,.L315
	.loc 1 807 0
	lwz 9,4(27)
	lwz 9,4(9)
	lwz 31,0(9)
	.loc 1 808 0
	lwz 28,0(31)
.LVL188:
.L273:
	.loc 1 812 0
	lwz 0,16(28)
	lwz 9,16(25)
	cmpw 7,0,9
	beq- 7,.L299
	.loc 1 813 0
	lwz 9,4(28)
	lwz 11,4(25)
	lwz 9,16(9)
	lwz 11,16(11)
	cmpw 7,9,11
	beq- 7,.L301
	lbz 0,15(31)
	cmpwi 7,0,0
	bne- 7,.L301
	lbz 0,15(27)
	cmpwi 7,0,0
	bne- 7,.L301
	lwz 0,112(26)
	cmpw 7,9,0
	beq- 7,.L305
	cmpw 7,11,0
	bne+ 7,.L301
.L305:
	.loc 1 825 0
	mr 3,26
	mr 4,31
	bl CheckForIntersect
	cmpwi 7,3,0
	beq+ 7,.L299
	b .L311
.LVL189:
.L301:
	.loc 1 833 0
	mr 3,26
	mr 4,31
	bl CheckForRightSplice
.LVL190:
.L299:
	.loc 1 836 0
	lwz 0,16(28)
	lwz 9,16(25)
	cmpw 7,0,9
	bne+ 7,.L265
	lwz 10,4(28)
	lwz 11,4(25)
	lwz 0,16(10)
	lwz 9,16(11)
	cmpw 7,0,9
	bne+ 7,.L265
	.loc 1 838 0
	lwz 9,28(28)
	.loc 1 839 0
	mr 4,31
	.loc 1 838 0
	lwz 0,28(25)
	.loc 1 839 0
	mr 3,26
	.loc 1 838 0
	add 0,0,9
	stw 0,28(25)
	lwz 9,28(10)
	lwz 0,28(11)
	add 0,0,9
	stw 0,28(11)
	.loc 1 839 0
	bl DeleteRegion
	.loc 1 840 0
	mr 3,28
	bl __gl_meshDelete
	cmpwi 7,3,0
	bne+ 7,.L309
.L315:
	addi 3,26,3384
	li 4,1
	bl longjmp
.L309:
	.loc 1 841 0
	lwz 9,4(27)
	lwz 9,4(9)
	lwz 31,0(9)
	b .L265
.LVL191:
.L313:
.LBB31:
.LBB28:
	.loc 1 600 0
	stb 0,21(9)
.LBE28:
.LBE31:
	.loc 1 799 0
	lbz 0,15(27)
	cmpwi 7,0,0
	beq+ 7,.L312
	b .L292
.LVL192:
.L311:
	.loc 1 844 0
	lwz 0,60(1)
	lmw 25,12(1)
.LVL193:
	lfd 30,40(1)
	mtlr 0
	lfd 31,48(1)
	addi 1,1,56
	blr
.LFE20:
	.size	WalkDirtyRegions, .-WalkDirtyRegions
	.align 2
	.type	SweepEvent, @function
SweepEvent:
.LFB24:
	.loc 1 1073 0
.LVL194:
	stwu 1,-56(1)
.LCFI56:
	mflr 0
.LCFI57:
	stmw 24,24(1)
.LCFI58:
	mr 31,3
	stw 0,60(1)
.LCFI59:
	.loc 1 1073 0
	mr 27,4
	.loc 1 1077 0
	stw 4,112(31)
	.loc 1 1084 0
	lwz 9,8(4)
.LVL195:
	mr 0,9
	b .L317
.LVL196:
.L318:
	.loc 1 1086 0
	lwz 9,8(9)
	.loc 1 1087 0
	cmpw 7,9,0
	bne+ 7,.L317
.LVL197:
.LBB43:
.LBB44:
	.loc 1 1025 0
	lwz 0,4(9)
.LVL198:
.LBE44:
	.loc 1 1027 0
	addi 4,1,8
.LVL199:
	lwz 3,104(31)
.LBB60:
	.loc 1 1025 0
	stw 0,8(1)
.LBE60:
	.loc 1 1027 0
	bl __gl_dictListSearch
.LVL200:
	.loc 1 1033 0
	mr 4,27
.LBB61:
	.loc 1 1027 0
	lwz 29,0(3)
.LVL201:
	.loc 1 1029 0
	lwz 26,0(29)
.LVL202:
	.loc 1 1028 0
	lwz 9,4(29)
.LBE61:
	.loc 1 1033 0
	lwz 11,4(26)
.LBB62:
	.loc 1 1028 0
	lwz 9,8(9)
.LBE62:
	.loc 1 1033 0
	lwz 3,16(11)
.LBB63:
	.loc 1 1028 0
	lwz 30,0(9)
.LVL203:
.LBE63:
	.loc 1 1033 0
	lwz 5,16(26)
.LBB64:
	.loc 1 1030 0
	lwz 28,0(30)
.LVL204:
.LBE64:
	.loc 1 1033 0
	bl __gl_edgeSign
.LBB65:
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	fcmpu 7,1,0
	bne- 7,.L320
.LBB50:
.LBB51:
	.loc 1 952 0
	lwz 30,0(29)
.LVL205:
	.loc 1 953 0
	lfd 12,40(27)
	lwz 9,16(30)
	lfd 0,40(9)
	fcmpu 7,0,12
	bne- 7,.L323
	lfd 0,48(9)
	lfd 13,48(27)
	fcmpu 7,0,13
	bne+ 7,.L323
	.loc 1 958 0
	lwz 5,8(27)
	mr 3,31
	mr 4,30
	bl SpliceMergeVertices
	b .L408
.L323:
	.loc 1 962 0
	lwz 3,4(30)
	lwz 11,16(3)
	lfd 0,40(11)
	fcmpu 7,0,12
	bne- 7,.L329
	lfd 0,48(11)
	lfd 13,48(27)
	fcmpu 7,0,13
	beq- 7,.L409
.L329:
.LBE51:
	.loc 1 964 0
	bl __gl_meshSplitEdge
.LBB54:
	cmpwi 7,3,0
	beq- 7,.L417
	.loc 1 965 0
	lbz 0,15(29)
	cmpwi 7,0,0
	beq- 7,.L335
.LBE54:
	.loc 1 967 0
	lwz 3,8(30)
	bl __gl_meshDelete
.LBB55:
	cmpwi 7,3,0
	beq- 7,.L417
	.loc 1 968 0
	li 0,0
	stb 0,15(29)
.L335:
.LBE55:
	.loc 1 970 0
	lwz 3,8(27)
	mr 4,30
	bl __gl_meshSplice
	b .L419
.L409:
.LBB56:
.LBB52:
.LBB53:
	.loc 1 209 0
	lwz 9,4(29)
	lwz 9,4(9)
	lwz 29,0(9)
	.loc 1 210 0
	lwz 9,0(29)
	lwz 9,4(9)
	lwz 0,16(9)
	cmpw 7,0,11
	beq+ 7,.L409
.LBE53:
.LBE52:
	.loc 1 980 0
	lwz 9,4(29)
	lwz 9,8(9)
	lwz 4,0(9)
.LVL206:
	.loc 1 983 0
	lbz 0,15(4)
	.loc 1 981 0
	lwz 9,0(4)
	.loc 1 983 0
	cmpwi 7,0,0
	.loc 1 981 0
	lwz 30,4(9)
.LVL207:
	.loc 1 982 0
	lwz 28,8(30)
.LVL208:
	.loc 1 983 0
	beq- 7,.L342
	.loc 1 988 0
	mr 3,31
	bl DeleteRegion
.LVL209:
.LBE56:
	.loc 1 989 0
	mr 3,30
	bl __gl_meshDelete
.LBB57:
	cmpwi 7,3,0
	beq- 7,.L417
	.loc 1 990 0
	lwz 9,4(28)
	lwz 30,12(9)
.LVL210:
.L342:
.LBE57:
	.loc 1 992 0
	lwz 3,8(27)
	mr 4,30
.LVL211:
	bl __gl_meshSplice
.LBB58:
	cmpwi 7,3,0
	beq- 7,.L417
	.loc 1 993 0
	lwz 9,4(28)
	lwz 11,16(28)
	lwz 9,16(9)
	lfd 13,40(11)
	lfd 0,40(9)
	fcmpu 7,0,13
	blt- 7,.L348
	bne- 7,.L350
	lfd 13,48(9)
	lfd 0,48(11)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L350
.L348:
	mr 7,28
	b .L354
.LVL212:
.L350:
	li 7,0
.LVL213:
.L354:
	.loc 1 997 0
	lwz 5,8(30)
	mr 3,31
	mr 4,29
	mr 6,28
	b .L415
.LVL214:
.L320:
.LBE58:
.LBE50:
	.loc 1 1041 0
	lwz 10,4(28)
	lwz 9,4(26)
	lwz 11,16(10)
	lwz 9,16(9)
	lfd 13,40(11)
	lfd 0,40(9)
	fcmpu 7,13,0
	blt- 7,.L355
	bne- 7,.L357
	lfd 13,48(11)
	lfd 0,48(9)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L357
.L355:
	mr 30,29
.L357:
	.loc 1 1043 0
	lbz 0,12(29)
	cmpwi 7,0,0
	bne- 7,.L361
.LVL215:
	lbz 0,15(30)
	cmpwi 7,0,0
	beq- 7,.L363
.L361:
	.loc 1 1044 0
	cmpw 7,30,29
	lwz 4,8(27)
	bne+ 7,.L364
.LBE65:
	.loc 1 1045 0
	lwz 3,4(4)
	lwz 4,12(26)
	bl __gl_meshConnect
.LBB66:
	.loc 1 1046 0
	mr. 5,3
.LVL216:
	bne+ 0,.L366
	b .L417
.LVL217:
.L364:
.LBE66:
	.loc 1 1048 0
	lwz 9,8(10)
	lwz 3,4(9)
	bl __gl_meshConnect
.LBB67:
.LBB49:
	.loc 1 1049 0
	cmpwi 0,3,0
.LVL218:
	beq- 0,.L417
	.loc 1 1051 0
	lwz 5,4(3)
.LVL219:
.L366:
.LBE49:
	.loc 1 1053 0
	lbz 0,15(30)
	cmpwi 7,0,0
	beq- 7,.L370
.LVL220:
.LBE67:
	.loc 1 1054 0
	mr 3,30
.LVL221:
	mr 4,5
	bl FixUpperEdge
.LVL222:
.L419:
.LBB68:
	cmpwi 7,3,0
	bne+ 7,.L372
	b .L417
.LVL223:
.L370:
.LBE68:
	.loc 1 1056 0
	mr 4,29
	mr 3,31
.LVL224:
	bl AddRegionBelow
.LVL225:
.LBB69:
.LBB45:
.LBB46:
	.loc 1 261 0
	lwz 9,4(3)
.LVL226:
.LBE46:
.LBE45:
.LBE69:
	.loc 1 1056 0
	mr 29,3
.LVL227:
.LBB70:
.LBB59:
.LBB47:
	.loc 1 261 0
	lwz 11,0(3)
.LBE47:
	.loc 1 262 0
	mr 3,31
.LBB48:
	.loc 1 261 0
	lwz 9,4(9)
	lwz 4,28(11)
	lwz 9,0(9)
	lwz 0,8(9)
	add 4,4,0
	stw 4,8(29)
.LBE48:
	.loc 1 262 0
	bl IsWindingInside
	stb 3,12(29)
.LVL228:
.L372:
.LBE59:
	.loc 1 1058 0
	mr 3,31
	mr 4,27
	bl SweepEvent
	b .L408
.LVL229:
.L363:
	.loc 1 1063 0
	lwz 5,8(27)
	mr 3,31
	mr 4,29
	li 7,0
	mr 6,5
	b .L415
.LVL230:
.L317:
.LBE70:
.LBE43:
	.loc 1 1085 0
	lwz 3,24(9)
	cmpwi 7,3,0
	beq+ 7,.L318
.LVL231:
	.loc 1 1101 0
	bl TopLeftRegion
.LVL232:
	.loc 1 1102 0
	mr. 30,3
.LVL233:
	beq- 0,.L417
	.loc 1 1103 0
	lwz 9,4(30)
	.loc 1 1105 0
	mr 3,31
	li 5,0
	.loc 1 1103 0
	lwz 9,8(9)
	lwz 9,0(9)
.LVL234:
	.loc 1 1105 0
	mr 4,9
	.loc 1 1104 0
	lwz 29,0(9)
.LVL235:
	.loc 1 1105 0
	bl FinishLeftRegions
.LVL236:
	.loc 1 1112 0
	lwz 27,8(3)
.LVL237:
	.loc 1 1105 0
	mr 25,3
.LVL238:
	.loc 1 1112 0
	cmpw 7,27,29
	bne+ 7,.L377
.LVL239:
.LBB71:
.LBB72:
	.loc 1 883 0
	lwz 9,4(30)
	.loc 1 884 0
	lwz 28,0(30)
.LVL240:
	.loc 1 883 0
	lwz 9,8(9)
	.loc 1 888 0
	lwz 11,4(28)
	.loc 1 883 0
	lwz 24,0(9)
.LVL241:
	.loc 1 888 0
	lwz 11,16(11)
	.loc 1 885 0
	lwz 26,0(24)
.LVL242:
	.loc 1 888 0
	lwz 9,4(26)
	lwz 0,16(9)
	cmpw 7,11,0
	beq- 7,.L379
	.loc 1 889 0
	mr 3,31
	mr 4,30
	bl CheckForIntersect
.L379:
	.loc 1 895 0
	lwz 9,16(28)
	lwz 11,112(31)
	lfd 0,40(9)
	lfd 13,40(11)
	fcmpu 7,0,13
	bne- 7,.L381
	lfd 0,48(9)
	lfd 13,48(11)
	fcmpu 7,0,13
	bne+ 7,.L381
.LBE72:
	.loc 1 896 0
	lwz 9,4(29)
	mr 4,28
	lwz 3,12(9)
	bl __gl_meshSplice
.LBB73:
	cmpwi 7,3,0
	beq- 7,.L417
.LBE73:
	.loc 1 897 0
	mr 3,30
	bl TopLeftRegion
.LBB74:
	.loc 1 898 0
	mr. 30,3
	beq- 0,.L417
	.loc 1 899 0
	lwz 9,4(30)
	.loc 1 900 0
	mr 3,31
	mr 5,24
	.loc 1 899 0
	lwz 9,8(9)
	lwz 9,0(9)
	.loc 1 900 0
	mr 4,9
	.loc 1 899 0
	lwz 27,0(9)
.LVL243:
	.loc 1 900 0
	bl FinishLeftRegions
	li 0,1
.LVL244:
	b .L390
.LVL245:
.L381:
	li 0,0
.LVL246:
.L390:
	.loc 1 903 0
	lwz 11,16(26)
	lwz 9,112(31)
	lfd 12,40(11)
	lfd 0,40(9)
	fcmpu 7,12,0
	bne- 7,.L391
	lfd 0,48(9)
	lfd 13,48(11)
	fcmpu 7,13,0
	bne+ 7,.L391
.LBE74:
	.loc 1 904 0
	lwz 9,4(26)
	mr 3,25
	lwz 4,12(9)
	bl __gl_meshSplice
.LVL247:
.LBB75:
	cmpwi 7,3,0
	beq- 7,.L417
.LBE75:
	.loc 1 905 0
	mr 4,24
	mr 3,31
	li 5,0
	bl FinishLeftRegions
	mr 25,3
	b .L398
.LVL248:
.L391:
.LBB76:
	.loc 1 908 0
	cmpwi 7,0,0
	beq- 7,.L399
.L398:
	.loc 1 909 0
	lwz 5,8(25)
	mr 6,27
	mr 3,31
	mr 4,30
	b .L414
.LVL249:
.L399:
	.loc 1 916 0
	lwz 9,16(28)
	lfd 0,40(9)
	fcmpu 7,12,0
	blt- 7,.L400
	bne- 7,.L402
	lfd 13,48(11)
	lfd 0,48(9)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L402
.L400:
	.loc 1 917 0
	lwz 9,4(26)
	lwz 28,12(9)
.L402:
.LBE76:
	.loc 1 921 0
	lwz 9,8(25)
	mr 4,28
	lwz 3,4(9)
	bl __gl_meshConnect
.LVL250:
.LBB77:
	.loc 1 922 0
	mr. 29,3
.LVL251:
	bne+ 0,.L406
.LVL252:
.L417:
	addi 3,31,3384
.LVL253:
	li 4,1
	bl longjmp
.LVL254:
.L406:
	.loc 1 927 0
	lwz 6,8(29)
	mr 3,31
	mr 4,30
	mr 5,29
	mr 7,6
	li 8,0
	bl AddRightEdges
	.loc 1 928 0
	lwz 9,4(29)
	li 0,1
	.loc 1 929 0
	mr 3,31
	.loc 1 928 0
	lwz 9,24(9)
	.loc 1 929 0
	mr 4,30
	.loc 1 928 0
	stb 0,15(9)
	.loc 1 929 0
	bl WalkDirtyRegions
	b .L408
.LVL255:
.L377:
.LBE77:
.LBE71:
	.loc 1 1116 0
	mr 6,29
	mr 3,31
	mr 4,30
	mr 5,27
.LVL256:
.L414:
	mr 7,6
.LVL257:
.L415:
	li 8,1
	bl AddRightEdges
.LVL258:
.LVL259:
.L408:
	.loc 1 1118 0
	lwz 0,60(1)
	lmw 24,24(1)
.LVL260:
	addi 1,1,56
	mtlr 0
	blr
.LFE24:
	.size	SweepEvent, .-SweepEvent
	.align 2
	.globl __gl_computeInterior
	.type	__gl_computeInterior, @function
__gl_computeInterior:
.LFB32:
	.loc 1 1307 0
.LVL261:
	mflr 0
.LCFI60:
	stwu 1,-32(1)
.LCFI61:
	stmw 26,8(1)
.LCFI62:
	mr 29,3
	stw 0,36(1)
.LCFI63:
	.loc 1 1310 0
	li 0,0
	stb 0,100(3)
.LBB90:
.LBB91:
	.loc 1 1203 0
	lwz 9,8(3)
	.loc 1 1206 0
	lwz 30,88(9)
.LVL262:
	.loc 1 1203 0
	addi 26,9,88
.LVL263:
	b .L421
.LVL264:
.L422:
	.loc 1 1210 0
	lwz 9,4(30)
	lwz 11,16(30)
	lwz 9,16(9)
	lfd 13,40(11)
	lfd 0,40(9)
	.loc 1 1207 0
	lwz 28,0(30)
.LVL265:
	.loc 1 1210 0
	fcmpu 7,13,0
	.loc 1 1208 0
	lwz 31,12(30)
.LVL266:
	.loc 1 1210 0
	bne- 7,.L423
.LVL267:
	lfd 0,48(11)
	lfd 13,48(9)
	fcmpu 7,0,13
	bne- 7,.L423
	lwz 0,12(31)
	cmpw 7,0,30
	beq- 7,.L423
.LVL268:
	.loc 1 1213 0
	mr 4,31
	mr 5,30
	mr 3,29
	bl SpliceMergeVertices
.LVL269:
.LBE91:
	.loc 1 1214 0
	mr 3,30
	bl __gl_meshDelete
.LBB92:
	cmpwi 7,3,0
	beq- 7,.L452
	.loc 1 1216 0
	mr 30,31
	lwz 31,12(31)
.LVL270:
.L423:
	.loc 1 1218 0
	lwz 27,12(31)
	cmpw 7,27,30
	bne+ 7,.L431
.LVL271:
	.loc 1 1221 0
	cmpw 7,31,30
	beq- 7,.L433
	.loc 1 1222 0
	cmpw 7,31,28
	beq- 7,.L435
.LVL272:
	lwz 0,4(28)
	cmpw 7,31,0
	bne+ 7,.L437
.L435:
	lwz 28,0(28)
.LVL273:
.L437:
.LBE92:
	.loc 1 1223 0
	mr 3,31
	bl __gl_meshDelete
.LBB93:
	cmpwi 7,3,0
	beq- 7,.L452
.LVL274:
.L433:
	.loc 1 1225 0
	cmpw 7,30,28
	beq- 7,.L439
.LVL275:
	lwz 0,4(28)
	cmpw 7,27,0
	bne+ 7,.L441
.L439:
	lwz 28,0(28)
.LVL276:
.L441:
.LBE93:
	.loc 1 1226 0
	mr 3,30
	bl __gl_meshDelete
.LBB94:
	cmpwi 7,3,0
	beq- 7,.L452
.LVL277:
.L431:
	mr 30,28
.L421:
	.loc 1 1206 0
	cmpw 7,30,26
	bne+ 7,.L422
.LBE94:
.LBE90:
.LBB95:
.LBB99:
	.loc 1 1241 0
	lis 3,__gl_vertLeq@ha
.LBE99:
	la 3,__gl_vertLeq@l(3)
	bl __gl_pqSortNewPriorityQ
.LBB98:
	.loc 1 1242 0
	cmpwi 7,3,0
.LVL278:
.LBE98:
	.loc 1 1241 0
	mr 30,3
.LVL279:
.LBB97:
	stw 3,108(29)
	.loc 1 1242 0
	beq- 7,.L444
.LVL280:
	.loc 1 1244 0
	lwz 27,8(29)
.LVL281:
	.loc 1 1247 0
	lis 28,0x7fff
.LVL282:
	ori 28,28,65535
	.loc 1 1245 0
	lwz 31,0(27)
.LVL283:
	b .L446
.L447:
.LBE97:
	.loc 1 1246 0
	mr 3,30
	mr 4,31
	bl __gl_pqSortInsert
.LVL284:
.LBB96:
	.loc 1 1247 0
	cmpw 7,3,28
	.loc 1 1246 0
	stw 3,56(31)
	.loc 1 1247 0
	beq- 7,.L448
	.loc 1 1245 0
	lwz 31,0(31)
.LVL285:
.L446:
	cmpw 7,31,27
	bne+ 7,.L447
.LVL286:
	b .L473
.LVL287:
.L448:
	.loc 1 1250 0
	lwz 3,108(29)
	bl __gl_pqSortDeletePriorityQ
	.loc 1 1251 0
	li 0,0
	li 3,0
	stw 0,108(29)
	b .L451
.LVL288:
.L452:
.LBE96:
.LBE95:
.LBB101:
.LBB102:
	.loc 1 1166 0
	addi 3,29,3384
	li 4,1
	bl longjmp
.LVL289:
.L475:
	.loc 1 1168 0
	lis 9,.LC6@ha
	mr 3,29
	lfd 1,.LC6@l(9)
	bl AddSentinel
	.loc 1 1169 0
	lis 9,.LC5@ha
	lfd 1,.LC5@l(9)
	mr 3,29
	bl AddSentinel
	b .L454
.LVL290:
.L474:
.LBE102:
.LBE101:
	.loc 1 1325 0
	lwz 3,108(29)
	bl __gl_pqSortMinimum
	.loc 1 1326 0
	cmpwi 0,3,0
	beq- 0,.L456
	lfd 0,40(3)
	lfd 13,40(31)
	fcmpu 7,0,13
	bne- 7,.L456
	lfd 0,48(3)
	lfd 13,48(31)
	fcmpu 7,0,13
	bne- 7,.L456
	.loc 1 1342 0
	lwz 3,108(29)
	bl __gl_pqSortExtractMin
	.loc 1 1343 0
	lwz 4,8(31)
	lwz 5,8(3)
	mr 3,29
	bl SpliceMergeVertices
	b .L474
.L456:
	.loc 1 1345 0
	mr 4,31
.LVL291:
	mr 3,29
	bl SweepEvent
.LVL292:
.L454:
	.loc 1 1323 0
	lwz 3,108(29)
	bl __gl_pqSortExtractMin
	mr. 31,3
.LVL293:
	bne+ 0,.L474
	.loc 1 1350 0
	lwz 9,104(29)
	lwz 9,4(9)
	lwz 9,0(9)
	lwz 9,0(9)
	lwz 0,16(9)
	stw 0,112(29)
	b .L463
.L464:
.LBB105:
.LBB106:
	.loc 1 1190 0
	mr 3,29
	bl DeleteRegion
.L463:
	.loc 1 1179 0
	lwz 3,104(29)
	lwz 9,4(3)
	lwz 4,0(9)
	cmpwi 7,4,0
	bne+ 7,.L464
	.loc 1 1193 0
	bl __gl_dictListDeleteDict
.LBE106:
.LBE105:
.LBB107:
.LBB108:
	.loc 1 1261 0
	lwz 3,108(29)
	bl __gl_pqSortDeletePriorityQ
.LBE108:
.LBE107:
	.loc 1 1355 0
	lwz 9,8(29)
.LVL294:
.LBB109:
.LBB110:
	.loc 1 1285 0
	lwz 11,64(9)
.LVL295:
	addi 30,9,64
.LVL296:
	b .L466
.LVL297:
.L467:
	.loc 1 1287 0
	lwz 9,8(11)
.LVL298:
	.loc 1 1286 0
	lwz 31,0(11)
.LVL299:
	.loc 1 1290 0
	lwz 11,12(9)
	lwz 3,12(11)
	cmpw 7,3,9
	bne+ 7,.L468
	.loc 1 1292 0
	lwz 9,8(3)
.LVL300:
	lwz 11,28(3)
	lwz 0,28(9)
	lwz 10,4(9)
	add 0,0,11
	stw 0,28(9)
	lwz 9,4(3)
	lwz 0,28(10)
	lwz 9,28(9)
	add 0,0,9
	stw 0,28(10)
.LBE110:
	.loc 1 1293 0
	bl __gl_meshDelete
.LBB111:
	cmpwi 7,3,0
	beq- 7,.L444
.LVL301:
.L468:
	mr 11,31
.LVL302:
.L466:
	.loc 1 1285 0
	cmpw 7,11,30
	bne+ 7,.L467
	li 3,1
	b .L451
.LVL303:
.L444:
	li 3,0
.LVL304:
	b .L451
.LVL305:
.L473:
.LBE111:
.LBE109:
.LBB112:
	.loc 1 1249 0
	mr 3,30
	bl __gl_pqSortInit
.LVL306:
.LBB100:
	cmpwi 7,3,0
	beq+ 7,.L448
.LBE100:
.LBE112:
.LBB113:
.LBB103:
	.loc 1 1165 0
	lis 4,EdgeLeq@ha
.LBE103:
	mr 3,29
	la 4,EdgeLeq@l(4)
	bl __gl_dictListNewDict
.LBB104:
	.loc 1 1166 0
	cmpwi 7,3,0
	.loc 1 1165 0
	stw 3,104(29)
	.loc 1 1166 0
	bne+ 7,.L475
	b .L452
.LVL307:
.L451:
.LBE104:
.LBE113:
	.loc 1 1359 0
	lwz 0,36(1)
	lmw 26,8(1)
.LVL308:
	addi 1,1,32
	mtlr 0
	blr
.LFE32:
	.size	__gl_computeInterior, .-__gl_computeInterior
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	C.1.9773, @object
	.size	C.1.9773, 16
C.1.9773:
	.long	1056964608
	.long	1056964608
	.long	0
	.long	0
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC2:
	.4byte	1056964608
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC0:
	.4byte	0
	.4byte	0
.LC5:
	.4byte	1597214005
	.4byte	777033391
.LC6:
	.4byte	-550269643
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI1-.LFB13
	.byte	0xe
	.uleb128 0x38
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
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI5-.LFB4
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI8-.LFB25
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI10-.LCFI8
	.byte	0x9f
	.uleb128 0x3
	.byte	0x9e
	.uleb128 0x4
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI12-.LCFI10
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0xbf
	.uleb128 0x2
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI13-.LFB7
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
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI18-.LFB2
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI21-.LCFI18
	.byte	0x9f
	.uleb128 0x3
	.byte	0x9e
	.uleb128 0x4
	.byte	0xbf
	.uleb128 0x2
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI22-.LFB14
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.4byte	.LCFI24-.LCFI22
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
	.4byte	.LCFI25-.LCFI24
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI27-.LFB5
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI31-.LFB3
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
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
	.4byte	.LCFI33-.LCFI32
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.align 2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI35-.LFB11
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI36-.LCFI35
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
	.4byte	.LCFI37-.LCFI36
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI39-.LFB17
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI40-.LCFI39
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
	.4byte	.LCFI41-.LCFI40
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI43-.LFB12
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI44-.LCFI43
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
	.4byte	.LCFI45-.LCFI44
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI47-.LFB19
	.byte	0xe
	.uleb128 0x90
	.byte	0x4
	.4byte	.LCFI48-.LCFI47
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
	.4byte	.LCFI49-.LCFI48
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI51-.LFB20
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI54-.LCFI51
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
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI55-.LCFI54
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI56-.LFB24
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI58-.LCFI56
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
	.4byte	.LCFI59-.LCFI58
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI61-.LFB32
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI62-.LCFI61
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
	.4byte	.LCFI63-.LCFI62
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE34:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB13-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB25-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB7-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LFB14-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI27-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LFB11-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI35-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL104-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL105-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LFB17-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI39-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST62:
	.4byte	.LFB12-.Ltext0
	.4byte	.LCFI43-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI43-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST63:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST64:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST65:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST66:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST67:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST68:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0x0
	.4byte	0x0
.LLST69:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST70:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST71:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST72:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST73:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST74:
	.4byte	.LFB19-.Ltext0
	.4byte	.LCFI47-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI47-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 144
	.4byte	0x0
	.4byte	0x0
.LLST75:
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST76:
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL172-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST77:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0x0
	.4byte	0x0
.LLST78:
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST79:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST80:
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST81:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST82:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0x0
	.4byte	0x0
.LLST83:
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0x0
	.4byte	0x0
.LLST84:
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL170-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
.LLST85:
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL170-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST86:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST87:
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST88:
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST89:
	.4byte	.LFB20-.Ltext0
	.4byte	.LCFI51-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI51-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0x0
	.4byte	0x0
.LLST90:
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL193-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST91:
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL193-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST92:
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST93:
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST94:
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0x0
	.4byte	0x0
.LLST95:
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST96:
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST97:
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST98:
	.4byte	.LFB24-.Ltext0
	.4byte	.LCFI56-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI56-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0x0
	.4byte	0x0
.LLST99:
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST100:
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST101:
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST102:
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST103:
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST104:
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST105:
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0x0
	.4byte	0x0
.LLST106:
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST107:
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST108:
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST109:
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST110:
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL227-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST111:
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST112:
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST113:
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST114:
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST115:
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST116:
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL251-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL254-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST117:
	.4byte	.LVL241-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0x0
	.4byte	0x0
.LLST118:
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST119:
	.4byte	.LVL244-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST120:
	.4byte	.LFB32-.Ltext0
	.4byte	.LCFI61-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI61-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST121:
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL264-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL264-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST122:
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST123:
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL265-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL266-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL270-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL277-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL282-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL289-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST124:
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST125:
	.4byte	.LVL278-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL286-.Ltext0
	.4byte	.LVL287-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST126:
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL292-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST127:
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST128:
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL298-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL307-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST129:
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL308-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST130:
	.4byte	.LVL297-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL307-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x1
	.byte	0x59
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
	.4byte	0x17d6
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF173
	.byte	0x1
	.4byte	.LASF174
	.4byte	.LASF175
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
	.4byte	.LASF176
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
	.4byte	.LASF147
	.byte	0x1
	.byte	0xcc
	.byte	0x1
	.4byte	0x542
	.byte	0x1
	.4byte	0x942
	.uleb128 0x17
	.string	"reg"
	.byte	0x1
	.byte	0xcb
	.4byte	0x542
	.uleb128 0x18
	.string	"dst"
	.byte	0x1
	.byte	0xcd
	.4byte	0x520
	.byte	0x0
	.uleb128 0x19
	.4byte	.LASF110
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.4byte	0xa4
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x51
	.4byte	0x977
	.uleb128 0x1a
	.4byte	.LASF104
	.byte	0x1
	.byte	0xef
	.4byte	0x977
	.4byte	.LLST1
	.uleb128 0x1b
	.string	"n"
	.byte	0x1
	.byte	0xef
	.4byte	0x4d
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xd8
	.uleb128 0x1c
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x19e
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST2
	.4byte	0x9f6
	.uleb128 0x1d
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x19c
	.4byte	0x977
	.4byte	.LLST3
	.uleb128 0x1d
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x19c
	.4byte	0x520
	.4byte	.LLST4
	.uleb128 0x1d
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x19d
	.4byte	0x855
	.4byte	.LLST5
	.uleb128 0x1d
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x19d
	.4byte	0xcc
	.4byte	.LLST6
	.uleb128 0x1d
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x19d
	.4byte	0x4d
	.4byte	.LLST7
	.uleb128 0x1e
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x19f
	.4byte	0x52c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x1f
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x1cf
	.byte	0x1
	.4byte	.LFB15
	.4byte	.LFE15
	.byte	0x1
	.byte	0x51
	.4byte	0xa64
	.uleb128 0x20
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x1c6
	.4byte	0x520
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.string	"org"
	.byte	0x1
	.2byte	0x1c6
	.4byte	0x520
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.string	"dst"
	.byte	0x1
	.2byte	0x1c6
	.4byte	0x520
	.byte	0x1
	.byte	0x55
	.uleb128 0x20
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x1c7
	.4byte	0xcc
	.byte	0x1
	.byte	0x56
	.uleb128 0x22
	.string	"t1"
	.byte	0x1
	.2byte	0x1d0
	.4byte	0xc1
	.4byte	.LLST9
	.uleb128 0x22
	.string	"t2"
	.byte	0x1
	.2byte	0x1d1
	.4byte	0xc1
	.4byte	.LLST10
	.byte	0x0
	.uleb128 0x23
	.4byte	.LASF111
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST11
	.4byte	0xa9f
	.uleb128 0x24
	.string	"reg"
	.byte	0x1
	.byte	0xa7
	.4byte	0x542
	.4byte	.LLST12
	.uleb128 0x1a
	.4byte	.LASF112
	.byte	0x1
	.byte	0xa7
	.4byte	0x526
	.4byte	.LLST13
	.byte	0x0
	.uleb128 0x1c
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x46d
	.byte	0x1
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LLST14
	.4byte	0xaf5
	.uleb128 0x1d
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x468
	.4byte	0x977
	.4byte	.LLST15
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.2byte	0x468
	.4byte	0xc1
	.4byte	.LLST16
	.uleb128 0x22
	.string	"e"
	.byte	0x1
	.2byte	0x46e
	.4byte	0x526
	.4byte	.LLST17
	.uleb128 0x22
	.string	"reg"
	.byte	0x1
	.2byte	0x46f
	.4byte	0x542
	.4byte	.LLST18
	.byte	0x0
	.uleb128 0x23
	.4byte	.LASF114
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.4byte	0x542
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST19
	.4byte	0xb4e
	.uleb128 0x1a
	.4byte	.LASF104
	.byte	0x1
	.byte	0xd6
	.4byte	0x977
	.4byte	.LLST20
	.uleb128 0x1a
	.4byte	.LASF115
	.byte	0x1
	.byte	0xd7
	.4byte	0x542
	.4byte	.LLST21
	.uleb128 0x1a
	.4byte	.LASF116
	.byte	0x1
	.byte	0xd8
	.4byte	0x526
	.4byte	.LLST22
	.uleb128 0x26
	.4byte	.LASF117
	.byte	0x1
	.byte	0xe0
	.4byte	0x542
	.4byte	.LLST23
	.byte	0x0
	.uleb128 0x23
	.4byte	.LASF118
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST24
	.4byte	0xbdb
	.uleb128 0x1a
	.4byte	.LASF104
	.byte	0x1
	.byte	0x6c
	.4byte	0x977
	.4byte	.LLST25
	.uleb128 0x1a
	.4byte	.LASF119
	.byte	0x1
	.byte	0x6c
	.4byte	0x542
	.4byte	.LLST26
	.uleb128 0x1a
	.4byte	.LASF120
	.byte	0x1
	.byte	0x6d
	.4byte	0x542
	.4byte	.LLST27
	.uleb128 0x26
	.4byte	.LASF29
	.byte	0x1
	.byte	0x7a
	.4byte	0x520
	.4byte	.LLST28
	.uleb128 0x27
	.string	"e1"
	.byte	0x1
	.byte	0x7b
	.4byte	0x526
	.4byte	.LLST29
	.uleb128 0x27
	.string	"e2"
	.byte	0x1
	.byte	0x7b
	.4byte	0x526
	.4byte	.LLST30
	.uleb128 0x27
	.string	"t1"
	.byte	0x1
	.byte	0x7c
	.4byte	0xc1
	.4byte	.LLST31
	.uleb128 0x18
	.string	"t2"
	.byte	0x1
	.byte	0x7c
	.4byte	0xc1
	.byte	0x0
	.uleb128 0x1c
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x1bc
	.byte	0x1
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST32
	.4byte	0xc41
	.uleb128 0x1d
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x977
	.4byte	.LLST33
	.uleb128 0x25
	.string	"e1"
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x526
	.4byte	.LLST34
	.uleb128 0x25
	.string	"e2"
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x526
	.4byte	.LLST35
	.uleb128 0x1e
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x1bd
	.4byte	0xc41
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x1be
	.4byte	0xc51
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x7
	.4byte	0x3d
	.4byte	0xc51
	.uleb128 0x8
	.4byte	0x2c
	.byte	0x3
	.byte	0x0
	.uleb128 0x7
	.4byte	0xaf
	.4byte	0xc61
	.uleb128 0x8
	.4byte	0x2c
	.byte	0x3
	.byte	0x0
	.uleb128 0x23
	.4byte	.LASF122
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.4byte	0x542
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST36
	.4byte	0xca9
	.uleb128 0x24
	.string	"reg"
	.byte	0x1
	.byte	0xb5
	.4byte	0x542
	.4byte	.LLST37
	.uleb128 0x27
	.string	"org"
	.byte	0x1
	.byte	0xb7
	.4byte	0x520
	.4byte	.LLST38
	.uleb128 0x27
	.string	"e"
	.byte	0x1
	.byte	0xb8
	.4byte	0x526
	.4byte	.LLST39
	.byte	0x0
	.uleb128 0x28
	.4byte	.LASF123
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST40
	.4byte	0xce0
	.uleb128 0x1a
	.4byte	.LASF104
	.byte	0x1
	.byte	0x98
	.4byte	0x977
	.4byte	.LLST41
	.uleb128 0x24
	.string	"reg"
	.byte	0x1
	.byte	0x98
	.4byte	0x542
	.4byte	.LLST42
	.byte	0x0
	.uleb128 0x1f
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x112
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x1
	.byte	0x51
	.4byte	0xd34
	.uleb128 0x1d
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x10a
	.4byte	0x977
	.4byte	.LLST44
	.uleb128 0x25
	.string	"reg"
	.byte	0x1
	.2byte	0x10a
	.4byte	0x542
	.4byte	.LLST45
	.uleb128 0x22
	.string	"e"
	.byte	0x1
	.2byte	0x113
	.4byte	0x526
	.4byte	.LLST46
	.uleb128 0x22
	.string	"f"
	.byte	0x1
	.2byte	0x114
	.4byte	0x53c
	.4byte	.LLST47
	.byte	0x0
	.uleb128 0x29
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x12a
	.byte	0x1
	.4byte	0x526
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST48
	.4byte	0xdc0
	.uleb128 0x1d
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x11c
	.4byte	0x977
	.4byte	.LLST49
	.uleb128 0x1d
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x11d
	.4byte	0x542
	.4byte	.LLST50
	.uleb128 0x1d
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x11d
	.4byte	0x542
	.4byte	.LLST51
	.uleb128 0x22
	.string	"reg"
	.byte	0x1
	.2byte	0x12b
	.4byte	0x542
	.4byte	.LLST52
	.uleb128 0x2a
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x12b
	.4byte	0x542
	.4byte	.LLST53
	.uleb128 0x22
	.string	"e"
	.byte	0x1
	.2byte	0x12c
	.4byte	0x526
	.4byte	.LLST54
	.uleb128 0x2a
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x12c
	.4byte	0x526
	.4byte	.LLST55
	.byte	0x0
	.uleb128 0x29
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x20d
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST56
	.4byte	0xe2e
	.uleb128 0x1d
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x977
	.4byte	.LLST57
	.uleb128 0x1d
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x542
	.4byte	.LLST58
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x20e
	.4byte	0x542
	.4byte	.LLST59
	.uleb128 0x22
	.string	"eUp"
	.byte	0x1
	.2byte	0x20f
	.4byte	0x526
	.4byte	.LLST60
	.uleb128 0x22
	.string	"eLo"
	.byte	0x1
	.2byte	0x210
	.4byte	0x526
	.4byte	.LLST61
	.byte	0x0
	.uleb128 0x1c
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x161
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST62
	.4byte	0xef6
	.uleb128 0x1d
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x154
	.4byte	0x977
	.4byte	.LLST63
	.uleb128 0x1d
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x154
	.4byte	0x542
	.4byte	.LLST64
	.uleb128 0x1d
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x155
	.4byte	0x526
	.4byte	.LLST65
	.uleb128 0x1d
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x155
	.4byte	0x526
	.4byte	.LLST66
	.uleb128 0x1d
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x155
	.4byte	0x526
	.4byte	.LLST67
	.uleb128 0x1d
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x156
	.4byte	0xa4
	.4byte	.LLST68
	.uleb128 0x22
	.string	"reg"
	.byte	0x1
	.2byte	0x162
	.4byte	0x542
	.4byte	.LLST69
	.uleb128 0x2a
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x162
	.4byte	0x542
	.4byte	.LLST70
	.uleb128 0x22
	.string	"e"
	.byte	0x1
	.2byte	0x163
	.4byte	0x526
	.4byte	.LLST71
	.uleb128 0x2a
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x163
	.4byte	0x526
	.4byte	.LLST72
	.uleb128 0x2a
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x164
	.4byte	0x4d
	.4byte	.LLST73
	.byte	0x0
	.uleb128 0x2b
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x1e3
	.byte	0x1
	.byte	0x1
	.4byte	0xf65
	.uleb128 0x2c
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x1db
	.4byte	0x977
	.uleb128 0x2c
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x1db
	.4byte	0x520
	.uleb128 0x2c
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x520
	.uleb128 0x2c
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x520
	.uleb128 0x2c
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x1dd
	.4byte	0x520
	.uleb128 0x2c
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x1dd
	.4byte	0x520
	.uleb128 0x2d
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x1e4
	.4byte	0xc41
	.uleb128 0x2d
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x1e5
	.4byte	0xc51
	.byte	0x0
	.uleb128 0x29
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x268
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LLST74
	.4byte	0x10d9
	.uleb128 0x1d
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x25e
	.4byte	0x977
	.4byte	.LLST75
	.uleb128 0x1d
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x25e
	.4byte	0x542
	.4byte	.LLST76
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x269
	.4byte	0x542
	.4byte	.LLST77
	.uleb128 0x22
	.string	"eUp"
	.byte	0x1
	.2byte	0x26a
	.4byte	0x526
	.4byte	.LLST78
	.uleb128 0x22
	.string	"eLo"
	.byte	0x1
	.2byte	0x26b
	.4byte	0x526
	.4byte	.LLST79
	.uleb128 0x2a
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x26c
	.4byte	0x520
	.4byte	.LLST80
	.uleb128 0x2a
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x26d
	.4byte	0x520
	.4byte	.LLST81
	.uleb128 0x2a
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x26e
	.4byte	0x520
	.4byte	.LLST82
	.uleb128 0x2a
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x26f
	.4byte	0x520
	.4byte	.LLST83
	.uleb128 0x2a
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x270
	.4byte	0xc1
	.4byte	.LLST84
	.uleb128 0x2a
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x270
	.4byte	0xc1
	.4byte	.LLST85
	.uleb128 0x1e
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x271
	.4byte	0x320
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x271
	.4byte	0x520
	.4byte	.LLST86
	.uleb128 0x22
	.string	"e"
	.byte	0x1
	.2byte	0x272
	.4byte	0x526
	.4byte	.LLST87
	.uleb128 0x2e
	.4byte	0x91a
	.4byte	.LBB10
	.4byte	.LBE10
	.byte	0x1
	.2byte	0x2c5
	.4byte	0x108d
	.uleb128 0x2f
	.4byte	0x92b
	.uleb128 0x30
	.4byte	.LBB11
	.4byte	.LBE11
	.uleb128 0x31
	.4byte	0x936
	.4byte	.LLST88
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.4byte	0xef6
	.4byte	.LBB12
	.4byte	.LBE12
	.byte	0x1
	.2byte	0x2f3
	.uleb128 0x2f
	.4byte	0xf40
	.uleb128 0x2f
	.4byte	0xf34
	.uleb128 0x2f
	.4byte	0xf28
	.uleb128 0x2f
	.4byte	0xf1c
	.uleb128 0x2f
	.4byte	0xf10
	.uleb128 0x2f
	.4byte	0xf04
	.uleb128 0x30
	.4byte	.LBB13
	.4byte	.LBE13
	.uleb128 0x33
	.4byte	0xf4c
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x33
	.4byte	0xf58
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	0x4d
	.byte	0x1
	.4byte	0x1132
	.uleb128 0x2c
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x22c
	.4byte	0x977
	.uleb128 0x2c
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x22c
	.4byte	0x542
	.uleb128 0x2d
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x240
	.4byte	0x542
	.uleb128 0x35
	.string	"eUp"
	.byte	0x1
	.2byte	0x241
	.4byte	0x526
	.uleb128 0x35
	.string	"eLo"
	.byte	0x1
	.2byte	0x242
	.4byte	0x526
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.2byte	0x243
	.4byte	0x526
	.byte	0x0
	.uleb128 0x1c
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x301
	.byte	0x1
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LLST89
	.4byte	0x11d9
	.uleb128 0x1d
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x2f8
	.4byte	0x977
	.4byte	.LLST90
	.uleb128 0x1d
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x2f8
	.4byte	0x542
	.4byte	.LLST91
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x302
	.4byte	0x542
	.4byte	.LLST92
	.uleb128 0x22
	.string	"eUp"
	.byte	0x1
	.2byte	0x303
	.4byte	0x526
	.4byte	.LLST93
	.uleb128 0x22
	.string	"eLo"
	.byte	0x1
	.2byte	0x303
	.4byte	0x526
	.4byte	.LLST94
	.uleb128 0x36
	.4byte	0x10d9
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.2byte	0x319
	.uleb128 0x2f
	.4byte	0x10f7
	.uleb128 0x2f
	.4byte	0x10eb
	.uleb128 0x37
	.4byte	.Ldebug_ranges0+0x28
	.uleb128 0x31
	.4byte	0x1103
	.4byte	.LLST95
	.uleb128 0x38
	.4byte	0x110f
	.uleb128 0x31
	.4byte	0x111b
	.4byte	.LLST96
	.uleb128 0x31
	.4byte	0x1127
	.4byte	.LLST97
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x3f9
	.byte	0x1
	.byte	0x1
	.4byte	0x1262
	.uleb128 0x2c
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x3e9
	.4byte	0x977
	.uleb128 0x2c
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x3e9
	.4byte	0x520
	.uleb128 0x2d
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x3fa
	.4byte	0x542
	.uleb128 0x2d
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x3fa
	.4byte	0x542
	.uleb128 0x35
	.string	"reg"
	.byte	0x1
	.2byte	0x3fa
	.4byte	0x542
	.uleb128 0x35
	.string	"eUp"
	.byte	0x1
	.2byte	0x3fb
	.4byte	0x526
	.uleb128 0x35
	.string	"eLo"
	.byte	0x1
	.2byte	0x3fb
	.4byte	0x526
	.uleb128 0x2d
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x3fb
	.4byte	0x526
	.uleb128 0x35
	.string	"tmp"
	.byte	0x1
	.2byte	0x3fc
	.4byte	0x4a6
	.uleb128 0x39
	.uleb128 0x2d
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x418
	.4byte	0x526
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x3b4
	.byte	0x1
	.byte	0x1
	.4byte	0x12d8
	.uleb128 0x2c
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x3ad
	.4byte	0x977
	.uleb128 0x2c
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x3ae
	.4byte	0x542
	.uleb128 0x2c
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x3ae
	.4byte	0x520
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.2byte	0x3b5
	.4byte	0x526
	.uleb128 0x2d
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x3b5
	.4byte	0x526
	.uleb128 0x2d
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x3b5
	.4byte	0x526
	.uleb128 0x2d
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x3b5
	.4byte	0x526
	.uleb128 0x35
	.string	"reg"
	.byte	0x1
	.2byte	0x3b6
	.4byte	0x542
	.uleb128 0x39
	.uleb128 0x39
	.uleb128 0x38
	.4byte	0x936
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x104
	.byte	0x1
	.byte	0x1
	.4byte	0x12ff
	.uleb128 0x2c
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x103
	.4byte	0x977
	.uleb128 0x3a
	.string	"reg"
	.byte	0x1
	.2byte	0x103
	.4byte	0x542
	.byte	0x0
	.uleb128 0x2b
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x370
	.byte	0x1
	.byte	0x1
	.4byte	0x137a
	.uleb128 0x2c
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x34f
	.4byte	0x977
	.uleb128 0x2c
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x34f
	.4byte	0x542
	.uleb128 0x2c
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x350
	.4byte	0x526
	.uleb128 0x2d
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x371
	.4byte	0x526
	.uleb128 0x2d
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x372
	.4byte	0x526
	.uleb128 0x2d
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x373
	.4byte	0x542
	.uleb128 0x35
	.string	"eUp"
	.byte	0x1
	.2byte	0x374
	.4byte	0x526
	.uleb128 0x35
	.string	"eLo"
	.byte	0x1
	.2byte	0x375
	.4byte	0x526
	.uleb128 0x2d
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x376
	.4byte	0x4d
	.byte	0x0
	.uleb128 0x1c
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x431
	.byte	0x1
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LLST98
	.4byte	0x155b
	.uleb128 0x1d
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x42c
	.4byte	0x977
	.4byte	.LLST99
	.uleb128 0x1d
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x42c
	.4byte	0x520
	.4byte	.LLST100
	.uleb128 0x2a
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x432
	.4byte	0x542
	.4byte	.LLST101
	.uleb128 0x22
	.string	"reg"
	.byte	0x1
	.2byte	0x432
	.4byte	0x542
	.4byte	.LLST102
	.uleb128 0x22
	.string	"e"
	.byte	0x1
	.2byte	0x433
	.4byte	0x526
	.4byte	.LLST103
	.uleb128 0x2a
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x433
	.4byte	0x526
	.4byte	.LLST104
	.uleb128 0x2a
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x433
	.4byte	0x526
	.4byte	.LLST105
	.uleb128 0x2e
	.4byte	0x11d9
	.4byte	.LBB43
	.4byte	.LBE43
	.byte	0x1
	.2byte	0x441
	.4byte	0x1506
	.uleb128 0x2f
	.4byte	0x11f3
	.uleb128 0x2f
	.4byte	0x11e7
	.uleb128 0x37
	.4byte	.Ldebug_ranges0+0x90
	.uleb128 0x38
	.4byte	0x11ff
	.uleb128 0x38
	.4byte	0x120b
	.uleb128 0x31
	.4byte	0x1217
	.4byte	.LLST106
	.uleb128 0x31
	.4byte	0x1223
	.4byte	.LLST107
	.uleb128 0x31
	.4byte	0x122f
	.4byte	.LLST108
	.uleb128 0x31
	.4byte	0x123b
	.4byte	.LLST109
	.uleb128 0x33
	.4byte	0x1247
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3b
	.4byte	0x12d8
	.4byte	.Ldebug_ranges0+0xf8
	.byte	0x1
	.2byte	0x420
	.4byte	0x1479
	.uleb128 0x3c
	.4byte	0x12f2
	.4byte	.LLST110
	.uleb128 0x2f
	.4byte	0x12e6
	.byte	0x0
	.uleb128 0x3d
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	0x1490
	.uleb128 0x31
	.4byte	0x1254
	.4byte	.LLST111
	.byte	0x0
	.uleb128 0x32
	.4byte	0x1262
	.4byte	.LBB50
	.4byte	.LBE50
	.byte	0x1
	.2byte	0x40a
	.uleb128 0x2f
	.4byte	0x1288
	.uleb128 0x2f
	.4byte	0x127c
	.uleb128 0x2f
	.4byte	0x1270
	.uleb128 0x37
	.4byte	.Ldebug_ranges0+0x110
	.uleb128 0x31
	.4byte	0x1294
	.4byte	.LLST112
	.uleb128 0x31
	.4byte	0x129e
	.4byte	.LLST113
	.uleb128 0x31
	.4byte	0x12aa
	.4byte	.LLST114
	.uleb128 0x38
	.4byte	0x12b6
	.uleb128 0x31
	.4byte	0x12c2
	.4byte	.LLST115
	.uleb128 0x32
	.4byte	0x91a
	.4byte	.LBB52
	.4byte	.LBE52
	.byte	0x1
	.2byte	0x3d3
	.uleb128 0x2f
	.4byte	0x92b
	.uleb128 0x30
	.4byte	.LBB53
	.4byte	.LBE53
	.uleb128 0x38
	.4byte	0x936
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.4byte	0x12ff
	.4byte	.LBB71
	.4byte	.LBE71
	.byte	0x1
	.2byte	0x45a
	.uleb128 0x2f
	.4byte	0x1325
	.uleb128 0x2f
	.4byte	0x1319
	.uleb128 0x2f
	.4byte	0x130d
	.uleb128 0x37
	.4byte	.Ldebug_ranges0+0x148
	.uleb128 0x31
	.4byte	0x1331
	.4byte	.LLST116
	.uleb128 0x38
	.4byte	0x133d
	.uleb128 0x31
	.4byte	0x1349
	.4byte	.LLST117
	.uleb128 0x38
	.4byte	0x1355
	.uleb128 0x31
	.4byte	0x1361
	.4byte	.LLST118
	.uleb128 0x31
	.4byte	0x136d
	.4byte	.LLST119
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x4b1
	.byte	0x1
	.byte	0x1
	.4byte	0x15a4
	.uleb128 0x2c
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x4ad
	.4byte	0x977
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.2byte	0x4b2
	.4byte	0x526
	.uleb128 0x2d
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x4b2
	.4byte	0x526
	.uleb128 0x2d
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x4b2
	.4byte	0x526
	.uleb128 0x2d
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x4b3
	.4byte	0x526
	.byte	0x0
	.uleb128 0x34
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x4d4
	.byte	0x1
	.4byte	0x4d
	.byte	0x1
	.4byte	0x15e4
	.uleb128 0x2c
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x4cf
	.4byte	0x977
	.uleb128 0x35
	.string	"pq"
	.byte	0x1
	.2byte	0x4d5
	.4byte	0x834
	.uleb128 0x35
	.string	"v"
	.byte	0x1
	.2byte	0x4d6
	.4byte	0x520
	.uleb128 0x2d
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x4d6
	.4byte	0x520
	.byte	0x0
	.uleb128 0x2b
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x48b
	.byte	0x1
	.byte	0x1
	.4byte	0x15ff
	.uleb128 0x2c
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x486
	.4byte	0x977
	.byte	0x0
	.uleb128 0x2b
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x496
	.byte	0x1
	.byte	0x1
	.4byte	0x1632
	.uleb128 0x2c
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x495
	.4byte	0x977
	.uleb128 0x35
	.string	"reg"
	.byte	0x1
	.2byte	0x497
	.4byte	0x542
	.uleb128 0x2d
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x498
	.4byte	0x4d
	.byte	0x0
	.uleb128 0x2b
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x4ec
	.byte	0x1
	.byte	0x1
	.4byte	0x164d
	.uleb128 0x2c
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x4eb
	.4byte	0x977
	.byte	0x0
	.uleb128 0x34
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x500
	.byte	0x1
	.4byte	0x4d
	.byte	0x1
	.4byte	0x168c
	.uleb128 0x2c
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x4f1
	.4byte	0x816
	.uleb128 0x35
	.string	"f"
	.byte	0x1
	.2byte	0x501
	.4byte	0x53c
	.uleb128 0x2d
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x501
	.4byte	0x53c
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.2byte	0x502
	.4byte	0x526
	.byte	0x0
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x51b
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LLST120
	.uleb128 0x1d
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x513
	.4byte	0x977
	.4byte	.LLST121
	.uleb128 0x22
	.string	"v"
	.byte	0x1
	.2byte	0x51c
	.4byte	0x520
	.4byte	.LLST122
	.uleb128 0x2d
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x51c
	.4byte	0x520
	.uleb128 0x2e
	.4byte	0x155b
	.4byte	.LBB90
	.4byte	.LBE90
	.byte	0x1
	.2byte	0x526
	.4byte	0x170c
	.uleb128 0x2f
	.4byte	0x1569
	.uleb128 0x37
	.4byte	.Ldebug_ranges0+0x180
	.uleb128 0x31
	.4byte	0x1575
	.4byte	.LLST123
	.uleb128 0x38
	.4byte	0x157f
	.uleb128 0x38
	.4byte	0x158b
	.uleb128 0x31
	.4byte	0x1597
	.4byte	.LLST124
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.4byte	0x15a4
	.4byte	.Ldebug_ranges0+0x1a8
	.byte	0x1
	.2byte	0x527
	.4byte	0x1743
	.uleb128 0x2f
	.4byte	0x15b6
	.uleb128 0x37
	.4byte	.Ldebug_ranges0+0x1c0
	.uleb128 0x31
	.4byte	0x15c2
	.4byte	.LLST125
	.uleb128 0x31
	.4byte	0x15cd
	.4byte	.LLST126
	.uleb128 0x31
	.4byte	0x15d7
	.4byte	.LLST127
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.4byte	0x15e4
	.4byte	.Ldebug_ranges0+0x1f0
	.byte	0x1
	.2byte	0x528
	.4byte	0x1759
	.uleb128 0x2f
	.4byte	0x15f2
	.byte	0x0
	.uleb128 0x2e
	.4byte	0x15ff
	.4byte	.LBB105
	.4byte	.LBE105
	.byte	0x1
	.2byte	0x548
	.4byte	0x1787
	.uleb128 0x2f
	.4byte	0x160d
	.uleb128 0x30
	.4byte	.LBB106
	.4byte	.LBE106
	.uleb128 0x38
	.4byte	0x1619
	.uleb128 0x38
	.4byte	0x1625
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.4byte	0x1632
	.4byte	.LBB107
	.4byte	.LBE107
	.byte	0x1
	.2byte	0x549
	.4byte	0x17a1
	.uleb128 0x2f
	.4byte	0x1640
	.byte	0x0
	.uleb128 0x32
	.4byte	0x164d
	.4byte	.LBB109
	.4byte	.LBE109
	.byte	0x1
	.2byte	0x54b
	.uleb128 0x3c
	.4byte	0x165f
	.4byte	.LLST128
	.uleb128 0x37
	.4byte	.Ldebug_ranges0+0x208
	.uleb128 0x31
	.4byte	0x166b
	.4byte	.LLST129
	.uleb128 0x38
	.4byte	0x1675
	.uleb128 0x31
	.4byte	0x1681
	.4byte	.LLST130
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x6
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x27
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x17da
	.4byte	0x168c
	.string	"__gl_computeInterior"
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
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	.LBB70-.Ltext0
	.4byte	.LBE70-.Ltext0
	.4byte	.LBB69-.Ltext0
	.4byte	.LBE69-.Ltext0
	.4byte	.LBB68-.Ltext0
	.4byte	.LBE68-.Ltext0
	.4byte	.LBB67-.Ltext0
	.4byte	.LBE67-.Ltext0
	.4byte	.LBB66-.Ltext0
	.4byte	.LBE66-.Ltext0
	.4byte	.LBB65-.Ltext0
	.4byte	.LBE65-.Ltext0
	.4byte	.LBB64-.Ltext0
	.4byte	.LBE64-.Ltext0
	.4byte	.LBB63-.Ltext0
	.4byte	.LBE63-.Ltext0
	.4byte	.LBB62-.Ltext0
	.4byte	.LBE62-.Ltext0
	.4byte	.LBB61-.Ltext0
	.4byte	.LBE61-.Ltext0
	.4byte	.LBB60-.Ltext0
	.4byte	.LBE60-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB45-.Ltext0
	.4byte	.LBE45-.Ltext0
	.4byte	.LBB59-.Ltext0
	.4byte	.LBE59-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB51-.Ltext0
	.4byte	.LBE51-.Ltext0
	.4byte	.LBB58-.Ltext0
	.4byte	.LBE58-.Ltext0
	.4byte	.LBB57-.Ltext0
	.4byte	.LBE57-.Ltext0
	.4byte	.LBB56-.Ltext0
	.4byte	.LBE56-.Ltext0
	.4byte	.LBB55-.Ltext0
	.4byte	.LBE55-.Ltext0
	.4byte	.LBB54-.Ltext0
	.4byte	.LBE54-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB72-.Ltext0
	.4byte	.LBE72-.Ltext0
	.4byte	.LBB77-.Ltext0
	.4byte	.LBE77-.Ltext0
	.4byte	.LBB76-.Ltext0
	.4byte	.LBE76-.Ltext0
	.4byte	.LBB75-.Ltext0
	.4byte	.LBE75-.Ltext0
	.4byte	.LBB74-.Ltext0
	.4byte	.LBE74-.Ltext0
	.4byte	.LBB73-.Ltext0
	.4byte	.LBE73-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB91-.Ltext0
	.4byte	.LBE91-.Ltext0
	.4byte	.LBB94-.Ltext0
	.4byte	.LBE94-.Ltext0
	.4byte	.LBB93-.Ltext0
	.4byte	.LBE93-.Ltext0
	.4byte	.LBB92-.Ltext0
	.4byte	.LBE92-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB95-.Ltext0
	.4byte	.LBE95-.Ltext0
	.4byte	.LBB112-.Ltext0
	.4byte	.LBE112-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB99-.Ltext0
	.4byte	.LBE99-.Ltext0
	.4byte	.LBB100-.Ltext0
	.4byte	.LBE100-.Ltext0
	.4byte	.LBB96-.Ltext0
	.4byte	.LBE96-.Ltext0
	.4byte	.LBB97-.Ltext0
	.4byte	.LBE97-.Ltext0
	.4byte	.LBB98-.Ltext0
	.4byte	.LBE98-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB101-.Ltext0
	.4byte	.LBE101-.Ltext0
	.4byte	.LBB113-.Ltext0
	.4byte	.LBE113-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB110-.Ltext0
	.4byte	.LBE110-.Ltext0
	.4byte	.LBB111-.Ltext0
	.4byte	.LBE111-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF56:
	.string	"prev"
.LASF60:
	.string	"pqHandle"
.LASF114:
	.string	"AddRegionBelow"
.LASF126:
	.string	"regFirst"
.LASF45:
	.string	"callEndData"
.LASF129:
	.string	"ePrev"
.LASF123:
	.string	"DeleteRegion"
.LASF63:
	.string	"marked"
.LASF148:
	.string	"CheckForLeftSplice"
.LASF131:
	.string	"regUp"
.LASF101:
	.string	"T_IN_POLYGON"
.LASF26:
	.string	"windingRule"
.LASF122:
	.string	"TopLeftRegion"
.LASF172:
	.string	"vNext"
.LASF44:
	.string	"callVertexData"
.LASF166:
	.string	"InitEdgeDict"
.LASF109:
	.string	"VertexWeights"
.LASF104:
	.string	"tess"
.LASF125:
	.string	"FinishLeftRegions"
.LASF38:
	.string	"callMesh"
.LASF150:
	.string	"GetIntersectData"
.LASF46:
	.string	"callErrorData"
.LASF55:
	.string	"next"
.LASF174:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/sweep.c"
.LASF78:
	.string	"DictList"
.LASF95:
	.string	"PQSortHandle"
.LASF21:
	.string	"callError"
.LASF3:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF117:
	.string	"regNew"
.LASF83:
	.string	"PQHeapHandle"
.LASF18:
	.string	"state"
.LASF9:
	.string	"long int"
.LASF108:
	.string	"CallCombine"
.LASF57:
	.string	"anEdge"
.LASF138:
	.string	"firstTime"
.LASF175:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\freespace2wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF84:
	.string	"PriorityQHeap"
.LASF82:
	.string	"PQHeapKey"
.LASF5:
	.string	"long long int"
.LASF14:
	.string	"GLfloat"
.LASF102:
	.string	"T_IN_CONTOUR"
.LASF39:
	.string	"emptyCache"
.LASF30:
	.string	"callCombine"
.LASF134:
	.string	"eFirst"
.LASF13:
	.string	"GLboolean"
.LASF80:
	.string	"frame"
.LASF97:
	.string	"heap"
.LASF89:
	.string	"initialized"
.LASF0:
	.string	"unsigned int"
.LASF162:
	.string	"RemoveDegenerateEdges"
.LASF163:
	.string	"eNext"
.LASF69:
	.string	"activeRegion"
.LASF156:
	.string	"eTopRight"
.LASF116:
	.string	"eNewUp"
.LASF176:
	.string	"TessState"
.LASF137:
	.string	"cleanUp"
.LASF165:
	.string	"InitPriorityQ"
.LASF7:
	.string	"long unsigned int"
.LASF145:
	.string	"tMaxLo"
.LASF42:
	.string	"callBeginData"
.LASF161:
	.string	"SweepEvent"
.LASF32:
	.string	"boundaryOnly"
.LASF29:
	.string	"event"
.LASF135:
	.string	"eLast"
.LASF87:
	.string	"size"
.LASF2:
	.string	"short unsigned int"
.LASF112:
	.string	"newEdge"
.LASF141:
	.string	"orgLo"
.LASF136:
	.string	"eTopLeft"
.LASF154:
	.string	"tempHalfEdge"
.LASF170:
	.string	"RemoveDegenerateFaces"
.LASF128:
	.string	"regPrev"
.LASF65:
	.string	"GLUhalfEdge"
.LASF96:
	.string	"PriorityQSort"
.LASF4:
	.string	"short int"
.LASF139:
	.string	"orgUp"
.LASF40:
	.string	"cacheCount"
.LASF100:
	.string	"T_DORMANT"
.LASF24:
	.string	"tUnit"
.LASF144:
	.string	"tMinUp"
.LASF86:
	.string	"handles"
.LASF152:
	.string	"vEvent"
.LASF53:
	.string	"eHeadSym"
.LASF17:
	.string	"GLUtesselator"
.LASF130:
	.string	"CheckForRightSplice"
.LASF91:
	.string	"PQnode"
.LASF164:
	.string	"eLnext"
.LASF31:
	.string	"flagBoundary"
.LASF106:
	.string	"weights"
.LASF58:
	.string	"data"
.LASF76:
	.string	"fixUpperEdge"
.LASF107:
	.string	"needed"
.LASF20:
	.string	"mesh"
.LASF94:
	.string	"PQSortKey"
.LASF115:
	.string	"regAbove"
.LASF121:
	.string	"SpliceMergeVertices"
.LASF22:
	.string	"normal"
.LASF77:
	.string	"DictListKey"
.LASF47:
	.string	"callCombineData"
.LASF98:
	.string	"keys"
.LASF158:
	.string	"ConnectRightVertex"
.LASF49:
	.string	"GLUmesh"
.LASF15:
	.string	"float"
.LASF177:
	.string	"__gl_computeInterior"
.LASF143:
	.string	"CheckForIntersect"
.LASF62:
	.string	"trail"
.LASF75:
	.string	"dirty"
.LASF119:
	.string	"reg1"
.LASF120:
	.string	"reg2"
.LASF146:
	.string	"orgMin"
.LASF140:
	.string	"dstUp"
.LASF160:
	.string	"degenerate"
.LASF92:
	.string	"node"
.LASF155:
	.string	"ConnectLeftDegenerate"
.LASF111:
	.string	"FixUpperEdge"
.LASF124:
	.string	"FinishRegion"
.LASF147:
	.string	"TopRightRegion"
.LASF68:
	.string	"Lface"
.LASF168:
	.string	"fixedEdges"
.LASF50:
	.string	"vHead"
.LASF103:
	.string	"CachedVertex"
.LASF52:
	.string	"eHead"
.LASF113:
	.string	"AddSentinel"
.LASF19:
	.string	"lastEdge"
.LASF173:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF64:
	.string	"inside"
.LASF79:
	.string	"head"
.LASF171:
	.string	"fNext"
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
.LASF149:
	.string	"WalkDirtyRegions"
.LASF153:
	.string	"eNew"
.LASF105:
	.string	"isect"
.LASF70:
	.string	"winding"
.LASF127:
	.string	"regLast"
.LASF118:
	.string	"EdgeLeq"
.LASF93:
	.string	"PQhandleElem"
.LASF85:
	.string	"nodes"
.LASF88:
	.string	"freeList"
.LASF159:
	.string	"eBottomLeft"
.LASF33:
	.string	"lonelyTriList"
.LASF1:
	.string	"unsigned char"
.LASF23:
	.string	"sUnit"
.LASF73:
	.string	"windingNumber"
.LASF133:
	.string	"AddRightEdges"
.LASF54:
	.string	"GLUvertex"
.LASF25:
	.string	"relTolerance"
.LASF59:
	.string	"coords"
.LASF110:
	.string	"IsWindingInside"
.LASF67:
	.string	"Lnext"
.LASF157:
	.string	"ComputeWinding"
.LASF48:
	.string	"polygonData"
.LASF11:
	.string	"jmp_buf"
.LASF34:
	.string	"callBegin"
.LASF132:
	.string	"regLo"
.LASF142:
	.string	"dstLo"
.LASF37:
	.string	"callEnd"
.LASF43:
	.string	"callEdgeFlagData"
.LASF99:
	.string	"order"
.LASF90:
	.string	"handle"
.LASF151:
	.string	"ConnectLeftVertex"
.LASF36:
	.string	"callVertex"
.LASF81:
	.string	"DictListNode"
.LASF169:
	.string	"DonePriorityQ"
.LASF51:
	.string	"fHead"
.LASF74:
	.string	"sentinel"
.LASF61:
	.string	"GLUface"
.LASF167:
	.string	"DoneEdgeDict"
.LASF16:
	.string	"GLdouble"
.LASF41:
	.string	"cache"
.LASF10:
	.string	"double"
.LASF72:
	.string	"nodeUp"
.LASF35:
	.string	"callEdgeFlag"
.LASF27:
	.string	"fatalError"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
