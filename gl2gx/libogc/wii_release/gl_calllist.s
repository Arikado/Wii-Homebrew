	.file	"gl_calllist.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl callListInit
	.type	callListInit, @function
callListInit:
.LFB66:
	.file 1 "c:/devkitPro/examples/wii/cube_source/gl2gx/libogc/../source/gl_calllist.c"
	.loc 1 34 0
.LVL0:
	.loc 1 35 0
	li 0,0
	.loc 1 39 0
	lis 9,cur_list@ha
	.loc 1 36 0
	stw 0,4(3)
	.loc 1 40 0
	li 11,4864
	.loc 1 35 0
	stw 0,0(3)
	.loc 1 39 0
	stw 0,cur_list@l(9)
	.loc 1 40 0
	lis 9,cur_mode@ha
	stw 11,cur_mode@l(9)
	.loc 1 38 0
	lis 9,call_offset@ha
	stw 0,call_offset@l(9)
	.loc 1 41 0
	blr
.LFE66:
	.size	callListInit, .-callListInit
	.align 2
	.globl initCalllist
	.type	initCalllist, @function
initCalllist:
.LFB67:
	.loc 1 44 0
	.loc 1 45 0
	lis 3,listMan@ha
	la 3,listMan@l(3)
	b callListInit
.LFE67:
	.size	initCalllist, .-initCalllist
	.align 2
	.globl search_gap
	.type	search_gap, @function
search_gap:
.LFB69:
	.loc 1 79 0
.LVL1:
	.loc 1 81 0
	lwz 10,4(3)
	.loc 1 79 0
	mr 8,3
	.loc 1 81 0
	li 3,0
.LVL2:
	b .L6
.LVL3:
.L7:
	.loc 1 85 0
	bne+ 6,.L8
	.loc 1 87 0
	addi 3,3,1
.LVL4:
	blr
.LVL5:
.L8:
	.loc 1 90 0
	lwz 9,0(8)
	add 9,0,9
	lbz 0,8(9)
	cmpwi 7,0,0
	bne- 7,.L11
.L13:
	.loc 1 83 0
	cmplw 7,11,10
	.loc 1 90 0
	mulli 0,11,12
	.loc 1 85 0
	cmpw 6,11,10
	.loc 1 83 0
	addi 11,11,1
	ble+ 7,.L7
.L11:
	.loc 1 81 0
	addi 3,3,1
.L6:
	cmpw 7,3,10
	beq- 7,.L14
	li 11,0
	b .L13
.L14:
	li 3,0
.LVL6:
	.loc 1 96 0
	blr
.LFE69:
	.size	search_gap, .-search_gap
	.align 2
	.globl lock_gap
	.type	lock_gap, @function
lock_gap:
.LFB70:
	.loc 1 99 0
.LVL7:
	.loc 1 103 0
	cmpwi 0,4,0
	beqlr- 0
	cmpwi 7,5,0
	.loc 1 105 0
	mulli 9,4,12
	addi 11,5,1
	mtctr 11
	addi 4,9,-12
.LVL8:
	bge+ 7,.L21
	li 0,1
	mtctr 0
	b .L21
.L22:
	.loc 1 114 0
	lwz 9,0(3)
	li 0,1
	add 9,9,4
	.loc 1 112 0
	addi 4,4,12
	.loc 1 114 0
	stb 0,8(9)
.L21:
	.loc 1 112 0
	bdnz .L22
	blr
.LFE70:
	.size	lock_gap, .-lock_gap
	.align 2
	.globl ReadUint
	.type	ReadUint, @function
ReadUint:
.LFB72:
	.loc 1 138 0
.LVL9:
	.loc 1 139 0
	addi 0,4,-5120
	.loc 1 138 0
	stwu 1,-24(1)
.LCFI0:
	.loc 1 139 0
	cmplwi 7,0,6
	li 10,0
.LVL10:
	bgt- 7,.L36
	lis 9,.L35@ha
	slwi 0,0,2
	la 9,.L35@l(9)
	lwz 11,0(3)
	lwzx 0,9,0
	add 0,0,9
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L35:
	.long .L28-.L35
	.long .L29-.L35
	.long .L30-.L35
	.long .L31-.L35
	.long .L32-.L35
	.long .L33-.L35
	.long .L34-.L35
	.section	".text"
.L29:
.LBB2:
	.loc 1 144 0
	addi 0,11,1
	lbz 11,0(11)
.LVL11:
	b .L42
.LVL12:
.L28:
.LBE2:
.LBB3:
	.loc 1 151 0
	addi 9,11,1
	lbz 0,0(11)
	stw 9,0(3)
	.loc 1 152 0
	lis 9,call_offset@ha
	.loc 1 151 0
	extsb 0,0
.LVL13:
	.loc 1 152 0
	lwz 9,call_offset@l(9)
	add 10,0,9
	b .L36
.LVL14:
.L30:
.LBE3:
.LBB4:
	.loc 1 158 0
	addi 0,11,2
	lha 11,0(11)
.LVL15:
.L42:
	stw 0,0(3)
	.loc 1 159 0
	lis 9,call_offset@ha
	lwz 0,call_offset@l(9)
	add 10,11,0
	b .L36
.LVL16:
.L31:
.LBE4:
.LBB5:
	.loc 1 165 0
	lhz 0,0(11)
.LVL17:
	addi 9,11,2
	stw 9,0(3)
	.loc 1 166 0
	mr 10,0
	b .L36
.LVL18:
.L32:
.LBE5:
.LBB6:
	.loc 1 171 0
	addi 0,11,4
	lwz 11,0(11)
.LVL19:
	b .L42
.LVL20:
.L33:
.LBE6:
.LBB7:
	.loc 1 177 0
	lwz 10,0(11)
	addi 0,11,4
	stw 0,0(3)
	b .L36
.L34:
.LBE7:
.LBB8:
	.loc 1 184 0
	addi 0,11,4
	lfs 12,0(11)
.LVL21:
	stw 0,0(3)
	.loc 1 185 0
	lis 9,call_offset@ha
	li 10,0
	lwz 0,call_offset@l(9)
	lis 9,.LC1@ha
	lfs 13,.LC1@l(9)
	lis 9,.LC7@ha
	stw 0,12(1)
	lis 0,0x4330
	stw 0,8(1)
	lfd 0,8(1)
	fsub 0,0,13
	frsp 0,0
	fadds 12,12,0
.LVL22:
	lfs 0,.LC7@l(9)
	fcmpu 7,12,0
	bng- 7,.L36
	fmr 0,12
	lis 9,.LC3@ha
	lfs 12,.LC3@l(9)
	fcmpu 7,0,12
	cror 30,29,30
	beq- 7,.L39
	fctiwz 0,0
	addi 9,1,16
	stfiwx 0,0,9
	lwz 10,16(1)
	b .L36
.L39:
	fsub 0,0,12
	addi 9,1,20
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 10,20(1)
	addis 10,10,0x8000
.LVL23:
.L36:
.LBE8:
	.loc 1 194 0
	mr 3,10
.LVL24:
	addi 1,1,24
	blr
.LFE72:
	.size	ReadUint, .-ReadUint
	.align 2
	.globl is_list
	.type	is_list, @function
is_list:
.LFB74:
	.loc 1 226 0
.LVL25:
	.loc 1 227 0
	cmpwi 0,4,0
	li 0,0
	beq- 0,.L46
	lwz 0,4(3)
	subfc 0,4,0
	li 0,0
	adde 0,0,0
.L46:
	.loc 1 228 0
	mr 3,0
.LVL26:
	blr
.LFE74:
	.size	is_list, .-is_list
	.align 2
	.globl get_list
	.type	get_list, @function
get_list:
.LFB75:
	.loc 1 231 0
.LVL27:
	mflr 0
.LCFI1:
	stwu 1,-16(1)
.LCFI2:
	stmw 30,8(1)
.LCFI3:
	mr 30,3
	stw 0,20(1)
.LCFI4:
	.loc 1 231 0
	mr 31,4
	.loc 1 232 0
	bl is_list
.LVL28:
	cmpwi 7,3,0
	li 3,0
	beq- 7,.L51
	.loc 1 234 0
	mulli 9,31,12
	lwz 0,0(30)
	add 9,9,0
	addi 3,9,-12
.L51:
	.loc 1 240 0
	lwz 0,20(1)
	lmw 30,8(1)
.LVL29:
	addi 1,1,16
	mtlr 0
	blr
.LFE75:
	.size	get_list, .-get_list
	.align 2
	.globl glIsList
	.type	glIsList, @function
glIsList:
.LFB80:
	.loc 1 302 0
.LVL30:
	mflr 0
.LCFI5:
	stwu 1,-8(1)
.LCFI6:
	.loc 1 303 0
	lis 9,cur_state@ha
	.loc 1 302 0
	mr 4,3
	stw 0,12(1)
