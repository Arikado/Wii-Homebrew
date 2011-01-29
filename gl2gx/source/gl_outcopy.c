#include <GL/gl.h>
#include "glint.h"
#include <stdio.h>

void glReadBuffer( GLenum mode )
{
	NO_CALL_IN_BEGIN;
	
	switch(mode)
	{
	case GL_FRONT:
	case GL_LEFT:
	case GL_FRONT_LEFT:
		read_mode = GL_FRONT;
		break;
	case GL_BACK:
	case GL_BACK_LEFT:
		read_mode = GL_BACK;
		break;
	default:
		_glSetError(GL_INVALID_OPERATION);
		return;
	}
};


#define cRED rgba[0]
#define cGREEN rgba[1]
#define cBLUE rgba[2]
#define cALPHA rgba[3]

static __inline__ void put_UBYTE_3_3_2(void *pixel, u8 *rgba)
{
	u8 *p = (u8*)pixel;
	
	*p = (cRED & 0xE0) | (cGREEN & 0xE0) >> 3 | (cBLUE & 0xC0) >> 6;
}
static __inline__ void put_UBYTE_2_3_3_REV(void *pixel, u8 *rgba)
{
	u8 *p = (u8*)pixel;
	
	*p = (cBLUE & 0xC0) | (cGREEN & 0xE0) << 2 | (cRED & 0xE0) >> 5;
}
static __inline__ void put_USHORT_5_6_5(void *pixel, u8 *rgba)
{
	u16 *p = (u16*)pixel;
	
	*p = (cRED & 0xF8) << 8 | (cGREEN & 0xFC) << 3 | (cBLUE & 0xF8) >> 3;
}
static __inline__ void put_USHORT_5_6_5_REV(void *pixel, u8 *rgba)
{
	u16 *p = (u16*)pixel;
	
	*p = (cBLUE & 0xF8) << 8 | (cGREEN & 0xFC) << 3 | (cRED & 0xF8) >> 3;
}
static __inline__ void put_USHORT_4_4_4_4(void *pixel, u8 *rgba)
{
	u16 *p = (u16*)pixel;
	
	*p = (cRED & 0xF0) << 8 | (cGREEN & 0xF0) << 4 | (cBLUE & 0xF0) | (cALPHA & 0xF0) >> 4;
}
static __inline__ void put_USHORT_4_4_4_4_REV(void *pixel, u8 *rgba)
{
	u16 *p = (u16*)pixel;
	
	*p = (cALPHA & 0xF0) << 8 | (cBLUE & 0xF0) << 4 | (cGREEN & 0xF0) | (cRED & 0xF0) >> 4;
}
static __inline__ void put_USHORT_5_5_5_1(void *pixel, u8 *rgba)
{
	u16 *p = (u16*)pixel;
	
	*p = (cRED & 0xF8) << 8 | (cGREEN & 0xF8) << 3 | (cBLUE & 0xF8) >> 2 | (cALPHA & 0x80) >> 7;
}
static __inline__ void put_USHORT_1_5_5_5_REV(void *pixel, u8 *rgba)
{
	u16 *p = (u16*)pixel;
	
	*p = (cALPHA & 0x80) << 8 | (cBLUE & 0xF8) << 7 | (cGREEN & 0xF8) << 2 | (cRED & 0xF8) >> 3;
}
static __inline__ void put_UINT_8_8_8_8(void *pixel, u8 *rgba)
{
	u32 *p = (u32*)pixel;
	
	*p = cRED << 24 | cGREEN << 16 | cBLUE << 8 | cALPHA;
}
static __inline__ void put_UINT_8_8_8_8_REV(void *pixel, u8 *rgba)
{
	u32 *p = (u32*)pixel;
	
	*p = cALPHA << 24 | cBLUE << 16 | cGREEN << 8 | cRED;
}

#define U8_2_U10 4.0117647058823529411

