#define GL_GLEXT_PROTOTYPES
#include "glint.h"
#include <string.h>
#include <stdio.h>

static const GLubyte vender[] = "gl2gx";
static const GLubyte renderer[] = "gx";
static const GLubyte version[] = "1.2";
static const GLubyte extensions[] = "GL_EXT_texture_lod_bias\nGL_EXT_texture_filter_anisotropic\nGL_ARB_multitexture\nGL_EXT_texture_env_add\nGL_EXT_texture_env_combine\nGL_EXT_draw_range_elements\nGL_EXT_bgra";


const GLubyte * glGetString( GLenum name )
{
	NO_CALL_IN_BEGIN_A(NULL);
	
	switch(name)
	{
	case GL_VENDOR: return vender;
	case GL_RENDERER: return renderer;
	case GL_VERSION: return version;
	case GL_EXTENSIONS: return extensions;
	default: _glSetError(GL_INVALID_ENUM); return NULL; break;
	}
};
#define SDL_PROC_UNUSED(ret,func,params)
#define SDL_PROC(ret,func,params) if(strcmp(#func, proc) == 0){ return &func; };

void *_glGetProcAddress(const char* proc)
{
SDL_PROC(void,glMultiTexCoord2fARB, ( GLenum target,GLfloat s, GLfloat t ))
SDL_PROC(void,glActiveTextureARB, (GLenum texture))
SDL_PROC(void,glClientActiveTextureARB, (GLenum texture))
//#include "SDL_glfuncs.h"
SDL_PROC(void,glDrawRangeElementsEXT,(GLenum mode,GLuint start,GLuint end,GLsizei count, GLenum type, const GLvoid *indices))
SDL_PROC(void,glDrawRangeElements,(GLenum mode,GLuint start,GLuint end,GLsizei count, GLenum type, const GLvoid *indices))
	return NULL;
}
