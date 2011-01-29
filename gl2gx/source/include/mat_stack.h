#ifndef _MAX_STACK_H_
#define _MAX_STACK_H_


#ifdef __cplusplus
extern "C" {
#endif


/* Matrixes */

typedef struct _stack
{
	void * begin;
	size_t elem_size;
	size_t size;
	size_t cur;
} Stack;

extern void InitStackMtx(Stack *, size_t num);
extern void InitStackMtx44(Stack *, size_t num);
extern void InitStackPrjMtx(Stack *, size_t num);
extern void InitStack(Stack *, size_t num, size_t elem_size);
extern void GrowStack(Stack *, size_t);
extern void DestroyStack(Stack *);
extern void Pop(Stack *);
extern void Push(Stack *);
extern void * Top(Stack *);
extern Mtx * TopMtx(Stack *);
extern Mtx44 * TopMtx44(Stack *);
extern PrjMtx * TopPrjMtx(Stack *);
extern size_t StackSize(Stack *);
extern size_t MaxStackSize(Stack *);

#ifdef __cplusplus
}
#endif


#endif