.LCFI7:
	.loc 1 303 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L54
.LVL31:
	lis 4,.LC8@ha
.LVL32:
	li 3,1282
.LVL33:
	la 4,.LC8@l(4)
	li 5,303
	bl _glSetErrorEx
	li 3,0
	b .L56
.LVL34:
.L54:
	.loc 1 305 0
	lis 3,listMan@ha
	la 3,listMan@l(3)
	bl is_list
.LVL35:
.L56:
	.loc 1 306 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE80:
	.size	glIsList, .-glIsList
	.align 2
	.globl glCallList
	.type	glCallList, @function
glCallList:
.LFB77:
	.loc 1 270 0
.LVL36:
	mflr 0
.LCFI8:
	stwu 1,-8(1)
.LCFI9:
	.loc 1 272 0
	lis 9,cur_state@ha
	.loc 1 270 0
	stw 0,12(1)
.LCFI10:
	.loc 1 272 0
	lwz 0,cur_state@l(9)
	andi. 9,0,2
	beq- 0,.L61
	lis 4,.LC8@ha
	li 3,1282
.LVL37:
	la 4,.LC8@l(4)
	li 5,272
	bl _glSetErrorEx
.LVL38:
.L61:
	.loc 1 274 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE77:
	.size	glCallList, .-glCallList
	.align 2
	.globl glCallLists
	.type	glCallLists, @function
glCallLists:
.LFB78:
	.loc 1 279 0
.LVL39:
	stwu 1,-32(1)
.LCFI11:
	mflr 0
.LCFI12:
	stmw 28,16(1)
.LCFI13:
	mr 29,3
	mr 30,4
	li 31,0
.LVL40:
	.loc 1 283 0
	addi 28,1,8
	.loc 1 279 0
	stw 0,36(1)
.LCFI14:
	.loc 1 279 0
	stw 5,8(1)
	b .L63
.LVL41:
.L64:
	.loc 1 283 0
	bl ReadUint
.LVL42:
	bl glCallList
.LVL43:
.L63:
	.loc 1 281 0
	cmpw 7,31,29
	.loc 1 283 0
	mr 4,30
	mr 3,28
	.loc 1 281 0
	addi 31,31,1
	blt+ 7,.L64
.LVL44:
	.loc 1 285 0
	lwz 0,36(1)
	lmw 28,16(1)
.LVL45:
	addi 1,1,32
	mtlr 0
	blr
.LFE78:
	.size	glCallLists, .-glCallLists
	.align 2
	.globl glEndList
	.type	glEndList, @function
glEndList:
.LFB82:
	.loc 1 349 0
	mflr 0
.LCFI15:
	stwu 1,-8(1)
.LCFI16:
	.loc 1 350 0
	lis 9,cur_state@ha
	.loc 1 349 0
	stw 0,12(1)
.LCFI17:
	.loc 1 350 0
	lwz 0,cur_state@l(9)
	andi. 11,0,1
	beq+ 0,.L68
	lis 4,.LC8@ha
	li 3,1282
	la 4,.LC8@l(4)
	li 5,350
	b .L75
.L68:
	.loc 1 351 0
	andi. 11,0,2
	bne- 0,.L71
	lis 4,.LC8@ha
	li 3,1282
	la 4,.LC8@l(4)
	li 5,351
.L75:
	bl _glSetErrorEx
	b .L74
.L71:
	.loc 1 354 0
	rlwinm 0,0,0,31,29
	stw 0,cur_state@l(9)
	.loc 1 356 0
	bl GX_Flush
	.loc 1 357 0
	bl GX_EndDispList
	.loc 1 358 0
	bl GX_Flush
	.loc 1 360 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,4865
	bne+ 7,.L74
	.loc 1 363 0
	lis 9,cur_list@ha
	lwz 9,cur_list@l(9)
	lwz 4,4(9)
	lwz 3,0(9)
	bl GX_CallDispList
.L74:
	.loc 1 365 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE82:
	.size	glEndList, .-glEndList
	.align 2
	.globl calllist
	.type	calllist, @function
calllist:
.LFB71:
	.loc 1 119 0
.LVL46:
	mflr 0
.LCFI18:
	stwu 1,-8(1)
.LCFI19:
	stw 0,12(1)
.LCFI20:
	.loc 1 120 0
	lwz 0,4(3)
	cmplw 7,4,0
	bgt- 7,.L80
	.loc 1 125 0
	lwz 0,0(3)
	mulli 9,4,12
	add 9,9,0
	.loc 1 127 0
	lwz 0,-12(9)
	.loc 1 125 0
	addi 3,9,-12
.LVL47:
	.loc 1 127 0
	cmpwi 7,0,0
	beq- 7,.L80
	.loc 1 132 0
	lwz 4,4(3)
.LVL48:
	mr 3,0
.LVL49:
	bl GX_CallDispList
.LVL50:
.L80:
	.loc 1 133 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE71:
	.size	calllist, .-calllist
	.align 2
	.globl glNewList
	.type	glNewList, @function
glNewList:
.LFB81:
	.loc 1 310 0
.LVL51:
	mflr 0
.LCFI21:
	stwu 1,-24(1)
.LCFI22:
	.loc 1 311 0
	lis 11,cur_state@ha
	.loc 1 310 0
	mr 9,3
	stmw 29,12(1)
.LCFI23:
	mr 29,4
	stw 0,28(1)
.LCFI24:
	.loc 1 311 0
	lwz 0,cur_state@l(11)
	andi. 10,0,1
	beq+ 0,.L82
.LVL52:
	lis 4,.LC8@ha
	li 3,1282
	la 4,.LC8@l(4)
	li 5,311
	b .L94
.LVL53:
.L82:
	.loc 1 312 0
	andi. 10,0,2
	beq- 0,.L85
	lis 4,.LC8@ha
	li 3,1282
	la 4,.LC8@l(4)
	li 5,312
	b .L94
.LVL54:
.L85:
	.loc 1 315 0
	ori 0,0,2
	.loc 1 317 0
	lis 3,listMan@ha
	.loc 1 315 0
	stw 0,cur_state@l(11)
	.loc 1 317 0
	la 3,listMan@l(3)
	mr 4,9
	lis 30,cur_list@ha
	bl get_list
.LVL55:
	.loc 1 319 0
	cmpwi 7,3,0
	.loc 1 317 0
	mr 31,3
	stw 3,cur_list@l(30)
	.loc 1 319 0
	bne+ 7,.L87
	.loc 1 321 0
	lis 4,.LC8@ha
	li 3,1281
	la 4,.LC8@l(4)
	li 5,321
	b .L94
.L87:
	.loc 1 325 0
	lbz 0,8(3)
	cmpwi 7,0,0
	bne+ 7,.L89
	.loc 1 327 0
	lis 4,.LC8@ha
	li 3,1281
	la 4,.LC8@l(4)
	li 5,327
	b .L94
.L89:
	.loc 1 331 0
	addi 0,29,-4864
	cmplwi 7,0,1
	bgt- 7,.L91
	.loc 1 342 0
	lis 4,0x1
	.loc 1 335 0
	lis 9,cur_mode@ha
	.loc 1 342 0
	ori 4,4,26464
	li 3,32
	.loc 1 335 0
	stw 29,cur_mode@l(9)
	.loc 1 342 0
	bl memalign
	stw 3,0(31)
	.loc 1 343 0
	lis 0,0x1
	ori 0,0,26464
	lwz 9,cur_list@l(30)
	stw 0,4(9)
	.loc 1 345 0
	lwz 9,cur_list@l(30)
	lwz 4,4(9)
	lwz 3,0(9)
	bl GX_BeginDispList
	b .L93
.L91:
	.loc 1 338 0
	lis 4,.LC8@ha
	li 3,1280
	la 4,.LC8@l(4)
	li 5,338
.LVL56:
.L94:
	bl _glSetErrorEx
.LVL57:
.L93:
	.loc 1 346 0
	lwz 0,28(1)
	lmw 29,12(1)
.LVL58:
	addi 1,1,24
	mtlr 0
	blr
.LFE81:
	.size	glNewList, .-glNewList
	.align 2
	.globl delete_lists
	.type	delete_lists, @function
delete_lists:
.LFB73:
	.loc 1 197 0
.LVL59:
	.loc 1 199 0
	cmpwi 0,5,0
	.loc 1 197 0
	mflr 0
.LCFI25:
	stwu 1,-24(1)
.LCFI26:
	stmw 28,8(1)
.LCFI27:
	mr 30,3
	stw 0,28(1)
.LCFI28:
	.loc 1 199 0
	beq- 0,.L106
.LVL60:
	cmpwi 7,4,0
	beq- 7,.L106
	.loc 1 207 0
	lwz 9,4(3)
	.loc 1 205 0
	add 0,5,4
	mr 28,0
