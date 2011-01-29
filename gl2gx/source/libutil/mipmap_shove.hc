
/*--------------------------------------------------------------------------
* Decimation of packed pixel types 
*--------------------------------------------------------------------------
*/ 
static void extract332(int isSwap,
					   const void *packedPixel, GLfloat extractComponents[])
{
	GLubyte ubyte= *(const GLubyte *)packedPixel;

	isSwap= isSwap;		/* turn off warnings */

	/* 11100000 == 0xe0 */
	/* 00011100 == 0x1c */
	/* 00000011 == 0x03 */

	extractComponents[0]=   (float)((ubyte & 0xe0)  >> 5) / 7.0;
	extractComponents[1]=   (float)((ubyte & 0x1c)  >> 2) / 7.0; /* 7 = 2^3-1 */
	extractComponents[2]=   (float)((ubyte & 0x03)      ) / 3.0;	/* 3 = 2^2-1 */
} /* extract332() */

static void shove332(const GLfloat shoveComponents[], 
					 int index, void *packedPixel)	       
{
	/* 11100000 == 0xe0 */
	/* 00011100 == 0x1c */
	/* 00000011 == 0x03 */

	assert(0.0 <= shoveComponents[0] && shoveComponents[0] <= 1.0);
	assert(0.0 <= shoveComponents[1] && shoveComponents[1] <= 1.0);
	assert(0.0 <= shoveComponents[2] && shoveComponents[2] <= 1.0);

	/* due to limited precision, need to round before shoving */
	((GLubyte *)packedPixel)[index]  = 
		((GLubyte)((shoveComponents[0] * 7)+0.5)  << 5) & 0xe0;
	((GLubyte *)packedPixel)[index] |= 
		((GLubyte)((shoveComponents[1] * 7)+0.5)  << 2) & 0x1c;
	((GLubyte *)packedPixel)[index]  |=
		((GLubyte)((shoveComponents[2] * 3)+0.5)      ) & 0x03;
} /* shove332() */

static void extract233rev(int isSwap,
						  const void *packedPixel, GLfloat extractComponents[])
{
	GLubyte ubyte= *(const GLubyte *)packedPixel;

	isSwap= isSwap;		/* turn off warnings */

	/* 0000,0111 == 0x07 */
	/* 0011,1000 == 0x38 */  
	/* 1100,0000 == 0xC0 */

	extractComponents[0]= (float)((ubyte & 0x07)     ) / 7.0;
	extractComponents[1]= (float)((ubyte & 0x38) >> 3) / 7.0;
	extractComponents[2]= (float)((ubyte & 0xC0) >> 6) / 3.0;
} /* extract233rev() */

static void shove233rev(const GLfloat shoveComponents[], 
						int index, void *packedPixel)	       
{
	/* 0000,0111 == 0x07 */
	/* 0011,1000 == 0x38 */  
	/* 1100,0000 == 0xC0 */

	assert(0.0 <= shoveComponents[0] && shoveComponents[0] <= 1.0);
	assert(0.0 <= shoveComponents[1] && shoveComponents[1] <= 1.0);
	assert(0.0 <= shoveComponents[2] && shoveComponents[2] <= 1.0);

	/* due to limited precision, need to round before shoving */
	((GLubyte *)packedPixel)[index] = 
		((GLubyte)((shoveComponents[0] * 7.0)+0.5)     ) & 0x07;
	((GLubyte *)packedPixel)[index]|= 
		((GLubyte)((shoveComponents[1] * 7.0)+0.5) << 3) & 0x38;
	((GLubyte *)packedPixel)[index]|= 
		((GLubyte)((shoveComponents[2] * 3.0)+0.5) << 6) & 0xC0;
} /* shove233rev() */

static void extract565(int isSwap,
					   const void *packedPixel, GLfloat extractComponents[])
{
	GLushort ushort= *(const GLushort *)packedPixel; 

	if (isSwap) {
		ushort= __GLU_SWAP_2_BYTES(packedPixel);
	}
	else {
		ushort= *(const GLushort *)packedPixel;
	}

	/* 11111000,00000000 == 0xf800 */
	/* 00000111,11100000 == 0x07e0 */
	/* 00000000,00011111 == 0x001f */

	extractComponents[0]=(float)((ushort & 0xf800) >> 11) / 31.0;/* 31 = 2^5-1*/
	extractComponents[1]=(float)((ushort & 0x07e0) >>  5) / 63.0;/* 63 = 2^6-1*/
	extractComponents[2]=(float)((ushort & 0x001f)      ) / 31.0;
} /* extract565() */

