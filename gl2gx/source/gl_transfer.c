#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include <ogcsys.h>
#include <gccore.h>

#include <unistd.h>

#include "glint.h"
#include "GL/gl.h"

static __inline__ GLfloat scale_s8(s8 t)
{
	if(t >= 0)
	{
		return t/127.f;
	}
	else
	{	
		return t/128.f;
	}
}

static __inline__ GLfloat scale_s16(s16 t)
{
	if(t >= 0)
	{
		return t/32767.f;
	}
	else
	{	
		return t/32768.f;
	}
}

static __inline__ GLfloat scale_s32(s32 t)
{
	if(t >= 0)
	{
		return t/2147483647.f;
	}
	else
	{	
		return t/2147483648.f;
	}
}

void glPixelTransferi(GLenum pname, GLint param)
{
	glPixelTransferf(pname, param);
}

void glPixelTransferf(GLenum pname, GLfloat param)
{
	switch(pname)
	{
    case GL_RED_SCALE: Trans[TRAN_R].scale = param; break;
    case GL_RED_BIAS: Trans[TRAN_R].scale = param; break;
    case GL_GREEN_SCALE: Trans[TRAN_G].scale = param; break;
    case GL_GREEN_BIAS: Trans[TRAN_G].scale = param; break;
    case GL_BLUE_SCALE: Trans[TRAN_B].scale = param; break;
    case GL_BLUE_BIAS: Trans[TRAN_B].scale = param; break;
    case GL_ALPHA_SCALE: Trans[TRAN_A].scale = param; break;
    case GL_ALPHA_BIAS: Trans[TRAN_A].bias = param; break;
	case GL_MAP_COLOR:
	case GL_MAP_STENCIL:
	case GL_INDEX_SHIFT:
	case GL_INDEX_OFFSET:
    case GL_DEPTH_SCALE: 
    case GL_DEPTH_BIAS:
	default:
		_glSetError(GL_INVALID_ENUM);
		return;
	}
}

void _glGetPixelTransferf(GLenum pname, GLfloat *param)
{
	if(!param)
	{
		_glSetError(GL_INVALID_VALUE);
	}
	
	
	switch(pname)
	{
    case GL_RED_SCALE: *param = Trans[TRAN_R].scale; break;
    case GL_RED_BIAS: *param = Trans[TRAN_R].scale; break;
    case GL_GREEN_SCALE: *param = Trans[TRAN_G].scale; break;
    case GL_GREEN_BIAS: *param = Trans[TRAN_G].scale; break;
    case GL_BLUE_SCALE: *param = Trans[TRAN_B].scale; break;
    case GL_BLUE_BIAS: *param = Trans[TRAN_B].scale; break;
    case GL_ALPHA_SCALE: *param = Trans[TRAN_A].scale ; break;
    case GL_ALPHA_BIAS: *param = Trans[TRAN_A].bias; break;
    case GL_DEPTH_SCALE: *param = 1; break;
	case GL_MAP_COLOR:
	case GL_MAP_STENCIL:
	case GL_INDEX_SHIFT:
	case GL_INDEX_OFFSET:
    case GL_DEPTH_BIAS:	*param = 0; break;
	default:
		_glSetError(GL_INVALID_ENUM);
		return;
	}

}

static __inline__ void Put44(void **dest, u8 a, u8 b)
{
	u8 val;
	u8 **p = (u8 **)dest;
	
	val = (a & 0xF0) | ((b & 0xF0) >> 4);
	*(*p)++ = val;
}

static __inline__ void Put8(void **dest, u8 val)
{
	u8 **p = (u8 **)dest;
	*(*p)++ = val;
}

static __inline__  void Put565(void **dest, u8 r, u8 g, u8 b)
{
	u16 val;
	u16 **p = (u16 **)dest;
	
	val = ((r & 0xf8 )<<8) | ((g&0xfc)<<3) | ((b&0xf8)>>3);
		
	*(*p)++ = val;
}

static __inline__ void Put5A3(void **dest, u8 r, u8 g, u8 b, u8 a)
{
	u16 val;
	u16 **p = (u16 **)dest;
	
	if(a > 0xE0)
	{
		val = 0x8000 | (r & 0xF8) << 7 | (g & 0xF8) << 2 | (b & 0xF8) >> 3;
	}
	else
	{
		val = (r & 0xF0) << 4 | (g & 0xF0) | (b & 0xF0) >> 4 | (a & 0xE0) << 7;
	}
		
	*(*p)++ = val;
}

void PlaceII(GLubyte i1, GLubyte i2, void **dest, u32 format)
{
	switch(format)
	{
	case GX_TF_I4: Put44(dest, i1, i2); break;
	case GX_TF_I8: Put8(dest, i1); Put8(dest, i1); break;
	}	
}

void PlaceIA(GLubyte i, GLubyte a, void **dest, u32 format)
{
	switch(format)
	{
	case GX_TF_A8: Put8(dest, a); break;
	case GX_TF_I8: Put8(dest, i); break;
	case GX_TF_IA4: Put44(dest, i, a); break;
	case GX_TF_IA8: Put8(dest, i); Put8(dest, a); break;
	}
}

static __inline__ GLubyte GetIlum(GLubyte r, GLubyte g, GLubyte b)
{
	return ((float)r+(float)g+(float)b)/3.f;
}

void Offset(void **dest, u32 format)
{
	size_t n = 0;
	switch(format)
	{
	case GX_TF_I4:
	case GX_TF_I8:
	case GX_TF_A8:
	case GX_TF_IA4: n = 1; break;
	case GX_TF_IA8:
	case GX_TF_RGB5A3:
	case GX_TF_RGB565: n = 2; break;
	case GX_TF_RGBA8: n = 4; break;
	}
	
	OffsetN(dest, n);
}

static __inline__ void PlaceC(GLubyte r, GLubyte g, GLubyte b, GLubyte a, void **dest, u32 format, u32 pass)
{
	switch(format)
	{
	case GX_TF_I4:
	case GX_TF_I8:
	case GX_TF_A8:
	case GX_TF_IA4:
	case GX_TF_IA8: PlaceIA(GetIlum(r,g,b), a, dest, format); break;
	case GX_TF_RGB5A3: Put5A3(dest, r, g, b, a); break;
	case GX_TF_RGB565: Put565(dest, r, g, b); break;
	case GX_TF_RGBA8:
	{
		if(pass == 0)
		{
			Put8(dest, a);
			Put8(dest, r);
		}
		else
		{
			Put8(dest, g);
			Put8(dest, b);
		}
	} break;
	}
}