.LVL61:
	.loc 1 207 0
	cmplw 7,0,9
	ble- 7,.L101
.LVL62:
	.loc 1 209 0
	mr 28,9
.LVL63:
.L101:
	.loc 1 212 0
	mulli 9,4,12
	addi 29,4,-1
.LVL64:
	addi 31,9,-12
	b .L102
.L103:
	.loc 1 214 0
	lwz 9,0(30)
	lwzx 3,9,31
.LVL65:
	cmpwi 7,3,0
	beq- 7,.L104
	.loc 1 216 0
	bl free
.LVL66:
.L104:
	.loc 1 219 0
	lwz 9,0(30)
	li 0,0
	stwx 0,9,31
	.loc 1 220 0
	lwz 9,0(30)
	add 9,9,31
	stw 0,4(9)
	.loc 1 221 0
	lwz 9,0(30)
	add 9,9,31
	.loc 1 212 0
	addi 31,31,12
	.loc 1 221 0
	stb 0,8(9)
.LVL67:
.L102:
	.loc 1 212 0
	cmpw 7,29,28
	addi 29,29,1
	blt+ 7,.L103
.LVL68:
.L106:
	.loc 1 223 0
	lwz 0,28(1)
	lmw 28,8(1)
.LVL69:
	addi 1,1,24
	mtlr 0
	blr
.LFE73:
	.size	delete_lists, .-delete_lists
	.align 2
	.globl glDeleteLists
	.type	glDeleteLists, @function
glDeleteLists:
.LFB79:
	.loc 1 289 0
.LVL70:
	mflr 0
.LCFI29:
	stwu 1,-8(1)
.LCFI30:
	.loc 1 290 0
	lis 9,cur_state@ha
	.loc 1 289 0
	mr 5,4
	stw 0,12(1)
.LCFI31:
	.loc 1 290 0
	lwz 0,cur_state@l(9)
	.loc 1 289 0
	mr 9,3
	.loc 1 290 0
	andi. 11,0,1
	beq+ 0,.L108
.LVL71:
	lis 4,.LC8@ha
	li 3,1282
	la 4,.LC8@l(4)
	li 5,290
.LVL72:
	b .L114
.LVL73:
.L108:
	.loc 1 292 0
	cmpwi 7,4,0
	bge+ 7,.L111
.LVL74:
	.loc 1 294 0
	lis 4,.LC8@ha
.LVL75:
	li 3,1281
	la 4,.LC8@l(4)
	li 5,294
.LVL76:
.L114:
	bl _glSetErrorEx
.LVL77:
	.loc 1 299 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL78:
.L111:
	lwz 0,12(1)
	.loc 1 298 0
	lis 3,listMan@ha
	la 3,listMan@l(3)
	mr 4,9
.LVL79:
	.loc 1 299 0
	mtlr 0
	addi 1,1,8
	.loc 1 298 0
	b delete_lists
.LVL80:
.LFE79:
	.size	glDeleteLists, .-glDeleteLists
	.align 2
	.globl resize_lists
	.type	resize_lists, @function
resize_lists:
.LFB68:
	.loc 1 49 0
.LVL81:
	mflr 0
.LCFI32:
	stwu 1,-16(1)
.LCFI33:
	stmw 30,8(1)
.LCFI34:
	mr 31,3
	stw 0,20(1)
.LCFI35:
	.loc 1 49 0
	mr 30,4
	.loc 1 50 0
	lwz 0,4(3)
	li 3,1
.LVL82:
	cmplw 7,4,0
	blt- 7,.L118
	.loc 1 55 0
	lwz 3,0(31)
	mulli 4,4,12
.LVL83:
	bl realloc
	.loc 1 57 0
	mr. 10,3
	li 3,0
	beq- 0,.L118
	.loc 1 65 0
	lwz 0,4(31)
.LVL84:
	.loc 1 62 0
	stw 10,0(31)
	cmplw 7,0,30
	.loc 1 65 0
	subf 9,0,30
	addi 9,9,1
	mulli 11,0,12
	mtctr 9
	bgt- 7,.L125
	cmpwi 7,30,0
	bne+ 7,.L121
.L125:
	li 0,1
.LVL85:
	mtctr 0
	b .L121
.L122:
	.loc 1 67 0
	lwz 9,0(31)
	stwx 0,9,11
	.loc 1 68 0
	lwz 9,0(31)
	add 9,9,11
	stw 0,4(9)
	.loc 1 69 0
	lwz 9,0(31)
	add 9,9,11
	.loc 1 65 0
	addi 11,11,12
	.loc 1 69 0
	stb 0,8(9)
.LVL86:
.L121:
	.loc 1 67 0
	li 0,0
.LVL87:
	.loc 1 65 0
	bdnz .L122
	.loc 1 73 0
	stw 30,4(31)
	li 3,1
	.loc 1 72 0
	stw 10,0(31)
.LVL88:
.L118:
	.loc 1 76 0
	lwz 0,20(1)
	lmw 30,8(1)
.LVL89:
	addi 1,1,16
	mtlr 0
	blr
.LFE68:
	.size	resize_lists, .-resize_lists
	.align 2
	.globl glGenLists
	.type	glGenLists, @function
glGenLists:
.LFB76:
	.loc 1 245 0
.LVL90:
	mflr 0
.LCFI36:
	stwu 1,-24(1)
.LCFI37:
	.loc 1 246 0
	lis 9,cur_state@ha
	.loc 1 245 0
	stmw 29,12(1)
.LCFI38:
	mr 31,3
	stw 0,28(1)
.LCFI39:
	.loc 1 246 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq+ 0,.L128
.LVL91:
	lis 4,.LC8@ha
	li 3,1282
	la 4,.LC8@l(4)
	li 5,246
	b .L137
.LVL92:
.L128:
	.loc 1 248 0
	cmpwi 7,3,0
	bge+ 7,.L131
.LVL93:
	.loc 1 250 0
	lis 4,.LC8@ha
	li 3,1281
.LVL94:
	la 4,.LC8@l(4)
	li 5,250
.L137:
	bl _glSetErrorEx
	li 29,0
.LVL95:
	b .L130
.LVL96:
.L131:
	.loc 1 254 0
	lis 9,listMan@ha
	mr 4,31
	la 30,listMan@l(9)
	mr 3,30
.LVL97:
	bl search_gap
.LVL98:
	.loc 1 256 0
	mr. 29,3
.LVL99:
	bne+ 0,.L133
	.loc 1 258 0
	lwz 4,4(30)
	mr 3,30
	add 4,31,4
	bl resize_lists
	cmpwi 7,3,0
	beq+ 7,.L133
	.loc 1 260 0
	mr 3,30
	mr 4,31
	bl search_gap
	mr 29,3
.L133:
	.loc 1 264 0
	lis 3,listMan@ha
	mr 5,31
	la 3,listMan@l(3)
	mr 4,29
	bl lock_gap
.L130:
	.loc 1 267 0
	lwz 0,28(1)
	mr 3,29
	lmw 29,12(1)
.LVL100:
	addi 1,1,24
	mtlr 0
	blr
.LFE76:
	.size	glGenLists, .-glGenLists
	.globl cur_list
	.globl cur_mode
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
	.comm	listMan,8,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	1501560832
.LC3:
	.4byte	1325400064
.LC7:
	.4byte	0
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC8:
	.string	"c:/devkitPro/examples/wii/cube_source/gl2gx/libogc/../source/gl_calllist.c"
	.section	.sbss,"aw",@nobits
	.align 2
	.type	cur_list, @object
	.size	cur_list, 4
cur_list:
	.zero	4
	.section	.sdata,"aw",@progbits
	.align 2
	.type	cur_mode, @object
	.size	cur_mode, 4
