	.file	"mat_stack.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl StackSize
	.type	StackSize, @function
StackSize:
.LFB77:
	.file 1 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/mat_stack.c"
	.loc 1 153 0
.LVL0:
	.loc 1 153 0
	lwz 3,12(3)
.LVL1:
	.loc 1 155 0
	addi 3,3,1
	blr
.LFE77:
	.size	StackSize, .-StackSize
	.align 2
	.globl MaxStackSize
	.type	MaxStackSize, @function
MaxStackSize:
.LFB78:
	.loc 1 157 0
.LVL2:
	.loc 1 159 0
	lwz 3,8(3)
.LVL3:
	blr
.LFE78:
	.size	MaxStackSize, .-MaxStackSize
	.align 2
	.globl Top
	.type	Top, @function
Top:
.LFB74:
	.loc 1 105 0
.LVL4:
	mflr 0
.LCFI0:
	stwu 1,-16(1)
.LCFI1:
	stw 31,12(1)
.LCFI2:
	mr 31,3
	stw 0,20(1)
.LCFI3:
	.loc 1 106 0
	lwz 0,0(3)
	li 3,0
.LVL5:
	cmpwi 7,0,0
	beq- 7,.L8
	.loc 1 114 0
	lwz 9,8(31)
	lwz 0,12(31)
	addi 9,9,-1
	cmplw 7,0,9
	ble+ 7,.L9
	.loc 1 117 0
	lis 4,.LC0@ha
	.loc 1 116 0
	stw 9,12(31)
	.loc 1 117 0
	la 4,.LC0@l(4)
	li 3,1283
	li 5,117
	bl _glSetErrorEx
.L9:
	.loc 1 122 0
	lwz 0,4(31)
	lwz 9,12(31)
	lwz 11,0(31)
	mullw 0,0,9
	add 3,0,11
.L8:
	.loc 1 123 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL6:
	addi 1,1,16
	mtlr 0
	blr
.LFE74:
	.size	Top, .-Top
	.align 2
	.globl TopPrjMtx
	.type	TopPrjMtx, @function
TopPrjMtx:
.LFB79:
	.loc 1 162 0
.LVL7:
	.loc 1 163 0
	lwz 0,4(3)
	cmpwi 7,0,76
	bne+ 7,.L17
	.loc 1 168 0
	b Top
.LVL8:
.L17:
	.loc 1 169 0
	li 3,0
.LVL9:
	blr
.LFE79:
	.size	TopPrjMtx, .-TopPrjMtx
	.align 2
	.globl TopMtx44
	.type	TopMtx44, @function
TopMtx44:
.LFB76:
	.loc 1 136 0
.LVL10:
	mflr 0
.LCFI4:
	stwu 1,-8(1)
.LCFI5:
	stw 0,12(1)
.LCFI6:
	.loc 1 137 0
	lwz 0,4(3)
	cmpwi 7,0,64
	bne- 7,.L19
	.loc 1 150 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	.loc 1 139 0
	b Top
.LVL11:
.L19:
	.loc 1 141 0
	cmpwi 7,0,76
	li 0,0
	bne+ 7,.L23
.LBB3:
	.loc 1 143 0
	bl Top
.LVL12:
	mr 0,3
.LVL13:
.L23:
.LBE3:
	.loc 1 150 0
	mr 3,0
.LVL14:
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE76:
	.size	TopMtx44, .-TopMtx44
	.align 2
	.globl TopMtx
	.type	TopMtx, @function
TopMtx:
.LFB75:
	.loc 1 126 0
.LVL15:
	.loc 1 127 0
	lwz 0,4(3)
	cmpwi 7,0,48
	bne+ 7,.L30
	.loc 1 132 0
	b Top
.LVL16:
.L30:
	.loc 1 133 0
	li 3,0
.LVL17:
	blr
.LFE75:
	.size	TopMtx, .-TopMtx
	.align 2
	.globl Pop
	.type	Pop, @function
Pop:
.LFB72:
	.loc 1 78 0
.LVL18:
	mflr 0
.LCFI7:
	stwu 1,-8(1)
.LCFI8:
	stw 0,12(1)
.LCFI9:
	.loc 1 79 0
	lwz 9,12(3)
	cmpwi 7,9,0
	bne+ 7,.L32
	.loc 1 82 0
	lis 4,.LC0@ha
	li 3,1284
.LVL19:
	la 4,.LC0@l(4)
	li 5,82
	bl _glSetErrorEx
	b .L35
.LVL20:
.L32:
	.loc 1 85 0
	addi 0,9,-1
	stw 0,12(3)
.L35:
	.loc 1 86 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE72:
	.size	Pop, .-Pop
	.align 2
	.globl Push
	.type	Push, @function
Push:
.LFB73:
	.loc 1 89 0
.LVL21:
	mflr 0
.LCFI10:
	stwu 1,-24(1)
.LCFI11:
	stmw 29,12(1)
.LCFI12:
	mr 31,3
	stw 0,28(1)
.LCFI13:
	.loc 1 90 0
	lwz 9,8(3)
	lwz 0,12(3)
	addi 9,9,-1
	cmplw 7,0,9
	blt- 7,.L37
	.loc 1 92 0
	stw 9,12(3)
	.loc 1 93 0
	lis 4,.LC0@ha
	la 4,.LC0@l(4)
	li 3,1283
.LVL22:
	li 5,93
	bl _glSetErrorEx
	b .L40
.LVL23:
.L37:
	.loc 1 97 0
	bl Top