void getBYTE(const GLvoid **pixels, GLfloat*val)
{	
	s8 ** p = (s8 **)pixels;
	s8 t = *(*p)++;
	*val = scale_s8(t);
}
void getUBYTE(const GLvoid **pixels, GLfloat*val)
{
	u8 ** p = (u8 **)pixels;
	u8 t = *(*p)++;
	*val = t/255.f;
}
void getSHORT(const GLvoid **pixels, GLfloat*val)
{
	s16 ** p = (s16 **)pixels;
	s16 t = *(*p)++;
	*val = scale_s16(t);
}
void getUSHORT(const GLvoid **pixels, GLfloat*val)
{
	u16 ** p = (u16 **)pixels;
	u16 t = *(*p)++;
	*val = t/65535.f;
}
void getUINT(const GLvoid **pixels, GLfloat*val)
{
	u32 ** p = (u32 **)pixels;
	u32 t = *(*p)++;
	*val = t/4294967295.f;
}
void getINT(const GLvoid **pixels, GLfloat*val)
{
	s32 ** p = (s32 **)pixels;
	s32 t = *(*p)++;
	*val = scale_s32(t);
}
void getFLOAT(const GLvoid **pixels, GLfloat*val)
{
	GLfloat ** p = (GLfloat **)pixels;
	GLfloat t = *(*p)++;
	*val = t;
}


void ReadValue(const GLvoid ** pixels, GLenum type, GLfloat *val)
{
	switch(type)
	{
	case GL_UNSIGNED_BYTE:
	{
		u8 ** p = (u8 **)pixels;
		u8 t = *(*p)++;
		*val = t/255.f;
	}
	break;
	case GL_BYTE:
	{
		s8 ** p = (s8 **)pixels;
		s8 t = *(*p)++;
		*val = scale_s8(t);
	}
	break;
	case GL_UNSIGNED_SHORT:
	{
		u16 ** p = (u16 **)pixels;
		u16 t = *(*p)++;
		*val = t/65535.f;
	}
	break;
	case GL_SHORT:
	{
		s16 ** p = (s16 **)pixels;
		s16 t = *(*p)++;
		*val = scale_s16(t);
	}
	break;
	
	case GL_UNSIGNED_INT:
	{
		u32 ** p = (u32 **)pixels;
		u32 t = *(*p)++;
		*val = t/4294967295.f;
	}
	break;
	case GL_INT:
	{
		s32 ** p = (s32 **)pixels;
		s32 t = *(*p)++;
		*val = scale_s32(t);
	}
	break;
	case GL_FLOAT:
	{
		GLfloat ** p = (GLfloat **)pixels;
		GLfloat t = *(*p)++;
		*val = t;
	}
	break;
	}
}

const GLvoid * pixel_offset(GLenum glFormat, const GLvoid * pixels, GLenum type, size_t width, size_t height, size_t col, size_t row, pixelStore *store)
{
	size_t num_size = 0;
	size_t components = 0;
	
	switch(type)
	{
	case GL_UNSIGNED_BYTE:
	case GL_BYTE:
	case GL_UNSIGNED_BYTE_3_3_2:
    case GL_UNSIGNED_BYTE_2_3_3_REV:
		num_size = 1;
		break;
	case GL_SHORT:
	case GL_UNSIGNED_SHORT:
	case GL_UNSIGNED_SHORT_5_6_5:
	case GL_UNSIGNED_SHORT_5_6_5_REV:
	case GL_UNSIGNED_SHORT_4_4_4_4:
	case GL_UNSIGNED_SHORT_4_4_4_4_REV:
	case GL_UNSIGNED_SHORT_5_5_5_1:
    case GL_UNSIGNED_SHORT_1_5_5_5_REV:
		num_size = 2;
		break;
	case GL_UNSIGNED_INT:
	case GL_INT:
	case GL_FLOAT:
	case GL_UNSIGNED_INT_8_8_8_8:
	case GL_UNSIGNED_INT_8_8_8_8_REV:
    case GL_UNSIGNED_INT_10_10_10_2:
	case GL_UNSIGNED_INT_2_10_10_10_REV:
		num_size = 4;
		break;
	default:
		num_size = 1;
		break;
	}
	
	switch(glFormat)
	{
	case GL_RED:
	case GL_GREEN:
	case GL_BLUE:
	case GL_ALPHA:
	case GL_LUMINANCE: 		 components = 1; break;
	case GL_LUMINANCE_ALPHA: components = 2; break;
	case GL_BGR:
	case GL_RGB:  			 components = 3; break;
	case GL_BGRA:
	case GL_RGBA: 			 components = 4; break;
	}
	
	switch(type)
	{
	case GL_UNSIGNED_BYTE_3_3_2:
    case GL_UNSIGNED_BYTE_2_3_3_REV:
	case GL_UNSIGNED_SHORT_5_6_5:
	case GL_UNSIGNED_SHORT_5_6_5_REV:
	case GL_UNSIGNED_SHORT_4_4_4_4:
	case GL_UNSIGNED_SHORT_4_4_4_4_REV:
	case GL_UNSIGNED_SHORT_5_5_5_1:
    case GL_UNSIGNED_SHORT_1_5_5_5_REV:
	case GL_UNSIGNED_INT_8_8_8_8:
	case GL_UNSIGNED_INT_8_8_8_8_REV:
    case GL_UNSIGNED_INT_10_10_10_2:
	case GL_UNSIGNED_INT_2_10_10_10_REV:
		components = 1; break;
	}
	
	const u8 * p = pixels;
	
	if(store->row_length > 0)
	{
		width = store->row_length;
	}
	
	size_t row_size = num_size*components*width;
	
	size_t align = row_size % store->alignment;
	
	if(align != 0)
	{
		row_size += store->alignment - align;
	}
	
	return p + num_size*components*(store->skip_pixels + col) + row_size*(store->skip_rows+row);
}

