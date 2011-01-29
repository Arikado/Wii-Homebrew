#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include "glint.h"
#include "GL/gl.h"

#define CHECK_SIZE() if((void*)((*ptr)+1) > end) { return false; }

//   GL_ACCUM_BUFFER_BIT	   Accumulation	buffer clear value
typedef struct accum_buffer
{
	GXColorf accum_clear; // Unused
} accum_buffer;

static bool pushAccum(void ** p, void * end)
{
	accum_buffer ** ptr = (accum_buffer **) p;
	
	CHECK_SIZE();
	
	++(*ptr);
	
	return true;
}

static void popAccum(void ** p)
{
	accum_buffer ** ptr = (accum_buffer **) p;
	
	--(*ptr);
}

/* 	  GL_COLOR_BUFFER_BIT	   GL_ALPHA_TEST enable	bit
				   Alpha test function and reference value
				   GL_BLEND enable bit
				   Blending source and destination functions
				   Constant blend color
				   Blending equation
				   GL_DITHER enable bit
				   GL_DRAW_BUFFER setting
				   GL_COLOR_LOGIC_OP enable bit
				   GL_INDEX_LOGIC_OP enable bit
				   Logic op function
				   Color mode and index	mode clear values
				   Color mode and index	mode writemasks */
typedef struct color_buffer
{	
	unsigned alpha_test:1; // Unused
	unsigned dither:1; // Unused
	unsigned color_logic_op:1; // Unused
	unsigned index_logic_op:1; // Unused
	unsigned red_mask:1;
	unsigned green_mask:1;
	unsigned blue_mask:1;
	unsigned alpha_mask:1;
	
	GLenum logic_op; // Unused
	
	GLenum alpha_func; // Unused
	GLclampf alpha_ref; // Unused
	
	// Blend stuff
	u8 blend_type;
	u8 blend_src;
	u8 blend_dst;
	u8 blend_op;
	
	GXColorf blend_const_color; // Unused
	GLenum draw_buffer; // Unused	
	
	GXColor clear_color;	
} color_buffer;

static bool pushColorBuffer(void ** p, void * end)
{
	color_buffer ** ptr = (color_buffer **) p;
	
	CHECK_SIZE();
	
	(*ptr)->blend_type = blend_type;
	(*ptr)->blend_src = blend_src;
	(*ptr)->blend_dst = blend_dst;
	(*ptr)->blend_op = blend_op;
	
	(*ptr)->clear_color = _clearcolor;
	(*ptr)->red_mask = (color_write_mask[0] == true) ? 1 : 0;
	(*ptr)->green_mask = (color_write_mask[1] == true) ? 1 : 0;
	(*ptr)->blue_mask = (color_write_mask[2] == true) ? 1 : 0;
	(*ptr)++->alpha_mask = (color_write_mask[3] == true) ? 1 : 0;
	
	return true;
}

static void popColorBuffer(void ** p)
{
	color_buffer ** ptr = (color_buffer **) p;
	
	--(*ptr);	
	
	blend_type = (*ptr)->blend_type;
	blend_src = (*ptr)->blend_src;
	blend_dst = (*ptr)->blend_dst;
	blend_op = (*ptr)->blend_op;
	
	_clearcolor = (*ptr)->clear_color; 
	color_write_mask[0] = (*ptr)->red_mask == 1 ? true : false;
	color_write_mask[1] = (*ptr)->green_mask == 1 ? true : false;
	color_write_mask[2] = (*ptr)->blue_mask == 1 ? true : false;
	color_write_mask[3] = (*ptr)->alpha_mask == 1 ? true : false;	
}

/* GL_CURRENT_BIT	   Current RGBA	color
				   Current color index
				   Current normal vector
				   Current texture coordinates
				   Current raster position
				   
				   GL_CURRENT_RASTER_POSITION_VALID flag
				   RGBA	color associated with current raster position
				   Color index associated with current raster position
				   Texture coordinates associated with current raster position
				   GL_EDGE_FLAG	flag */
typedef struct current
{
	unsigned raster_valid:1; // Unused
	unsigned edge_flag:1; // Unused
	
	float index; // Unused
	GXColorf color;
	guVector normal;
	TexCoordElement tex_coords[MAX_NO_TEXTURES];
	
	VertexElement raster_pos; // Unused
	float raster_index; // Unused
	GXColorf raster_color; // Unused
	TexCoordElement raster_tex_coords[MAX_NO_TEXTURES]; // Unused
} current;

