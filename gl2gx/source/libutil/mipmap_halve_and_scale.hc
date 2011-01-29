static void halveImage(GLint components, GLuint width, GLuint height, 
					   const GLushort *datain, GLushort *dataout)
{
	int i, j, k;
	int newwidth, newheight;
	int delta;
	GLushort *s;
	const GLushort *t;

	newwidth = width / 2;
	newheight = height / 2;
	delta = width * components;
	s = dataout;
	t = datain;

	/* Piece o' cake! */
	for (i = 0; i < newheight; i++) {
		for (j = 0; j < newwidth; j++) {
			for (k = 0; k < components; k++) {
				s[0] = (t[0] + t[components] + t[delta] + 
					t[delta+components] + 2) / 4;
				s++; t++;
			}
			t += components;
		}
		t += delta;
	}
}

static void halveImage_ubyte(GLint components, GLuint width, GLuint height, 
							 const GLubyte *datain, GLubyte *dataout,
							 GLint element_size, GLint ysize, GLint group_size)
{
	int i, j, k;
	int newwidth, newheight;
	GLubyte *s;
	const char *t;

	/* handle case where there is only 1 column/row */
	if (width == 1 || height == 1) {
		assert( !(width == 1 && height == 1) ); /* can't be 1x1 */
		halve1Dimage_ubyte(components,width,height,datain,dataout,
			element_size,ysize,group_size);
		return;
	}

	newwidth = width / 2;
	newheight = height / 2;
	s = dataout;
	t = (const char *)datain;

	/* Piece o' cake! */
	for (i = 0; i < newheight; i++) {
		for (j = 0; j < newwidth; j++) {
			for (k = 0; k < components; k++) {
				s[0] = (*(const GLubyte*)t + 
					*(const GLubyte*)(t+group_size) +
					*(const GLubyte*)(t+ysize) +
					*(const GLubyte*)(t+ysize+group_size) + 2) / 4;
				s++; t += element_size;
			}
			t += group_size;
		}
		t += ysize;
	}
}

/* */
static void halve1Dimage_ubyte(GLint components, GLuint width, GLuint height, 
							   const GLubyte *dataIn, GLubyte *dataOut, 
							   GLint element_size, GLint ysize, 
							   GLint group_size)
{
	GLint halfWidth= width / 2;
	GLint halfHeight= height / 2;
	const char *src= (const char *) dataIn;
	GLubyte *dest= dataOut;
	int jj;

	assert(width == 1 || height == 1); /* must be 1D */
	assert(width != height);	/* can't be square */

	if (height == 1) {		/* 1 row */
		assert(width != 1);	/* widthxheight can't be 1x1 */
		halfHeight= 1;

		for (jj= 0; jj< halfWidth; jj++) {
			int kk;
			for (kk= 0; kk< components; kk++) {
				*dest= (*(const GLubyte*)src +
					*(const GLubyte*)(src+group_size)) / 2;

				src+= element_size;
				dest++;  
			} 
			src+= group_size;	/* skip to next 2 */
		}
		{
			int padBytes= ysize - (width*group_size); 
			src+= padBytes;	/* for assertion only */
		}
	}
	else if (width == 1) {	/* 1 column */
		int padBytes= ysize - (width * group_size);
		assert(height != 1);	/* widthxheight can't be 1x1 */
		halfWidth= 1; 
		/* one vertical column with possible pad bytes per row */
		/* average two at a time */

		for (jj= 0; jj< halfHeight; jj++) {
			int kk;
			for (kk= 0; kk< components; kk++) {
				*dest= (*(const GLubyte*)src + *(const GLubyte*)(src+ysize)) / 2;

				src+= element_size;
				dest++;
			}  
			src+= padBytes; /* add pad bytes, if any, to get to end to row */
			src+= ysize;
		}
	}

	assert(src == &((const char *)dataIn)[ysize*height]);
	assert((char *)dest == &((char *)dataOut)
		[components * element_size * halfWidth * halfHeight]);
} /* halve1Dimage_ubyte() */

static void halveImage_byte(GLint components, GLuint width, GLuint height, 
							const GLbyte *datain, GLbyte *dataout,
							GLint element_size,
							GLint ysize, GLint group_size)
{
	int i, j, k;
	int newwidth, newheight;
	GLbyte *s;
	const char *t;

	/* handle case where there is only 1 column/row */
	if (width == 1 || height == 1) {
		assert( !(width == 1 && height == 1) ); /* can't be 1x1 */
		halve1Dimage_byte(components,width,height,datain,dataout,
			element_size,ysize,group_size);
		return;
	}

	newwidth = width / 2;
	newheight = height / 2;
	s = dataout;
	t = (const char *)datain;

	/* Piece o' cake! */
	for (i = 0; i < newheight; i++) {
		for (j = 0; j < newwidth; j++) {
			for (k = 0; k < components; k++) {
				s[0] = (*(const GLbyte*)t + 
					*(const GLbyte*)(t+group_size) +
					*(const GLbyte*)(t+ysize) +
					*(const GLbyte*)(t+ysize+group_size) + 2) / 4;
				s++; t += element_size;
			}
			t += group_size;
		}
		t += ysize;
	}
}

static void halve1Dimage_byte(GLint components, GLuint width, GLuint height, 
							  const GLbyte *dataIn, GLbyte *dataOut, 
							  GLint element_size,GLint ysize, GLint group_size)
{
	GLint halfWidth= width / 2;
	GLint halfHeight= height / 2;
	const char *src= (const char *) dataIn;
	GLbyte *dest= dataOut;
	int jj;

	assert(width == 1 || height == 1); /* must be 1D */
	assert(width != height);	/* can't be square */

	if (height == 1) {		/* 1 row */
		assert(width != 1);	/* widthxheight can't be 1x1 */
		halfHeight= 1;

		for (jj= 0; jj< halfWidth; jj++) {
			int kk;
			for (kk= 0; kk< components; kk++) {
				*dest= (*(const GLbyte*)src + *(const GLbyte*)(src+group_size)) / 2;

				src+= element_size;
				dest++;  
			} 
			src+= group_size;	/* skip to next 2 */
		}
		{
			int padBytes= ysize - (width*group_size); 
			src+= padBytes;	/* for assertion only */
		}
	}
	else if (width == 1) {	/* 1 column */
		int padBytes= ysize - (width * group_size);
		assert(height != 1);	/* widthxheight can't be 1x1 */
		halfWidth= 1; 
		/* one vertical column with possible pad bytes per row */
		/* average two at a time */

		for (jj= 0; jj< halfHeight; jj++) {
			int kk;
			for (kk= 0; kk< components; kk++) {
				*dest= (*(const GLbyte*)src + *(const GLbyte*)(src+ysize)) / 2;

				src+= element_size;
				dest++;
			}  
			src+= padBytes; /* add pad bytes, if any, to get to end to row */
			src+= ysize;
		}

		assert(src == &((const char *)dataIn)[ysize*height]);
	}

	assert((char *)dest == &((char *)dataOut)
		[components * element_size * halfWidth * halfHeight]);
} /* halve1Dimage_byte() */

static void halveImage_ushort(GLint components, GLuint width, GLuint height, 
							  const GLushort *datain, GLushort *dataout,
							  GLint element_size, GLint ysize, GLint group_size,
							  GLint myswap_bytes)
{
	int i, j, k, l;
	int newwidth, newheight;
	GLushort *s;
	const char *t;

	/* handle case where there is only 1 column/row */
	if (width == 1 || height == 1) {
		assert( !(width == 1 && height == 1) ); /* can't be 1x1 */
		halve1Dimage_ushort(components,width,height,datain,dataout,
			element_size,ysize,group_size, myswap_bytes);
		return;
	}

	newwidth = width / 2;
	newheight = height / 2;
	s = dataout;
	t = (const char *)datain;

	/* Piece o' cake! */
	if (!myswap_bytes)
		for (i = 0; i < newheight; i++) {
			for (j = 0; j < newwidth; j++) {
				for (k = 0; k < components; k++) {
					s[0] = (*(const GLushort*)t + 
						*(const GLushort*)(t+group_size) + 
						*(const GLushort*)(t+ysize) + 
						*(const GLushort*)(t+ysize+group_size) + 2) / 4;
					s++; t += element_size;
				}
				t += group_size;
			}
			t += ysize;
		}
	else
		for (i = 0; i < newheight; i++) {
			for (j = 0; j < newwidth; j++) {
				for (k = 0; k < components; k++) {
					s[0] = (__GLU_SWAP_2_BYTES(t) +
						__GLU_SWAP_2_BYTES(t+group_size) +
						__GLU_SWAP_2_BYTES(t+ysize) +
						__GLU_SWAP_2_BYTES(t+ysize+group_size)+ 2)/4;
					s++; t += element_size;
				}
				t += group_size;
			}
			t += ysize;
		}
}

static void halve1Dimage_ushort(GLint components, GLuint width, GLuint height, 
								const GLushort *dataIn, GLushort *dataOut, 
								GLint element_size, GLint ysize, 
								GLint group_size, GLint myswap_bytes)
{
	GLint halfWidth= width / 2;
	GLint halfHeight= height / 2;
	const char *src= (const char *) dataIn;
	GLushort *dest= dataOut;
	int jj;

	assert(width == 1 || height == 1); /* must be 1D */
	assert(width != height);	/* can't be square */

	if (height == 1) {		/* 1 row */
		assert(width != 1);	/* widthxheight can't be 1x1 */
		halfHeight= 1;

		for (jj= 0; jj< halfWidth; jj++) {
			int kk;
			for (kk= 0; kk< components; kk++) {
#define BOX2 2
				GLushort ushort[BOX2];
				if (myswap_bytes) {
					ushort[0]= __GLU_SWAP_2_BYTES(src);
					ushort[1]= __GLU_SWAP_2_BYTES(src+group_size);
				}
				else {
					ushort[0]= *(const GLushort*)src;
					ushort[1]= *(const GLushort*)(src+group_size);
				}

				*dest= (ushort[0] + ushort[1]) / 2;
				src+= element_size;
				dest++;  
			} 
			src+= group_size;	/* skip to next 2 */
		}
		{
			int padBytes= ysize - (width*group_size); 
			src+= padBytes;	/* for assertion only */
		}
	}
	else if (width == 1) {	/* 1 column */
		int padBytes= ysize - (width * group_size);
		assert(height != 1);	/* widthxheight can't be 1x1 */
		halfWidth= 1; 
		/* one vertical column with possible pad bytes per row */
		/* average two at a time */

		for (jj= 0; jj< halfHeight; jj++) {
			int kk;
			for (kk= 0; kk< components; kk++) {
#define BOX2 2
				GLushort ushort[BOX2];
				if (myswap_bytes) {
					ushort[0]= __GLU_SWAP_2_BYTES(src);
					ushort[1]= __GLU_SWAP_2_BYTES(src+ysize);
				}
				else {
					ushort[0]= *(const GLushort*)src;
					ushort[1]= *(const GLushort*)(src+ysize);
				}
				*dest= (ushort[0] + ushort[1]) / 2;

				src+= element_size;
				dest++;
			}  
			src+= padBytes; /* add pad bytes, if any, to get to end to row */
			src+= ysize;
		}

		assert(src == &((const char *)dataIn)[ysize*height]);
	}

	assert((char *)dest == &((char *)dataOut)
		[components * element_size * halfWidth * halfHeight]);

} /* halve1Dimage_ushort() */


