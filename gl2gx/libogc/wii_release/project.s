	.file	"project.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.type	__gluMultMatrixVecd, @function
__gluMultMatrixVecd:
.LFB7:
	.file 1 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libutil/project.c"
	.loc 1 90 0
.LVL0:
	.loc 1 90 0
	li 0,4
	mr 9,3
	mtctr 0
	li 11,0
.L2:
	.loc 1 94 0
	lfd 13,32(9)
	lfd 0,8(4)
	lfdx 11,11,3
	fmul 0,0,13
	lfd 12,0(4)
	lfd 10,64(9)
	lfd 13,16(4)
	fmadd 12,12,11,0
	lfd 11,96(9)
	lfd 0,24(4)
	addi 9,9,8
	fmadd 13,13,10,12
	fmadd 0,0,11,13
	stfdx 0,11,5
	addi 11,11,8
	.loc 1 93 0
	bdnz .L2
	.loc 1 100 0
	blr
.LFE7:
	.size	__gluMultMatrixVecd, .-__gluMultMatrixVecd
	.align 2
	.type	__gluInvertMatrixd, @function
__gluInvertMatrixd:
.LFB8:
	.loc 1 106 0
.LVL1:
	stwu 1,-152(1)
.LCFI0:
	li 10,0
.LVL2:
	.loc 1 118 0
	addi 8,1,8
	.loc 1 106 0
	stmw 28,136(1)
.LCFI1:
	b .L8
.LVL3:
.L9:
	.loc 1 113 0
	lfd 0,0(9)
	.loc 1 112 0
	addi 9,9,8
	.loc 1 113 0
	stfd 0,0(11)
	.loc 1 112 0
	addi 11,11,8
	bdnz .L9
	.loc 1 111 0
	cmpwi 7,10,3
	addi 3,3,32
	addi 10,10,1
	bne+ 7,.L8
.LBB4:
.LBB6:
	.loc 1 49 0
	lis 9,.LC1@ha
	.loc 1 52 0
	mr 30,4
	.loc 1 49 0
	lfs 13,.LC1@l(9)
	lis 9,.LC2@ha
	lfd 0,.LC2@l(9)
	.loc 1 52 0
	li 3,0
.LVL4:
	stfd 13,120(4)
	li 28,0
.LBE6:
.LBE4:
	.loc 1 144 0
	fmr 9,0
.LBB8:
.LBB5:
	.loc 1 49 0
	stfd 13,0(4)
	stfd 0,32(4)
.LBE5:
.LBE8:
	.loc 1 123 0
	addi 12,1,8
.LBB9:
.LBB7:
	.loc 1 49 0
	stfd 0,64(4)
	stfd 0,96(4)
	.loc 1 50 0
	stfd 0,8(4)
	stfd 13,40(4)
	stfd 0,72(4)
	stfd 0,104(4)
	.loc 1 51 0
	stfd 0,16(4)
	stfd 0,48(4)
	stfd 13,80(4)
	stfd 0,112(4)
	.loc 1 52 0
	stfd 0,24(4)
	stfd 0,56(4)
	stfd 0,88(4)
.LVL5:
.L12:
.LBE7:
.LBE9:
	.loc 1 123 0
	addi 31,3,1
	mr 9,3
.LVL6:
	slwi 0,31,2
	cmpwi 7,31,4
	add 0,3,0
	mr 11,31
	slwi 0,0,3
	add 10,12,0
	.loc 1 124 0
	subfic 0,31,5
	mtctr 0
	ble+ 7,.L13
	li 0,1
	mtctr 0
	b .L13
.LVL7:
.L14:
	lfd 0,0(10)
	.loc 1 123 0
	addi 10,10,32
	.loc 1 124 0
	lfdx 13,28,12
	fabs 0,0
	fabs 13,13
	fcmpu 7,0,13
	bng- 7,.L15
	mr 9,11
.L15:
	.loc 1 123 0
	addi 11,11,1
.LVL8:
.L13:
	bdnz .L14
	.loc 1 129 0
	cmpw 7,9,3
	beq- 7,.L19
	slwi 0,3,5
	slwi 9,9,5
.LVL9:
	add 8,12,0
	li 0,4
	mtctr 0
	add 10,4,9
	mr 11,30
.LVL10:
	add 9,12,9
.LVL11:
.L21:
	.loc 1 134 0
	lfd 11,0(8)
	.loc 1 135 0
	lfd 13,0(9)
	.loc 1 138 0
	lfd 12,0(11)
.LVL12:
	.loc 1 139 0
	lfd 0,0(10)
	.loc 1 135 0
	stfd 13,0(8)
	.loc 1 133 0
	addi 8,8,8
	.loc 1 139 0
	stfd 0,0(11)
	.loc 1 133 0
	addi 11,11,8
	.loc 1 136 0
	stfd 11,0(9)
	.loc 1 133 0
	addi 9,9,8
	.loc 1 140 0
	stfd 12,0(10)
	.loc 1 133 0
	addi 10,10,8
	bdnz .L21
.LVL13:
.L19:
	.loc 1 144 0
	lfdx 12,28,12
	fcmpu 7,12,9
	bne+ 7,.L22
	li 3,0
.LVL14:
	b .L25
.LVL15:
.L22:
	slwi 0,3,5
	mr 9,30