.LVL24:
	.loc 1 98 0
	lwz 9,12(31)
	.loc 1 97 0
	mr 29,3
.LVL25:
	.loc 1 100 0
	mr 3,31
	.loc 1 98 0
	addi 9,9,1
	stw 9,12(31)
	.loc 1 100 0
	bl Top
	lwz 5,4(31)
	mr 4,29
	bl memcpy
.L40:
	.loc 1 102 0
	lwz 0,28(1)
	lmw 29,12(1)
.LVL26:
	addi 1,1,24
	mtlr 0
	blr
.LFE73:
	.size	Push, .-Push
	.align 2
	.globl GrowStack
	.type	GrowStack, @function
GrowStack:
.LFB71:
	.loc 1 52 0
.LVL27:
	mflr 0
.LCFI14:
	stwu 1,-40(1)
.LCFI15:
	stmw 28,24(1)
.LCFI16:
	mr 31,3
	stw 0,44(1)
.LCFI17:
	.loc 1 52 0
	mr 29,4
	.loc 1 53 0
	lwz 0,8(3)
	cmplw 7,4,0
	ble- 7,.L48
	.loc 1 58 0
	lwz 4,4(3)
.LVL28:
	.loc 1 56 0
	addi 9,1,8
	lswi 5,3,16
	stswi 5,9,16
	.loc 1 58 0
	li 3,32
.LVL29:
	mullw 4,29,4
	.loc 1 56 0
	lwz 28,16(1)
	lwz 30,8(1)
	.loc 1 58 0
	bl memalign
	.loc 1 60 0
	cmpwi 7,3,0
	.loc 1 58 0
	stw 3,0(31)
	.loc 1 60 0
	bne+ 7,.L44
	.loc 1 62 0
	lis 4,.LC0@ha
	li 3,1285
	la 4,.LC0@l(4)
	li 5,62
	bl _glSetErrorEx
	.loc 1 63 0
	stw 30,0(31)
	b .L48
.L44:
	.loc 1 67 0
	cmpwi 7,30,0
	beq- 7,.L46
	.loc 1 69 0
	lwz 5,4(31)
	mr 4,30
	mullw 5,28,5
	bl memcpy
	.loc 1 71 0
	mr 3,30
	bl free
.L46:
	.loc 1 74 0
	stw 29,8(31)
.LVL30:
.L48:
	.loc 1 75 0
	lwz 0,44(1)
	lmw 28,24(1)
.LVL31:
	addi 1,1,40
	mtlr 0
	blr
.LFE71:
	.size	GrowStack, .-GrowStack
	.align 2
	.globl InitStack
	.type	InitStack, @function
InitStack:
.LFB69:
	.loc 1 30 0
.LVL32:
	.loc 1 31 0
	li 0,0
	.loc 1 34 0
	stw 5,4(3)
	.loc 1 33 0
	stw 0,12(3)
	.loc 1 31 0
	stw 0,0(3)
	.loc 1 32 0
	stw 0,8(3)
	.loc 1 36 0
	b GrowStack
.LVL33:
.LFE69:
	.size	InitStack, .-InitStack
	.align 2
	.globl InitStackPrjMtx
	.type	InitStackPrjMtx, @function
InitStackPrjMtx:
.LFB68:
	.loc 1 25 0
.LVL34:
	.loc 1 26 0
	li 5,76
	b InitStack
.LVL35:
.LFE68:
	.size	InitStackPrjMtx, .-InitStackPrjMtx
	.align 2
	.globl InitStackMtx44
	.type	InitStackMtx44, @function
InitStackMtx44:
.LFB67:
	.loc 1 20 0
.LVL36:
	.loc 1 21 0
	li 5,64
	b InitStack
.LVL37:
.LFE67:
	.size	InitStackMtx44, .-InitStackMtx44
	.align 2
	.globl InitStackMtx
	.type	InitStackMtx, @function
InitStackMtx:
.LFB66:
	.loc 1 15 0
.LVL38:
	.loc 1 16 0
	li 5,48
	b InitStack
.LVL39:
.LFE66:
	.size	InitStackMtx, .-InitStackMtx
	.align 2
	.globl DestroyStack
	.type	DestroyStack, @function
DestroyStack:
.LFB70:
	.loc 1 41 0
.LVL40:
	mflr 0
.LCFI18:
	stwu 1,-16(1)
.LCFI19:
	stw 31,12(1)
.LCFI20:
	mr 31,3
	stw 0,20(1)
.LCFI21:
	.loc 1 42 0
	lwz 3,0(3)
.LVL41:
	cmpwi 7,3,0
	beq- 7,.L58
	.loc 1 44 0
	bl free
.L58:
	.loc 1 46 0
	li 0,0
	.loc 1 48 0
	stw 0,12(31)
	.loc 1 46 0
	stw 0,0(31)
	.loc 1 47 0
	stw 0,8(31)
	.loc 1 49 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL42:
	addi 1,1,16
	mtlr 0
	blr