void ReadCompositeColor(GLenum format, GLenum type, const GLvoid *pixels, GLfloat *r, GLfloat *g, GLfloat *b, GLfloat *a)
{

	switch(format)
	{
	case GL_BGRA:
	case GL_BGR:
		{
		GLvoid * t = r;
		r = b;
		b = t;
		}
		break;
	}
	
	
	switch(type)
	{
	case GL_UNSIGNED_BYTE_3_3_2:
	{
		u8 val = *((u8*)pixels);
		
		*r = ((val & 0x70) >> 5) / 7.f;
		*g = ((val & 0x1C) >> 2) / 7.f;
		*b = ((val & 0x3)) / 3.f;
		*a = 1.f;
	}
	break;
    case GL_UNSIGNED_BYTE_2_3_3_REV:
	{
		u8 val = *((u8*)pixels);
		
		*b = ((val & 0xC0) >> 6) / 3.f;
		*g = ((val & 0x38) >> 3) / 7.f;
		*r = ((val & 0x7)) / 7.f;
		*a = 1.f;
	}
	break;
	case GL_UNSIGNED_SHORT_5_6_5:
	{
		u16 val = *((u16*)pixels);
		
		*r = ((val & 0xF800) >> 11) / 31.f;
		*g = ((val & 0x07E0) >> 5) / 63.f;
		*b = ((val & 0x001F)) / 31.f;
		*a = 1.f;
	}
	break;
	case GL_UNSIGNED_SHORT_5_6_5_REV:
	{
		u16 val = *((u16*)pixels);
		
		*b = ((val & 0xF800) >> 11) / 31.f;
		*g = ((val & 0x07E0) >> 5) / 63.f;
		*r = ((val & 0x001F)) / 31.f;
		*a = 1.f;
	}
	break;
	case GL_UNSIGNED_SHORT_4_4_4_4:
	{
		u16 val = *((u16*)pixels);
		
		*r = ((val & 0xF000) >> 12) / 15.f;
		*g = ((val & 0x0F00) >>  8) / 15.f;
		*b = ((val & 0x00F0) >>  4) / 15.f;
		*a = ((val & 0x000F) >>  0) / 15.f;
	}
	break;
	case GL_UNSIGNED_SHORT_4_4_4_4_REV:
	{
		u16 val = *((u16*)pixels);
		
		*a = ((val & 0xF000) >> 12) / 15.f;
		*b = ((val & 0x0F00) >>  8) / 15.f;
		*g = ((val & 0x00F0) >>  4) / 15.f;
		*r = ((val & 0x000F) >>  0) / 15.f;
	}
	break;
	case GL_UNSIGNED_SHORT_5_5_5_1:
	{
		u16 val = *((u16*)pixels);
		
		*r = ((val & 0xF800) >> 11) / 31.f;
		*g = ((val & 0x07C0) >>  6) / 31.f;
		*b = ((val & 0x003E) >>  1) / 31.f;
		*a = ((val & 0x0001) >>  0);
	}
	break;
    case GL_UNSIGNED_SHORT_1_5_5_5_REV:
	{
		u16 val = *((u16*)pixels);
		
		*a = ((val & 0x8000) >> 15);
		*b = ((val & 0x7C00) >> 10) / 31.f;
		*g = ((val & 0x03E0) >>  5) / 31.f;
		*r = ((val & 0x001F) >>  0) / 31.f;
	}
	break;
	case GL_UNSIGNED_INT_8_8_8_8:
	{
		u32 val = *((u32*)pixels);
		
		*r = ((val & 0xFF000000) >> 24) / 255.f;
		*g = ((val & 0x00FF0000) >> 16) / 255.f;
		*b = ((val & 0x0000FF00) >>  8) / 255.f;
		*a = ((val & 0x000000FF) >>  0) / 255.f;
	}
	break;
	case GL_UNSIGNED_INT_8_8_8_8_REV:
	{
		u32 val = *((u32*)pixels);
		
		*a = ((val & 0xFF000000) >> 24) / 255.f;
		*b = ((val & 0x00FF0000) >> 16) / 255.f;
		*g = ((val & 0x0000FF00) >>  8) / 255.f;
		*r = ((val & 0x000000FF) >>  0) / 255.f;
	}
	break;
    case GL_UNSIGNED_INT_10_10_10_2:
	{
		u32 val = *((u32*)pixels);
		
		*r = ((val & 0xFFC00000) >> 22) / 1023.f;
		*g = ((val & 0x003FF000) >> 12) / 1023.f;
		*b = ((val & 0x00000FFC) >>  2) / 1023.f;
		*a = ((val & 0x00000003) >>  0) / 3.f;
	}
	break;
	case GL_UNSIGNED_INT_2_10_10_10_REV:
	{
		u32 val = *((u32*)pixels);
		
		*a = ((val & 0xC0000000) >> 30) / 3.f;
		*b = ((val & 0x3FF00000) >> 20) / 1023.f;
		*g = ((val & 0x000FFC00) >> 10) / 1023.f;
		*r = ((val & 0x000003FF) >>  0) / 1023.f;
	}
	break;
	default:
		assert(0);
	}
}

void ReadColor(GLenum glFormat, const GLvoid * pixels, GLenum type, GLfloat *r, GLfloat *g, GLfloat *b, GLfloat *a, size_t width, size_t height, size_t i, size_t j)
{
	pixels = pixel_offset(glFormat, pixels, type, width, height, i, j, &unpack);
	
	switch(type)
	{
	case GL_UNSIGNED_BYTE_3_3_2:
    case GL_UNSIGNED_BYTE_2_3_3_REV:
	case GL_UNSIGNED_SHORT_5_6_5:
	case GL_UNSIGNED_SHORT_5_6_5_REV:
	case GL_UNSIGNED_SHORT_4_4_4_4:
	case GL_UNSIGNED_SHORT_4_4_4_4_REV:
	case GL_UNSIGNED_SHORT_5_5_5_1:
    case GL_UNSIGNED_SHORT_1_5_5_5_REV:
	case GL_UNSIGNED_INT_8_8_8_8:
	case GL_UNSIGNED_INT_8_8_8_8_REV:
    case GL_UNSIGNED_INT_10_10_10_2:
	case GL_UNSIGNED_INT_2_10_10_10_REV:
		ReadCompositeColor(glFormat, type, pixels, r, g, b, a);
		return;
	default:
		break;
	}
	
	switch(glFormat)
	{
	case GL_RED:
		ReadValue(&pixels, type, r);
		*g = 0;
		*b = 0;
		*a = 1;
		break;
	case GL_GREEN:
		*r = 0;
		ReadValue(&pixels, type, g);
		*b = 0;
		*a = 1;
		break;
	case GL_BLUE:
		*r = 0;
		*g = 0;
		ReadValue(&pixels, type, b);
		*a = 1;
		break;
	case GL_ALPHA:
		*r = 0;
		*g = 0;
		*b = 0;
		ReadValue(&pixels, type, a);
		break;
	case GL_RGB:
		ReadValue(&pixels, type, r);
		ReadValue(&pixels, type, g);
		ReadValue(&pixels, type, b);
		*a = 1;
		break;
	case GL_BGR_EXT:
		ReadValue(&pixels, type, b);
		ReadValue(&pixels, type, g);
		ReadValue(&pixels, type, r);
		*a = 1;
		break;
	case GL_RGBA:
		ReadValue(&pixels, type, r);
		ReadValue(&pixels, type, g);
		ReadValue(&pixels, type, b);
		ReadValue(&pixels, type, a);
		break;
	case GL_BGRA_EXT:
		ReadValue(&pixels, type, b);
		ReadValue(&pixels, type, g);
		ReadValue(&pixels, type, r);
		ReadValue(&pixels, type, a);
		break;
	case GL_LUMINANCE:
		ReadValue(&pixels, type, r);
		*g = *r;
		*b = *r;
		*a = 1;
		break;
	case GL_LUMINANCE_ALPHA:
		ReadValue(&pixels, type, r);
		*g = *r;
		*b = *r;
		ReadValue(&pixels, type, a);
		break;
	default:
		assert(0);
	}
}