static void shove565(const GLfloat shoveComponents[],
					 int index,void *packedPixel)
{
	/* 11111000,00000000 == 0xf800 */
	/* 00000111,11100000 == 0x07e0 */
	/* 00000000,00011111 == 0x001f */

	assert(0.0 <= shoveComponents[0] && shoveComponents[0] <= 1.0);
	assert(0.0 <= shoveComponents[1] && shoveComponents[1] <= 1.0);
	assert(0.0 <= shoveComponents[2] && shoveComponents[2] <= 1.0);

	/* due to limited precision, need to round before shoving */
	((GLushort *)packedPixel)[index] = 
		((GLushort)((shoveComponents[0] * 31)+0.5) << 11) & 0xf800;
	((GLushort *)packedPixel)[index]|= 
		((GLushort)((shoveComponents[1] * 63)+0.5) <<  5) & 0x07e0;
	((GLushort *)packedPixel)[index]|= 
		((GLushort)((shoveComponents[2] * 31)+0.5)      ) & 0x001f;
} /* shove565() */

static void extract565rev(int isSwap,
						  const void *packedPixel, GLfloat extractComponents[])
{
	GLushort ushort= *(const GLushort *)packedPixel; 

	if (isSwap) {
		ushort= __GLU_SWAP_2_BYTES(packedPixel);
	}
	else {
		ushort= *(const GLushort *)packedPixel;
	}

	/* 00000000,00011111 == 0x001f */
	/* 00000111,11100000 == 0x07e0 */
	/* 11111000,00000000 == 0xf800 */

	extractComponents[0]= (float)((ushort & 0x001F)      ) / 31.0;
	extractComponents[1]= (float)((ushort & 0x07E0) >>  5) / 63.0;
	extractComponents[2]= (float)((ushort & 0xF800) >> 11) / 31.0;
} /* extract565rev() */

static void shove565rev(const GLfloat shoveComponents[],
						int index,void *packedPixel)
{
	/* 00000000,00011111 == 0x001f */
	/* 00000111,11100000 == 0x07e0 */
	/* 11111000,00000000 == 0xf800 */

	assert(0.0 <= shoveComponents[0] && shoveComponents[0] <= 1.0);
	assert(0.0 <= shoveComponents[1] && shoveComponents[1] <= 1.0);
	assert(0.0 <= shoveComponents[2] && shoveComponents[2] <= 1.0);

	/* due to limited precision, need to round before shoving */
	((GLushort *)packedPixel)[index] = 
		((GLushort)((shoveComponents[0] * 31.0)+0.5)      ) & 0x001F;
	((GLushort *)packedPixel)[index]|=   
		((GLushort)((shoveComponents[1] * 63.0)+0.5) <<  5) & 0x07E0;
	((GLushort *)packedPixel)[index]|=   
		((GLushort)((shoveComponents[2] * 31.0)+0.5) << 11) & 0xF800;
} /* shove565rev() */

static void extract4444(int isSwap,const void *packedPixel, 
						GLfloat extractComponents[])
{
	GLushort ushort;

	if (isSwap) {
		ushort= __GLU_SWAP_2_BYTES(packedPixel);
	}
	else {
		ushort= *(const GLushort *)packedPixel;
	}

	/* 11110000,00000000 == 0xf000 */  
	/* 00001111,00000000 == 0x0f00 */  
	/* 00000000,11110000 == 0x00f0 */  
	/* 00000000,00001111 == 0x000f */  

	extractComponents[0]= (float)((ushort & 0xf000) >> 12) / 15.0;/* 15=2^4-1 */
	extractComponents[1]= (float)((ushort & 0x0f00) >>  8) / 15.0;
	extractComponents[2]= (float)((ushort & 0x00f0) >>  4) / 15.0;
	extractComponents[3]= (float)((ushort & 0x000f)      ) / 15.0;
} /* extract4444() */