.LFE70:
	.size	DestroyStack, .-DestroyStack
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
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/mat_stack.c"
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
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x4
	.4byte	.LCFI1-.LFB74
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x9f
	.uleb128 0x1
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
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x4
	.4byte	.LCFI5-.LFB76
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x4
	.4byte	.LCFI8-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x4
	.4byte	.LCFI11-.LFB73
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
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
	.4byte	.LCFI13-.LCFI12
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x4
	.4byte	.LCFI15-.LFB71
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
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
	.4byte	.LCFI17-.LCFI16
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.align 2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.align 2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.align 2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x4
	.4byte	.LCFI19-.LFB70
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE26:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB74-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB76-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB72-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB73-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x6f
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
.LLST16:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LFB71-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL31-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL31-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LFB70-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:/devkitPro/libogc/include/gctypes.h"
	.file 3 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h"
	.file 4 "c:/devkitPro/libogc/include/ogc/gu.h"
	.file 5 "c:/devkitPro/libogc/include/ogc/gx.h"
	.file 6 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/include/GL/gl.h"
	.file 7 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/include/glint.h"
	.file 8 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/include/mat_stack.h"
	.section	.debug_info
	.4byte	0xf3b
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
	.4byte	.LASF13
	.byte	0x3
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
	.byte	0xf
	.4byte	0x3a
	.uleb128 0x7
	.string	"u32"
	.byte	0x2
	.byte	0x11
	.4byte	0x30
	.uleb128 0x7
	.string	"f32"
	.byte	0x2
	.byte	0x29
	.4byte	0x89
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x2
	.byte	0x35
	.4byte	0x97
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0xc
	.byte	0x4
	.byte	0x27
	.4byte	0xf3
	.uleb128 0x9
	.string	"x"
	.byte	0x4
	.byte	0x28
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"y"
	.byte	0x4
	.byte	0x28
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"z"
	.byte	0x4
	.byte	0x28
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x29
	.4byte	0xc2
	.uleb128 0x7
	.string	"Mtx"
	.byte	0x4
	.byte	0x2f
	.4byte	0x109
	.uleb128 0xa
	.4byte	0xac
	.4byte	0x11f
	.uleb128 0xb
	.4byte	0x37
	.byte	0x2
	.uleb128 0xb
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x35
	.4byte	0x12a
	.uleb128 0xa
	.4byte	0xac
	.4byte	0x140
	.uleb128 0xb
	.4byte	0x37
	.byte	0x3
	.uleb128 0xb
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x4
	.byte	0x5
	.2byte	0x3b8
	.4byte	0x182
	.uleb128 0xd
	.string	"r"
	.byte	0x5
	.2byte	0x3b9
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"g"
	.byte	0x5
	.2byte	0x3ba
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.string	"b"
	.byte	0x5
	.2byte	0x3bb
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.string	"a"
	.byte	0x5
	.2byte	0x3bc
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x3bd
	.4byte	0x140
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x40
	.byte	0x5
	.2byte	0x3d6
	.4byte	0x1ab
	.uleb128 0xd
	.string	"val"
	.byte	0x5
	.2byte	0x3d7
	.4byte	0x1ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.4byte	0xa1
	.4byte	0x1bb
	.uleb128 0xb
	.4byte	0x37
	.byte	0xf
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x3d8
	.4byte	0x18e
	.uleb128 0xf
	.byte	0x4
	.4byte	0x97
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1d3
	.uleb128 0x10
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x6
	.byte	0x92
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x6
	.byte	0x93
	.4byte	0x3a
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x6
	.byte	0x98
	.4byte	0x58
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x6
	.byte	0x9b
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x6
	.byte	0x9c
	.4byte	0x58
	.uleb128 0x11
	.byte	0x10
	.byte	0x7
	.byte	0x16
	.4byte	0x22c
	.uleb128 0x9
	.string	"v"
	.byte	0x7
	.byte	0x17
	.4byte	0xf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"w"
	.byte	0x7
	.byte	0x18
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x7
	.byte	0x19
	.4byte	0x20b
	.uleb128 0x11
	.byte	0x8
	.byte	0x7
	.byte	0x1c
	.4byte	0x258
	.uleb128 0x9
	.string	"s"
	.byte	0x7
	.byte	0x1d
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"t"
	.byte	0x7
	.byte	0x1e
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x7
	.byte	0x1f
	.4byte	0x237
	.uleb128 0x11
	.byte	0x10
	.byte	0x7
	.byte	0x22
	.4byte	0x29c
	.uleb128 0x9
	.string	"r"
	.byte	0x7
	.byte	0x23
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"g"
	.byte	0x7
	.byte	0x24
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"b"
	.byte	0x7
	.byte	0x25
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"a"
	.byte	0x7
	.byte	0x26
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x7
	.byte	0x27
	.4byte	0x263
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x14
	.byte	0x7
	.byte	0x42
	.4byte	0x2f8
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x7
	.byte	0x43
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"p"
	.byte	0x7
	.byte	0x44
	.4byte	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x7
	.byte	0x45
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x7
	.byte	0x46
	.4byte	0x1ea
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x7
	.byte	0x47
	.4byte	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x7
	.byte	0x48
	.4byte	0x2a7
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x4c
	.byte	0x7
	.byte	0x6b
	.4byte	0x348
	.uleb128 0x9
	.string	"mat"
	.byte	0x7
	.byte	0x6c
	.4byte	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x7
	.byte	0x6d
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x7
	.byte	0x6e
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x7
	.byte	0x6f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x7
	.byte	0x70
	.4byte	0x303
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x10
	.byte	0x8
	.byte	0xd
	.4byte	0x398
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x8
	.byte	0xe
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x8
	.byte	0xf
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x8
	.byte	0x10
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"cur"
	.byte	0x8
	.byte	0x11
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x8
	.byte	0x12
	.4byte	0x353
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0xa4
	.byte	0x7
	.byte	0x7e
	.4byte	0x45e
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x7
	.byte	0x7f
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"obj"
	.byte	0x7
	.byte	0x81
	.4byte	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"pos"
	.byte	0x7
	.byte	0x83
	.4byte	0x22c
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x7
	.byte	0x85
	.4byte	0xf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x7
	.byte	0x87
	.4byte	0x29c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x7
	.byte	0x88
	.4byte	0x29c
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x7
	.byte	0x89
	.4byte	0x29c
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x7
	.byte	0x8b
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0x7
	.byte	0x8c
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF53
	.byte	0x7
	.byte	0x8d
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0x7
	.byte	0x8e
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0x7
	.byte	0x8f
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x7
	.byte	0x90
	.4byte	0x3a3
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x44
	.byte	0x7
	.byte	0x9b
	.4byte	0x4bc
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x7
	.byte	0x9c
	.4byte	0x29c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x7
	.byte	0x9d
	.4byte	0x29c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x7
	.byte	0x9e
	.4byte	0x29c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x7
	.byte	0x9f
	.4byte	0x29c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x7
	.byte	0xa0
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x7
	.byte	0xa1
	.4byte	0x469
	.uleb128 0x13
	.4byte	.LASF176
	.byte	0x4
	.byte	0x7
	.byte	0xba
	.4byte	0x4e6
	.uleb128 0x14
	.4byte	.LASF61
	.sleb128 0
	.uleb128 0x14
	.4byte	.LASF62
	.sleb128 1
	.uleb128 0x14
	.4byte	.LASF63
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x7
	.byte	0xbe
	.4byte	0x4c7
	.uleb128 0x8
	.4byte	.LASF65
	.byte	0x10
	.byte	0x7
	.byte	0xe3
	.4byte	0x532
	.uleb128 0x9
	.string	"x"
	.byte	0x7
	.byte	0xe4
	.4byte	0x1ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"y"
	.byte	0x7
	.byte	0xe5
	.4byte	0x1ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x7
	.byte	0xe6
	.4byte	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x7
	.byte	0xe7
	.4byte	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x7
	.byte	0xe8
	.4byte	0x4f1
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x14
	.byte	0x7
	.byte	0xf8
	.4byte	0x59e
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x7
	.byte	0xf9
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0x7
	.byte	0xfa
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x7
	.byte	0xfb
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0x7
	.byte	0xfc
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF73
	.byte	0x7
	.byte	0xfd
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF74
	.byte	0x7
	.byte	0xfe
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0x7
	.byte	0xff
	.4byte	0x53d
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x8
	.byte	0x7
	.2byte	0x114
	.4byte	0x5d5
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x115
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x116
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x117
	.4byte	0x5a9
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x6c
	.byte	0x7
	.2byte	0x124
	.4byte	0x739
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x7
	.2byte	0x125
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x127
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x128
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x129
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x12a
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x12b
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x12c
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x12d
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x12e
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x12f
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x130
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x15
	.4byte	.LASF37
	.byte	0x7
	.2byte	0x132
	.4byte	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x134
	.4byte	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x135
	.4byte	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x137
	.4byte	0x739
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x138
	.4byte	0x739
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x139
	.4byte	0x739
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x13a
	.4byte	0x739
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"tex"
	.byte	0x7
	.2byte	0x13c
	.4byte	0x1ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x13e
	.4byte	0x29c
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x140
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x141
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0x0
	.uleb128 0xa
	.4byte	0x1d4
	.4byte	0x749
	.uleb128 0xb
	.4byte	0x37
	.byte	0x2
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x142
	.4byte	0x5e1
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF101
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB77
	.4byte	.LFE77
	.byte	0x1
	.byte	0x51
	.4byte	0x77e
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.byte	0x98
	.4byte	0x77e
	.4byte	.LLST1
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x398
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF102
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB78
	.4byte	.LFE78
	.byte	0x1
	.byte	0x51
	.4byte	0x7ad
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.byte	0x9c
	.4byte	0x77e
	.4byte	.LLST3
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.string	"Top"
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.4byte	0x48
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LLST4
	.4byte	0x7e3
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.byte	0x68
	.4byte	0x77e
	.4byte	.LLST5
	.uleb128 0x19
	.string	"ptr"
	.byte	0x1
	.byte	0x78
	.4byte	0x1c7
	.byte	0x0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF103
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.4byte	0x80c
	.4byte	.LFB79
	.4byte	.LFE79
	.byte	0x1
	.byte	0x51
	.4byte	0x80c
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.byte	0xa1
	.4byte	0x77e
	.4byte	.LLST7
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x348
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF104
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.4byte	0x852
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LLST8
	.4byte	0x852
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.byte	0x87
	.4byte	0x77e
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x19
	.string	"ptr"
	.byte	0x1
	.byte	0x8f
	.4byte	0x80c
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x11f
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF105
	.byte	0x1
	.byte	0x7e
	.byte	0x1
	.4byte	0x881
	.4byte	.LFB75
	.4byte	.LFE75
	.byte	0x1
	.byte	0x51
	.4byte	0x881
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.byte	0x7d
	.4byte	0x77e
	.4byte	.LLST11
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xfe
	.uleb128 0x1c
	.byte	0x1
	.string	"Pop"
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LLST12
	.4byte	0x8ae
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.byte	0x4d
	.4byte	0x77e
	.4byte	.LLST13
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF106
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LLST14
	.4byte	0x8e3
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.byte	0x58
	.4byte	0x77e
	.4byte	.LLST15
	.uleb128 0x1e
	.string	"p1"
	.byte	0x1
	.byte	0x61
	.4byte	0x48
	.4byte	.LLST16
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF107
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LLST17
	.4byte	0x925
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.byte	0x33
	.4byte	0x77e
	.4byte	.LLST18
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.byte	0x33
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x1f
	.string	"old"
	.byte	0x1
	.byte	0x38
	.4byte	0x398
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF108
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.4byte	.LFB69
	.4byte	.LFE69
	.byte	0x1
	.byte	0x51
	.4byte	0x966
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.byte	0x1d
	.4byte	0x77e
	.4byte	.LLST21
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.byte	0x1d
	.4byte	0x25
	.4byte	.LLST22
	.uleb128 0x21
	.4byte	.LASF43
	.byte	0x1
	.byte	0x1d
	.4byte	0x25
	.4byte	.LLST23
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF109
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.4byte	.LFB68
	.4byte	.LFE68
	.byte	0x1
	.byte	0x51
	.4byte	0x99a
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.byte	0x18
	.4byte	0x77e
	.4byte	.LLST25
	.uleb128 0x17
	.string	"num"
	.byte	0x1
	.byte	0x18
	.4byte	0x25
	.4byte	.LLST26
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF110
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.4byte	.LFB67
	.4byte	.LFE67
	.byte	0x1
	.byte	0x51
	.4byte	0x9ce
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.byte	0x13
	.4byte	0x77e
	.4byte	.LLST28
	.uleb128 0x17
	.string	"num"
	.byte	0x1
	.byte	0x13
	.4byte	0x25
	.4byte	.LLST29
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF111
	.byte	0x1
	.byte	0xf
	.byte	0x1
	.4byte	.LFB66
	.4byte	.LFE66
	.byte	0x1
	.byte	0x51
	.4byte	0xa02
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.byte	0xe
	.4byte	0x77e
	.4byte	.LLST31
	.uleb128 0x17
	.string	"num"
	.byte	0x1
	.byte	0xe
	.4byte	0x25
	.4byte	.LLST32
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF112
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LLST33
	.4byte	0xa29
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.byte	0x28
	.4byte	0x77e
	.4byte	.LLST34
	.byte	0x0
	.uleb128 0x22
	.4byte	.LASF113
	.byte	0x7
	.byte	0x3c
	.4byte	0x29c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x22
	.4byte	.LASF114
	.byte	0x7
	.byte	0x3d
	.4byte	0xf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0xa
	.4byte	0x258
	.4byte	0xa5d
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x22
	.4byte	.LASF115
	.byte	0x7
	.byte	0x3e
	.4byte	0xa4d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x22
	.4byte	.LASF116
	.byte	0x7
	.byte	0x4a
	.4byte	0x2f8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x22
	.4byte	.LASF117
	.byte	0x7
	.byte	0x4b
	.4byte	0x2f8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0xa
	.4byte	0x2f8
	.4byte	0xaa3
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x23
	.string	"tex"
	.byte	0x7
	.byte	0x4c
	.4byte	0xa93
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x22
	.4byte	.LASF97
	.byte	0x7
	.byte	0x4d
	.4byte	0x2f8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xa
	.4byte	0xf3
	.4byte	0xad8
	.uleb128 0x24
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x22
	.4byte	.LASF118
	.byte	0x7
	.byte	0x4f
	.4byte	0xac7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x22
	.4byte	.LASF119
	.byte	0x7
	.byte	0x50
	.4byte	0xac7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xa
	.4byte	0x258
	.4byte	0xb13
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.uleb128 0x24
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x22
	.4byte	.LASF120
	.byte	0x7
	.byte	0x51
	.4byte	0xafc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xa
	.4byte	0x29c
	.4byte	0xb36
	.uleb128 0x24
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x22
	.4byte	.LASF121
	.byte	0x7
	.byte	0x52
	.4byte	0xb25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x22
	.4byte	.LASF122
	.byte	0x7
	.byte	0x5c
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x22
	.4byte	.LASF123
	.byte	0x7
	.byte	0x5d
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x22
	.4byte	.LASF124
	.byte	0x7
	.byte	0x5e
	.4byte	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x7
	.byte	0x60
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x22
	.4byte	.LASF126
	.byte	0x7
	.byte	0x61
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x22
	.4byte	.LASF127
	.byte	0x7
	.byte	0x65
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x22
	.4byte	.LASF128
	.byte	0x7
	.byte	0x66
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x22
	.4byte	.LASF129
	.byte	0x7
	.byte	0x67
	.4byte	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x22
	.4byte	.LASF130
	.byte	0x7
	.byte	0x68
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x22
	.4byte	.LASF131
	.byte	0x7
	.byte	0x74
	.4byte	0x398
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x22
	.4byte	.LASF132
	.byte	0x7
	.byte	0x75
	.4byte	0x398
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xa
	.4byte	0x398
	.4byte	0xc1e
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x22
	.4byte	.LASF133
	.byte	0x7
	.byte	0x76
	.4byte	0xc0e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x22
	.4byte	.LASF134
	.byte	0x7
	.byte	0x77
	.4byte	0x77e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x22
	.4byte	.LASF135
	.byte	0x7
	.byte	0x78
	.4byte	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0xa
	.4byte	0x45e
	.4byte	0xc64
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x22
	.4byte	.LASF136
	.byte	0x7
	.byte	0x93
	.4byte	0xc54
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x22
	.4byte	.LASF137
	.byte	0x7
	.byte	0x96
	.4byte	0x29c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x22
	.4byte	.LASF138
	.byte	0x7
	.byte	0xa3
	.4byte	0x4bc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x22
	.4byte	.LASF139
	.byte	0x7
	.byte	0xa6
	.4byte	0xb7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x22
	.4byte	.LASF140
	.byte	0x7
	.byte	0xa7
	.4byte	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x22
	.4byte	.LASF141
	.byte	0x7
	.byte	0xab
	.4byte	0xb7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x22
	.4byte	.LASF142
	.byte	0x7
	.byte	0xb2
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x22
	.4byte	.LASF143
	.byte	0x7
	.byte	0xb3
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x22
	.4byte	.LASF144
	.byte	0x7
	.byte	0xb4
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x22
	.4byte	.LASF145
	.byte	0x7
	.byte	0xb5
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x22
	.4byte	.LASF146
	.byte	0x7
	.byte	0xb7
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x22
	.4byte	.LASF147
	.byte	0x7
	.byte	0xc0
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x22
	.4byte	.LASF148
	.byte	0x7
	.byte	0xea
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x22
	.4byte	.LASF149
	.byte	0x7
	.byte	0xeb
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x22
	.4byte	.LASF150
	.byte	0x7
	.byte	0xec
	.4byte	0x1df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x22
	.4byte	.LASF151
	.byte	0x7
	.byte	0xed
	.4byte	0x532
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x22
	.4byte	.LASF152
	.byte	0x7
	.byte	0xee
	.4byte	0x532
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x22
	.4byte	.LASF153
	.byte	0x7
	.byte	0xef
	.4byte	0xac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x22
	.4byte	.LASF154
	.byte	0x7
	.byte	0xf0
	.4byte	0xac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x22
	.4byte	.LASF155
	.byte	0x7
	.byte	0xf2
	.4byte	0xac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x22
	.4byte	.LASF156
	.byte	0x7
	.byte	0xf4
	.4byte	0xac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x25
	.4byte	.LASF157
	.byte	0x7
	.2byte	0x101
	.4byte	0x59e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x25
	.4byte	.LASF158
	.byte	0x7
	.2byte	0x102
	.4byte	0x59e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xa
	.4byte	0xb7
	.4byte	0xe14
	.uleb128 0xb
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x25
	.4byte	.LASF159
	.byte	0x7
	.2byte	0x103
	.4byte	0xe04
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x25
	.4byte	.LASF160
	.byte	0x7
	.2byte	0x109
	.4byte	0xb7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x25
	.4byte	.LASF161
	.byte	0x7
	.2byte	0x10a
	.4byte	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x25
	.4byte	.LASF162
	.byte	0x7
	.2byte	0x10d
	.4byte	0x182
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xa
	.4byte	0x5d5
	.4byte	0xe70
	.uleb128 0xb
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x25
	.4byte	.LASF163
	.byte	0x7
	.2byte	0x121
	.4byte	0xe60
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x25
	.4byte	.LASF164
	.byte	0x7
	.2byte	0x146
	.4byte	0xb7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x25
	.4byte	.LASF165
	.byte	0x7
	.2byte	0x147
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x25
	.4byte	.LASF166
	.byte	0x7
	.2byte	0x148
	.4byte	0xac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x25
	.4byte	.LASF167
	.byte	0x7
	.2byte	0x149
	.4byte	0xac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x25
	.4byte	.LASF168
	.byte	0x7
	.2byte	0x14a
	.4byte	0xac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x25
	.4byte	.LASF169
	.byte	0x7
	.2byte	0x14b
	.4byte	0x182
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0xa
	.4byte	0x749
	.4byte	0xf05
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x25
	.4byte	.LASF170
	.byte	0x7
	.2byte	0x14d
	.4byte	0xef5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x25
	.4byte	.LASF171
	.byte	0x7
	.2byte	0x152
	.4byte	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x25
	.4byte	.LASF172
	.byte	0x7
	.2byte	0x155
	.4byte	0x1f5
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x8
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.4byte	0x481
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xf3f
	.4byte	0x755
	.string	"StackSize"
	.4byte	0x784
	.string	"MaxStackSize"
	.4byte	0x7ad
	.string	"Top"
	.4byte	0x7e3
	.string	"TopPrjMtx"
	.4byte	0x812
	.string	"TopMtx44"
	.4byte	0x858
	.string	"TopMtx"
	.4byte	0x887
	.string	"Pop"
	.4byte	0x8ae
	.string	"Push"
	.4byte	0x8e3
	.string	"GrowStack"
	.4byte	0x925
	.string	"InitStack"
	.4byte	0x966
	.string	"InitStackPrjMtx"
	.4byte	0x99a
	.string	"InitStackMtx44"
	.4byte	0x9ce
	.string	"InitStackMtx"
	.4byte	0xa02
	.string	"DestroyStack"
	.4byte	0xa29
	.string	"_tempcolorelement"
	.4byte	0xa3b
	.string	"_tempnormalelement"
	.4byte	0xa5d
	.string	"_temptexcoordelement"
	.4byte	0xa6f
	.string	"norm"
	.4byte	0xa81
	.string	"vert"
	.4byte	0xaa3
	.string	"tex"
	.4byte	0xab5
	.string	"color"
	.4byte	0xad8
	.string	"_normalelements"
	.4byte	0xaea
	.string	"_vertexelements"
	.4byte	0xb13
	.string	"_texcoordelements"
	.4byte	0xb36
	.string	"_colorelements"
	.4byte	0xb48
	.string	"vert_i"
	.4byte	0xb5a
	.string	"_type"
	.4byte	0xb6c
	.string	"_GLtype"
	.4byte	0xb7e
	.string	"cur_tex"
	.4byte	0xb90
	.string	"cur_tex_client"
	.4byte	0xba2
	.string	"depthtestenabled"
	.4byte	0xbb4
	.string	"depthupdate"
	.4byte	0xbc6
	.string	"depthfunction"
	.4byte	0xbd8
	.string	"_cleardepth"
	.4byte	0xbea
	.string	"model_stack"
	.4byte	0xbfc
	.string	"projection_stack"
	.4byte	0xc1e
	.string	"texture_stack"
	.4byte	0xc30
	.string	"curmtx"
	.4byte	0xc42
	.string	"cur_mode"
	.4byte	0xc64
	.string	"lights"
	.4byte	0xc76
	.string	"globAmbient"
	.4byte	0xc88
	.string	"curmat"
	.4byte	0xc9a
	.string	"gxcullfaceanabled"
	.4byte	0xcac
	.string	"gxwinding"
	.4byte	0xcbe
	.string	"lighting"
	.4byte	0xcd0
	.string	"blend_type"
	.4byte	0xce2
	.string	"blend_src"
	.4byte	0xcf4
	.string	"blend_dst"
	.4byte	0xd06
	.string	"blend_op"
	.4byte	0xd18
	.string	"cull_mode"
	.4byte	0xd2a
	.string	"cur_state"
	.4byte	0xd3c
	.string	"fb_max_height"
	.4byte	0xd4e
	.string	"fb_max_width"
	.4byte	0xd60
	.string	"scissor_test"
	.4byte	0xd72
	.string	"scissorInfo"
	.4byte	0xd84
	.string	"viewPort"
	.4byte	0xd96
	.string	"normNear"
	.4byte	0xda8
	.string	"normFar"
	.4byte	0xdba
	.string	"line_width"
	.4byte	0xdcc
	.string	"point_size"
	.4byte	0xdde
	.string	"pack"
	.4byte	0xdf1
	.string	"unpack"
	.4byte	0xe14
	.string	"color_write_mask"
	.4byte	0xe27
	.string	"copy_mat_enabled"
	.4byte	0xe3a
	.string	"copy_material"
	.4byte	0xe4d
	.string	"_clearcolor"
	.4byte	0xe70
	.string	"Trans"
	.4byte	0xe83
	.string	"fog_enable"
	.4byte	0xe96
	.string	"fog_mode"
	.4byte	0xea9
	.string	"fog_startz"
	.4byte	0xebc
	.string	"fog_endz"
	.4byte	0xecf
	.string	"fog_density"
	.4byte	0xee2
	.string	"fog_color"
	.4byte	0xf05
	.string	"glTexEnvs"
	.4byte	0xf18
	.string	"read_mode"
	.4byte	0xf2b
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
	.section	.debug_str,"MS",@progbits,1
