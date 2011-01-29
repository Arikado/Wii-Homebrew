	.file	"mesh.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.type	MakeVertex, @function
MakeVertex:
.LFB6:
	.file 1 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/mesh.c"
	.loc 1 139 0
.LVL0:
	.loc 1 147 0
	lwz 9,4(5)
.LVL1:
	.loc 1 154 0
	li 0,0
	stw 0,12(3)
	.loc 1 149 0
	stw 3,0(9)
	.loc 1 148 0
	stw 9,4(3)
	.loc 1 154 0
	mr 9,4
.LVL2:
	.loc 1 151 0
	stw 3,4(5)
	.loc 1 150 0
	stw 5,0(3)
	.loc 1 153 0
	stw 4,8(3)
.L2:
	.loc 1 160 0
	stw 3,16(9)
	.loc 1 161 0
	lwz 9,8(9)
	.loc 1 162 0
	cmpw 7,9,4
	bne+ 7,.L2
	.loc 1 163 0
	blr
.LFE6:
	.size	MakeVertex, .-MakeVertex
	.align 2
	.type	MakeFace, @function
MakeFace:
.LFB7:
	.loc 1 172 0
.LVL3:
	.loc 1 180 0
	lwz 9,4(5)
.LVL4:
	.loc 1 187 0
	li 0,0
	.loc 1 194 0
	lbz 11,21(5)
	.loc 1 182 0
	stw 3,0(9)
	.loc 1 181 0
	stw 9,4(3)
	.loc 1 194 0
	mr 9,4
.LVL5:
	.loc 1 189 0
	stb 0,20(3)
	.loc 1 194 0
	stb 11,21(3)
	.loc 1 183 0
	stw 5,0(3)
	.loc 1 184 0
	stw 3,4(5)
	.loc 1 186 0
	stw 4,8(3)
	.loc 1 187 0
	stw 0,12(3)
	.loc 1 188 0
	stw 0,16(3)
.L8:
	.loc 1 199 0
	stw 3,20(9)
	.loc 1 200 0
	lwz 9,12(9)
	.loc 1 201 0
	cmpw 7,9,4
	bne+ 7,.L8
	.loc 1 202 0
	blr
.LFE7:
	.size	MakeFace, .-MakeFace
	.align 2
	.globl __gl_meshDeleteMesh
	.type	__gl_meshDeleteMesh, @function
__gl_meshDeleteMesh:
.LFB20:
	.loc 1 710 0
.LVL6:
	mflr 0
.LCFI0:
	stwu 1,-24(1)
.LCFI1:
	stmw 29,12(1)
.LCFI2:
	mr 31,3
	stw 0,28(1)
.LCFI3:
	.loc 1 715 0
	addi 30,3,64
	lwz 29,64(3)
.LVL7:
	b .L14
.LVL8:
.L15:
	.loc 1 716 0
	lwz 29,0(29)
	.loc 1 717 0
	bl free
.LVL9:
.L14:
	.loc 1 715 0
	cmpw 7,29,30
	.loc 1 717 0
	mr 3,29
	.loc 1 715 0
	bne+ 7,.L15
.LVL10:
	.loc 1 720 0
	lwz 29,0(31)
.LVL11:
	b .L17
.LVL12:
.L18:
	.loc 1 721 0
	lwz 29,0(29)
	.loc 1 722 0
	bl free
.LVL13:
.L17:
	.loc 1 720 0
	cmpw 7,29,31
	.loc 1 722 0
	mr 3,29
.LVL14:
	.loc 1 720 0
	bne+ 7,.L18
.LVL15:
	.loc 1 725 0
	lwz 29,88(31)
.LVL16:
	addi 30,31,88
	b .L20
.LVL17:
.L21:
	.loc 1 727 0
	lwz 29,0(29)
	.loc 1 728 0
	bl free
.LVL18:
.L20:
	.loc 1 725 0
	cmpw 7,29,30
	.loc 1 728 0
	mr 3,29
.LVL19:
	.loc 1 725 0
	bne+ 7,.L21
.LVL20:
	.loc 1 731 0
	mr 3,31
.LVL21:
	bl free
	.loc 1 732 0
	lwz 0,28(1)
	lmw 29,12(1)
.LVL22:
	addi 1,1,24
	mtlr 0
	blr
.LFE20:
	.size	__gl_meshDeleteMesh, .-__gl_meshDeleteMesh
	.align 2
	.globl __gl_meshUnion
	.type	__gl_meshUnion, @function
__gl_meshUnion:
.LFB19:
	.loc 1 654 0
.LVL23:
	mflr 0
.LCFI4:
	stwu 1,-16(1)
.LCFI5:
	.loc 1 663 0
	lwz 9,64(4)
	.loc 1 654 0
	stw 31,12(1)
.LCFI6:
	mr 31,3
	stw 0,20(1)
.LCFI7:
	.loc 1 663 0
	addi 0,4,64
	cmpw 7,9,0
	beq- 7,.L25
.LVL24:
	.loc 1 664 0
	lwz 11,68(3)
	.loc 1 666 0
	addi 0,3,64
	.loc 1 664 0
	stw 9,0(11)
	.loc 1 665 0
	lwz 9,64(4)
	stw 11,4(9)
	.loc 1 666 0
	lwz 9,68(4)
	stw 0,0(9)
	.loc 1 667 0
	stw 9,68(3)
.L25:
	.loc 1 670 0
	lwz 0,0(4)
	cmpw 7,0,4
	beq- 7,.L27
	.loc 1 671 0
	lwz 9,4(31)
	stw 0,0(9)
	.loc 1 672 0
	lwz 11,0(4)
	stw 9,4(11)
	.loc 1 673 0
	lwz 9,4(4)
	.loc 1 674 0
	stw 9,4(31)
	.loc 1 673 0
	stw 31,0(9)
.L27:
	.loc 1 677 0
	lwz 7,88(4)
	addi 0,4,88
	cmpw 7,7,0
	beq- 7,.L29
	.loc 1 678 0
	lwz 11,92(31)
	.loc 1 680 0
	addi 8,31,88
	lwz 10,92(4)
	.loc 1 678 0
	lwz 9,0(11)
	lwz 9,4(9)
	stw 7,0(9)
	.loc 1 679 0
	lwz 9,88(4)
	lwz 0,0(11)
	lwz 9,4(9)
	stw 0,0(9)
	.loc 1 680 0
	lwz 9,0(10)
	lwz 9,4(9)
	stw 8,0(9)
	.loc 1 681 0
	lwz 0,0(10)
	stw 0,0(11)
.L29:
	.loc 1 684 0
	mr 3,4
	bl free
.LVL25:
	.loc 1 686 0
	lwz 0,20(1)
	mr 3,31
	lwz 31,12(1)
.LVL26:
	mtlr 0
	addi 1,1,16
	blr
.LFE19:
	.size	__gl_meshUnion, .-__gl_meshUnion
	.align 2
	.type	KillFace, @function
KillFace:
.LFB10:
	.loc 1 252 0
.LVL27:
	mflr 0
.LCFI8:
	stwu 1,-8(1)
.LCFI9:
	stw 0,12(1)
.LCFI10:
	.loc 1 253 0
	lwz 0,8(3)
.LVL28:
	mr 9,0
.LVL29:
.L33:
	.loc 1 259 0
	stw 4,20(9)
	.loc 1 260 0
	lwz 9,12(9)
	.loc 1 261 0
	cmpw 7,9,0
	bne+ 7,.L33
	.loc 1 264 0
	lwz 11,4(3)
.LVL30:
	.loc 1 265 0
	lwz 9,0(3)
.LVL31:
	.loc 1 267 0
	stw 9,0(11)
	.loc 1 266 0
	stw 11,4(9)
	.loc 1 269 0
	bl free
.LVL32:
	.loc 1 270 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE10:
	.size	KillFace, .-KillFace
	.align 2
	.type	KillVertex, @function
KillVertex:
.LFB9:
	.loc 1 228 0
.LVL33:
	mflr 0
.LCFI11:
	stwu 1,-8(1)
.LCFI12:
	stw 0,12(1)
.LCFI13:
	.loc 1 229 0
	lwz 0,8(3)
.LVL34:
	mr 9,0
.LVL35:
.L39:
	.loc 1 235 0
	stw 4,16(9)
	.loc 1 236 0
	lwz 9,8(9)
	.loc 1 237 0
	cmpw 7,9,0
	bne+ 7,.L39
	.loc 1 240 0
	lwz 11,4(3)
.LVL36:
	.loc 1 241 0
	lwz 9,0(3)
.LVL37:
	.loc 1 243 0
	stw 9,0(11)
	.loc 1 242 0
	stw 11,4(9)
	.loc 1 245 0
	bl free
.LVL38:
	.loc 1 246 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE9:
	.size	KillVertex, .-KillVertex
	.align 2
	.type	KillEdge, @function