static void halveImage_short(GLint components, GLuint width, GLuint height, 
							 const GLshort *datain, GLshort *dataout,
							 GLint element_size, GLint ysize, GLint group_size,
							 GLint myswap_bytes)
{
	int i, j, k, l;
	int newwidth, newheight;
	GLshort *s;
	const char *t;

	/* handle case where there is only 1 column/row */
	if (width == 1 || height == 1) {
		assert( !(width == 1 && height == 1) ); /* can't be 1x1 */
		halve1Dimage_short(components,width,height,datain,dataout,
			element_size,ysize,group_size, myswap_bytes);
		return;
	}

	newwidth = width / 2;
	newheight = height / 2;
	s = dataout;
	t = (const char *)datain;

	/* Piece o' cake! */
	if (!myswap_bytes)
		for (i = 0; i < newheight; i++) {
			for (j = 0; j < newwidth; j++) {
				for (k = 0; k < components; k++) {
					s[0] = (*(const GLshort*)t + 
						*(const GLshort*)(t+group_size) + 
						*(const GLshort*)(t+ysize) + 
						*(const GLshort*)(t+ysize+group_size) + 2) / 4;
					s++; t += element_size;
				}
				t += group_size;
			}
			t += ysize;
		}
	else
		for (i = 0; i < newheight; i++) {
			for (j = 0; j < newwidth; j++) {
				for (k = 0; k < components; k++) {
					GLushort b;
					GLint buf;
					b = __GLU_SWAP_2_BYTES(t);
					buf = *(const GLshort*)&b;
					b = __GLU_SWAP_2_BYTES(t+group_size);
					buf += *(const GLshort*)&b;
					b = __GLU_SWAP_2_BYTES(t+ysize);
					buf += *(const GLshort*)&b;
					b = __GLU_SWAP_2_BYTES(t+ysize+group_size);
					buf += *(const GLshort*)&b;
					s[0] = (GLshort)((buf+2)/4);
					s++; t += element_size;
				}
				t += group_size;
			}
			t += ysize;
		}
}

static void halve1Dimage_short(GLint components, GLuint width, GLuint height, 
							   const GLshort *dataIn, GLshort *dataOut, 
							   GLint element_size, GLint ysize, 
							   GLint group_size, GLint myswap_bytes)
{
	GLint halfWidth= width / 2;
	GLint halfHeight= height / 2;
	const char *src= (const char *) dataIn;
	GLshort *dest= dataOut;
	int jj;

	assert(width == 1 || height == 1); /* must be 1D */
	assert(width != height);	/* can't be square */

	if (height == 1) {		/* 1 row */
		assert(width != 1);	/* widthxheight can't be 1x1 */
		halfHeight= 1;

		for (jj= 0; jj< halfWidth; jj++) {
			int kk;
			for (kk= 0; kk< components; kk++) {
#define BOX2 2
				GLshort sshort[BOX2];
				if (myswap_bytes) {
					sshort[0]= __GLU_SWAP_2_BYTES(src);
					sshort[1]= __GLU_SWAP_2_BYTES(src+group_size);
				}
				else {
					sshort[0]= *(const GLshort*)src;
					sshort[1]= *(const GLshort*)(src+group_size);
				}

				*dest= (sshort[0] + sshort[1]) / 2;
				src+= element_size;
				dest++;  
			} 
			src+= group_size;	/* skip to next 2 */
		}
		{
			int padBytes= ysize - (width*group_size); 
			src+= padBytes;	/* for assertion only */
		}
	}
	else if (width == 1) {	/* 1 column */
		int padBytes= ysize - (width * group_size);
		assert(height != 1);	/* widthxheight can't be 1x1 */
		halfWidth= 1; 
		/* one vertical column with possible pad bytes per row */
		/* average two at a time */

		for (jj= 0; jj< halfHeight; jj++) {
			int kk;
			for (kk= 0; kk< components; kk++) {
#define BOX2 2
				GLshort sshort[BOX2];
				if (myswap_bytes) {
					sshort[0]= __GLU_SWAP_2_BYTES(src);
					sshort[1]= __GLU_SWAP_2_BYTES(src+ysize);
				}
				else {
					sshort[0]= *(const GLshort*)src;
					sshort[1]= *(const GLshort*)(src+ysize);
				}
				*dest= (sshort[0] + sshort[1]) / 2;

				src+= element_size;
				dest++;
			}  
			src+= padBytes; /* add pad bytes, if any, to get to end to row */
			src+= ysize;
		}

		assert(src == &((const char *)dataIn)[ysize*height]);
	}

	assert((char *)dest == &((char *)dataOut)
		[components * element_size * halfWidth * halfHeight]);

} /* halve1Dimage_short() */


static void halveImage_uint(GLint components, GLuint width, GLuint height, 
							const GLuint *datain, GLuint *dataout,
							GLint element_size, GLint ysize, GLint group_size,
							GLint myswap_bytes)
{
	int i, j, k, l;
	int newwidth, newheight;
	GLuint *s;
	const char *t;

	/* handle case where there is only 1 column/row */
	if (width == 1 || height == 1) {
		assert( !(width == 1 && height == 1) ); /* can't be 1x1 */
		halve1Dimage_uint(components,width,height,datain,dataout,
			element_size,ysize,group_size, myswap_bytes);
		return;
	}

	newwidth = width / 2;
	newheight = height / 2;
	s = dataout;
	t = (const char *)datain;

	/* Piece o' cake! */
	if (!myswap_bytes) 
		for (i = 0; i < newheight; i++) {
			for (j = 0; j < newwidth; j++) {
				for (k = 0; k < components; k++) {
					/* need to cast to double to hold large unsigned ints */
					s[0] = ((double)*(const GLuint*)t + 
						(double)*(const GLuint*)(t+group_size) + 
						(double)*(const GLuint*)(t+ysize) + 
						(double)*(const GLuint*)(t+ysize+group_size))/4 + 0.5;
					s++; t += element_size;

				}
				t += group_size;
			}
			t += ysize;
		}
	else
		for (i = 0; i < newheight; i++) {
			for (j = 0; j < newwidth; j++) {
				for (k = 0; k < components; k++) {
					/* need to cast to double to hold large unsigned ints */
					GLdouble buf;
					buf = (GLdouble)__GLU_SWAP_4_BYTES(t) +
						(GLdouble)__GLU_SWAP_4_BYTES(t+group_size) +
						(GLdouble)__GLU_SWAP_4_BYTES(t+ysize) +
						(GLdouble)__GLU_SWAP_4_BYTES(t+ysize+group_size);
					s[0] = (GLuint)(buf/4 + 0.5);

					s++; t += element_size;
				}
				t += group_size;
			}
			t += ysize;
		}
}

/* */
static void halve1Dimage_uint(GLint components, GLuint width, GLuint height, 
							  const GLuint *dataIn, GLuint *dataOut, 
							  GLint element_size, GLint ysize, 
							  GLint group_size, GLint myswap_bytes)
{
	GLint halfWidth= width / 2;
	GLint halfHeight= height / 2;
	const char *src= (const char *) dataIn;
	GLuint *dest= dataOut;
	int jj;

	assert(width == 1 || height == 1); /* must be 1D */
	assert(width != height);	/* can't be square */

	if (height == 1) {		/* 1 row */
		assert(width != 1);	/* widthxheight can't be 1x1 */
		halfHeight= 1;

		for (jj= 0; jj< halfWidth; jj++) {
			int kk;
			for (kk= 0; kk< components; kk++) {
#define BOX2 2
				GLuint uint[BOX2];
				if (myswap_bytes) {
					uint[0]= __GLU_SWAP_4_BYTES(src);
					uint[1]= __GLU_SWAP_4_BYTES(src+group_size);
				}
				else {
					uint[0]= *(const GLuint*)src;
					uint[1]= *(const GLuint*)(src+group_size);
				}
				*dest= ((double)uint[0]+(double)uint[1])/2.0;   

				src+= element_size;
				dest++;  
			} 
			src+= group_size;	/* skip to next 2 */
		}
		{
			int padBytes= ysize - (width*group_size); 
			src+= padBytes;	/* for assertion only */
		}
	}
	else if (width == 1) {	/* 1 column */
		int padBytes= ysize - (width * group_size);
		assert(height != 1);	/* widthxheight can't be 1x1 */
		halfWidth= 1; 
		/* one vertical column with possible pad bytes per row */
		/* average two at a time */

		for (jj= 0; jj< halfHeight; jj++) {
			int kk;
			for (kk= 0; kk< components; kk++) {
#define BOX2 2
				GLuint uint[BOX2];
				if (myswap_bytes) {
					uint[0]= __GLU_SWAP_4_BYTES(src);
					uint[1]= __GLU_SWAP_4_BYTES(src+ysize);
				}
				else {
					uint[0]= *(const GLuint*)src;
					uint[1]= *(const GLuint*)(src+ysize);
				}
				*dest= ((double)uint[0]+(double)uint[1])/2.0;

				src+= element_size;
				dest++;
			}  
			src+= padBytes; /* add pad bytes, if any, to get to end to row */
			src+= ysize;
		}

		assert(src == &((const char *)dataIn)[ysize*height]);
	}

	assert((char *)dest == &((char *)dataOut)
		[components * element_size * halfWidth * halfHeight]);

} /* halve1Dimage_uint() */