.LASF77:
	.string	"scale"
.LASF94:
	.string	"CargOp"
.LASF151:
	.string	"scissorInfo"
.LASF108:
	.string	"InitStack"
.LASF99:
	.string	"alpha_scale"
.LASF134:
	.string	"curmtx"
.LASF164:
	.string	"fog_enable"
.LASF158:
	.string	"unpack"
.LASF137:
	.string	"globAmbient"
.LASF82:
	.string	"max_filter"
.LASF34:
	.string	"type"
.LASF25:
	.string	"GLuint"
.LASF71:
	.string	"row_length"
.LASF38:
	.string	"nearZclip"
.LASF133:
	.string	"texture_stack"
.LASF153:
	.string	"normNear"
.LASF47:
	.string	"spotDir"
.LASF63:
	.string	"GL_STATE_NEWLIST"
.LASF171:
	.string	"read_mode"
.LASF61:
	.string	"GL_STATE_NONE"
.LASF127:
	.string	"depthtestenabled"
.LASF17:
	.string	"_vecf"
.LASF5:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF54:
	.string	"linear"
.LASF20:
	.string	"_gx_litobj"
.LASF33:
	.string	"size"
.LASF6:
	.string	"long long unsigned int"
.LASF129:
	.string	"depthfunction"
.LASF114:
	.string	"_tempnormalelement"