static bool pushCurrent(void ** p, void * end)
{
	current ** ptr = (current **) p;
	
	CHECK_SIZE();
	
	(*ptr)->color = _tempcolorelement;
	(*ptr)->normal = _tempnormalelement;
	
	size_t i;
	for(i = 0; i < MAX_NO_TEXTURES; ++i)
	{
		(*ptr)->tex_coords[i] = _temptexcoordelement[i];
	}
	
	++(*ptr);
	
	return true;
}

static void popCurrent(void ** p)
{
	current ** ptr = (current **) p;
	
	--(*ptr);
	
	_tempcolorelement = (*ptr)->color;
	_tempnormalelement = (*ptr)->normal;
	
	size_t i;
	for(i = 0; i < MAX_NO_TEXTURES; ++i)
	{
		_temptexcoordelement[i] = (*ptr)->tex_coords[i];
	}	
}

/*	  GL_DEPTH_BUFFER_BIT	   GL_DEPTH_TEST enable	bit
				   Depth buffer	test function
				   Depth buffer	clear value
				   GL_DEPTH_WRITEMASK enable bit */
typedef struct depth_buffer
{
	unsigned depth_test:1;
	unsigned depth_write:1;
	
	u8 depth_func;
	float depth_clear;
} depth_buffer;

static bool pushDepthBuffer(void ** p, void * end)
{
	depth_buffer ** ptr = (depth_buffer **) p;
	
	CHECK_SIZE();
	
	(*ptr)->depth_test = (depthtestenabled == true) ? 1 : 0;
	(*ptr)->depth_write = (depthupdate == true) ? 1 : 0;
	(*ptr)->depth_func = depthfunction;
	(*ptr)++->depth_clear = _cleardepth;
	
	return true;
}

static void popDepthBuffer(void ** p)
{
	depth_buffer ** ptr = (depth_buffer **) p;

	--(*ptr);
	
	depthtestenabled = (*ptr)->depth_test == 1 ? true : false;
	depthupdate = (*ptr)->depth_write == 1 ? true : false;
	depthfunction = (*ptr)->depth_func;
	_cleardepth = (*ptr)->depth_clear;	
}

/*	  GL_ENABLE_BIT		   GL_ALPHA_TEST flag
				   GL_AUTO_NORMAL flag
				   GL_BLEND flag
				   Enable bits for the user-definable clipping planes
				   GL_COLOR_MATERIAL
				   GL_CULL_FACE	flag
				   GL_DEPTH_TEST flag
				   GL_DITHER flag
				   GL_FOG flag
				   GL_LIGHTi where 0 <=	i<GL_MAX_LIGHTS
				   GL_LIGHTING flag
				   GL_LINE_SMOOTH flag
				   GL_LINE_STIPPLE flag
				   GL_COLOR_LOGIC_OP flag
				   GL_INDEX_LOGIC_OP flag
				   GL_MAP1_x where x is	a map type
				   GL_MAP2_x where x is	a map type
				   GL_NORMALIZE	flag
				   GL_POINT_SMOOTH flag
				   GL_POLYGON_OFFSET_LINE flag
				   GL_POLYGON_OFFSET_FILL flag
				   GL_POLYGON_OFFSET_POINT flag
				   GL_POLYGON_SMOOTH flag
				   GL_POLYGON_STIPPLE flag
				   GL_SCISSOR_TEST flag
				   GL_STENCIL_TEST flag
				   GL_TEXTURE_1D flag
				   GL_TEXTURE_2D flag
				   Flags GL_TEXTURE_GEN_x where	x is S,	T, R, or Q */
typedef struct enable
{
	unsigned alpha_test:1; // Unused
	unsigned auto_normal:1; // Unused
	unsigned blend:1;
	unsigned color_material:1;
	unsigned cull_face:1;
	unsigned depth_test:1;
	unsigned dither:1; // Unused
	unsigned fog:1;
	u8 clip_planes; // Unused
	u8 lights;
	unsigned lighting:1;
	unsigned line_smooth:1; // Unused
	unsigned line_stipple:1; // Unused
	unsigned color_logic_op:1; // Unused
	unsigned index_logic_op:1; // Unused
	unsigned normalize:1; // Unused
	unsigned point_smooth:1; // Unused
	unsigned polygon_offset_line:1; // Unused
	unsigned polygon_offset_fill:1; // Unused
	unsigned polygon_offset_point:1; // Unused
	unsigned polygon_smooth:1; // Unused
	unsigned polygon_stipple:1; // Unused
	unsigned scissor_test:1;
	unsigned stencil_test:1; // Unused
	unsigned texture_1d:1; // Unused
	unsigned texture_2d:1;
} enable;

