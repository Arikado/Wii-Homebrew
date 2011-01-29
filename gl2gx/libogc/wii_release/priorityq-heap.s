	.file	"priorityq-heap.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.type	FloatDown, @function
FloatDown:
.LFB4:
	.file 1 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/priorityq-heap.c"
	.loc 1 100 0
.LVL0:
	stwu 1,-16(1)
.LCFI0:
	.loc 1 106 0
	slwi 0,4,2
	.loc 1 101 0
	lwz 8,0(3)
.LVL1:
	.loc 1 100 0
	stmw 30,8(1)
.LCFI1:
	.loc 1 102 0
	lwz 7,4(3)
.LVL2:
	.loc 1 106 0
	lwzx 31,8,0
.LVL3:
	.loc 1 117 0
	slwi 0,31,3
	add 12,7,0
.LVL4:
.L2:
	.loc 1 109 0
	lwz 6,8(3)
	.loc 1 108 0
	slwi 10,4,1
	.loc 1 109 0
	slwi 9,4,3
	.loc 1 122 0
	slwi 30,4,2
	.loc 1 109 0
	cmpw 7,10,6
	add 11,8,9
	bge- 7,.L3
	lwz 0,4(11)
	lwzx 9,8,9
	slwi 0,0,3
	slwi 9,9,3
	lwzx 11,7,0
	lwzx 9,9,7
	lfd 13,40(11)
	lfd 0,40(9)
	fcmpu 7,13,0
	blt- 7,.L5
	bne- 7,.L3
	lfd 13,48(11)
	lfd 0,48(9)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L3
.L5:
	.loc 1 111 0
	addi 10,10,1
.L3:
	.loc 1 117 0
	cmpw 7,10,6
	.loc 1 116 0
	slwi 0,10,2
	lwzx 5,8,0
	.loc 1 117 0
	slwi 0,5,3
	bgt- 7,.L10
	lwzx 11,7,0
	add 6,7,0
	lwz 9,0(12)
	lfd 13,40(11)
	lfd 0,40(9)
	fcmpu 7,0,13
	blt- 7,.L10
	bne- 7,.L13
	lfd 13,48(9)
	lfd 0,48(11)
	fcmpu 7,13,0
	cror 30,28,30
	bne+ 7,.L13
.L10:
	.loc 1 118 0
	slwi 0,4,2
	stwx 31,8,0
	.loc 1 119 0
	stw 4,4(12)
	.loc 1 126 0
	lmw 30,8(1)
.LVL5:
	addi 1,1,16
	blr
.LVL6:
.L13:
	.loc 1 122 0
	stwx 5,30,8
	.loc 1 123 0
	stw 4,4(6)
	mr 4,10
.LVL7:
	b .L2
.LFE4:
	.size	FloatDown, .-FloatDown
	.align 2
	.type	FloatUp, @function
FloatUp:
.LFB5:
	.loc 1 130 0
.LVL8:
	stwu 1,-16(1)
.LCFI2:
	.loc 1 136 0
	slwi 0,4,2
	.loc 1 130 0
	stw 31,12(1)
.LCFI3:
	.loc 1 131 0
	lwz 8,0(3)
.LVL9:
	.loc 1 132 0
	lwz 7,4(3)
.LVL10:
	.loc 1 136 0
	lwzx 31,8,0
.LVL11:
	.loc 1 140 0
	slwi 0,31,3
	add 3,7,0
.LVL12:
.L19:
	.loc 1 138 0
	srawi 9,4,1
	.loc 1 145 0
	slwi 12,4,2
	.loc 1 140 0
	cmpwi 7,9,0
	.loc 1 139 0
	slwi 0,9,2
	lwzx 5,8,0
	.loc 1 140 0
	beq- 7,.L20
	slwi 0,5,3
	lwz 11,0(3)
	lwzx 10,7,0
	add 6,7,0
	lfd 0,40(11)
	lfd 13,40(10)
	fcmpu 7,13,0
	blt- 7,.L20
	bne- 7,.L23
	lfd 13,48(10)
	lfd 0,48(11)
	fcmpu 7,13,0
	cror 30,28,30
	bne+ 7,.L23
.L20:
	.loc 1 141 0
	slwi 0,4,2
	stwx 31,8,0
	.loc 1 142 0
	stw 4,4(3)
	.loc 1 149 0
	lwz 31,12(1)