.LASF15:
	.string	"Vector"
.LASF60:
	.string	"Material"
.LASF109:
	.string	"InitStackPrjMtx"
.LASF79:
	.string	"ColorTrans"
.LASF9:
	.string	"long int"
.LASF58:
	.string	"emissive"
.LASF27:
	.string	"VertexElement"
.LASF105:
	.string	"TopMtx"
.LASF130:
	.string	"_cleardepth"
.LASF145:
	.string	"blend_op"
.LASF119:
	.string	"_vertexelements"
.LASF31:
	.string	"enable"
.LASF166:
	.string	"fog_startz"
.LASF39:
	.string	"farZclip"
.LASF83:
	.string	"wrap_s"
.LASF84:
	.string	"wrap_t"
.LASF112:
	.string	"DestroyStack"
.LASF144:
	.string	"blend_dst"
.LASF26:
	.string	"GLsizei"
.LASF48:
	.string	"ambient"
.LASF55:
	.string	"quad_t"
.LASF132:
	.string	"projection_stack"
.LASF76:
	.string	"_trans"
.LASF107:
	.string	"GrowStack"
.LASF24:
	.string	"GLint"
.LASF13:
	.string	"size_t"
.LASF57:
	.string	"_mat"
.LASF102:
	.string	"MaxStackSize"