static bool pushEnable(void ** p, void * end)
{
	enable ** ptr = (enable **) p;
	
	CHECK_SIZE();
	
	(*ptr)->blend = blend_type == GX_BM_BLEND ? 1 : 0;
	(*ptr)->color_material = copy_mat_enabled == true ? 1 : 0;
	(*ptr)->cull_face = gxcullfaceanabled == true ? 1 : 0;
	(*ptr)->depth_test = depthtestenabled == GX_TRUE ? 1 : 0;
	(*ptr)->fog = fog_enable == true ? 1 : 0;
	
	size_t i;
	(*ptr)->lights = 0;
	for(i = 0; i < MAX_LIGHT; ++i)
	{
		if(lights[i].enabled)
		{
			(*ptr)->lights |= (1 << i);
		}
	}
	
	(*ptr)->lighting = lighting == true ? 1 : 0;
	(*ptr)->scissor_test = (scissor_test == GL_TRUE) ? 1 : 0;
	(*ptr)++->texture_2d = _glGetEnableTex(cur_tex) ? 1 : 0;
	
	return true;
}

static void popEnable(void ** p)
{
	enable ** ptr = (enable **) p;
	
	--(*ptr);
	
	blend_type = (*ptr)->blend == 1 ? GX_BM_BLEND : GX_BM_NONE;
	copy_mat_enabled = (*ptr)->color_material == 1 ? true : false;
	gxcullfaceanabled = (*ptr)->cull_face == 1 ? true : false;
	depthtestenabled = (*ptr)->depth_test == 1 ? GL_TRUE : false;
	fog_enable = (*ptr)->fog == 1 ? true : false;
	
	size_t i;
	(*ptr)->lights = 0;
	for(i = 0; i < MAX_LIGHT; ++i)
	{
		if(((*ptr)->lights & (1 << i)) > 0)
		{
			lights[i].enabled = true;
		}
	}
	
	lighting = (*ptr)->lighting == 1 ? true : false;
	scissor_test = (*ptr)->scissor_test == 1 ? GL_TRUE : GL_FALSE;
	
	bool tex2d = (*ptr)->texture_2d ? true : false;
	_glSetEnableTex(tex2d);
}

/*GL_EVAL_BIT	   GL_MAP1_x enable bits, where	x is a map type
				   GL_MAP2_x enable bits, where	x is a map type
				   1D grid endpoints and divisions
				   2D grid endpoints and divisions
				   GL_AUTO_NORMAL enable bit*/
typedef struct eval
{	
} eval;

static bool pushEval(void ** p, void * end)
{
	eval ** ptr = (eval **) p;
	
	CHECK_SIZE();
	
	++(*ptr);
	
	return true;
}

static void popEval(void ** p)
{
	eval ** ptr = (eval **) p;

	--(*ptr);
}
				   
				   
/*GL_FOG_BIT	   GL_FOG enable bit
				   Fog color
				   Fog density


				   Linear fog start
				   Linear fog end
				   Fog index
				   GL_FOG_MODE value*/
typedef struct fog
{
	unsigned fog_enable:1;
	
	u8 fog_mode;
	
	f32 fog_density; // Unused
	
	f32 fog_startz;
	f32 fog_endz;
	
	float fog_index; // Unused
	GXColor fog_color;
} fog;

static bool pushFog(void ** p, void * end)
{
	fog ** ptr = (fog **) p;
	
	CHECK_SIZE();
	
	(*ptr)->fog_enable = (fog_enable == true) ? 1 : 0;
	(*ptr)->fog_mode = fog_mode;
	
	(*ptr)->fog_startz = fog_startz;
	(*ptr)->fog_endz = fog_endz;
	
	(*ptr)++->fog_color = fog_color;
	
	return true;
}

static void popFog(void ** p)
{
	fog ** ptr = (fog **) p;
	
	--(*ptr);
	
	fog_enable = (*ptr)->fog_enable == 1 ? true : false;
	fog_mode = (*ptr)->fog_mode;
	 
	fog_startz = (*ptr)->fog_startz;
	fog_endz = (*ptr)->fog_endz;
	
	fog_color = (*ptr)->fog_color;
}

/*	  GL_HINT_BIT		   GL_PERSPECTIVE_CORRECTION_HINT setting
				   GL_POINT_SMOOTH_HINT	setting
				   GL_LINE_SMOOTH_HINT setting
				   GL_POLYGON_SMOOTH_HINT setting
				   GL_FOG_HINT setting */