.LVL16:
	add 29,12,0
	li 0,4
	mtctr 0
	mr 11,29
.L26:
	.loc 1 154 0
	lfd 0,0(11)
	.loc 1 155 0
	lfd 13,0(9)
	.loc 1 154 0
	fdiv 0,0,12
	.loc 1 155 0
	fdiv 13,13,12
	.loc 1 154 0
	stfd 0,0(11)
	.loc 1 153 0
	addi 11,11,8
	.loc 1 155 0
	stfd 13,0(9)
	.loc 1 153 0
	addi 9,9,8
	bdnz .L26
	slwi 0,3,3
	mr 7,4
	add 6,12,0
	li 5,0
.LVL17:
.L28:
	.loc 1 158 0
	cmpw 7,5,3
	beq- 7,.L29
	.loc 1 159 0
	slwi 0,5,5
	lfd 10,0(6)
.LVL18:
	add 11,12,0
	li 0,4
	mtctr 0
	mr 8,29
	mr 9,7
	mr 10,30
.L31:
	.loc 1 161 0
	lfd 0,0(8)
	.loc 1 160 0
	addi 8,8,8
	.loc 1 162 0
	lfd 11,0(10)
	.loc 1 160 0
	addi 10,10,8
	.loc 1 161 0
	fmul 0,10,0
	lfd 13,0(11)
	.loc 1 162 0
	lfd 12,0(9)
	fmul 11,10,11
	.loc 1 161 0
	fsub 13,13,0
	.loc 1 162 0
	fsub 12,12,11
	.loc 1 161 0
	stfd 13,0(11)
	.loc 1 160 0
	addi 11,11,8
	.loc 1 162 0
	stfd 12,0(9)
	.loc 1 160 0
	addi 9,9,8
	bdnz .L31
.LVL19:
.L29:
	.loc 1 157 0
	cmpwi 7,5,3
	addi 7,7,32
	addi 6,6,32
	addi 5,5,1
	bne+ 7,.L28
.LVL20:
	.loc 1 118 0
	cmpwi 7,31,4
	.loc 1 157 0
	mr 3,31
	addi 30,30,32
	addi 28,28,40
	.loc 1 118 0
	bne+ 7,.L12
.LVL21:
	li 3,1
.LVL22:
	b .L25
.LVL23:
.L8:
	slwi 0,10,5
	mr 9,3
.LVL24:
	add 11,8,0
	li 0,4
	mtctr 0
	b .L9
.LVL25:
.L25:
	.loc 1 168 0
	lmw 28,136(1)
.LVL26:
	addi 1,1,152
	blr
.LFE8:
	.size	__gluInvertMatrixd, .-__gluInvertMatrixd
	.align 2
	.type	__gluMultMatricesd, @function
__gluMultMatricesd:
.LFB9:
	.loc 1 172 0
.LVL27:
	.loc 1 176 0
	addi 10,4,32
	.loc 1 175 0
	addi 0,3,128
.LVL28:
	b .L50
.LVL29:
.L51:
	.loc 1 177 0
	lfd 13,32(9)
	lfd 0,8(3)
	lfd 11,0(9)
	fmul 0,0,13
	lfd 13,0(3)
	lfd 10,64(9)
	lfd 12,16(3)
	fmadd 13,13,11,0
	lfd 11,96(9)
	lfd 0,24(3)
	addi 9,9,8
	.loc 1 176 0
	cmpw 7,9,10
	.loc 1 177 0
	fmadd 12,12,10,13
	fmadd 0,0,11,12
	stfd 0,0(11)
	addi 11,11,8
	.loc 1 176 0
	bne+ 7,.L51
	addi 3,3,32
	addi 5,5,32
	.loc 1 175 0
	cmpw 7,3,0
	beqlr- 7
.LVL30:
.L50:
	.loc 1 184 0
	mr 9,4
	mr 11,5
.LVL31:
	b .L51
.LFE9:
	.size	__gluMultMatricesd, .-__gluMultMatricesd
	.align 2
	.globl gluProject
	.type	gluProject, @function
gluProject:
.LFB10:
	.loc 1 192 0
.LVL32:
	stwu 1,-120(1)
.LCFI2:
	.loc 1 199 0
	lis 9,.LC1@ha
	.loc 1 192 0
	mflr 0
.LCFI3:
	.loc 1 199 0
	lfs 0,.LC1@l(9)
	.loc 1 192 0
	stmw 25,92(1)
.LCFI4:
	.loc 1 200 0
	addi 29,1,40
	addi 28,1,8
	.loc 1 192 0
	mr 27,4
	mr 31,5
	.loc 1 200 0
	mr 4,28
.LVL33:
	mr 5,29
.LVL34:
	.loc 1 199 0
	stfd 0,32(1)
	.loc 1 192 0
	stw 0,124(1)
.LCFI5:
	.loc 1 192 0
	mr 30,6
	.loc 1 196 0
	stfd 1,8(1)
	.loc 1 192 0
	mr 26,7
	.loc 1 197 0
	stfd 2,16(1)
	.loc 1 192 0
	mr 25,8
	.loc 1 198 0
	stfd 3,24(1)
	.loc 1 200 0
	bl __gluMultMatrixVecd