typedef void (*getColorFun)(const GLvoid *, GLubyte*);

#define F255_7 36.428571428571428571428571428571f
#define F255_31 8.2258064516129032258064516129032f
#define F255_63 4.047619047619047619047619047619f
#define F255_3 85
#define F255_15 17

#define cRED c[0]
#define cGREEN c[1]
#define cBLUE c[2]
#define cALPHA c[3]

static __inline__ void getUBYTE_3_3_2(const GLvoid *pixels, GLubyte*c)
{
	u8 val = *((u8*)pixels);
		
	cRED = ((val & 0x70) >> 5) * F255_7;
	cGREEN = ((val & 0x1C) >> 2) * F255_7;
	cBLUE = ((val & 0x3)) * F255_3;
	cALPHA = 255;
}
static __inline__ void getUBYTE_2_3_3_REV(const GLvoid *pixels, GLubyte*c)
{
	u8 val = *((u8*)pixels);
	
	cBLUE = ((val & 0xC0) >> 6) * 85;
	cGREEN = ((val & 0x38) >> 3) * F255_7;
	cRED = ((val & 0x7)) * F255_7;
	cALPHA = 255;
}
static __inline__ void getUSHORT_5_6_5(const GLvoid *pixels, GLubyte*c)
{
	u16 val = *((u16*)pixels);
	
	cRED = ((val & 0xF800) >> 11) * F255_31;
	cGREEN = ((val & 0x07E0) >> 5) * F255_63;
	cBLUE = ((val & 0x001F)) * F255_31;
	cALPHA = 255;
}
static __inline__ void getUSHORT_5_6_5_REV(const GLvoid *pixels, GLubyte*c)
{
	u16 val = *((u16*)pixels);
	
	cBLUE = ((val & 0xF800) >> 11) * F255_31;
	cGREEN = ((val & 0x07E0) >> 5) * F255_63;
	cRED = ((val & 0x001F)) * F255_31;
	cALPHA = 255;
};
static __inline__ void getUSHORT_4_4_4_4(const GLvoid *pixels, GLubyte*c)
{
	u16 val = *((u16*)pixels);
	
	cRED = ((val & 0xF000) >> 12) * F255_15;
	cGREEN = ((val & 0x0F00) >>  8) * F255_15;
	cBLUE = ((val & 0x00F0) >>  4) * F255_15;
	cALPHA = ((val & 0x000F) >>  0) * F255_15;
};
static __inline__ void getUSHORT_4_4_4_4_REV(const GLvoid *pixels, GLubyte*c)
{
	u16 val = *((u16*)pixels);
	
	cALPHA = ((val & 0xF000) >> 12) * F255_15;
	cBLUE = ((val & 0x0F00) >>  8) * F255_15;
	cGREEN = ((val & 0x00F0) >>  4) * F255_15;
	cRED = ((val & 0x000F) >>  0) * F255_15;
};
static __inline__ void getUSHORT_5_5_5_1(const GLvoid *pixels, GLubyte*c)
{
	u16 val = *((u16*)pixels);
	
	cRED = ((val & 0xF800) >> 11) * F255_31;
	cGREEN = ((val & 0x07C0) >>  6) * F255_31;
	cBLUE = ((val & 0x003E) >>  1) * F255_31;
	cALPHA = ((val & 0x0001) >>  0) * 255;
};
static __inline__ void getUSHORT_1_5_5_5_REV(const GLvoid *pixels, GLubyte*c)
{
	u16 val = *((u16*)pixels);
	
	cALPHA = ((val & 0x8000) >> 15) * 255;
	cBLUE = ((val & 0x7C00) >> 10) * F255_31;
	cGREEN = ((val & 0x03E0) >>  5) * F255_31;
	cRED = ((val & 0x001F) >>  0) * F255_31;
};
static __inline__ void getUINT_8_8_8_8(const GLvoid *pixels, GLubyte*c)
{
	u32 val = *((u32*)pixels);
	
	cRED = ((val & 0xFF000000) >> 24);
	cGREEN = ((val & 0x00FF0000) >> 16);
	cBLUE = ((val & 0x0000FF00) >>  8);
	cALPHA = ((val & 0x000000FF) >>  0);
};
static __inline__ void getUINT_8_8_8_8_REV(const GLvoid *pixels, GLubyte*c)
{
	u32 val = *((u32*)pixels);
	
	cALPHA = ((val & 0xFF000000) >> 24);
	cBLUE = ((val & 0x00FF0000) >> 16);
	cGREEN = ((val & 0x0000FF00) >>  8);
	cRED = ((val & 0x000000FF) >>  0);
};
static __inline__ void getUINT_10_10_10_2(const GLvoid *pixels, GLubyte*c)
{
	u32 val = *((u32*)pixels);
	
	cRED = ((val & 0xFFC00000) >> 22) >> 2;
	cGREEN = ((val & 0x003FF000) >> 12) >> 2;
	cBLUE = ((val & 0x00000FFC) >>  2) >> 2;
	cALPHA = ((val & 0x00000003) >>  0) * F255_3;
};
static __inline__ void getUINT_2_10_10_10_REV(const GLvoid *pixels, GLubyte*c)
{
	u32 val = *((u32*)pixels);
	
	cALPHA = ((val & 0xC0000000) >> 30) * F255_3;
	cBLUE = ((val & 0x3FF00000) >> 20) >> 2;
	cGREEN = ((val & 0x000FFC00) >> 10) >> 2;
	cRED = ((val & 0x000003FF) >>  0) >> 2;
}