.LVL13:
	addi 1,1,16
	blr
.LVL14:
.L23:
	.loc 1 145 0
	stwx 5,12,8
	.loc 1 146 0
	stw 4,4(6)
	mr 4,9
.LVL15:
	b .L19
.LFE5:
	.size	FloatUp, .-FloatUp
	.align 2
	.globl __gl_pqHeapInit
	.type	__gl_pqHeapInit, @function
__gl_pqHeapInit:
.LFB6:
	.loc 1 153 0
.LVL16:
	mflr 0
.LCFI4:
	stwu 1,-16(1)
.LCFI5:
	stmw 30,8(1)
.LCFI6:
	mr 30,3
	stw 0,20(1)
.LCFI7:
	.loc 1 158 0
	lwz 31,8(3)
.LVL17:
	b .L29
.L30:
	.loc 1 159 0
	bl FloatDown
.LVL18:
.LVL19:
.L29:
	.loc 1 158 0
	cmpwi 7,31,0
	.loc 1 159 0
	mr 4,31
	mr 3,30
	.loc 1 158 0
	addi 31,31,-1
	bgt+ 7,.L30
.LVL20:
	.loc 1 161 0
	li 0,1
	stw 0,20(30)
	.loc 1 162 0
	lwz 0,20(1)
	lmw 30,8(1)
.LVL21:
	addi 1,1,16
	mtlr 0
	blr
.LFE6:
	.size	__gl_pqHeapInit, .-__gl_pqHeapInit
	.align 2
	.globl __gl_pqHeapExtractMin
	.type	__gl_pqHeapExtractMin, @function
__gl_pqHeapExtractMin:
.LFB8:
	.loc 1 216 0
.LVL22:
	mflr 0
.LCFI8:
	stwu 1,-16(1)
.LCFI9:
	stw 31,12(1)
.LCFI10:
	stw 0,20(1)
.LCFI11:
	.loc 1 222 0
	lwz 0,8(3)
	.loc 1 217 0
	lwz 7,0(3)
.LVL23:
	.loc 1 222 0
	cmpwi 7,0,0
	.loc 1 218 0
	lwz 10,4(3)
.LVL24:
	.loc 1 219 0
	lwz 6,4(7)
.LVL25:
	.loc 1 220 0
	slwi 8,6,3
	add 5,10,8
	lwzx 31,10,8
.LVL26:
	.loc 1 222 0
	ble- 7,.L34
	.loc 1 223 0
	slwi 0,0,2
	lwzx 0,7,0
	stw 0,4(7)
	.loc 1 224 0
	slwi 9,0,3
	.loc 1 226 0
	li 0,0
	.loc 1 224 0
	add 9,9,10
	.loc 1 226 0
	stwx 0,10,8
	.loc 1 224 0
	li 0,1
	stw 0,4(9)
	.loc 1 227 0
	lwz 0,16(3)
	stw 0,4(5)
	.loc 1 228 0
	stw 6,16(3)
	.loc 1 230 0
	lwz 9,8(3)
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,8(3)
	ble- 7,.L34
	.loc 1 231 0
	li 4,1
	bl FloatDown
.LVL27:
.L34:
	.loc 1 235 0
	lwz 0,20(1)
	mr 3,31
.LVL28:
	lwz 31,12(1)
.LVL29:
	addi 1,1,16
	mtlr 0
	blr
.LFE8:
	.size	__gl_pqHeapExtractMin, .-__gl_pqHeapExtractMin
	.align 2
	.globl __gl_pqHeapDelete
	.type	__gl_pqHeapDelete, @function
__gl_pqHeapDelete:
.LFB9:
	.loc 1 239 0
.LVL30:
	mflr 0
.LCFI12:
	stwu 1,-24(1)
.LCFI13:
	.loc 1 246 0
	slwi 9,4,3
	.loc 1 239 0
	stmw 29,12(1)
.LCFI14:
	mr 29,4
	stw 0,28(1)
.LCFI15:
	.loc 1 239 0
	mr 31,3
	.loc 1 247 0
	lwz 0,8(3)
	.loc 1 241 0
	lwz 10,4(3)
.LVL31:
	.loc 1 240 0
	lwz 11,0(3)
