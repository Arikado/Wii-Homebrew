	.file	"priorityq.c"
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
	.globl __gl_pqSortExtractMin
	.type	__gl_pqSortExtractMin, @function
__gl_pqSortExtractMin:
.LFB14:
	.file 2 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/priorityq.c"
	.loc 2 210 0
.LVL40:
	.loc 2 213 0
	lwz 9,12(3)
	.loc 2 210 0
	mr 10,3
	lwz 3,0(3)
.LVL41:
	.loc 2 213 0
	cmpwi 7,9,0
	beq- 7,.L54
	.loc 2 217 0
	lwz 0,8(3)
	.loc 2 216 0
	slwi 9,9,2
	lwz 11,8(10)
	.loc 2 217 0
	cmpwi 7,0,0
	.loc 2 216 0
	add 9,9,11
	lwz 9,-4(9)
	lwz 8,0(9)
.LVL42:
	.loc 2 217 0
	beq- 7,.L62
	.loc 2 219 0
	lwz 9,0(3)
	lwz 11,4(3)
	lwz 0,4(9)
	lfd 13,40(8)
	slwi 0,0,3
	lwzx 9,11,0
	lfd 0,40(9)
	fcmpu 7,0,13
	blt- 7,.L54
	bne- 7,.L62
	lfd 13,48(9)
	lfd 0,48(8)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L62
.L54:
	.loc 2 220 0
	b __gl_pqHeapExtractMin
.LVL43:
.L62:
	.loc 2 224 0
	lwz 9,12(10)
	addi 9,9,-1
	.loc 2 225 0
	cmpwi 7,9,0
	slwi 0,9,2
	.loc 2 224 0
	stw 9,12(10)
	.loc 2 225 0
	ble- 7,.L59
	lwz 9,8(10)
	add 9,0,9
	lwz 9,-4(9)
	lwz 0,0(9)
	cmpwi 7,0,0
	beq+ 7,.L62
.L59:
	.loc 2 227 0
	mr 3,8
	blr
.LFE14:
	.size	__gl_pqSortExtractMin, .-__gl_pqSortExtractMin
	.align 2
	.globl __gl_pqSortMinimum
	.type	__gl_pqSortMinimum, @function
__gl_pqSortMinimum:
.LFB15:
	.loc 2 231 0
.LVL44:
	.loc 2 234 0
	lwz 9,12(3)
	lwz 10,0(3)
	cmpwi 7,9,0
	bne- 7,.L65
	.loc 2 235 0
	lwz 9,0(10)
	lwz 11,4(10)
	lwz 0,4(9)
	slwi 0,0,3
	lwzx 3,11,0
.LVL45:
	blr
.LVL46:
.L65:
	.loc 2 238 0
	lwz 0,8(10)
	.loc 2 237 0
	slwi 9,9,2
	lwz 11,8(3)
	.loc 2 238 0
	cmpwi 7,0,0
	.loc 2 237 0
	add 9,9,11
	lwz 9,-4(9)
	lwz 8,0(9)
.LVL47:
	.loc 2 238 0
	beq- 7,.L68
	.loc 2 239 0
	lwz 9,0(10)
	lwz 11,4(10)
	lwz 0,4(9)
	.loc 2 240 0
	lfd 13,40(8)
	.loc 2 239 0
	slwi 0,0,3
	lwzx 3,11,0
.LVL48:
	.loc 2 240 0
	lfd 0,40(3)
	fcmpu 7,0,13
	bltlr- 7
	bne- 7,.L68
	lfd 13,48(3)
	lfd 0,48(8)
	fcmpu 7,13,0
	cror 30,28,30
	beqlr+ 7
.LVL49:
.L68:
	mr 3,8
.LVL50:
.LVL51:
	.loc 2 245 0
	blr
.LFE15:
	.size	__gl_pqSortMinimum, .-__gl_pqSortMinimum
	.align 2
	.globl __gl_pqSortIsEmpty
	.type	__gl_pqSortIsEmpty, @function
__gl_pqSortIsEmpty:
.LFB16:
	.loc 2 249 0
.LVL52:
	.loc 2 250 0
	lwz 0,12(3)
	.loc 2 249 0
	mr 9,3
	.loc 2 250 0
	li 3,0
.LVL53:
	cmpwi 7,0,0
	bnelr- 7
	lwz 9,0(9)
.LVL54:
	lwz 0,8(9)
	cntlzw 3,0
	srwi 3,3,5
	.loc 2 251 0
	blr
.LFE16:
	.size	__gl_pqSortIsEmpty, .-__gl_pqSortIsEmpty
	.align 2
	.globl __gl_pqSortDelete
	.type	__gl_pqSortDelete, @function
__gl_pqSortDelete:
.LFB17:
	.loc 2 255 0
.LVL55:
	.loc 2 256 0
	mr. 0,4
	blt- 0,.L80
.LVL56:
	.loc 2 257 0
	lwz 3,0(3)
.LVL57:
	b __gl_pqHeapDelete
.LVL58:
.L80:
	.loc 2 263 0
	nor 0,0,0
.LVL59:
	lwz 11,4(3)
	slwi 0,0,2
	li 9,0
	stwx 9,11,0
	b .L82
.L83:
	.loc 2 265 0
	stw 11,12(3)
