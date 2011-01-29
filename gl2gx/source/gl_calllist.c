#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <malloc.h>
#include <math.h>

#include "glint.h"
#include "GL/gl.h"

// 4 bytes for color, 4*3 for vertex and normal, and 2*4 for each texture unit, up to 8
#define MAX_PER_VERTEX_COST (4+2*4*3+8*2*4)
#define MAX_LIST_ELEM 50
#define MAX_LIST_SIZE (MAX_LIST_ELEM*MAX_PER_VERTEX_COST)

typedef struct _callList
{
	void *list;
	u32 size;
	bool used;
} CallList;

typedef struct _CallListMan
{
	CallList *begin;
	size_t size;
} CallListMan;

CallListMan listMan;
CallList * cur_list = NULL;
GLenum cur_mode = GL_COMPILE;


void callListInit(CallListMan *this)
{
	this->begin = NULL;
	this->size = 0;
	
	call_offset = 0;
	cur_list = NULL;
	cur_mode = GL_COMPILE;
}

void initCalllist()
{
	callListInit(&listMan);
}
//was commented
bool resize_lists(CallListMan *this, size_t newsize)
{
	if(newsize < this->size)
	{
		return true;
	}
	
	CallList * newbegin = realloc(this->begin, newsize * sizeof(CallList) );
	
	if(!newbegin)
	{
		return false;
	}
	
	this->begin = newbegin;
	
	int i;
	for(i = this->size; i < newsize; ++i)
	{
		this->begin[i].list = NULL;
		this->begin[i].size = 0;
		this->begin[i].used = 0;
	}
	
	this->begin = newbegin;
	this->size = newsize;
	
	return true;
}

GLuint search_gap(CallListMan *this, GLsizei range)
{
	int i, j;
	for(i = 0; i < this->size; ++i)
	{
		for(j = 0; j <= this->size; ++j)
		{
			if(j == this->size)
			{
				return i+1;
			}
			
			if(this->begin[j].used)
				break;
		}
	}
	
	return 0;
}

void lock_gap(CallListMan *this, GLuint adr, GLsizei range)
{
	int i;
	
	// 0 is an invalid starting name
	if(adr == 0)
	{
		return;
	}
	
	
	// Calllist names start at 1 not 0, so take one off to get the offset
	adr--;
	
	for(i = 0; i < range; ++i)
	{
		this->begin[adr+i].used = 1;
	}
}

void calllist(CallListMan *this, GLuint list)
{
	if(list > this->size)
	{
		return;
	}
	
	CallList *p = this->begin+list-1;
	
	if(p->list == NULL)
	{
		return;
	}
	
	GX_CallDispList(p->list, p->size);
}

#define RetUnsigned(v) ((v) > 0 ? (v) : 0)

GLuint ReadUint(const GLvoid ** pixels, GLenum type)
{
	switch(type)
	{	  
	case GL_UNSIGNED_BYTE:
	{
		u8 ** p = (u8 **)pixels;
		u8 t = *(*p)++;
		return t+call_offset;
	}
	break;
	case GL_BYTE:
	{
		s8 ** p = (s8 **)pixels;
		s8 t = *(*p)++;
		return RetUnsigned(t+call_offset);
	}
	break;
	case GL_SHORT:
	{
		s16 ** p = (s16 **)pixels;
		s16 t = *(*p)++;
		return RetUnsigned(t+call_offset);
	}
	break;
	case GL_UNSIGNED_SHORT:
	{
		u16 ** p = (u16 **)pixels;
		u16 t = *(*p)++;
		return t;
	}
	case GL_INT:
	{
		s32 ** p = (s32 **)pixels;
		s32 t = *(*p)++;
		return RetUnsigned(t+call_offset);
	}
	case GL_UNSIGNED_INT:
	{
		u32 ** p = (u32 **)pixels;
		u32 t = *(*p)++;
		return t;
	}
	break;
	case GL_FLOAT:
	{
		GLfloat ** p = (GLfloat **)pixels;
		GLfloat t = *(*p)++;
		return RetUnsigned(t+call_offset);
	}
	case GL_2_BYTES:
	case GL_3_BYTES:
	case GL_4_BYTES:
	default:
		return 0;
	break;
	}
}

