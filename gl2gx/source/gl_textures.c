#include <stdio.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <malloc.h>
#include <math.h>

#include <ogcsys.h>
#include <gccore.h>

#include <unistd.h>

#include "glint.h"
#include "GL/gl.h"

void glPixelStoref( GLenum pname, GLfloat param )
{
	glPixelStorei(pname, param);
}

void glPixelStorei( GLenum pname, GLint param )
{
	NO_CALL_IN_BEGIN;
	
	switch(pname)
	{
	case GL_PACK_SWAP_BYTES: pack.swap = (param != 0); break;
    case GL_PACK_LSB_FIRST:	pack.lsb_first = (param != 0); break;
    case GL_PACK_ROW_LENGTH:
		if(param < 0)
		{
			_glSetError(GL_INVALID_VALUE);
			return;
		}
		pack.row_length = param;
		break;
    case GL_PACK_SKIP_ROWS:
		if(param < 0)
		{
			_glSetError(GL_INVALID_VALUE);
			return;
		}
		pack.skip_rows = param;
		break;
    case GL_PACK_SKIP_PIXELS:
		if(param < 0)
		{
			_glSetError(GL_INVALID_VALUE);
			return;
		}
		pack.skip_pixels = param;
		break;
    case GL_PACK_ALIGNMENT:
		switch(param)
		{
			case 1:
			case 2:
			case 4:
			case 8: break;
			default:
				_glSetError(GL_INVALID_VALUE);
		}
		pack.alignment = param;
		break;
	case GL_UNPACK_SWAP_BYTES: unpack.swap = (param != 0); break;
    case GL_UNPACK_LSB_FIRST:	unpack.lsb_first = (param != 0); break;
    case GL_UNPACK_ROW_LENGTH:
		if(param < 0)
		{
			_glSetError(GL_INVALID_VALUE);
			return;
		}
		unpack.row_length = param;
		break;
    case GL_UNPACK_SKIP_ROWS:
		if(param < 0)
		{
			_glSetError(GL_INVALID_VALUE);
			return;
		}
		unpack.skip_rows = param;
		break;
    case GL_UNPACK_SKIP_PIXELS:
		if(param < 0)
		{
			_glSetError(GL_INVALID_VALUE);
			return;
		}
		unpack.skip_pixels = param;
		break;
    case GL_UNPACK_ALIGNMENT:
		switch(param)
		{
			case 1:
			case 2:
			case 4:
			case 8: break;
			default:
				_glSetError(GL_INVALID_VALUE);
		}
		unpack.alignment = param;
		break;
	default:
		_glSetError(GL_INVALID_ENUM);
		return;
	};
};


void _glGetPixelStore(GLenum pname, GLint * params)
{
	switch(pname)
	{
	case GL_PACK_SWAP_BYTES: *params = pack.swap; break;
    case GL_PACK_LSB_FIRST:	*params = pack.lsb_first; break;
    case GL_PACK_ROW_LENGTH: *params = pack.row_length; break;
    case GL_PACK_SKIP_ROWS: *params = pack.skip_rows; break;
    case GL_PACK_SKIP_PIXELS: *params = pack.skip_pixels; break;
    case GL_PACK_ALIGNMENT: *params = pack.alignment; break;
	case GL_UNPACK_SWAP_BYTES: *params = unpack.swap; break;
    case GL_UNPACK_LSB_FIRST: *params = unpack.lsb_first; break;
    case GL_UNPACK_ROW_LENGTH: *params = unpack.row_length; break;
    case GL_UNPACK_SKIP_ROWS: *params = unpack.skip_rows; break;
    case GL_UNPACK_SKIP_PIXELS: *params = unpack.skip_pixels; break;
    case GL_UNPACK_ALIGNMENT: *params = unpack.alignment; break;
	default:
		_glSetError(GL_INVALID_ENUM);
		return;
	}	
}

void GL2GX_Wrap(GLint p1, u8 *p)
{
	switch(p1)
	{
	case GL_CLAMP_TO_EDGE:
	case GL_CLAMP: *p = GX_CLAMP; break;
	case GL_REPEAT: *p = GX_REPEAT; break;
	default:
		_glSetError(GL_INVALID_ENUM);
		return;
	}
}

void GL2GX_Filter(GLint p1, u8 *p)
{
	switch(p1)
	{
	case GL_NEAREST: *p = GX_NEAR; break;
	case GL_LINEAR: *p = GX_LINEAR; break;
	case GL_NEAREST_MIPMAP_NEAREST: *p = GX_NEAR_MIP_NEAR; break;
	case GL_LINEAR_MIPMAP_NEAREST: *p = GX_LIN_MIP_NEAR; break;
	case GL_NEAREST_MIPMAP_LINEAR: *p = GX_NEAR_MIP_LIN; break;
	case GL_LINEAR_MIPMAP_LINEAR: *p = GX_LIN_MIP_LIN; break;
	default:
		_glSetError(GL_INVALID_ENUM);
		return;
	}
}

#define MAX_MIP_LEVEL 10

typedef struct _glTex
{
	u32 format;
	void *pixels;
	
	bool level[MAX_MIP_LEVEL+1];
	
	GLsizei width;
	GLsizei height;
	size_t size;
	
	GLenum target;
	GXTexObj gxObj;
	GLenum glFormat;
	
	u8 min_filter;
	u8 base_level;
	u8 max_level;
} glTex;


typedef struct _textMan
{
	glTex * textures;
	u8 * used;
	size_t nTexs;
	size_t usedTexs;
} TextManager;

glTex * getCur(TextManager *texMan);

TextManager texMan;

void _glGetSize(u8 format, GLenum type, GLint *param)
{
	GLint r = 0,g = 0,b = 0,a = 0,i = 0;
	switch(format)
	{
	case GX_TF_A8: a = 8; break;
	case GX_TF_I4: i = 4; break;
	case GX_TF_I8: i = 8; break;
	case GX_TF_IA4: a = 4; i = 4; break;
	case GX_TF_IA8: a = 8; i = 8; break;
	case GX_TF_RGB565: r = 5; g = 6; b = 5; break;
	case GX_TF_RGBA8: r = 8; g = 8; b = 8; a = 8; break;
	}
	
	switch(type)
	{
	case GL_RED: *param = r; break;
	case GL_GREEN: *param = g; break;
	case GL_BLUE: *param = b; break;
	case GL_ALPHA: *param = a; break;
	case GL_LUMINANCE:
	case GL_INTENSITY: *param = i; break;
	}
	
}


void glGetTexLevelParameteriv( GLenum target, GLint level,
                                                GLenum pname, GLint *params )
{
	NO_CALL_IN_BEGIN;
	
	if(!params)
	{
		_glSetError(GL_INVALID_VALUE);
		return;
	}
	
	if(target == GL_PROXY_TEXTURE_1D || target == GL_PROXY_TEXTURE_2D || target == GL_PROXY_TEXTURE_3D)
	{
		switch(pname)
		{
		case GL_TEXTURE_WIDTH:  *params = getCur(&texMan)->width >> level; break;
		case GL_TEXTURE_HEIGHT: *params = getCur(&texMan)->height >> level; break;
		case GL_TEXTURE_DEPTH:  *params = 1; break;
		default:
			*params = 0;
			_glSetError(GL_INVALID_VALUE);
			return;
		}
		return;
	}
	
	switch(pname)
	{
	case GL_TEXTURE_WIDTH:  *params = getCur(&texMan)->width; break;
	case GL_TEXTURE_HEIGHT: *params = getCur(&texMan)->height; break;
	case GL_TEXTURE_DEPTH:  *params = 1; break;
	case GL_TEXTURE_INTERNAL_FORMAT: *params = getCur(&texMan)->glFormat; break;
	case GL_TEXTURE_BORDER: *params = 0; break;
	case GL_TEXTURE_RED_SIZE: _glGetSize(getCur(&texMan)->format, GL_RED, params); break;
	case GL_TEXTURE_GREEN_SIZE: _glGetSize(getCur(&texMan)->format, GL_GREEN, params); break;
	case GL_TEXTURE_BLUE_SIZE: _glGetSize(getCur(&texMan)->format, GL_BLUE, params); break;
	case GL_TEXTURE_ALPHA_SIZE: _glGetSize(getCur(&texMan)->format, GL_ALPHA, params); break;
	case GL_TEXTURE_LUMINANCE_SIZE: _glGetSize(getCur(&texMan)->format, GL_LUMINANCE, params); break;
	case GL_TEXTURE_INTENSITY_SIZE: _glGetSize(getCur(&texMan)->format, GL_INTENSITY, params); break;
	default:
		_glSetError(GL_INVALID_VALUE);
		return;
	}
};