static void shove4444(const GLfloat shoveComponents[],
					  int index,void *packedPixel)
{
	assert(0.0 <= shoveComponents[0] && shoveComponents[0] <= 1.0);
	assert(0.0 <= shoveComponents[1] && shoveComponents[1] <= 1.0);
	assert(0.0 <= shoveComponents[2] && shoveComponents[2] <= 1.0);
	assert(0.0 <= shoveComponents[3] && shoveComponents[3] <= 1.0);

	/* due to limited precision, need to round before shoving */
	((GLushort *)packedPixel)[index] = 
		((GLushort)((shoveComponents[0] * 15)+0.5) << 12) & 0xf000;
	((GLushort *)packedPixel)[index]|= 
		((GLushort)((shoveComponents[1] * 15)+0.5) <<  8) & 0x0f00;
	((GLushort *)packedPixel)[index]|= 
		((GLushort)((shoveComponents[2] * 15)+0.5) <<  4) & 0x00f0;
	((GLushort *)packedPixel)[index]|= 
		((GLushort)((shoveComponents[3] * 15)+0.5)      ) & 0x000f;
} /* shove4444() */

static void extract4444rev(int isSwap,const void *packedPixel, 
						   GLfloat extractComponents[])
{
	GLushort ushort;

	if (isSwap) {
		ushort= __GLU_SWAP_2_BYTES(packedPixel);
	}
	else {
		ushort= *(const GLushort *)packedPixel;
	}

	/* 00000000,00001111 == 0x000f */  
	/* 00000000,11110000 == 0x00f0 */  
	/* 00001111,00000000 == 0x0f00 */  
	/* 11110000,00000000 == 0xf000 */  

	/* 15 = 2^4-1 */
	extractComponents[0]= (float)((ushort & 0x000F)      ) / 15.0;
	extractComponents[1]= (float)((ushort & 0x00F0) >>  4) / 15.0;
	extractComponents[2]= (float)((ushort & 0x0F00) >>  8) / 15.0;
	extractComponents[3]= (float)((ushort & 0xF000) >> 12) / 15.0;
} /* extract4444rev() */

static void shove4444rev(const GLfloat shoveComponents[],
						 int index,void *packedPixel)
{
	/* 00000000,00001111 == 0x000f */  
	/* 00000000,11110000 == 0x00f0 */  
	/* 00001111,00000000 == 0x0f00 */  
	/* 11110000,00000000 == 0xf000 */  

	assert(0.0 <= shoveComponents[0] && shoveComponents[0] <= 1.0);
	assert(0.0 <= shoveComponents[1] && shoveComponents[1] <= 1.0);
	assert(0.0 <= shoveComponents[2] && shoveComponents[2] <= 1.0);
	assert(0.0 <= shoveComponents[3] && shoveComponents[3] <= 1.0);

	/* due to limited precision, need to round before shoving */
	((GLushort *)packedPixel)[index] =   
		((GLushort)((shoveComponents[0] * 15)+0.5)      ) & 0x000F;
	((GLushort *)packedPixel)[index]|=   
		((GLushort)((shoveComponents[1] * 15)+0.5) <<  4) & 0x00F0;
	((GLushort *)packedPixel)[index]|=   
		((GLushort)((shoveComponents[2] * 15)+0.5) <<  8) & 0x0F00;
	((GLushort *)packedPixel)[index]|=   
		((GLushort)((shoveComponents[3] * 15)+0.5) << 12) & 0xF000;
} /* shove4444rev() */

static void extract5551(int isSwap,const void *packedPixel, 
						GLfloat extractComponents[])
{
	GLushort ushort;

	if (isSwap) {
		ushort= __GLU_SWAP_2_BYTES(packedPixel);
	}
	else {
		ushort= *(const GLushort *)packedPixel;
	}

	/* 11111000,00000000 == 0xf800 */  
	/* 00000111,11000000 == 0x07c0 */  
	/* 00000000,00111110 == 0x003e */  
	/* 00000000,00000001 == 0x0001 */  

	extractComponents[0]=(float)((ushort & 0xf800) >> 11) / 31.0;/* 31 = 2^5-1*/
	extractComponents[1]=(float)((ushort & 0x07c0) >>  6) / 31.0;
	extractComponents[2]=(float)((ushort & 0x003e) >>  1) / 31.0;
	extractComponents[3]=(float)((ushort & 0x0001)      );
} /* extract5551() */