void delete_lists(CallListMan *this, GLuint list, GLsizei range)
{
	// List 0 is invalid, ignore, and range of 0 is a no-op
	if(range == 0 || list == 0)
	{
		return;
	}
	
	int i;
	int limit = list+range;
	
	if(limit > this->size)
	{
		limit = this->size;
	}
	
	for(i = list-1; i < limit; ++i)
	{
		if(this->begin[i].list)
		{
			free(this->begin[i].list);
		}
		
		this->begin[i].list = NULL;
		this->begin[i].size = 0;
		this->begin[i].used = 0;
	}
}

bool is_list(CallListMan *this, GLuint list)
{
	return (0 < list && list <= this->size);
}

CallList *get_list(CallListMan *this, GLuint list)
{
	if(is_list(this, list))
	{
		return this->begin+list-1;
	}
	else
	{
		return NULL;
	}
}



GLuint glGenLists(GLsizei range)
{
	NO_CALL_IN_BEGIN_A(0);
	
	if(range < 0)
	{
		_glSetError(GL_INVALID_VALUE);
		return 0;
	}
	
	GLuint res = search_gap(&listMan, range);
	
	if(res == 0)
	{
		if(resize_lists(&listMan, listMan.size+range))
		{
			res = search_gap(&listMan, range);
		}
	}
	
	lock_gap(&listMan, res, range);
	
	return res;
}

void glCallList(GLuint list)
{
	// Recursive display list not supported
	if(cur_state & GL_STATE_NEWLIST) { _glSetError(GL_INVALID_OPERATION); return; }
	
}

void glCallLists(GLsizei n,
                 GLenum type,
                 const GLvoid *lists)
{
	int i;
	for(i = 0; i < n; ++i)
	{
		glCallList(ReadUint(&lists, type));
	}
}

void glDeleteLists(GLuint list,
                   GLsizei range)
{
	NO_CALL_IN_BEGIN;
	
	if(range < 0)
	{
		_glSetError(GL_INVALID_VALUE);
		return;
	}
	
	delete_lists(&listMan, list, range);
}

GLboolean glIsList(GLuint list)
{
	NO_CALL_IN_BEGIN_A(GL_FALSE);
	
	return (is_list(&listMan, list) ? GL_TRUE : GL_FALSE);
}

void glNewList(GLuint list,
               GLenum mode)
{
	NO_CALL_IN_BEGIN;
	if(cur_state & GL_STATE_NEWLIST) { _glSetError(GL_INVALID_OPERATION); return; }
	
	// Set GL_STATE_NEWLIST bit
	cur_state |= GL_STATE_NEWLIST;
	
	cur_list = get_list(&listMan, list);
	
	if(!cur_list)
	{
		_glSetError(GL_INVALID_VALUE);
		return;
	}
	
	if(!cur_list->used)
	{
		_glSetError(GL_INVALID_VALUE);
		return;
	}
	
	switch(mode)
	{
		case GL_COMPILE:
		case GL_COMPILE_AND_EXECUTE:
			cur_mode = mode;
			break;
		default:
			_glSetError(GL_INVALID_ENUM);
			return;
	}
	
	cur_list->list = memalign(32, MAX_LIST_SIZE);
	cur_list->size = MAX_LIST_SIZE;
	
	GX_BeginDispList (cur_list->list, cur_list->size);
}

void glEndList()
{
	NO_CALL_IN_BEGIN;
	if(!(cur_state & GL_STATE_NEWLIST)) { _glSetError(GL_INVALID_OPERATION); return; }
	
	// Clear GL_STATE_NEWLIST bit
	cur_state &= ~GL_STATE_NEWLIST;
	
	GX_Flush();
	cur_list->size = GX_EndDispList(); // returns the size of the actual list
	GX_Flush();

	switch(cur_mode)
	{
	case GL_COMPILE_AND_EXECUTE:
		GX_CallDispList(cur_list->list, cur_list->size);
	}
}