typedef struct hint
{
} hint;

static bool pushHint(void ** p, void * end)
{
	hint ** ptr = (hint **) p;
	
	CHECK_SIZE();
	
	++(*ptr);
	
	return true;
}

static void popHint(void ** p)
{
	hint ** ptr = (hint **) p;

	--(*ptr);
}


/*	  GL_LIGHTING_BIT	   GL_COLOR_MATERIAL enable bit
				   GL_COLOR_MATERIAL_FACE value
				   Color material parameters that are tracking the current color
				   Ambient scene color
				   GL_LIGHT_MODEL_LOCAL_VIEWER value
				   GL_LIGHT_MODEL_TWO_SIDE setting
				   GL_LIGHTING enable bit
				   Enable bit for each light
				   Ambient, diffuse, and specular intensity for	each light
				   Direction, position,	exponent, and cutoff angle for each light
				   Constant, linear, and quadratic attenuation factors for each	light
				   Ambient, diffuse, specular, and emissive color for each material
				   Ambient, diffuse, and specular color	indices	for each material
				   Specular exponent for each material
				   GL_SHADE_MODEL setting */
				   
typedef struct lighting_stuff
{
	unsigned color_material:1;
	unsigned lighting:1;
	GLenum color_material_face; // Unused
	GLenum color_material_param;
	GXColorf Ambient;
	LightObj lights[MAX_LIGHT];
	Material mat;
	GLenum shade_model; // Unused
} lighting_stuff;

static bool pushLighting(void ** p, void * end)
{
	lighting_stuff ** ptr = (lighting_stuff **) p;
	
	CHECK_SIZE();
	
	(*ptr)->color_material = (copy_mat_enabled == true) ? 1 : 0;
	(*ptr)->lighting = (lighting == true) ? 1 : 0;
	(*ptr)->color_material_param = copy_material;
	(*ptr)->Ambient = globAmbient;
	
	size_t i;
	
	for(i = 0; i < MAX_LIGHT; ++i)
	{
		(*ptr)->lights[i] = lights[i];
	}
	
	(*ptr)++->mat = curmat;
	
	return true;	
}

static void popLighting(void ** p)
{
	lighting_stuff ** ptr = (lighting_stuff **) p;
	
	--(*ptr);
	
	copy_mat_enabled = (*ptr)->color_material == 1 ? true : false;
	lighting = (*ptr)->lighting == 1 ? true : false;
	copy_material = (*ptr)->color_material_param;
	globAmbient = (*ptr)->Ambient;
	
	size_t i;
	
	for(i = 0; i < MAX_LIGHT; ++i)
	{
		lights[i] = (*ptr)->lights[i];
	}
	
	curmat = (*ptr)->mat;
}

/* GL_LINE_BIT		   GL_LINE_SMOOTH flag
				   GL_LINE_STIPPLE enable bit
				   Line	stipple	pattern	and repeat counter
				   Line	width */
typedef struct line
{
	unsigned line_smooth:1; // Unused
	unsigned line_stipple:1; // Unused
	GLint stipple_factor; // Unused
	GLushort stipple_pattern; // Unused
	GLfloat width;
} line;

static bool pushLine(void ** p, void * end)
{
	line ** ptr = (line **) p;
	
	CHECK_SIZE();
	
	(*ptr)++->width = line_width;
	
	return true;
}

static void popLine(void ** p)
{
	line ** ptr = (line **) p;
	
	--(*ptr);
	
	line_width = (*ptr)->width;
}

/* GL_LIST_BIT		   GL_LIST_BASE	setting */
typedef struct list_base
{
	GLuint base;
} list_base;

static bool pushListBase(void ** p, void * end)
{
	list_base ** ptr = (list_base **) p;
	
	CHECK_SIZE();
	
	(*ptr)++->base = call_offset;
	
	return true;
}

static void popListBase(void ** p)
{
	list_base ** ptr = (list_base **) p;
	
	--(*ptr);
	
	call_offset = (*ptr)->base;	
}

/* GL_PIXEL_MODE_BIT	   GL_RED_BIAS and GL_RED_SCALE	settings
				   GL_GREEN_BIAS and GL_GREEN_SCALE values
				   GL_BLUE_BIAS	and GL_BLUE_SCALE
				   GL_ALPHA_BIAS and GL_ALPHA_SCALE
				   GL_DEPTH_BIAS and GL_DEPTH_SCALE
				   GL_INDEX_OFFSET and GL_INDEX_SHIFT values
				   GL_MAP_COLOR	and GL_MAP_STENCIL flags
				   GL_ZOOM_X and GL_ZOOM_Y factors
				   GL_READ_BUFFER setting */