.L82:
	.loc 2 264 0
	lwz 9,12(3)
	cmpwi 7,9,0
	slwi 0,9,2
	.loc 2 265 0
	addi 11,9,-1
	.loc 2 264 0
	blelr- 7
	lwz 9,8(3)
	add 9,0,9
	lwz 9,-4(9)
	lwz 0,0(9)
	cmpwi 7,0,0
	beq+ 7,.L83
	blr
.LFE17:
	.size	__gl_pqSortDelete, .-__gl_pqSortDelete
	.align 2
	.globl __gl_pqHeapInsert
	.type	__gl_pqHeapInsert, @function
__gl_pqHeapInsert:
.LFB7:
	.loc 1 168 0
.LVL60:
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
.LVL61:
	.loc 1 173 0
	slwi 0,30,1
	.loc 1 172 0
	stw 30,8(3)
	.loc 1 173 0
	cmpw 7,0,11
	ble+ 7,.L88
.LVL62:
.LBB3:
	.loc 1 178 0
	slwi 9,11,1
	.loc 1 174 0
	lwz 29,0(3)
.LVL63:
	.loc 1 179 0
	addi 4,9,1
	.loc 1 178 0
	stw 9,12(3)
	.loc 1 179 0
	slwi 4,4,2
	mr 3,29
.LVL64:
	.loc 1 175 0
	lwz 27,4(31)
.LVL65:
	.loc 1 179 0
	bl realloc
	.loc 1 182 0
	cmpwi 7,3,0
	.loc 1 179 0
	stw 3,0(31)
	.loc 1 182 0
	bne+ 7,.L90
	.loc 1 183 0
	li 28,0
.LVL66:
	stw 29,0(31)
	b .L92
.LVL67:
.L90:
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
	bne+ 7,.L88
	.loc 1 191 0
	li 28,0
.LVL68:
	stw 27,4(31)
	b .L92
.LVL69:
.L88:
.LBE3:
	.loc 1 196 0
	lwz 28,16(31)
.LVL70:
	cmpwi 7,28,0
	bne- 7,.L94
	mr 28,30
	b .L96
.L94:
	.loc 1 200 0
	lwz 0,4(31)
	slwi 9,28,3
	add 9,9,0
	lwz 0,4(9)
	stw 0,16(31)
.L96:
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
	beq- 7,.L92
	.loc 1 208 0
	mr 3,31
	mr 4,30
	bl FloatUp
.LVL71:
.L92:
	.loc 1 212 0
	lwz 0,36(1)
	mr 3,28
	lmw 26,8(1)
.LVL72:
	addi 1,1,32
	mtlr 0
	blr
.LFE7:
	.size	__gl_pqHeapInsert, .-__gl_pqHeapInsert
	.align 2
	.globl __gl_pqSortInsert
	.type	__gl_pqSortInsert, @function
__gl_pqSortInsert:
.LFB13:
	.loc 2 181 0
.LVL73:
	mflr 0
.LCFI20:
	stwu 1,-24(1)
.LCFI21:
	stmw 28,8(1)
.LCFI22:
	mr 31,3
	stw 0,28(1)
.LCFI23:
	.loc 2 181 0
	mr 28,4
	.loc 2 184 0
	lwz 0,20(3)
	cmpwi 7,0,0
	beq+ 7,.L100
.LVL74:
	.loc 2 206 0
	lwz 0,28(1)
	.loc 2 185 0
	lwz 3,0(3)
.LVL75:
	.loc 2 206 0
	mtlr 0
	lmw 28,8(1)
.LVL76:
	addi 1,1,24
	.loc 2 185 0
	b __gl_pqHeapInsert
.LVL77:
.L100:
	.loc 2 187 0
	lwz 30,12(3)
.LVL78:
	.loc 2 188 0
	lwz 4,16(3)
	addi 0,30,1
	cmpw 7,0,4
	stw 0,12(3)
	blt+ 7,.L102
.LBB5:
	.loc 2 192 0
	slwi 0,4,1
	.loc 2 189 0
	lwz 29,4(3)
.LVL79:
	.loc 2 192 0
	stw 0,16(3)
	.loc 2 193 0
	slwi 4,4,3
	mr 3,29
.LVL80:
	bl realloc
	.loc 2 196 0
	cmpwi 7,3,0
	.loc 2 193 0
	stw 3,4(31)
	.loc 2 196 0
	bne+ 7,.L102
	.loc 2 197 0
	stw 29,4(31)
	b .L105
.LVL81:
.L102:
.LBE5:
	.loc 2 202 0
	lwz 9,4(31)
	slwi 0,30,2
	.loc 2 205 0
	nor 3,30,30
	.loc 2 202 0
	stwx 28,9,0
.L105:
	.loc 2 206 0
	lwz 0,28(1)
	lmw 28,8(1)
.LVL82:
	addi 1,1,24
	mtlr 0
	blr
.LFE13:
	.size	__gl_pqSortInsert, .-__gl_pqSortInsert
	.align 2
	.globl __gl_pqSortInit
	.type	__gl_pqSortInit, @function
__gl_pqSortInit:
.LFB12:
	.loc 2 99 0
.LVL83:
	mflr 0
.LCFI24:
	stwu 1,-424(1)
.LCFI25:
	stmw 28,408(1)
.LCFI26:
	mr 31,3
	stw 0,428(1)
.LCFI27:
	.loc 2 111 0
	lwz 3,12(3)
.LVL84:
	addi 3,3,1
	slwi 3,3,2
	bl malloc
	.loc 2 117 0
	li 0,0
	cmpwi 7,3,0
	.loc 2 111 0
	stw 3,8(31)
	.loc 2 117 0
	beq- 7,.L110
	.loc 2 120 0
	lwz 9,12(31)
	.loc 2 121 0
	mr 11,3