cur_mode:
	.long	4864
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
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x4
	.4byte	.LCFI0-.LFB72
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x4
	.4byte	.LCFI2-.LFB75
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
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
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.byte	0x4
	.4byte	.LCFI6-.LFB80
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.byte	0x4
	.4byte	.LCFI9-.LFB77
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.byte	0x4
	.4byte	.LCFI11-.LFB78
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI13-.LCFI11
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
	.4byte	.LCFI14-.LCFI13
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.byte	0x4
	.4byte	.LCFI16-.LFB82
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x4
	.4byte	.LCFI19-.LFB71
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
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
	.4byte	.LCFI22-.LFB81
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
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x4
	.4byte	.LCFI26-.LFB73
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
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
	.4byte	.LCFI28-.LCFI27
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
	.4byte	.LCFI30-.LFB79
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.byte	0x4
	.4byte	.LCFI33-.LFB68
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x4
	.4byte	.LCFI37-.LFB76
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI38-.LCFI37
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
	.4byte	.LCFI39-.LCFI38
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE32:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LFB72-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LFB75-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LFB80-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE80-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LFB77-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LFB78-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE78-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL44-.Ltext0
	.4byte	.LFE78-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL41-.Ltext0
	.4byte	.LFE78-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LFB82-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LFB71-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL50-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LFB81-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LFB73-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI26-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL68-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL66-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL66-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LFB79-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI30-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LFB68-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI33-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL89-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LFB76-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI37-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h"
	.file 3 "c:/devkitPro/examples/wii/cube_source/gl2gx/libogc/include/GL/gl.h"
	.file 4 "c:/devkitPro/libogc/include/gctypes.h"
	.file 5 "c:/devkitPro/libogc/include/ogc/gu.h"
	.file 6 "c:/devkitPro/libogc/include/ogc/gx.h"
	.file 7 "c:/devkitPro/examples/wii/cube_source/gl2gx/libogc/../source/include/glint.h"
	.file 8 "c:/devkitPro/examples/wii/cube_source/gl2gx/libogc/../source/include/mat_stack.h"
	.section	.debug_info
	.4byte	0x12ab
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF189
	.byte	0x1
	.4byte	.LASF190
	.4byte	.LASF191
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF13
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
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x92
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x93
	.4byte	0x3a
	.uleb128 0x7
	.4byte	.LASF192
	.byte	0x3
	.byte	0x95
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x98
	.4byte	0x58
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x3
	.byte	0x9b
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x3
	.byte	0x9c
	.4byte	0x58
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x3
	.byte	0x9d
	.4byte	0x89
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe6
	.uleb128 0x9
	.4byte	0xad
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd5
	.uleb128 0xa
	.string	"u8"
	.byte	0x4
	.byte	0x10
	.4byte	0x3a
	.uleb128 0xa
	.string	"u16"
	.byte	0x4
	.byte	0x11
	.4byte	0x41
	.uleb128 0xa
	.string	"u32"
	.byte	0x4
	.byte	0x12
	.4byte	0x30
	.uleb128 0xa
	.string	"s8"
	.byte	0x4
	.byte	0x15
	.4byte	0x4a
	.uleb128 0xa
	.string	"s16"
	.byte	0x4
	.byte	0x16
	.4byte	0x51
	.uleb128 0xa
	.string	"s32"
	.byte	0x4
	.byte	0x17
	.4byte	0x58
	.uleb128 0xb
	.4byte	0x3a
	.uleb128 0xb
	.4byte	0x41
	.uleb128 0xb
	.4byte	0x30
	.uleb128 0xb
	.4byte	0x4a
	.uleb128 0xb
	.4byte	0x51
	.uleb128 0xb
	.4byte	0x58
	.uleb128 0xa
	.string	"f32"
	.byte	0x4
	.byte	0x2a
	.4byte	0x89
	.uleb128 0xb
	.4byte	0x89
	.uleb128 0x8
	.byte	0x4
	.4byte	0x101
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0x8
	.byte	0x4
	.4byte	0x178
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0xc
	.byte	0x5
	.byte	0x27
	.4byte	0x1aa
	.uleb128 0xe
	.string	"x"
	.byte	0x5
	.byte	0x28
	.4byte	0x155
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"y"
	.byte	0x5
	.byte	0x28
	.4byte	0x155
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"z"
	.byte	0x5
	.byte	0x28
	.4byte	0x155
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x5
	.byte	0x29
	.4byte	0x179
	.uleb128 0xf
	.4byte	.LASF193
	.byte	0x4
	.byte	0x6
	.2byte	0x3af
	.4byte	0x215
	.uleb128 0x10
	.string	"U8"
	.byte	0x6
	.2byte	0x3b0
	.4byte	0x137
	.uleb128 0x10
	.string	"S8"
	.byte	0x6
	.2byte	0x3b1
	.4byte	0x146
	.uleb128 0x10
	.string	"U16"
	.byte	0x6
	.2byte	0x3b2
	.4byte	0x13c
	.uleb128 0x10
	.string	"S16"
	.byte	0x6
	.2byte	0x3b3
	.4byte	0x14b
	.uleb128 0x10
	.string	"U32"
	.byte	0x6
	.2byte	0x3b4
	.4byte	0x141
	.uleb128 0x10
	.string	"S32"
	.byte	0x6
	.2byte	0x3b5
	.4byte	0x150
	.uleb128 0x10
	.string	"F32"
	.byte	0x6
	.2byte	0x3b6
	.4byte	0x160
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x3b7
	.4byte	0x1b5
	.uleb128 0x12
	.4byte	.LASF24
	.byte	0x4
	.byte	0x6
	.2byte	0x3b9
	.4byte	0x263
	.uleb128 0x13
	.string	"r"
	.byte	0x6
	.2byte	0x3ba
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.string	"g"
	.byte	0x6
	.2byte	0x3bb
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x13
	.string	"b"
	.byte	0x6
	.2byte	0x3bc
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x13
	.string	"a"
	.byte	0x6
	.2byte	0x3bd
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x3be
	.4byte	0x221
	.uleb128 0x12
	.4byte	.LASF26
	.byte	0x40
	.byte	0x6
	.2byte	0x3d7
	.4byte	0x28c
	.uleb128 0x13
	.string	"val"
	.byte	0x6
	.2byte	0x3d8
	.4byte	0x28c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x14
	.4byte	0x10c
	.4byte	0x29c
	.uleb128 0x15
	.4byte	0x37
	.byte	0xf
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x3d9
	.4byte	0x26f
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf7
	.uleb128 0x8
	.byte	0x4
	.4byte	0x10c
	.uleb128 0x16
	.byte	0x10
	.byte	0x7
	.byte	0x16
	.4byte	0x2d5
	.uleb128 0xe
	.string	"v"
	.byte	0x7
	.byte	0x17
	.4byte	0x1aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"w"
	.byte	0x7
	.byte	0x18
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x7
	.byte	0x19
	.4byte	0x2b4
	.uleb128 0x16
	.byte	0x8
	.byte	0x7
	.byte	0x1c
	.4byte	0x301
	.uleb128 0xe
	.string	"s"
	.byte	0x7
	.byte	0x1d
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"t"
	.byte	0x7
	.byte	0x1e
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x7
	.byte	0x1f
	.4byte	0x2e0
	.uleb128 0x16
	.byte	0x10
	.byte	0x7
	.byte	0x22
	.4byte	0x345
	.uleb128 0xe
	.string	"r"
	.byte	0x7
	.byte	0x23
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"g"
	.byte	0x7
	.byte	0x24
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"b"
	.byte	0x7
	.byte	0x25
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"a"
	.byte	0x7
	.byte	0x26
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x7
	.byte	0x27
	.4byte	0x30c
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x14
	.byte	0x7
	.byte	0x42
	.4byte	0x3a1
	.uleb128 0x17
	.4byte	.LASF32
	.byte	0x7
	.byte	0x43
	.4byte	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"p"
	.byte	0x7
	.byte	0x44
	.4byte	0x172
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF33
	.byte	0x7
	.byte	0x45
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.4byte	.LASF34
	.byte	0x7
	.byte	0x46
	.4byte	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.4byte	.LASF35
	.byte	0x7
	.byte	0x47
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x7
	.byte	0x48
	.4byte	0x350
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x10
	.byte	0x8
	.byte	0xd
	.4byte	0x3f1
	.uleb128 0x17
	.4byte	.LASF38
	.byte	0x8
	.byte	0xe
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.4byte	.LASF39
	.byte	0x8
	.byte	0xf
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF34
	.byte	0x8
	.byte	0x10
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"cur"
	.byte	0x8
	.byte	0x11
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x8
	.byte	0x12
	.4byte	0x3ac
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0xa4
	.byte	0x7
	.byte	0x7e
	.4byte	0x4b7
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x7
	.byte	0x7f
	.4byte	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"obj"
	.byte	0x7
	.byte	0x81
	.4byte	0x29c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"pos"
	.byte	0x7
	.byte	0x83
	.4byte	0x2d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x17
	.4byte	.LASF43
	.byte	0x7
	.byte	0x85
	.4byte	0x1aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x17
	.4byte	.LASF44
	.byte	0x7
	.byte	0x87
	.4byte	0x345
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x17
	.4byte	.LASF45
	.byte	0x7
	.byte	0x88
	.4byte	0x345
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x17
	.4byte	.LASF46
	.byte	0x7
	.byte	0x89
	.4byte	0x345
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x17
	.4byte	.LASF47
	.byte	0x7
	.byte	0x8b
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x7
	.byte	0x8c
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x17
	.4byte	.LASF49
	.byte	0x7
	.byte	0x8d
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x17
	.4byte	.LASF50
	.byte	0x7
	.byte	0x8e
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x17
	.4byte	.LASF51
	.byte	0x7
	.byte	0x8f
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x7
	.byte	0x90
	.4byte	0x3fc
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x44
	.byte	0x7
	.byte	0x9b
	.4byte	0x515
	.uleb128 0x17
	.4byte	.LASF54
	.byte	0x7
	.byte	0x9c
	.4byte	0x345
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.4byte	.LASF44
	.byte	0x7
	.byte	0x9d
	.4byte	0x345
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.4byte	.LASF45
	.byte	0x7
	.byte	0x9e
	.4byte	0x345
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.4byte	.LASF46
	.byte	0x7
	.byte	0x9f
	.4byte	0x345
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x17
	.4byte	.LASF55
	.byte	0x7
	.byte	0xa0
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x7
	.byte	0xa1
	.4byte	0x4c2
	.uleb128 0x18
	.4byte	.LASF194
	.byte	0x4
	.byte	0x7
	.byte	0xba
	.4byte	0x53f
	.uleb128 0x19
	.4byte	.LASF57
	.sleb128 0
	.uleb128 0x19
	.4byte	.LASF58
	.sleb128 1
	.uleb128 0x19
	.4byte	.LASF59
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x7
	.byte	0xbe
	.4byte	0x520
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x10
	.byte	0x7
	.byte	0xe3
	.4byte	0x58b
	.uleb128 0xe
	.string	"x"
	.byte	0x7
	.byte	0xe4
	.4byte	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"y"
	.byte	0x7
	.byte	0xe5
	.4byte	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x7
	.byte	0xe6
	.4byte	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.4byte	.LASF63
	.byte	0x7
	.byte	0xe7
	.4byte	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x7
	.byte	0xe8
	.4byte	0x54a
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x14
	.byte	0x7
	.byte	0xf8
	.4byte	0x5f7
	.uleb128 0x17
	.4byte	.LASF65
	.byte	0x7
	.byte	0xf9
	.4byte	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.4byte	.LASF66
	.byte	0x7
	.byte	0xfa
	.4byte	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x17
	.4byte	.LASF67
	.byte	0x7
	.byte	0xfb
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF68
	.byte	0x7
	.byte	0xfc
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.4byte	.LASF69
	.byte	0x7
	.byte	0xfd
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.4byte	.LASF70
	.byte	0x7
	.byte	0xfe
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0x7
	.byte	0xff
	.4byte	0x596
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0x8
	.byte	0x7
	.2byte	0x114
	.4byte	0x62e
	.uleb128 0x1a
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x115
	.4byte	0x155
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x116
	.4byte	0x155
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x117
	.4byte	0x602
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x6c
	.byte	0x7
	.2byte	0x124
	.4byte	0x792
	.uleb128 0x1a
	.4byte	.LASF42
	.byte	0x7
	.2byte	0x125
	.4byte	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x127
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x1a
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x128
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x1a
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x129
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x1a
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x12a
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x12b
	.4byte	0x155
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x12c
	.4byte	0x155
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x12d
	.4byte	0x155
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x12e
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1a
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x12f
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x1a
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x130
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x1a
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x132
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1a
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x134
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1a
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x135
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x137
	.4byte	0x792
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x138
	.4byte	0x792
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1a
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x139
	.4byte	0x792
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x13a
	.4byte	0x792
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x13
	.string	"tex"
	.byte	0x7
	.2byte	0x13c
	.4byte	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x1a
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x13e
	.4byte	0x345
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1a
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x140
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x1a
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x141
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0x0
	.uleb128 0x14
	.4byte	0x97
	.4byte	0x7a2
	.uleb128 0x15
	.4byte	0x37
	.byte	0x2
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x142
	.4byte	0x63a
	.uleb128 0xd
	.4byte	.LASF98
	.byte	0xc
	.byte	0x1
	.byte	0x10
	.4byte	0x7e5
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x1
	.byte	0x11
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.4byte	.LASF34
	.byte	0x1
	.byte	0x12
	.4byte	0x10c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF100
	.byte	0x1
	.byte	0x13
	.4byte	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0x1
	.byte	0x14
	.4byte	0x7ae
	.uleb128 0xd
	.4byte	.LASF102
	.byte	0x8
	.byte	0x1
	.byte	0x17
	.4byte	0x819
	.uleb128 0x17
	.4byte	.LASF38
	.byte	0x1
	.byte	0x18
	.4byte	0x819
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.4byte	.LASF34
	.byte	0x1
	.byte	0x19
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7e5
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0x1
	.byte	0x1a
	.4byte	0x7f0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF106
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.4byte	.LFB66
	.4byte	.LFE66
	.byte	0x1
	.byte	0x51
	.4byte	0x84f
	.uleb128 0x1c
	.4byte	.LASF104
	.byte	0x1
	.byte	0x21
	.4byte	0x84f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x81f
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF195
	.byte	0x1
	.byte	0x2c
	.4byte	.LFB67
	.4byte	.LFE67
	.byte	0x1
	.byte	0x51
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF108
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.4byte	0xbf
	.4byte	.LFB69
	.4byte	.LFE69
	.byte	0x1
	.byte	0x51
	.4byte	0x8b7
	.uleb128 0x1f
	.4byte	.LASF104
	.byte	0x1
	.byte	0x4e
	.4byte	0x84f
	.4byte	.LLST3
	.uleb128 0x1c
	.4byte	.LASF105
	.byte	0x1
	.byte	0x4e
	.4byte	0xca
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0x50
	.4byte	0x58
	.4byte	.LLST4
	.uleb128 0x21
	.string	"j"
	.byte	0x1
	.byte	0x50
	.4byte	0x58
	.byte	0x1
	.byte	0x5b
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF107
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.4byte	.LFB70
	.4byte	.LFE70
	.byte	0x1
	.byte	0x51
	.4byte	0x901
	.uleb128 0x1c
	.4byte	.LASF104
	.byte	0x1
	.byte	0x62
	.4byte	0x84f
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"adr"
	.byte	0x1
	.byte	0x62
	.4byte	0xbf
	.4byte	.LLST6
	.uleb128 0x1c
	.4byte	.LASF105
	.byte	0x1
	.byte	0x62
	.4byte	0xca
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x64
	.4byte	0x58
	.byte	0x0
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF109
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.4byte	0xbf
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LLST7
	.4byte	0xa31
	.uleb128 0x1f
	.4byte	.LASF110
	.byte	0x1
	.byte	0x89
	.4byte	0xeb
	.4byte	.LLST8
	.uleb128 0x1c
	.4byte	.LASF35
	.byte	0x1
	.byte	0x89
	.4byte	0x97
	.byte	0x1
	.byte	0x54
	.uleb128 0x25
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	0x95e
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.byte	0x8f
	.4byte	0xa31
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.byte	0x90
	.4byte	0xf7
	.4byte	.LLST9
	.byte	0x0
	.uleb128 0x25
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0x982
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.byte	0x96
	.4byte	0xa37
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.byte	0x97
	.4byte	0x117
	.4byte	.LLST10
	.byte	0x0
	.uleb128 0x25
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0x9a6
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.byte	0x9d
	.4byte	0xa43
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.byte	0x9e
	.4byte	0x121
	.4byte	.LLST11
	.byte	0x0
	.uleb128 0x25
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0x9ca
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.byte	0xa4
	.4byte	0xa4f
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.byte	0xa5
	.4byte	0x101
	.4byte	.LLST12
	.byte	0x0
	.uleb128 0x25
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0x9ee
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.byte	0xaa
	.4byte	0xa55
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.byte	0xab
	.4byte	0x12c
	.4byte	.LLST13
	.byte	0x0
	.uleb128 0x25
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0xa10
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.byte	0xb0
	.4byte	0xa61
	.uleb128 0x21
	.string	"t"
	.byte	0x1
	.byte	0xb1
	.4byte	0x10c
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.uleb128 0x26
	.4byte	.LBB8
	.4byte	.LBE8
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.byte	0xb7
	.4byte	0xa67
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.byte	0xb8
	.4byte	0xd5
	.4byte	.LLST14
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2a8
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa3d
	.uleb128 0x8
	.byte	0x4
	.4byte	0x117
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa49
	.uleb128 0x8
	.byte	0x4
	.4byte	0x121
	.uleb128 0x8
	.byte	0x4
	.4byte	0x165
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa5b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x12c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2ae
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf1
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF111
	.byte	0x1
	.byte	0xe2
	.byte	0x1
	.4byte	0x16b
	.4byte	.LFB74
	.4byte	.LFE74
	.byte	0x1
	.byte	0x51
	.4byte	0xaa5
	.uleb128 0x1f
	.4byte	.LASF104
	.byte	0x1
	.byte	0xe1
	.4byte	0x84f
	.4byte	.LLST16
	.uleb128 0x1c
	.4byte	.LASF99
	.byte	0x1
	.byte	0xe1
	.4byte	0xbf
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF112
	.byte	0x1
	.byte	0xe7
	.byte	0x1
	.4byte	0x819
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LLST17
	.4byte	0xae1
	.uleb128 0x1f
	.4byte	.LASF104
	.byte	0x1
	.byte	0xe6
	.4byte	0x84f
	.4byte	.LLST18
	.uleb128 0x1f
	.4byte	.LASF99
	.byte	0x1
	.byte	0xe6
	.4byte	0xbf
	.4byte	.LLST19
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x12e
	.byte	0x1
	.4byte	0xa2
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LLST20
	.4byte	0xb10
	.uleb128 0x28
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x12d
	.4byte	0xbf
	.4byte	.LLST21
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x10e
	.byte	0x1
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LLST22
	.4byte	0xb3b
	.uleb128 0x28
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x10d
	.4byte	0xbf
	.4byte	.LLST23
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x117
	.byte	0x1
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	.LLST24
	.4byte	0xb92
	.uleb128 0x2a
	.string	"n"
	.byte	0x1
	.2byte	0x114
	.4byte	0xca
	.4byte	.LLST25
	.uleb128 0x28
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x115
	.4byte	0x97
	.4byte	.LLST26
	.uleb128 0x28
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x116
	.4byte	0xe0
	.4byte	.LLST27
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x118
	.4byte	0x58
	.4byte	.LLST28
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x15d
	.byte	0x1
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LLST29
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF117
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LLST30
	.4byte	0xbed
	.uleb128 0x1f
	.4byte	.LASF104
	.byte	0x1
	.byte	0x76
	.4byte	0x84f
	.4byte	.LLST31
	.uleb128 0x1f
	.4byte	.LASF99
	.byte	0x1
	.byte	0x76
	.4byte	0xbf
	.4byte	.LLST32
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0x7d
	.4byte	0x819
	.4byte	.LLST33
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x136
	.byte	0x1
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LLST34
	.4byte	0xc28
	.uleb128 0x28
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x134
	.4byte	0xbf
	.4byte	.LLST35
	.uleb128 0x28
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x135
	.4byte	0x97
	.4byte	.LLST36
	.byte	0x0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF119
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LLST37
	.4byte	0xc8b
	.uleb128 0x1f
	.4byte	.LASF104
	.byte	0x1
	.byte	0xc4
	.4byte	0x84f
	.4byte	.LLST38
	.uleb128 0x1f
	.4byte	.LASF99
	.byte	0x1
	.byte	0xc4
	.4byte	0xbf
	.4byte	.LLST39
	.uleb128 0x1f
	.4byte	.LASF105
	.byte	0x1
	.byte	0xc4
	.4byte	0xca
	.4byte	.LLST40
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0xcc
	.4byte	0x58
	.4byte	.LLST41
	.uleb128 0x2e
	.4byte	.LASF120
	.byte	0x1
	.byte	0xcd
	.4byte	0x58
	.4byte	.LLST42
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x121
	.byte	0x1
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LLST43
	.4byte	0xcc6
	.uleb128 0x28
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x11f
	.4byte	0xbf
	.4byte	.LLST44
	.uleb128 0x28
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x120
	.4byte	0xca
	.4byte	.LLST45
	.byte	0x0
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF122
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.4byte	0x16b
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LLST46
	.4byte	0xd1a
	.uleb128 0x1f
	.4byte	.LASF104
	.byte	0x1
	.byte	0x30
	.4byte	0x84f
	.4byte	.LLST47
	.uleb128 0x1f
	.4byte	.LASF123
	.byte	0x1
	.byte	0x30
	.4byte	0x25
	.4byte	.LLST48
	.uleb128 0x2f
	.4byte	.LASF124
	.byte	0x1
	.byte	0x37
	.4byte	0x819
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0x40
	.4byte	0x58
	.4byte	.LLST49
	.byte	0x0
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF125
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.4byte	0xbf
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LLST50
	.4byte	0xd56
	.uleb128 0x1f
	.4byte	.LASF105
	.byte	0x1
	.byte	0xf4
	.4byte	0xca
	.4byte	.LLST51
	.uleb128 0x20
	.string	"res"
	.byte	0x1
	.byte	0xfe
	.4byte	0xbf
	.4byte	.LLST52
	.byte	0x0
	.uleb128 0x30
	.4byte	.LASF126
	.byte	0x6
	.2byte	0x40e
	.4byte	0xd64
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.4byte	0xd69
	.uleb128 0x8
	.byte	0x4
	.4byte	0x215
	.uleb128 0x31
	.4byte	.LASF127
	.byte	0x7
	.byte	0x3c
	.4byte	0x345
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x31
	.4byte	.LASF128
	.byte	0x7
	.byte	0x3d
	.4byte	0x1aa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0x14
	.4byte	0x301
	.4byte	0xda3
	.uleb128 0x15
	.4byte	0x37
	.byte	0xc7
	.byte	0x0
	.uleb128 0x31
	.4byte	.LASF129
	.byte	0x7
	.byte	0x3e
	.4byte	0xd93
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x31
	.4byte	.LASF130
	.byte	0x7
	.byte	0x4a
	.4byte	0x3a1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x31
	.4byte	.LASF131
	.byte	0x7
	.byte	0x4b
	.4byte	0x3a1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0x14
	.4byte	0x3a1
	.4byte	0xde9
	.uleb128 0x15
	.4byte	0x37
	.byte	0xc7
	.byte	0x0
	.uleb128 0x32
	.string	"tex"
	.byte	0x7
	.byte	0x4c
	.4byte	0xdd9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x31
	.4byte	.LASF94
	.byte	0x7
	.byte	0x4d
	.4byte	0x3a1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0x14
	.4byte	0x1aa
	.4byte	0xe1e
	.uleb128 0x33
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x31
	.4byte	.LASF132
	.byte	0x7
	.byte	0x4f
	.4byte	0xe0d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x31
	.4byte	.LASF133
	.byte	0x7
	.byte	0x50
	.4byte	0xe0d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0x14
	.4byte	0x301
	.4byte	0xe59
	.uleb128 0x15
	.4byte	0x37
	.byte	0xc7
	.uleb128 0x33
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x31
	.4byte	.LASF134
	.byte	0x7
	.byte	0x51
	.4byte	0xe42
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0x14
	.4byte	0x345
	.4byte	0xe7c
	.uleb128 0x33
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x31
	.4byte	.LASF135
	.byte	0x7
	.byte	0x52
	.4byte	0xe6b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x31
	.4byte	.LASF136
	.byte	0x7
	.byte	0x5c
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x31
	.4byte	.LASF137
	.byte	0x7
	.byte	0x5d
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x31
	.4byte	.LASF138
	.byte	0x7
	.byte	0x5e
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x31
	.4byte	.LASF139
	.byte	0x7
	.byte	0x60
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x31
	.4byte	.LASF140
	.byte	0x7
	.byte	0x61
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x31
	.4byte	.LASF141
	.byte	0x7
	.byte	0x65
	.4byte	0xf7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x31
	.4byte	.LASF142
	.byte	0x7
	.byte	0x66
	.4byte	0xf7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x31
	.4byte	.LASF143
	.byte	0x7
	.byte	0x67
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x31
	.4byte	.LASF144
	.byte	0x7
	.byte	0x68
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x31
	.4byte	.LASF145
	.byte	0x7
	.byte	0x74
	.4byte	0x3f1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x31
	.4byte	.LASF146
	.byte	0x7
	.byte	0x75
	.4byte	0x3f1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0x14
	.4byte	0x3f1
	.4byte	0xf64
	.uleb128 0x15
	.4byte	0x37
	.byte	0xc7
	.byte	0x0
	.uleb128 0x31
	.4byte	.LASF147
	.byte	0x7
	.byte	0x76
	.4byte	0xf54
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x31
	.4byte	.LASF148
	.byte	0x7
	.byte	0x77
	.4byte	0xf88
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3f1
	.uleb128 0x31
	.4byte	.LASF149
	.byte	0x1
	.byte	0x1e
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0x14
	.4byte	0x4b7
	.4byte	0xfb0
	.uleb128 0x15
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x31
	.4byte	.LASF150
	.byte	0x7
	.byte	0x93
	.4byte	0xfa0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x31
	.4byte	.LASF151
	.byte	0x7
	.byte	0x96
	.4byte	0x345
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x31
	.4byte	.LASF152
	.byte	0x7
	.byte	0xa3
	.4byte	0x515
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x31
	.4byte	.LASF153
	.byte	0x7
	.byte	0xa6
	.4byte	0x16b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x31
	.4byte	.LASF154
	.byte	0x7
	.byte	0xa7
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x31
	.4byte	.LASF155
	.byte	0x7
	.byte	0xab
	.4byte	0x16b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x31
	.4byte	.LASF156
	.byte	0x7
	.byte	0xb2
	.4byte	0xf7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x31
	.4byte	.LASF157
	.byte	0x7
	.byte	0xb3
	.4byte	0xf7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x31
	.4byte	.LASF158
	.byte	0x7
	.byte	0xb4
	.4byte	0xf7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x31
	.4byte	.LASF159
	.byte	0x7
	.byte	0xb5
	.4byte	0xf7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x31
	.4byte	.LASF160
	.byte	0x7
	.byte	0xb7
	.4byte	0xf7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x31
	.4byte	.LASF161
	.byte	0x7
	.byte	0xc0
	.4byte	0x53f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x31
	.4byte	.LASF162
	.byte	0x7
	.byte	0xea
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x31
	.4byte	.LASF163
	.byte	0x7
	.byte	0xeb
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x31
	.4byte	.LASF164
	.byte	0x7
	.byte	0xec
	.4byte	0xa2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x31
	.4byte	.LASF165
	.byte	0x7
	.byte	0xed
	.4byte	0x58b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x31
	.4byte	.LASF166
	.byte	0x7
	.byte	0xee
	.4byte	0x58b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x31
	.4byte	.LASF167
	.byte	0x7
	.byte	0xef
	.4byte	0x155
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x31
	.4byte	.LASF168
	.byte	0x7
	.byte	0xf0
	.4byte	0x155
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x31
	.4byte	.LASF169
	.byte	0x7
	.byte	0xf2
	.4byte	0x155
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x31
	.4byte	.LASF170
	.byte	0x7
	.byte	0xf4
	.4byte	0x155
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x34
	.4byte	.LASF171
	.byte	0x7
	.2byte	0x101
	.4byte	0x5f7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x34
	.4byte	.LASF172
	.byte	0x7
	.2byte	0x102
	.4byte	0x5f7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0x14
	.4byte	0x16b
	.4byte	0x1160
	.uleb128 0x15
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x34
	.4byte	.LASF173
	.byte	0x7
	.2byte	0x103
	.4byte	0x1150
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x34
	.4byte	.LASF174
	.byte	0x7
	.2byte	0x109
	.4byte	0x16b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x34
	.4byte	.LASF175
	.byte	0x7
	.2byte	0x10a
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x34
	.4byte	.LASF176
	.byte	0x7
	.2byte	0x10d
	.4byte	0x263
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0x14
	.4byte	0x62e
	.4byte	0x11bc
	.uleb128 0x15
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x34
	.4byte	.LASF177
	.byte	0x7
	.2byte	0x121
	.4byte	0x11ac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x34
	.4byte	.LASF178
	.byte	0x7
	.2byte	0x146
	.4byte	0x16b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x34
	.4byte	.LASF179
	.byte	0x7
	.2byte	0x147
	.4byte	0xf7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x34
	.4byte	.LASF180
	.byte	0x7
	.2byte	0x148
	.4byte	0x155
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x34
	.4byte	.LASF181
	.byte	0x7
	.2byte	0x149
	.4byte	0x155
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x34
	.4byte	.LASF182
	.byte	0x7
	.2byte	0x14a
	.4byte	0x155
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x34
	.4byte	.LASF183
	.byte	0x7
	.2byte	0x14b
	.4byte	0x263
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0x14
	.4byte	0x7a2
	.4byte	0x1251
	.uleb128 0x15
	.4byte	0x37
	.byte	0xc7
	.byte	0x0
	.uleb128 0x34
	.4byte	.LASF184
	.byte	0x7
	.2byte	0x14d
	.4byte	0x1241
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x34
	.4byte	.LASF185
	.byte	0x7
	.2byte	0x152
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x34
	.4byte	.LASF186
	.byte	0x7
	.2byte	0x155
	.4byte	0xbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	call_offset
	.uleb128 0x31
	.4byte	.LASF187
	.byte	0x1
	.byte	0x1c
	.4byte	0x81f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	listMan
	.uleb128 0x31
	.4byte	.LASF188
	.byte	0x1
	.byte	0x1d
	.4byte	0x819
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_list
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x28
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
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
	.4byte	0x4d3
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x12af
	.4byte	0x82a
	.string	"callListInit"
	.4byte	0x855
	.string	"initCalllist"
	.4byte	0x867
	.string	"search_gap"
	.4byte	0x8b7
	.string	"lock_gap"
	.4byte	0x901
	.string	"ReadUint"
	.4byte	0xa6d
	.string	"is_list"
	.4byte	0xaa5
	.string	"get_list"
	.4byte	0xae1
	.string	"glIsList"
	.4byte	0xb10
	.string	"glCallList"
	.4byte	0xb3b
	.string	"glCallLists"
	.4byte	0xb92
	.string	"glEndList"
	.4byte	0xba8
	.string	"calllist"
	.4byte	0xbed
	.string	"glNewList"
	.4byte	0xc28
	.string	"delete_lists"
	.4byte	0xc8b
	.string	"glDeleteLists"
	.4byte	0xcc6
	.string	"resize_lists"
	.4byte	0xd1a
	.string	"glGenLists"
	.4byte	0xd6f
	.string	"_tempcolorelement"
	.4byte	0xd81
	.string	"_tempnormalelement"
	.4byte	0xda3
	.string	"_temptexcoordelement"
	.4byte	0xdb5
	.string	"norm"
	.4byte	0xdc7
	.string	"vert"
	.4byte	0xde9
	.string	"tex"
	.4byte	0xdfb
	.string	"color"
	.4byte	0xe1e
	.string	"_normalelements"
	.4byte	0xe30
	.string	"_vertexelements"
	.4byte	0xe59
	.string	"_texcoordelements"
	.4byte	0xe7c
	.string	"_colorelements"
	.4byte	0xe8e
	.string	"vert_i"
	.4byte	0xea0
	.string	"_type"
	.4byte	0xeb2
	.string	"_GLtype"
	.4byte	0xec4
	.string	"cur_tex"
	.4byte	0xed6
	.string	"cur_tex_client"
	.4byte	0xee8
	.string	"depthtestenabled"
	.4byte	0xefa
	.string	"depthupdate"
	.4byte	0xf0c
	.string	"depthfunction"
	.4byte	0xf1e
	.string	"_cleardepth"
	.4byte	0xf30
	.string	"model_stack"
	.4byte	0xf42
	.string	"projection_stack"
	.4byte	0xf64
	.string	"texture_stack"
	.4byte	0xf76
	.string	"curmtx"
	.4byte	0xf8e
	.string	"cur_mode"
	.4byte	0xfb0
	.string	"lights"
	.4byte	0xfc2
	.string	"globAmbient"
	.4byte	0xfd4
	.string	"curmat"
	.4byte	0xfe6
	.string	"gxcullfaceanabled"
	.4byte	0xff8
	.string	"gxwinding"
	.4byte	0x100a
	.string	"lighting"
	.4byte	0x101c
	.string	"blend_type"
	.4byte	0x102e
	.string	"blend_src"
	.4byte	0x1040
	.string	"blend_dst"
	.4byte	0x1052
	.string	"blend_op"
	.4byte	0x1064
	.string	"cull_mode"
	.4byte	0x1076
	.string	"cur_state"
	.4byte	0x1088
	.string	"fb_max_height"
	.4byte	0x109a
	.string	"fb_max_width"
	.4byte	0x10ac
	.string	"scissor_test"
	.4byte	0x10be
	.string	"scissorInfo"
	.4byte	0x10d0
	.string	"viewPort"
	.4byte	0x10e2
	.string	"normNear"
	.4byte	0x10f4
	.string	"normFar"
	.4byte	0x1106
	.string	"line_width"
	.4byte	0x1118
	.string	"point_size"
	.4byte	0x112a
	.string	"pack"
	.4byte	0x113d
	.string	"unpack"
	.4byte	0x1160
	.string	"color_write_mask"
	.4byte	0x1173
	.string	"copy_mat_enabled"
	.4byte	0x1186
	.string	"copy_material"
	.4byte	0x1199
	.string	"_clearcolor"
	.4byte	0x11bc
	.string	"Trans"
	.4byte	0x11cf
	.string	"fog_enable"
	.4byte	0x11e2
	.string	"fog_mode"
	.4byte	0x11f5
	.string	"fog_startz"
	.4byte	0x1208
	.string	"fog_endz"
	.4byte	0x121b
	.string	"fog_density"
	.4byte	0x122e
	.string	"fog_color"
	.4byte	0x1251
	.string	"glTexEnvs"
	.4byte	0x1264
	.string	"read_mode"
	.4byte	0x1277
	.string	"call_offset"
	.4byte	0x128a
	.string	"listMan"
	.4byte	0x129c
	.string	"cur_list"
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
.LASF117:
	.string	"calllist"
