	.file	"glue.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl __gluNURBSErrorString
	.type	__gluNURBSErrorString, @function
__gluNURBSErrorString:
.LFB2:
	.file 1 "c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libutil/glue.c"
	.loc 1 83 0
.LVL0:
	.loc 1 85 0
	lis 9,.LANCHOR0@ha
	.loc 1 83 0
	slwi 3,3,2
.LVL1:
	.loc 1 85 0
	la 9,.LANCHOR0@l(9)
	lwzx 3,3,9
	blr
.LFE2:
	.size	__gluNURBSErrorString, .-__gluNURBSErrorString
	.align 2
	.globl __gluTessErrorString
	.type	__gluTessErrorString, @function
__gluTessErrorString:
.LFB3:
	.loc 1 98 0
.LVL2:
	.loc 1 98 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL3:
	la 9,.LANCHOR0@l(9)
	add 3,3,9
	.loc 1 100 0
	lwz 3,152(3)
	blr
.LFE3:
	.size	__gluTessErrorString, .-__gluTessErrorString
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	__gluNurbsErrors, @object
	.size	__gluNurbsErrors, 152
__gluNurbsErrors:
	.long	.LC0
	.long	.LC7
	.long	.LC8
	.long	.LC9
	.long	.LC10
	.long	.LC11
	.long	.LC12
	.long	.LC13
	.long	.LC14
	.long	.LC15
	.long	.LC16
	.long	.LC16
	.long	.LC17
	.long	.LC18
	.long	.LC19
	.long	.LC20
	.long	.LC21
	.long	.LC22
	.long	.LC23
	.long	.LC24
	.long	.LC25
	.long	.LC26
	.long	.LC27
	.long	.LC28
	.long	.LC29
	.long	.LC30
	.long	.LC31
	.long	.LC32
	.long	.LC33
	.long	.LC34
	.long	.LC35
	.long	.LC36
	.long	.LC37
	.long	.LC38
	.long	.LC39
	.long	.LC40
	.long	.LC41
	.long	.LC42
	.type	__gluTessErrors, @object
	.size	__gluTessErrors, 28
__gluTessErrors:
	.long	.LC0
	.long	.LC1
	.long	.LC2
	.long	.LC3
	.long	.LC4
	.long	.LC5
	.long	.LC6
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	" "
	.zero	2
.LC1:
	.string	"gluTessBeginPolygon() must precede a gluTessEndPolygon()"
	.zero	3
.LC2:
	.string	"gluTessBeginContour() must precede a gluTessEndContour()"
	.zero	3
.LC3:
	.string	"gluTessEndPolygon() must follow a gluTessBeginPolygon()"
.LC4:
	.string	"gluTessEndContour() must follow a gluTessBeginContour()"
.LC5:
	.string	"a coordinate is too large"
	.zero	2
.LC6:
	.string	"need combine callback"
	.zero	2
.LC7:
	.string	"spline order un-supported"
	.zero	2
.LC8:
	.string	"too few knots"
	.zero	2
.LC9:
	.string	"valid knot range is empty"
	.zero	2
.LC10:
	.string	"decreasing knot sequence knot"
	.zero	2
.LC11:
	.string	"knot multiplicity greater than order of spline"
	.zero	1
.LC12:
	.string	"gluEndCurve() must follow gluBeginCurve()"
	.zero	2
.LC13:
	.string	"gluBeginCurve() must precede gluEndCurve()"
	.zero	1
.LC14:
	.string	"missing or extra geometric data"
.LC15:
	.string	"can't draw piecewise linear trimming curves"
.LC16:
	.string	"missing or extra domain data"
	.zero	3
.LC17:
	.string	"gluEndTrim() must precede gluEndSurface()"
	.zero	2
.LC18:
	.string	"gluBeginSurface() must precede gluEndSurface()"
	.zero	1
.LC19:
	.string	"curve of improper type passed as trim curve"
.LC20:
	.string	"gluBeginSurface() must precede gluBeginTrim()"
	.zero	2
.LC21:
	.string	"gluEndTrim() must follow gluBeginTrim()"