.LASF56:
	.string	"LightObj"
.LASF165:
	.string	"fog_mode"
.LASF16:
	.string	"Mtx44"
.LASF65:
	.string	"boxInfo"
.LASF0:
	.string	"unsigned int"
.LASF122:
	.string	"vert_i"
.LASF42:
	.string	"begin"
.LASF29:
	.string	"GXColorf"
.LASF7:
	.string	"long unsigned int"
.LASF45:
	.string	"_light"
.LASF85:
	.string	"minlod"
.LASF53:
	.string	"constant"
.LASF131:
	.string	"model_stack"
.LASF59:
	.string	"shininess"
.LASF143:
	.string	"blend_src"
.LASF89:
	.string	"edgelod"
.LASF66:
	.string	"width"
.LASF121:
	.string	"_colorelements"
.LASF128:
	.string	"depthupdate"
.LASF2:
	.string	"short unsigned int"
.LASF35:
	.string	"VertexArray"
.LASF64:
	.string	"glState"
.LASF62:
	.string	"GL_STATE_BEGIN"
.LASF167:
	.string	"fog_endz"
.LASF14:
	.string	"bool"
.LASF4:
	.string	"short int"
.LASF123:
	.string	"_type"
.LASF97:
	.string	"color"
.LASF172:
	.string	"call_offset"