.LVL85:
	lwz 10,4(31)
.LVL86:
	.loc 2 120 0
	slwi 9,9,2
	add 9,3,9
	addi 9,9,-4
.LVL87:
	b .L111
.L112:
	.loc 2 122 0
	stw 10,0(11)
	.loc 2 121 0
	addi 10,10,4
	addi 11,11,4
.L111:
	cmplw 7,11,9
	ble+ 7,.L112
	.loc 2 128 0
	lis 30,0x7830
.LVL88:
	.loc 2 133 0
	lis 29,0x5bc1
	.loc 2 128 0
	ori 30,30,61635
	.loc 2 133 0
	ori 29,29,40717
	.loc 2 128 0
	addi 12,1,16
.LVL89:
	.loc 2 129 0
	addi 28,1,8
	.loc 2 128 0
	stw 3,8(1)
	stw 9,12(1)
	b .L114
.LVL90:
.L115:
	.loc 2 131 0
	lwz 5,4(9)
	mr 6,12
	.loc 2 130 0
	lwz 7,-8(12)
	b .L116
.LVL91:
.L117:
	.loc 2 133 0
	mullw 11,30,29
	.loc 2 134 0
	subf 9,7,5
	srawi 9,9,2
	addi 9,9,1
	.loc 2 138 0
	addi 10,7,-4
.LVL92:
	.loc 2 133 0
	addi 30,11,1
	.loc 2 136 0
	lwz 11,0(7)
	.loc 2 134 0
	divwu 0,30,9
	.loc 2 139 0
	addi 8,5,4
	.loc 2 134 0
	mullw 0,0,9
	subf 0,0,30
	slwi 0,0,2
	.loc 2 135 0
	lwzx 12,7,0
.LVL93:
	.loc 2 136 0
	stwx 11,7,0
	.loc 2 137 0
	stw 12,0(7)
.L153:
	.loc 2 141 0
	lwzu 3,4(10)
	lwz 11,0(12)
	lwz 9,0(3)
	lfd 12,40(11)
	lfd 0,40(9)
	fcmpu 7,0,12
	blt- 7,.L154
	bne- 7,.L153
	lfd 13,48(9)
	lfd 0,48(11)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L153
.L154:
	.loc 2 142 0
	lwzu 4,-4(8)
	lwz 9,0(4)
	lfd 0,40(9)
	fcmpu 7,12,0
	blt- 7,.L124
	bne- 7,.L154
	lfd 13,48(9)
	lfd 0,48(11)
	fcmpu 7,0,13
	cror 30,28,30
	bne+ 7,.L154
.L124:
	.loc 2 144 0
	cmplw 7,10,8
.LBB8:
	.loc 2 143 0
	stw 4,0(10)
	stw 3,0(8)
.LBE8:
	.loc 2 144 0
	blt+ 7,.L153
	.loc 2 146 0
	subf 9,7,10
	subf 0,8,5
	srawi 9,9,2
	srawi 0,0,2
	cmpw 7,9,0
.LBB9:
	.loc 2 145 0
	lwz 0,0(10)
.LVL94:
	addi 9,8,4
	stw 3,0(10)
	stw 0,0(8)
	addi 0,10,-4
.LVL95:
.LBE9:
	.loc 2 146 0
	bge- 7,.L130
	.loc 2 147 0
	stw 5,-4(6)
	.loc 2 148 0
	mr 5,0
	.loc 2 147 0
	stw 9,-8(6)
	b .L132
.L130:
	.loc 2 150 0
	stw 0,-4(6)
	stw 7,-8(6)
	.loc 2 151 0
	mr 7,9
.L132:
	addi 6,6,8
.LVL96:
.L116:
	.loc 2 132 0
	addi 0,7,40
	.loc 2 151 0
	addi 12,6,-8
.LVL97:
	.loc 2 132 0
	cmplw 7,5,0
	bgt+ 7,.L117
	.loc 2 155 0
	addi 11,7,4
.LVL98:
	b .L134
.LVL99:
.L135:
	.loc 2 156 0
	lwz 3,0(11)
	mr 9,11
	b .L136
.LVL100:
.L137:
	.loc 2 158 0
	stw 6,4(4)
	mr 9,4
.L136:
	.loc 2 157 0
	cmplw 7,9,7
	addi 4,9,-4
.LVL101:
	ble- 7,.L138
	lwz 6,-4(9)
	lwz 10,0(3)
	lwz 8,0(6)
	lfd 13,40(10)
	lfd 0,40(8)
	fcmpu 7,13,0
	blt- 7,.L138
.LVL102:
	bne- 7,.L137
	lfd 13,48(10)
	lfd 0,48(8)
	fcmpu 7,13,0
	cror 30,28,30
	bne+ 7,.L137
.LVL103:
.L138:
	.loc 2 160 0
	stw 3,0(9)
	.loc 2 155 0
	addi 11,11,4
.LVL104:
.L134:
	cmplw 7,11,5
	ble- 7,.L135
.LVL105:
.L114:
	.loc 2 129 0
	addi 9,12,-8
.LVL106:
	cmplw 7,9,28
	bge+ 7,.L115
	.loc 2 163 0
	lwz 0,12(31)
	.loc 2 165 0
	lwz 3,0(31)
	.loc 2 163 0
	stw 0,16(31)
	.loc 2 164 0
	li 0,1
	stw 0,20(31)
	.loc 2 165 0
	bl __gl_pqHeapInit