.LASF73:
	.string	"scale"
.LASF91:
	.string	"CargOp"
.LASF156:
	.string	"blend_type"
.LASF165:
	.string	"scissorInfo"
.LASF13:
	.string	"size_t"
.LASF96:
	.string	"alpha_scale"
.LASF148:
	.string	"curmtx"
.LASF178:
	.string	"fog_enable"
.LASF172:
	.string	"unpack"
.LASF151:
	.string	"globAmbient"
.LASF118:
	.string	"glNewList"
.LASF78:
	.string	"max_filter"
.LASF123:
	.string	"newsize"
.LASF35:
	.string	"type"
.LASF17:
	.string	"GLuint"
.LASF111:
	.string	"is_list"
.LASF67:
	.string	"row_length"
.LASF113:
	.string	"glIsList"
.LASF6:
	.string	"long long unsigned int"
.LASF147:
	.string	"texture_stack"
.LASF43:
	.string	"spotDir"
.LASF59:
	.string	"GL_STATE_NEWLIST"
.LASF185:
	.string	"read_mode"
.LASF134:
	.string	"_texcoordelements"
.LASF120:
	.string	"limit"
.LASF57:
	.string	"GL_STATE_NONE"
.LASF19:
	.string	"GLfloat"
.LASF141:
	.string	"depthtestenabled"