typedef struct pixel_mode
{
	unsigned map_color:1; // Unused
	unsigned map_stencil:1; // Unused
	
	ColorTrans red;
	ColorTrans green;
	ColorTrans blue;
	ColorTrans alpha;
	ColorTrans depth; // Unused
	
	GLint index_offset; // Unused
	GLint index_shift; // Unused
	
	GLfloat zoom_x, zoom_y; // Unused
	
	GLenum read_buffer;
} pixel_mode;

static bool pushPixelMode(void ** p, void * end)
{
	pixel_mode ** ptr = (pixel_mode **) p;
	
	CHECK_SIZE();
	
	(*ptr)->red = Trans[TRAN_R];
	(*ptr)->green = Trans[TRAN_G];
	(*ptr)->blue = Trans[TRAN_B];
	(*ptr)->alpha = Trans[TRAN_A];
	(*ptr)++->read_buffer = read_mode;
	
	return true;
}

static void popPixelMode(void ** p)
{
	pixel_mode ** ptr = (pixel_mode **) p;
	
	--(*ptr);
	
	Trans[TRAN_R] = (*ptr)->red;
	Trans[TRAN_G] = (*ptr)->green;
	Trans[TRAN_B] = (*ptr)->blue;
	Trans[TRAN_A] = (*ptr)->alpha;
	read_mode = (*ptr)->read_buffer;
}

/* GL_POINT_BIT		   GL_POINT_SMOOTH flag
				   Point size */

typedef struct point
{
	unsigned point_smooth:1; // Unused
	GLfloat point_size;
} point;

static bool pushPoint(void ** p, void * end)
{
	point ** ptr = (point **) p;
	
	CHECK_SIZE();
	
	(*ptr)++->point_size = point_size;
	
	return true;
}

static void popPoint(void ** p)
{
	point ** ptr = (point **) p;
	
	--(*ptr);
	
	point_size = (*ptr)->point_size;
}

/* GL_POLYGON_BIT	   GL_CULL_FACE	enable bit
				   GL_CULL_FACE_MODE value
				   GL_FRONT_FACE indicator


				   GL_POLYGON_MODE setting
				   GL_POLYGON_SMOOTH flag
				   GL_POLYGON_STIPPLE enable bit
				   GL_POLYGON_OFFSET_FILL flag
				   GL_POLYGON_OFFSET_LINE flag
				   GL_POLYGON_OFFSET_POINT flag
				   GL_POLYGON_OFFSET_FACTOR
				   GL_POLYGON_OFFSET_UNITS */
typedef struct polygon
{
	unsigned cull_face:1;
	unsigned cull_ccw:1;
	unsigned poly_stipple:1; // Unused
	unsigned polygon_offset_line:1; // Unused
	unsigned polygon_offset_fill:1; // Unused
	unsigned polygon_offset_point:1; // Unused
	
	GLenum cull_mode;
	GLenum front_poly_mode; // Unused
	GLenum back_poly_mode; // Unused
	GLfloat factor; // Unused
	GLfloat units; // Unused
} polygon;

static bool pushPolygon(void ** p, void * end)
{
	polygon ** ptr = (polygon **) p;
	
	CHECK_SIZE();
	
	switch(cull_mode)
	{
	case GX_CULL_FRONT:
		(*ptr)->cull_mode = GL_FRONT;
		break;
	case GX_CULL_BACK:
		(*ptr)->cull_mode = GL_BACK;
		break;
	case GX_CULL_ALL:
		(*ptr)->cull_mode = GL_FRONT_AND_BACK;
		break;
	default:
		assert(0);
	}
	(*ptr)->cull_ccw = (gxwinding == GL_CCW) ? 1 : 0;
	(*ptr)++->cull_face = (gxcullfaceanabled == true) ? 1 : 0;
	
	return true;
}

static void popPolygon(void ** p)
{
	polygon ** ptr = (polygon **) p;
	
	--(*ptr);
	
	glCullFace((*ptr)->cull_mode);
	
	gxwinding = (*ptr)->cull_ccw == 1 ? GL_CCW : GL_CW;
	gxcullfaceanabled = (*ptr)->cull_face == 1 ? true : false;
}

/* GL_POLYGON_STIPPLE_BIT   Polygon stipple image */
typedef struct poly_stipple
{
	unsigned poly_stipple:1; // Unused
} poly_stipple;