.LVL35:
	.loc 1 201 0
	mr 3,27
	mr 4,29
	mr 5,28
	bl __gluMultMatrixVecd
	.loc 1 202 0
	lis 9,.LC2@ha
	lfd 12,32(1)
	li 3,0
	lfd 0,.LC2@l(9)
	fcmpu 7,12,0
	beq- 7,.L62
	.loc 1 204 0
	lfd 8,16(1)
	.loc 1 212 0
	lis 10,0x4330
	.loc 1 207 0
	lfd 13,8(1)
	.loc 1 217 0
	li 3,1
	.loc 1 204 0
	fdiv 8,8,12
	.loc 1 205 0
	lfd 9,24(1)
	.loc 1 212 0
	lwz 0,8(31)
	lwz 9,0(31)
	.loc 1 213 0
	lwz 8,4(31)
	.loc 1 212 0
	xoris 0,0,0x8000
	.loc 1 213 0
	lwz 11,12(31)
	.loc 1 212 0
	xoris 9,9,0x8000
	stw 9,84(1)
	.loc 1 213 0
	xoris 8,8,0x8000
	.loc 1 212 0
	stw 0,76(1)
	.loc 1 213 0
	xoris 11,11,0x8000
	.loc 1 212 0
	stw 10,72(1)
	.loc 1 207 0
	lis 9,.LC5@ha
	.loc 1 212 0
	stw 10,80(1)
	lfd 6,72(1)
	lfd 7,80(1)
	.loc 1 213 0
	stw 11,76(1)
	stw 8,84(1)
	lfd 0,72(1)
	lfd 10,80(1)
	.loc 1 207 0
	fdiv 13,13,12
	.loc 1 205 0
	fdiv 9,9,12
	.loc 1 207 0
	lfs 12,.LC5@l(9)
	.loc 1 212 0
	lis 9,.LC7@ha
	lfs 11,.LC7@l(9)
	.loc 1 207 0
	fmadd 13,13,12,12
	.loc 1 208 0
	fmadd 8,8,12,12
	.loc 1 213 0
	fsub 10,10,11
	.loc 1 212 0
	fsub 6,6,11
	fsub 7,7,11
	.loc 1 213 0
	fsub 0,0,11
	.loc 1 209 0
	fmadd 9,9,12,12
	.loc 1 212 0
	fmadd 13,13,6,7
	.loc 1 213 0
	fmadd 8,8,0,10
	.loc 1 209 0
	stfd 9,24(1)
	.loc 1 215 0
	stfd 13,0(30)
	.loc 1 212 0
	stfd 13,8(1)
	.loc 1 216 0
	stfd 8,0(26)
	.loc 1 217 0
	stfd 9,0(25)
	.loc 1 213 0
	stfd 8,16(1)
.L62:
	.loc 1 219 0
	lwz 0,124(1)
	lmw 25,92(1)
.LVL36:
	addi 1,1,120
	mtlr 0
	blr
.LFE10:
	.size	gluProject, .-gluProject
	.align 2
	.globl gluUnProject
	.type	gluUnProject, @function
gluUnProject:
.LFB11:
	.loc 1 227 0
.LVL37:
	stwu 1,-264(1)
.LCFI6:
	mflr 0
.LCFI7:
	stmw 27,220(1)
.LCFI8:
	.loc 1 232 0
	addi 30,1,72
	.loc 1 227 0
	mr 31,5
	.loc 1 232 0
	mr 5,30
.LVL38:
	.loc 1 227 0
	stfd 29,240(1)
.LCFI9:
	mr 29,6
	stfd 30,248(1)
.LCFI10:
	fmr 29,2
	stfd 31,256(1)
.LCFI11:
	fmr 30,1
	stw 0,268(1)
.LCFI12:
	.loc 1 227 0
	fmr 31,3
	mr 28,7
	mr 27,8
	.loc 1 232 0
	bl __gluMultMatricesd