static void halveImage_int(GLint components, GLuint width, GLuint height, 
						   const GLint *datain, GLint *dataout, GLint element_size,
						   GLint ysize, GLint group_size, GLint myswap_bytes)
{
	int i, j, k, l;
	int newwidth, newheight;
	GLint *s;
	const char *t;

	/* handle case where there is only 1 column/row */
	if (width == 1 || height == 1) {
		assert( !(width == 1 && height == 1) ); /* can't be 1x1 */
		halve1Dimage_int(components,width,height,datain,dataout,
			element_size,ysize,group_size, myswap_bytes);
		return;
	}

	newwidth = width / 2;
	newheight = height / 2;
	s = dataout;
	t = (const char *)datain;

	/* Piece o' cake! */
	if (!myswap_bytes) 
		for (i = 0; i < newheight; i++) {
			for (j = 0; j < newwidth; j++) {
				for (k = 0; k < components; k++) {
					s[0] = ((float)*(const GLint*)t + 
						(float)*(const GLint*)(t+group_size) + 
						(float)*(const GLint*)(t+ysize) + 
						(float)*(const GLint*)(t+ysize+group_size))/4 + 0.5;
					s++; t += element_size;
				}
				t += group_size;
			}
			t += ysize;
		}
	else 
		for (i = 0; i < newheight; i++) {
			for (j = 0; j < newwidth; j++) {
				for (k = 0; k < components; k++) {
					GLuint b;
					GLfloat buf;
					b = __GLU_SWAP_4_BYTES(t);
					buf = *(GLint*)&b;
					b = __GLU_SWAP_4_BYTES(t+group_size);
					buf += *(GLint*)&b;
					b = __GLU_SWAP_4_BYTES(t+ysize);
					buf += *(GLint*)&b;
					b = __GLU_SWAP_4_BYTES(t+ysize+group_size);
					buf += *(GLint*)&b;
					s[0] = (GLint)(buf/4 + 0.5);

					s++; t += element_size;
				}
				t += group_size;
			}
			t += ysize;
		}
}

/* */
static void halve1Dimage_int(GLint components, GLuint width, GLuint height, 
							 const GLint *dataIn, GLint *dataOut, 
							 GLint element_size, GLint ysize, 
							 GLint group_size, GLint myswap_bytes)
{
	GLint halfWidth= width / 2;
	GLint halfHeight= height / 2;
	const char *src= (const char *) dataIn;
	GLint *dest= dataOut;
	int jj;

	assert(width == 1 || height == 1); /* must be 1D */
	assert(width != height);	/* can't be square */

	if (height == 1) {		/* 1 row */
		assert(width != 1);	/* widthxheight can't be 1x1 */
		halfHeight= 1;

		for (jj= 0; jj< halfWidth; jj++) {
			int kk;
			for (kk= 0; kk< components; kk++) {
#define BOX2 2
				GLuint uint[BOX2];
				if (myswap_bytes) {
					uint[0]= __GLU_SWAP_4_BYTES(src);
					uint[1]= __GLU_SWAP_4_BYTES(src+group_size);
				}
				else {
					uint[0]= *(const GLuint*)src;
					uint[1]= *(const GLuint*)(src+group_size);
				}
				*dest= ((float)uint[0]+(float)uint[1])/2.0;

				src+= element_size;
				dest++;  
			} 
			src+= group_size;	/* skip to next 2 */
		}
		{
			int padBytes= ysize - (width*group_size); 
			src+= padBytes;	/* for assertion only */
		}
	}
	else if (width == 1) {	/* 1 column */
		int padBytes= ysize - (width * group_size);
		assert(height != 1);	/* widthxheight can't be 1x1 */
		halfWidth= 1; 
		/* one vertical column with possible pad bytes per row */
		/* average two at a time */

		for (jj= 0; jj< halfHeight; jj++) {
			int kk;
			for (kk= 0; kk< components; kk++) {
#define BOX2 2
				GLuint uint[BOX2];
				if (myswap_bytes) {
					uint[0]= __GLU_SWAP_4_BYTES(src);
					uint[1]= __GLU_SWAP_4_BYTES(src+ysize);
				}
				else {
					uint[0]= *(const GLuint*)src;
					uint[1]= *(const GLuint*)(src+ysize);
				}
				*dest= ((float)uint[0]+(float)uint[1])/2.0;

				src+= element_size;
				dest++;
			}  
			src+= padBytes; /* add pad bytes, if any, to get to end to row */
			src+= ysize;
		}

		assert(src == &((const char *)dataIn)[ysize*height]);
	}

	assert((char *)dest == &((char *)dataOut)
		[components * element_size * halfWidth * halfHeight]);

} /* halve1Dimage_int() */


static void halveImage_float(GLint components, GLuint width, GLuint height, 
							 const GLfloat *datain, GLfloat *dataout,
							 GLint element_size, GLint ysize, GLint group_size,
							 GLint myswap_bytes)
{
	int i, j, k, l;
	int newwidth, newheight;
	GLfloat *s;
	const char *t;

	/* handle case where there is only 1 column/row */
	if (width == 1 || height == 1) {
		assert( !(width == 1 && height == 1) ); /* can't be 1x1 */
		halve1Dimage_float(components,width,height,datain,dataout,
			element_size,ysize,group_size, myswap_bytes);
		return;
	}

	newwidth = width / 2;
	newheight = height / 2;
	s = dataout;
	t = (const char *)datain;

	/* Piece o' cake! */
	if (!myswap_bytes)
		for (i = 0; i < newheight; i++) {
			for (j = 0; j < newwidth; j++) {
				for (k = 0; k < components; k++) {
					s[0] = (*(const GLfloat*)t + 
						*(const GLfloat*)(t+group_size) + 
						*(const GLfloat*)(t+ysize) + 
						*(const GLfloat*)(t+ysize+group_size)) / 4;
					s++; t += element_size;
				}
				t += group_size;
			}
			t += ysize;
		}
	else 
		for (i = 0; i < newheight; i++) {
			for (j = 0; j < newwidth; j++) {
				for (k = 0; k < components; k++) {
					GLuint b;
					b = __GLU_SWAP_4_BYTES(t);
					s[0] = *(GLfloat*)&b;
					b = __GLU_SWAP_4_BYTES(t+group_size);
					s[0] += *(GLfloat*)&b;
					b = __GLU_SWAP_4_BYTES(t+ysize);
					s[0] += *(GLfloat*)&b;
					b = __GLU_SWAP_4_BYTES(t+ysize+group_size);
					s[0] += *(GLfloat*)&b;
					s[0] /= 4;
					s++; t += element_size;
				}
				t += group_size;
			}
			t += ysize;
		}
}

/* */
static void halve1Dimage_float(GLint components, GLuint width, GLuint height, 
							   const GLfloat *dataIn, GLfloat *dataOut, 
							   GLint element_size, GLint ysize, 
							   GLint group_size, GLint myswap_bytes)
{
	GLint halfWidth= width / 2;
	GLint halfHeight= height / 2;
	const char *src= (const char *) dataIn;
	GLfloat *dest= dataOut; 
	int jj;

	assert(width == 1 || height == 1); /* must be 1D */
	assert(width != height);	/* can't be square */

	if (height == 1) {		/* 1 row */
		assert(width != 1);	/* widthxheight can't be 1x1 */
		halfHeight= 1;

		for (jj= 0; jj< halfWidth; jj++) {
			int kk;
			for (kk= 0; kk< components; kk++) {
#define BOX2 2
				GLfloat sfloat[BOX2];
				if (myswap_bytes) {
					sfloat[0]= __GLU_SWAP_4_BYTES(src);
					sfloat[1]= __GLU_SWAP_4_BYTES(src+group_size);
				}
				else {
					sfloat[0]= *(const GLfloat*)src;
					sfloat[1]= *(const GLfloat*)(src+group_size);
				}

				*dest= (sfloat[0] + sfloat[1]) / 2.0;
				src+= element_size;
				dest++;  
			} 
			src+= group_size;	/* skip to next 2 */
		}
		{
			int padBytes= ysize - (width*group_size); 
			src+= padBytes;	/* for assertion only */
		}
	}
	else if (width == 1) {	/* 1 column */
		int padBytes= ysize - (width * group_size);
		assert(height != 1);	/* widthxheight can't be 1x1 */
		halfWidth= 1; 
		/* one vertical column with possible pad bytes per row */
		/* average two at a time */

		for (jj= 0; jj< halfHeight; jj++) {
			int kk;
			for (kk= 0; kk< components; kk++) {
#define BOX2 2
				GLfloat sfloat[BOX2];
				if (myswap_bytes) {
					sfloat[0]= __GLU_SWAP_4_BYTES(src);
					sfloat[1]= __GLU_SWAP_4_BYTES(src+ysize);
				}
				else {
					sfloat[0]= *(const GLfloat*)src;
					sfloat[1]= *(const GLfloat*)(src+ysize);
				}
				*dest= (sfloat[0] + sfloat[1]) / 2.0;

				src+= element_size;
				dest++;
			}  
			src+= padBytes; /* add pad bytes, if any, to get to end to row */
			src+= ysize;		/* skip to odd row */
		}
	}

	assert(src == &((const char *)dataIn)[ysize*height]);
	assert((char *)dest == &((char *)dataOut)
		[components * element_size * halfWidth * halfHeight]);
} /* halve1Dimage_float() */

static void scale_internal(GLint components, GLint widthin, GLint heightin, 
						   const GLushort *datain, 
						   GLint widthout, GLint heightout, 
						   GLushort *dataout)
{
	float x, lowx, highx, convx, halfconvx;
	float y, lowy, highy, convy, halfconvy;
	float xpercent,ypercent;
	float percent;
	/* Max components in a format is 4, so... */
	float totals[4];
	float area;
	int i,j,k,yint,xint,xindex,yindex;
	int temp;

	if (widthin == widthout*2 && heightin == heightout*2) {
		halveImage(components, widthin, heightin, datain, dataout);
		return;
	}
	convy = (float) heightin/heightout;
	convx = (float) widthin/widthout;
	halfconvx = convx/2;
	halfconvy = convy/2;
	for (i = 0; i < heightout; i++) {
		y = convy * (i+0.5);
		if (heightin > heightout) {
			highy = y + halfconvy;
			lowy = y - halfconvy;
		} else {
			highy = y + 0.5;
			lowy = y - 0.5;
		}
		for (j = 0; j < widthout; j++) {
			x = convx * (j+0.5);
			if (widthin > widthout) {
				highx = x + halfconvx;
				lowx = x - halfconvx;
			} else {
				highx = x + 0.5;
				lowx = x - 0.5;
			}

			/*
			** Ok, now apply box filter to box that goes from (lowx, lowy)
			** to (highx, highy) on input data into this pixel on output
			** data.
			*/
			totals[0] = totals[1] = totals[2] = totals[3] = 0.0;
			area = 0.0;

			y = lowy;
			yint = floor(y);
			while (y < highy) {
				yindex = (yint + heightin) % heightin;
				if (highy < yint+1) {
					ypercent = highy - y;
				} else {
					ypercent = yint+1 - y;
				}

				x = lowx;
				xint = floor(x);

				while (x < highx) {
					xindex = (xint + widthin) % widthin;
					if (highx < xint+1) {
						xpercent = highx - x;
					} else {
						xpercent = xint+1 - x;
					}

					percent = xpercent * ypercent;
					area += percent;
					temp = (xindex + (yindex * widthin)) * components;
					for (k = 0; k < components; k++) {
						totals[k] += datain[temp + k] * percent;
					}

					xint++;
					x = xint;
				}
				yint++;
				y = yint;
			}

			temp = (j + (i * widthout)) * components;
			for (k = 0; k < components; k++) {
				/* totals[] should be rounded in the case of enlarging an RGB
				* ramp when the type is 332 or 4444
				*/
				dataout[temp + k] = (totals[k]+0.5)/area;
			}
		}
	}
}