KillEdge:
.LFB8:
	.loc 1 208 0
.LVL39:
	mflr 0
.LCFI14:
	stwu 1,-8(1)
.LCFI15:
	stw 0,12(1)
.LCFI16:
	.loc 1 208 0
	lwz 7,4(3)
.LVL40:
	cmplw 7,7,3
	ble- 7,.L45
.LVL41:
	mr 7,3
.L45:
	.loc 1 216 0
	lwz 9,4(7)
	.loc 1 220 0
	mr 3,7
	.loc 1 215 0
	lwz 8,0(7)
.LVL42:
	.loc 1 216 0
	lwz 9,0(9)
.LVL43:
	.loc 1 217 0
	lwz 11,4(8)
	.loc 1 218 0
	lwz 10,4(9)
	.loc 1 217 0
	stw 9,0(11)
	.loc 1 218 0
	stw 8,0(10)
	.loc 1 220 0
	bl free
.LVL44:
	.loc 1 221 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE8:
	.size	KillEdge, .-KillEdge
	.align 2
	.globl __gl_meshNewMesh
	.type	__gl_meshNewMesh, @function
__gl_meshNewMesh:
.LFB18:
	.loc 1 602 0
	mflr 0
.LCFI17:
	stwu 1,-8(1)
.LCFI18:
	.loc 1 607 0
	li 3,152
	.loc 1 602 0
	stw 0,12(1)
.LCFI19:
	.loc 1 607 0
	bl malloc
	.loc 1 608 0
	mr. 0,3
	li 3,0
.LVL45:
	beq- 0,.L50
	.loc 1 607 0
	mr 3,0
	.loc 1 618 0
	li 0,0
	.loc 1 613 0
	addi 9,3,64
.LVL46:
	.loc 1 614 0
	addi 11,3,88
.LVL47:
	.loc 1 615 0
	addi 10,3,120
.LVL48:
	.loc 1 621 0
	stw 9,64(3)
	.loc 1 637 0
	stw 10,120(3)
	.loc 1 638 0
	stw 11,124(3)
	.loc 1 644 0
	stw 0,144(3)
	.loc 1 617 0
	stw 3,4(3)
	stw 3,0(3)
	.loc 1 618 0
	stw 0,8(3)
	.loc 1 619 0
	stw 0,12(3)
	.loc 1 621 0
	stw 9,68(3)
	.loc 1 622 0
	stw 0,72(3)
	.loc 1 623 0
	stw 0,76(3)
	.loc 1 624 0
	stw 0,80(3)
	.loc 1 625 0
	stb 0,84(3)
	.loc 1 626 0
	stb 0,85(3)
	.loc 1 628 0
	stw 11,88(3)
	.loc 1 629 0
	stw 10,92(3)
	.loc 1 630 0
	stw 0,96(3)
	.loc 1 631 0
	stw 0,100(3)
	.loc 1 632 0
	stw 0,104(3)
	.loc 1 633 0
	stw 0,108(3)
	.loc 1 634 0
	stw 0,116(3)
	.loc 1 635 0
	stw 0,112(3)
	.loc 1 639 0
	stw 0,128(3)
	.loc 1 640 0
	stw 0,132(3)
	.loc 1 641 0
	stw 0,136(3)
	.loc 1 642 0
	stw 0,140(3)
	.loc 1 643 0
	stw 0,148(3)
.L50:
	.loc 1 647 0
	lwz 0,12(1)
	addi 1,1,8
.LVL49:
	mtlr 0
	blr
.LFE18:
	.size	__gl_meshNewMesh, .-__gl_meshNewMesh
	.align 2
	.type	MakeEdge, @function
MakeEdge:
.LFB4:
	.loc 1 73 0
.LVL50:
	stwu 1,-16(1)
.LCFI20:
	mflr 0
.LCFI21:
	stw 31,12(1)
.LCFI22:
	mr 31,3
	.loc 1 77 0
	li 3,64
.LVL51:
	.loc 1 73 0
	stw 0,20(1)
.LCFI23:
	.loc 1 77 0
	bl malloc
	.loc 1 78 0
	mr. 0,3
	li 3,0
.LVL52:
	beq- 0,.L55
	.loc 1 81 0
	lwz 8,4(31)
.LVL53:
	.loc 1 77 0
	mr 3,0
	.loc 1 81 0
	addi 7,3,32
.LVL54:
	cmplw 7,8,31
	ble- 7,.L56
.LVL55:
	mr 8,31
.L56:
	.loc 1 89 0
	lwz 10,4(8)
	.loc 1 98 0
	li 0,0
	.loc 1 104 0
	stw 7,40(3)
	.loc 1 89 0
	lwz 9,0(10)
.LVL56:
	.loc 1 109 0
	stw 0,56(3)
	.loc 1 91 0
	lwz 11,4(9)
	.loc 1 90 0
	stw 9,32(3)
	.loc 1 95 0
	stw 7,4(3)
	.loc 1 91 0
	stw 3,0(11)
	.loc 1 96 0
	stw 3,8(3)
	.loc 1 92 0
	stw 8,0(3)
	.loc 1 97 0
	stw 7,12(3)
	.loc 1 93 0
	stw 7,0(10)
	.loc 1 98 0
	stw 0,16(3)
	.loc 1 99 0
	stw 0,20(3)
	.loc 1 100 0
	stw 0,28(3)
	.loc 1 101 0
	stw 0,24(3)
	.loc 1 103 0
	stw 3,36(3)
	.loc 1 105 0
	stw 3,44(3)
	.loc 1 106 0
	stw 0,48(3)
	.loc 1 107 0
	stw 0,52(3)
	.loc 1 108 0
	stw 0,60(3)
.L55:
	.loc 1 112 0
	lwz 0,20(1)
.LVL57:
	lwz 31,12(1)
.LVL58:
	addi 1,1,16
	mtlr 0
	blr
.LFE4:
	.size	MakeEdge, .-MakeEdge
	.align 2
	.type	allocFace, @function
allocFace:
.LFB3:
	.loc 1 57 0
	mflr 0
.LCFI24:
	stwu 1,-8(1)
.LCFI25:
	.loc 1 58 0
	li 3,24
	.loc 1 57 0
	stw 0,12(1)
.LCFI26:
	.loc 1 58 0
	bl malloc
	.loc 1 59 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE3:
	.size	allocFace, .-allocFace
	.align 2
	.type	allocVertex, @function
allocVertex:
.LFB2:
	.loc 1 52 0
	mflr 0
.LCFI27:
	stwu 1,-8(1)
.LCFI28:
	.loc 1 53 0
	li 3,64
	.loc 1 52 0
	stw 0,12(1)
.LCFI29:
	.loc 1 53 0
	bl malloc
	.loc 1 54 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE2:
	.size	allocVertex, .-allocVertex
	.align 2
	.globl __gl_meshAddEdgeVertex
	.type	__gl_meshAddEdgeVertex, @function
__gl_meshAddEdgeVertex:
.LFB14:
	.loc 1 445 0
.LVL59:
	mflr 0
.LCFI30:
	stwu 1,-24(1)
.LCFI31:
	stmw 29,12(1)
.LCFI32:
	mr 29,3
	stw 0,28(1)
.LCFI33:
	.loc 1 447 0
	bl MakeEdge
.LVL60:
	.loc 1 448 0
	mr. 31,3
.LVL61:
	beq+ 0,.L63
	.loc 1 453 0
	lwz 11,12(29)
.LVL62:
.LBB8:
.LBB10:
	.loc 1 122 0
	lwz 7,8(31)
.LVL63:
	.loc 1 123 0
	lwz 8,8(11)
.LVL64:
.LBE10:
.LBE8:
	.loc 1 456 0
	lwz 9,4(29)
.LBB12:
.LBB9:
	.loc 1 125 0
	lwz 10,4(7)
.LBE9:
.LBE12:
	.loc 1 456 0
	lwz 0,16(9)
.LBB13:
.LBB11:
	.loc 1 126 0
	lwz 9,4(8)
	.loc 1 125 0
	stw 11,12(10)
	.loc 1 127 0
	stw 8,8(31)
	.loc 1 126 0
	stw 31,12(9)
	.loc 1 128 0
	stw 7,8(11)
.LBE11:
.LBE13:
	.loc 1 456 0
	stw 0,16(31)
	.loc 1 450 0
	lwz 30,4(31)
.LVL65:
.LBB14:
	.loc 1 458 0
	bl allocVertex
.LVL66:
	.loc 1 459 0
	cmpwi 7,3,0
	bne+ 7,.L65
	li 31,0
	b .L63
.L65:
	.loc 1 461 0
	lwz 5,16(31)
	mr 4,30
	bl MakeVertex
.LBE14:
	.loc 1 463 0
	lwz 0,20(29)
	stw 0,20(30)
	stw 0,20(31)