.LVL39:
	.loc 1 233 0
	mr 3,30
	mr 4,30
	bl __gluInvertMatrixd
	cmpwi 7,3,0
	beq- 7,.L65
	.loc 1 241 0
	lwz 0,0(31)
	lis 10,0x4330
	.loc 1 242 0
	lwz 9,4(31)
	.loc 1 249 0
	mr 3,30
	.loc 1 241 0
	xoris 0,0,0x8000
	stw 10,200(1)
	stw 0,204(1)
	.loc 1 242 0
	xoris 9,9,0x8000
	.loc 1 249 0
	addi 4,1,8
	addi 5,1,40
	.loc 1 241 0
	lwz 0,8(31)
	.loc 1 242 0
	lwz 11,12(31)
	.loc 1 241 0
	lfd 12,200(1)
	xoris 0,0,0x8000
	.loc 1 242 0
	stw 9,204(1)
	.loc 1 241 0
	lis 9,.LC7@ha
	stw 0,212(1)
	.loc 1 242 0
	xoris 11,11,0x8000
	.loc 1 241 0
	stw 10,208(1)
	lfs 11,.LC7@l(9)
	.loc 1 238 0
	lis 9,.LC1@ha
	.loc 1 242 0
	lfd 13,200(1)
	.loc 1 241 0
	lfd 10,208(1)
	fsub 12,12,11
	.loc 1 242 0
	stw 11,212(1)
	fsub 13,13,11
	.loc 1 241 0
	fsub 10,10,11
	.loc 1 242 0
	lfd 0,208(1)
	.loc 1 241 0
	fsub 12,30,12
	.loc 1 242 0
	fsub 13,29,13
	fsub 0,0,11
	.loc 1 238 0
	lfs 11,.LC1@l(9)
	.loc 1 241 0
	fdiv 12,12,10
	.loc 1 238 0
	stfd 11,32(1)
	.loc 1 242 0
	fdiv 13,13,0
	.loc 1 245 0
	fadd 12,12,12
	.loc 1 246 0
	fadd 13,13,13
	.loc 1 247 0
	fadd 0,31,31
	.loc 1 245 0
	fsub 12,12,11
	.loc 1 246 0
	fsub 13,13,11
	.loc 1 247 0
	fsub 0,0,11
	.loc 1 245 0
	stfd 12,8(1)
	.loc 1 246 0
	stfd 13,16(1)
	.loc 1 247 0
	stfd 0,24(1)
	.loc 1 249 0
	bl __gluMultMatrixVecd
	.loc 1 250 0
	lis 9,.LC2@ha
	lfd 11,64(1)
	lfd 0,.LC2@l(9)
	fcmpu 7,11,0
	beq- 7,.L65
	.loc 1 252 0
	lfd 0,48(1)
	.loc 1 256 0
	li 3,1
	.loc 1 251 0
	lfd 13,40(1)
	.loc 1 253 0
	lfd 12,56(1)
	.loc 1 252 0
	fdiv 0,0,11
	.loc 1 251 0
	fdiv 13,13,11
	.loc 1 253 0
	fdiv 12,12,11
	.loc 1 254 0
	stfd 13,0(29)
	.loc 1 251 0
	stfd 13,40(1)
	.loc 1 253 0
	stfd 12,56(1)
	.loc 1 255 0
	stfd 0,0(28)
	.loc 1 256 0
	stfd 12,0(27)
	.loc 1 252 0
	stfd 0,48(1)
	b .L68
.L65:
	.loc 1 257 0
	li 3,0
.L68:
	.loc 1 258 0
	lwz 0,268(1)
	lmw 27,220(1)
.LVL40:
	lfd 29,240(1)
.LVL41:
	mtlr 0
	lfd 30,248(1)
.LVL42:
	lfd 31,256(1)
.LVL43:
	addi 1,1,264
	blr
.LFE11:
	.size	gluUnProject, .-gluUnProject
	.align 2
	.globl gluUnProject4
	.type	gluUnProject4, @function
gluUnProject4:
.LFB12:
	.loc 1 268 0
.LVL44:
	stwu 1,-288(1)
.LCFI13:
	mflr 0
.LCFI14:
	stmw 26,216(1)
.LCFI15:
	.loc 1 273 0
	addi 30,1,72
	.loc 1 268 0
	mr 31,5
	.loc 1 273 0
	mr 5,30
.LVL45:
	.loc 1 268 0
	stfd 26,240(1)
.LCFI16:
	mr 29,6
	stfd 27,248(1)
.LCFI17:
	fmr 26,4
	stfd 28,256(1)
.LCFI18:
	fmr 27,3
	stfd 29,264(1)
.LCFI19:
	fmr 28,2
	stfd 30,272(1)
.LCFI20:
	fmr 29,1
	stfd 31,280(1)
.LCFI21:
	fmr 30,6
	stw 0,292(1)
.LCFI22:
	.loc 1 268 0
	fmr 31,5
	mr 28,7
	mr 27,8
	mr 26,9
	.loc 1 273 0
	bl __gluMultMatricesd