.LC22:
	.string	"gluBeginTrim() must precede gluEndTrim()"
	.zero	3
.LC23:
	.string	"invalid or missing trim curve"
	.zero	2
.LC24:
	.string	"gluBeginTrim() must precede gluPwlCurve()"
	.zero	2
.LC25:
	.string	"piecewise linear trimming curve referenced twice"
	.zero	3
.LC26:
	.string	"piecewise linear trimming curve and nurbs curve mixed"
	.zero	2
.LC27:
	.string	"improper usage of trim data type"
	.zero	3
.LC28:
	.string	"nurbs curve referenced twice"
	.zero	3
.LC29:
	.string	"nurbs curve and piecewise linear trimming curve mixed"
	.zero	2
.LC30:
	.string	"nurbs surface referenced twice"
	.zero	1
.LC31:
	.string	"invalid property"
	.zero	3
.LC32:
	.string	"gluEndSurface() must follow gluBeginSurface()"
	.zero	2
.LC33:
	.string	"intersecting or misoriented trim curves"
.LC34:
	.string	"intersecting trim curves"
	.zero	3
.LC35:
	.string	"UNUSED"
	.zero	1
.LC36:
	.string	"unconnected trim curves"
.LC37:
	.string	"unknown knot error"
	.zero	1
.LC38:
	.string	"negative vertex count encountered"
	.zero	2
.LC39:
	.string	"negative byte-stride encounteed"
.LC40:
	.string	"unknown type descriptor"
.LC41:
	.string	"null control point reference"
	.zero	3
.LC42:
	.string	"duplicate point on piecewise linear trimming curve"
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.align 2
.LEFDE2:
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
	.section	.debug_info
	.4byte	0x125
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0x1
	.4byte	.LASF16
	.4byte	.LASF17
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.4byte	0x74
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x81
	.uleb128 0x6
	.4byte	0x74
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF10
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.4byte	0x7b
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x51
	.4byte	0xb1
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x1
	.byte	0x52
	.4byte	0x4f
	.4byte	.LLST1
	.byte	0x0
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF11
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.4byte	0x7b
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x51
	.4byte	0xdc
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x1
	.byte	0x61
	.4byte	0x4f
	.4byte	.LLST3
	.byte	0x0
	.uleb128 0x9
	.4byte	0x6e
	.4byte	0xec
	.uleb128 0xa
	.4byte	0x64
	.byte	0x25
	.byte	0x0
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x1
	.byte	0x29
	.4byte	0xfd
	.byte	0x5
	.byte	0x3
	.4byte	__gluNurbsErrors
	.uleb128 0x6
	.4byte	0xdc
	.uleb128 0x9
	.4byte	0x6e
	.4byte	0x112
	.uleb128 0xa
	.4byte	0x64
	.byte	0x6
	.byte	0x0
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x57
	.4byte	0x123
	.byte	0x5
	.byte	0x3
	.4byte	__gluTessErrors
	.uleb128 0x6
	.4byte	0x102
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x41
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x129
	.4byte	0x86
	.string	"__gluNURBSErrorString"
	.4byte	0xb1
	.string	"__gluTessErrorString"
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
.LASF6:
	.string	"long long int"
.LASF0:
	.string	"unsigned int"
.LASF16:
	.string	"c:/devkitPro/examples/wii/freespace2wii/gl2gx/libogc/../source/libutil/glue.c"
.LASF8:
	.string	"long unsigned int"
.LASF14:
	.string	"__gluTessErrors"
.LASF17:
	.string	"c:\\\\devkitPro\\\\examples\\\\wii\\\\freespace2wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF7:
	.string	"long long unsigned int"
.LASF11:
	.string	"__gluTessErrorString"
.LASF3:
	.string	"unsigned char"
.LASF9:
	.string	"char"
.LASF15:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF1:
	.string	"long int"
.LASF10:
	.string	"__gluNURBSErrorString"
.LASF5:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF12:
	.string	"errno"
.LASF13:
	.string	"__gluNurbsErrors"
.LASF4:
	.string	"short int"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