typedef void (*getColorFunF)(const GLvoid **, GLfloat*);

static getColorFunF colorFunF;

static __inline__ void clamp(GLfloat *val)
{
	if(*val > 1) *val = 1;
	if(*val < 0) *val = 0;
}

static __inline__ void getRED(const GLvoid *pixels, GLubyte*c)
{
	GLfloat r;
	colorFunF(&pixels, &r);
	clamp(&r);
	
	c[0] = r*255.f;
	c[1] = 0;
	c[2] = 0;
	c[3] = 255;
}
static __inline__ void getGREEN(const GLvoid *pixels, GLubyte*c)
{
	GLfloat g;
	colorFunF(&pixels, &g);
	clamp(&g);
	
	c[0] = 0;
	c[1] = g*255.f;
	c[2] = 0;
	c[3] = 255;
}
static __inline__ void getBLUE(const GLvoid *pixels, GLubyte*c)
{	
	GLfloat b;
	colorFunF(&pixels, &b);
	clamp(&b);
	
	
	c[0] = 0;
	c[1] = 0;
	c[2] = b*255.f;
	c[3] = 255;
}
static __inline__ void getALPHA(const GLvoid *pixels, GLubyte*c)
{
	GLfloat a;
	colorFunF(&pixels, &a);
	clamp(&a);
	
	c[0] = 0;
	c[1] = 0;
	c[2] = 0;
	c[3] = a*255.f;
}
static __inline__ void getLUMINANCE(const GLvoid *pixels, GLubyte*c)
{
	GLfloat l;
	colorFunF(&pixels, &l);
	clamp(&l);
	
	c[0] = l*255.f;
	c[1] = c[0];
	c[2] = c[0];
	c[3] = 255;

}
static __inline__ void getLUMINANCE_ALPHA(const GLvoid *pixels, GLubyte*c)
{
	GLfloat l,a;
	colorFunF(&pixels, &l);
	colorFunF(&pixels, &a);	
	clamp(&l);
	clamp(&a);
	
	c[0] = l*255.f;
	c[1] = c[0];
	c[2] = c[0];
	c[3] = a*255.f;
}
static __inline__ void getBGR(const GLvoid *pixels, GLubyte*c)
{
	GLfloat r,g,b;
	
	colorFunF(&pixels, &b);
	colorFunF(&pixels, &g);
	colorFunF(&pixels, &r);
	
	clamp(&r);
	clamp(&g);
	clamp(&b);
	
	c[0] = r*255.f;
	c[1] = g*255.f;
	c[2] = b*255.f;
	c[3] = 255;
}
static __inline__ void getRGB(const GLvoid *pixels, GLubyte*c)
{
	GLfloat r,g,b;
	colorFunF(&pixels, &r);
	colorFunF(&pixels, &g);
	colorFunF(&pixels, &b);
	
	clamp(&r);
	clamp(&g);
	clamp(&b);
	
	c[0] = r*255.f;
	c[1] = g*255.f;
	c[2] = b*255.f;
	c[3] = 255;
}
static __inline__ void getBGRA(const GLvoid *pixels, GLubyte*c)
{
	GLfloat r,g,b,a;
	
	colorFunF(&pixels, &b);
	colorFunF(&pixels, &g);
	colorFunF(&pixels, &r);
	colorFunF(&pixels, &a);
	
	clamp(&r);
	clamp(&g);
	clamp(&b);
	clamp(&a);
	
	c[0] = r*255.f;
	c[1] = g*255.f;
	c[2] = b*255.f;
	c[3] = a*255.f;
}
static __inline__ void getRGBA(const GLvoid *pixels, GLubyte*c)
{
	GLfloat r,g,b,a;
	colorFunF(&pixels, &r);
	colorFunF(&pixels, &g);
	colorFunF(&pixels, &b);
	colorFunF(&pixels, &a);
	
	clamp(&r);
	clamp(&g);
	clamp(&b);
	clamp(&a);
	
	c[0] = r*255.f;
	c[1] = g*255.f;
	c[2] = b*255.f;
	c[3] = a*255.f;
}		
		
void setSrcColorFunc(GLenum glType)
{
	switch(glType)
	{
	case GL_UNSIGNED_BYTE:
		colorFunF = getUBYTE; break;
	case GL_BYTE:
		colorFunF = getBYTE; break;
	case GL_SHORT:
		colorFunF = getSHORT; break;
	case GL_UNSIGNED_SHORT:
		colorFunF = getUSHORT; break;
	case GL_UNSIGNED_INT:
		colorFunF = getUINT; break;
	case GL_INT:
		colorFunF = getINT; break;
	case GL_FLOAT:
		colorFunF = getFLOAT; break;
	default:
		assert(0); break;
	}
}

static __inline__ void putI8(GLubyte *c, void **dest)
{
	Put8(dest, GetIlum(cRED,cGREEN,cBLUE));
}
static __inline__ void putA8(GLubyte *c, void **dest)
{
	Put8(dest, cALPHA);
}
static __inline__ void putIA4(GLubyte *c, void **dest)
{
	Put44(dest, GetIlum(cRED,cGREEN,cBLUE), cALPHA);
}
static __inline__ void putIA8(GLubyte *c, void **dest)
{
	Put8(dest, GetIlum(cRED,cGREEN,cBLUE));
	Put8(dest, cALPHA);
}
static __inline__ void putIA8A(GLubyte *c, void **dest)
{
	Put8(dest, cALPHA);
	Put8(dest, cALPHA);
}
static __inline__ void put5A3(GLubyte *c, void **dest)
{
	Put5A3(dest, cRED, cGREEN, cBLUE, cALPHA);
}
static __inline__ void put565(GLubyte *c, void **dest)
{
	Put565(dest, cRED, cGREEN, cBLUE);
}
static __inline__ void putAR(GLubyte *c, void **dest)
{
	Put8(dest, cALPHA);
	Put8(dest, cRED);
}
static __inline__ void putGB(GLubyte *c, void **dest)
{
	Put8(dest, cGREEN);
	Put8(dest, cBLUE);
}

