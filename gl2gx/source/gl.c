
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include "glint.h"
#include "GL/gl.h"

// Functions todo

// Plan to never do

void glHint( GLenum target, GLenum mode ) { NO_CALL_IN_BEGIN; } // Can ignore

void glPolygonOffset( GLfloat factor, GLfloat units ) { NO_CALL_IN_BEGIN; }; // Can ignore

void glLightModeli( GLenum pname, GLint param ) { NO_CALL_IN_BEGIN; }; // Can ignore

// Must do

void glTexGeni( GLenum coord, GLenum pname, GLint param ) {}; // Hard, but doable

void glPolygonMode( GLenum face, GLenum mode ) { NO_CALL_IN_BEGIN; }; // Will do

// Cannot do

void glShadeModel( GLenum mode ) { NO_CALL_IN_BEGIN; }; // Must ignore (not changable on the GX)?

void glClipPlane( GLenum plane, const GLdouble *equation ) { NO_CALL_IN_BEGIN; }; // Not implemented on the GX?

// End todo

void glColorMaterial(GLenum face, GLenum mode)
{
	NO_CALL_IN_BEGIN;
	
	switch(mode)
	{
	case GL_EMISSION:
	case GL_AMBIENT:
	case GL_DIFFUSE:
	case GL_SPECULAR:
	case GL_AMBIENT_AND_DIFFUSE: copy_material = mode; break;
	default: _glSetError(GL_INVALID_ENUM); break;
	}
};

void glBlendFunc( GLenum sfactor, GLenum dfactor )
{
	NO_CALL_IN_BEGIN;
	
	switch(sfactor)
	{
		case GL_ZERO: blend_src = GX_BL_ZERO; break;
		case GL_ONE: blend_src = GX_BL_ONE; break;
		case GL_DST_COLOR:  blend_src = GX_BL_DSTCLR; break;
		case GL_ONE_MINUS_DST_COLOR: blend_src = GX_BL_INVDSTCLR; break;
		case GL_SRC_ALPHA: blend_src = GX_BL_SRCALPHA; break;
		case GL_ONE_MINUS_SRC_ALPHA: blend_src = GX_BL_INVSRCALPHA; break;
		case GL_DST_ALPHA: blend_src = GX_BL_DSTALPHA; break;
		case GL_ONE_MINUS_DST_ALPHA: blend_src = GX_BL_INVDSTALPHA; break;
		case GL_SRC_ALPHA_SATURATE:
		default: _glSetError(GL_INVALID_ENUM); break;
	}

	switch(dfactor)
	{
		case GL_ZERO: blend_dst = GX_BL_ZERO; break;
		case GL_ONE: blend_dst = GX_BL_ONE; break;
		case GL_SRC_COLOR: blend_dst = GX_BL_SRCCLR; break;
		case GL_ONE_MINUS_SRC_COLOR: blend_dst = GX_BL_INVSRCCLR; break;
		case GL_SRC_ALPHA: blend_dst = GX_BL_SRCALPHA; break;
		case GL_ONE_MINUS_SRC_ALPHA: blend_dst = GX_BL_INVSRCALPHA; break;
		case GL_DST_ALPHA: blend_dst = GX_BL_DSTALPHA; break;
		case GL_ONE_MINUS_DST_ALPHA: blend_dst = GX_BL_INVDSTALPHA; break;
		default: _glSetError(GL_INVALID_ENUM); break;
	}
}

void glScissor( GLint x, GLint y, GLsizei width, GLsizei height)
{
	NO_CALL_IN_BEGIN;
	
	if(width < 0 || height < 0)
	{
		_glSetError(GL_INVALID_VALUE);
		return;
	}
	
	scissorInfo = (boxInfo) {x,y,width,height};
};


/* Culling / Winding */

void glCullFace( GLenum mode)
{
	NO_CALL_IN_BEGIN;
	
	switch(mode)
	{
	case GL_FRONT:
		cull_mode = GX_CULL_FRONT;
		break;
	case GL_BACK:
		cull_mode = GX_CULL_BACK;
		break;
	case GL_FRONT_AND_BACK:
		cull_mode = GX_CULL_ALL;
		break;
	default:
		_glSetError(GL_INVALID_ENUM);
		return;
	}
}

void glFrontFace( GLenum mode ){

	NO_CALL_IN_BEGIN;
	
	switch(mode)
	{
	case GL_CCW:
	case GL_CW:
		gxwinding = mode; break;
	default:
		_glSetError(GL_INVALID_ENUM);
		return;
	}
		
};


/* matrix */

void glDepthRange( GLclampd near_val, GLclampd far_val )
{
	NO_CALL_IN_BEGIN;
	
	normNear = near_val;
	normFar = far_val;
};

void glViewport( GLint x,
			   GLint y,
			   GLsizei width,
			   GLsizei height )
{
	NO_CALL_IN_BEGIN;
	viewPort = (boxInfo) {x,y,width,height};
}

/* glVertex */

void glVertex2i( GLint x, GLint y) {
	glVertex3f(x, y, 0.0f);
}