void GX_SetTevCIn(GLenum src, GLenum op, u8 *C, s8 *texN, u8 defcolor, u8 defalpha)
{
	*C = GX_CC_ZERO;
	
	if(src == GL_TEXTURE)
	{
		*texN = cur_tex;
	}
	else if(src >= GL_TEXTURE0 && src < GL_TEXTURE0+MAX_NO_TEXTURES)
	{
		*texN = src-GL_TEXTURE0;
		src = GL_TEXTURE;
	}
	else
	{
		// Disable texture bind for this stage
		*texN = -1;
	}
	
	switch(src)
	{
	case GL_TEXTURE:
		switch(op)
		{
		case GL_SRC_COLOR: *C = GX_CC_TEXC; break;
		case GL_SRC_ALPHA: *C = GX_CC_TEXA;	break;
		}
		break;
	case GL_PRIMARY_COLOR:
		switch(op)
		{
		case GL_SRC_COLOR: *C = GX_CC_RASC; break;
		case GL_SRC_ALPHA: *C = GX_CA_RASA;	break;
		}
		break;
	case GL_PREVIOUS:
		switch(op)
		{
		case GL_SRC_COLOR: *C = defcolor; break;
		case GL_SRC_ALPHA: *C = defalpha; break;
		}
		break;
	}
}

void GX_SetTevAIn(GLenum src, GLenum op, u8 *C, s8 *texN, u8 defalpha)
{
	*C = GX_CA_ZERO;
	
	if(src == GL_TEXTURE)
	{
		*texN = cur_tex;
	}
	else if(src >= GL_TEXTURE0 && src < GL_TEXTURE0+MAX_NO_TEXTURES)
	{
		*texN = src-GL_TEXTURE0;
		src = GL_TEXTURE;
	}
	else
	{
		// Disable texture bind for this stage
		*texN = -1;
	}
	
	switch(src)
	{
	case GL_TEXTURE: *C = GX_CA_TEXA; break;
	case GL_PRIMARY_COLOR: *C = GX_CA_RASA;	break;
	case GL_PREVIOUS: *C = defalpha;	break;
	}
}

inline u8 GX_IncReg(u8 i)
{
	switch(i)
	{
	default:
	case 0: return GX_TEVREG0;
	case 1: return GX_TEVREG1;
	case 2: return GX_TEVREG2;
	}
}

u8 GX_IncCCReg(u8 i)
{
	switch(i)
	{
	default:
	case 0: return GX_CC_C0;
	case 1: return GX_CC_C1;
	case 2: return GX_CC_C2;
	}
}

u8 GX_IncCAReg(u8 i)
{
	switch(i)
	{
	default:
	case 0: return GX_CC_A0;
	case 1: return GX_CC_A1;
	case 2: return GX_CC_A2;
	}
}

u8 GX_IncAAReg(u8 i)
{
	switch(i)
	{
	default:
	case 0: return GX_CA_A0;
	case 1: return GX_CA_A1;
	case 2: return GX_CA_A2;
	}
}

u8 GX_IncTexMap(u8 i)
{
	switch(i)
	{
	default:
	case 0: return GX_TEXMAP0;
	case 1: return GX_TEXMAP1;
	case 2: return GX_TEXMAP2;
	case 3: return GX_TEXMAP3;
	case 4: return GX_TEXMAP4;
	case 5: return GX_TEXMAP5;
	case 6: return GX_TEXMAP6;
	case 7: return GX_TEXMAP7;
	}
}

u8 GX_IncTexCoord(u8 i)
{
	switch(i)
	{
	default:
	case 0: return GX_TEXCOORD0;
	case 1: return GX_TEXCOORD1;
	case 2: return GX_TEXCOORD2;
	case 3: return GX_TEXCOORD3;
	case 4: return GX_TEXCOORD4;
	case 5: return GX_TEXCOORD5;
	case 6: return GX_TEXCOORD6;
	case 7: return GX_TEXCOORD7;
	}
}