.L63:
	.loc 1 466 0
	lwz 0,28(1)
	mr 3,31
	lmw 29,12(1)
.LVL67:
	addi 1,1,24
	mtlr 0
	blr
.LFE14:
	.size	__gl_meshAddEdgeVertex, .-__gl_meshAddEdgeVertex
	.align 2
	.globl __gl_meshMakeEdge
	.type	__gl_meshMakeEdge, @function
__gl_meshMakeEdge:
.LFB11:
	.loc 1 279 0
.LVL68:
	mflr 0
.LCFI34:
	stwu 1,-32(1)
.LCFI35:
	stmw 27,12(1)
.LCFI36:
	mr 29,3
	stw 0,36(1)
.LCFI37:
	.loc 1 280 0
	bl allocVertex
.LVL69:
	mr 31,3
.LVL70:
	.loc 1 281 0
	bl allocVertex
	mr 30,3
.LVL71:
	.loc 1 282 0
	bl allocFace
	.loc 1 286 0
	cmpwi 7,31,0
	.loc 1 282 0
	mr 28,3
.LVL72:
	.loc 1 286 0
	beq- 7,.L69
	cmpwi 7,30,0
	beq- 7,.L71
	cmpwi 7,3,0
	bne- 7,.L73
.L71:
	.loc 1 287 0
	mr 3,31
	bl free
.L69:
	.loc 1 288 0
	cmpwi 7,30,0
	beq- 7,.L74
	mr 3,30
	bl free
.L74:
	.loc 1 289 0
	cmpwi 7,28,0
	li 27,0
.LVL73:
	beq+ 7,.L78
	mr 3,28
	bl free
	b .L78
.LVL74:
.L73:
	.loc 1 293 0
	addi 3,29,88
.LVL75:
	bl MakeEdge
	.loc 1 294 0
	mr. 27,3
.LVL76:
	beq- 0,.L78
	.loc 1 296 0
	mr 3,31
	mr 4,27
	mr 5,29
	bl MakeVertex
	.loc 1 297 0
	lwz 4,4(27)
	mr 3,30
	mr 5,29
	bl MakeVertex
	.loc 1 298 0
	mr 3,28
	mr 4,27
	addi 5,29,64
	bl MakeFace
.L78:
	.loc 1 300 0
	lwz 0,36(1)
	mr 3,27
	lmw 27,12(1)
.LVL77:
	addi 1,1,32
	mtlr 0
	blr
.LFE11:
	.size	__gl_meshMakeEdge, .-__gl_meshMakeEdge
	.align 2
	.globl __gl_meshSplice
	.type	__gl_meshSplice, @function
__gl_meshSplice:
.LFB12:
	.loc 1 327 0
.LVL78:
	.loc 1 331 0
	cmpw 7,3,4
	.loc 1 327 0
	mflr 0
.LCFI38:
	stwu 1,-24(1)
.LCFI39:
	stmw 28,8(1)
.LCFI40:
	mr 31,3
	stw 0,28(1)
.LCFI41:
	.loc 1 327 0
	mr 30,4
	.loc 1 331 0
	beq- 7,.L82
.LVL79:
	.loc 1 333 0
	lwz 3,16(4)
	li 29,0
.LVL80:
	lwz 4,16(31)
	cmpw 7,3,4
	beq- 7,.L86
	.loc 1 336 0
	bl KillVertex
	li 29,1
.L86:
	.loc 1 338 0
	lwz 3,20(30)
	li 28,0
.LVL81:
	lwz 4,20(31)
	cmpw 7,3,4
	beq- 7,.L89
	.loc 1 341 0
	bl KillFace
	li 28,1
.L89:
.LBB19:
.LBB20:
	.loc 1 122 0
	lwz 8,8(30)
.LVL82:
.LBE20:
.LBE19:
	.loc 1 347 0
	cmpwi 7,29,0
.LBB22:
.LBB21:
	.loc 1 123 0
	lwz 11,8(31)
.LVL83:
	.loc 1 125 0
	lwz 9,4(8)
	.loc 1 126 0
	lwz 10,4(11)
	.loc 1 125 0
	stw 31,12(9)
	.loc 1 127 0
	stw 11,8(30)
	.loc 1 126 0
	stw 30,12(10)
	.loc 1 128 0
	stw 8,8(31)
.LBE21:
.LBE22:
	.loc 1 347 0
	bne+ 7,.L90
.LBB23:
	.loc 1 348 0
	bl allocVertex
.LVL84:
	.loc 1 349 0
	cmpwi 7,3,0
	beq- 7,.L92
	.loc 1 354 0
	lwz 5,16(31)
	mr 4,30
	bl MakeVertex
	.loc 1 355 0
	lwz 9,16(31)
	stw 31,8(9)
.LVL85:
.L90:
.LBE23:
	.loc 1 357 0
	cmpwi 7,28,0
	bne- 7,.L82
.LBB24:
	.loc 1 358 0
	bl allocFace
.LVL86:
	.loc 1 359 0
	cmpwi 7,3,0
	beq- 7,.L92
	.loc 1 364 0
	lwz 5,20(31)
	mr 4,30
	bl MakeFace
	.loc 1 365 0
	lwz 9,20(31)
	li 3,1
	stw 31,8(9)
	b .L96
.LVL87:
.L82:
	li 3,1
	b .L96
.LVL88:
.L92:
	li 3,0
.LVL89:
.L96:
.LBE24:
	.loc 1 369 0
	lwz 0,28(1)
	lmw 28,8(1)
.LVL90:
	addi 1,1,24
	mtlr 0
	blr
.LFE12:
	.size	__gl_meshSplice, .-__gl_meshSplice
	.align 2
	.globl __gl_meshZapFace
	.type	__gl_meshZapFace, @function
__gl_meshZapFace:
.LFB17:
	.loc 1 554 0
.LVL91:
	mflr 0
.LCFI42:
	stwu 1,-24(1)
.LCFI43:
	stmw 28,8(1)
.LCFI44:
	mr 30,3
	stw 0,28(1)
.LCFI45:
	.loc 1 555 0
	lwz 29,8(3)
.LVL92:
	.loc 1 560 0
	lwz 31,12(29)
.LVL93:
.L99:
	.loc 1 565 0
	li 0,0
	.loc 1 566 0
	lwz 9,4(31)
	.loc 1 565 0
	stw 0,20(31)
	.loc 1 563 0
	lwz 28,12(31)
.LVL94:
	.loc 1 566 0
	lwz 0,20(9)
	cmpwi 7,0,0
	bne+ 7,.L100
	.loc 1 569 0
	lwz 0,8(31)
	lwz 3,16(31)
.LVL95:
	cmpw 7,0,31
	bne+ 7,.L102
.LVL96:
	.loc 1 570 0
	li 4,0
	bl KillVertex
	b .L104
.L102:
	.loc 1 573 0
	stw 0,8(3)
	.loc 1 574 0
	lwz 9,4(31)
.LBB29:
.LBB30:
	.loc 1 122 0
	lwz 8,8(31)
.LVL97:
.LBE30:
.LBE29:
	.loc 1 574 0
	lwz 9,12(9)
.LVL98:
.LBB32:
.LBB31:
	.loc 1 125 0
	lwz 11,4(8)
	.loc 1 123 0
	lwz 10,8(9)
.LVL99:
	.loc 1 125 0
	stw 9,12(11)
	.loc 1 126 0
	lwz 11,4(10)
	.loc 1 127 0
	stw 10,8(31)
	.loc 1 126 0
	stw 31,12(11)
	.loc 1 128 0
	stw 8,8(9)
.L104:
.LBE31:
.LBE32:
	.loc 1 576 0
	lwz 7,4(31)
.LVL100:
	.loc 1 577 0
	lwz 0,8(7)
	lwz 3,16(7)
	cmpw 7,0,7
	bne+ 7,.L105
	.loc 1 578 0
	li 4,0
	bl KillVertex
.LVL101:
	b .L107
.LVL102:
.L105:
	.loc 1 581 0
	stw 0,8(3)
	.loc 1 582 0
	lwz 9,4(7)
.LVL103:
.LBB33:
.LBB34:
	.loc 1 122 0
	lwz 8,8(7)
.LVL104:
.LBE34:
.LBE33:
	.loc 1 582 0
	lwz 9,12(9)
.LVL105:
.LBB36:
.LBB35:
	.loc 1 125 0
	lwz 11,4(8)
	.loc 1 123 0
	lwz 10,8(9)
.LVL106:
	.loc 1 125 0
	stw 9,12(11)
	.loc 1 126 0
	lwz 11,4(10)
	.loc 1 127 0
	stw 10,8(7)
	.loc 1 126 0
	stw 7,12(11)
	.loc 1 128 0
	stw 8,8(9)
.L107:
.LBE35:
.LBE36:
	.loc 1 584 0
	mr 3,31
	bl KillEdge