static void shove5551(const GLfloat shoveComponents[],
					  int index,void *packedPixel)
{
	/* 11111000,00000000 == 0xf800 */  
	/* 00000111,11000000 == 0x07c0 */  
	/* 00000000,00111110 == 0x003e */  
	/* 00000000,00000001 == 0x0001 */  

	assert(0.0 <= shoveComponents[0] && shoveComponents[0] <= 1.0);
	assert(0.0 <= shoveComponents[1] && shoveComponents[1] <= 1.0);
	assert(0.0 <= shoveComponents[2] && shoveComponents[2] <= 1.0);
	assert(0.0 <= shoveComponents[3] && shoveComponents[3] <= 1.0);

	/* due to limited precision, need to round before shoving */
	((GLushort *)packedPixel)[index]  = 
		((GLushort)((shoveComponents[0] * 31)+0.5) << 11) & 0xf800;
	((GLushort *)packedPixel)[index]|= 
		((GLushort)((shoveComponents[1] * 31)+0.5) <<  6) & 0x07c0;
	((GLushort *)packedPixel)[index]|= 
		((GLushort)((shoveComponents[2] * 31)+0.5) <<  1) & 0x003e;
	((GLushort *)packedPixel)[index]|= 
		((GLushort)((shoveComponents[3])+0.5)           ) & 0x0001;
} /* shove5551() */

static void extract1555rev(int isSwap,const void *packedPixel, 
						   GLfloat extractComponents[])
{
	GLushort ushort;

	if (isSwap) {
		ushort= __GLU_SWAP_2_BYTES(packedPixel);
	}
	else {
		ushort= *(const GLushort *)packedPixel;
	}

	/* 00000000,00011111 == 0x001F */  
	/* 00000011,11100000 == 0x03E0 */  
	/* 01111100,00000000 == 0x7C00 */  
	/* 10000000,00000000 == 0x8000 */  

	/* 31 = 2^5-1 */
	extractComponents[0]= (float)((ushort & 0x001F)      ) / 31.0;  
	extractComponents[1]= (float)((ushort & 0x03E0) >>  5) / 31.0;
	extractComponents[2]= (float)((ushort & 0x7C00) >> 10) / 31.0;
	extractComponents[3]= (float)((ushort & 0x8000) >> 15);
} /* extract1555rev() */

static void shove1555rev(const GLfloat shoveComponents[],
						 int index,void *packedPixel)
{
	/* 00000000,00011111 == 0x001F */  
	/* 00000011,11100000 == 0x03E0 */  
	/* 01111100,00000000 == 0x7C00 */  
	/* 10000000,00000000 == 0x8000 */  

	assert(0.0 <= shoveComponents[0] && shoveComponents[0] <= 1.0);
	assert(0.0 <= shoveComponents[1] && shoveComponents[1] <= 1.0);
	assert(0.0 <= shoveComponents[2] && shoveComponents[2] <= 1.0);
	assert(0.0 <= shoveComponents[3] && shoveComponents[3] <= 1.0);

	/* due to limited precision, need to round before shoving */
	((GLushort *)packedPixel)[index] =   
		((GLushort)((shoveComponents[0] * 31)+0.5)      ) & 0x001F;
	((GLushort *)packedPixel)[index]|=   
		((GLushort)((shoveComponents[1] * 31)+0.5) <<  5) & 0x03E0;
	((GLushort *)packedPixel)[index]|=   
		((GLushort)((shoveComponents[2] * 31)+0.5) << 10) & 0x7C00;
	((GLushort *)packedPixel)[index]|=   
		((GLushort)((shoveComponents[3])+0.5)      << 15) & 0x8000;
} /* shove1555rev() */ 

static void extract8888(int isSwap,
						const void *packedPixel, GLfloat extractComponents[])
{
	GLuint uint;

	if (isSwap) {
		uint= __GLU_SWAP_4_BYTES(packedPixel);
	}
	else {
		uint= *(const GLuint *)packedPixel;
	}

	/* 11111111,00000000,00000000,00000000 == 0xff000000 */  
	/* 00000000,11111111,00000000,00000000 == 0x00ff0000 */  
	/* 00000000,00000000,11111111,00000000 == 0x0000ff00 */  
	/* 00000000,00000000,00000000,11111111 == 0x000000ff */  

	/* 255 = 2^8-1 */
	extractComponents[0]= (float)((uint & 0xff000000) >> 24) / 255.0;
	extractComponents[1]= (float)((uint & 0x00ff0000) >> 16) / 255.0;
	extractComponents[2]= (float)((uint & 0x0000ff00) >>  8) / 255.0;
	extractComponents[3]= (float)((uint & 0x000000ff)      ) / 255.0;
} /* extract8888() */