static bool pushPolyStipple(void ** p, void * end)
{
	poly_stipple ** ptr = (poly_stipple **) p;
	
	CHECK_SIZE();
	
	++(*ptr);
	
	return true;
}

static void popPolyStipple(void ** p)
{
	poly_stipple ** ptr = (poly_stipple **) p;
	
	--(*ptr);
}

/* GL_SCISSOR_BIT	   GL_SCISSOR_TEST flag
				   Scissor box */
typedef struct scissor
{
	unsigned scissor_test:1;
	boxInfo scissor_box;
} scissor;

static bool pushScissor(void ** p, void * end)
{
	scissor ** ptr = (scissor **) p;
	
	CHECK_SIZE();
	
	(*ptr)->scissor_test = (scissor_test == GL_TRUE) ? 1 : 0;
	(*ptr)++->scissor_box = scissorInfo;
	
	return true;
}

static void popScissor(void ** p)
{
	scissor ** ptr = (scissor **) p;
	
	--(*ptr);
	
	scissor_test = (*ptr)->scissor_test == 1 ? GL_TRUE : GL_FALSE;
	scissorInfo = (*ptr)->scissor_box;
}

/* GL_STENCIL_BUFFER_BIT	   GL_STENCIL_TEST enable bit
				   Stencil function and	reference value
				   Stencil value mask
				   Stencil fail, pass, and depth buffer	pass actions
				   Stencil buffer clear	value
				   Stencil buffer writemask */
typedef struct stencil
{
	unsigned stencil_test:1; // Unused
	unsigned stencil_write:1; // Unused
	GLenum func; // Unused
	GLint ref; // Unused
	GLuint mask; // Unused
	GLenum fail, zfail, zpass; // Unused
	GLint clear_val; // Unused
} stencil;

static bool pushStencil(void ** p, void * end)
{
	stencil ** ptr = (stencil **) p;
	
	CHECK_SIZE();
	
	++(*ptr);
	
	return true;
}

static void popStencil(void ** p)
{
	stencil ** ptr = (stencil **) p;
	
	--(*ptr);
}

/* GL_TEXTURE_BIT	   Enable bits for the four texture coordinates
				   Border color	for each texture image
				   Minification	function for each texture image
				   Magnification function for each texture image
				   Texture coordinates and wrap	mode for each texture image
				   Color and mode for each texture environment
				   Enable bits GL_TEXTURE_GEN_x, x is S, T, R, and Q
				   GL_TEXTURE_GEN_MODE setting for S, T, R, and	Q
				   glTexGen plane equations for	S, T, R, and Q
				   Current texture bindings (for example, GL_TEXTURE_2D_BINDING) */
typedef struct texture
{
	TexCoordElement tex_coords[MAX_NO_TEXTURES];
	glTexEnvSet glTexEnv[MAX_NO_TEXTURES];
} texture;

static bool pushTexture(void ** p, void * end)
{
	texture ** ptr = (texture **) p;
	
	CHECK_SIZE();
	
	size_t i;
	
	for(i = 0; i < MAX_NO_TEXTURES; ++i)
	{
		(*ptr)->tex_coords[i] = _temptexcoordelement[i];
		(*ptr)->glTexEnv[i] = glTexEnvs[i];
	}
	
	++(*ptr);
	
	return true;
}

static void popTexture(void ** p)
{
	texture ** ptr = (texture **) p;
	
	--(*ptr);
	
	size_t i;
	
	for(i = 0; i < MAX_NO_TEXTURES; ++i)
	{
		_temptexcoordelement[i] = (*ptr)->tex_coords[i];
		glTexEnvs[i] = (*ptr)->glTexEnv[i];
	}
}

/* GL_TRANSFORM_BIT	   Coefficients	of the six clipping planes
				   Enable bits for the user-definable clipping planes
				   GL_MATRIX_MODE value
				   GL_NORMALIZE	flag */
typedef struct plane_equ
{
	f32 equ[4];
} plane_equ;

typedef struct transform
{
	unsigned normalize:1; // Unused
	u8 clip_planes; // Unused
	plane_equ planes[6]; // Unused
	GLenum mat_mode;
	
} transform;

static bool pushTransform(void ** p, void * end)
{
	transform ** ptr = (transform **) p;
	
	CHECK_SIZE();
	
	(*ptr)++->mat_mode = cur_mode;
	
	return true;
}