.LASF23:
	.string	"_vecf"
.LASF5:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF26:
	.string	"_gx_litobj"
.LASF34:
	.string	"size"
.LASF143:
	.string	"depthfunction"
.LASF128:
	.string	"_tempnormalelement"
.LASF193:
	.string	"_wgpipe"
.LASF56:
	.string	"Material"
.LASF99:
	.string	"list"
.LASF109:
	.string	"ReadUint"
.LASF9:
	.string	"long int"
.LASF54:
	.string	"emissive"
.LASF28:
	.string	"VertexElement"
.LASF159:
	.string	"blend_op"
.LASF133:
	.string	"_vertexelements"
.LASF195:
	.string	"initCalllist"
.LASF32:
	.string	"enable"
.LASF180:
	.string	"fog_startz"
.LASF10:
	.string	"double"
.LASF106:
	.string	"callListInit"
.LASF80:
	.string	"wrap_t"
.LASF104:
	.string	"this"
.LASF158:
	.string	"blend_dst"
.LASF18:
	.string	"GLsizei"
.LASF51:
	.string	"quad_t"
.LASF146:
	.string	"projection_stack"
.LASF72:
	.string	"_trans"
.LASF16:
	.string	"GLint"
.LASF102:
	.string	"_CallListMan"
.LASF110:
	.string	"pixels"