static void shove8888(const GLfloat shoveComponents[],
					  int index,void *packedPixel)
{
	/* 11111111,00000000,00000000,00000000 == 0xff000000 */  
	/* 00000000,11111111,00000000,00000000 == 0x00ff0000 */  
	/* 00000000,00000000,11111111,00000000 == 0x0000ff00 */  
	/* 00000000,00000000,00000000,11111111 == 0x000000ff */  

	assert(0.0 <= shoveComponents[0] && shoveComponents[0] <= 1.0);
	assert(0.0 <= shoveComponents[1] && shoveComponents[1] <= 1.0);
	assert(0.0 <= shoveComponents[2] && shoveComponents[2] <= 1.0);
	assert(0.0 <= shoveComponents[3] && shoveComponents[3] <= 1.0);

	/* due to limited precision, need to round before shoving */
	((GLuint *)packedPixel)[index] = 
		((GLuint)((shoveComponents[0] * 255)+0.5) << 24) & 0xff000000;
	((GLuint *)packedPixel)[index]|= 
		((GLuint)((shoveComponents[1] * 255)+0.5) << 16) & 0x00ff0000;
	((GLuint *)packedPixel)[index]|=    
		((GLuint)((shoveComponents[2] * 255)+0.5) <<  8) & 0x0000ff00;
	((GLuint *)packedPixel)[index]|=    
		((GLuint)((shoveComponents[3] * 255)+0.5)      ) & 0x000000ff;
} /* shove8888() */

static void extract8888rev(int isSwap,
						   const void *packedPixel,GLfloat extractComponents[])
{
	GLuint uint;

	if (isSwap) {
		uint= __GLU_SWAP_4_BYTES(packedPixel);
	}
	else {
		uint= *(const GLuint *)packedPixel;
	}

	/* 00000000,00000000,00000000,11111111 == 0x000000ff */  
	/* 00000000,00000000,11111111,00000000 == 0x0000ff00 */  
	/* 00000000,11111111,00000000,00000000 == 0x00ff0000 */  
	/* 11111111,00000000,00000000,00000000 == 0xff000000 */  

	/* 255 = 2^8-1 */
	extractComponents[0]= (float)((uint & 0x000000FF)      ) / 255.0; 
	extractComponents[1]= (float)((uint & 0x0000FF00) >>  8) / 255.0;
	extractComponents[2]= (float)((uint & 0x00FF0000) >> 16) / 255.0;
	extractComponents[3]= (float)((uint & 0xFF000000) >> 24) / 255.0;
} /* extract8888rev() */

static void shove8888rev(const GLfloat shoveComponents[],
						 int index,void *packedPixel)
{
	/* 00000000,00000000,00000000,11111111 == 0x000000ff */  
	/* 00000000,00000000,11111111,00000000 == 0x0000ff00 */  
	/* 00000000,11111111,00000000,00000000 == 0x00ff0000 */  
	/* 11111111,00000000,00000000,00000000 == 0xff000000 */  

	assert(0.0 <= shoveComponents[0] && shoveComponents[0] <= 1.0);
	assert(0.0 <= shoveComponents[1] && shoveComponents[1] <= 1.0);
	assert(0.0 <= shoveComponents[2] && shoveComponents[2] <= 1.0);
	assert(0.0 <= shoveComponents[3] && shoveComponents[3] <= 1.0);

	/* due to limited precision, need to round before shoving */
	((GLuint *)packedPixel)[index] = 
		((GLuint)((shoveComponents[0] * 255)+0.5)      ) & 0x000000FF;
	((GLuint *)packedPixel)[index]|= 
		((GLuint)((shoveComponents[1] * 255)+0.5) <<  8) & 0x0000FF00;
	((GLuint *)packedPixel)[index]|= 
		((GLuint)((shoveComponents[2] * 255)+0.5) << 16) & 0x00FF0000;
	((GLuint *)packedPixel)[index]|= 
		((GLuint)((shoveComponents[3] * 255)+0.5) << 24) & 0xFF000000;
} /* shove8888rev() */

static void extract1010102(int isSwap,
						   const void *packedPixel,GLfloat extractComponents[])
{
	GLuint uint;

	if (isSwap) {
		uint= __GLU_SWAP_4_BYTES(packedPixel);
	}
	else {
		uint= *(const GLuint *)packedPixel;
	}

	/* 11111111,11000000,00000000,00000000 == 0xffc00000 */  
	/* 00000000,00111111,11110000,00000000 == 0x003ff000 */  
	/* 00000000,00000000,00001111,11111100 == 0x00000ffc */  
	/* 00000000,00000000,00000000,00000011 == 0x00000003 */  

	/* 1023 = 2^10-1 */
	extractComponents[0]= (float)((uint & 0xffc00000) >> 22) / 1023.0; 
	extractComponents[1]= (float)((uint & 0x003ff000) >> 12) / 1023.0;
	extractComponents[2]= (float)((uint & 0x00000ffc) >>  2) / 1023.0;
	extractComponents[3]= (float)((uint & 0x00000003)      ) / 3.0;
} /* extract1010102() */