void GX_SetTevCombineStage(u8 stage, u32 * nstages)
{
	*nstages = 0;

	u8 defcolor = GX_CC_RASC;
	u8 defalpha = GX_CA_RASA;
	
	if(stage != GX_TEVSTAGE0) {
		defcolor = GX_CC_CPREV;
		defalpha = GX_CA_APREV;
	}
	
	u8 RGBop = GX_TEV_ADD;
	u8 Aop = GX_TEV_ADD;
	u8 RGBbias = GX_TB_ZERO;
	u8 Alphabias = GX_TB_ZERO;
	
	u8 C[3];
	u8 A[3];
	s8 Ctex[3];
	s8 Atex[3];
	s8 Tex = -1;
	
	int i;
	
	for(i = 0; i < 3; ++i)
	{
		Ctex[i] = -1;
		Atex[i] = -1;
		C[i] = GX_CC_ZERO;
		A[i] = GX_CA_ZERO;
	}
	
	int max_Csrc = 0;
	int max_Asrc = 0;
	
	// Color channels
	switch(glTexEnvs[cur_tex].comRGB)
	{
	case GL_REPLACE: max_Csrc = 1; break;
	case GL_MODULATE:
	case GL_ADD:
	case GL_ADD_SIGNED:
	case GL_SUBTRACT: max_Csrc = 2; break;
	case GL_INTERPOLATE: max_Csrc = 3; break;
    case GL_DOT3_RGB:
	case GL_DOT3_RGBA:
	default:
		return;
	}
	
	for(i = 0; i < max_Csrc; ++i)
	{
		GX_SetTevCIn(glTexEnvs[cur_tex].Carg[i],glTexEnvs[cur_tex].CargOp[i], C+i, Ctex+i, defcolor, defalpha);
	}
		
	// Alpha channels
	switch(glTexEnvs[cur_tex].comAlpha)
	{
	case GL_REPLACE: max_Asrc = 1; break;
	case GL_MODULATE:
	case GL_ADD:
	case GL_ADD_SIGNED:
	case GL_SUBTRACT: max_Asrc = 2; break;
	case GL_INTERPOLATE: max_Asrc = 3; break;
	default:
		return;
	}
	
	for(i = 0; i < max_Asrc; ++i)
	{
		GX_SetTevAIn(glTexEnvs[cur_tex].Aarg[i],glTexEnvs[cur_tex].AargOp[i], A+i, Atex+i, defalpha);
	}
	
	int max_src = 0;
	
	if(max_Asrc > max_Csrc)
	{
		max_src = max_Asrc;
	}
	else
	{
		max_src = max_Csrc;
	}
	
	Tex = -1;
	for(i = 0; i < max_src; ++i)
	{
		if(Ctex[i] != -1)
		{
			if(Tex == -1)
			{
				Tex = Ctex[i];
			}
			else
			{
				if(Tex != Ctex[i])
				{
					_glSetError(GL_INVALID_ENUM);
					return;
				}
			}
		}
		if(Atex[i] != -1)
		{
			if(Tex == -1)
			{
				Tex = Atex[i];
			}
			else
			{
				if(Tex != Atex[i])
				{
					_glSetError(GL_INVALID_ENUM);
					return;
				}
			}
		}		
	}
	
		
	// Use Arg0-2
	
#define Arg0 C[0]
#define Arg1 C[1]
#define Arg2 C[2]
	
	// Color channels
	switch(glTexEnvs[cur_tex].comRGB)
	{
	case GL_REPLACE:
		GX_SetTevColorIn(stage, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, Arg0); // Cv = Arg0
		RGBop = GX_TEV_ADD;
		RGBbias = GX_TB_ZERO;
		break;
	case GL_MODULATE:
		GX_SetTevColorIn(stage, GX_CC_ZERO, Arg0, Arg1, GX_CC_ZERO); // Cv = Arg0*Arg1
		RGBop = GX_TEV_ADD;
		RGBbias = GX_TB_ZERO;
		break;
	case GL_ADD:
		GX_SetTevColorIn(stage, Arg1, GX_CC_ZERO, GX_CC_ZERO, Arg0); // Cv = Arg0+Arg1
		RGBop = GX_TEV_ADD;
		RGBbias = GX_TB_ZERO;
		break;
	case GL_ADD_SIGNED:
		GX_SetTevColorIn(stage, Arg1, GX_CC_ZERO, GX_CC_ZERO, Arg0); // Cv = Arg0+Arg1-.5
		RGBop = GX_TEV_ADD;
		RGBbias = GX_TB_SUBHALF;
		break;
	case GL_SUBTRACT:
		GX_SetTevColorIn(stage, Arg1, GX_CC_ZERO, GX_CC_ZERO, Arg0); // Cv = Arg0-Arg1
		RGBop = GX_TEV_SUB;
		RGBbias = GX_TB_ZERO;
		break;
	case GL_INTERPOLATE:
		GX_SetTevColorIn(stage, Arg1, Arg0, Arg2, GX_CC_ZERO); // Cv = Arg0*Arg2+Arg1*(1-Arg2)
		RGBop = GX_TEV_ADD;
		RGBbias = GX_TB_ZERO;
		break;
    case GL_DOT3_RGB:
	case GL_DOT3_RGBA:
	default:
		return;
	}
	
	GX_SetTevColorOp(stage, RGBop, RGBbias, glTexEnvs[cur_tex].rgb_scale, GX_ENABLE, GX_TEVPREV);
	
#undef Arg0
#undef Arg1
#undef Arg2	
#define Arg0 A[0]
#define Arg1 A[1]
#define Arg2 A[2]
	
	// Alpha channels
	switch(glTexEnvs[cur_tex].comAlpha)
	{
	case GL_REPLACE:
		GX_SetTevAlphaIn(stage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, Arg0); // Av = Arg0
		Aop = GX_TEV_ADD;
		Alphabias = GX_TB_ZERO;
		break;
	case GL_MODULATE:
		GX_SetTevAlphaIn(stage, GX_CA_ZERO, Arg0, Arg1, GX_CA_ZERO); // Av = Arg0*Arg1
		Aop = GX_TEV_ADD;
		Alphabias = GX_TB_ZERO;
		break;
	case GL_ADD:
		GX_SetTevAlphaIn(stage, Arg1, GX_CA_ZERO, GX_CA_ZERO, Arg0); // Av = Arg0+Arg1
		Aop = GX_TEV_ADD;
		Alphabias = GX_TB_ZERO;
		break;
	case GL_ADD_SIGNED:
		GX_SetTevAlphaIn(stage, Arg1, GX_CA_ZERO, GX_CA_ZERO, Arg0); // Av = Arg0+Arg1-.5
		Aop = GX_TEV_ADD;
		Alphabias = GX_TB_SUBHALF;
		break;
	case GL_SUBTRACT:
		GX_SetTevAlphaIn(stage, Arg1, GX_CA_ZERO, GX_CA_ZERO, Arg0); // Av = Arg0-Arg1
		Aop = GX_TEV_SUB;
		Alphabias = GX_TB_ZERO;
		break;
	case GL_INTERPOLATE:
		GX_SetTevAlphaIn(stage, Arg1, Arg0, Arg2, GX_CA_ZERO); // Av = Arg0*Arg2+Arg1*(1-Arg2)
		Aop = GX_TEV_ADD;
		Alphabias = GX_TB_ZERO;
		break;
	default:
		return;
	}
	
	GX_SetTevAlphaOp(stage, Aop, Alphabias, glTexEnvs[cur_tex].alpha_scale, GX_ENABLE, GX_TEVPREV);	
	
#undef Arg0
#undef Arg1
#undef Arg2	

	*nstages = 1;
	
	if(Tex == -1)
	{
		GX_SetTevOrder(stage, GX_TEXCOORDNULL, GX_TEXMAP_NULL, GX_COLOR0A0); // No texture on this stage
	}
	else
	{
		GX_SetTevOrder(stage, GX_IncTexCoord(i), GX_IncTexMap(i), GX_COLOR0A0); // Use texture
	}
}

void GX_SetTevStage(u8 stage, u32 * nstages)
{
	if(glTexEnvs[cur_tex].mode == GL_COMBINE)
	{
		// General purpose mixer gets it own function
		GX_SetTevCombineStage(stage, nstages);
		return;
	}
	
	*nstages = 1;
	
	u8 defcolor = GX_CC_RASC;
	u8 defalpha = GX_CA_RASA;
	
	if(stage != GX_TEVSTAGE0) {
		defcolor = GX_CC_CPREV;
		defalpha = GX_CA_APREV;
	}
	
	glTex * tex = getCur(&texMan);
	GX_SetTevOrder(stage, GX_IncTexCoord(cur_tex), GX_IncTexMap(cur_tex), GX_COLOR0A0); // Use current texture
	
	GX_SetTevColorOp(stage, GX_TEV_ADD, GX_TB_ZERO, glTexEnvs[cur_tex].rgb_scale, GX_ENABLE, GX_TEVPREV);
	GX_SetTevAlphaOp(stage, GX_TEV_ADD, GX_TB_ZERO, glTexEnvs[cur_tex].alpha_scale, GX_ENABLE, GX_TEVPREV);
	
	// See http://www.khronos.org/opengles/sdk/1.1/docs/man/glTexEnv.xml for equations
	// Cp - Previous color
	// Ap - Previous alpha
	// Cs - Texture color
	// As - Texture alpha
	// Cc - Env color
	
	// Color channels
	switch(glTexEnvs[cur_tex].mode)
	{
	case GL_ADD:
	{
		switch(tex->glFormat)
		{
		case GL_ALPHA:
			// No color texture channel
			GX_SetTevColorIn(stage, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, defcolor); // Cp
			break;
		default:
			GX_SetTevColorIn(stage, GX_CC_TEXC, GX_CC_ZERO, GX_CC_ZERO, defcolor); // Cp+Cs
			break;
		}
		break;
	}
	case GL_MODULATE:
	{
		switch(tex->glFormat)
		{
		case GL_ALPHA:
			// No color texture channel
			GX_SetTevColorIn(stage, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, defcolor); // Cp
			break;
		default:
			GX_SetTevColorIn(stage, GX_CC_ZERO, defcolor, GX_CC_TEXC, GX_CC_ZERO); // Cp*Cs
			break;
		}
		break;
	}
    case GL_DECAL:
	{
		switch(tex->glFormat)
		{
		case GL_RGBA:
			GX_SetTevColorIn(stage, defcolor, GX_CC_TEXC, GX_CC_TEXA, GX_CC_ZERO); // Cp*(1-As)+Cs*As
			break;
		default:
			GX_SetTevColorIn(stage, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_TEXC); // Cs
			break;
		}
		break;
	}
    case GL_REPLACE:
	{
		switch(tex->glFormat)
		{
		case GL_ALPHA:
			// No color texture channel
			GX_SetTevColorIn(stage, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, defcolor); // Cp
			break;
		default:
			GX_SetTevColorIn(stage, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_TEXC); // Cs
			break;
		}
		break;
	}
    case GL_BLEND:
	default:
		return;
	}
		
	
	// Alpha channel
	switch(glTexEnvs[cur_tex].mode)
	{
	case GL_ADD:
    case GL_MODULATE:
    case GL_BLEND:
	{	
		switch(tex->glFormat)
		{
		case GL_LUMINANCE:
		case GL_RGB:
			// No alpha texture channel
			GX_SetTevAlphaIn(stage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, defalpha); // Ap
			break;
		default:
			GX_SetTevAlphaIn(stage, GX_CA_ZERO, GX_CA_TEXA, defalpha, GX_CA_ZERO); // Ap*As
			break;
		}
		break;
	}
    case GL_DECAL:
	{
		GX_SetTevAlphaIn(stage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, defalpha); // Ap
		break;
	}
    case GL_REPLACE:
	{
		switch(tex->glFormat)
		{
		case GL_LUMINANCE:
		case GL_RGB:
			// No alpha texture channel
			GX_SetTevAlphaIn(stage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, defalpha); // Ap
		default:
			GX_SetTevAlphaIn(stage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_TEXA); // As
		}
		break;
	}
	}
}
                        