.LASF53:
	.string	"_mat"
.LASF79:
	.string	"wrap_s"
.LASF179:
	.string	"fog_mode"
.LASF61:
	.string	"boxInfo"
.LASF50:
	.string	"linear"
.LASF0:
	.string	"unsigned int"
.LASF136:
	.string	"vert_i"
.LASF38:
	.string	"begin"
.LASF30:
	.string	"GXColorf"
.LASF7:
	.string	"long unsigned int"
.LASF41:
	.string	"_light"
.LASF81:
	.string	"minlod"
.LASF49:
	.string	"constant"
.LASF145:
	.string	"model_stack"
.LASF55:
	.string	"shininess"
.LASF157:
	.string	"blend_src"
.LASF85:
	.string	"edgelod"
.LASF62:
	.string	"width"
.LASF135:
	.string	"_colorelements"
.LASF142:
	.string	"depthupdate"
.LASF2:
	.string	"short unsigned int"
.LASF161:
	.string	"cur_state"
.LASF124:
	.string	"newbegin"
.LASF60:
	.string	"glState"
.LASF58:
	.string	"GL_STATE_BEGIN"
.LASF181:
	.string	"fog_endz"
.LASF119:
	.string	"delete_lists"
.LASF4:
	.string	"short int"
.LASF137:
	.string	"_type"