.LVL107:
.L100:
	.loc 1 586 0
	cmpw 7,31,29
	mr 31,28
	bne+ 7,.L99
.LVL108:
	.loc 1 589 0
	lwz 11,4(30)
.LVL109:
	.loc 1 594 0
	mr 3,30
	.loc 1 590 0
	lwz 9,0(30)
.LVL110:
	.loc 1 592 0
	stw 9,0(11)
	.loc 1 591 0
	stw 11,4(9)
	.loc 1 594 0
	bl free
.LVL111:
	.loc 1 595 0
	lwz 0,28(1)
	lmw 28,8(1)
.LVL112:
	addi 1,1,24
	mtlr 0
	blr
.LFE17:
	.size	__gl_meshZapFace, .-__gl_meshZapFace
	.align 2
	.globl __gl_meshConnect
	.type	__gl_meshConnect, @function
__gl_meshConnect:
.LFB16:
	.loc 1 507 0
.LVL113:
	mflr 0
.LCFI46:
	stwu 1,-24(1)
.LCFI47:
	stmw 28,8(1)
.LCFI48:
	mr 29,4
	stw 0,28(1)
.LCFI49:
	.loc 1 507 0
	mr 28,3
	.loc 1 510 0
	bl MakeEdge
.LVL114:
	.loc 1 511 0
	mr. 31,3
.LVL115:
	beq- 0,.L112
	.loc 1 515 0
	lwz 3,20(29)
	li 10,0
.LVL116:
	lwz 4,20(28)
	.loc 1 513 0
	lwz 30,4(31)
.LVL117:
	.loc 1 515 0
	cmpw 7,3,4
	beq- 7,.L116
	.loc 1 518 0
	bl KillFace
.LVL118:
	li 10,1
.LVL119:
.L116:
	.loc 1 522 0
	lwz 11,12(28)
.LVL120:
	.loc 1 533 0
	cmpwi 7,10,0
.LBB42:
.LBB46:
	.loc 1 122 0
	lwz 8,8(31)
.LVL121:
	.loc 1 123 0
	lwz 7,8(11)
.LVL122:
.LBE46:
.LBE42:
	.loc 1 526 0
	lwz 9,4(28)
.LBB50:
.LBB45:
	.loc 1 127 0
	stw 7,8(31)
.LBE45:
.LBE50:
	.loc 1 526 0
	lwz 0,16(9)
.LBB51:
.LBB47:
	.loc 1 128 0
	stw 8,8(11)
.LBE47:
.LBE51:
	.loc 1 528 0
	lwz 9,20(28)
.LBB52:
.LBB56:
	.loc 1 122 0
	lwz 6,8(30)
.LVL123:
.LBE56:
.LBE52:
	.loc 1 528 0
	stw 9,20(30)
.LBB60:
.LBB55:
	.loc 1 123 0
	lwz 10,8(29)
.LVL124:
.LBE55:
.LBE60:
	.loc 1 526 0
	stw 0,16(31)
	.loc 1 528 0
	stw 9,20(31)
	.loc 1 527 0
	lwz 0,16(29)
.LBB61:
.LBB44:
	.loc 1 125 0
	lwz 9,4(8)
.LBE44:
.LBE61:
.LBB62:
.LBB57:
	.loc 1 126 0
	lwz 5,4(10)
.LBE57:
.LBE62:
.LBB63:
.LBB48:
	lwz 8,4(7)
.LVL125:
.LBE48:
.LBE63:
	.loc 1 531 0
	lwz 4,20(28)
.LBB64:
.LBB54:
	.loc 1 125 0
	lwz 7,4(6)
.LVL126:
.LBE54:
.LBE64:
.LBB65:
.LBB43:
	stw 11,12(9)
.LBE43:
.LBE65:
.LBB66:
.LBB58:
	.loc 1 127 0
	stw 10,8(30)
.LBE58:
.LBE66:
.LBB67:
.LBB49:
	.loc 1 126 0
	stw 31,12(8)
.LBE49:
.LBE67:
.LBB68:
.LBB53:
	.loc 1 128 0
	stw 6,8(29)
	.loc 1 125 0
	stw 29,12(7)
.LBE53:
.LBE68:
	.loc 1 527 0
	stw 0,16(30)
.LBB69:
.LBB59:
	.loc 1 126 0
	stw 30,12(5)
.LBE59:
.LBE69:
	.loc 1 531 0
	stw 30,8(4)
	.loc 1 533 0
	bne+ 7,.L112
.LBB70:
	.loc 1 534 0
	bl allocFace
.LVL127:
	.loc 1 535 0
	cmpwi 7,3,0
	bne+ 7,.L118
	li 31,0
	b .L112
.L118:
	.loc 1 538 0
	lwz 5,20(28)
	mr 4,31
	bl MakeFace
.LVL128:
.L112:
.LBE70:
	.loc 1 541 0
	lwz 0,28(1)
	mr 3,31
	lmw 28,8(1)
.LVL129:
	addi 1,1,24
	mtlr 0
	blr
.LFE16:
	.size	__gl_meshConnect, .-__gl_meshConnect
	.align 2
	.globl __gl_meshSplitEdge
	.type	__gl_meshSplitEdge, @function
__gl_meshSplitEdge:
.LFB15:
	.loc 1 474 0
.LVL130:
	mflr 0
.LCFI50:
	stwu 1,-24(1)
.LCFI51:
	stmw 29,12(1)
.LCFI52:
	mr 31,3
	stw 0,28(1)
.LCFI53:
	.loc 1 476 0
	bl __gl_meshAddEdgeVertex
.LVL131:
	.loc 1 477 0
	cmpwi 0,3,0
.LVL132:
	li 12,0
.LVL133:
	beq- 0,.L124
	.loc 1 482 0
	lwz 9,4(31)
	.loc 1 479 0
	lwz 12,4(3)
	.loc 1 482 0
	lwz 11,4(9)
.LBB75:
.LBB78:
	.loc 1 122 0
	lwz 8,8(9)
.LVL134:
.LBE78:
.LBE75:
	.loc 1 482 0
	lwz 11,12(11)
.LVL135:
	.loc 1 486 0
	lwz 0,16(12)
.LBB82:
.LBB79:
	.loc 1 123 0
	lwz 7,8(11)
.LVL136:
.LBE79:
.LBE82:
	.loc 1 486 0
	stw 0,16(9)
.LBB83:
.LBB77:
	.loc 1 127 0
	stw 7,8(9)
	.loc 1 128 0
	stw 8,8(11)
.LBE77:
.LBE83:
	.loc 1 487 0
	lwz 29,4(12)
.LBB84:
.LBB86:
	.loc 1 122 0
	lwz 6,8(9)
.LVL137:
	.loc 1 123 0
	lwz 10,8(12)
.LVL138:
.LBE86:
.LBE84:
.LBB89:
.LBB80:
	.loc 1 125 0
	lwz 8,4(8)
.LVL139:
	.loc 1 126 0
	lwz 7,4(7)
.LVL140:
.LBE80:
.LBE89:
.LBB90:
.LBB87:
	.loc 1 125 0
	lwz 5,4(6)
	.loc 1 126 0
	lwz 4,4(10)
.LBE87:
.LBE90:
	.loc 1 487 0
	lwz 3,16(29)
.LVL141:
.LBB91:
.LBB76:
	.loc 1 125 0
	stw 11,12(8)
.LBE76:
.LBE91:
.LBB92:
.LBB85:
	.loc 1 127 0
	stw 10,8(9)
.LBE85:
.LBE92:
.LBB93:
.LBB81:
	.loc 1 126 0
	stw 9,12(7)
.LBE81:
.LBE93:
.LBB94:
.LBB88:
	.loc 1 128 0
	stw 6,8(12)
	.loc 1 125 0
	stw 12,12(5)
	.loc 1 126 0
	stw 9,12(4)
.LBE88:
.LBE94:
	.loc 1 487 0
	stw 29,8(3)
	.loc 1 489 0
	lwz 0,28(31)
	.loc 1 488 0
	lwz 9,4(31)
	.loc 1 489 0
	stw 0,28(12)
	.loc 1 488 0
	lwz 11,4(12)
.LVL142:
	.loc 1 490 0
	lwz 0,28(9)
	.loc 1 488 0
	lwz 9,20(9)
	.loc 1 490 0
	stw 0,28(11)
	.loc 1 488 0
	stw 9,20(11)
.LVL143:
.L124:
	.loc 1 493 0
	lwz 0,28(1)
	mr 3,12
.LVL144:
	lmw 29,12(1)
.LVL145:
	addi 1,1,24
	mtlr 0
	blr
.LFE15:
	.size	__gl_meshSplitEdge, .-__gl_meshSplitEdge
	.align 2
	.globl __gl_meshDelete
	.type	__gl_meshDelete, @function