.LASF152:
	.string	"viewPort"
.LASF140:
	.string	"gxwinding"
.LASF159:
	.string	"color_write_mask"
.LASF176:
	.string	"_glState"
.LASF23:
	.string	"GLboolean"
.LASF120:
	.string	"_texcoordelements"
.LASF116:
	.string	"norm"
.LASF73:
	.string	"skip_pixels"
.LASF44:
	.string	"Stack"
.LASF30:
	.string	"_array"
.LASF51:
	.string	"spotExponent"
.LASF100:
	.string	"glTexEnvSet"
.LASF135:
	.string	"cur_mode"
.LASF169:
	.string	"fog_color"
.LASF75:
	.string	"pixelStore"
.LASF175:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\freespace2wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF155:
	.string	"line_width"
.LASF69:
	.string	"swap"
.LASF168:
	.string	"fog_density"
.LASF11:
	.string	"float"
.LASF162:
	.string	"_clearcolor"
.LASF161:
	.string	"copy_material"
.LASF111:
	.string	"InitStackMtx"
.LASF74:
	.string	"alignment"
.LASF21:
	.string	"GXLightObj"
.LASF1:
	.string	"unsigned char"
.LASF154:
	.string	"normFar"
.LASF141:
	.string	"lighting"
.LASF146:
	.string	"cull_mode"