.LVL46:
	.loc 1 274 0
	mr 3,30
	mr 4,30
	bl __gluInvertMatrixd
	cmpwi 7,3,0
	beq- 7,.L71
	.loc 1 282 0
	lwz 0,0(31)
	lis 10,0x4330
	.loc 1 283 0
	lwz 9,4(31)
	.loc 1 289 0
	fsub 9,30,31
	.loc 1 282 0
	xoris 0,0,0x8000
	stw 10,200(1)
	stw 0,204(1)
	.loc 1 283 0
	xoris 9,9,0x8000
	.loc 1 291 0
	mr 3,30
	addi 4,1,8
	.loc 1 282 0
	lwz 0,8(31)
	.loc 1 291 0
	addi 5,1,40
	.loc 1 283 0
	lwz 11,12(31)
	.loc 1 282 0
	lfd 11,200(1)
	xoris 0,0,0x8000
	.loc 1 283 0
	stw 9,204(1)
	.loc 1 282 0
	lis 9,.LC7@ha
	stw 0,212(1)
	.loc 1 283 0
	xoris 11,11,0x8000
	.loc 1 282 0
	stw 10,208(1)
	lfs 12,.LC7@l(9)
	.loc 1 287 0
	lis 9,.LC1@ha
	.loc 1 283 0
	lfd 13,200(1)
	.loc 1 282 0
	lfd 10,208(1)
	fsub 11,11,12
	.loc 1 283 0
	stw 11,212(1)
	fsub 13,13,12
	.loc 1 282 0
	fsub 10,10,12
	.loc 1 279 0
	stfd 26,32(1)
	.loc 1 283 0
	lfd 0,208(1)
	.loc 1 282 0
	fsub 11,29,11
	.loc 1 283 0
	fsub 13,28,13
	fsub 0,0,12
	.loc 1 289 0
	fsub 12,27,31
	.loc 1 282 0
	fdiv 11,11,10
	.loc 1 283 0
	fdiv 13,13,0
	.loc 1 287 0
	lfs 0,.LC1@l(9)
	.loc 1 289 0
	fdiv 12,12,9
	.loc 1 287 0
	fadd 11,11,11
	.loc 1 288 0
	fadd 13,13,13
	.loc 1 289 0
	fadd 12,12,12
	.loc 1 287 0
	fsub 11,11,0
	.loc 1 288 0
	fsub 13,13,0
	.loc 1 289 0
	fsub 12,12,0
	.loc 1 287 0
	stfd 11,8(1)
	.loc 1 288 0
	stfd 13,16(1)
	.loc 1 289 0
	stfd 12,24(1)
	.loc 1 291 0
	bl __gluMultMatrixVecd
	.loc 1 292 0
	lis 9,.LC2@ha
	lfd 11,64(1)
	lfd 0,.LC2@l(9)
	fcmpu 7,11,0
	beq- 7,.L71
	.loc 1 294 0
	lfd 0,48(1)
	.loc 1 296 0
	li 3,1
	.loc 1 295 0
	lfd 12,56(1)
	.loc 1 293 0
	lfd 13,40(1)
	stfd 13,0(29)
	.loc 1 294 0
	stfd 0,0(28)
	.loc 1 295 0
	stfd 12,0(27)
	.loc 1 296 0
	stfd 11,0(26)
	b .L74
.L71:
	.loc 1 297 0
	li 3,0
.L74:
	.loc 1 298 0
	lwz 0,292(1)
	lmw 26,216(1)
.LVL47:
	lfd 26,240(1)
.LVL48:
	mtlr 0
	lfd 27,248(1)
.LVL49:
	lfd 28,256(1)
.LVL50:
	lfd 29,264(1)
.LVL51:
	lfd 30,272(1)
.LVL52:
	lfd 31,280(1)
.LVL53:
	addi 1,1,288
	blr
.LFE12:
	.size	gluUnProject4, .-gluUnProject4
	.align 2
	.globl gluPickMatrix
	.type	gluPickMatrix, @function
gluPickMatrix:
.LFB13:
	.loc 1 303 0
.LVL54:
	.loc 1 304 0
	lis 9,.LC2@ha
	.loc 1 303 0
	mflr 0
.LCFI23:
	.loc 1 304 0
	lfd 0,.LC2@l(9)
	.loc 1 303 0
	fmr 11,1
	stwu 1,-64(1)
.LCFI24:
	fmr 12,2
	.loc 1 304 0
	fcmpu 7,3,0
	.loc 1 303 0
	stfd 29,40(1)
.LCFI25:
	fmr 29,3
	.loc 1 304 0
	cror 30,28,30
	.loc 1 303 0
	stfd 30,48(1)
.LCFI26:
	stmw 29,28(1)
.LCFI27:
	fmr 30,4
	stfd 31,56(1)
.LCFI28:
	mr 31,3
	stw 0,68(1)
.LCFI29:
	.loc 1 304 0
	beq- 7,.L80
.LVL55:
	fcmpu 7,4,0
	cror 30,28,30
	beq- 7,.L80
.LVL56:
	.loc 1 309 0
	lwz 0,0(3)
	lis 29,0x4330
	lwz 9,4(3)
	xoris 0,0,0x8000
	stw 29,16(1)
	stw 0,20(1)
	xoris 9,9,0x8000
	lwz 0,8(3)
	lfd 1,16(1)
	stw 9,20(1)
	xoris 0,0,0x8000
	lis 9,.LC7@ha
	lwz 11,12(3)
	stw 0,12(1)
	stw 29,8(1)
	xoris 11,11,0x8000
	lfs 31,.LC7@l(9)
	lis 9,.LC12@ha
	lfd 2,16(1)
	lfd 13,8(1)
	fsub 1,1,31
	stw 11,12(1)
	fsub 2,2,31
	fsub 13,13,31
	lfd 0,8(1)
	fsub 1,11,1
	fsub 2,12,2
	lfs 12,.LC12@l(9)
.LVL57:
	fsub 0,0,31
	lis 9,.LC14@ha
	fmadd 1,1,12,13
	lfs 3,.LC14@l(9)
	fmadd 2,2,12,0
	fdiv 1,1,29
	fdiv 2,2,4
	frsp 1,1
	frsp 2,2
	bl glTranslatef
.LVL58:
	.loc 1 311 0
	lwz 0,8(31)
	lwz 9,12(31)
	xoris 0,0,0x8000
	stw 29,8(1)
	stw 0,12(1)
	xoris 9,9,0x8000
	lfd 1,8(1)
	stw 9,12(1)
	lis 9,.LC1@ha
	fsub 1,1,31
	lfs 3,.LC1@l(9)
	lfd 2,8(1)
	fsub 2,2,31
	fdiv 1,1,29
	fdiv 2,2,30
	frsp 1,1
	frsp 2,2
	bl glScalef