static __inline__ void move_and_swap565(void **dest, const void * src)
{
	const u16 *src_p = src;
	u16 **dst_p = (u16**)dest;
	
	u16 val = *src_p;
	
	*(*dst_p)++ = ((val & 0xF800) >> 11) | (val & 0x07E0) | ((val & 0x001F) << 11);	
}
static __inline__ void move16(void **dest, const void * src)
{
	const u16 *src_p = src;
	u16 **dst_p = (u16**)dest;
	
	*(*dst_p)++ = *src_p;
}

static __inline__ void move5551(void **dest, const void * src)
{
	const u16 *src_p = src;
	u16 **dst_p = (u16**)dest;
	
	u16 val = *src_p;
	
	if(0x0001 & *src_p)
	{
		*(*dst_p)++ = 0x8000 | (*src_p >> 1);
	}
	else
	{
		*(*dst_p)++ = (val & 0xF000) >> 4 | (val & 0x0780) >> 3 | (val & 0x003C) >> 1;
	}
}
static __inline__ void move5551br(void **dest, const void * src)
{
	const u16 *src_p = src;
	u16 **dst_p = (u16**)dest;
	
	u16 val = *src_p;
	
	if(0x0001 & *src_p)
	{
		*(*dst_p)++ = 0x8000 | (val & 0x003E) << 9 | (val & 0x07C0) >> 1 | (val & 0xF800) >> 11;
	}
	else
	{
		*(*dst_p)++ = (val & 0xF000) >> 12 | (val & 0x0780) >> 3 | (val & 0x003C) << 6;
	}
}
static __inline__ void move_and_swap5551(void **dest, const void * src)
{
	const u16 *src_p = src;
	u16 **dst_p = (u16**)dest;
	
	u16 val = *src_p;	
	
	if(0x8000 & *src_p)
	{
		*(*dst_p)++ = (val & 0x83E0) | ((val & 0x7C00) >> 10) | (val & 0x001F) << 10;
	}
	else
	{
		*(*dst_p)++ = (val & 0x001E) << 7 | (val & 0x780) >> 3 | (val & 0x7800) >> 10;
	}
}
static __inline__ void move_and_swap5551br(void **dest, const void * src)
{
	const u16 *src_p = src;
	u16 **dst_p = (u16**)dest;
	
	u16 val = *src_p;	
	
	if(0x8000 & *src_p)
	{
		*(*dst_p)++ = val;
	}
	else
	{
		*(*dst_p)++ = (val & 0x001E) >> 1 | (val & 0x780) >> 3 | (val & 0x7800) >> 3;
	}
}