static void popTransform(void ** p)
{
	transform ** ptr = (transform **) p;
	
	--(*ptr);
	
	cur_mode = (*ptr)->mat_mode;	
}

/* GL_VIEWPORT_BIT	   Depth range (near and far)
				   Viewport origin and extent*/
typedef struct viewport
{
	f32 near, far;
	boxInfo viewBox;
} viewport;

static bool pushViewport(void ** p, void * end)
{
	viewport ** ptr = (viewport **) p;
	
	CHECK_SIZE();
	
	(*ptr)->near = normNear;
	(*ptr)->far = normFar;
	(*ptr)++->viewBox = viewPort;
	
	return true;
}

static void popViewport(void ** p)
{
	viewport ** ptr = (viewport **) p;
	
	--(*ptr);
	
	normNear = (*ptr)->near;
	normFar = (*ptr)->far;
	viewPort = (*ptr)->viewBox;
}

typedef bool (*pushFun)(void **, void *);
typedef void (*popFun)(void **);

typedef struct AttribOpt
{
	GLenum mask;
	pushFun push;
	popFun pop;
} AttribOpt;

AttribOpt attribs[] = {
	{GL_ACCUM_BUFFER_BIT, pushAccum, popAccum},
	{GL_COLOR_BUFFER_BIT, pushColorBuffer, popColorBuffer},
	{GL_CURRENT_BIT, pushCurrent, popCurrent},
	{GL_DEPTH_BUFFER_BIT, pushDepthBuffer, popDepthBuffer},
	{GL_ENABLE_BIT, pushEnable, popEnable},
	{GL_EVAL_BIT, pushEval, popEval},
	{GL_FOG_BIT, pushFog, popFog},
	{GL_HINT_BIT, pushHint, popHint},
	{GL_LIGHTING_BIT, pushLighting, popLighting},
	{GL_LINE_BIT, pushLine, popLine},
	{GL_LIST_BIT, pushListBase, popListBase},
	{GL_PIXEL_MODE_BIT, pushPixelMode, popPixelMode},
	{GL_POINT_BIT, pushPoint, popPoint},
	{GL_POLYGON_BIT, pushPolygon, popPolygon},
	{GL_POLYGON_STIPPLE_BIT, pushPolyStipple, popPolyStipple},
	{GL_SCISSOR_BIT, pushScissor, popScissor},
	{GL_STENCIL_BUFFER_BIT, pushStencil, popStencil},
	{GL_TEXTURE_BIT, pushTexture, popTexture},
	{GL_TRANSFORM_BIT, pushTransform, popTransform},
	{GL_VIEWPORT_BIT, pushViewport, popViewport}
};

typedef struct attribStack_t
{
	GLenum typeStack[MAX_ATTRIB_STACK_DEPTH];
	int typeCur;
	void * begin;
	void * cur;
	size_t size;
} attribStack_t;

static attribStack_t attribStack = {{0},0,NULL,NULL, 0};
static attribStack_t clientAttribStack = {{0},0,NULL,NULL, 0};;
static const size_t init_size = 1024;

static __inline__ void * stackEnd(attribStack_t * ptr)
{
	u8 * p = (u8*)ptr->begin;
	return p+ptr->size;
}

static bool resizeStack(attribStack_t * ptr)
{
	void * begin = NULL;
	size_t new_size = 0;
	if(ptr->size == 0)
	{
		new_size = init_size;
	}
	else
	{
		new_size = ptr->size*2;
	}
	
	begin = realloc(ptr->begin, init_size);
	
	if(begin != NULL)
	{
		size_t cur = (size_t)ptr->cur - (size_t)ptr->begin;
		ptr->begin = begin;
		ptr->size = new_size;
		
		
		ptr->cur = (void *)((size_t)begin+cur);
		assert(ptr->begin <= ptr->cur);
		assert(ptr->cur <= stackEnd(ptr));
		return true;
	}
	else
	{
		return false;
	}
}

static void initStack(attribStack_t * ptr)
{
	*ptr = (attribStack_t){{0},0,NULL,NULL, 0};
	resizeStack(ptr);
	
	ptr->typeCur = 0;
	ptr->cur = ptr->begin;
}

void _glInitStacks()
{
	initStack(&attribStack);
	initStack(&clientAttribStack);
}