.LASF84:
	.string	"biasclamp"
.LASF122:
	.string	"resize_lists"
.LASF196:
	.string	"glEndList"
.LASF186:
	.string	"call_offset"
.LASF166:
	.string	"viewPort"
.LASF116:
	.string	"lists"
.LASF154:
	.string	"gxwinding"
.LASF173:
	.string	"color_write_mask"
.LASF194:
	.string	"_glState"
.LASF36:
	.string	"VertexArray"
.LASF15:
	.string	"GLboolean"
.LASF190:
	.string	"c:/devkitPro/examples/wii/cube_source/gl2gx/libogc/../source/gl_calllist.c"
.LASF101:
	.string	"CallList"
.LASF114:
	.string	"glCallList"
.LASF130:
	.string	"norm"
.LASF69:
	.string	"skip_pixels"
.LASF40:
	.string	"Stack"
.LASF100:
	.string	"used"
.LASF31:
	.string	"_array"
.LASF47:
	.string	"spotExponent"
.LASF112:
	.string	"get_list"
.LASF97:
	.string	"glTexEnvSet"
.LASF149:
	.string	"cur_mode"
.LASF183:
	.string	"fog_color"
.LASF71:
	.string	"pixelStore"
.LASF184:
	.string	"glTexEnvs"
.LASF169:
	.string	"line_width"
.LASF65:
	.string	"swap"
.LASF182:
	.string	"fog_density"
.LASF105:
	.string	"range"
.LASF11:
	.string	"float"
.LASF176:
	.string	"_clearcolor"
.LASF175:
	.string	"copy_material"
.LASF44:
	.string	"ambient"
.LASF167:
	.string	"normNear"
.LASF70:
	.string	"alignment"
.LASF27:
	.string	"GXLightObj"
.LASF22:
	.string	"WGPipe"
.LASF20:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF168:
	.string	"normFar"
.LASF155:
	.string	"lighting"
.LASF103:
	.string	"CallListMan"
.LASF160:
	.string	"cull_mode"
.LASF126:
	.string	"wgPipe"
.LASF66:
	.string	"lsb_first"
.LASF39:
	.string	"elem_size"
.LASF163:
	.string	"fb_max_width"
.LASF74:
	.string	"bias"
.LASF82:
	.string	"maxlod"
.LASF83:
	.string	"lodbias"
.LASF170:
	.string	"point_size"
.LASF92:
	.string	"Aarg"
.LASF189:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF144:
	.string	"_cleardepth"
.LASF33:
	.string	"stride"
.LASF29:
	.string	"TexCoordElement"
.LASF93:
	.string	"AargOp"
.LASF12:
	.string	"long double"
.LASF131:
	.string	"vert"
.LASF94:
	.string	"color"
.LASF8:
	.string	"char"
.LASF121:
	.string	"glDeleteLists"
.LASF87:
	.string	"mode"
.LASF46:
	.string	"specular"
.LASF14:
	.string	"GLenum"
.LASF108:
	.string	"search_gap"
.LASF24:
	.string	"_gx_color"
.LASF162:
	.string	"fb_max_height"
.LASF52:
	.string	"LightObj"
.LASF164:
	.string	"scissor_test"
.LASF86:
	.string	"maxaniso"
.LASF152:
	.string	"curmat"
.LASF127:
	.string	"_tempcolorelement"
.LASF191:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\cube_source\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF42:
	.string	"enabled"
.LASF115:
	.string	"glCallLists"
.LASF98:
	.string	"_callList"
.LASF174:
	.string	"copy_mat_enabled"
.LASF192:
	.string	"GLvoid"
.LASF171:
	.string	"pack"
.LASF89:
	.string	"comAlpha"
.LASF95:
	.string	"rgb_scale"
.LASF129:
	.string	"_temptexcoordelement"
.LASF177:
	.string	"Trans"
.LASF187:
	.string	"listMan"
.LASF107:
	.string	"lock_gap"
.LASF76:
	.string	"_tex_env"
.LASF150:
	.string	"lights"
.LASF77:
	.string	"min_filter"
.LASF132:
	.string	"_normalelements"
.LASF125:
	.string	"glGenLists"
.LASF139:
	.string	"cur_tex"
.LASF45:
	.string	"diffuse"
.LASF188:
	.string	"cur_list"
.LASF90:
	.string	"Carg"
.LASF48:
	.string	"spotCutoff"
.LASF88:
	.string	"comRGB"
.LASF25:
	.string	"GXColor"
.LASF138:
	.string	"_GLtype"
.LASF37:
	.string	"_stack"
.LASF75:
	.string	"ColorTrans"
.LASF63:
	.string	"height"
.LASF21:
	.string	"guVector"
.LASF64:
	.string	"_pixelStore"
.LASF140:
	.string	"cur_tex_client"
.LASF153:
	.string	"gxcullfaceanabled"
.LASF68:
	.string	"skip_rows"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
