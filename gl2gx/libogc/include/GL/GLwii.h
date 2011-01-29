#ifndef _GLWII_H_
#define _GLWII_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <stdlib.h>

void ShowConsole();
void HideConsole();
unsigned char getFPS();
void PreallocTexMem(size_t size);

#ifdef __cplusplus
}
#endif

#endif