.LVL59:
.L80:
	.loc 1 312 0
	lwz 0,68(1)
	lmw 29,28(1)
.LVL60:
	lfd 29,40(1)
.LVL61:
	mtlr 0
	lfd 30,48(1)
.LVL62:
	lfd 31,56(1)
	addi 1,1,64
	blr
.LFE13:
	.size	gluPickMatrix, .-gluPickMatrix
	.align 2
	.globl gluOrtho2D
	.type	gluOrtho2D, @function
gluOrtho2D:
.LFB4:
	.loc 1 65 0
.LVL63:
	.loc 1 66 0
	lis 9,.LC16@ha
	.loc 1 65 0
	mflr 0
.LCFI30:
	.loc 1 66 0
	lfs 5,.LC16@l(9)
	lis 9,.LC1@ha
	.loc 1 65 0
	stwu 1,-8(1)
.LCFI31:
	.loc 1 66 0
	lfs 6,.LC1@l(9)
	.loc 1 65 0
	stw 0,12(1)
.LCFI32:
	.loc 1 66 0
	bl glOrtho
.LVL64:
	.loc 1 67 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE4:
	.size	gluOrtho2D, .-gluOrtho2D
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	1065353216
.LC5:
	.4byte	1056964608
.LC7:
	.4byte	1501560836
.LC12:
	.4byte	-1073741824
.LC14:
	.4byte	0