__gl_meshDelete:
.LFB13:
	.loc 1 383 0
.LVL146:
	mflr 0
.LCFI54:
	stwu 1,-16(1)
.LCFI55:
	.loc 1 390 0
	li 11,0
.LVL147:
	.loc 1 383 0
	stmw 30,8(1)
.LCFI56:
	mr 31,3
	stw 0,20(1)
.LCFI57:
	.loc 1 384 0
	lwz 30,4(3)
.LVL148:
	.loc 1 390 0
	lwz 3,20(3)
.LVL149:
	lwz 4,20(30)
	cmpw 7,3,4
	beq- 7,.L129
	.loc 1 393 0
	bl KillFace
.LVL150:
	li 11,1
.LVL151:
.L129:
	.loc 1 396 0
	lwz 0,8(31)
	cmpw 7,0,31
	bne+ 7,.L130
	.loc 1 397 0
	lwz 3,16(31)
	li 4,0
	bl KillVertex
.LVL152:
	b .L132
.LVL153:
.L130:
	.loc 1 400 0
	lwz 9,4(31)
	.loc 1 404 0
	cmpwi 7,11,0
	.loc 1 400 0
	lwz 0,12(9)
	lwz 9,20(9)
	stw 0,8(9)
	.loc 1 401 0
	lwz 0,8(31)
	lwz 9,16(31)
	stw 0,8(9)
	.loc 1 403 0
	lwz 9,4(31)
.LBB100:
.LBB101:
	.loc 1 122 0
	lwz 8,8(31)
.LVL154:
.LBE101:
.LBE100:
	.loc 1 403 0
	lwz 9,12(9)
.LVL155:
.LBB103:
.LBB102:
	.loc 1 125 0
	lwz 11,4(8)
.LVL156:
	.loc 1 123 0
	lwz 10,8(9)
.LVL157:
	.loc 1 125 0
	stw 9,12(11)
	.loc 1 126 0
	lwz 11,4(10)
	.loc 1 127 0
	stw 10,8(31)
	.loc 1 126 0
	stw 31,12(11)
	.loc 1 128 0
	stw 8,8(9)
.LBE102:
.LBE103:
	.loc 1 404 0
	bne+ 7,.L132
.LBB104:
	.loc 1 405 0
	bl allocFace
.LVL158:
	.loc 1 406 0
	li 0,0
	cmpwi 7,3,0
	beq- 7,.L136
	.loc 1 409 0
	lwz 5,20(31)
	mr 4,31
	bl MakeFace
.LVL159:
.L132:
.LBE104:
	.loc 1 416 0
	lwz 0,8(30)
	cmpw 7,0,30
	bne+ 7,.L137
	.loc 1 417 0
	lwz 3,16(30)
	li 4,0
	bl KillVertex
.LVL160:
	.loc 1 418 0
	lwz 3,20(30)
	li 4,0
	bl KillFace
	b .L139
.LVL161:
.L137:
	.loc 1 421 0
	lwz 9,4(30)
.LVL162:
	lwz 11,20(31)
	lwz 0,12(9)
	stw 0,8(11)
	.loc 1 422 0
	lwz 0,8(30)
	lwz 9,16(30)
	stw 0,8(9)
	.loc 1 423 0
	lwz 9,4(30)
.LBB105:
.LBB106:
	.loc 1 122 0
	lwz 8,8(30)
.LVL163:
.LBE106:
.LBE105:
	.loc 1 423 0
	lwz 9,12(9)
.LVL164:
.LBB108:
.LBB107:
	.loc 1 125 0
	lwz 11,4(8)
	.loc 1 123 0
	lwz 10,8(9)
.LVL165:
	.loc 1 125 0
	stw 9,12(11)
	.loc 1 126 0
	lwz 11,4(10)
	.loc 1 127 0
	stw 10,8(30)
	.loc 1 126 0
	stw 30,12(11)
	.loc 1 128 0
	stw 8,8(9)
.L139:
.LBE107:
.LBE108:
	.loc 1 427 0
	mr 3,31
	bl KillEdge
.LVL166:
	li 0,1
.L136:
	.loc 1 430 0
	mr 3,0
	lwz 0,20(1)
	lmw 30,8(1)
.LVL167:
	addi 1,1,16
	mtlr 0
	blr