.LVL32:
	.loc 1 247 0
	slwi 0,0,2
	.loc 1 246 0
	add 30,10,9
	.loc 1 247 0
	lwzx 0,11,0
	.loc 1 246 0
	lwz 4,4(30)
.LVL33:
	.loc 1 248 0
	slwi 9,0,3
	add 9,9,10
	.loc 1 247 0
	slwi 8,4,2
	stwx 0,11,8
	.loc 1 248 0
	stw 4,4(9)
	.loc 1 250 0
	lwz 9,8(3)
	addi 9,9,-1
	cmpw 7,4,9
	stw 9,8(3)
	bgt- 7,.L39
	.loc 1 251 0
	cmpwi 7,4,1
	ble- 7,.L41
	rlwinm 9,4,1,0,29
	lwzx 0,11,8
	lwzx 9,9,11
	slwi 0,0,3
	slwi 9,9,3
	lwzx 11,10,0
.LVL34:
	lwzx 9,9,10
	lfd 13,40(11)
	lfd 0,40(9)
	fcmpu 7,0,13
	blt- 7,.L41
	bne- 7,.L44
	lfd 13,48(9)
	lfd 0,48(11)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L44
.LVL35:
.L41:
	.loc 1 252 0
	mr 3,31
	bl FloatDown
.LVL36:
	b .L39
.LVL37:
.L44:
	.loc 1 254 0
	mr 3,31
	bl FloatUp
.LVL38:
.L39:
	.loc 1 257 0
	li 0,0
	stw 0,0(30)
	.loc 1 258 0
	lwz 0,16(31)
	stw 0,4(30)
	.loc 1 259 0
	stw 29,16(31)
	.loc 1 260 0
	lwz 0,28(1)
	lmw 29,12(1)
.LVL39:
	addi 1,1,24
	mtlr 0
	blr
.LFE9:
	.size	__gl_pqHeapDelete, .-__gl_pqHeapDelete
	.align 2
	.globl __gl_pqHeapInsert
	.type	__gl_pqHeapInsert, @function
__gl_pqHeapInsert:
.LFB7:
	.loc 1 168 0
.LVL40:
	mflr 0
.LCFI16:
	stwu 1,-32(1)
.LCFI17:
	stmw 26,8(1)
.LCFI18:
	mr 31,3
	stw 0,36(1)
.LCFI19:
	.loc 1 168 0
	mr 26,4
	.loc 1 172 0
	lwz 9,8(3)
	.loc 1 173 0
	lwz 11,12(3)
	.loc 1 172 0
	addi 30,9,1
.LVL41:
	.loc 1 173 0
	slwi 0,30,1
	.loc 1 172 0
	stw 30,8(3)
	.loc 1 173 0
	cmpw 7,0,11
	ble+ 7,.L50
.LVL42:
.LBB3:
	.loc 1 178 0
	slwi 9,11,1
	.loc 1 174 0
	lwz 29,0(3)
.LVL43:
	.loc 1 179 0
	addi 4,9,1
	.loc 1 178 0
	stw 9,12(3)
	.loc 1 179 0
	slwi 4,4,2
	mr 3,29
.LVL44:
	.loc 1 175 0
	lwz 27,4(31)
.LVL45:
	.loc 1 179 0
	bl realloc
	.loc 1 182 0
	cmpwi 7,3,0
	.loc 1 179 0
	stw 3,0(31)
	.loc 1 182 0
	bne+ 7,.L52
	.loc 1 183 0
	li 28,0
.LVL46:
	stw 29,0(31)
	b .L54
.LVL47:
.L52:
	.loc 1 186 0
	lwz 4,12(31)
	lwz 3,4(31)
	addi 4,4,1
	slwi 4,4,3
	bl realloc
	.loc 1 190 0
	cmpwi 7,3,0
	.loc 1 186 0
	stw 3,4(31)
	.loc 1 190 0
	bne+ 7,.L50
	.loc 1 191 0
	li 28,0
.LVL48:
	stw 27,4(31)
	b .L54
.LVL49:
.L50:
.LBE3:
	.loc 1 196 0
	lwz 28,16(31)
.LVL50:
	cmpwi 7,28,0
	bne- 7,.L56
	mr 28,30
	b .L58