static void scale_internal_ubyte(GLint components, GLint widthin, 
								 GLint heightin, const GLubyte *datain, 
								 GLint widthout, GLint heightout, 
								 GLubyte *dataout, GLint element_size,
								 GLint ysize, GLint group_size)
{
	float x, convx;
	float y, convy;
	float percent;
	/* Max components in a format is 4, so... */
	float totals[4];
	float area;
	int i,j,k,xindex;

	const char *temp, *temp0;
	const char *temp_index;
	int outindex;

	int lowx_int, highx_int, lowy_int, highy_int;
	float x_percent, y_percent;
	float lowx_float, highx_float, lowy_float, highy_float;
	float convy_float, convx_float;
	int convy_int, convx_int;
	int l, m;
	const char *left, *right;

	if (widthin == widthout*2 && heightin == heightout*2) {
		halveImage_ubyte(components, widthin, heightin, 
			(const GLubyte *)datain, (GLubyte *)dataout, 
			element_size, ysize, group_size);
		return;
	}
	convy = (float) heightin/heightout;
	convx = (float) widthin/widthout;
	convy_int = floor(convy);
	convy_float = convy - convy_int;
	convx_int = floor(convx);
	convx_float = convx - convx_int;

	area = convx * convy;

	lowy_int = 0;
	lowy_float = 0;
	highy_int = convy_int;
	highy_float = convy_float;

	for (i = 0; i < heightout; i++) {
		lowx_int = 0;
		lowx_float = 0;
		highx_int = convx_int;
		highx_float = convx_float;

		for (j = 0; j < widthout; j++) {

			/*
			** Ok, now apply box filter to box that goes from (lowx, lowy)
			** to (highx, highy) on input data into this pixel on output
			** data.
			*/
			totals[0] = totals[1] = totals[2] = totals[3] = 0.0;

			/* calculate the value for pixels in the 1st row */
			xindex = lowx_int*group_size;
			if((highy_int>lowy_int) && (highx_int>lowx_int)) {

				y_percent = 1-lowy_float;
				temp = (const char *)datain + xindex + lowy_int * ysize;
				percent = y_percent * (1-lowx_float);
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						totals[k] += (GLubyte)(*(temp_index)) * percent;
				}
				left = temp;
				for(l = lowx_int+1; l < highx_int; l++) {
					temp += group_size;
					for (k = 0, temp_index = temp; k < components; 
						k++, temp_index += element_size) {
							totals[k] += (GLubyte)(*(temp_index)) * y_percent;
					}
				}
				temp += group_size;
				right = temp;
				percent = y_percent * highx_float;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						totals[k] += (GLubyte)(*(temp_index)) * percent;
				}

				/* calculate the value for pixels in the last row */		
				y_percent = highy_float;
				percent = y_percent * (1-lowx_float);
				temp = (const char *)datain + xindex + highy_int * ysize;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						totals[k] += (GLubyte)(*(temp_index)) * percent;
				}
				for(l = lowx_int+1; l < highx_int; l++) {
					temp += group_size;
					for (k = 0, temp_index = temp; k < components; 
						k++, temp_index += element_size) {
							totals[k] += (GLubyte)(*(temp_index)) * y_percent;
					}
				}
				temp += group_size;
				percent = y_percent * highx_float;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						totals[k] += (GLubyte)(*(temp_index)) * percent;
				}


				/* calculate the value for pixels in the 1st and last column */
				for(m = lowy_int+1; m < highy_int; m++) {
					left += ysize;
					right += ysize;
					for (k = 0; k < components; 
						k++, left += element_size, right += element_size) {
							totals[k] += (GLubyte)(*(left))*(1-lowx_float)
								+(GLubyte)(*(right))*highx_float;
					}
				}
			} else if (highy_int > lowy_int) {
				x_percent = highx_float - lowx_float;
				percent = (1-lowy_float)*x_percent;
				temp = (const char *)datain + xindex + lowy_int*ysize;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						totals[k] += (GLubyte)(*(temp_index)) * percent;
				}
				for(m = lowy_int+1; m < highy_int; m++) {
					temp += ysize;
					for (k = 0, temp_index = temp; k < components; 
						k++, temp_index += element_size) {
							totals[k] += (GLubyte)(*(temp_index)) * x_percent;
					}
				}
				percent = x_percent * highy_float;
				temp += ysize;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						totals[k] += (GLubyte)(*(temp_index)) * percent;
				}
			} else if (highx_int > lowx_int) {
				y_percent = highy_float - lowy_float;
				percent = (1-lowx_float)*y_percent;
				temp = (const char *)datain + xindex + lowy_int*ysize;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						totals[k] += (GLubyte)(*(temp_index)) * percent;
				}
				for (l = lowx_int+1; l < highx_int; l++) {
					temp += group_size;
					for (k = 0, temp_index = temp; k < components; 
						k++, temp_index += element_size) {
							totals[k] += (GLubyte)(*(temp_index)) * y_percent;
					}
				}
				temp += group_size;
				percent = y_percent * highx_float;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						totals[k] += (GLubyte)(*(temp_index)) * percent;
				}
			} else {
				percent = (highy_float-lowy_float)*(highx_float-lowx_float);
				temp = (const char *)datain + xindex + lowy_int * ysize;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						totals[k] += (GLubyte)(*(temp_index)) * percent;
				}
			}



			/* this is for the pixels in the body */
			temp0 = (const char *)datain + xindex + group_size +
				(lowy_int+1)*ysize;
			for (m = lowy_int+1; m < highy_int; m++) {
				temp = temp0;
				for(l = lowx_int+1; l < highx_int; l++) {
					for (k = 0, temp_index = temp; k < components; 
						k++, temp_index += element_size) {
							totals[k] += (GLubyte)(*(temp_index));
					}
					temp += group_size;
				}
				temp0 += ysize;
			}

			outindex = (j + (i * widthout)) * components;
			for (k = 0; k < components; k++) {
				dataout[outindex + k] = totals[k]/area;
				/*printf("totals[%d] = %f\n", k, totals[k]);*/
			}
			lowx_int = highx_int;
			lowx_float = highx_float;
			highx_int += convx_int;
			highx_float += convx_float;
			if(highx_float > 1) {
				highx_float -= 1.0;
				highx_int++;
			}
		}
		lowy_int = highy_int;
		lowy_float = highy_float;
		highy_int += convy_int;
		highy_float += convy_float;
		if(highy_float > 1) {
			highy_float -= 1.0;
			highy_int++;
		}
	}
}

static void scale_internal_byte(GLint components, GLint widthin, 
								GLint heightin, const GLbyte *datain, 
								GLint widthout, GLint heightout, 
								GLbyte *dataout, GLint element_size,
								GLint ysize, GLint group_size)
{
	float x, convx;
	float y, convy;
	float percent;
	/* Max components in a format is 4, so... */
	float totals[4];
	float area;
	int i,j,k,xindex;

	const char *temp, *temp0;
	const char *temp_index;
	int outindex;

	int lowx_int, highx_int, lowy_int, highy_int;
	float x_percent, y_percent;
	float lowx_float, highx_float, lowy_float, highy_float;
	float convy_float, convx_float;
	int convy_int, convx_int;
	int l, m;
	const char *left, *right;

	if (widthin == widthout*2 && heightin == heightout*2) {
		halveImage_byte(components, widthin, heightin, 
			(const GLbyte *)datain, (GLbyte *)dataout, 
			element_size, ysize, group_size);
		return;
	}
	convy = (float) heightin/heightout;
	convx = (float) widthin/widthout;
	convy_int = floor(convy);
	convy_float = convy - convy_int;
	convx_int = floor(convx);
	convx_float = convx - convx_int;

	area = convx * convy;

	lowy_int = 0;
	lowy_float = 0;
	highy_int = convy_int;
	highy_float = convy_float;

	for (i = 0; i < heightout; i++) {
		lowx_int = 0;
		lowx_float = 0;
		highx_int = convx_int;
		highx_float = convx_float;

		for (j = 0; j < widthout; j++) {

			/*
			** Ok, now apply box filter to box that goes from (lowx, lowy)
			** to (highx, highy) on input data into this pixel on output
			** data.
			*/
			totals[0] = totals[1] = totals[2] = totals[3] = 0.0;

			/* calculate the value for pixels in the 1st row */
			xindex = lowx_int*group_size;
			if((highy_int>lowy_int) && (highx_int>lowx_int)) {

				y_percent = 1-lowy_float;
				temp = (const char *)datain + xindex + lowy_int * ysize;
				percent = y_percent * (1-lowx_float);
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						totals[k] += (GLbyte)(*(temp_index)) * percent;
				}
				left = temp;
				for(l = lowx_int+1; l < highx_int; l++) {
					temp += group_size;
					for (k = 0, temp_index = temp; k < components; 
						k++, temp_index += element_size) {
							totals[k] += (GLbyte)(*(temp_index)) * y_percent;
					}
				}
				temp += group_size;
				right = temp;
				percent = y_percent * highx_float;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						totals[k] += (GLbyte)(*(temp_index)) * percent;
				}

				/* calculate the value for pixels in the last row */		
				y_percent = highy_float;
				percent = y_percent * (1-lowx_float);
				temp = (const char *)datain + xindex + highy_int * ysize;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						totals[k] += (GLbyte)(*(temp_index)) * percent;
				}
				for(l = lowx_int+1; l < highx_int; l++) {
					temp += group_size;
					for (k = 0, temp_index = temp; k < components; 
						k++, temp_index += element_size) {
							totals[k] += (GLbyte)(*(temp_index)) * y_percent;
					}
				}
				temp += group_size;
				percent = y_percent * highx_float;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						totals[k] += (GLbyte)(*(temp_index)) * percent;
				}


				/* calculate the value for pixels in the 1st and last column */
				for(m = lowy_int+1; m < highy_int; m++) {
					left += ysize;
					right += ysize;
					for (k = 0; k < components; 
						k++, left += element_size, right += element_size) {
							totals[k] += (GLbyte)(*(left))*(1-lowx_float)
								+(GLbyte)(*(right))*highx_float;
					}
				}
			} else if (highy_int > lowy_int) {
				x_percent = highx_float - lowx_float;
				percent = (1-lowy_float)*x_percent;
				temp = (const char *)datain + xindex + lowy_int*ysize;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						totals[k] += (GLbyte)(*(temp_index)) * percent;
				}
				for(m = lowy_int+1; m < highy_int; m++) {
					temp += ysize;
					for (k = 0, temp_index = temp; k < components; 
						k++, temp_index += element_size) {
							totals[k] += (GLbyte)(*(temp_index)) * x_percent;
					}
				}
				percent = x_percent * highy_float;
				temp += ysize;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						totals[k] += (GLbyte)(*(temp_index)) * percent;
				}
			} else if (highx_int > lowx_int) {
				y_percent = highy_float - lowy_float;
				percent = (1-lowx_float)*y_percent;
				temp = (const char *)datain + xindex + lowy_int*ysize;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						totals[k] += (GLbyte)(*(temp_index)) * percent;
				}
				for (l = lowx_int+1; l < highx_int; l++) {
					temp += group_size;
					for (k = 0, temp_index = temp; k < components; 
						k++, temp_index += element_size) {
							totals[k] += (GLbyte)(*(temp_index)) * y_percent;
					}
				}
				temp += group_size;
				percent = y_percent * highx_float;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						totals[k] += (GLbyte)(*(temp_index)) * percent;
				}
			} else {
				percent = (highy_float-lowy_float)*(highx_float-lowx_float);
				temp = (const char *)datain + xindex + lowy_int * ysize;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						totals[k] += (GLbyte)(*(temp_index)) * percent;
				}
			}



			/* this is for the pixels in the body */
			temp0 = (const char *)datain + xindex + group_size + 
				(lowy_int+1)*ysize;
			for (m = lowy_int+1; m < highy_int; m++) {
				temp = temp0;
				for(l = lowx_int+1; l < highx_int; l++) {
					for (k = 0, temp_index = temp; k < components; 
						k++, temp_index += element_size) {
							totals[k] += (GLbyte)(*(temp_index));
					}
					temp += group_size;
				}
				temp0 += ysize;
			}

			outindex = (j + (i * widthout)) * components;
			for (k = 0; k < components; k++) {
				dataout[outindex + k] = totals[k]/area;
				/*printf("totals[%d] = %f\n", k, totals[k]);*/
			}
			lowx_int = highx_int;
			lowx_float = highx_float;
			highx_int += convx_int;
			highx_float += convx_float;
			if(highx_float > 1) {
				highx_float -= 1.0;
				highx_int++;
			}
		}
		lowy_int = highy_int;
		lowy_float = highy_float;
		highy_int += convy_int;
		highy_float += convy_float;
		if(highy_float > 1) {
			highy_float -= 1.0;
			highy_int++;
		}
	}
}