.LFE13:
	.size	__gl_meshDelete, .-__gl_meshDelete
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI1-.LFB20
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
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
	.4byte	.LCFI3-.LCFI2
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI5-.LFB19
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
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI9-.LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI12-.LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI15-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI18-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI20-.LFB4
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI22-.LCFI20
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
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
	.4byte	.LCFI25-.LFB3
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI28-.LFB2
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI31-.LFB14
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
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
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
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI37-.LCFI36
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
	.4byte	.LCFI39-.LFB12
	.byte	0xe
	.uleb128 0x18
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
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI41-.LCFI40
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI43-.LFB17
	.byte	0xe
	.uleb128 0x18
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
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI45-.LCFI44
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI47-.LFB16
	.byte	0xe
	.uleb128 0x18
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
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI49-.LCFI48
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI51-.LFB15
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI52-.LCFI51
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
	.4byte	.LCFI53-.LCFI52
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI55-.LFB13
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI56-.LCFI55
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI57-.LCFI56
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
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB20-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB19-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LFB9-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LFB8-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LFB18-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI20-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL58-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI25-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI28-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LFB14-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST47:
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
.LLST48:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LFB12-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI39-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL90-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL89-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL89-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LFB17-.Ltext0
	.4byte	.LCFI43-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI43-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST62:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST63:
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST64:
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST65:
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST66:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST67:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST68:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST69:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST70:
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST71:
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST72:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST73:
	.4byte	.LFB16-.Ltext0
	.4byte	.LCFI47-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI47-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST74:
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST75:
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST76:
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST77:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST78:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST79:
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST80:
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST81:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST82:
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST83:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST84:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI51-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI51-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST85:
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST86:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST87:
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST88:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST89:
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST90:
	.4byte	.LFB13-.Ltext0
	.4byte	.LCFI55-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI55-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST91:
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST92:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST93:
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST94:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST95:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST96:
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST97:
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST98:
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST99:
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/include/GL/gl.h"
	.file 3 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/mesh.h"
	.section	.debug_info
	.4byte	0xc1d
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x1
	.4byte	.LASF91
	.4byte	.LASF92
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
	.byte	0x93
	.4byte	0x2f
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x2
	.byte	0x9f
	.4byte	0x94
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2f
	.4byte	0xa6
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x98
	.byte	0x3
	.byte	0x2f
	.4byte	0xeb
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x3
	.byte	0xab
	.4byte	0xeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x3
	.byte	0xac
	.4byte	0x16f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x3
	.byte	0xad
	.4byte	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x3
	.byte	0xae
	.4byte	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x3
	.byte	0x31
	.4byte	0xf6
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x40
	.byte	0x3
	.byte	0x31
	.4byte	0x16f
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x3
	.byte	0x7a
	.4byte	0x282
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x3
	.byte	0x7b
	.4byte	0x282
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x3
	.byte	0x7c
	.4byte	0x288
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x3
	.byte	0x7d
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x3
	.byte	0x80
	.4byte	0x28e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"s"
	.byte	0x3
	.byte	0x81
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"t"
	.byte	0x3
	.byte	0x81
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x3
	.byte	0x82
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x3
	.byte	0x32
	.4byte	0x17a
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x18
	.byte	0x3
	.byte	0x32
	.4byte	0x1e9
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x3
	.byte	0x86
	.4byte	0x29e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x3
	.byte	0x87
	.4byte	0x29e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x3
	.byte	0x88
	.4byte	0x288
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x3
	.byte	0x89
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x3
	.byte	0x8c
	.4byte	0x29e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x3
	.byte	0x8d
	.4byte	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x3
	.byte	0x8e
	.4byte	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x3
	.byte	0x33
	.4byte	0x1f4
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x20
	.byte	0x3
	.byte	0x33
	.4byte	0x271
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x3
	.byte	0x92
	.4byte	0x288
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"Sym"
	.byte	0x3
	.byte	0x93
	.4byte	0x288
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x3
	.byte	0x94
	.4byte	0x288
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x3
	.byte	0x95
	.4byte	0x288
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"Org"
	.byte	0x3
	.byte	0x96
	.4byte	0x282
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x3
	.byte	0x97
	.4byte	0x29e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x3
	.byte	0x9a
	.4byte	0x2a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x3
	.byte	0x9b
	.4byte	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x3
	.byte	0x35
	.4byte	0x27c
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x1
	.uleb128 0xb
	.byte	0x4
	.4byte	0xeb
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1e9
	.uleb128 0xc
	.4byte	0x89
	.4byte	0x29e
	.uleb128 0xd
	.4byte	0x2c
	.byte	0x2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x16f
	.uleb128 0xb
	.byte	0x4
	.4byte	0x271
	.uleb128 0xe
	.byte	0x40
	.byte	0x1
	.byte	0x42
	.4byte	0x2cd
	.uleb128 0x9
	.string	"e"
	.byte	0x1
	.byte	0x42
	.4byte	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x1
	.byte	0x42
	.4byte	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x1
	.byte	0x42
	.4byte	0x2aa
	.uleb128 0xf
	.4byte	.LASF93
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.byte	0x1
	.4byte	0x30e
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.byte	0x78
	.4byte	0x288
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x78
	.4byte	0x288
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x1
	.byte	0x7a
	.4byte	0x288
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x1
	.byte	0x7b
	.4byte	0x288
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x51
	.4byte	0x371
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x1
	.byte	0x89
	.4byte	0x282
	.byte	0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0x8a
	.4byte	0x288
	.byte	0x1
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x1
	.byte	0x8a
	.4byte	0x282
	.byte	0x1
	.byte	0x55
	.uleb128 0x14
	.string	"e"
	.byte	0x1
	.byte	0x8c
	.4byte	0x288
	.byte	0x1
	.byte	0x59
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x1
	.byte	0x8d
	.4byte	0x282
	.4byte	.LLST1
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x1
	.byte	0x8e
	.4byte	0x282
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x1
	.byte	0xac
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x51
	.4byte	0x3d4
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x1
	.byte	0xab
	.4byte	0x29e
	.byte	0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0xab
	.4byte	0x288
	.byte	0x1
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x1
	.byte	0xab
	.4byte	0x29e
	.byte	0x1
	.byte	0x55
	.uleb128 0x14
	.string	"e"
	.byte	0x1
	.byte	0xad
	.4byte	0x288
	.byte	0x1
	.byte	0x59
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x1
	.byte	0xae
	.4byte	0x29e
	.4byte	.LLST3
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x1
	.byte	0xaf
	.4byte	0x29e
	.byte	0x0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x2c6
	.byte	0x1
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LLST4
	.4byte	0x459
	.uleb128 0x17
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x2c5
	.4byte	0x459
	.4byte	.LLST5
	.uleb128 0x18
	.string	"f"
	.byte	0x1
	.2byte	0x2c7
	.4byte	0x29e
	.4byte	.LLST6
	.uleb128 0x19
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x2c7
	.4byte	0x29e
	.4byte	.LLST7
	.uleb128 0x18
	.string	"v"
	.byte	0x1
	.2byte	0x2c8
	.4byte	0x282
	.4byte	.LLST8
	.uleb128 0x19
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x2c8
	.4byte	0x282
	.4byte	.LLST9
	.uleb128 0x18
	.string	"e"
	.byte	0x1
	.2byte	0x2c9
	.4byte	0x288
	.4byte	.LLST10
	.uleb128 0x19
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x2c9
	.4byte	0x288
	.4byte	.LLST11
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9b
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x28e
	.byte	0x1
	.4byte	0x459
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LLST12
	.4byte	0x4e0
	.uleb128 0x17
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x28d
	.4byte	0x459
	.4byte	.LLST13
	.uleb128 0x17
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x28d
	.4byte	0x459
	.4byte	.LLST14
	.uleb128 0x1b
	.string	"f1"
	.byte	0x1
	.2byte	0x28f
	.4byte	0x29e
	.uleb128 0x1b
	.string	"v1"
	.byte	0x1
	.2byte	0x290
	.4byte	0x282
	.uleb128 0x1b
	.string	"e1"
	.byte	0x1
	.2byte	0x291
	.4byte	0x288
	.uleb128 0x1b
	.string	"f2"
	.byte	0x1
	.2byte	0x292
	.4byte	0x29e
	.uleb128 0x1b
	.string	"v2"
	.byte	0x1
	.2byte	0x293
	.4byte	0x282
	.uleb128 0x1b
	.string	"e2"
	.byte	0x1
	.2byte	0x294
	.4byte	0x288
	.byte	0x0
	.uleb128 0x1c
	.4byte	.LASF56
	.byte	0x1
	.byte	0xfc
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST15
	.4byte	0x551
	.uleb128 0x1d
	.4byte	.LASF57
	.byte	0x1
	.byte	0xfb
	.4byte	0x29e
	.4byte	.LLST16
	.uleb128 0x1d
	.4byte	.LASF58
	.byte	0x1
	.byte	0xfb
	.4byte	0x29e
	.4byte	.LLST17
	.uleb128 0x1e
	.string	"e"
	.byte	0x1
	.byte	0xfd
	.4byte	0x288
	.4byte	.LLST18
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x1
	.byte	0xfd
	.4byte	0x288
	.4byte	.LLST19
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x1
	.byte	0xfe
	.4byte	0x29e
	.4byte	.LLST20
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x1
	.byte	0xfe
	.4byte	0x29e
	.4byte	.LLST21
	.byte	0x0
	.uleb128 0x1c
	.4byte	.LASF60
	.byte	0x1
	.byte	0xe4
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST22
	.4byte	0x5c2
	.uleb128 0x1d
	.4byte	.LASF61
	.byte	0x1
	.byte	0xe3
	.4byte	0x282
	.4byte	.LLST23
	.uleb128 0x1d
	.4byte	.LASF62
	.byte	0x1
	.byte	0xe3
	.4byte	0x282
	.4byte	.LLST24
	.uleb128 0x1e
	.string	"e"
	.byte	0x1
	.byte	0xe5
	.4byte	0x288
	.4byte	.LLST25
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x1
	.byte	0xe5
	.4byte	0x288
	.4byte	.LLST26
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x1
	.byte	0xe6
	.4byte	0x282
	.4byte	.LLST27
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x1
	.byte	0xe6
	.4byte	0x282
	.4byte	.LLST28
	.byte	0x0
	.uleb128 0x1c
	.4byte	.LASF63
	.byte	0x1
	.byte	0xd0
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST29
	.4byte	0x608
	.uleb128 0x1d
	.4byte	.LASF64
	.byte	0x1
	.byte	0xcf
	.4byte	0x288
	.4byte	.LLST30
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x1
	.byte	0xd1
	.4byte	0x288
	.4byte	.LLST31
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0x1
	.byte	0xd1
	.4byte	0x288
	.4byte	.LLST32
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x25a
	.byte	0x1
	.4byte	0x459
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LLST33
	.4byte	0x667
	.uleb128 0x1b
	.string	"v"
	.byte	0x1
	.2byte	0x25b
	.4byte	0x282
	.uleb128 0x1f
	.string	"f"
	.byte	0x1
	.2byte	0x25c
	.4byte	0x29e
	.byte	0x1
	.byte	0x59
	.uleb128 0x1f
	.string	"e"
	.byte	0x1
	.2byte	0x25d
	.4byte	0x288
	.byte	0x1
	.byte	0x5b
	.uleb128 0x20
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x25e
	.4byte	0x288
	.byte	0x1
	.byte	0x5a
	.uleb128 0x19
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x25f
	.4byte	0x459
	.4byte	.LLST34
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF94
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.4byte	0x288
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST35
	.4byte	0x6c5
	.uleb128 0x1d
	.4byte	.LASF53
	.byte	0x1
	.byte	0x48
	.4byte	0x288
	.4byte	.LLST36
	.uleb128 0x1e
	.string	"e"
	.byte	0x1
	.byte	0x4a
	.4byte	0x288
	.4byte	.LLST37
	.uleb128 0x22
	.4byte	.LASF37
	.byte	0x1
	.byte	0x4b
	.4byte	0x288
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.4byte	.LASF65
	.byte	0x1
	.byte	0x4c
	.4byte	0x288
	.byte	0x1
	.byte	0x59
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x1
	.byte	0x4d
	.4byte	0x6c5
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2cd
	.uleb128 0x23
	.4byte	.LASF69
	.byte	0x1
	.byte	0x39
	.4byte	0x29e
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST38
	.uleb128 0x23
	.4byte	.LASF70
	.byte	0x1
	.byte	0x34
	.4byte	0x282
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST39
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1bd
	.byte	0x1
	.4byte	0x288
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST40
	.4byte	0x795
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x288
	.4byte	.LLST41
	.uleb128 0x19
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1be
	.4byte	0x288
	.4byte	.LLST42
	.uleb128 0x19
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x288
	.4byte	.LLST43
	.uleb128 0x24
	.4byte	0x2d8
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x77e
	.uleb128 0x25
	.4byte	0x2ee
	.4byte	.LLST44
	.uleb128 0x26
	.4byte	0x2e5
	.uleb128 0x27
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0x28
	.4byte	0x2f7
	.4byte	.LLST45
	.uleb128 0x28
	.4byte	0x302
	.4byte	.LLST46
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.4byte	.LBB14
	.4byte	.LBE14
	.uleb128 0x2a
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x282
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x117
	.byte	0x1
	.4byte	0x288
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST47
	.4byte	0x802
	.uleb128 0x17
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x116
	.4byte	0x459
	.4byte	.LLST48
	.uleb128 0x19
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x118
	.4byte	0x282
	.4byte	.LLST49
	.uleb128 0x19
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x119
	.4byte	0x282
	.4byte	.LLST50
	.uleb128 0x19
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x11a
	.4byte	0x29e
	.4byte	.LLST51
	.uleb128 0x18
	.string	"e"
	.byte	0x1
	.2byte	0x11b
	.4byte	0x288
	.4byte	.LLST52
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x147
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST53
	.4byte	0x8c4
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x146
	.4byte	0x288
	.4byte	.LLST54
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x146
	.4byte	0x288
	.4byte	.LLST55
	.uleb128 0x19
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x148
	.4byte	0x4d
	.4byte	.LLST56
	.uleb128 0x19
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x149
	.4byte	0x4d
	.4byte	.LLST57
	.uleb128 0x24
	.4byte	0x2d8
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.2byte	0x159
	.4byte	0x893
	.uleb128 0x26
	.4byte	0x2ee
	.uleb128 0x26
	.4byte	0x2e5
	.uleb128 0x27
	.4byte	.Ldebug_ranges0+0x58
	.uleb128 0x28
	.4byte	0x2f7
	.4byte	.LLST58
	.uleb128 0x28
	.4byte	0x302
	.4byte	.LLST59
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	0x8ad
	.uleb128 0x2a
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x15c
	.4byte	0x282
	.byte	0x0
	.uleb128 0x29
	.4byte	.LBB24
	.4byte	.LBE24
	.uleb128 0x2a
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x166
	.4byte	0x29e
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x22a
	.byte	0x1
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST60
	.4byte	0x9b3
	.uleb128 0x17
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x229
	.4byte	0x29e
	.4byte	.LLST61
	.uleb128 0x19
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x22b
	.4byte	0x288
	.4byte	.LLST62
	.uleb128 0x1b
	.string	"e"
	.byte	0x1
	.2byte	0x22c
	.4byte	0x288
	.uleb128 0x19
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x22c
	.4byte	0x288
	.4byte	.LLST63
	.uleb128 0x19
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x22c
	.4byte	0x288
	.4byte	.LLST64
	.uleb128 0x19
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x22d
	.4byte	0x29e
	.4byte	.LLST65
	.uleb128 0x19
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x22d
	.4byte	0x29e
	.4byte	.LLST66
	.uleb128 0x24
	.4byte	0x2d8
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.2byte	0x23e
	.4byte	0x97f
	.uleb128 0x25
	.4byte	0x2ee
	.4byte	.LLST67
	.uleb128 0x26
	.4byte	0x2e5
	.uleb128 0x27
	.4byte	.Ldebug_ranges0+0x88
	.uleb128 0x28
	.4byte	0x2f7
	.4byte	.LLST68
	.uleb128 0x28
	.4byte	0x302
	.4byte	.LLST69
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.4byte	0x2d8
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1
	.2byte	0x246
	.uleb128 0x25
	.4byte	0x2ee
	.4byte	.LLST70
	.uleb128 0x26
	.4byte	0x2e5
	.uleb128 0x27
	.4byte	.Ldebug_ranges0+0xb8
	.uleb128 0x28
	.4byte	0x2f7
	.4byte	.LLST71
	.uleb128 0x28
	.4byte	0x302
	.4byte	.LLST72
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1fb
	.byte	0x1
	.4byte	0x288
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST73
	.4byte	0xaa2
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x288
	.4byte	.LLST74
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x288
	.4byte	.LLST75
	.uleb128 0x19
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1fc
	.4byte	0x288
	.4byte	.LLST76
	.uleb128 0x19
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1fd
	.4byte	0x4d
	.4byte	.LLST77
	.uleb128 0x19
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1fe
	.4byte	0x288
	.4byte	.LLST78
	.uleb128 0x24
	.4byte	0x2d8
	.4byte	.Ldebug_ranges0+0xd0
	.byte	0x1
	.2byte	0x20a
	.4byte	0xa58
	.uleb128 0x25
	.4byte	0x2ee
	.4byte	.LLST79
	.uleb128 0x26
	.4byte	0x2e5
	.uleb128 0x27
	.4byte	.Ldebug_ranges0+0x110
	.uleb128 0x28
	.4byte	0x2f7
	.4byte	.LLST80
	.uleb128 0x28
	.4byte	0x302
	.4byte	.LLST81
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.4byte	0x2d8
	.4byte	.Ldebug_ranges0+0x150
	.byte	0x1
	.2byte	0x20b
	.4byte	0xa8b
	.uleb128 0x26
	.4byte	0x2ee
	.uleb128 0x26
	.4byte	0x2e5
	.uleb128 0x27
	.4byte	.Ldebug_ranges0+0x190
	.uleb128 0x28
	.4byte	0x2f7
	.4byte	.LLST82
	.uleb128 0x28
	.4byte	0x302
	.4byte	.LLST83
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.4byte	.LBB70
	.4byte	.LBE70
	.uleb128 0x2a
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x216
	.4byte	0x29e
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x1da
	.byte	0x1
	.4byte	0x288
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST84
	.4byte	0xb51
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x288
	.4byte	.LLST85
	.uleb128 0x20
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1db
	.4byte	0x288
	.byte	0x1
	.byte	0x5c
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x288
	.4byte	.LLST86
	.uleb128 0x24
	.4byte	0x2d8
	.4byte	.Ldebug_ranges0+0x1d0
	.byte	0x1
	.2byte	0x1e2
	.4byte	0xb25
	.uleb128 0x25
	.4byte	0x2ee
	.4byte	.LLST87
	.uleb128 0x26
	.4byte	0x2e5
	.uleb128 0x27
	.4byte	.Ldebug_ranges0+0x208
	.uleb128 0x28
	.4byte	0x2f7
	.4byte	.LLST88
	.uleb128 0x28
	.4byte	0x302
	.4byte	.LLST89
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.4byte	0x2d8
	.4byte	.Ldebug_ranges0+0x240
	.byte	0x1
	.2byte	0x1e3
	.uleb128 0x26
	.4byte	0x2ee
	.uleb128 0x26
	.4byte	0x2e5
	.uleb128 0x27
	.4byte	.Ldebug_ranges0+0x268
	.uleb128 0x2d
	.4byte	0x2f7
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.4byte	0x302
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x17f
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST90
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x17e
	.4byte	0x288
	.4byte	.LLST91
	.uleb128 0x19
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x180
	.4byte	0x288
	.4byte	.LLST92
	.uleb128 0x19
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x181
	.4byte	0x4d
	.4byte	.LLST93
	.uleb128 0x24
	.4byte	0x2d8
	.4byte	.Ldebug_ranges0+0x290
	.byte	0x1
	.2byte	0x193
	.4byte	0xbd2
	.uleb128 0x25
	.4byte	0x2ee
	.4byte	.LLST94
	.uleb128 0x26
	.4byte	0x2e5
	.uleb128 0x27
	.4byte	.Ldebug_ranges0+0x2a8
	.uleb128 0x28
	.4byte	0x2f7
	.4byte	.LLST95
	.uleb128 0x28
	.4byte	0x302
	.4byte	.LLST96
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.4byte	.LBB104
	.4byte	.LBE104
	.4byte	0xbec
	.uleb128 0x2a
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x195
	.4byte	0x29e
	.byte	0x0
	.uleb128 0x2c
	.4byte	0x2d8
	.4byte	.Ldebug_ranges0+0x2c0
	.byte	0x1
	.2byte	0x1a7
	.uleb128 0x25
	.4byte	0x2ee
	.4byte	.LLST97
	.uleb128 0x26
	.4byte	0x2e5
	.uleb128 0x27
	.4byte	.Ldebug_ranges0+0x2d8
	.uleb128 0x28
	.4byte	0x2f7
	.4byte	.LLST98
	.uleb128 0x28
	.4byte	0x302
	.4byte	.LLST99
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
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x5
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
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
	.4byte	0xe8
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xc21
	.4byte	0x3d4
	.string	"__gl_meshDeleteMesh"
	.4byte	0x45f
	.string	"__gl_meshUnion"
	.4byte	0x608
	.string	"__gl_meshNewMesh"
	.4byte	0x6f9
	.string	"__gl_meshAddEdgeVertex"
	.4byte	0x795
	.string	"__gl_meshMakeEdge"
	.4byte	0x802
	.string	"__gl_meshSplice"
	.4byte	0x8c4
	.string	"__gl_meshZapFace"
	.4byte	0x9b3
	.string	"__gl_meshConnect"
	.4byte	0xaa2
	.string	"__gl_meshSplitEdge"
	.4byte	0xb51
	.string	"__gl_meshDelete"
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
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	.LBB35-.Ltext0
	.4byte	.LBE35-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	.LBB67-.Ltext0
	.4byte	.LBE67-.Ltext0
	.4byte	.LBB65-.Ltext0
	.4byte	.LBE65-.Ltext0
	.4byte	.LBB63-.Ltext0
	.4byte	.LBE63-.Ltext0
	.4byte	.LBB61-.Ltext0
	.4byte	.LBE61-.Ltext0
	.4byte	.LBB51-.Ltext0
	.4byte	.LBE51-.Ltext0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	.LBB49-.Ltext0
	.4byte	.LBE49-.Ltext0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	.LBB48-.Ltext0
	.4byte	.LBE48-.Ltext0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	.LBB47-.Ltext0
	.4byte	.LBE47-.Ltext0
	.4byte	.LBB45-.Ltext0
	.4byte	.LBE45-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB52-.Ltext0
	.4byte	.LBE52-.Ltext0
	.4byte	.LBB69-.Ltext0
	.4byte	.LBE69-.Ltext0
	.4byte	.LBB68-.Ltext0
	.4byte	.LBE68-.Ltext0
	.4byte	.LBB66-.Ltext0
	.4byte	.LBE66-.Ltext0
	.4byte	.LBB64-.Ltext0
	.4byte	.LBE64-.Ltext0
	.4byte	.LBB62-.Ltext0
	.4byte	.LBE62-.Ltext0
	.4byte	.LBB60-.Ltext0
	.4byte	.LBE60-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB56-.Ltext0
	.4byte	.LBE56-.Ltext0
	.4byte	.LBB59-.Ltext0
	.4byte	.LBE59-.Ltext0
	.4byte	.LBB53-.Ltext0
	.4byte	.LBE53-.Ltext0
	.4byte	.LBB58-.Ltext0
	.4byte	.LBE58-.Ltext0
	.4byte	.LBB54-.Ltext0
	.4byte	.LBE54-.Ltext0
	.4byte	.LBB57-.Ltext0
	.4byte	.LBE57-.Ltext0
	.4byte	.LBB55-.Ltext0
	.4byte	.LBE55-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB75-.Ltext0
	.4byte	.LBE75-.Ltext0
	.4byte	.LBB93-.Ltext0
	.4byte	.LBE93-.Ltext0
	.4byte	.LBB91-.Ltext0
	.4byte	.LBE91-.Ltext0
	.4byte	.LBB89-.Ltext0
	.4byte	.LBE89-.Ltext0
	.4byte	.LBB83-.Ltext0
	.4byte	.LBE83-.Ltext0
	.4byte	.LBB82-.Ltext0
	.4byte	.LBE82-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB78-.Ltext0
	.4byte	.LBE78-.Ltext0
	.4byte	.LBB81-.Ltext0
	.4byte	.LBE81-.Ltext0
	.4byte	.LBB76-.Ltext0
	.4byte	.LBE76-.Ltext0
	.4byte	.LBB80-.Ltext0
	.4byte	.LBE80-.Ltext0
	.4byte	.LBB77-.Ltext0
	.4byte	.LBE77-.Ltext0
	.4byte	.LBB79-.Ltext0
	.4byte	.LBE79-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB84-.Ltext0
	.4byte	.LBE84-.Ltext0
	.4byte	.LBB94-.Ltext0
	.4byte	.LBE94-.Ltext0
	.4byte	.LBB92-.Ltext0
	.4byte	.LBE92-.Ltext0
	.4byte	.LBB90-.Ltext0
	.4byte	.LBE90-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB86-.Ltext0
	.4byte	.LBE86-.Ltext0
	.4byte	.LBB88-.Ltext0
	.4byte	.LBE88-.Ltext0
	.4byte	.LBB85-.Ltext0
	.4byte	.LBE85-.Ltext0
	.4byte	.LBB87-.Ltext0
	.4byte	.LBE87-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB100-.Ltext0
	.4byte	.LBE100-.Ltext0
	.4byte	.LBB103-.Ltext0
	.4byte	.LBE103-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB101-.Ltext0
	.4byte	.LBE101-.Ltext0
	.4byte	.LBB102-.Ltext0
	.4byte	.LBE102-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB105-.Ltext0
	.4byte	.LBE105-.Ltext0
	.4byte	.LBB108-.Ltext0
	.4byte	.LBE108-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB106-.Ltext0
	.4byte	.LBE106-.Ltext0
	.4byte	.LBB107-.Ltext0
	.4byte	.LBE107-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"trail"