void TransferPixelsFast(void *dest, u32 format, size_t width, size_t xblock, size_t height, size_t yblock, int passes,
	const GLvoid *src, GLenum glFormat, GLenum glType, size_t xoffset, size_t yoffset, size_t transwidth, size_t transheight)
{
	// Pre-compute pixel properties	
	size_t num_size = 0;
	size_t components = 0;
	
	switch(glType)
	{
	case GL_UNSIGNED_BYTE:
	case GL_BYTE:
	case GL_UNSIGNED_BYTE_3_3_2:
    case GL_UNSIGNED_BYTE_2_3_3_REV:
		num_size = 1;
		break;
	case GL_SHORT:
	case GL_UNSIGNED_SHORT:
	case GL_UNSIGNED_SHORT_5_6_5:
	case GL_UNSIGNED_SHORT_5_6_5_REV:
	case GL_UNSIGNED_SHORT_4_4_4_4:
	case GL_UNSIGNED_SHORT_4_4_4_4_REV:
	case GL_UNSIGNED_SHORT_5_5_5_1:
    case GL_UNSIGNED_SHORT_1_5_5_5_REV:
		num_size = 2;
		break;
	case GL_UNSIGNED_INT:
	case GL_INT:
	case GL_FLOAT:
	case GL_UNSIGNED_INT_8_8_8_8:
	case GL_UNSIGNED_INT_8_8_8_8_REV:
    case GL_UNSIGNED_INT_10_10_10_2:
	case GL_UNSIGNED_INT_2_10_10_10_REV:
		num_size = 4;
		break;
	default:
		num_size = 1;
		break;
	}
	
	switch(glFormat)
	{
	case GL_RED:
	case GL_GREEN:
	case GL_BLUE:
	case GL_ALPHA:
	case GL_LUMINANCE: 		 components = 1; break;
	case GL_LUMINANCE_ALPHA: components = 2; break;
	case GL_BGR:
	case GL_RGB:  			 components = 3; break;
	case GL_BGRA:
	case GL_RGBA: 			 components = 4; break;
	}
	
	bool swap_br = false;
	
	switch(glFormat)
	{
	case GL_BGR:
	case GL_BGRA:
		swap_br = true;
		break;
	}
	
	switch(glType)
	{
	case GL_UNSIGNED_BYTE_3_3_2:
    case GL_UNSIGNED_BYTE_2_3_3_REV:
	case GL_UNSIGNED_SHORT_5_6_5:
	case GL_UNSIGNED_SHORT_5_6_5_REV:
	case GL_UNSIGNED_SHORT_4_4_4_4:
	case GL_UNSIGNED_SHORT_4_4_4_4_REV:
	case GL_UNSIGNED_SHORT_5_5_5_1:
    case GL_UNSIGNED_SHORT_1_5_5_5_REV:
	case GL_UNSIGNED_INT_8_8_8_8:
	case GL_UNSIGNED_INT_8_8_8_8_REV:
    case GL_UNSIGNED_INT_10_10_10_2:
	case GL_UNSIGNED_INT_2_10_10_10_REV:
		components = 1; break;
	}
	
	const u8 * p = src;
	
	pixelStore * store = &unpack;
	
	if(store->row_length > 0)
	{
		width = store->row_length;
	}
	
	size_t row_size = num_size*components*width;
	
	size_t align = row_size % store->alignment;
	
	if(align != 0)
	{
		row_size += store->alignment - align;
	}
	
	size_t col_size = num_size*components;
	
	p += col_size*store->skip_pixels + row_size*store->skip_rows;
	
#define COMPUTE_PIXEL_LOC(row,col)	((void*)(p + col_size*(col) + row_size*(row)))

	// Pre-compute per-pixel dest values
	size_t dest_size = 0;
	switch(format)
	{
	case GX_TF_I4:
	case GX_TF_I8:
	case GX_TF_A8:
	case GX_TF_IA4: dest_size = 1; break;
	case GX_TF_IA8:
	case GX_TF_RGB5A3:
	case GX_TF_RGB565: dest_size = 2; break;
	case GX_TF_RGBA8: dest_size = 4; break;
	}
	
	int i, j, k, l;
	GLubyte c[4];
	
	size_t max_x = xoffset+transwidth;
	size_t max_y = yoffset+transheight;
	
	int xblocks = width/xblock;
	int yblocks = height/yblock;
	
	u8 t;
	
#define INNER_PIXEL_LOOP(transfer) \
	for(j = 0; j < yblocks; ++j) \
	{ \
		for(i = 0; i < xblocks; ++i) \
		{ \
			for(l = 0; l < yblock; ++l) \
			{ \
				int y = yblock*j+l; \
				 \
				if(y > max_y) \
				{ \
					return; \
				} \
				 \
				if(y < yoffset) \
				{ \
					OffsetN(&dest, dest_size*xblock); \
					continue; \
				} \
				 \
				for(k = 0; k < xblock; ++k) \
				{ \
					int x = xblock*i+k; \
					 \
					if(x < xoffset || x > max_x) \
					{ \
						OffsetN(&dest, dest_size); \
						continue; \
					} \
					 \
					transfer \
				} \
			} \
		} \
	}
	
#define PIXEL_LOOP(putColor, getColor) INNER_PIXEL_LOOP(getColor(COMPUTE_PIXEL_LOC(y, x), c); if(swap_br){ t = c[0]; c[0] = c[2]; c[2] = t; }; putColor(c, &dest);)
	
	#define PIXEL_OUT_LOOP(getColor) \
	switch(format) \
	{ \
	case GX_TF_I8: PIXEL_LOOP(putI8,getColor); break; \
	case GX_TF_A8: PIXEL_LOOP(putA8,getColor); break; \
	case GX_TF_IA4: PIXEL_LOOP(putIA4,getColor); break; \
	case GX_TF_IA8: \
		switch(glFormat) \
		{ \
		case GL_ALPHA: \
			PIXEL_LOOP(putIA8A,getColor); break; \
		default: \
			PIXEL_LOOP(putIA8, getColor); break; \
		} \
		break; \
	case GX_TF_RGB5A3: PIXEL_LOOP(put5A3,getColor); break; \
	case GX_TF_RGB565: PIXEL_LOOP(put565,getColor); break; \
	case GX_TF_RGBA8: \
		{ \
			for(j = 0; j < yblocks; ++j) \
			{ \
				for(i = 0; i < xblocks; ++i) \
				{ \
					for(l = 0; l < yblock; ++l) \
					{ \
						int y = yblock*j+l; \
						 \
						if(y > max_y) \
						{ \
							return; \
						} \
						 \
						if(y < yoffset) \
						{ \
							OffsetN(&dest, dest_size*xblock); \
							continue; \
						} \
						 \
						for(k = 0; k < xblock; ++k) \
						{ \
							int x = xblock*i+k; \
							 \
							if(x < xoffset || x > max_x) \
							{ \
								OffsetN(&dest, dest_size); \
								continue; \
							} \
							 \
							getColor(COMPUTE_PIXEL_LOC(y, x), c); \
							if(swap_br){ t = c[0]; c[0] = c[2]; c[2] = t; }; \
							putAR(c, &dest); \
						} \
					} \
					 \
					for(l = 0; l < yblock; ++l) \
					{ \
						int y = yblock*j+l; \
						 \
						if(y < yoffset) \
						{ \
							OffsetN(&dest, dest_size*xblock); \
							continue; \
						} \
						 \
						for(k = 0; k < xblock; ++k) \
						{ \
							int x = xblock*i+k; \
							 \
							if(x < xoffset || x > max_x) \
							{ \
								OffsetN(&dest, dest_size); \
								continue; \
							} \
							 \
							getColor(COMPUTE_PIXEL_LOC(y, x), c); \
							if(swap_br){ t = c[0]; c[0] = c[2]; c[2] = t; }; \
							putGB(c, &dest); \
						} \
					} \
				} \
			} \
		} \
		break; \
	default: \
		assert(0); \
	}
	
	if(format == GX_TF_RGB5A3 && glType == GL_UNSIGNED_SHORT_5_5_5_1)
	{
		if(!swap_br)
		{
			INNER_PIXEL_LOOP(move5551(&dest, COMPUTE_PIXEL_LOC(y, x)););
		}
		else
		{
			INNER_PIXEL_LOOP(move5551br(&dest, COMPUTE_PIXEL_LOC(y, x)););
		}
		return;
	}
	
	if(format == GX_TF_RGB5A3 && glType == GL_UNSIGNED_SHORT_1_5_5_5_REV)
	{
		if(!swap_br)
		{
			INNER_PIXEL_LOOP(move_and_swap5551(&dest, COMPUTE_PIXEL_LOC(y, x)););
		}
		else
		{
			INNER_PIXEL_LOOP(move_and_swap5551br(&dest, COMPUTE_PIXEL_LOC(y, x)););
		}
		return;
	}
	
	if(format == GX_TF_RGB565 && glType == GL_UNSIGNED_SHORT_5_6_5)
	{
		if(!swap_br)
		{
			INNER_PIXEL_LOOP(move16(&dest, COMPUTE_PIXEL_LOC(y, x)););
		}
		else
		{
			INNER_PIXEL_LOOP(move_and_swap565(&dest, COMPUTE_PIXEL_LOC(y, x)););
		}
		return;
	}
	
	if(format == GX_TF_RGB565 && glType == GL_UNSIGNED_SHORT_5_6_5_REV)
	{
		if(!swap_br)
		{
			INNER_PIXEL_LOOP(move_and_swap565(&dest, COMPUTE_PIXEL_LOC(y, x)););
		}
		else
		{
			INNER_PIXEL_LOOP(move16(&dest, COMPUTE_PIXEL_LOC(y, x)););
		}
		return;
	}
	
	switch(glType)
	{
	case GL_UNSIGNED_BYTE_3_3_2: PIXEL_OUT_LOOP(getUBYTE_3_3_2); break;
    case GL_UNSIGNED_BYTE_2_3_3_REV:
		PIXEL_OUT_LOOP( getUBYTE_2_3_3_REV); break;
	case GL_UNSIGNED_SHORT_5_6_5:
		PIXEL_OUT_LOOP( getUSHORT_5_6_5); break;
	case GL_UNSIGNED_SHORT_5_6_5_REV:
		PIXEL_OUT_LOOP( getUSHORT_5_6_5_REV); break;
	case GL_UNSIGNED_SHORT_4_4_4_4:
		PIXEL_OUT_LOOP( getUSHORT_4_4_4_4); break;
	case GL_UNSIGNED_SHORT_4_4_4_4_REV:
		PIXEL_OUT_LOOP( getUSHORT_4_4_4_4_REV); break;
	case GL_UNSIGNED_SHORT_5_5_5_1:
		PIXEL_OUT_LOOP( getUSHORT_5_5_5_1); break;
    case GL_UNSIGNED_SHORT_1_5_5_5_REV:
		PIXEL_OUT_LOOP( getUSHORT_1_5_5_5_REV); break;
	case GL_UNSIGNED_INT_8_8_8_8:
		PIXEL_OUT_LOOP( getUINT_8_8_8_8); break;
	case GL_UNSIGNED_INT_8_8_8_8_REV:
		PIXEL_OUT_LOOP( getUINT_8_8_8_8_REV); break;
    case GL_UNSIGNED_INT_10_10_10_2:
		PIXEL_OUT_LOOP( getUINT_10_10_10_2); break;
	case GL_UNSIGNED_INT_2_10_10_10_REV:
		PIXEL_OUT_LOOP( getUINT_2_10_10_10_REV); break;
	case GL_UNSIGNED_BYTE:
	case GL_BYTE:
	case GL_SHORT:
	case GL_UNSIGNED_SHORT:
	case GL_UNSIGNED_INT:
	case GL_INT:
	case GL_FLOAT:
		setSrcColorFunc(glType);
		switch(glFormat)
		{
		case GL_RED: PIXEL_OUT_LOOP(getRED); break;
		case GL_GREEN: PIXEL_OUT_LOOP(getGREEN); break;
		case GL_BLUE: PIXEL_OUT_LOOP(getBLUE); break;
		case GL_ALPHA: PIXEL_OUT_LOOP(getALPHA); break;
		case GL_LUMINANCE: PIXEL_OUT_LOOP(getLUMINANCE); break;
		case GL_LUMINANCE_ALPHA: PIXEL_OUT_LOOP(getLUMINANCE_ALPHA); break;
		case GL_BGR:
		case GL_RGB: PIXEL_OUT_LOOP(getRGB); break;
		case GL_BGRA:
		case GL_RGBA: PIXEL_OUT_LOOP(getRGBA); break;
		}
		break;
	}
}