void setAniso(GLfloat val)
{
	if(val < 2)
	{
		glTexEnvs[cur_tex].maxaniso = GX_ANISO_1;
	}
	else if(val < 4)
	{
		glTexEnvs[cur_tex].maxaniso = GX_ANISO_2;
	}
	else
	{
		glTexEnvs[cur_tex].maxaniso = GX_ANISO_4;
	}
}

void setMaxLod(GLfloat val)
{
	if(val > 10.f)
	{
		glTexEnvs[cur_tex].maxlod = 10.f;
	}
	else if(val < 0.f)
	{
		glTexEnvs[cur_tex].maxlod = 0.f;
	}
	else
	{
		glTexEnvs[cur_tex].maxlod = val;
	}
}

void glTexParameteri( GLenum target, GLenum pname, GLint param )
{
	NO_CALL_IN_BEGIN;
	
	switch(pname)
	{
	case GL_TEXTURE_MIN_FILTER:	GL2GX_Filter(param, &glTexEnvs[cur_tex].min_filter); break;
	case GL_TEXTURE_MAG_FILTER:	GL2GX_Filter(param, &glTexEnvs[cur_tex].max_filter); break;
	case GL_TEXTURE_WRAP_S:  	GL2GX_Wrap(param, &glTexEnvs[cur_tex].wrap_s); break;
	case GL_TEXTURE_WRAP_T:		GL2GX_Wrap(param, &glTexEnvs[cur_tex].wrap_t); break;
	case GL_TEXTURE_MIN_LOD:	glTexEnvs[cur_tex].minlod = param; break;
	case GL_TEXTURE_MAX_LOD:	setMaxLod(param); break;
	case GL_TEXTURE_MAX_ANISOTROPY_EXT:  setAniso(param); break;
	case GL_TEXTURE_BASE_LEVEL: 
		getCur(&texMan)->base_level = param;
		break;
	case GL_TEXTURE_MAX_LEVEL:
		getCur(&texMan)->max_level = param;
		break;
	case GL_TEXTURE_PRIORITY:
	default:
		dprintf("glTexParameteri invalind enum, 0x%X\n", pname);
		_glSetError(GL_INVALID_ENUM);
		return;	
	}	
};




void glTexParameterf( GLenum target, GLenum pname, GLfloat param )
{
	NO_CALL_IN_BEGIN;
	switch(pname)
	{
	case GL_TEXTURE_MIN_FILTER:
	case GL_TEXTURE_MAG_FILTER:
	case GL_TEXTURE_WRAP_S:
	case GL_TEXTURE_WRAP_T: glTexParameteri(target, pname, param); break;
	case GL_TEXTURE_MIN_LOD:	glTexEnvs[cur_tex].minlod = param; break;
	case GL_TEXTURE_MAX_LOD:	setMaxLod(param); break;
	case GL_TEXTURE_MAX_ANISOTROPY_EXT:  setAniso(param); break;
	case GL_TEXTURE_BASE_LEVEL: 
		getCur(&texMan)->base_level = param;
		break;
	case GL_TEXTURE_MAX_LEVEL:
		getCur(&texMan)->max_level = param;
		break;
	case GL_TEXTURE_PRIORITY:
	default:
		_glSetError(GL_INVALID_ENUM);
		return;	
	}
};

GXColorf border_color = (GXColorf){0.f,0.f,0.f,0.f};

void glTexParameterfv( GLenum target, GLenum pname, const GLfloat *params)
{
	NO_CALL_IN_BEGIN;
	switch(pname)
	{
	case GL_TEXTURE_MIN_FILTER:
	case GL_TEXTURE_MAG_FILTER:
	case GL_TEXTURE_MIN_LOD:
	case GL_TEXTURE_MAX_LOD:
	case GL_TEXTURE_BASE_LEVEL:
	case GL_TEXTURE_MAX_LEVEL:
	case GL_TEXTURE_WRAP_S:
	case GL_TEXTURE_WRAP_T:
	case GL_TEXTURE_WRAP_R:
	case GL_TEXTURE_PRIORITY:
		glTexParameterf(target, pname, *params); break;
	case GL_TEXTURE_BORDER_COLOR:
	{
		border_color = (GXColorf){params[0],params[1],params[2],params[3]};
		break;
	}
	default:
		_glSetError(GL_INVALID_ENUM);
		return;	
	}
}

void glSetTexEnvMode(const GLenum param, GLenum *p)
{
	switch(param)
	{
	case GL_ADD:
    case GL_MODULATE:
    case GL_DECAL:
    case GL_REPLACE:
    case GL_COMBINE:
		*p = param; break;
    case GL_BLEND:
	default:
		_glSetError(GL_INVALID_ENUM);	
	}
}

void glSetSrc(const GLenum param, GLenum *p)
{
	if(param >= GL_TEXTURE0 && param < GL_TEXTURE0+MAX_NO_TEXTURES)
	{
		*p = param;
		return;
	}
	switch(param)
	{
	case GL_TEXTURE:
	case GL_CONSTANT:
	case GL_PRIMARY_COLOR:
	case GL_PREVIOUS:
		*p = param;
	default:
		_glSetError(GL_INVALID_ENUM);	
	}	
}

void glSetRGBOp(const GLenum param, GLenum *p)
{
	switch(param)
	{
	case GL_SRC_COLOR:
	case GL_SRC_ALPHA:
		*p = param;
	case GL_ONE_MINUS_SRC_COLOR:
	case GL_ONE_MINUS_SRC_ALPHA:
	default:
		_glSetError(GL_INVALID_ENUM);	
	}
}

void glSetAlphaOp(const GLenum param, GLenum *p)
{
	switch(param)
	{
	case GL_SRC_ALPHA:
		*p = param;
	case GL_ONE_MINUS_SRC_ALPHA:
	default:
		_glSetError(GL_INVALID_ENUM);	
	}
}

void glSetComRGB(const GLenum param, GLenum *p)
{
	switch(param)
	{
	case GL_REPLACE:
	case GL_MODULATE:
	case GL_ADD:
	case GL_ADD_SIGNED:
	case GL_INTERPOLATE:
	case GL_SUBTRACT:
		*p = param;
	case GL_DOT3_RGB:
	case GL_DOT3_RGBA:
	default:
		_glSetError(GL_INVALID_ENUM);	
	}		
}

void glSetComAlpha(const GLenum param, GLenum *p)
{
	switch(param)
	{
	case GL_REPLACE:
    case GL_MODULATE:
	case GL_ADD:
	case GL_ADD_SIGNED:
	case GL_INTERPOLATE:
	case GL_SUBTRACT:
		*p = param;
	default:
		_glSetError(GL_INVALID_ENUM);	
	}		
		
}