void glVertex2f( GLfloat x, GLfloat y ) {
	glVertex3f(x, y, 0.0f);
}

void glVertex3fv( const GLfloat *v )
{
	glVertex3f(v[0],v[1],v[2]);
}

void glVertex4f( GLfloat x, GLfloat y, GLfloat z, GLfloat w ) {
	glVertex3f(x,y,z);
}

void glVertex3f( GLfloat x, GLfloat y, GLfloat z ) {
	if(vert_i > MAX_ARRAY)
	{
		_glSetError(GL_OUT_OF_MEMORY);
		return;
	}
	//store the vertex and keep index
	_vertexelements[vert_i].x = x;
	_vertexelements[vert_i].y = y;
	_vertexelements[vert_i].z = z;

	//Color_f2b(&_tempcolorelement,_colorelements+_numelements);
	_colorelements[vert_i] = _tempcolorelement;

	_normalelements[vert_i] = _tempnormalelement;

	int i;
	for(i = 0; i < MAX_NO_TEXTURES; ++i)
	{
		_texcoordelements[i][vert_i] = _temptexcoordelement[i];
	}

	vert_i +=  1;	
}

void glNormal3f( GLfloat x, GLfloat y, GLfloat z ){
	_tempnormalelement.x = x;
	_tempnormalelement.y = y;
	_tempnormalelement.z = z;
}

void glNormal3fv( const GLfloat *v ){
	glNormal3f(v[0], v[1], v[2]);
}

void glColor3f( GLfloat r, GLfloat g, GLfloat b ) {
	glColor4f(r,g,b,1.0f);
}

void glColor4f( GLfloat r, GLfloat g, GLfloat b, GLfloat a) {
	//store the vertex and keep index
	_tempcolorelement.r = r;
	_tempcolorelement.g = g;
	_tempcolorelement.b = b;
	_tempcolorelement.a = a;
	if(copy_mat_enabled)
	{
		switch(copy_material)
		{
			case GL_EMISSION: curmat.emissive = _tempcolorelement; break;
			case GL_AMBIENT: curmat.ambient = _tempcolorelement; break;
			case GL_DIFFUSE: curmat.diffuse = _tempcolorelement; break;
			case GL_SPECULAR: curmat.specular = _tempcolorelement; break;
			case GL_AMBIENT_AND_DIFFUSE:
				curmat.ambient = _tempcolorelement;
				curmat.diffuse = _tempcolorelement;
				break;
		}
	}
}

void glColor3ub( GLubyte red,
                        GLubyte green,
                        GLubyte blue)
{
	glColor4f((GLfloat)red/255.f,(GLfloat)green/255.f,(GLfloat)blue/255.f,1.0f);
}

void glColor4ub( GLubyte red,
                        GLubyte green,
                        GLubyte blue,
                        GLubyte alpha )
{
	glColor4f((GLfloat)red/255.f,(GLfloat)green/255.f,(GLfloat)blue/255.f,(GLfloat)alpha/255.f);
}

void glColor3fv( const GLfloat *v )
{
	glColor3f(v[0],v[1],v[2]);
}


void glTexCoord2f( GLfloat s, GLfloat t ){
	_temptexcoordelement[cur_tex].s = s;
	_temptexcoordelement[cur_tex].t = t;
};

/* light */

void glLightModelfv( GLenum pname, const GLfloat *params ){
	NO_CALL_IN_BEGIN;

	switch(pname)
	{
		case GL_LIGHT_MODEL_AMBIENT: 
			globAmbient.r = params[0];
			globAmbient.g = params[1];
			globAmbient.b = params[2];
			globAmbient.a = params[3];
			break;
		default:
			_glSetError(GL_INVALID_ENUM);
			return;
	}
};

int glLightN(GLenum light)
{
	int lightNum = 0;
	switch(light)
	{
		case GL_LIGHT0: lightNum = 0; break;
		case GL_LIGHT1: lightNum = 1; break;
		case GL_LIGHT2: lightNum = 2; break;
		case GL_LIGHT3: lightNum = 3; break;
		case GL_LIGHT4: lightNum = 4; break;
		case GL_LIGHT5: lightNum = 5; break;
		case GL_LIGHT6: lightNum = 6; break;
		case GL_LIGHT7: lightNum = 7; break;	
		default:
			_glSetError(GL_INVALID_ENUM);
			return -1;					
	};
	
	return lightNum;
}

void glLightf( GLenum light, GLenum pname, GLfloat param ) {
	NO_CALL_IN_BEGIN;

	int lightNum = glLightN(light);
	
	if(lightNum < 0)
		return;
	
	switch(pname)
	{
		case GL_SPOT_CUTOFF: lights[lightNum].spotCutoff = param; break;
		case GL_SPOT_EXPONENT: lights[lightNum].spotExponent = param; break;
		case GL_CONSTANT_ATTENUATION: lights[lightNum].constant = param; break;
		case GL_LINEAR_ATTENUATION: lights[lightNum].linear = param; break;
		case GL_QUADRATIC_ATTENUATION: lights[lightNum].quad = param; break;
		default:
			_glSetError(GL_INVALID_ENUM);
			return;
    };
};