.LC16:
	.4byte	-1082130432
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC2:
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI0-.LFB8
	.byte	0xe
	.uleb128 0x98
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9c
	.uleb128 0x4
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI2-.LFB10
	.byte	0xe
	.uleb128 0x78
	.byte	0x4
	.4byte	.LCFI4-.LCFI2
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI6-.LFB11
	.byte	0xe
	.uleb128 0x108
	.byte	0x4
	.4byte	.LCFI8-.LCFI6
	.byte	0x9f
	.uleb128 0x7
	.byte	0x9e
	.uleb128 0x8
	.byte	0x9d
	.uleb128 0x9
	.byte	0x9c
	.uleb128 0xa
	.byte	0x9b
	.uleb128 0xb
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI10-.LCFI8
	.byte	0xbe
	.uleb128 0x4
	.byte	0xbd
	.uleb128 0x6
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI13-.LFB12
	.byte	0xe
	.uleb128 0x120
	.byte	0x4
	.4byte	.LCFI15-.LCFI13
	.byte	0x9f
	.uleb128 0xd
	.byte	0x9e
	.uleb128 0xe
	.byte	0x9d
	.uleb128 0xf
	.byte	0x9c
	.uleb128 0x10
	.byte	0x9b
	.uleb128 0x11
	.byte	0x9a
	.uleb128 0x12
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI17-.LCFI15
	.byte	0xbb
	.uleb128 0xa
	.byte	0xba
	.uleb128 0xc
	.byte	0x4
	.4byte	.LCFI19-.LCFI17
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI21-.LCFI19
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI24-.LFB13
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xbd
	.uleb128 0x6
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI27-.LCFI25
	.byte	0x9f
	.uleb128 0x7
	.byte	0x9e
	.uleb128 0x8
	.byte	0x9d
	.uleb128 0x9
	.byte	0xbe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI29-.LCFI27
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0xbf
	.uleb128 0x2
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI31-.LFB4
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE14:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LFB8-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 152
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL25-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2a
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL25-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 120
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LFB11-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 264
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LFB12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 288
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LFB13-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI24-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL59-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL59-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL61-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL62-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL60-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/include/GL/gl.h"
	.section	.debug_info
	.4byte	0x5ad
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x1
	.4byte	.LASF44
	.4byte	.LASF45
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
	.byte	0x98
	.4byte	0x4b
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x2
	.byte	0x9f
	.4byte	0x75
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x2
	.byte	0xa0
	.4byte	0x75
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x7
	.4byte	0x95
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbc
	.uleb128 0x7
	.4byte	0x8a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x95
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x51
	.4byte	0x113
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x58
	.4byte	0xab
	.byte	0x1
	.byte	0x53
	.uleb128 0xa
	.string	"in"
	.byte	0x1
	.byte	0x58
	.4byte	0xab
	.byte	0x1
	.byte	0x54
	.uleb128 0xa
	.string	"out"
	.byte	0x1
	.byte	0x59
	.4byte	0xc7
	.byte	0x1
	.byte	0x55
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x5b
	.4byte	0x4b
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.byte	0x1
	.4byte	0x12a
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x2f
	.4byte	0xc7
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.4byte	0x4b
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST1
	.4byte	0x1c2
	.uleb128 0xf
	.string	"src"
	.byte	0x1
	.byte	0x69
	.4byte	0xab
	.4byte	.LLST2
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x69
	.4byte	0xc7
	.byte	0x1
	.byte	0x54
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x6b
	.4byte	0x4b
	.4byte	.LLST3
	.uleb128 0x10
	.string	"j"
	.byte	0x1
	.byte	0x6b
	.4byte	0x4b
	.4byte	.LLST4
	.uleb128 0xb
	.string	"k"
	.byte	0x1
	.byte	0x6b
	.4byte	0x4b
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x1
	.byte	0x6b
	.4byte	0x4b
	.4byte	.LLST5
	.uleb128 0x10
	.string	"t"
	.byte	0x1
	.byte	0x6c
	.4byte	0x75
	.4byte	.LLST6
	.uleb128 0x12
	.4byte	.LASF19
	.byte	0x1
	.byte	0x6d
	.4byte	0x1c2
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x13
	.4byte	0x113
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x74
	.uleb128 0x14
	.4byte	0x120
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.4byte	0x95
	.4byte	0x1d8
	.uleb128 0x16
	.4byte	0x2c
	.byte	0x3
	.uleb128 0x16
	.4byte	0x2c
	.byte	0x3
	.byte	0x0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0xac
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x51
	.4byte	0x226
	.uleb128 0xf
	.string	"a"
	.byte	0x1
	.byte	0xaa
	.4byte	0xab
	.4byte	.LLST8
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0xaa
	.4byte	0xab
	.byte	0x1
	.byte	0x54
	.uleb128 0xf
	.string	"r"
	.byte	0x1
	.byte	0xab
	.4byte	0xc7
	.4byte	.LLST9
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0xad
	.4byte	0x4b
	.uleb128 0xb
	.string	"j"
	.byte	0x1
	.byte	0xad
	.4byte	0x4b
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF31
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.4byte	0x8a
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST10
	.4byte	0x2e8
	.uleb128 0x18
	.4byte	.LASF22
	.byte	0x1
	.byte	0xbb
	.4byte	0x95
	.4byte	.LLST11
	.uleb128 0x18
	.4byte	.LASF23
	.byte	0x1
	.byte	0xbb
	.4byte	0x95
	.4byte	.LLST12
	.uleb128 0x18
	.4byte	.LASF24
	.byte	0x1
	.byte	0xbb
	.4byte	0x95
	.4byte	.LLST13
	.uleb128 0x18
	.4byte	.LASF25
	.byte	0x1
	.byte	0xbc
	.4byte	0xab
	.4byte	.LLST14
	.uleb128 0x18
	.4byte	.LASF26
	.byte	0x1
	.byte	0xbd
	.4byte	0xab
	.4byte	.LLST15
	.uleb128 0x18
	.4byte	.LASF27
	.byte	0x1
	.byte	0xbe
	.4byte	0xb6
	.4byte	.LLST16
	.uleb128 0x18
	.4byte	.LASF28
	.byte	0x1
	.byte	0xbf
	.4byte	0xc7
	.4byte	.LLST17
	.uleb128 0x18
	.4byte	.LASF29
	.byte	0x1
	.byte	0xbf
	.4byte	0xc7
	.4byte	.LLST18
	.uleb128 0x18
	.4byte	.LASF30
	.byte	0x1
	.byte	0xbf
	.4byte	0xc7
	.4byte	.LLST19
	.uleb128 0x19
	.string	"in"
	.byte	0x1
	.byte	0xc1
	.4byte	0x2e8
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x19
	.string	"out"
	.byte	0x1
	.byte	0xc2
	.4byte	0x2e8
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x15
	.4byte	0x75
	.4byte	0x2f8
	.uleb128 0x16
	.4byte	0x2c
	.byte	0x3
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF32
	.byte	0x1
	.byte	0xe3
	.byte	0x1
	.4byte	0x8a
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST20
	.4byte	0x3c9
	.uleb128 0x18
	.4byte	.LASF28
	.byte	0x1
	.byte	0xde
	.4byte	0x95
	.4byte	.LLST21
	.uleb128 0x18
	.4byte	.LASF29
	.byte	0x1
	.byte	0xde
	.4byte	0x95
	.4byte	.LLST22
	.uleb128 0x18
	.4byte	.LASF30
	.byte	0x1
	.byte	0xde
	.4byte	0x95
	.4byte	.LLST23
	.uleb128 0x18
	.4byte	.LASF25
	.byte	0x1
	.byte	0xdf
	.4byte	0xab
	.4byte	.LLST24
	.uleb128 0x18
	.4byte	.LASF26
	.byte	0x1
	.byte	0xe0
	.4byte	0xab
	.4byte	.LLST25
	.uleb128 0x18
	.4byte	.LASF27
	.byte	0x1
	.byte	0xe1
	.4byte	0xb6
	.4byte	.LLST26
	.uleb128 0x18
	.4byte	.LASF22
	.byte	0x1
	.byte	0xe2
	.4byte	0xc7
	.4byte	.LLST27
	.uleb128 0x18
	.4byte	.LASF23
	.byte	0x1
	.byte	0xe2
	.4byte	0xc7
	.4byte	.LLST28
	.uleb128 0x18
	.4byte	.LASF24
	.byte	0x1
	.byte	0xe2
	.4byte	0xc7
	.4byte	.LLST29
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x1
	.byte	0xe4
	.4byte	0x3c9
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x19
	.string	"in"
	.byte	0x1
	.byte	0xe5
	.4byte	0x2e8
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x19
	.string	"out"
	.byte	0x1
	.byte	0xe6
	.4byte	0x2e8
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.byte	0x0
	.uleb128 0x15
	.4byte	0x75
	.4byte	0x3d9
	.uleb128 0x16
	.4byte	0x2c
	.byte	0xf
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x10c
	.byte	0x1
	.4byte	0x8a
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST30
	.4byte	0x4f7
	.uleb128 0x1b
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x105
	.4byte	0x95
	.4byte	.LLST31
	.uleb128 0x1b
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x105
	.4byte	0x95
	.4byte	.LLST32
	.uleb128 0x1b
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x105
	.4byte	0x95
	.4byte	.LLST33
	.uleb128 0x1b
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x105
	.4byte	0x95
	.4byte	.LLST34
	.uleb128 0x1b
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x106
	.4byte	0xab
	.4byte	.LLST35
	.uleb128 0x1b
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x107
	.4byte	0xab
	.4byte	.LLST36
	.uleb128 0x1b
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x108
	.4byte	0xb6
	.4byte	.LLST37
	.uleb128 0x1b
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x109
	.4byte	0xa0
	.4byte	.LLST38
	.uleb128 0x1c
	.string	"far"
	.byte	0x1
	.2byte	0x109
	.4byte	0xa0
	.4byte	.LLST39
	.uleb128 0x1b
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x10a
	.4byte	0xc7
	.4byte	.LLST40
	.uleb128 0x1b
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x10a
	.4byte	0xc7
	.4byte	.LLST41
	.uleb128 0x1b
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x10a
	.4byte	0xc7
	.4byte	.LLST42
	.uleb128 0x1b
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x10b
	.4byte	0xc7
	.4byte	.LLST43
	.uleb128 0x1d
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x10d
	.4byte	0x3c9
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x1e
	.string	"in"
	.byte	0x1
	.2byte	0x10e
	.4byte	0x2e8
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x1e
	.string	"out"
	.byte	0x1
	.2byte	0x10f
	.4byte	0x2e8
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x12f
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST44
	.4byte	0x55e
	.uleb128 0x1c
	.string	"x"
	.byte	0x1
	.2byte	0x12d
	.4byte	0x95
	.4byte	.LLST45
	.uleb128 0x1c
	.string	"y"
	.byte	0x1
	.2byte	0x12d
	.4byte	0x95
	.4byte	.LLST46
	.uleb128 0x1b
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x12d
	.4byte	0x95
	.4byte	.LLST47
	.uleb128 0x1b
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x12d
	.4byte	0x95
	.4byte	.LLST48
	.uleb128 0x1b
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x12e
	.4byte	0xc1
	.4byte	.LLST49
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF49
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST50
	.uleb128 0x18
	.4byte	.LASF40
	.byte	0x1
	.byte	0x40
	.4byte	0x95
	.4byte	.LLST51
	.uleb128 0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0x40
	.4byte	0x95
	.4byte	.LLST52
	.uleb128 0x18
	.4byte	.LASF42
	.byte	0x1
	.byte	0x40
	.4byte	0x95
	.4byte	.LLST53
	.uleb128 0xf
	.string	"top"
	.byte	0x1
	.byte	0x40
	.4byte	0x95
	.4byte	.LLST54
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x61
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x5b1
	.4byte	0x226
	.string	"gluProject"
	.4byte	0x2f8
	.string	"gluUnProject"
	.4byte	0x3d9
	.string	"gluUnProject4"
	.4byte	0x4f7
	.string	"gluPickMatrix"
	.4byte	0x55e
	.string	"gluOrtho2D"
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
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"__gluMultMatrixVecd"
.LASF41:
	.string	"right"