void glSetScale(const GLfloat param, u8 *s)
{
	if(param != floor(param))
	{
		_glSetError(GL_INVALID_VALUE);	
		return;
	}
	switch((int)param)
	{
	case 1: *s = GX_CS_SCALE_1; break;
	case 2: *s = GX_CS_SCALE_2; break;
	case 4: *s = GX_CS_SCALE_4; break;
	default:
		_glSetError(GL_INVALID_VALUE);	
	}
}

void _glTexEnvf(GLenum pname, GLfloat param)
{
	switch(pname)
	{
	case GL_TEXTURE_ENV_MODE: glSetTexEnvMode(param, &glTexEnvs[cur_tex].mode); break;
	case GL_COMBINE_RGB:	  glSetComRGB(param, &glTexEnvs[cur_tex].comRGB); break;
	case GL_COMBINE_ALPHA:	  glSetComAlpha(param, &glTexEnvs[cur_tex].comAlpha); break;
	case GL_SRC0_RGB:		  glSetSrc(param, &glTexEnvs[cur_tex].Carg[0]); break;
	case GL_SRC1_RGB:		  glSetSrc(param, &glTexEnvs[cur_tex].Carg[1]); break;
	case GL_SRC2_RGB:		  glSetSrc(param, &glTexEnvs[cur_tex].Carg[2]); break;
	case GL_SRC0_ALPHA:		  glSetSrc(param, &glTexEnvs[cur_tex].Aarg[0]); break;
	case GL_SRC1_ALPHA:		  glSetSrc(param, &glTexEnvs[cur_tex].Aarg[1]); break;
	case GL_SRC2_ALPHA:		  glSetSrc(param, &glTexEnvs[cur_tex].Aarg[2]); break;
	case GL_OPERAND0_RGB:	  glSetRGBOp(param, &glTexEnvs[cur_tex].CargOp[0]); break;
	case GL_OPERAND1_RGB:	  glSetRGBOp(param, &glTexEnvs[cur_tex].CargOp[1]); break;
	case GL_OPERAND2_RGB:	  glSetRGBOp(param, &glTexEnvs[cur_tex].CargOp[2]); break;
	case GL_OPERAND0_ALPHA:	  glSetAlphaOp(param, &glTexEnvs[cur_tex].CargOp[0]); break;
	case GL_OPERAND1_ALPHA:	  glSetAlphaOp(param, &glTexEnvs[cur_tex].CargOp[1]); break;
	case GL_OPERAND2_ALPHA:	  glSetAlphaOp(param, &glTexEnvs[cur_tex].CargOp[2]); break;
	case GL_RGB_SCALE:	  	  glSetScale(param, &glTexEnvs[cur_tex].rgb_scale); break;
	case GL_ALPHA_SCALE:	  glSetScale(param, &glTexEnvs[cur_tex].alpha_scale); break;
	default:
		_glSetError(GL_INVALID_ENUM);
		return;	
	}
}

void _glTexEnvi(GLenum pname, GLint param)
{
	switch(pname)
	{
	case GL_TEXTURE_ENV_MODE: glSetTexEnvMode(param, &glTexEnvs[cur_tex].mode); break;
	case GL_COMBINE_RGB:	  glSetComRGB(param, &glTexEnvs[cur_tex].comRGB); break;
	case GL_COMBINE_ALPHA:	  glSetComAlpha(param, &glTexEnvs[cur_tex].comAlpha); break;
	case GL_SRC0_RGB:		  glSetSrc(param, &glTexEnvs[cur_tex].Carg[0]); break;
	case GL_SRC1_RGB:		  glSetSrc(param, &glTexEnvs[cur_tex].Carg[1]); break;
	case GL_SRC2_RGB:		  glSetSrc(param, &glTexEnvs[cur_tex].Carg[2]); break;
	case GL_SRC0_ALPHA:		  glSetSrc(param, &glTexEnvs[cur_tex].Aarg[0]); break;
	case GL_SRC1_ALPHA:		  glSetSrc(param, &glTexEnvs[cur_tex].Aarg[1]); break;
	case GL_SRC2_ALPHA:		  glSetSrc(param, &glTexEnvs[cur_tex].Aarg[2]); break;
	case GL_OPERAND0_RGB:	  glSetRGBOp(param, &glTexEnvs[cur_tex].CargOp[0]); break;
	case GL_OPERAND1_RGB:	  glSetRGBOp(param, &glTexEnvs[cur_tex].CargOp[1]); break;
	case GL_OPERAND2_RGB:	  glSetRGBOp(param, &glTexEnvs[cur_tex].CargOp[2]); break;
	case GL_OPERAND0_ALPHA:	  glSetAlphaOp(param, &glTexEnvs[cur_tex].CargOp[0]); break;
	case GL_OPERAND1_ALPHA:	  glSetAlphaOp(param, &glTexEnvs[cur_tex].CargOp[1]); break;
	case GL_OPERAND2_ALPHA:	  glSetAlphaOp(param, &glTexEnvs[cur_tex].CargOp[2]); break;
	case GL_RGB_SCALE:	  	  glSetScale(param, &glTexEnvs[cur_tex].rgb_scale); break;
	case GL_ALPHA_SCALE:	  glSetScale(param, &glTexEnvs[cur_tex].alpha_scale); break;
	default:
		_glSetError(GL_INVALID_ENUM);
		return;	
	}
}

void glTexEnvfv( GLenum target, GLenum pname, const GLfloat *param )
{
	NO_CALL_IN_BEGIN;
	
	if(param == NULL)
	{
		_glSetError(GL_INVALID_VALUE);
		return;
	}
	
	if(target == GL_TEXTURE_ENV)
	{
		if(pname == GL_TEXTURE_ENV_COLOR)
		{
			glTexEnvs[cur_tex].color.r = param[0];
			glTexEnvs[cur_tex].color.g = param[1];
			glTexEnvs[cur_tex].color.b = param[2];
			glTexEnvs[cur_tex].color.a = param[3];
		}
		else
		{
			glTexEnvf(target, pname, *param);
		}
	}
	else if(target == GL_TEXTURE_FILTER_CONTROL)
	{
		if(pname == GL_TEXTURE_LOD_BIAS)
		{
			glTexEnvs[cur_tex].lodbias = *param;
			return;
		}
		else
		{		
			_glSetError(GL_INVALID_ENUM);
			return;	
		}
	}
	else
	{
		_glSetError(GL_INVALID_ENUM);
		return;	
	}
}

static GLfloat scale_s32(s32 t)
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

void glTexEnviv( GLenum target, GLenum pname, const GLint *param )
{
	NO_CALL_IN_BEGIN;
	
	if(param == NULL)
	{
		_glSetError(GL_INVALID_VALUE);
		return;
	}
	
	if(target == GL_TEXTURE_ENV)
	{
		if(pname == GL_TEXTURE_ENV_COLOR)
		{
			glTexEnvs[cur_tex].color.r = scale_s32(param[0]);
			glTexEnvs[cur_tex].color.g = scale_s32(param[1]);
			glTexEnvs[cur_tex].color.b = scale_s32(param[2]);
			glTexEnvs[cur_tex].color.a = scale_s32(param[3]);
		}
		else
		{
			glTexEnvf(target, pname, *param);
		}
	}
	else if(target == GL_TEXTURE_FILTER_CONTROL)
	{
		if(pname == GL_TEXTURE_LOD_BIAS)
		{
			glTexEnvs[cur_tex].lodbias = *param;
			return;
		}
		else
		{		
			_glSetError(GL_INVALID_ENUM);
			return;	
		}
	}
	else
	{
		_glSetError(GL_INVALID_ENUM);
		return;	
	}
}