void glLightfv( GLenum light, GLenum pname, const GLfloat *params ) {
	NO_CALL_IN_BEGIN;
	
	int lightNum = glLightN(light);
	
	if(lightNum < 0)
		return;

	guVector lightPos={0.0F,0.0F,0.0F}; //TODO: make it opengl default light position
//	GXColor defcolor={0xFF,0xFF,0xFF,0xFF};
	switch(pname)
	{
		case GL_POSITION:
		{
			lightPos.x = params[0];
			lightPos.y = params[1];
			lightPos.z = params[2];
			
			// Store in eye coordinates (i.e. multiply by modelview matrix
			guVecMultiply(*TopMtx(&model_stack),&lightPos,&lights[lightNum].pos.v);
			
			lights[lightNum].pos.w = params[3]; //leave W param untouched
			break;
		}
		case GL_DIFFUSE:
			lights[lightNum].diffuse.r = params[0];
			lights[lightNum].diffuse.g = params[1];
			lights[lightNum].diffuse.b = params[2];
			lights[lightNum].diffuse.a = params[3];
			break;
		case GL_AMBIENT:
			lights[lightNum].ambient.r = params[0];
			lights[lightNum].ambient.g = params[1];
			lights[lightNum].ambient.b = params[2];
			lights[lightNum].ambient.a = params[3];
			break;
		case GL_SPECULAR:
			lights[lightNum].specular.r = params[0];
			lights[lightNum].specular.g = params[1];
			lights[lightNum].specular.b = params[2];
			lights[lightNum].specular.a = params[3];
			break;
		case GL_SPOT_DIRECTION:
		{
			lights[lightNum].spotDir.x = params[0];
			lights[lightNum].spotDir.y = params[1];
			lights[lightNum].spotDir.z = params[2];
			
			// Store in eye coordinates (i.e. multiply by modelview INVERSE)
			
			Mtx mvi;
            guMtxTranspose(*TopMtx(&model_stack),mvi);
			
			guVecMultiply(mvi,&lights[lightNum].spotDir,&lights[lightNum].spotDir); 
			break;
		default:
			_glSetError(GL_INVALID_ENUM);
			return;
		}
	};
};

/* material */

void glMaterialf( GLenum face, GLenum pname, GLfloat param ){
	switch(pname)
	{
		case GL_SHININESS: 
            curmat.shininess = param; break;
	default:
		_glSetError(GL_INVALID_ENUM);
		return;
	}
};

void glMaterialfv( GLenum face, GLenum pname, const GLfloat *params ){
	switch(pname)
	{
		case GL_AMBIENT_AND_DIFFUSE:
			glMaterialfv(face, GL_AMBIENT, params);
			glMaterialfv(face, GL_DIFFUSE, params);
			break;
		case GL_EMISSION:
			curmat.emissive.r = params[0];
			curmat.emissive.g = params[1];
			curmat.emissive.b = params[2];
			curmat.emissive.a = params[3];
			break;
		case GL_DIFFUSE:
			curmat.diffuse.r = params[0];
			curmat.diffuse.g = params[1];
			curmat.diffuse.b = params[2];
			curmat.diffuse.a = params[3];
			break;
		case GL_AMBIENT:
			curmat.ambient.r = params[0];
			curmat.ambient.g = params[1];
			curmat.ambient.b = params[2];
			curmat.ambient.a = params[3];
			break;
		case GL_SPECULAR:
			curmat.specular.r = params[0];
			curmat.specular.g = params[1];
			curmat.specular.b = params[2];
			curmat.specular.a = params[3];
			break;
		case GL_SHININESS: 
             curmat.shininess = params[0];
			 break;
		default:
			_glSetError(GL_INVALID_ENUM);
			return;
	}
};



void glGetMaterialfv( GLenum face, GLenum pname, GLfloat *params ) 
{
	NO_CALL_IN_BEGIN;
	
	int color = 0;
	GXColorf t;
	switch(pname)
	{
		case GL_EMISSION:
			color = 1;
			t = curmat.emissive;
			break;
		case GL_DIFFUSE:
			color = 1;
			t = curmat.diffuse;
			break;
		case GL_AMBIENT:
			color = 1;
			t = curmat.ambient;
			break;
		case GL_SPECULAR:
			color = 1;
			t = curmat.specular;
			break;
		case GL_SHININESS: 
			params[0] = curmat.shininess;
			break;
		default:
			_glSetError(GL_INVALID_ENUM);
			return;
	}
	
	if(color)
	{
		params[0] = t.r;
		params[1] = t.g;
		params[2] = t.b;
		params[3] = t.a;
	}
};