static void shove1010102(const GLfloat shoveComponents[],
						 int index,void *packedPixel)
{
	/* 11111111,11000000,00000000,00000000 == 0xffc00000 */  
	/* 00000000,00111111,11110000,00000000 == 0x003ff000 */  
	/* 00000000,00000000,00001111,11111100 == 0x00000ffc */  
	/* 00000000,00000000,00000000,00000011 == 0x00000003 */  

	assert(0.0 <= shoveComponents[0] && shoveComponents[0] <= 1.0);
	assert(0.0 <= shoveComponents[1] && shoveComponents[1] <= 1.0);
	assert(0.0 <= shoveComponents[2] && shoveComponents[2] <= 1.0);
	assert(0.0 <= shoveComponents[3] && shoveComponents[3] <= 1.0);

	/* due to limited precision, need to round before shoving */
	((GLuint *)packedPixel)[index] = 
		((GLuint)((shoveComponents[0] * 1023)+0.5) << 22) & 0xffc00000;
	((GLuint *)packedPixel)[index]|= 
		((GLuint)((shoveComponents[1] * 1023)+0.5) << 12) & 0x003ff000;
	((GLuint *)packedPixel)[index]|= 
		((GLuint)((shoveComponents[2] * 1023)+0.5) <<  2) & 0x00000ffc;
	((GLuint *)packedPixel)[index]|= 
		((GLuint)((shoveComponents[3] * 3)+0.5)         ) & 0x00000003;
} /* shove1010102() */ 

static void extract2101010rev(int isSwap,
							  const void *packedPixel,
							  GLfloat extractComponents[])
{
	GLuint uint;

	if (isSwap) {
		uint= __GLU_SWAP_4_BYTES(packedPixel);
	}
	else {
		uint= *(const GLuint *)packedPixel;
	}

	/* 00000000,00000000,00000011,11111111 == 0x000003FF */  
	/* 00000000,00001111,11111100,00000000 == 0x000FFC00 */  
	/* 00111111,11110000,00000000,00000000 == 0x3FF00000 */  
	/* 11000000,00000000,00000000,00000000 == 0xC0000000 */  

	/* 1023 = 2^10-1 */
	extractComponents[0]= (float)((uint & 0x000003FF)      ) / 1023.0;  
	extractComponents[1]= (float)((uint & 0x000FFC00) >> 10) / 1023.0;
	extractComponents[2]= (float)((uint & 0x3FF00000) >> 20) / 1023.0;
	extractComponents[3]= (float)((uint & 0xC0000000) >> 30) / 3.0;  
	/* 3 = 2^2-1 */
} /* extract2101010rev() */

static void shove2101010rev(const GLfloat shoveComponents[],
							int index,void *packedPixel)
{
	/* 00000000,00000000,00000011,11111111 == 0x000003FF */  
	/* 00000000,00001111,11111100,00000000 == 0x000FFC00 */  
	/* 00111111,11110000,00000000,00000000 == 0x3FF00000 */  
	/* 11000000,00000000,00000000,00000000 == 0xC0000000 */  

	assert(0.0 <= shoveComponents[0] && shoveComponents[0] <= 1.0);
	assert(0.0 <= shoveComponents[1] && shoveComponents[1] <= 1.0);
	assert(0.0 <= shoveComponents[2] && shoveComponents[2] <= 1.0);
	assert(0.0 <= shoveComponents[3] && shoveComponents[3] <= 1.0);

	/* due to limited precision, need to round before shoving */
	((GLuint *)packedPixel)[index] = 
		((GLuint)((shoveComponents[0] * 1023)+0.5)      ) & 0x000003FF;
	((GLuint *)packedPixel)[index]|= 
		((GLuint)((shoveComponents[1] * 1023)+0.5) << 10) & 0x000FFC00;
	((GLuint *)packedPixel)[index]|= 
		((GLuint)((shoveComponents[2] * 1023)+0.5) << 20) & 0x3FF00000;
	((GLuint *)packedPixel)[index]|= 
		((GLuint)((shoveComponents[3] * 3)+0.5)    << 30) & 0xC0000000;
} /* shove2101010rev() */