void glTexEnvf( GLenum target, GLenum pname, GLfloat param )
{
	NO_CALL_IN_BEGIN;
	
	if(target == GL_TEXTURE_FILTER_CONTROL){
	if(pname == GL_TEXTURE_LOD_BIAS)
	{
		glTexEnvs[cur_tex].lodbias = param;
		return;
	}
	else
	{		
		_glSetError(GL_INVALID_ENUM);
		return;	
	}}
	
	switch(target)
	{
	case GL_TEXTURE_ENV: _glTexEnvi(pname, param); break;
	default:
		_glSetError(GL_INVALID_ENUM);
		return;	
	}
};

void glTexEnvi( GLenum target, GLenum pname, GLint param )
{
	NO_CALL_IN_BEGIN;
	
	if(target == GL_TEXTURE_FILTER_CONTROL){
	if(pname == GL_TEXTURE_LOD_BIAS)
	{
		glTexEnvs[cur_tex].lodbias = param;
		return;
	}
	else
	{		
		_glSetError(GL_INVALID_ENUM);
		return;	
	}}
	
	switch(target)
	{
	case GL_TEXTURE_ENV: _glTexEnvi(pname, param); break;
	default:
		dprintf("glTexEnvi invalind enum, 0x%X\n", target);
		_glSetError(GL_INVALID_ENUM);
		return;	
	}
};


bool resizeMan(TextManager *texMan, size_t n);

void initTextures()
{
	cur_tex = 0;
	
	texMan = (TextManager){NULL, NULL, 0, 0};
	resizeMan(&texMan, NUM_INIT_TEXT);
	
	size_t i;
	size_t j;
	
	pack = (pixelStore) { 0, 0, 0, 0, 0, 4};
	unpack = (pixelStore) { 0, 0, 0, 0, 0, 4};
	
	for(i = 0; i < MAX_NO_TEXTURES; ++i)
	{
		glTexEnvs[i].enabled = false;
		
		glTexEnvs[i].min_filter = GX_NEAR_MIP_LIN;
		glTexEnvs[i].max_filter = GX_LINEAR;
		glTexEnvs[i].wrap_s = GX_REPEAT;
		glTexEnvs[i].wrap_t = GX_REPEAT;
		glTexEnvs[i].minlod = 0.f;
		glTexEnvs[i].maxlod = 10.f;
		glTexEnvs[i].lodbias = 0.0f;
		glTexEnvs[i].biasclamp = 0;
		glTexEnvs[i].edgelod = 0;
		glTexEnvs[i].maxaniso = GX_ANISO_1;
		
		glTexEnvs[i].mode = GL_MODULATE;
		glTexEnvs[i].color = (GXColorf) {0,0,0,0};
		
		
		glTexEnvs[i].comRGB = GL_MODULATE;
		glTexEnvs[i].comAlpha = GL_MODULATE;
		
		for(j = 0; j < 3; ++j)
		{
			if(j == 0)
			{
				glTexEnvs[i].Carg[j] = GL_TEXTURE;
				glTexEnvs[i].Aarg[j] = GL_TEXTURE;
			}
			else
			{
				glTexEnvs[i].Carg[j] = GL_PREVIOUS;
				glTexEnvs[i].Aarg[j] = GL_PREVIOUS;
			}
			glTexEnvs[i].CargOp[j] = GL_SRC_COLOR;
			glTexEnvs[i].AargOp[j] = GL_SRC_ALPHA;
		}
	
		glTexEnvs[i].tex = -1;  // By default unbound
		
		glTexEnvs[i].rgb_scale = GX_CS_SCALE_1;
		glTexEnvs[i].alpha_scale = GX_CS_SCALE_1;
	}
}

bool resizeMan(TextManager *texMan, size_t n)
{
	size_t i;
		
	// Sanity check
	if(texMan->nTexs < 0)
	{
		// If we fail the sanity check, just initialize and move on
		texMan->nTexs = 0;
		texMan->usedTexs = 0;
		texMan->used = NULL;
		texMan->textures = NULL;		
	}
	
	if(texMan->usedTexs > texMan->nTexs)
	{
		texMan->usedTexs = 0;
		for(i = 0; i < texMan->nTexs; i++)
		{
			if(texMan->used[i])
				++texMan->usedTexs;
		}
	}
	
	// If we have NULL pointers, we have no texs
	if(!texMan->textures || !texMan->used)
	{
		texMan->nTexs = 0;
		texMan->usedTexs = 0;
	}
	
	// Manager has more than enough, just return
	if(n < texMan->nTexs)
	{
		return true;
	}
	
	glTex * new_arr = realloc(texMan->textures, sizeof(glTex)*n);
	if(!new_arr)
	{
		_glSetError(GL_OUT_OF_MEMORY);
		return false;
	}
	
	u8 * new_used = realloc(texMan->used, sizeof(u8)*n);
	
	if(!new_used)
	{
		texMan->textures = new_arr;
		
		_glSetError(GL_OUT_OF_MEMORY);
		return false;
	}
	
	// Mark new spots unused
	for(i = texMan->nTexs; i < n; ++i)
	{
		new_used[i] = 0;
	}
	
	texMan->nTexs = n;
	texMan->textures = new_arr;
	texMan->used = new_used;
	
	return true;
}

void activateTex(TextManager *texMan, GLuint texture)
{
	size_t i = texture-1;
	
	if(texMan->used[i])
		return;
		
	texMan->used[i] = 1;

	memset(texMan->textures+i, 0, sizeof(glTex));
	texMan->textures[i].pixels = NULL;
	texMan->textures[i].width = 0;
	texMan->textures[i].height = 0;
	texMan->textures[i].target = 0;
	texMan->textures[i].max_level = 0;
	
	int j;
	for(j = 0; j < MAX_MIP_LEVEL; ++j)
	{
		texMan->textures[i].level[j] = false;
	}

	++(texMan->usedTexs);
}

void deleteTex(TextManager *texMan, GLuint texture)
{
	size_t i = texture-1;
	
	if(!texMan->used[i])
		return;
	
	glTex * tex = texMan->textures+i;
	
	if(tex->pixels)
	{
		releaseTextureSlot(tex->pixels, tex->size);
	}
		
	tex->pixels = NULL;
	tex->width = 0;
	tex->height = 0;
	tex->target = 0;
	
	int j;
	for(j = 0; j < MAX_MIP_LEVEL; ++j)
	{
		tex->level[j] = false;
	}
		
	texMan->used[i] = 0;
	--(texMan->usedTexs);
	
}


u8 isUsed(TextManager *texMan, GLuint texture)
{
	--texture;
	if(texMan->nTexs <= texture)
		return 0;
	if(texture < 0)
		return 0;
	return texMan->used[texture];
}


glTex * getTex(TextManager *texMan, GLuint texture)
{
	return texMan->textures+(texture-1);
}

glTex * getCur(TextManager *texMan)
{
	if(isUsed(texMan, glTexEnvs[cur_tex].tex))
		return texMan->textures+(glTexEnvs[cur_tex].tex-1);
	else
	// If the texture envirnoment is unbound, use 1st texture
		return texMan->textures;
}

GLuint getNextTexID(TextManager *texMan)
{
	size_t i;
	for(i = 0; i < texMan->nTexs; ++i)
	{
		if(!texMan->used[i])
		{
			activateTex(texMan, i+1);
			return i+1;			
		}
	}
	
	i = texMan->nTexs;
	
	if(resizeMan(texMan, texMan->nTexs*2))
	{
		return i+1;
	}
	else
	{
		return 0;
	}
}

void glGenTextures( GLsizei n, GLuint *tex )
{
	NO_CALL_IN_BEGIN;
	
	if(n < 0)
	{
		_glSetError(GL_INVALID_VALUE);
		return;
	}
	
	size_t i;
	resizeMan(&texMan, n+texMan.usedTexs);
	
	for(i = 0; i < n; ++i)
	{
		GLuint nt = getNextTexID(&texMan);
		*tex++ = nt;
	}

};