static void draw_axis_align_blanker_quad()
{
	GX_SetCurrentGXThread();

	float x1 = 0;
	float y1 = 0;
	float x2 = 640;
	float y2 = 480;
	Mtx44 GXprojection2D;
	Mtx identity_matrix;

	guMtxIdentity(identity_matrix);
	GX_LoadPosMtxImm(identity_matrix,GX_PNMTX1);
	guOrtho(GXprojection2D, y2, y1, x1, x2, 0, 1 + __FLT_EPSILON__);
	GX_LoadProjectionMtx(GXprojection2D, GX_ORTHOGRAPHIC); //load current 2D projection matrix
	GX_SetCurrentMtx(GX_PNMTX1);
	
	//draw rectangle from ulx,uly to lrx,lry
	GX_ClearVtxDesc();
	GX_SetVtxDesc(GX_VA_POS, GX_DIRECT);
	GX_SetVtxDesc(GX_VA_CLR0, GX_DIRECT);

	//disable textures
	GX_SetNumChans (1);
	GX_SetNumTexGens (0);
	GX_SetNumTevStages(1);
	GX_SetNumIndStages(0);
	
	GX_SetTevOrder (GX_TEVSTAGE0, GX_TEXCOORDNULL, GX_TEXMAP_NULL, GX_COLOR0A0);
	GX_SetTevOp (GX_TEVSTAGE0, GX_PASSCLR);
	
	//set blend mode
	GX_SetBlendMode(GX_BM_NONE, GX_BL_ONE, GX_BL_ZERO, GX_LO_CLEAR); //Fix src alpha
	//GX_SetDstAlpha(GX_DISABLE, 0xFF);
	
	//set cull mode
	GX_SetCullMode (GX_CULL_NONE);
	
	if(scissor_test)
	{
		GX_SetModScissor(scissorInfo.x, scissorInfo.y, scissorInfo.width, scissorInfo.height); 
	}
	else
	{
		GX_SetMaxScissor();
	}
	
	
	GX_DrawDone();

	GX_Begin(GX_QUADS, GX_VTXFMT0, 4);
	// background rectangle
	GX_Position3f32(x1, y1, -_cleardepth);
	GX_Color4u8(_clearcolor.r, _clearcolor.g, _clearcolor.b, _clearcolor.a);
	GX_Position3f32(x2, y1, -_cleardepth);
	GX_Color4u8(_clearcolor.r, _clearcolor.g, _clearcolor.b, _clearcolor.a);
	GX_Position3f32(x2, y2, -_cleardepth);
	GX_Color4u8(_clearcolor.r, _clearcolor.g, _clearcolor.b, _clearcolor.a);
	GX_Position3f32(x1, y2, -_cleardepth);
	GX_Color4u8(_clearcolor.r, _clearcolor.g, _clearcolor.b, _clearcolor.a);
	GX_End();
	
	GX_DrawDone();
}


/* clear */
void  glClear (GLbitfield mask) {
	NO_CALL_IN_BEGIN;
	
	bool clear_color = false;
	bool clear_depth = false;
	
	if(mask & GL_COLOR_BUFFER_BIT)
	{
		clear_color = true;
	}
	
	if(mask & GL_DEPTH_BUFFER_BIT)
	{
		clear_depth = true;
	}
	
	if(clear_color && clear_depth)
	{
		/*GX_SetZMode(GX_ENABLE, GX_ALWAYS, GX_TRUE);
		GX_SetColorUpdate(GX_ENABLE);
		GX_SetAlphaUpdate(GX_ENABLE);
		
		draw_axis_align_blanker_quad();*/
		
		// Clear both color and depth
		GX_SetCopyClear(_clearcolor, _cleardepth * GX_MAX_Z24);
		GX_CopyDisp(getBackFramebuffer(), GX_TRUE);
		GX_DrawDone();
		
		return;
	}
	else if(clear_color)
	{
		// Disable Z-write and enable color and alpha update
		GX_SetZMode(GX_DISABLE, GX_NEVER, GX_FALSE);
		GX_SetColorUpdate(GX_ENABLE);
		GX_SetAlphaUpdate(GX_ENABLE);
		
		draw_axis_align_blanker_quad();
	}
	else if(clear_depth)
	{
		//to clear only one of buffers then something more clever has to be done (thanks to samson)
		//Disable colour-write, enable zwrite, disable z-test, write a screen-aligned quad at whatever depth you want.
		
		
		// Disable Z-write and enable color and alpha update
		GX_SetZMode(GX_ENABLE, GX_ALWAYS, GX_TRUE);
		GX_SetColorUpdate(GX_DISABLE);
		GX_SetAlphaUpdate(GX_DISABLE);
		
		draw_axis_align_blanker_quad();
	}
}

void glClearColor(	GLclampf red,
					GLclampf green,
					GLclampf blue,
					GLclampf alpha ) {
					
	NO_CALL_IN_BEGIN;
	
	_clearcolor.r = red * 0xff; //color needs to be converted to byte
	_clearcolor.g = green * 0xff;
	_clearcolor.b = blue * 0xff;
	_clearcolor.a = alpha * 0xff;
}

void  glClearDepth (GLclampd depth){

	NO_CALL_IN_BEGIN;
	
	if(depth > 1.)
	{	
		depth = 1.;
	}
	if(depth < 0.)
	{
		depth = 0.;
	}
						  
	_cleardepth = depth;
}

/* misc */

void glFlush(void) {

	NO_CALL_IN_BEGIN;
	
	GX_DrawDone();
}



/* Fog handling */