.LVL107:
	li 0,1
.L110:
	.loc 2 176 0
	mr 3,0
	lwz 0,428(1)
	lmw 28,408(1)
.LVL108:
	addi 1,1,424
	mtlr 0
	blr
.LFE12:
	.size	__gl_pqSortInit, .-__gl_pqSortInit
	.align 2
	.globl __gl_pqHeapDeletePriorityQ
	.type	__gl_pqHeapDeletePriorityQ, @function
__gl_pqHeapDeletePriorityQ:
.LFB3:
	.loc 1 92 0
.LVL109:
	mflr 0
.LCFI28:
	stwu 1,-24(1)
.LCFI29:
	stmw 29,12(1)
.LCFI30:
	mr 29,3
	stw 0,28(1)
.LCFI31:
	.loc 1 93 0
	lwz 3,4(3)
.LVL110:
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
.LVL111:
	addi 1,1,24
	mtlr 0
	blr
.LFE3:
	.size	__gl_pqHeapDeletePriorityQ, .-__gl_pqHeapDeletePriorityQ
	.align 2
	.globl __gl_pqSortDeletePriorityQ
	.type	__gl_pqSortDeletePriorityQ, @function
__gl_pqSortDeletePriorityQ:
.LFB11:
	.loc 2 84 0
.LVL112:
	mflr 0
.LCFI32:
	stwu 1,-16(1)
.LCFI33:
	stw 31,12(1)
.LCFI34:
	mr 31,3
	stw 0,20(1)
.LCFI35:
	.loc 2 86 0
	lwz 3,0(3)
.LVL113:
	cmpwi 7,3,0
	beq- 7,.L158
	bl __gl_pqHeapDeletePriorityQ
.L158:
	.loc 2 87 0
	lwz 3,8(31)
	cmpwi 7,3,0
	beq- 7,.L160
	bl free
.L160:
	.loc 2 88 0
	lwz 3,4(31)
	cmpwi 7,3,0
	beq- 7,.L162
	bl free
.L162:
	.loc 2 89 0
	mr 3,31
	bl free
	.loc 2 90 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL114:
	addi 1,1,16
	mtlr 0
	blr
.LFE11:
	.size	__gl_pqSortDeletePriorityQ, .-__gl_pqSortDeletePriorityQ
	.align 2
	.globl __gl_pqHeapNewPriorityQ
	.type	__gl_pqHeapNewPriorityQ, @function
__gl_pqHeapNewPriorityQ:
.LFB2:
	.loc 1 62 0
.LVL115:
	stwu 1,-24(1)
.LCFI36:
	mflr 0
.LCFI37:
	stmw 29,12(1)
.LCFI38:
	mr 29,3
	.loc 1 63 0
	li 3,28
.LVL116:
	.loc 1 62 0
	stw 0,28(1)
.LCFI39:
	.loc 1 63 0
	bl malloc
	.loc 1 64 0
	li 31,0
.LVL117:
	cmpwi 0,3,0
	beq- 0,.L168
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
	beq- 7,.L174
	.loc 1 74 0
	li 3,264
	bl malloc
	.loc 1 75 0
	cmpwi 7,3,0
	.loc 1 74 0
	stw 3,4(31)
	lwz 3,0(31)
	.loc 1 75 0
	bne+ 7,.L171
	.loc 1 76 0
	bl free
.L174:
	.loc 1 77 0
	mr 3,31
	li 31,0
	bl free
	b .L168
.L171:
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
.L168:
	.loc 1 88 0
	lwz 0,28(1)
	mr 3,31
	lmw 29,12(1)
.LVL118:
	addi 1,1,24
	mtlr 0
	blr
.LFE2:
	.size	__gl_pqHeapNewPriorityQ, .-__gl_pqHeapNewPriorityQ
	.align 2
	.globl __gl_pqSortNewPriorityQ
	.type	__gl_pqSortNewPriorityQ, @function
__gl_pqSortNewPriorityQ:
.LFB10:
	.loc 2 58 0
.LVL119:
	stwu 1,-16(1)
.LCFI40:
	mflr 0
.LCFI41:
	stmw 30,8(1)
.LCFI42:
	mr 30,3
	.loc 2 59 0
	li 3,28
.LVL120:
	.loc 2 58 0
	stw 0,20(1)
.LCFI43:
	.loc 2 59 0
	bl malloc
	.loc 2 60 0
	li 31,0
.LVL121:
	mr. 0,3
	beq- 0,.L178
	.loc 2 62 0
	mr 3,30
	.loc 2 59 0
	mr 31,0
	.loc 2 62 0
	bl __gl_pqHeapNewPriorityQ
	.loc 2 63 0
	cmpwi 7,3,0
	.loc 2 62 0
	stw 3,0(31)
	.loc 2 63 0
	beq- 7,.L184
	.loc 2 68 0
	li 3,128
	bl malloc
	.loc 2 69 0
	cmpwi 7,3,0
	.loc 2 68 0
	stw 3,4(31)
	.loc 2 69 0
	bne+ 7,.L181
	.loc 2 70 0
	lwz 3,0(31)
	bl __gl_pqHeapDeletePriorityQ
.L184:
	.loc 2 71 0
	mr 3,31
	li 31,0
	bl free
	b .L178