static void push(attribStack_t * ptr, AttribOpt * opts, size_t n_opts, GLenum mask)
{
	size_t i;
	
	if(ptr->typeCur >= MAX_ATTRIB_STACK_DEPTH)
	{
		_glSetError(GL_STACK_OVERFLOW);
		return;
	}
	
	void * cur = ptr->cur;
	
	assert(ptr->begin <= ptr->cur);
	assert(ptr->cur <= stackEnd(ptr));
	
	for(i = 0; i < n_opts; ++i)
	{
		if((opts[i].mask & mask) == opts[i].mask)
		{
			while(!opts[i].push(&cur, stackEnd(ptr)))
			{
				// Would've overflowed
				if(!resizeStack(ptr))
				{
					// Could not increase stack size
					_glSetError(GL_STACK_OVERFLOW);
					return;
				}
			}
		}
	}
	
	assert(ptr->begin <= ptr->cur);
	assert(ptr->cur <= stackEnd(ptr));

	ptr->cur = cur;	
	ptr->typeStack[ptr->typeCur++] = mask;
}

static void pop(attribStack_t * ptr, AttribOpt * opts, size_t n_opts)
{
	int i;
	
	if(ptr->typeCur == 0)
	{
		_glSetError(GL_STACK_UNDERFLOW);
		return;
	}
	
	--ptr->typeCur;
	
	GLenum mask = ptr->typeStack[ptr->typeCur];
	
	assert(ptr->begin <= ptr->cur);
	assert(ptr->cur <= stackEnd(ptr));
	
	for(i = n_opts-1; i >= 0; --i)
	{
		if((opts[i].mask & mask) == opts[i].mask)
		{
			opts[i].pop(&ptr->cur);
		}
	}
	
	assert(ptr->begin <= ptr->cur);
	assert(ptr->cur <= stackEnd(ptr));
}

void glPushAttrib( GLbitfield mask )
{
	NO_CALL_IN_BEGIN;
	
	push(&attribStack, attribs, sizeof(attribs)/sizeof(attribs[0]), mask);
}

void glPopAttrib( void )
{
	NO_CALL_IN_BEGIN;
	
	pop(&attribStack, attribs, sizeof(attribs)/sizeof(attribs[0]));
}

/* GL_CLIENT_PIXEL_STORE_BIT	Pixel storage modes */
typedef struct pixel_store
{
	pixelStore pack;
	pixelStore unpack;
} pixel_store;

static bool pushPixelStore(void ** p, void * end)
{
	pixel_store ** ptr = (pixel_store **) p;
	
	CHECK_SIZE();
	
	(*ptr)->pack = pack;
	(*ptr)++->unpack = unpack;
	
	return true;
}

static void popPixelStore(void ** p)
{
	pixel_store ** ptr = (pixel_store **) p;
	
	--(*ptr);
	
	pack = (*ptr)->pack;
	unpack = (*ptr)->unpack;
}

/* GL_CLIENT_VERTEX_ARRAY_BIT	Vertex arrays (and enables) */
typedef struct vertex_array
{
	VertexArray norm;
	VertexArray vert;
	VertexArray tex[MAX_NO_TEXTURES];
	VertexArray color;	
} vertex_array;

static bool pushVertexArray(void ** p, void * end)
{
	vertex_array ** ptr = (vertex_array **) p;
	
	CHECK_SIZE();
	
	(*ptr)->norm = norm;
	(*ptr)->vert = vert;
	(*ptr)->color = color;
	
	size_t i;
	for(i = 0; i < MAX_NO_TEXTURES; ++i)
	{
		(*ptr)->tex[i] = tex[i];
	}
	
	++(*ptr);
	
	return true;
}

static void popVertexArray(void ** p)
{
	vertex_array ** ptr = (vertex_array **) p;
	
	--(*ptr);
	
	norm = (*ptr)->norm;
	vert = (*ptr)->vert;
	color = (*ptr)->color;
	
	size_t i;
	for(i = 0; i < MAX_NO_TEXTURES; ++i)
	{
		tex[i] = (*ptr)->tex[i];
	}
}

AttribOpt clientAttribs[] = {
	{GL_CLIENT_PIXEL_STORE_BIT, pushPixelStore, popPixelStore},
	{GL_CLIENT_VERTEX_ARRAY_BIT, pushVertexArray, popVertexArray}
};

void glPushClientAttrib( GLbitfield mask )
{
	NO_CALL_IN_BEGIN;
	
	push(&clientAttribStack, clientAttribs, sizeof(clientAttribs)/sizeof(clientAttribs[0]), mask);
}

void glPopClientAttrib( void )
{
	NO_CALL_IN_BEGIN;
	
	pop(&clientAttribStack, clientAttribs, sizeof(clientAttribs)/sizeof(clientAttribs[0]));
}