void updateFog()
{
	PrjMtx *p = TopPrjMtx(&projection_stack);
	if(fog_enable)
	{
		if((fog_mode & GX_FOG_LIN) == GX_FOG_LIN)
		{
			GX_SetFog(fog_mode, fog_startz, fog_endz, p->nearZclip, p->farZclip, fog_color);
		}
		else
		{
			GX_SetFog(fog_mode, 0, fog_density, p->nearZclip, p->farZclip, fog_color);
		}
	}
	else
	{
		GX_SetFog(GX_FOG_NONE, fog_startz, fog_endz, p->nearZclip, p->farZclip, fog_color);
	}
}

static GLfloat calc_density(GLfloat d)
{
	// The equation in for exponentail fog is 2^(-8*(z-s/(x-s)), let s = 0, set equal to
	// GL fog, solve for x in terms of d
	// 2^(-8*z/x) = e^(-d*z) => x = 8*ln(2)/d
	return 5.5451774444796/d;
}



void glFogi( GLenum pname, GLint param )
{
	glFogf(pname, param);
}

void glFogf( GLenum pname, GLfloat param )
{
	NO_CALL_IN_BEGIN;

	switch(pname)
	{
	case GL_FOG_MODE:
		switch((GLenum)param)
		{
		case GL_LINEAR:
			fog_mode = GX_FOG_LIN;
			break;
		case GL_EXP:
			fog_mode = GX_FOG_EXP;
			break;
		case GL_EXP2:
			fog_mode = GX_FOG_EXP2;
			break;
		default:
			_glSetError(GL_INVALID_ENUM);
			return;
		}
		break;
	case GL_FOG_START:
		fog_startz = param;
		break;
	case GL_FOG_END:
		fog_endz = param;
		break;
	case GL_FOG_DENSITY:
		if(param < 0)
		{
			_glSetError(GL_INVALID_VALUE);
			return;
		}
		fog_density = calc_density(param);
		break;
	default:
		_glSetError(GL_INVALID_ENUM);
		return;
	}
}

void glFogfv (GLenum pname, const GLfloat *params)
{
	NO_CALL_IN_BEGIN;
	
	switch(pname)
	{
	case GL_FOG_COLOR:
		fog_color.r = 255.f*params[0];
		fog_color.g = 255.f*params[1];
		fog_color.b = 255.f*params[2];
		fog_color.a = 255.f*params[3];
		break;
	default:
		glFogf(pname, *params);
		return;
	}
}

void glDepthMask( GLboolean flag )
{
	NO_CALL_IN_BEGIN;
	
	switch(flag)
	{
	case GL_TRUE: depthupdate = GX_TRUE; break;
	case GL_FALSE: depthupdate = GX_FALSE; break;
	default:
		_glSetError(GL_INVALID_ENUM);
		return;
	}
}


void glEnable(GLenum type)
{
	NO_CALL_IN_BEGIN;
	
	switch(type)
	{
		case GL_BLEND: blend_type = GX_BM_BLEND; break;
		case GL_DEPTH_TEST: depthtestenabled = GX_TRUE; break;
		case GL_LIGHTING: lighting = true; break;
		case GL_TEXTURE_2D: _glSetEnableTex(true); break;
		case GL_LIGHT0:
		case GL_LIGHT1:
		case GL_LIGHT2:
		case GL_LIGHT3:
		case GL_LIGHT4:
		case GL_LIGHT5:
		case GL_LIGHT6:
		case GL_LIGHT7:
		{
			int n = glLightN(type);
			if(n < 0)
			{
				_glSetError(GL_INVALID_ENUM);
				return;
			}
			lights[n].enabled = true;
			break;
		}
		case GL_CULL_FACE: gxcullfaceanabled = true; break;
		case GL_FOG: fog_enable = true; break;
		case GL_COLOR_MATERIAL: copy_mat_enabled = true; break;
		case GL_SCISSOR_TEST: scissor_test = GL_TRUE; break;
		default:
			dprintf("glEnable invalind enum, 0x%X\n", type);
			_glSetError(GL_INVALID_ENUM);
			return;
	};
}

