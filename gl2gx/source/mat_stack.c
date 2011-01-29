#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <malloc.h>
#include <math.h>

#include <ogcsys.h>
#include <gccore.h>

#include "glint.h"
#include "GL/gl.h"


void InitStackMtx(Stack *p, size_t num)
{
	InitStack(p, num, sizeof(Mtx));
}

void InitStackMtx44(Stack *p, size_t num)
{
	InitStack(p, num, sizeof(Mtx44));
}

void InitStackPrjMtx(Stack *p, size_t num)
{
	InitStack(p, num, sizeof(PrjMtx));
}

void InitStack(Stack *p, size_t n, size_t elem_size)
{
	p->begin = NULL;
	p->size = 0;
	p->cur = 0;
	p->elem_size = elem_size;
	
	GrowStack(p, n);
	
}

void DestroyStack(Stack *p)
{
	if(p->begin)
	{
		free(p->begin);
	}
	p->begin = NULL;
	p->size = 0;
	p->cur = 0;
}

void GrowStack(Stack *p, size_t n)
{
	if(n <= p->size)
		return;
	
	Stack old = *p;
	
	p->begin = memalign(32, n*p->elem_size);
	
	if(p->begin == NULL)
	{
		_glSetError(GL_OUT_OF_MEMORY);
		p->begin = old.begin;
		return;
	}
	
	if(old.begin)
	{
		memcpy(p->begin, old.begin, old.size*p->elem_size);
		
		free(old.begin);
	}
	
	p->size = n;
}

void Pop(Stack *p)
{
	if(p->cur <= 0)
	{
		p->cur = 0;
		_glSetError(GL_STACK_UNDERFLOW);
		return;
	}
	--(p->cur);
}

void Push(Stack *p)
{
	if(p->cur >= p->size-1)
	{
		p->cur = p->size-1;
		_glSetError(GL_STACK_OVERFLOW);
		return;
	}
	
	void * p1 = Top(p);
	++(p->cur);
	
	memcpy(Top(p), p1, p->elem_size);
	
}

void * Top(Stack *p)
{
	if(p->begin == NULL)
		return NULL;
	
	if(p->cur < 0)
	{
		p->cur = 0;
		_glSetError(GL_STACK_UNDERFLOW);
	}
	if(p->cur > p->size-1)
	{
		p->cur = p->size-1;
		_glSetError(GL_STACK_OVERFLOW);
	}
	
	u8 * ptr = (u8 *) p->begin;
	
	return ptr + p->cur*p->elem_size;
}

Mtx * TopMtx(Stack *p)
{
	if(p->elem_size != sizeof(Mtx))
	{
		return NULL;
	}
	
	return Top(p);
}

Mtx44 * TopMtx44(Stack *p)
{
	if(p->elem_size == sizeof(Mtx44))
	{
		return Top(p);
	}
	else if(p->elem_size == sizeof(PrjMtx))
	{
		PrjMtx *ptr = Top(p);
		return &(ptr->mat);
	}
	else
	{
		return NULL;
	}	
}

 size_t StackSize(Stack *p)
 {
	return p->cur+1;
 }
 size_t MaxStackSize(Stack *p)
 {
	return p->size;
 }

PrjMtx * TopPrjMtx(Stack *p)
{
	if(p->elem_size != sizeof(PrjMtx))
	{
		return NULL;
	}

	return Top(p);
}