.L56:
	.loc 1 200 0
	lwz 0,4(31)
	slwi 9,28,3
	add 9,9,0
	lwz 0,4(9)
	stw 0,16(31)
.L58:
	.loc 1 203 0
	lwz 9,0(31)
	slwi 0,30,2
	stwx 28,9,0
	.loc 1 204 0
	slwi 0,28,3
	lwz 9,4(31)
	add 9,9,0
	stw 30,4(9)
	.loc 1 205 0
	lwz 9,4(31)
	stwx 26,9,0
	.loc 1 207 0
	lwz 0,20(31)
	cmpwi 7,0,0
	beq- 7,.L54
	.loc 1 208 0
	mr 3,31
	mr 4,30
	bl FloatUp
.LVL51:
.L54:
	.loc 1 212 0
	lwz 0,36(1)
	mr 3,28
	lmw 26,8(1)
.LVL52:
	addi 1,1,32
	mtlr 0
	blr
.LFE7:
	.size	__gl_pqHeapInsert, .-__gl_pqHeapInsert
	.align 2
	.globl __gl_pqHeapDeletePriorityQ
	.type	__gl_pqHeapDeletePriorityQ, @function
__gl_pqHeapDeletePriorityQ:
.LFB3:
	.loc 1 92 0
.LVL53:
	mflr 0
.LCFI20:
	stwu 1,-24(1)
.LCFI21:
	stmw 29,12(1)
.LCFI22:
	mr 29,3
	stw 0,28(1)
.LCFI23:
	.loc 1 93 0
	lwz 3,4(3)
.LVL54:
	bl free
	.loc 1 94 0
	lwz 3,0(29)
	bl free
	.loc 1 95 0
	mr 3,29
	bl free
	.loc 1 96 0
	lwz 0,28(1)
	lmw 29,12(1)
.LVL55:
	addi 1,1,24
	mtlr 0
	blr
.LFE3:
	.size	__gl_pqHeapDeletePriorityQ, .-__gl_pqHeapDeletePriorityQ
	.align 2
	.globl __gl_pqHeapNewPriorityQ
	.type	__gl_pqHeapNewPriorityQ, @function
__gl_pqHeapNewPriorityQ:
.LFB2:
	.loc 1 62 0
.LVL56:
	stwu 1,-24(1)
.LCFI24:
	mflr 0
.LCFI25:
	stmw 29,12(1)
.LCFI26:
	mr 29,3
	.loc 1 63 0
	li 3,28
.LVL57:
	.loc 1 62 0
	stw 0,28(1)
.LCFI27:
	.loc 1 63 0
	bl malloc
	.loc 1 64 0
	li 31,0
.LVL58:
	cmpwi 0,3,0
	beq- 0,.L66
	.loc 1 67 0
	li 0,32
	.loc 1 66 0
	li 30,0
	.loc 1 67 0
	stw 0,12(3)
	.loc 1 63 0
	mr 31,3
	.loc 1 66 0
	stw 30,8(3)
	.loc 1 68 0
	li 3,132
	bl malloc
	.loc 1 69 0
	cmpwi 7,3,0
	.loc 1 68 0
	stw 3,0(31)
	.loc 1 69 0
	beq- 7,.L72
	.loc 1 74 0
	li 3,264
	bl malloc
	.loc 1 75 0
	cmpwi 7,3,0
	.loc 1 74 0
	stw 3,4(31)
	lwz 3,0(31)
	.loc 1 75 0
	bne+ 7,.L69
	.loc 1 76 0
	bl free
.L72:
	.loc 1 77 0
	mr 3,31
	li 31,0
	bl free
	b .L66
.L69:
	.loc 1 85 0
	li 0,1
	.loc 1 83 0
	stw 29,24(31)
	.loc 1 81 0
	stw 30,20(31)
	.loc 1 82 0
	stw 30,16(31)
	.loc 1 85 0
	stw 0,4(3)
	.loc 1 86 0
	lwz 9,4(31)
	stw 30,8(9)
.L66:
	.loc 1 88 0
	lwz 0,28(1)
	mr 3,31
	lmw 29,12(1)
.LVL59:
	addi 1,1,24
	mtlr 0
	blr