void glBindTexture( GLenum target, GLuint texture )
{
	NO_CALL_IN_BEGIN;
	
	activateTex(&texMan, texture);
	
	getTex(&texMan, texture)->target = target;
	
	glTexEnvs[cur_tex].tex = texture;
};

void _glSetEnableTex(bool val)
{
	glTexEnvs[cur_tex].enabled = val;
}
bool _glGetEnableTex(int tex)
{
	return glTexEnvs[cur_tex].enabled;
}

u8 GX_SetTextures(u8 stage)
{
	int i;
	u32 inc;
	int texs = 0;
	for(i = 0; i < MAX_NO_TEXTURES; ++i)
	{
		if(glTexEnvs[i].tex == -1)
		{
			continue;
		}
			
		if(!glTexEnvs[i].enabled)
		{
			continue;
		}
	
		glTex * p = getTex(&texMan, glTexEnvs[i].tex);
		
		assert(p);
						
		if(p->pixels == NULL)
		{
			continue;
		}
		
		switch(p->min_filter)
		{
		case GX_NEAR_MIP_NEAR:
		case GX_LIN_MIP_NEAR:
		case GX_NEAR_MIP_LIN:
		case GX_LIN_MIP_LIN:
		{
			// These min-filters require mipmaps, make sure they are defined
			int j;
			int maxlod_in_tex = 0;
			for(j = 1; j <= p->max_level; j++)
			{
				if(!p->level[j])
					break;
				maxlod_in_tex++;
			}
			
			// If the min-filter requires mipmaps, and they are not present, skip this texture as-per spec
			if(maxlod_in_tex < p->max_level)
			{
				continue;
			}
		}
		}
		
		GX_LoadTexObj(&(p->gxObj), GX_IncTexMap(i));
		
		GX_SetTevStage(stage, &inc);	
		
		texs++;
		
		stage += inc;
	}
	
	GX_SetNumTexGens(texs);
	
	return stage;
}

u32 convertInternalFormat(GLint glFormat, int * valid)
{
	*valid = 1;
	switch(glFormat)
	{
	case GL_ALPHA:
	case GL_ALPHA4:
	case GL_ALPHA12:
	case GL_ALPHA16:
	case GL_ALPHA8: return GX_TF_IA8;
	case 1:
	case GL_LUMINANCE:
	case GL_LUMINANCE4:
	case GL_INTENSITY:
	case GL_INTENSITY4: return GX_TF_I4;
	case GL_LUMINANCE8:
	case GL_LUMINANCE12:
	case GL_LUMINANCE16:
	case GL_INTENSITY12: 
	case GL_INTENSITY16: 
	case GL_INTENSITY8: return GX_TF_I8;
	case 2:
	case GL_LUMINANCE_ALPHA:
	case GL_LUMINANCE4_ALPHA4: return GX_TF_IA4;
	case GL_LUMINANCE6_ALPHA2: 
	case GL_LUMINANCE12_ALPHA4:
	case GL_LUMINANCE12_ALPHA12:
	case GL_LUMINANCE16_ALPHA16: 
	case GL_LUMINANCE8_ALPHA8: return GX_TF_IA8;
	case GL_R3_G3_B2:
	case 3:
	case GL_RGB:
	case GL_RGB4: 
	case GL_RGB5: 
	case GL_RGB8: 
	case GL_RGB10:
	case GL_RGB12:
	case GL_RGB16: return GX_TF_RGB565;
	case GL_RGB5_A1: return GX_TF_RGB5A3;
	case 4:
	case GL_RGBA:
	case GL_RGBA2:
	case GL_RGBA4:
	case GL_RGB10_A2:
	case GL_RGBA12:
	case GL_RGBA16:
	case GL_RGBA8: return GX_TF_RGBA8;
	}
	
	*valid = 0;
	return GX_RGBA8;
}


void * GenArray(u32 format, GLsizei width, GLsizei height, size_t *byte_size, u8 maxlod)
{
	*byte_size = GX_GetTexBufferSize (width, height, format, GX_TRUE, maxlod);
	
	void *ptr = getTextureSlot(*byte_size);
	
	if(ptr == NULL)
	{
		return ptr;
	}
	
	memset(ptr, 0x7f, *byte_size);
	
	return ptr;
}

int IsPowerOfTwo (int value) {
	return (value & (~value+1)) == value; //~value+1 equals a two's complement -value 
}

void * computeStart(glTex * tex, GLint level)
{
	if(level == 0)
	{
		return tex->pixels;
	}
	
	u32 byteOffset;
	
	if(level == 1)
	{
		byteOffset = GX_GetTexBufferSize(tex->width, tex->height, tex->format, GX_FALSE, level);
	}
	else
	{
		byteOffset = GX_GetTexBufferSize(tex->width, tex->height, tex->format, GX_TRUE, level);
	}
	
	void * p = tex->pixels;
	OffsetN(&p, byteOffset);
	
	return p;
}

int CorrectGLtype(GLenum type, GLenum format)
{
	switch(format)
	{
		case GL_COLOR_INDEX:
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
		default:
			_glSetError(GL_INVALID_ENUM);
			return 0;
	}
	
	switch(type)
	{
	case GL_UNSIGNED_BYTE_3_3_2:
    case GL_UNSIGNED_BYTE_2_3_3_REV:
	case GL_UNSIGNED_SHORT_5_6_5:
	case GL_UNSIGNED_SHORT_5_6_5_REV:
		if(format == GL_RGB)
		{
			return 1;
		}
		else
		{
			_glSetError(GL_INVALID_ENUM);
			return 0;
		}
		break;
	case GL_UNSIGNED_SHORT_4_4_4_4:
	case GL_UNSIGNED_SHORT_4_4_4_4_REV:
	case GL_UNSIGNED_SHORT_5_5_5_1:
    case GL_UNSIGNED_SHORT_1_5_5_5_REV:
	case GL_UNSIGNED_INT_8_8_8_8:
	case GL_UNSIGNED_INT_8_8_8_8_REV:
    case GL_UNSIGNED_INT_10_10_10_2:
	case GL_UNSIGNED_INT_2_10_10_10_REV:
		if(format == GL_RGBA || format == GL_BGRA)
		{
			return 1;
		}
		else
		{
			_glSetError(GL_INVALID_ENUM);
			return 0;
		}
		break;
	case GL_UNSIGNED_BYTE:
	case GL_BYTE:
	case GL_UNSIGNED_SHORT:
	case GL_SHORT:
	case GL_UNSIGNED_INT:
	case GL_INT:
	case GL_FLOAT:
		return 1;
		break;
	case GL_BITMAP:
	default:
		_glSetError(GL_INVALID_ENUM);
		return 0;
		break;
	}

}