.L181:
	.loc 2 75 0
	li 9,0
	.loc 2 76 0
	li 0,32
	stw 0,16(31)
	.loc 2 77 0
	stw 9,20(31)
	.loc 2 78 0
	stw 30,24(31)
	.loc 2 75 0
	stw 9,12(31)
.L178:
	.loc 2 80 0
	lwz 0,20(1)
	mr 3,31
	lmw 30,8(1)
.LVL122:
	addi 1,1,16
	mtlr 0
	blr
.LFE10:
	.size	__gl_pqSortNewPriorityQ, .-__gl_pqSortNewPriorityQ
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
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
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI21-.LFB13
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
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI25-.LFB12
	.byte	0xe
	.uleb128 0x1a8
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
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
	.4byte	.LCFI27-.LCFI26
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI29-.LFB3
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
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
	.4byte	.LCFI31-.LCFI30
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI33-.LFB11
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI36-.LFB2
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI38-.LCFI36
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
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI40-.LFB10
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI42-.LCFI40
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE30:
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
.LLST21:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL43-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL59-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST31:
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
.LLST32:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL72-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LFB13-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LFB12-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI25-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 424
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI29-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LFB11-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI33-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI36-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI40-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST62:
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
	.file 3 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/priorityq-heap.h"
	.file 4 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/include/GL/gl.h"
	.file 5 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/mesh.h"
	.file 6 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/priorityq-sort.h"
	.section	.debug_info
	.4byte	0x994
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x1
	.4byte	.LASF83
	.4byte	.LASF84
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
	.byte	0x3
	.byte	0x56
	.4byte	0x3d
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x3
	.byte	0x57
	.4byte	0x70
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x3
	.byte	0x58
	.4byte	0x98
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x1c
	.byte	0x3
	.byte	0x58
	.4byte	0x107
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x3
	.byte	0x5e
	.4byte	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x3
	.byte	0x5f
	.4byte	0x15f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x3
	.byte	0x60
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"max"
	.byte	0x3
	.byte	0x60
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x3
	.byte	0x61
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x3
	.byte	0x62
	.4byte	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"leq"
	.byte	0x3
	.byte	0x63
	.4byte	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.byte	0x3
	.byte	0x5a
	.4byte	0x11e
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x3
	.byte	0x5a
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x3
	.byte	0x5a
	.4byte	0x107
	.uleb128 0xa
	.byte	0x8
	.byte	0x3
	.byte	0x5b
	.4byte	0x14e
	.uleb128 0x9
	.string	"key"
	.byte	0x3
	.byte	0x5b
	.4byte	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x3
	.byte	0x5b
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x3
	.byte	0x5b
	.4byte	0x129
	.uleb128 0xb
	.byte	0x4
	.4byte	0x11e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x14e
	.uleb128 0xc
	.byte	0x1
	.4byte	0x4d
	.4byte	0x17a
	.uleb128 0xd
	.4byte	0x77
	.uleb128 0xd
	.4byte	0x77
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x165
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x4
	.byte	0x93
	.4byte	0x2f
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF23
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x4
	.byte	0x9f
	.4byte	0x19d
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF25
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x5
	.byte	0x31
	.4byte	0x1af
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x40
	.byte	0x5
	.byte	0x31
	.4byte	0x228
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x5
	.byte	0x7a
	.4byte	0x33b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x5
	.byte	0x7b
	.4byte	0x33b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x5
	.byte	0x7c
	.4byte	0x341
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x5
	.byte	0x7d
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x5
	.byte	0x80
	.4byte	0x347
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"s"
	.byte	0x5
	.byte	0x81
	.4byte	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"t"
	.byte	0x5
	.byte	0x81
	.4byte	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x5
	.byte	0x82
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x5
	.byte	0x32
	.4byte	0x233
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x18
	.byte	0x5
	.byte	0x32
	.4byte	0x2a2
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x5
	.byte	0x86
	.4byte	0x357
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x5
	.byte	0x87
	.4byte	0x357
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x5
	.byte	0x88
	.4byte	0x341
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x5
	.byte	0x89
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x5
	.byte	0x8c
	.4byte	0x357
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x5
	.byte	0x8d
	.4byte	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x5
	.byte	0x8e
	.4byte	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x5
	.byte	0x33
	.4byte	0x2ad
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x20
	.byte	0x5
	.byte	0x33
	.4byte	0x32a
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x5
	.byte	0x92
	.4byte	0x341
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"Sym"
	.byte	0x5
	.byte	0x93
	.4byte	0x341
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x5
	.byte	0x94
	.4byte	0x341
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x5
	.byte	0x95
	.4byte	0x341
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"Org"
	.byte	0x5
	.byte	0x96
	.4byte	0x33b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x5
	.byte	0x97
	.4byte	0x357
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x5
	.byte	0x9a
	.4byte	0x35d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x5
	.byte	0x9b
	.4byte	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x5
	.byte	0x35
	.4byte	0x335
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x1
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1a4
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2a2
	.uleb128 0xf
	.4byte	0x192
	.4byte	0x357
	.uleb128 0x10
	.4byte	0x2c
	.byte	0x2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x228
	.uleb128 0xb
	.byte	0x4
	.4byte	0x32a
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x6
	.byte	0x64
	.4byte	0x77
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x6
	.byte	0x65
	.4byte	0x82
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x6
	.byte	0x66
	.4byte	0x384
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x1c
	.byte	0x6
	.byte	0x66
	.4byte	0x3f3
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x6
	.byte	0x69
	.4byte	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x6
	.byte	0x6a
	.4byte	0x3f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x6
	.byte	0x6b
	.4byte	0x3ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x6
	.byte	0x6c
	.4byte	0x36e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"max"
	.byte	0x6
	.byte	0x6c
	.4byte	0x36e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x6
	.byte	0x6d
	.4byte	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"leq"
	.byte	0x6
	.byte	0x6e
	.4byte	0x41a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8d
	.uleb128 0xb
	.byte	0x4
	.4byte	0x363
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3f9
	.uleb128 0xc
	.byte	0x1
	.4byte	0x4d
	.4byte	0x41a
	.uleb128 0xd
	.4byte	0x363
	.uleb128 0xd
	.4byte	0x363
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x405
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST0
	.4byte	0x491
	.uleb128 0x12
	.string	"pq"
	.byte	0x1
	.byte	0x63
	.4byte	0x3f3
	.byte	0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x1
	.byte	0x63
	.4byte	0x70
	.byte	0x1
	.byte	0x54
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x65
	.4byte	0x159
	.byte	0x1
	.byte	0x58
	.uleb128 0x14
	.string	"h"
	.byte	0x1
	.byte	0x66
	.4byte	0x15f
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0x1
	.byte	0x67
	.4byte	0x82
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x1
	.byte	0x67
	.4byte	0x82
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0x1
	.byte	0x68
	.4byte	0x70
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0x1
	.byte	0x82
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST2
	.4byte	0x504
	.uleb128 0x17
	.string	"pq"
	.byte	0x1
	.byte	0x81
	.4byte	0x3f3
	.4byte	.LLST3
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x1
	.byte	0x81
	.4byte	0x70
	.byte	0x1
	.byte	0x54
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x83
	.4byte	0x159
	.byte	0x1
	.byte	0x58
	.uleb128 0x14
	.string	"h"
	.byte	0x1
	.byte	0x84
	.4byte	0x15f
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0x1
	.byte	0x85
	.4byte	0x82
	.4byte	.LLST4
	.uleb128 0x16
	.4byte	.LASF56
	.byte	0x1
	.byte	0x85
	.4byte	0x82
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.4byte	.LASF57
	.byte	0x1
	.byte	0x86
	.4byte	0x70
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF59
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST5
	.4byte	0x539
	.uleb128 0x17
	.string	"pq"
	.byte	0x1
	.byte	0x98
	.4byte	0x3f3
	.4byte	.LLST6
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x9a
	.4byte	0x70
	.4byte	.LLST7
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1
	.byte	0xd8
	.byte	0x1
	.4byte	0x77
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST8
	.4byte	0x59d
	.uleb128 0x17
	.string	"pq"
	.byte	0x1
	.byte	0xd7
	.4byte	0x3f3
	.4byte	.LLST9
	.uleb128 0x19
	.string	"n"
	.byte	0x1
	.byte	0xd9
	.4byte	0x159
	.4byte	.LLST10
	.uleb128 0x19
	.string	"h"
	.byte	0x1
	.byte	0xda
	.4byte	0x15f
	.4byte	.LLST11
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x1
	.byte	0xdb
	.4byte	0x82
	.4byte	.LLST12
	.uleb128 0x19
	.string	"min"
	.byte	0x1
	.byte	0xdc
	.4byte	0x77
	.4byte	.LLST13
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF60
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST14
	.4byte	0x5fd
	.uleb128 0x17
	.string	"pq"
	.byte	0x1
	.byte	0xee
	.4byte	0x3f3
	.4byte	.LLST15
	.uleb128 0x1b
	.4byte	.LASF51
	.byte	0x1
	.byte	0xee
	.4byte	0x82
	.4byte	.LLST16
	.uleb128 0x19
	.string	"n"
	.byte	0x1
	.byte	0xf0
	.4byte	0x159
	.4byte	.LLST17
	.uleb128 0x19
	.string	"h"
	.byte	0x1
	.byte	0xf1
	.4byte	0x15f
	.4byte	.LLST18
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x1
	.byte	0xf2
	.4byte	0x70
	.4byte	.LLST19
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF62
	.byte	0x2
	.byte	0xd2
	.byte	0x1
	.4byte	0x363
	.4byte	.LFB14
	.4byte	.LFE14
	.byte	0x1
	.byte	0x51
	.4byte	0x641
	.uleb128 0x17
	.string	"pq"
	.byte	0x2
	.byte	0xd1
	.4byte	0x641
	.4byte	.LLST21
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x2
	.byte	0xd3
	.4byte	0x363
	.4byte	.LLST22
	.uleb128 0x1d
	.4byte	.LASF65
	.byte	0x2
	.byte	0xd3
	.4byte	0x363
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x379
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF64
	.byte	0x2
	.byte	0xe7
	.byte	0x1
	.4byte	0x363
	.4byte	.LFB15
	.4byte	.LFE15
	.byte	0x1
	.byte	0x51
	.4byte	0x68d
	.uleb128 0x17
	.string	"pq"
	.byte	0x2
	.byte	0xe6
	.4byte	0x641
	.4byte	.LLST24
	.uleb128 0x16
	.4byte	.LASF63
	.byte	0x2
	.byte	0xe8
	.4byte	0x363
	.byte	0x1
	.byte	0x58
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x2
	.byte	0xe8
	.4byte	0x363
	.4byte	.LLST25
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF66
	.byte	0x2
	.byte	0xf9
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB16
	.4byte	.LFE16
	.byte	0x1
	.byte	0x51
	.4byte	0x6b7
	.uleb128 0x17
	.string	"pq"
	.byte	0x2
	.byte	0xf8
	.4byte	0x641
	.4byte	.LLST27
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF67
	.byte	0x2
	.byte	0xff
	.byte	0x1
	.4byte	.LFB17
	.4byte	.LFE17
	.byte	0x1
	.byte	0x51
	.4byte	0x6ec
	.uleb128 0x17
	.string	"pq"
	.byte	0x2
	.byte	0xfe
	.4byte	0x641
	.4byte	.LLST29
	.uleb128 0x1b
	.4byte	.LASF50
	.byte	0x2
	.byte	0xfe
	.4byte	0x36e
	.4byte	.LLST30
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF68
	.byte	0x1
	.byte	0xa8
	.byte	0x1
	.4byte	0x82
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST31
	.4byte	0x76d
	.uleb128 0x17
	.string	"pq"
	.byte	0x1
	.byte	0xa7
	.4byte	0x3f3
	.4byte	.LLST32
	.uleb128 0x1b
	.4byte	.LASF69
	.byte	0x1
	.byte	0xa7
	.4byte	0x77
	.4byte	.LLST33
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x1
	.byte	0xa9
	.4byte	0x70
	.4byte	.LLST34
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x1
	.byte	0xaa
	.4byte	0x82
	.4byte	.LLST35
	.uleb128 0x1f
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x1
	.byte	0xae
	.4byte	0x159
	.4byte	.LLST36
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x1
	.byte	0xaf
	.4byte	0x15f
	.4byte	.LLST37
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF73
	.byte	0x2
	.byte	0xb5
	.byte	0x1
	.4byte	0x36e
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST38
	.4byte	0x7d0
	.uleb128 0x17
	.string	"pq"
	.byte	0x2
	.byte	0xb4
	.4byte	0x641
	.4byte	.LLST39
	.uleb128 0x1b
	.4byte	.LASF69
	.byte	0x2
	.byte	0xb4
	.4byte	0x363
	.4byte	.LLST40
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x2
	.byte	0xb6
	.4byte	0x70
	.4byte	.LLST41
	.uleb128 0x1f
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x2
	.byte	0xbd
	.4byte	0x3f9
	.4byte	.LLST42
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF75
	.byte	0x2
	.byte	0x63
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST43
	.4byte	0x8bf
	.uleb128 0x17
	.string	"pq"
	.byte	0x2
	.byte	0x62
	.4byte	0x641
	.4byte	.LLST44
	.uleb128 0x19
	.string	"p"
	.byte	0x2
	.byte	0x64
	.4byte	0x3ff
	.4byte	.LLST45
	.uleb128 0x19
	.string	"r"
	.byte	0x2
	.byte	0x64
	.4byte	0x3ff
	.4byte	.LLST46
	.uleb128 0x19
	.string	"i"
	.byte	0x2
	.byte	0x64
	.4byte	0x3ff
	.4byte	.LLST47
	.uleb128 0x19
	.string	"j"
	.byte	0x2
	.byte	0x64
	.4byte	0x3ff
	.4byte	.LLST48
	.uleb128 0x19
	.string	"piv"
	.byte	0x2
	.byte	0x64
	.4byte	0x3f9
	.4byte	.LLST49
	.uleb128 0xa
	.byte	0x8
	.byte	0x2
	.byte	0x65
	.4byte	0x85f
	.uleb128 0x9
	.string	"p"
	.byte	0x2
	.byte	0x65
	.4byte	0x3ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"r"
	.byte	0x2
	.byte	0x65
	.4byte	0x3ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x2
	.byte	0x65
	.4byte	0x8bf
	.byte	0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x19
	.string	"top"
	.byte	0x2
	.byte	0x65
	.4byte	0x8cf
	.4byte	.LLST50
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x2
	.byte	0x66
	.4byte	0x62
	.4byte	.LLST51
	.uleb128 0x20
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0x8a5
	.uleb128 0x21
	.string	"tmp"
	.byte	0x2
	.byte	0x8f
	.4byte	0x3f9
	.byte	0x0
	.uleb128 0x1f
	.4byte	.LBB9
	.4byte	.LBE9
	.uleb128 0x19
	.string	"tmp"
	.byte	0x2
	.byte	0x91
	.4byte	0x3f9
	.4byte	.LLST52
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.4byte	0x83e
	.4byte	0x8cf
	.uleb128 0x10
	.4byte	0x2c
	.byte	0x31
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x83e
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF78
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST53
	.4byte	0x8fd
	.uleb128 0x17
	.string	"pq"
	.byte	0x1
	.byte	0x5b
	.4byte	0x3f3
	.4byte	.LLST54
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF79
	.byte	0x2
	.byte	0x54
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST55
	.4byte	0x925
	.uleb128 0x17
	.string	"pq"
	.byte	0x2
	.byte	0x53
	.4byte	0x641
	.4byte	.LLST56
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF80
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.4byte	0x3f3
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST57
	.4byte	0x960
	.uleb128 0x17
	.string	"leq"
	.byte	0x1
	.byte	0x3d
	.4byte	0x17a
	.4byte	.LLST58
	.uleb128 0x19
	.string	"pq"
	.byte	0x1
	.byte	0x3f
	.4byte	0x3f3
	.4byte	.LLST59
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF81
	.byte	0x2
	.byte	0x3a
	.byte	0x1
	.4byte	0x641
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST60
	.uleb128 0x17
	.string	"leq"
	.byte	0x2
	.byte	0x39
	.4byte	0x41a
	.4byte	.LLST61
	.uleb128 0x19
	.string	"pq"
	.byte	0x2
	.byte	0x3b
	.4byte	0x641
	.4byte	.LLST62
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
	.uleb128 0xa
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1d
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x166
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x998
	.4byte	0x504
	.string	"__gl_pqHeapInit"
	.4byte	0x539
	.string	"__gl_pqHeapExtractMin"
	.4byte	0x59d
	.string	"__gl_pqHeapDelete"
	.4byte	0x5fd
	.string	"__gl_pqSortExtractMin"
	.4byte	0x647
	.string	"__gl_pqSortMinimum"
	.4byte	0x68d
	.string	"__gl_pqSortIsEmpty"
	.4byte	0x6b7
	.string	"__gl_pqSortDelete"
	.4byte	0x6ec
	.string	"__gl_pqHeapInsert"
	.4byte	0x76d
	.string	"__gl_pqSortInsert"
	.4byte	0x7d0
	.string	"__gl_pqSortInit"
	.4byte	0x8d5
	.string	"__gl_pqHeapDeletePriorityQ"
	.4byte	0x8fd
	.string	"__gl_pqSortDeletePriorityQ"
	.4byte	0x925
	.string	"__gl_pqHeapNewPriorityQ"
	.4byte	0x960
	.string	"__gl_pqSortNewPriorityQ"
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
.LASF83:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/priorityq.c"
.LASF55:
	.string	"FloatUp"