.LASF19:
	.string	"temp"
.LASF4:
	.string	"short int"
.LASF45:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\freespace2wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF18:
	.string	"swap"
.LASF17:
	.string	"inverse"
.LASF33:
	.string	"finalMatrix"
.LASF34:
	.string	"gluUnProject4"
.LASF42:
	.string	"bottom"
.LASF11:
	.string	"float"
.LASF43:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF5:
	.string	"long long int"
.LASF26:
	.string	"projMatrix"
.LASF48:
	.string	"gluPickMatrix"
.LASF9:
	.string	"long int"
.LASF31:
	.string	"gluProject"
.LASF32:
	.string	"gluUnProject"
.LASF12:
	.string	"long double"
.LASF1:
	.string	"unsigned char"
.LASF44:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libutil/project.c"
.LASF3:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF8:
	.string	"char"
.LASF40:
	.string	"left"
.LASF49:
	.string	"gluOrtho2D"
.LASF28:
	.string	"winx"
.LASF29:
	.string	"winy"
.LASF30:
	.string	"winz"
.LASF7:
	.string	"long unsigned int"
.LASF14:
	.string	"GLdouble"
.LASF10:
	.string	"double"
.LASF46:
	.string	"__gluMakeIdentityd"
.LASF27:
	.string	"viewport"
.LASF15:
	.string	"GLclampd"
.LASF36:
	.string	"near"
.LASF21:
	.string	"__gluMultMatricesd"
.LASF37:
	.string	"objw"
.LASF22:
	.string	"objx"
.LASF23:
	.string	"objy"
.LASF24:
	.string	"objz"
.LASF25:
	.string	"modelMatrix"
.LASF16:
	.string	"matrix"
.LASF35:
	.string	"clipw"
.LASF13:
	.string	"GLint"
.LASF38:
	.string	"deltax"
.LASF39:
	.string	"deltay"
.LASF47:
	.string	"__gluInvertMatrixd"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