bool requireTransform()
{
	size_t i;
	for(i = 0; i < 4; ++i)
	{
		if(Trans[i].scale != 1 || Trans[i].bias != 0)
		{
			return true;
		}
	}
	return false;
}

#include <ogc/lwp_watchdog.h>
#include <ogc/video.h>


void TransferPixels(GLenum glFormat, void *dest, u32 format, const GLvoid *pixels, GLenum type, size_t width, size_t height, size_t xoffset, size_t yoffset, size_t transwidth, size_t transheight)
{
	GLfloat r,g,b,a;
	size_t i, j, k, l, m;
	
	//textures need to be in tiles 
	int xblock = 0;
	int yblock = 0;
	
	switch(format) {
		case GX_TF_I4:
		case GX_CTF_R4:
		case GX_CTF_Z4:
			yblock = 8;
			xblock = 8;
			break;
		case GX_TF_Z8:
		case GX_TF_I8:
		case GX_CTF_RA8:
		case GX_CTF_A8:
		case GX_CTF_R8:
		case GX_CTF_G8:
		case GX_CTF_B8:
		case GX_CTF_RG8:
		case GX_CTF_GB8:
		case GX_CTF_Z8M:
		case GX_CTF_Z8L:
		case GX_TF_IA4:
		case GX_CTF_RA4:
			yblock = 8;
			xblock = 4;
			break;
		case GX_TF_IA8:
		case GX_TF_Z16:
		case GX_TF_Z24X8:
		case GX_CTF_Z16L:
		case GX_TF_RGB565:
		case GX_TF_RGB5A3:
		case GX_TF_RGBA8:
			yblock = 4;
			xblock = 4;
			break;
		default:
			assert(0);
	}
	
	int passes = 1;
	if(format == GX_TF_RGBA8)
	{
		passes = 2;
	}
	
	if(height < yblock)
	{
		height = yblock;
	}
	
	if(width < xblock)
	{
		width = xblock;
	}
	
	int t0 = gettime();
	
	if(!requireTransform() && format != GX_TF_I4)
	{
		TransferPixelsFast(dest, format, width, xblock, height, yblock, passes, pixels, glFormat, type, xoffset, yoffset, transwidth, transheight);
		return;
	}
		
	int t1 = gettime();
	
	for(j = 0; j < height/yblock; j++)
	{
		for(i = 0; i < width/xblock; ++i)
		{
			for(m = 0; m < passes; ++m)
			for(l = 0; l < yblock; l++)
			{
				for(k = 0; k < xblock; k++)
				{
					int x = xblock*i+k;
					int y = yblock*j+l;
					
					if(x < xoffset || y < yoffset ||
						x > xoffset+transwidth || y > yoffset+transheight)
					{
						if(x > xoffset+transwidth && y > yoffset+transheight)
						{
							return;
						}
						Offset(&dest, format);
						continue;
					}
					
					ReadColor(glFormat, pixels, type, &r, &g, &b, &a, width, height, x, y);
					TransformRGBA(&r, &g, &b, &a);
					
					if(format == GX_TF_I4)
					{
					
						GLfloat i1 = GetIlum(r,g,b);
						
						++l;
						y = yblock*j+l;
						
						ReadColor(glFormat, pixels, type, &r, &g, &b, &a, width, height, x, y);
						TransformRGBA(&r, &g, &b, &a);
							
						GLfloat i2 = GetIlum(r,g,b);
						
						PlaceII(255.f*i1, 255.f*i2, &dest, format);						
					}
					else
					{
						PlaceC(255.f*r, 255.f*g, 255.f*b, 255.f*a, &dest, format, m);
					}
				}
			}
		}
	}
	
	int t2 = gettime();
	
	printf("%d vs. %d, x%f\n", t1-t0, t2-t1, ((float)(t2-t1))/((float)(t1-t0)));
}