.LASF59:
	.string	"__gl_pqHeapInit"
.LASF11:
	.string	"PQHeapHandle"
.LASF38:
	.string	"Onext"
.LASF56:
	.string	"hParent"
.LASF46:
	.string	"PriorityQSort"
.LASF4:
	.string	"short int"
.LASF35:
	.string	"marked"
.LASF62:
	.string	"__gl_pqSortExtractMin"
.LASF84:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\freespace2wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF5:
	.string	"long long int"
.LASF32:
	.string	"pqHandle"
.LASF80:
	.string	"__gl_pqHeapNewPriorityQ"
.LASF58:
	.string	"hMin"
.LASF14:
	.string	"handles"
.LASF79:
	.string	"__gl_pqSortDeletePriorityQ"
.LASF41:
	.string	"activeRegion"
.LASF13:
	.string	"nodes"
.LASF51:
	.string	"hCurr"
.LASF57:
	.string	"parent"
.LASF72:
	.string	"saveHandles"
.LASF47:
	.string	"heap"
.LASF70:
	.string	"free"
.LASF39:
	.string	"Lnext"
.LASF23:
	.string	"float"
.LASF82:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF45:
	.string	"PQSortHandle"
.LASF49:
	.string	"order"
.LASF61:
	.string	"__gl_pqHeapExtractMin"