static void scale_internal_ushort(GLint components, GLint widthin, 
								  GLint heightin, const GLushort *datain, 
								  GLint widthout, GLint heightout, 
								  GLushort *dataout, GLint element_size,
								  GLint ysize, GLint group_size,
								  GLint myswap_bytes)
{
	float x, convx;
	float y, convy;
	float percent;
	/* Max components in a format is 4, so... */
	float totals[4];
	float area;
	int i,j,k,xindex;

	const char *temp, *temp0;
	const char *temp_index;
	int outindex;

	int lowx_int, highx_int, lowy_int, highy_int;
	float x_percent, y_percent;
	float lowx_float, highx_float, lowy_float, highy_float;
	float convy_float, convx_float;
	int convy_int, convx_int;
	int l, m;
	const char *left, *right;

	if (widthin == widthout*2 && heightin == heightout*2) {
		halveImage_ushort(components, widthin, heightin, 
			(const GLushort *)datain, (GLushort *)dataout, 
			element_size, ysize, group_size, myswap_bytes);
		return;
	}
	convy = (float) heightin/heightout;
	convx = (float) widthin/widthout;
	convy_int = floor(convy);
	convy_float = convy - convy_int;
	convx_int = floor(convx);
	convx_float = convx - convx_int;

	area = convx * convy;

	lowy_int = 0;
	lowy_float = 0;
	highy_int = convy_int;
	highy_float = convy_float;

	for (i = 0; i < heightout; i++) {
		lowx_int = 0;
		lowx_float = 0;
		highx_int = convx_int;
		highx_float = convx_float;

		for (j = 0; j < widthout; j++) {
			/*
			** Ok, now apply box filter to box that goes from (lowx, lowy)
			** to (highx, highy) on input data into this pixel on output
			** data.
			*/
			totals[0] = totals[1] = totals[2] = totals[3] = 0.0;

			/* calculate the value for pixels in the 1st row */
			xindex = lowx_int*group_size;
			if((highy_int>lowy_int) && (highx_int>lowx_int)) {

				y_percent = 1-lowy_float;
				temp = (const char *)datain + xindex + lowy_int * ysize;
				percent = y_percent * (1-lowx_float);
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							totals[k] += __GLU_SWAP_2_BYTES(temp_index) * percent;
						} else {
							totals[k] += *(const GLushort*)temp_index * percent;
						}
				}
				left = temp;
				for(l = lowx_int+1; l < highx_int; l++) {
					temp += group_size;
					for (k = 0, temp_index = temp; k < components; 
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								totals[k] += 
									__GLU_SWAP_2_BYTES(temp_index) * y_percent;
							} else {
								totals[k] += *(const GLushort*)temp_index * y_percent;
							}
					}
				}
				temp += group_size;
				right = temp;
				percent = y_percent * highx_float;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							totals[k] += __GLU_SWAP_2_BYTES(temp_index) * percent;
						} else {
							totals[k] += *(const GLushort*)temp_index * percent;
						}
				}

				/* calculate the value for pixels in the last row */		
				y_percent = highy_float;
				percent = y_percent * (1-lowx_float);
				temp = (const char *)datain + xindex + highy_int * ysize;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							totals[k] += __GLU_SWAP_2_BYTES(temp_index) * percent;
						} else {
							totals[k] += *(const GLushort*)temp_index * percent;
						}
				}
				for(l = lowx_int+1; l < highx_int; l++) {
					temp += group_size;
					for (k = 0, temp_index = temp; k < components; 
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								totals[k] += 
									__GLU_SWAP_2_BYTES(temp_index) * y_percent;
							} else {
								totals[k] += *(const GLushort*)temp_index * y_percent;
							}
					}
				}
				temp += group_size;
				percent = y_percent * highx_float;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							totals[k] += __GLU_SWAP_2_BYTES(temp_index) * percent;
						} else {
							totals[k] += *(const GLushort*)temp_index * percent;
						}
				}

				/* calculate the value for pixels in the 1st and last column */
				for(m = lowy_int+1; m < highy_int; m++) {
					left += ysize;
					right += ysize;
					for (k = 0; k < components; 
						k++, left += element_size, right += element_size) {
							if (myswap_bytes) {
								totals[k] += 
									__GLU_SWAP_2_BYTES(left) * (1-lowx_float) +
									__GLU_SWAP_2_BYTES(right) * highx_float;
							} else {
								totals[k] += *(const GLushort*)left * (1-lowx_float)
									+ *(const GLushort*)right * highx_float;
							}
					}
				}
			} else if (highy_int > lowy_int) {
				x_percent = highx_float - lowx_float;
				percent = (1-lowy_float)*x_percent;
				temp = (const char *)datain + xindex + lowy_int*ysize;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							totals[k] += __GLU_SWAP_2_BYTES(temp_index) * percent;
						} else {
							totals[k] += *(const GLushort*)temp_index * percent;
						}
				}
				for(m = lowy_int+1; m < highy_int; m++) {
					temp += ysize;
					for (k = 0, temp_index = temp; k < components; 
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								totals[k] += 
									__GLU_SWAP_2_BYTES(temp_index) * x_percent;
							} else {
								totals[k] += *(const GLushort*)temp_index * x_percent;
							}
					}
				}
				percent = x_percent * highy_float;
				temp += ysize;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							totals[k] += __GLU_SWAP_2_BYTES(temp_index) * percent;
						} else {
							totals[k] += *(const GLushort*)temp_index * percent;
						}
				}
			} else if (highx_int > lowx_int) {
				y_percent = highy_float - lowy_float;
				percent = (1-lowx_float)*y_percent;
				temp = (const char *)datain + xindex + lowy_int*ysize;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							totals[k] += __GLU_SWAP_2_BYTES(temp_index) * percent;
						} else {
							totals[k] += *(const GLushort*)temp_index * percent;
						}
				}
				for (l = lowx_int+1; l < highx_int; l++) {
					temp += group_size;
					for (k = 0, temp_index = temp; k < components; 
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								totals[k] += 
									__GLU_SWAP_2_BYTES(temp_index) * y_percent;
							} else {
								totals[k] += *(const GLushort*)temp_index * y_percent;
							}
					}
				}
				temp += group_size;
				percent = y_percent * highx_float;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							totals[k] += __GLU_SWAP_2_BYTES(temp_index) * percent;
						} else {
							totals[k] += *(const GLushort*)temp_index * percent;
						}
				}
			} else {
				percent = (highy_float-lowy_float)*(highx_float-lowx_float);
				temp = (const char *)datain + xindex + lowy_int * ysize;
				for (k = 0, temp_index = temp; k < components; 
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							totals[k] += __GLU_SWAP_2_BYTES(temp_index) * percent;
						} else {
							totals[k] += *(const GLushort*)temp_index * percent;
						}
				}
			}

			/* this is for the pixels in the body */
			temp0 = (const char *)datain + xindex + group_size +
				(lowy_int+1)*ysize;
			for (m = lowy_int+1; m < highy_int; m++) {
				temp = temp0;
				for(l = lowx_int+1; l < highx_int; l++) {
					for (k = 0, temp_index = temp; k < components; 
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								totals[k] += __GLU_SWAP_2_BYTES(temp_index);
							} else {
								totals[k] += *(const GLushort*)temp_index;
							}
					}
					temp += group_size;
				}
				temp0 += ysize;
			}

			outindex = (j + (i * widthout)) * components;
			for (k = 0; k < components; k++) {
				dataout[outindex + k] = totals[k]/area;
				/*printf("totals[%d] = %f\n", k, totals[k]);*/
			}
			lowx_int = highx_int;
			lowx_float = highx_float;
			highx_int += convx_int;
			highx_float += convx_float;
			if(highx_float > 1) {
				highx_float -= 1.0;
				highx_int++;
			}
		}
		lowy_int = highy_int;
		lowy_float = highy_float;
		highy_int += convy_int;
		highy_float += convy_float;
		if(highy_float > 1) {
			highy_float -= 1.0;
			highy_int++;
		}
	}
}