GLboolean glIsEnabled( GLenum	cap )
{

	NO_CALL_IN_BEGIN_A(GL_FALSE);
	
	switch(cap)
	{
		case GL_BLEND: return GLbool(blend_type == GX_BM_BLEND); break;
		case GL_COLOR_MATERIAL: return GLbool(copy_mat_enabled == true); break;
		case GL_CULL_FACE: return GLbool(gxcullfaceanabled == true); break;
		case GL_DEPTH_TEST: return GLbool(depthtestenabled == GX_TRUE); break;
		case GL_FOG: return GLbool(fog_enable == true); break;
		case GL_COLOR_ARRAY:
		case GL_EDGE_FLAG_ARRAY:
		case GL_TEXTURE_COORD_ARRAY:
		case GL_VERTEX_ARRAY:
		case GL_INDEX_ARRAY:
		case GL_NORMAL_ARRAY:
			return _glIsArrayEnabled(cap); break;
		case GL_INDEX_LOGIC_OP:
		case GL_TEXTURE_1D:
		case GL_TEXTURE_2D:
			return _glGetEnableTex(cur_tex); break;
		case GL_LIGHT0:
		case GL_LIGHT1:
		case GL_LIGHT2:
		case GL_LIGHT3:
		case GL_LIGHT4:
		case GL_LIGHT5:
		case GL_LIGHT6:
		case GL_LIGHT7:
		{
			int n = glLightN(cap);
			if(n < 0)
			{
				_glSetError(GL_INVALID_ENUM);
				return GL_FALSE;
			}
			return GLbool(lights[n].enabled == true);
			break;
		}
		case GL_LIGHTING: return GLbool(lighting == true); break;
		case GL_SCISSOR_TEST: return scissor_test;	break;
		case GL_LINE_SMOOTH:
		case GL_LINE_STIPPLE:
		case GL_MAP1_COLOR_4:
		case GL_MAP2_TEXTURE_COORD_2:
		case GL_MAP2_TEXTURE_COORD_3:
		case GL_MAP2_TEXTURE_COORD_4:
		case GL_MAP2_VERTEX_3:
		case GL_MAP2_VERTEX_4:
		case GL_NORMALIZE:
		case GL_POINT_SMOOTH:
		case GL_POLYGON_SMOOTH:
		case GL_POLYGON_OFFSET_FILL:
		case GL_POLYGON_OFFSET_LINE:
		case GL_POLYGON_OFFSET_POINT:
		case GL_POLYGON_STIPPLE:
		case GL_STENCIL_TEST:
		case GL_TEXTURE_GEN_Q:
		case GL_TEXTURE_GEN_R:
		case GL_TEXTURE_GEN_S:
		case GL_TEXTURE_GEN_T:
		case GL_ALPHA_TEST:
		case GL_AUTO_NORMAL:
		case GL_COLOR_LOGIC_OP:
		case GL_DITHER:
		case GL_CLIP_PLANE0:
		case GL_CLIP_PLANE1:
		case GL_CLIP_PLANE2:
		case GL_CLIP_PLANE3:
		case GL_CLIP_PLANE4:
		case GL_CLIP_PLANE5:
			return GL_FALSE; // These are always disabled because they are not implemented
			break;
		default:
			_glSetError(GL_INVALID_ENUM);
			return GL_FALSE;
	}		
}


void glDisable(GLenum type){
	NO_CALL_IN_BEGIN;
	
	switch(type)
	{
		case GL_BLEND: blend_type = GX_BM_NONE; break;
		case GL_DEPTH_TEST: depthtestenabled = GX_FALSE; break;
		case GL_LIGHTING:   lighting = false; break;
		case GL_TEXTURE_2D:	_glSetEnableTex(false); break;
		case GL_LIGHT0:
		case GL_LIGHT1:
		case GL_LIGHT2:
		case GL_LIGHT3:
		case GL_LIGHT4:
		case GL_LIGHT5:
		case GL_LIGHT6:
		case GL_LIGHT7:
		{
			int n = glLightN(type);
			if(n < 0)
				return;
			lights[n].enabled = false;
			break;
		}
		case GL_CULL_FACE: gxcullfaceanabled=false; break;
		case GL_FOG: fog_enable = false; break;
		case GL_COLOR_MATERIAL: copy_mat_enabled = false; break;
		case GL_SCISSOR_TEST: scissor_test = GL_FALSE; break;
		case GL_LINE_SMOOTH:
		case GL_LINE_STIPPLE:
		case GL_MAP1_COLOR_4:
		case GL_MAP2_TEXTURE_COORD_2:
		case GL_MAP2_TEXTURE_COORD_3:
		case GL_MAP2_TEXTURE_COORD_4:
		case GL_MAP2_VERTEX_3:
		case GL_MAP2_VERTEX_4:
		case GL_NORMALIZE:
		case GL_POINT_SMOOTH:
		case GL_POLYGON_SMOOTH:
		case GL_POLYGON_OFFSET_FILL:
		case GL_POLYGON_OFFSET_LINE:
		case GL_POLYGON_OFFSET_POINT:
		case GL_POLYGON_STIPPLE:
		case GL_STENCIL_TEST:
		case GL_TEXTURE_GEN_Q:
		case GL_TEXTURE_GEN_R:
		case GL_TEXTURE_GEN_S:
		case GL_TEXTURE_GEN_T:
		case GL_ALPHA_TEST:
		case GL_AUTO_NORMAL:
		case GL_COLOR_LOGIC_OP:
		case GL_DITHER:
		case GL_CLIP_PLANE0:
		case GL_CLIP_PLANE1:
		case GL_CLIP_PLANE2:
		case GL_CLIP_PLANE3:
		case GL_CLIP_PLANE4:
		case GL_CLIP_PLANE5:
			break;  // These are always disabled because they are not implemented, enabling them is an error
		default:
			dprintf("glDisable invalind enum, 0x%X\n", type);
			_glSetError(GL_INVALID_ENUM);
			return;
	};
}

/* Depth Buffer */