.LASF64:
	.string	"__gl_pqSortMinimum"
.LASF9:
	.string	"long int"
.LASF78:
	.string	"__gl_pqHeapDeletePriorityQ"
.LASF24:
	.string	"GLdouble"
.LASF44:
	.string	"PQSortKey"
.LASF36:
	.string	"inside"
.LASF20:
	.string	"node"
.LASF60:
	.string	"__gl_pqHeapDelete"
.LASF29:
	.string	"anEdge"
.LASF42:
	.string	"winding"
.LASF37:
	.string	"GLUhalfEdge"
.LASF1:
	.string	"unsigned char"
.LASF10:
	.string	"PQHeapKey"
.LASF16:
	.string	"freeList"
.LASF3:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF43:
	.string	"ActiveRegion"
.LASF81:
	.string	"__gl_pqSortNewPriorityQ"
.LASF0:
	.string	"unsigned int"
.LASF74:
	.string	"saveKey"
.LASF2:
	.string	"short unsigned int"
.LASF26:
	.string	"GLUvertex"
.LASF75:
	.string	"__gl_pqSortInit"
.LASF52:
	.string	"hChild"
.LASF48:
	.string	"keys"
.LASF8:
	.string	"char"
.LASF77:
	.string	"seed"
.LASF65:
	.string	"heapMin"
.LASF50:
	.string	"curr"
.LASF73:
	.string	"__gl_pqSortInsert"
.LASF30:
	.string	"data"
.LASF67:
	.string	"__gl_pqSortDelete"
.LASF66:
	.string	"__gl_pqSortIsEmpty"
.LASF63:
	.string	"sortMin"
.LASF7:
	.string	"long unsigned int"
.LASF22:
	.string	"GLboolean"
.LASF25:
	.string	"double"
.LASF69:
	.string	"keyNew"
.LASF53:
	.string	"child"
.LASF18:
	.string	"handle"
.LASF15:
	.string	"size"
.LASF31:
	.string	"coords"
.LASF68:
	.string	"__gl_pqHeapInsert"
.LASF12:
	.string	"PriorityQHeap"
.LASF34:
	.string	"trail"
.LASF33:
	.string	"GLUface"
.LASF40:
	.string	"Lface"
.LASF71:
	.string	"saveNodes"
.LASF54:
	.string	"FloatDown"
.LASF28:
	.string	"prev"
.LASF19:
	.string	"PQnode"
.LASF17:
	.string	"initialized"
.LASF27:
	.string	"next"
.LASF21:
	.string	"PQhandleElem"
.LASF76:
	.string	"Stack"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