static void scale_internal_short(GLint components, GLint widthin,
								 GLint heightin, const GLshort *datain,
								 GLint widthout, GLint heightout,
								 GLshort *dataout, GLint element_size,
								 GLint ysize, GLint group_size,
								 GLint myswap_bytes)
{
	float x, convx;
	float y, convy;
	float percent;
	/* Max components in a format is 4, so... */
	float totals[4];
	float area;
	int i,j,k,xindex;

	const char *temp, *temp0;
	const char *temp_index;
	int outindex;

	int lowx_int, highx_int, lowy_int, highy_int;
	float x_percent, y_percent;
	float lowx_float, highx_float, lowy_float, highy_float;
	float convy_float, convx_float;
	int convy_int, convx_int;
	int l, m;
	const char *left, *right;

	GLushort swapbuf;	/* unsigned buffer */

	if (widthin == widthout*2 && heightin == heightout*2) {
		halveImage_short(components, widthin, heightin,
			(const GLshort *)datain, (GLshort *)dataout,
			element_size, ysize, group_size, myswap_bytes);
		return;
	}
	convy = (float) heightin/heightout;
	convx = (float) widthin/widthout;
	convy_int = floor(convy);
	convy_float = convy - convy_int;
	convx_int = floor(convx);
	convx_float = convx - convx_int;

	area = convx * convy;

	lowy_int = 0;
	lowy_float = 0;
	highy_int = convy_int;
	highy_float = convy_float;

	for (i = 0; i < heightout; i++) {
		lowx_int = 0;
		lowx_float = 0;
		highx_int = convx_int;
		highx_float = convx_float;

		for (j = 0; j < widthout; j++) {
			/*
			** Ok, now apply box filter to box that goes from (lowx, lowy)
			** to (highx, highy) on input data into this pixel on output
			** data.
			*/
			totals[0] = totals[1] = totals[2] = totals[3] = 0.0;

			/* calculate the value for pixels in the 1st row */
			xindex = lowx_int*group_size;
			if((highy_int>lowy_int) && (highx_int>lowx_int)) {

				y_percent = 1-lowy_float;
				temp = (const char *)datain + xindex + lowy_int * ysize;
				percent = y_percent * (1-lowx_float);
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_2_BYTES(temp_index);
							totals[k] += *(const GLshort*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLshort*)temp_index * percent;
						}
				}
				left = temp;
				for(l = lowx_int+1; l < highx_int; l++) {
					temp += group_size;
					for (k = 0, temp_index = temp; k < components;
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								swapbuf = __GLU_SWAP_2_BYTES(temp_index);
								totals[k] += *(const GLshort*)&swapbuf * y_percent;
							} else {
								totals[k] += *(const GLshort*)temp_index * y_percent;
							}
					}
				}
				temp += group_size;
				right = temp;
				percent = y_percent * highx_float;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_2_BYTES(temp_index);
							totals[k] += *(const GLshort*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLshort*)temp_index * percent;
						}
				}

				/* calculate the value for pixels in the last row */
				y_percent = highy_float;
				percent = y_percent * (1-lowx_float);
				temp = (const char *)datain + xindex + highy_int * ysize;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_2_BYTES(temp_index);
							totals[k] += *(const GLshort*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLshort*)temp_index * percent;
						}
				}
				for(l = lowx_int+1; l < highx_int; l++) {
					temp += group_size;
					for (k = 0, temp_index = temp; k < components;
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								swapbuf = __GLU_SWAP_2_BYTES(temp_index);
								totals[k] += *(const GLshort*)&swapbuf * y_percent;
							} else {
								totals[k] += *(const GLshort*)temp_index * y_percent;
							}
					}
				}
				temp += group_size;
				percent = y_percent * highx_float;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_2_BYTES(temp_index);
							totals[k] += *(const GLshort*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLshort*)temp_index * percent;
						}
				}

				/* calculate the value for pixels in the 1st and last column */
				for(m = lowy_int+1; m < highy_int; m++) {
					left += ysize;
					right += ysize;
					for (k = 0; k < components;
						k++, left += element_size, right += element_size) {
							if (myswap_bytes) {
								swapbuf = __GLU_SWAP_2_BYTES(left);
								totals[k] += *(const GLshort*)&swapbuf * (1-lowx_float);
								swapbuf = __GLU_SWAP_2_BYTES(right);
								totals[k] += *(const GLshort*)&swapbuf * highx_float;
							} else {
								totals[k] += *(const GLshort*)left * (1-lowx_float)
									+ *(const GLshort*)right * highx_float;
							}
					}
				}
			} else if (highy_int > lowy_int) {
				x_percent = highx_float - lowx_float;
				percent = (1-lowy_float)*x_percent;
				temp = (const char *)datain + xindex + lowy_int*ysize;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_2_BYTES(temp_index);
							totals[k] += *(const GLshort*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLshort*)temp_index * percent;
						}
				}
				for(m = lowy_int+1; m < highy_int; m++) {
					temp += ysize;
					for (k = 0, temp_index = temp; k < components;
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								swapbuf = __GLU_SWAP_2_BYTES(temp_index);
								totals[k] += *(const GLshort*)&swapbuf * x_percent;
							} else {
								totals[k] += *(const GLshort*)temp_index * x_percent;
							}
					}
				}
				percent = x_percent * highy_float;
				temp += ysize;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_2_BYTES(temp_index);
							totals[k] += *(const GLshort*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLshort*)temp_index * percent;
						}
				}
			} else if (highx_int > lowx_int) {
				y_percent = highy_float - lowy_float;
				percent = (1-lowx_float)*y_percent;

				temp = (const char *)datain + xindex + lowy_int*ysize;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_2_BYTES(temp_index);
							totals[k] += *(const GLshort*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLshort*)temp_index * percent;
						}
				}
				for (l = lowx_int+1; l < highx_int; l++) {
					temp += group_size;
					for (k = 0, temp_index = temp; k < components;
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								swapbuf = __GLU_SWAP_2_BYTES(temp_index);
								totals[k] += *(const GLshort*)&swapbuf * y_percent;
							} else {
								totals[k] += *(const GLshort*)temp_index * y_percent;
							}
					}
				}
				temp += group_size;
				percent = y_percent * highx_float;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_2_BYTES(temp_index);
							totals[k] += *(const GLshort*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLshort*)temp_index * percent;
						}
				}
			} else {
				percent = (highy_float-lowy_float)*(highx_float-lowx_float);
				temp = (const char *)datain + xindex + lowy_int * ysize;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_2_BYTES(temp_index);
							totals[k] += *(const GLshort*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLshort*)temp_index * percent;
						}
				}
			}

			/* this is for the pixels in the body */
			temp0 = (const char *)datain + xindex + group_size +
				(lowy_int+1)*ysize;
			for (m = lowy_int+1; m < highy_int; m++) {
				temp = temp0;
				for(l = lowx_int+1; l < highx_int; l++) {
					for (k = 0, temp_index = temp; k < components;
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								swapbuf = __GLU_SWAP_2_BYTES(temp_index);
								totals[k] += *(const GLshort*)&swapbuf; 
							} else {
								totals[k] += *(const GLshort*)temp_index;
							}
					}
					temp += group_size;
				}
				temp0 += ysize;
			}

			outindex = (j + (i * widthout)) * components;
			for (k = 0; k < components; k++) {
				dataout[outindex + k] = totals[k]/area;
				/*printf("totals[%d] = %f\n", k, totals[k]);*/
			}
			lowx_int = highx_int;
			lowx_float = highx_float;
			highx_int += convx_int;
			highx_float += convx_float;
			if(highx_float > 1) {
				highx_float -= 1.0;
				highx_int++;
			}
		}
		lowy_int = highy_int;
		lowy_float = highy_float;
		highy_int += convy_int;
		highy_float += convy_float;
		if(highy_float > 1) {
			highy_float -= 1.0;
			highy_int++;
		}
	}
}