.LFE2:
	.size	__gl_pqHeapNewPriorityQ, .-__gl_pqHeapNewPriorityQ
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
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI2-.LFB5
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0x9f
	.uleb128 0x1
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI5-.LFB6
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
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI9-.LFB8
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI11-.LCFI9
	.byte	0x9f
	.uleb128 0x1
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI13-.LFB9
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
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
	.4byte	.LCFI15-.LCFI14
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI17-.LFB7
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
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
	.4byte	.LCFI19-.LCFI18
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI21-.LFB3
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
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
	.4byte	.LCFI23-.LCFI22
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI24-.LFB2
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI26-.LCFI24
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
	.4byte	.LCFI27-.LCFI26
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE14:
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
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB9-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL39-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL38-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL38-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LFB7-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL52-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI24-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/priorityq-heap.h"
	.file 3 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/include/GL/gl.h"
	.file 4 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/mesh.h"
	.section	.debug_info
	.4byte	0x623
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x1
	.4byte	.LASF64
	.4byte	.LASF65
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x2
	.byte	0x56
	.4byte	0x45
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x57
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x58
	.4byte	0x5d
	.uleb128 0x6
	.4byte	.LASF4
	.byte	0x1c
	.byte	0x2
	.byte	0x58
	.4byte	0xcc
	.uleb128 0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x5e
	.4byte	0x11e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x5f
	.4byte	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x60
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"max"
	.byte	0x2
	.byte	0x60
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x61
	.4byte	0x47
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x62
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"leq"
	.byte	0x2
	.byte	0x63
	.4byte	0x13f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.byte	0x2
	.byte	0x5a
	.4byte	0xe3
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x5a
	.4byte	0x47
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x5a
	.4byte	0xcc
	.uleb128 0x9
	.byte	0x8
	.byte	0x2
	.byte	0x5b
	.4byte	0x113
	.uleb128 0x8
	.string	"key"
	.byte	0x2
	.byte	0x5b
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x2
	.byte	0x5b
	.4byte	0x47
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x5b
	.4byte	0xee
	.uleb128 0xa
	.byte	0x4
	.4byte	0xe3
	.uleb128 0xa
	.byte	0x4
	.4byte	0x113
	.uleb128 0xb
	.byte	0x1
	.4byte	0x25
	.4byte	0x13f
	.uleb128 0xc
	.4byte	0x3a
	.uleb128 0xc
	.4byte	0x3a
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x12a
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF18
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF21
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x3
	.byte	0x93
	.4byte	0x14c
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF23
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x3
	.byte	0x9f
	.4byte	0x19d
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF25
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x4
	.byte	0x31
	.4byte	0x1af
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x40
	.byte	0x4
	.byte	0x31
	.4byte	0x228
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x4
	.byte	0x7a
	.4byte	0x33b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x4
	.byte	0x7b
	.4byte	0x33b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x4
	.byte	0x7c
	.4byte	0x341
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4
	.byte	0x7d
	.4byte	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x4
	.byte	0x80
	.4byte	0x347
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"s"
	.byte	0x4
	.byte	0x81
	.4byte	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"t"
	.byte	0x4
	.byte	0x81
	.4byte	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x4
	.byte	0x82
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x4
	.byte	0x32
	.4byte	0x233
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x18
	.byte	0x4
	.byte	0x32
	.4byte	0x2a2
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x4
	.byte	0x86
	.4byte	0x357
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x4
	.byte	0x87
	.4byte	0x357
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x4
	.byte	0x88
	.4byte	0x341
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4
	.byte	0x89
	.4byte	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x4
	.byte	0x8c
	.4byte	0x357
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x4
	.byte	0x8d
	.4byte	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x4
	.byte	0x8e
	.4byte	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x4
	.byte	0x33
	.4byte	0x2ad
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x20
	.byte	0x4
	.byte	0x33
	.4byte	0x32a
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x4
	.byte	0x92
	.4byte	0x341
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"Sym"
	.byte	0x4
	.byte	0x93
	.4byte	0x341
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x4
	.byte	0x94
	.4byte	0x341
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x4
	.byte	0x95
	.4byte	0x341
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"Org"
	.byte	0x4
	.byte	0x96
	.4byte	0x33b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x4
	.byte	0x97
	.4byte	0x357
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x4
	.byte	0x9a
	.4byte	0x35d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x4
	.byte	0x9b
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x4
	.byte	0x35
	.4byte	0x335
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x1
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1a4
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2a2
	.uleb128 0xf
	.4byte	0x192
	.4byte	0x357
	.uleb128 0x10
	.4byte	0x16f
	.byte	0x2
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x228
	.uleb128 0xa
	.byte	0x4
	.4byte	0x32a
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST0
	.4byte	0x3d4
	.uleb128 0x12
	.string	"pq"
	.byte	0x1
	.byte	0x63
	.4byte	0x3d4
	.byte	0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.byte	0x63
	.4byte	0x33
	.byte	0x1
	.byte	0x54
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x65
	.4byte	0x11e
	.byte	0x1
	.byte	0x58
	.uleb128 0x14
	.string	"h"
	.byte	0x1
	.byte	0x66
	.4byte	0x124
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x1
	.byte	0x67
	.4byte	0x47
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	.LASF46
	.byte	0x1
	.byte	0x67
	.4byte	0x47
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0x1
	.byte	0x68
	.4byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x52
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x1
	.byte	0x82
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST2
	.4byte	0x44d
	.uleb128 0x17
	.string	"pq"
	.byte	0x1
	.byte	0x81
	.4byte	0x3d4
	.4byte	.LLST3
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.byte	0x81
	.4byte	0x33
	.byte	0x1
	.byte	0x54
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x83
	.4byte	0x11e
	.byte	0x1
	.byte	0x58
	.uleb128 0x14
	.string	"h"
	.byte	0x1
	.byte	0x84
	.4byte	0x124
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x1
	.byte	0x85
	.4byte	0x47
	.4byte	.LLST4
	.uleb128 0x16
	.4byte	.LASF50
	.byte	0x1
	.byte	0x85
	.4byte	0x47
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x1
	.byte	0x86
	.4byte	0x33
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF53
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST5
	.4byte	0x482
	.uleb128 0x17
	.string	"pq"
	.byte	0x1
	.byte	0x98
	.4byte	0x3d4
	.4byte	.LLST6
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x9a
	.4byte	0x33
	.4byte	.LLST7
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF55
	.byte	0x1
	.byte	0xd8
	.byte	0x1
	.4byte	0x3a
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST8
	.4byte	0x4e6
	.uleb128 0x17
	.string	"pq"
	.byte	0x1
	.byte	0xd7
	.4byte	0x3d4
	.4byte	.LLST9
	.uleb128 0x19
	.string	"n"
	.byte	0x1
	.byte	0xd9
	.4byte	0x11e
	.4byte	.LLST10
	.uleb128 0x19
	.string	"h"
	.byte	0x1
	.byte	0xda
	.4byte	0x124
	.4byte	.LLST11
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0x1
	.byte	0xdb
	.4byte	0x47
	.4byte	.LLST12
	.uleb128 0x19
	.string	"min"
	.byte	0x1
	.byte	0xdc
	.4byte	0x3a
	.4byte	.LLST13
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF54
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST14
	.4byte	0x546
	.uleb128 0x17
	.string	"pq"
	.byte	0x1
	.byte	0xee
	.4byte	0x3d4
	.4byte	.LLST15
	.uleb128 0x1b
	.4byte	.LASF45
	.byte	0x1
	.byte	0xee
	.4byte	0x47
	.4byte	.LLST16
	.uleb128 0x19
	.string	"n"
	.byte	0x1
	.byte	0xf0
	.4byte	0x11e
	.4byte	.LLST17
	.uleb128 0x19
	.string	"h"
	.byte	0x1
	.byte	0xf1
	.4byte	0x124
	.4byte	.LLST18
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x1
	.byte	0xf2
	.4byte	0x33
	.4byte	.LLST19
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF56
	.byte	0x1
	.byte	0xa8
	.byte	0x1
	.4byte	0x47
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST20
	.4byte	0x5c7
	.uleb128 0x17
	.string	"pq"
	.byte	0x1
	.byte	0xa7
	.4byte	0x3d4
	.4byte	.LLST21
	.uleb128 0x1b
	.4byte	.LASF57
	.byte	0x1
	.byte	0xa7
	.4byte	0x3a
	.4byte	.LLST22
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x1
	.byte	0xa9
	.4byte	0x33
	.4byte	.LLST23
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x1
	.byte	0xaa
	.4byte	0x47
	.4byte	.LLST24
	.uleb128 0x1c
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x1
	.byte	0xae
	.4byte	0x11e
	.4byte	.LLST25
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x1
	.byte	0xaf
	.4byte	0x124
	.4byte	.LLST26
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST27
	.4byte	0x5ef
	.uleb128 0x17
	.string	"pq"
	.byte	0x1
	.byte	0x5b
	.4byte	0x3d4
	.4byte	.LLST28
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF62
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.4byte	0x3d4
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST29
	.uleb128 0x17
	.string	"leq"
	.byte	0x1
	.byte	0x3d
	.4byte	0x13f
	.4byte	.LLST30
	.uleb128 0x19
	.string	"pq"
	.byte	0x1
	.byte	0x3f
	.4byte	0x3d4
	.4byte	.LLST31
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
	.uleb128 0x8
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.4byte	0xa3
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x627
	.4byte	0x44d
	.string	"__gl_pqHeapInit"
	.4byte	0x482
	.string	"__gl_pqHeapExtractMin"
	.4byte	0x4e6
	.string	"__gl_pqHeapDelete"
	.4byte	0x546
	.string	"__gl_pqHeapInsert"
	.4byte	0x5c7
	.string	"__gl_pqHeapDeletePriorityQ"
	.4byte	0x5ef
	.string	"__gl_pqHeapNewPriorityQ"
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
.LASF34:
	.string	"trail"