.LASF69:
	.string	"allocFace"
.LASF91:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libtess/mesh.c"
.LASF83:
	.string	"__gl_meshZapFace"
.LASF31:
	.string	"Onext"
.LASF54:
	.string	"mesh1"
.LASF55:
	.string	"mesh2"
.LASF67:
	.string	"__gl_meshNewMesh"
.LASF28:
	.string	"marked"
.LASF46:
	.string	"MakeVertex"
.LASF79:
	.string	"eDst"
.LASF53:
	.string	"eNext"
.LASF92:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\freespace2wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF73:
	.string	"eNewSym"
.LASF94:
	.string	"MakeEdge"
.LASF42:
	.string	"eOrig"
.LASF71:
	.string	"__gl_meshAddEdgeVertex"
.LASF16:
	.string	"fHead"
.LASF15:
	.string	"vHead"
.LASF34:
	.string	"activeRegion"
.LASF85:
	.string	"__gl_meshConnect"
.LASF74:
	.string	"eNew"
.LASF63:
	.string	"KillEdge"
.LASF61:
	.string	"vDel"
.LASF32:
	.string	"Lnext"
.LASF3:
	.string	"signed char"
.LASF80:
	.string	"joiningLoops"
.LASF10:
	.string	"float"
.LASF90:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF36:
	.string	"ActiveRegion"