.LASF70:
	.string	"lsb_first"
.LASF43:
	.string	"elem_size"
.LASF149:
	.string	"fb_max_width"
.LASF78:
	.string	"bias"
.LASF86:
	.string	"maxlod"
.LASF88:
	.string	"biasclamp"
.LASF87:
	.string	"lodbias"
.LASF156:
	.string	"point_size"
.LASF95:
	.string	"Aarg"
.LASF173:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF147:
	.string	"cur_state"
.LASF103:
	.string	"TopPrjMtx"
.LASF10:
	.string	"double"
.LASF32:
	.string	"stride"
.LASF104:
	.string	"TopMtx44"
.LASF28:
	.string	"TexCoordElement"
.LASF18:
	.string	"_gx_color"
.LASF96:
	.string	"AargOp"
.LASF12:
	.string	"long double"
.LASF117:
	.string	"vert"
.LASF8:
	.string	"char"
.LASF93:
	.string	"Carg"
.LASF37:
	.string	"mode"
.LASF50:
	.string	"specular"
.LASF22:
	.string	"GLenum"
.LASF110:
	.string	"InitStackMtx44"
.LASF148:
	.string	"fb_max_height"
.LASF36:
	.string	"_prj_mat"
.LASF150:
	.string	"scissor_test"
.LASF90:
	.string	"maxaniso"
.LASF138:
	.string	"curmat"
.LASF113:
	.string	"_tempcolorelement"
.LASF46:
	.string	"enabled"
.LASF160:
	.string	"copy_mat_enabled"
.LASF157:
	.string	"pack"
.LASF92:
	.string	"comAlpha"
.LASF98:
	.string	"rgb_scale"
.LASF106:
	.string	"Push"
.LASF115:
	.string	"_temptexcoordelement"
.LASF163:
	.string	"Trans"
.LASF80:
	.string	"_tex_env"
.LASF136:
	.string	"lights"
.LASF81:
	.string	"min_filter"
.LASF118:
	.string	"_normalelements"
.LASF125:
	.string	"cur_tex"
.LASF174:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/mat_stack.c"
.LASF49:
	.string	"diffuse"
.LASF142:
	.string	"blend_type"
.LASF52:
	.string	"spotCutoff"
.LASF91:
	.string	"comRGB"
.LASF19:
	.string	"GXColor"
.LASF124:
	.string	"_GLtype"
.LASF41:
	.string	"_stack"
.LASF170:
	.string	"glTexEnvs"
.LASF67:
	.string	"height"
.LASF68:
	.string	"_pixelStore"
.LASF40:
	.string	"PrjMtx"
.LASF126:
	.string	"cur_tex_client"
.LASF139:
	.string	"gxcullfaceanabled"
.LASF101:
	.string	"StackSize"
.LASF72:
	.string	"skip_rows"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