.LASF49:
	.string	"FloatUp"
.LASF53:
	.string	"__gl_pqHeapInit"
.LASF3:
	.string	"PQHeapHandle"
.LASF41:
	.string	"activeRegion"
.LASF38:
	.string	"Onext"
.LASF26:
	.string	"GLUvertex"
.LASF50:
	.string	"hParent"
.LASF16:
	.string	"short int"
.LASF35:
	.string	"marked"
.LASF65:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\freespace2wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF32:
	.string	"pqHandle"
.LASF62:
	.string	"__gl_pqHeapNewPriorityQ"
.LASF52:
	.string	"hMin"
.LASF27:
	.string	"next"
.LASF6:
	.string	"handles"
.LASF5:
	.string	"nodes"
.LASF45:
	.string	"hCurr"
.LASF51:
	.string	"parent"
.LASF60:
	.string	"saveHandles"
.LASF58:
	.string	"free"
.LASF39:
	.string	"Lnext"
.LASF23:
	.string	"float"
.LASF63:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF18:
	.string	"long long int"
.LASF55:
	.string	"__gl_pqHeapExtractMin"
.LASF1:
	.string	"long int"
.LASF61:
	.string	"__gl_pqHeapDeletePriorityQ"
.LASF24:
	.string	"GLdouble"