.LASF40:
	.string	"bOnext"
.LASF5:
	.string	"long long int"
.LASF52:
	.string	"mesh"
.LASF82:
	.string	"__gl_meshDeleteMesh"
.LASF8:
	.string	"char"
.LASF64:
	.string	"eDel"
.LASF81:
	.string	"joiningVertices"
.LASF65:
	.string	"ePrev"
.LASF12:
	.string	"GLdouble"
.LASF78:
	.string	"__gl_meshSplice"
.LASF59:
	.string	"eStart"
.LASF66:
	.string	"__gl_meshUnion"
.LASF29:
	.string	"inside"
.LASF22:
	.string	"anEdge"
.LASF1:
	.string	"unsigned char"
.LASF17:
	.string	"eHead"
.LASF35:
	.string	"winding"
.LASF41:
	.string	"newVertex"
.LASF30:
	.string	"GLUhalfEdge"
.LASF48:
	.string	"newFace"
.LASF77:
	.string	"newVertex2"
.LASF14:
	.string	"GLUmesh"
.LASF51:
	.string	"fNew"
.LASF62:
	.string	"newOrg"
.LASF6:
	.string	"long long unsigned int"
.LASF72:
	.string	"eOrg"
.LASF0:
	.string	"unsigned int"
.LASF4:
	.string	"short int"
.LASF76:
	.string	"newVertex1"
.LASF2:
	.string	"short unsigned int"
.LASF19:
	.string	"GLUvertex"
.LASF57:
	.string	"fDel"
.LASF45:
	.string	"vNew"
.LASF75:
	.string	"__gl_meshMakeEdge"
.LASF88:
	.string	"__gl_meshDelete"
.LASF25:
	.string	"pqHandle"
.LASF58:
	.string	"newLface"
.LASF39:
	.string	"aOnext"
.LASF93:
	.string	"Splice"
.LASF47:
	.string	"MakeFace"
.LASF23:
	.string	"data"
.LASF60:
	.string	"KillVertex"
.LASF33:
	.string	"Lface"
.LASF7:
	.string	"long unsigned int"
.LASF11:
	.string	"GLboolean"
.LASF13:
	.string	"double"
.LASF70:
	.string	"allocVertex"
.LASF50:
	.string	"fPrev"
.LASF24:
	.string	"coords"
.LASF56:
	.string	"KillFace"
.LASF49:
	.string	"fNext"
.LASF38:
	.string	"EdgePair"
.LASF26:
	.string	"GLUface"
.LASF86:
	.string	"__gl_meshSplitEdge"
.LASF89:
	.string	"eDelSym"
.LASF87:
	.string	"tempHalfEdge"
.LASF44:
	.string	"vPrev"
.LASF9:
	.string	"long int"
.LASF21:
	.string	"prev"
.LASF68:
	.string	"pair"
.LASF43:
	.string	"vNext"
.LASF37:
	.string	"eSym"
.LASF20:
	.string	"next"
.LASF84:
	.string	"fZap"
.LASF18:
	.string	"eHeadSym"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