static __inline__ void put_UINT_10_10_10_2(void *pixel, u8 *rgba)
{
	u32 *p = (u32*)pixel;
	u16 r,g,b;
	
	r = cRED*U8_2_U10;
	if(r > 1023)
	{
		r = 1023;
	}
	g = cGREEN*U8_2_U10;
	if(g > 1023)
	{
		g = 1023;
	}
	b = cBLUE*U8_2_U10;
	if(b > 1023)
	{
		b = 1023;
	}
	
	*p = r << 22 | g << 12 | b << 2 | (cALPHA & 0xC0) >> 6;
}
static __inline__ void put_UINT_2_10_10_10_REV(void *pixel, u8 *rgba)
{
	u32 *p = (u32*)pixel;
	u16 r,g,b;
	
	r = cRED*U8_2_U10;
	if(r > 1023)
	{
		r = 1023;
	}
	g = cGREEN*U8_2_U10;
	if(g > 1023)
	{
		g = 1023;
	}
	b = cBLUE*U8_2_U10;
	if(b > 1023)
	{
		b = 1023;
	}
	
	*p = (cALPHA & 0xC0) >> 30 | b << 20 | g << 10 | r;
}

typedef void (*putType)(void **, float);

static void put_UBYTE(void **pixels, float v)
{
	u8 **p = (u8**)pixels;
	*(*p)++ = 255.*v;
}
static void put_BYTE(void **pixels, float v)
{
	s8 ** p = (s8 **)pixels;
	*(*p)++ = 127.*v;
}
static void put_USHORT(void **pixels, float v)
{
	u16 ** p = (u16 **)pixels;
	*(*p)++ = 65535.f*v;
}
static void put_SHORT(void **pixels, float v)
{
	s16 ** p = (s16 **)pixels;
	*(*p)++ = 32767.f*v;
}
static void put_UINT(void **pixels, float v)
{
	u32 ** p = (u32 **)pixels;
	*(*p)++ = 4294967295.f*v;
}
static void put_INT(void **pixels, float v)
{
	s32 ** p = (s32 **)pixels;
	*(*p)++ = 2147483647.f*v;
}
static void put_FLOAT(void **pixels, float v)
{
	GLfloat ** p = (GLfloat **)pixels;
	*(*p)++ = v;
}

static __inline__ void put_RED(void *pixel, putType fun, float *rgba)
{
	fun(&pixel, cRED);
}
static __inline__ void put_GREEN(void *pixel, putType fun, float *rgba)
{
	fun(&pixel, cGREEN);
}
static __inline__ void put_BLUE(void *pixel, putType fun, float *rgba)
{
	fun(&pixel, cBLUE);
}
static __inline__ void put_ALPHA(void *pixel, putType fun, float *rgba)
{
	fun(&pixel, cALPHA);
}
static __inline__ void put_RGB(void *pixel, putType fun, float *rgba)
{
	fun(&pixel, cRED);
	fun(&pixel, cGREEN);
	fun(&pixel, cBLUE);
}
static __inline__ void put_RGBA(void *pixel, putType fun, float *rgba)
{
	fun(&pixel, cRED);
	fun(&pixel, cGREEN);
	fun(&pixel, cBLUE);
	fun(&pixel, cALPHA);
}
static __inline__ GLubyte GetIlum(GLfloat r, GLfloat g, GLfloat b)
{
	return ((float)r+(float)g+(float)b)/3.f;
}
static __inline__ void put_LUMINANCE(void *pixel, putType fun, float *rgba)
{
	fun(&pixel, GetIlum(cRED,cGREEN,cBLUE));
}
static __inline__ void put_LUMINANCE_ALPHA(void *pixel, putType fun, float *rgba)
{
	fun(&pixel, GetIlum(cRED,cGREEN,cBLUE));
	fun(&pixel, cALPHA);
}