void glTexSubImage2D( GLenum target, GLint level,
                                       GLint xoffset, GLint yoffset,
                                       GLsizei width, GLsizei height,
                                       GLenum format, GLenum type,
                                       const GLvoid *pixels )
{
	NO_CALL_IN_BEGIN;
	
	dprintf("SubImage2D L: %d %dx%d F:0x%X T:0x%X\n", level, width, height, format, type);
	
	if(target != GL_TEXTURE_2D)
	{
		_glSetError(GL_INVALID_ENUM);
		return;
	}
	
	// Don't accept these formats
	if(type == GL_BITMAP || format == GL_COLOR_INDEX)
	{
		_glSetError(GL_INVALID_ENUM);
		return;
	}
	
	if(level < 0 || level > MAX_MIP_LEVEL)
	{
		_glSetError(GL_INVALID_VALUE);
		return;
	}
	
	int correct_type = CorrectGLtype(type, format);
	
	if(!correct_type)
	{
		return;
	}	
	
	glTex * tex = getCur(&texMan);

	if(!tex->pixels)
	{
		_glSetError(GL_INVALID_OPERATION);
		return;		
	}
	
	GLfloat b = 0; // Borders are ignored for now
	GLfloat w = tex->width >> level;
	GLfloat h = tex->height >> level;
	
	if(xoffset <  -b ||
		(xoffset + width) > (w - b) ||
		yoffset <  -b ||
		(yoffset + height) > (h - b))
	{
		_glSetError(GL_INVALID_VALUE);
		return;	
	}
	
	if(height < 0 || width < 0)
	{
		_glSetError(GL_INVALID_VALUE);
		return;	
	}
	
	if(tex->glFormat == format)
	{
		_glSetError(GL_INVALID_ENUM);
		return;
	}
	
	void *dest = computeStart(tex, level);
	TransferPixels(format, dest, tex->format, pixels, type, tex->width, tex->height, xoffset, yoffset, width, height);
	tex->level[level] = true;
		
	GX_InitTexObj(&tex->gxObj, tex->pixels, tex->width, tex->height, tex->format, 
		glTexEnvs[cur_tex].wrap_s , glTexEnvs[cur_tex].wrap_t, GX_TRUE);
	GX_InitTexObjLOD(&tex->gxObj, glTexEnvs[cur_tex].min_filter, glTexEnvs[cur_tex].max_filter,
		glTexEnvs[cur_tex].minlod, glTexEnvs[cur_tex].maxlod, glTexEnvs[cur_tex].lodbias, 
		glTexEnvs[cur_tex].biasclamp, glTexEnvs[cur_tex].edgelod, glTexEnvs[cur_tex].maxaniso);

	tex->min_filter = glTexEnvs[cur_tex].min_filter;
	
	DCFlushRange(tex->pixels, tex->size);
};

void glTexImage1D( GLenum target,
			     GLint level,
			     GLint internalformat,
			     GLsizei width,
			     GLint border,
			     GLenum format,
			     GLenum type,
			     const GLvoid *pixels )
{
	NO_CALL_IN_BEGIN;
	
	if(target == GL_PROXY_TEXTURE_1D)
	{
		glTexImage2D(GL_PROXY_TEXTURE_2D, level, internalformat, width, 1, border, format, type, pixels);
	}
	else
	{
		glTexImage2D(GL_TEXTURE_2D, level, internalformat, width, 1, border, format, type, pixels);
	}
	
}

extern void wiipause();

void glTexImage2D( GLenum target, GLint level,
                                    GLint internalFormat,
                                    GLsizei width, GLsizei height,
                                    GLint border, GLenum format, GLenum type,
									const GLvoid *pixels )
{
	NO_CALL_IN_BEGIN;
	
	dprintf("Image2D curtex: %d L: %d %dx%d F:0x%X T:0x%X\n", glTexEnvs[cur_tex].tex, level, width, height, format, type);
	
	bool powerOf2 = IsPowerOfTwo(width) && IsPowerOfTwo(height);
	
	if(target == GL_PROXY_TEXTURE_2D)
	{
		if(!powerOf2 || width > (1024 >> level) || height > (1024 >> level) || level > MAX_MIP_LEVEL)
		{
			glTex * tex = getCur(&texMan);
			tex->width = 0;
			tex->height = 0;
		}
		else
		{
			glTex * tex = getCur(&texMan);
			tex->width = width << level;
			tex->height = height << level;
		}
		return;
	}
	
	if(target != GL_TEXTURE_2D)
	{
		_glSetError(GL_INVALID_ENUM);
		return;
	}
	
	if(!powerOf2 || width < 0 || height < 0)
	{
		_glSetError(GL_INVALID_VALUE);
		return;
	}
	
	// Don't accept these formats
	if(type == GL_BITMAP || format == GL_COLOR_INDEX)
	{
		_glSetError(GL_INVALID_ENUM);
		return;
	}

	// If max texture size is 1024x1024, there can only be 10 mipmap levels, and you cannot have negitive levels
	if(level < 0 || level > MAX_MIP_LEVEL)
	{
		_glSetError(GL_INVALID_VALUE);
		return;
	}
	
	int correct_type = CorrectGLtype(type, format);
	
	if(!correct_type)
	{
		return;
	}
		
	u32 iFor = convertInternalFormat(internalFormat, &correct_type);
	
	dprintf("internal format: 0x%X 0x%X\n", internalFormat, iFor);
	
	if(!correct_type)
	{
		_glSetError(GL_INVALID_ENUM);
		return;
	}
	
	size_t bytes;
	
	glTex * tex = getCur(&texMan);
	
	GLsizei base_height = height << level;
	GLsizei base_width = width << level;
	
	// Check if this glTexImage2D is for the same base image size and generates an error
	
	// If the base texture dimensions are equal, then the last mipmap is 1x1.  Make sure the sizes line up
	bool case1 = (height == 1 && width == 1 && tex->height == base_height && tex->width == base_width);
	// If the base texture dimensions are not equal, one dimension will reach 1 while the other is still decreasing
	// Ignore mismatches in the dimension that has a value of 1
	bool case2 = (tex->height == base_height || height == 1) && (tex->width == base_width || width == 1);
	
	if(!(case1 || case2) && level != 0)
	{
		_glSetError(GL_INVALID_VALUE);
		return;
	}
	
	if(!tex->pixels || (!(case1 || case2) && level == 0))
	{
		if(tex->pixels)
		{
			releaseTextureSlot(tex->pixels, tex->size);
			tex->pixels = NULL;
		}
			
		int j;
		for(j = 0; j < MAX_MIP_LEVEL; ++j)
		{
			tex->level[j] = false;
		}
		
		tex->pixels = GenArray(iFor, width, height, &bytes, 10);
		
		if(tex->pixels == NULL)
		{
			_glSetError(GL_OUT_OF_MEMORY);
			return;
		}
		
		// This is a new texture, store basic info
		tex->glFormat = format;
		tex->format = iFor;
		tex->size = bytes;
		
		tex->height = base_height;
		tex->width = base_width;
		
		tex->target = target;
		
		if(tex->max_level == 0)
		{
			int max_dim = (tex->height > tex->width) ? tex->height : tex->width;
			
			tex->max_level = 0;
			
			while(max_dim > 1)
			{
				max_dim = max_dim >> 1;
				tex->max_level++;
			}
		}
	}
	else
	{
		if(iFor != tex->format)
		{
			_glSetError(GL_INVALID_VALUE);
			return;
		}
	}
	
	if(pixels)
	{		
		void *dest = computeStart(tex, level);
		TransferPixels(format, dest, iFor, pixels, type, width, height, 0, 0, width, height);
		
		tex->level[level] = true;
		
		GX_InitTexObj(&tex->gxObj, tex->pixels, tex->width, tex->height, tex->format, 
			glTexEnvs[cur_tex].wrap_s , glTexEnvs[cur_tex].wrap_t, GX_TRUE);
		GX_InitTexObjLOD(&tex->gxObj, glTexEnvs[cur_tex].min_filter, glTexEnvs[cur_tex].max_filter,
			glTexEnvs[cur_tex].minlod, glTexEnvs[cur_tex].maxlod, glTexEnvs[cur_tex].lodbias, 
			glTexEnvs[cur_tex].biasclamp, glTexEnvs[cur_tex].edgelod, glTexEnvs[cur_tex].maxaniso);

		tex->min_filter = glTexEnvs[cur_tex].min_filter;
		
		DCFlushRange(tex->pixels, bytes);
	}	
};


void glDeleteTextures( GLsizei n, const GLuint *textures)
{
	NO_CALL_IN_BEGIN;
	
	size_t i;
	
	if(n < 0)
	{
		_glSetError(GL_INVALID_VALUE);
		return;
	}
	
	if(!textures)
	{
		_glSetError(GL_INVALID_VALUE);
		return;
	}
	
	for(i = 0; i < n; ++i)
	{
		deleteTex(&texMan, *textures++);
	}
};

GLboolean glIsTexture( GLuint texture ) {
	NO_CALL_IN_BEGIN_A(GL_FALSE);
	
	return isUsed(&texMan, texture);
};