static void scale_internal_uint(GLint components, GLint widthin,
								GLint heightin, const GLuint *datain,
								GLint widthout, GLint heightout,
								GLuint *dataout, GLint element_size,
								GLint ysize, GLint group_size,
								GLint myswap_bytes)
{
	float x, convx;
	float y, convy;
	float percent;
	/* Max components in a format is 4, so... */
	float totals[4];
	float area;
	int i,j,k,xindex;

	const char *temp, *temp0;
	const char *temp_index;
	int outindex;

	int lowx_int, highx_int, lowy_int, highy_int;
	float x_percent, y_percent;
	float lowx_float, highx_float, lowy_float, highy_float;
	float convy_float, convx_float;
	int convy_int, convx_int;
	int l, m;
	const char *left, *right;

	if (widthin == widthout*2 && heightin == heightout*2) {
		halveImage_uint(components, widthin, heightin,
			(const GLuint *)datain, (GLuint *)dataout,
			element_size, ysize, group_size, myswap_bytes);
		return;
	}
	convy = (float) heightin/heightout;
	convx = (float) widthin/widthout;
	convy_int = floor(convy);
	convy_float = convy - convy_int;
	convx_int = floor(convx);
	convx_float = convx - convx_int;

	area = convx * convy;

	lowy_int = 0;
	lowy_float = 0;
	highy_int = convy_int;
	highy_float = convy_float;

	for (i = 0; i < heightout; i++) {
		lowx_int = 0;
		lowx_float = 0;
		highx_int = convx_int;
		highx_float = convx_float;

		for (j = 0; j < widthout; j++) {
			/*
			** Ok, now apply box filter to box that goes from (lowx, lowy)
			** to (highx, highy) on input data into this pixel on output
			** data.
			*/
			totals[0] = totals[1] = totals[2] = totals[3] = 0.0;

			/* calculate the value for pixels in the 1st row */
			xindex = lowx_int*group_size;
			if((highy_int>lowy_int) && (highx_int>lowx_int)) {

				y_percent = 1-lowy_float;
				temp = (const char *)datain + xindex + lowy_int * ysize;
				percent = y_percent * (1-lowx_float);
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							totals[k] += __GLU_SWAP_4_BYTES(temp_index) * percent;
						} else {
							totals[k] += *(const GLuint*)temp_index * percent;
						}
				}
				left = temp;
				for(l = lowx_int+1; l < highx_int; l++) {
					temp += group_size;
					for (k = 0, temp_index = temp; k < components;
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								totals[k] += 
									__GLU_SWAP_4_BYTES(temp_index) * y_percent;
							} else {
								totals[k] += *(const GLuint*)temp_index * y_percent;
							}
					}
				}
				temp += group_size;
				right = temp;
				percent = y_percent * highx_float;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							totals[k] += __GLU_SWAP_4_BYTES(temp_index) * percent;
						} else {
							totals[k] += *(const GLuint*)temp_index * percent;
						}
				}

				/* calculate the value for pixels in the last row */
				y_percent = highy_float;
				percent = y_percent * (1-lowx_float);
				temp = (const char *)datain + xindex + highy_int * ysize;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							totals[k] += __GLU_SWAP_4_BYTES(temp_index) * percent;
						} else {
							totals[k] += *(const GLuint*)temp_index * percent;
						}
				}
				for(l = lowx_int+1; l < highx_int; l++) {
					temp += group_size;
					for (k = 0, temp_index = temp; k < components;
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								totals[k] += 
									__GLU_SWAP_4_BYTES(temp_index) * y_percent;
							} else {
								totals[k] += *(const GLuint*)temp_index * y_percent;
							}
					}
				}
				temp += group_size;
				percent = y_percent * highx_float;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							totals[k] += __GLU_SWAP_4_BYTES(temp_index) * percent;
						} else {
							totals[k] += *(const GLuint*)temp_index * percent;
						}
				}

				/* calculate the value for pixels in the 1st and last column */
				for(m = lowy_int+1; m < highy_int; m++) {
					left += ysize;
					right += ysize;
					for (k = 0; k < components;
						k++, left += element_size, right += element_size) {
							if (myswap_bytes) {
								totals[k] +=
									__GLU_SWAP_4_BYTES(left) * (1-lowx_float)
									+ __GLU_SWAP_4_BYTES(right) * highx_float;
							} else {
								totals[k] += *(const GLuint*)left * (1-lowx_float)
									+ *(const GLuint*)right * highx_float;
							}
					}
				}
			} else if (highy_int > lowy_int) {
				x_percent = highx_float - lowx_float;
				percent = (1-lowy_float)*x_percent;
				temp = (const char *)datain + xindex + lowy_int*ysize;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							totals[k] += __GLU_SWAP_4_BYTES(temp_index) * percent;
						} else {
							totals[k] += *(const GLuint*)temp_index * percent;
						}
				}
				for(m = lowy_int+1; m < highy_int; m++) {
					temp += ysize;
					for (k = 0, temp_index = temp; k < components;
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								totals[k] += 
									__GLU_SWAP_4_BYTES(temp_index) * x_percent;
							} else {
								totals[k] += *(const GLuint*)temp_index * x_percent;
							}
					}
				}
				percent = x_percent * highy_float;
				temp += ysize;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							totals[k] += __GLU_SWAP_4_BYTES(temp_index) * percent;
						} else {
							totals[k] += *(const GLuint*)temp_index * percent;
						}
				}
			} else if (highx_int > lowx_int) {
				y_percent = highy_float - lowy_float;
				percent = (1-lowx_float)*y_percent;

				temp = (const char *)datain + xindex + lowy_int*ysize;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							totals[k] += __GLU_SWAP_4_BYTES(temp_index) * percent;
						} else {
							totals[k] += *(const GLuint*)temp_index * percent;
						}
				}
				for (l = lowx_int+1; l < highx_int; l++) {
					temp += group_size;
					for (k = 0, temp_index = temp; k < components;
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								totals[k] += 
									__GLU_SWAP_4_BYTES(temp_index) * y_percent;
							} else {
								totals[k] += *(const GLuint*)temp_index * y_percent;
							}
					}
				}
				temp += group_size;
				percent = y_percent * highx_float;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							totals[k] += __GLU_SWAP_4_BYTES(temp_index) * percent;
						} else {
							totals[k] += *(const GLuint*)temp_index * percent;
						}
				}
			} else {
				percent = (highy_float-lowy_float)*(highx_float-lowx_float);
				temp = (const char *)datain + xindex + lowy_int * ysize;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							totals[k] += __GLU_SWAP_4_BYTES(temp_index) * percent;
						} else {
							totals[k] += *(const GLuint*)temp_index * percent;
						}
				}
			}

			/* this is for the pixels in the body */
			temp0 = (const char *)datain + xindex + group_size +
				(lowy_int+1)*ysize;
			for (m = lowy_int+1; m < highy_int; m++) {
				temp = temp0;
				for(l = lowx_int+1; l < highx_int; l++) {
					for (k = 0, temp_index = temp; k < components;
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								totals[k] += __GLU_SWAP_4_BYTES(temp_index);
							} else {
								totals[k] += *(const GLuint*)temp_index;
							}
					}
					temp += group_size;
				}
				temp0 += ysize;
			}

			outindex = (j + (i * widthout)) * components;
			for (k = 0; k < components; k++) {
				/* clamp at UINT_MAX */
				float value= totals[k]/area;
				if (value >= (float) UINT_MAX) {	/* need '=' */
					dataout[outindex + k] = UINT_MAX;
				}
				else dataout[outindex + k] = value;
			}
			lowx_int = highx_int;
			lowx_float = highx_float;
			highx_int += convx_int;
			highx_float += convx_float;
			if(highx_float > 1) {
				highx_float -= 1.0;
				highx_int++;
			}
		}
		lowy_int = highy_int;
		lowy_float = highy_float;
		highy_int += convy_int;
		highy_float += convy_float;
		if(highy_float > 1) {
			highy_float -= 1.0;
			highy_int++;
		}
	}
}



static void scale_internal_int(GLint components, GLint widthin,
							   GLint heightin, const GLint *datain,
							   GLint widthout, GLint heightout,
							   GLint *dataout, GLint element_size,
							   GLint ysize, GLint group_size,
							   GLint myswap_bytes)
{
	float x, convx;
	float y, convy;
	float percent;
	/* Max components in a format is 4, so... */
	float totals[4];
	float area;
	int i,j,k,xindex;

	const char *temp, *temp0;
	const char *temp_index;
	int outindex;

	int lowx_int, highx_int, lowy_int, highy_int;
	float x_percent, y_percent;
	float lowx_float, highx_float, lowy_float, highy_float;
	float convy_float, convx_float;
	int convy_int, convx_int;
	int l, m;
	const char *left, *right;

	GLuint swapbuf;	/* unsigned buffer */

	if (widthin == widthout*2 && heightin == heightout*2) {
		halveImage_int(components, widthin, heightin,
			(const GLint *)datain, (GLint *)dataout,
			element_size, ysize, group_size, myswap_bytes);
		return;
	}
	convy = (float) heightin/heightout;
	convx = (float) widthin/widthout;
	convy_int = floor(convy);
	convy_float = convy - convy_int;
	convx_int = floor(convx);
	convx_float = convx - convx_int;

	area = convx * convy;

	lowy_int = 0;
	lowy_float = 0;
	highy_int = convy_int;
	highy_float = convy_float;

	for (i = 0; i < heightout; i++) {
		lowx_int = 0;
		lowx_float = 0;
		highx_int = convx_int;
		highx_float = convx_float;

		for (j = 0; j < widthout; j++) {
			/*
			** Ok, now apply box filter to box that goes from (lowx, lowy)
			** to (highx, highy) on input data into this pixel on output
			** data.
			*/
			totals[0] = totals[1] = totals[2] = totals[3] = 0.0;

			/* calculate the value for pixels in the 1st row */
			xindex = lowx_int*group_size;
			if((highy_int>lowy_int) && (highx_int>lowx_int)) {

				y_percent = 1-lowy_float;
				temp = (const char *)datain + xindex + lowy_int * ysize;
				percent = y_percent * (1-lowx_float);
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_4_BYTES(temp_index);
							totals[k] += *(const GLint*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLint*)temp_index * percent;
						}
				}
				left = temp;
				for(l = lowx_int+1; l < highx_int; l++) {
					temp += group_size;
					for (k = 0, temp_index = temp; k < components;
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								swapbuf = __GLU_SWAP_4_BYTES(temp_index);
								totals[k] += *(const GLint*)&swapbuf * y_percent;
							} else {
								totals[k] += *(const GLint*)temp_index * y_percent;
							}
					}
				}
				temp += group_size;
				right = temp;
				percent = y_percent * highx_float;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_4_BYTES(temp_index);
							totals[k] += *(const GLint*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLint*)temp_index * percent;
						}
				}

				/* calculate the value for pixels in the last row */
				y_percent = highy_float;
				percent = y_percent * (1-lowx_float);
				temp = (const char *)datain + xindex + highy_int * ysize;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_4_BYTES(temp_index);
							totals[k] += *(const GLint*)&swapbuf  * percent;
						} else {
							totals[k] += *(const GLint*)temp_index * percent;
						}
				}
				for(l = lowx_int+1; l < highx_int; l++) {
					temp += group_size;
					for (k = 0, temp_index = temp; k < components;
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								swapbuf = __GLU_SWAP_4_BYTES(temp_index);
								totals[k] += *(const GLint*)&swapbuf * y_percent;
							} else {
								totals[k] += *(const GLint*)temp_index * y_percent;
							}
					}
				}
				temp += group_size;
				percent = y_percent * highx_float;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_4_BYTES(temp_index);
							totals[k] += *(const GLint*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLint*)temp_index * percent;
						}
				}

				/* calculate the value for pixels in the 1st and last column */
				for(m = lowy_int+1; m < highy_int; m++) {
					left += ysize;
					right += ysize;
					for (k = 0; k < components;
						k++, left += element_size, right += element_size) {
							if (myswap_bytes) {
								swapbuf = __GLU_SWAP_4_BYTES(left);
								totals[k] += *(const GLint*)&swapbuf * (1-lowx_float);
								swapbuf = __GLU_SWAP_4_BYTES(right);
								totals[k] += *(const GLint*)&swapbuf * highx_float;
							} else {
								totals[k] += *(const GLint*)left * (1-lowx_float)
									+ *(const GLint*)right * highx_float;
							}
					}
				}
			} else if (highy_int > lowy_int) {
				x_percent = highx_float - lowx_float;
				percent = (1-lowy_float)*x_percent;
				temp = (const char *)datain + xindex + lowy_int*ysize;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_4_BYTES(temp_index);
							totals[k] += *(const GLint*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLint*)temp_index * percent;
						}
				}
				for(m = lowy_int+1; m < highy_int; m++) {
					temp += ysize;
					for (k = 0, temp_index = temp; k < components;
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								swapbuf = __GLU_SWAP_4_BYTES(temp_index);
								totals[k] += *(const GLint*)&swapbuf * x_percent;
							} else {
								totals[k] += *(const GLint*)temp_index * x_percent;
							}
					}
				}
				percent = x_percent * highy_float;
				temp += ysize;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_4_BYTES(temp_index);
							totals[k] += *(const GLint*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLint*)temp_index * percent;
						}
				}
			} else if (highx_int > lowx_int) {
				y_percent = highy_float - lowy_float;
				percent = (1-lowx_float)*y_percent;

				temp = (const char *)datain + xindex + lowy_int*ysize;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_4_BYTES(temp_index);
							totals[k] += *(const GLint*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLint*)temp_index * percent;
						}
				}
				for (l = lowx_int+1; l < highx_int; l++) {
					temp += group_size;
					for (k = 0, temp_index = temp; k < components;
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								swapbuf = __GLU_SWAP_4_BYTES(temp_index);
								totals[k] += *(const GLint*)&swapbuf * y_percent;
							} else {
								totals[k] += *(const GLint*)temp_index * y_percent;
							}
					}
				}
				temp += group_size;
				percent = y_percent * highx_float;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_4_BYTES(temp_index);
							totals[k] += *(const GLint*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLint*)temp_index * percent;
						}
				}
			} else {
				percent = (highy_float-lowy_float)*(highx_float-lowx_float);
				temp = (const char *)datain + xindex + lowy_int * ysize;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_4_BYTES(temp_index);
							totals[k] += *(const GLint*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLint*)temp_index * percent;
						}
				}
			}

			/* this is for the pixels in the body */
			temp0 = (const char *)datain + xindex + group_size +
				(lowy_int+1)*ysize;
			for (m = lowy_int+1; m < highy_int; m++) {
				temp = temp0;
				for(l = lowx_int+1; l < highx_int; l++) {
					for (k = 0, temp_index = temp; k < components;
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								swapbuf = __GLU_SWAP_4_BYTES(temp_index);
								totals[k] += *(const GLint*)&swapbuf;
							} else {
								totals[k] += *(const GLint*)temp_index;
							}
					}
					temp += group_size;
				}
				temp0 += ysize;
			}

			outindex = (j + (i * widthout)) * components;
			for (k = 0; k < components; k++) {
				dataout[outindex + k] = totals[k]/area;
				/*printf("totals[%d] = %f\n", k, totals[k]);*/
			}
			lowx_int = highx_int;
			lowx_float = highx_float;
			highx_int += convx_int;
			highx_float += convx_float;
			if(highx_float > 1) {
				highx_float -= 1.0;
				highx_int++;
			}
		}
		lowy_int = highy_int;
		lowy_float = highy_float;
		highy_int += convy_int;
		highy_float += convy_float;
		if(highy_float > 1) {
			highy_float -= 1.0;
			highy_int++;
		}
	}
}