static void write_rgb(void *pixel, GLenum format, GLenum type, u8 *rgba)
{
	switch(format)
	{
		case GL_BGR:
		case GL_BGRA:
		{
			u8 t = rgba[0];
			rgba[0] = rgba[2];
			rgba[2] = t;
		}
	}
	
	putType fun = NULL;
	switch(type)
	{
		case GL_UNSIGNED_BYTE_3_3_2:
			put_UBYTE_3_3_2(pixel, rgba);
			return;
			break;
		case GL_UNSIGNED_BYTE_2_3_3_REV:
			put_UBYTE_2_3_3_REV(pixel, rgba);
			return;
			break;
		case GL_UNSIGNED_SHORT_5_6_5:
			put_USHORT_5_6_5(pixel, rgba);
			return;
			break;
		case GL_UNSIGNED_SHORT_5_6_5_REV:
			put_USHORT_5_6_5_REV(pixel, rgba);
			return;
			break;
		case GL_UNSIGNED_SHORT_4_4_4_4:
			put_USHORT_4_4_4_4(pixel, rgba);
			return;
			break;
		case GL_UNSIGNED_SHORT_4_4_4_4_REV:
			put_USHORT_4_4_4_4_REV(pixel, rgba);
			return;
			break;
		case GL_UNSIGNED_SHORT_5_5_5_1:
			put_USHORT_5_5_5_1(pixel, rgba);
			return;
			break;
		case GL_UNSIGNED_SHORT_1_5_5_5_REV:
			put_USHORT_1_5_5_5_REV(pixel, rgba);
			return;
			break;
		case GL_UNSIGNED_INT_8_8_8_8:
			put_UINT_8_8_8_8(pixel, rgba);
			return;
			break;
		case GL_UNSIGNED_INT_8_8_8_8_REV:
			put_UINT_8_8_8_8_REV(pixel, rgba);
			return;
			break;
		case GL_UNSIGNED_INT_10_10_10_2:
			put_UINT_10_10_10_2(pixel, rgba);
			return;
			break;
		case GL_UNSIGNED_INT_2_10_10_10_REV:
			put_UINT_2_10_10_10_REV(pixel, rgba);
			return;
			break;
		case GL_UNSIGNED_BYTE:
			fun = put_UBYTE;
			break;
		case GL_BYTE:
			fun = put_BYTE;
			break;
		case GL_UNSIGNED_SHORT:
			fun = put_USHORT;
			break;
		case GL_SHORT:
			fun = put_SHORT;
			break;
		case GL_UNSIGNED_INT:
			fun = put_UINT;
			break;
		case GL_INT:
			fun = put_INT;
			break;
		case GL_FLOAT:
			fun = put_FLOAT;
			break;
		case GL_BITMAP:
		default:
			assert(0);
			break;
	}
	
	assert(fun);
	
	float rgba_f[4];
	
	rgba_f[0] = rgba[0]/255.f;
	rgba_f[1] = rgba[1]/255.f;
	rgba_f[2] = rgba[2]/255.f;
	rgba_f[3] = rgba[3]/255.f;
	
	TransformRGBA(rgba_f+0,rgba_f+1,rgba_f+2,rgba_f+3);
	
	switch(format)
	{
		case GL_RED:
			put_RED(pixel, fun, rgba_f);
			break;
		case GL_GREEN:
			put_GREEN(pixel, fun, rgba_f);
			break;
		case GL_BLUE:
			put_BLUE(pixel, fun, rgba_f);
			break;
		case GL_ALPHA:
			put_ALPHA(pixel, fun, rgba_f);
			break;
		case GL_RGB:
		case GL_BGR:
			put_RGB(pixel, fun, rgba_f);
			break;
		case GL_RGBA:
		case GL_BGRA:
			put_RGBA(pixel, fun, rgba_f);
			break;
		case GL_LUMINANCE:
			put_LUMINANCE(pixel, fun, rgba_f);
			break;
		case GL_LUMINANCE_ALPHA:
			put_LUMINANCE_ALPHA(pixel, fun, rgba_f);
			break;
		case GL_COLOR_INDEX:
		case GL_STENCIL_INDEX:
		case GL_DEPTH_COMPONENT:
		default:
			assert(0);
			break;
	}
}