.LASF56:
	.string	"__gl_pqHeapInsert"
.LASF36:
	.string	"inside"
.LASF12:
	.string	"node"
.LASF54:
	.string	"__gl_pqHeapDelete"
.LASF29:
	.string	"anEdge"
.LASF42:
	.string	"winding"
.LASF37:
	.string	"GLUhalfEdge"
.LASF15:
	.string	"unsigned char"
.LASF2:
	.string	"PQHeapKey"
.LASF30:
	.string	"data"
.LASF8:
	.string	"freeList"
.LASF14:
	.string	"signed char"
.LASF19:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF17:
	.string	"short unsigned int"
.LASF46:
	.string	"hChild"
.LASF21:
	.string	"char"
.LASF43:
	.string	"ActiveRegion"
.LASF64:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/priorityq-heap.c"
.LASF44:
	.string	"curr"
.LASF40:
	.string	"Lface"
.LASF20:
	.string	"long unsigned int"
.LASF22:
	.string	"GLboolean"
.LASF25:
	.string	"double"
.LASF57:
	.string	"keyNew"
.LASF47:
	.string	"child"
.LASF10:
	.string	"handle"
.LASF7:
	.string	"size"
.LASF31:
	.string	"coords"
.LASF4:
	.string	"PriorityQHeap"
.LASF33:
	.string	"GLUface"
.LASF59:
	.string	"saveNodes"
.LASF28:
	.string	"prev"
.LASF11:
	.string	"PQnode"
.LASF9:
	.string	"initialized"
.LASF48:
	.string	"FloatDown"
.LASF13:
	.string	"PQhandleElem"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