static void scale_internal_float(GLint components, GLint widthin,
								 GLint heightin, const GLfloat *datain,
								 GLint widthout, GLint heightout,
								 GLfloat *dataout, GLint element_size,
								 GLint ysize, GLint group_size,
								 GLint myswap_bytes)
{
	float x, convx;
	float y, convy;
	float percent;
	/* Max components in a format is 4, so... */
	float totals[4];
	float area;
	int i,j,k,xindex;

	const char *temp, *temp0;
	const char *temp_index;
	int outindex;

	int lowx_int, highx_int, lowy_int, highy_int;
	float x_percent, y_percent;
	float lowx_float, highx_float, lowy_float, highy_float;
	float convy_float, convx_float;
	int convy_int, convx_int;
	int l, m;
	const char *left, *right;

	GLuint swapbuf;	/* unsigned buffer */

	if (widthin == widthout*2 && heightin == heightout*2) {
		halveImage_float(components, widthin, heightin,
			(const GLfloat *)datain, (GLfloat *)dataout,
			element_size, ysize, group_size, myswap_bytes);
		return;
	}
	convy = (float) heightin/heightout;
	convx = (float) widthin/widthout;
	convy_int = floor(convy);
	convy_float = convy - convy_int;
	convx_int = floor(convx);
	convx_float = convx - convx_int;

	area = convx * convy;

	lowy_int = 0;
	lowy_float = 0;
	highy_int = convy_int;
	highy_float = convy_float;

	for (i = 0; i < heightout; i++) {
		lowx_int = 0;
		lowx_float = 0;
		highx_int = convx_int;
		highx_float = convx_float;

		for (j = 0; j < widthout; j++) {
			/*
			** Ok, now apply box filter to box that goes from (lowx, lowy)
			** to (highx, highy) on input data into this pixel on output
			** data.
			*/
			totals[0] = totals[1] = totals[2] = totals[3] = 0.0;

			/* calculate the value for pixels in the 1st row */
			xindex = lowx_int*group_size;
			if((highy_int>lowy_int) && (highx_int>lowx_int)) {

				y_percent = 1-lowy_float;
				temp = (const char *)datain + xindex + lowy_int * ysize;
				percent = y_percent * (1-lowx_float);
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_4_BYTES(temp_index);
							totals[k] += *(const GLfloat*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLfloat*)temp_index * percent;
						}
				}
				left = temp;
				for(l = lowx_int+1; l < highx_int; l++) {
					temp += group_size;
					for (k = 0, temp_index = temp; k < components;
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								swapbuf = __GLU_SWAP_4_BYTES(temp_index);
								totals[k] += *(const GLfloat*)&swapbuf * y_percent;
							} else {
								totals[k] += *(const GLfloat*)temp_index * y_percent;
							}
					}
				}
				temp += group_size;
				right = temp;
				percent = y_percent * highx_float;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_4_BYTES(temp_index);
							totals[k] += *(const GLfloat*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLfloat*)temp_index * percent;
						}
				}

				/* calculate the value for pixels in the last row */
				y_percent = highy_float;
				percent = y_percent * (1-lowx_float);
				temp = (const char *)datain + xindex + highy_int * ysize;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_4_BYTES(temp_index);
							totals[k] += *(const GLfloat*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLfloat*)temp_index * percent;
						}
				}
				for(l = lowx_int+1; l < highx_int; l++) {
					temp += group_size;
					for (k = 0, temp_index = temp; k < components;
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								swapbuf = __GLU_SWAP_4_BYTES(temp_index);
								totals[k] += *(const GLfloat*)&swapbuf * y_percent;
							} else {
								totals[k] += *(const GLfloat*)temp_index * y_percent;
							}
					}
				}
				temp += group_size;
				percent = y_percent * highx_float;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_4_BYTES(temp_index);
							totals[k] += *(const GLfloat*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLfloat*)temp_index * percent;
						}
				}

				/* calculate the value for pixels in the 1st and last column */
				for(m = lowy_int+1; m < highy_int; m++) {
					left += ysize;
					right += ysize;
					for (k = 0; k < components;
						k++, left += element_size, right += element_size) {
							if (myswap_bytes) {
								swapbuf = __GLU_SWAP_4_BYTES(left);
								totals[k] += *(const GLfloat*)&swapbuf * (1-lowx_float);
								swapbuf = __GLU_SWAP_4_BYTES(right);
								totals[k] += *(const GLfloat*)&swapbuf * highx_float;
							} else {
								totals[k] += *(const GLfloat*)left * (1-lowx_float)
									+ *(const GLfloat*)right * highx_float;
							}
					}
				}
			} else if (highy_int > lowy_int) {
				x_percent = highx_float - lowx_float;
				percent = (1-lowy_float)*x_percent;
				temp = (const char *)datain + xindex + lowy_int*ysize;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_4_BYTES(temp_index);
							totals[k] += *(const GLfloat*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLfloat*)temp_index * percent;
						}
				}
				for(m = lowy_int+1; m < highy_int; m++) {
					temp += ysize;
					for (k = 0, temp_index = temp; k < components;
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								swapbuf = __GLU_SWAP_4_BYTES(temp_index);
								totals[k] += *(const GLfloat*)&swapbuf * x_percent;
							} else {
								totals[k] += *(const GLfloat*)temp_index * x_percent;
							}
					}
				}
				percent = x_percent * highy_float;
				temp += ysize;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_4_BYTES(temp_index);
							totals[k] += *(const GLfloat*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLfloat*)temp_index * percent;
						}
				}
			} else if (highx_int > lowx_int) {
				y_percent = highy_float - lowy_float;
				percent = (1-lowx_float)*y_percent;

				temp = (const char *)datain + xindex + lowy_int*ysize;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_4_BYTES(temp_index);
							totals[k] += *(const GLfloat*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLfloat*)temp_index * percent;
						}
				}
				for (l = lowx_int+1; l < highx_int; l++) {
					temp += group_size;
					for (k = 0, temp_index = temp; k < components;
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								swapbuf = __GLU_SWAP_4_BYTES(temp_index);
								totals[k] += *(const GLfloat*)&swapbuf * y_percent;
							} else {
								totals[k] += *(const GLfloat*)temp_index * y_percent;
							}
					}
				}
				temp += group_size;
				percent = y_percent * highx_float;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_4_BYTES(temp_index);
							totals[k] += *(const GLfloat*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLfloat*)temp_index * percent;
						}
				}
			} else {
				percent = (highy_float-lowy_float)*(highx_float-lowx_float);
				temp = (const char *)datain + xindex + lowy_int * ysize;
				for (k = 0, temp_index = temp; k < components;
					k++, temp_index += element_size) {
						if (myswap_bytes) {
							swapbuf = __GLU_SWAP_4_BYTES(temp_index);
							totals[k] += *(const GLfloat*)&swapbuf * percent;
						} else {
							totals[k] += *(const GLfloat*)temp_index * percent;
						}
				}
			}

			/* this is for the pixels in the body */
			temp0 = (const char *)datain + xindex + group_size +
				(lowy_int+1)*ysize;
			for (m = lowy_int+1; m < highy_int; m++) {
				temp = temp0;
				for(l = lowx_int+1; l < highx_int; l++) {
					for (k = 0, temp_index = temp; k < components;
						k++, temp_index += element_size) {
							if (myswap_bytes) {
								swapbuf = __GLU_SWAP_4_BYTES(temp_index);
								totals[k] += *(const GLfloat*)&swapbuf;
							} else {
								totals[k] += *(const GLfloat*)temp_index;
							}
					}
					temp += group_size;
				}
				temp0 += ysize;
			}

			outindex = (j + (i * widthout)) * components;
			for (k = 0; k < components; k++) {
				dataout[outindex + k] = totals[k]/area;
				/*printf("totals[%d] = %f\n", k, totals[k]);*/
			}
			lowx_int = highx_int;
			lowx_float = highx_float;
			highx_int += convx_int;
			highx_float += convx_float;
			if(highx_float > 1) {
				highx_float -= 1.0;
				highx_int++;
			}
		}
		lowy_int = highy_int;
		lowy_float = highy_float;
		highy_int += convy_int;
		highy_float += convy_float;
		if(highy_float > 1) {
			highy_float -= 1.0;
			highy_int++;
		}
	}
}
