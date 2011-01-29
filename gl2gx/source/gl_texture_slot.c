#include "glint.h"
#include <malloc.h>

#if MEM_TEX_CACHE
typedef struct slot
{
	size_t size;
	void * slot;
} slot;

static slot slots[NUM_MEM_TEX_CACHE];

void initTextureSlots()
{
	size_t i = 0;
	
	for(i = 0; i < sizeof(slots)/sizeof(slots[0]); ++i)
	{
		slots[i].size = 0;
		slots[i].slot = NULL;
	}
}

static void * findSlot(size_t size)
{
	size_t i = 0;
	
	// Look for slot with exact size
	for(i = 0; i < sizeof(slots)/sizeof(slots[0]); ++i)
	{
		if(slots[i].size == size)
		{
			void * ret = slots[i].slot;
			slots[i].size = 0;
			slots[i].slot = NULL;
			
			return ret;
		}
	}
	
	// Did not find one
	// Might want to check memalign, and free memory if memalign returns 0
	return memalign(32, size);
}

static void putSlot(void * slot, size_t size)
{
	size_t i = 0;
	
	for(i = 0; i < sizeof(slots)/sizeof(slots[0]); ++i)
	{
		if(slots[i].slot == NULL)
		{
			slots[i].size = size;
			slots[i].slot = slot;
			return;
		}
	}
	
	if(i == sizeof(slots)/sizeof(slots[0]))
	{
		// Only gonna cache 1000 texture spots, free any additional one
		free(slot);
		return;
	}
}

void PreallocTexMem(size_t size)
{
	putSlot(memalign(32, size), size);
}


void * getTextureSlot(size_t size)
{
	return findSlot(size);

}
void releaseTextureSlot(void * slot, size_t size)
{
	putSlot(slot,size);
}

#include <stdio.h>

void printTextureStats()
{
	size_t i = 0;
	size_t max_slot = 0;
	size_t unused_textures = 0;
	
	for(i = 0; i < sizeof(slots)/sizeof(slots[0]); ++i)
	{
		unused_textures += slots[i].size;
		if(slots[i].slot != NULL)
		{
			max_slot = i;
		}
	}
	
	printf("Total unused texture mem: %u\n", unused_textures);
	printf("Max slot: %u\n", max_slot);
	
	unused_textures = 0;
}
#else


static size_t texMem = 0;

void initTextureSlots()
{
	texMem = 0;
};
void * getTextureSlot(size_t size)
{
	texMem += size;
	return memalign(32, size);
 
}
 
void releaseTextureSlot(void * slot, size_t size)
{
	texMem -= size;
	free(slot);
}

void printTextureStats()
{
	printf("Total texture mem: %u\n", texMem);
}


void PreallocTexMem(size_t size)
{
}

#endif