void glDepthFunc(GLenum type){
	NO_CALL_IN_BEGIN;
	
	switch(type)
	{
		case GL_NEVER: depthfunction = GX_NEVER; break;
		case GL_LESS: depthfunction = GX_LESS; break;
		case GL_EQUAL: depthfunction = GX_EQUAL; break;
		case GL_LEQUAL: depthfunction = GX_LEQUAL; break;
		case GL_GREATER: depthfunction = GX_GREATER; break;
		case GL_NOTEQUAL: depthfunction = GX_NEQUAL; break;
		case GL_GEQUAL: depthfunction = GX_GEQUAL; break;
		case GL_ALWAYS: depthfunction = GX_ALWAYS; break;
		default:
			_glSetError(GL_INVALID_ENUM);
			return;

	};
}

/* Get functions */

void glGetFloatv( GLenum pname, GLfloat *params )
{	
	NO_CALL_IN_BEGIN;
	
	if(!params)
	{
		_glSetError(GL_INVALID_VALUE);
		return;
	}
		
	switch(pname)
	{
	case GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT:
		*params = 4;
	case GL_PROJECTION_MATRIX:
	case GL_MODELVIEW_MATRIX:
	case GL_TEXTURE_MATRIX:
		_glGetMatrixf(pname,params);
		break;
	case GL_RED_SCALE:
	case GL_RED_BIAS:
	case GL_GREEN_SCALE:
	case GL_GREEN_BIAS:
	case GL_BLUE_SCALE:
	case GL_BLUE_BIAS:
	case GL_ALPHA_SCALE:
	case GL_ALPHA_BIAS:
	case GL_MAP_COLOR:
	case GL_MAP_STENCIL:
	case GL_INDEX_SHIFT:
	case GL_INDEX_OFFSET:
	case GL_DEPTH_SCALE: 
	case GL_DEPTH_BIAS:
		_glGetPixelTransferf(pname, params);
		break;
	case GL_MATRIX_MODE:
	case GL_MAX_LIGHTS:
	case GL_MAX_TEXTURE_SIZE:
	case GL_MAX_TEXTURE_UNITS:
	case GL_MODELVIEW_STACK_DEPTH:
	case GL_TEXTURE_STACK_DEPTH:
	case GL_PROJECTION_STACK_DEPTH:
	case GL_MAX_MODELVIEW_STACK_DEPTH:
	case GL_MAX_TEXTURE_STACK_DEPTH:
	case GL_MAX_PROJECTION_STACK_DEPTH:
	case GL_MAX_ELEMENTS_VERTICES:
	case GL_MAX_ELEMENTS_INDICES:
	case GL_PACK_SWAP_BYTES:
	case GL_UNPACK_SWAP_BYTES:
	case GL_PACK_LSB_FIRST:
	case GL_UNPACK_LSB_FIRST:
	case GL_PACK_ROW_LENGTH:
	case GL_UNPACK_ROW_LENGTH:
	case GL_PACK_IMAGE_HEIGHT:
	case GL_UNPACK_IMAGE_HEIGHT:
	case GL_PACK_SKIP_ROWS:
	case GL_UNPACK_SKIP_ROWS:
	case GL_PACK_SKIP_PIXELS:
	case GL_UNPACK_SKIP_PIXELS:
	case GL_PACK_SKIP_IMAGES:
	case GL_UNPACK_SKIP_IMAGES:
	case GL_PACK_ALIGNMENT:
	case GL_UNPACK_ALIGNMENT:
	{
		int val;
		glGetIntegerv(pname, &val);
		*params = val;
	}
	default:
		_glSetError(GL_INVALID_ENUM);
		return;
	}	
}

void glMultiTexCoord2fARB(GLenum texture,GLfloat s, GLfloat t )
{
	if(texture < GL_TEXTURE0 || texture > GL_TEXTURE0+MAX_NO_TEXTURES)
	{
		_glSetError(GL_INVALID_ENUM);
		return;
	}
	
	
	int mytex = texture - GL_TEXTURE0;

	_temptexcoordelement[mytex] = (TexCoordElement){s, t};	
}

void glClientActiveTextureARB(GLenum texture)
{	
	if(texture < GL_TEXTURE0 || texture > GL_TEXTURE0+MAX_NO_TEXTURES)
	{
		_glSetError(GL_INVALID_ENUM);
		return;
	}
	
	cur_tex_client = texture - GL_TEXTURE0;
}

void glActiveTextureARB(GLenum texture)
{	
	if(texture < GL_TEXTURE0 || texture > GL_TEXTURE0+MAX_NO_TEXTURES)
	{
		_glSetError(GL_INVALID_ENUM);
		return;
	}
	
	cur_tex = texture - GL_TEXTURE0;
	
	if(cur_mode == GL_TEXTURE)
	{
		glMatrixMode(GL_TEXTURE);
	}
}