static __inline__ u8 clamp_255(float c)
{
	if(c > 255)
	{
		return 255;
	}
	else if(c < 0)
	{
		return 0;
	}
	else
	{
		return c;
	}
}

static __inline__ void YCbCr2RGB(float Y, float Cb, float Cr, u8 *rgba)
{
	cRED   = clamp_255(( 298.082 * Y                + 408.583 * Cr ) / 256 - 222.921);
	cGREEN = clamp_255(( 298.082 * Y - 100.291 * Cb - 208.120 * Cr ) / 256 + 135.576);
	cBLUE  = clamp_255(( 298.082 * Y + 516.412 * Cb                ) / 256 - 276.836);
}

void glReadPixels( GLint x, GLint y,
                                    GLsizei width, GLsizei height,
                                    GLenum format, GLenum type,
                                    GLvoid *pixels )
{
	NO_CALL_IN_BEGIN;
	
	if(width < 0 || height < 0)
	{
		_glSetError(GL_INVALID_VALUE);
		return;
	}
	
	
	switch(format)
	{
		case GL_RED:
		case GL_GREEN:
		case GL_BLUE:
		case GL_ALPHA:
		case GL_RGB:
		case GL_BGR:
		case GL_RGBA:
		case GL_BGRA:
		case GL_LUMINANCE:
		case GL_LUMINANCE_ALPHA:
			break;
		case GL_COLOR_INDEX:
		case GL_STENCIL_INDEX:
		case GL_DEPTH_COMPONENT:
		default:
			_glSetError(GL_INVALID_ENUM);
			return;
			break;
	}
	
	
	switch(type)
	{
		case GL_UNSIGNED_BYTE:
		case GL_BYTE:
		case GL_UNSIGNED_SHORT:
		case GL_SHORT:
		case GL_UNSIGNED_INT:
		case GL_INT:
		case GL_FLOAT:
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
			break;
		case GL_BITMAP:
		default:
			_glSetError(GL_INVALID_ENUM);
			return;
			break;
	}
	
	u32 *buffer = NULL;
	
	switch(read_mode)
	{
	case GL_FRONT:
		// Currently being displayed, so no need to copy out of EFB
		buffer = getFrontFramebuffer();
		break;
	case GL_BACK:
		// Currently held in EFB, need to copy it out
		buffer = getBackFramebuffer();
		GX_CopyDisp(buffer,GX_FALSE);
		GX_DrawDone();
	}
	
	if(buffer == NULL)
	{
		return;
	}
	
	u32 line_width;
	u32 n_lines;
	
	getVImode(&line_width, &n_lines);
	
	int i, j;
	
	for(j = n_lines-1; j >= 0; --j)
	{
		if(j < y)
		{
			return;
		}
		
		for(i = 0; i < line_width; ++i)
		{
			u32 val = *buffer++;
			
			if(j > y+height || i+1 < x || i > x+width)
			{
				continue;
			}
			
			u8 Y1 = (val & 0xFF000000) >> 24;
			u8 Cb = (val & 0x00FF0000) >> 16;
			u8 Y2 = (val & 0x0000FF00) >>  8;
			u8 Cr = (val & 0x000000FF) >>  0;
			
			u8 rgba[4];
			
			if(i >= x)
			{
				YCbCr2RGB(Y1, Cb, Cr, rgba);
				cALPHA = 255;
				write_rgb((void*)pixel_offset(format, pixels, type, width, height, i-x, j-y, &pack), format, type, rgba);
			}
			
			++i;
			
			if(i < x+width)
			{
				YCbCr2RGB(Y2, Cb, Cr, rgba);
				cALPHA = 255;
				write_rgb((void*)pixel_offset(format, pixels, type, width, height, i-x, j-y, &pack), format, type, rgba);
			}
		}
	}
};

void glGetTexImage( GLenum target, GLint level,
                                     GLenum format, GLenum type,
                                     GLvoid *pixels )
{
	NO_CALL_IN_BEGIN;
};
									 