void glGetIntegerv( GLenum pname, GLint *params ) {
	NO_CALL_IN_BEGIN;
	
	if(!params)
		return;
	switch(pname)
	{
		case GL_MATRIX_MODE:
			*params = cur_mode;
			break;
		case GL_MAX_LIGHTS:
			*params = MAX_LIGHT;
			break;
		case GL_MAX_TEXTURE_SIZE:
			*params = 1024;
			break;
		//case GL_MAX_RENDERBUFFER_SIZE_EXT:
		//	*param = 
		case GL_MAX_TEXTURE_UNITS:
			*params = MAX_NO_TEXTURES;
			break;
		case GL_MODELVIEW_STACK_DEPTH:
			*params = StackSize(&model_stack);
			break;
		case GL_TEXTURE_STACK_DEPTH:
			*params = StackSize(texture_stack);
			break;
		case GL_PROJECTION_STACK_DEPTH:
			*params = StackSize(&projection_stack);
			break;
		case GL_MAX_MODELVIEW_STACK_DEPTH:
			*params = MaxStackSize(&model_stack);
			break;
		case GL_MAX_TEXTURE_STACK_DEPTH:
			*params = MaxStackSize(texture_stack);
			break;
		case GL_MAX_PROJECTION_STACK_DEPTH:
			*params = MaxStackSize(&projection_stack);
			break;
		case GL_MAX_ELEMENTS_VERTICES:
			*params = MAX_VERTEX;
			break;
		case GL_MAX_ELEMENTS_INDICES:
			*params = MAX_VERTEX;
			break;
		case GL_MAX_ATTRIB_STACK_DEPTH:
		case GL_MAX_CLIENT_ATTRIB_STACK_DEPTH:
			*params = MAX_ATTRIB_STACK_DEPTH;
			break;
		case GL_PACK_SWAP_BYTES:
		case GL_UNPACK_SWAP_BYTES:
		case GL_PACK_LSB_FIRST:
		case GL_UNPACK_LSB_FIRST:
		case GL_PACK_ROW_LENGTH:
		case GL_UNPACK_ROW_LENGTH:
		case GL_PACK_IMAGE_HEIGHT:
		case GL_UNPACK_IMAGE_HEIGHT:
		case GL_PACK_SKIP_ROWS:
		case GL_UNPACK_SKIP_ROWS:
		case GL_PACK_SKIP_PIXELS:
		case GL_UNPACK_SKIP_PIXELS:
		case GL_PACK_SKIP_IMAGES:
		case GL_UNPACK_SKIP_IMAGES:
		case GL_PACK_ALIGNMENT:
		case GL_UNPACK_ALIGNMENT:
			_glGetPixelStore(pname, params);
			break;
		case GL_RED_SCALE:
	    case GL_RED_BIAS:
	    case GL_GREEN_SCALE:
	    case GL_GREEN_BIAS:
	    case GL_BLUE_SCALE:
	    case GL_BLUE_BIAS:
	    case GL_ALPHA_SCALE:
	    case GL_ALPHA_BIAS:
		case GL_MAP_COLOR:
		case GL_MAP_STENCIL:
		case GL_INDEX_SHIFT:
		case GL_INDEX_OFFSET:
	    case GL_DEPTH_SCALE: 
	    case GL_DEPTH_BIAS:
		{
			float val;
			_glGetPixelTransferf(pname, &val);
			*params = val;
		}
		break;
		default:
			_glSetError(GL_INVALID_ENUM);
			*params = 0;
			return;
	}
}

void glLineWidth( GLfloat width )
{
	NO_CALL_IN_BEGIN;
	
	if(width <= 0)
	{
		_glSetError(GL_INVALID_VALUE);
		return;
	}
	
	line_width = width;
};




void SetLineWidth()
{

	int iWidth = (int)(6.*line_width);
	u8 mode = GX_TO_ONE;
	
	if(iWidth > 255)
	{
		iWidth = 255;
	}
	
	if(iWidth < 0)
	{
		iWidth = 0;
	}
	
	GX_SetLineWidth((u8)iWidth, mode);
}

void glPointSize( GLfloat size )
{
	NO_CALL_IN_BEGIN;
	
	if(size <= 0)
	{
		_glSetError(GL_INVALID_VALUE);
		return;
	}

	point_size = size;
}

void SetPointSize()
{

	int iWidth = (int)(6.*point_size);
	u8 mode = GX_TO_ONE;
	
	if(iWidth > 255)
	{
		iWidth = 255;
	}
	
	if(iWidth < 0)
	{
		iWidth = 0;
	}
	
	GX_SetPointSize((u8)iWidth, mode);
}

GLenum glErrCode = GL_NO_ERROR;
const char *glErrFile = NULL;
int glErrLine = 0;

void _glSetErrorEx(GLenum e, const char *file, int line)
{
	glErrCode = e;
	glErrFile = file;
	glErrLine = line;
}

GLenum glGetError( void ) {
	NO_CALL_IN_BEGIN_A(0);

	GLenum e = glErrCode;
	glErrCode = GL_NO_ERROR;
	return e;
};

void glColorMask( GLboolean red,
			    GLboolean green,
			    GLboolean blue,
			    GLboolean alpha )
{
	color_write_mask[0] = (red == GL_TRUE) ? true : false;
	color_write_mask[1] = (green == GL_TRUE) ? true : false;
	color_write_mask[2] = (blue == GL_TRUE) ? true : false;
	color_write_mask[3] = (alpha == GL_TRUE) ? true : false;
}

/* end */
