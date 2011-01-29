switch(type) {
		case GL_UNSIGNED_BYTE:
			halveImage_ubyte(cmpts, newwidth, newheight,
				(GLubyte *)srcImage, (GLubyte *)dstImage, element_size,
				rowsize, group_size);
			break;
		case GL_BYTE:
			halveImage_byte(cmpts, newwidth, newheight,
				(GLbyte *)srcImage, (GLbyte *)dstImage, element_size,
				rowsize, group_size);
			break;
		case GL_UNSIGNED_SHORT:
			halveImage_ushort(cmpts, newwidth, newheight,
				(GLushort *)srcImage, (GLushort *)dstImage, element_size,
				rowsize, group_size, myswap_bytes);
			break;
		case GL_SHORT:
			halveImage_short(cmpts, newwidth, newheight,
				(GLshort *)srcImage, (GLshort *)dstImage, element_size,
				rowsize, group_size, myswap_bytes);
			break;
		case GL_UNSIGNED_INT:
			halveImage_uint(cmpts, newwidth, newheight,
				(GLuint *)srcImage, (GLuint *)dstImage, element_size,
				rowsize, group_size, myswap_bytes);
			break;
		case GL_INT:
			halveImage_int(cmpts, newwidth, newheight,
				(GLint *)srcImage, (GLint *)dstImage, element_size,
				rowsize, group_size, myswap_bytes);
			break;
		case GL_FLOAT:
			halveImage_float(cmpts, newwidth, newheight,
				(GLfloat *)srcImage, (GLfloat *)dstImage, element_size,
				rowsize, group_size, myswap_bytes);
			break;
		case GL_UNSIGNED_BYTE_3_3_2:
			halveImagePackedPixel(3,extract332,shove332,
				newwidth,newheight,
				srcImage,dstImage,element_size,rowsize,
				myswap_bytes);
			break;
		case GL_UNSIGNED_BYTE_2_3_3_REV:
			halveImagePackedPixel(3,extract233rev,shove233rev,
				newwidth,newheight,
				srcImage,dstImage,element_size,rowsize,
				myswap_bytes);
			break;
		case GL_UNSIGNED_SHORT_5_6_5:
			halveImagePackedPixel(3,extract565,shove565,
				newwidth,newheight,
				srcImage,dstImage,element_size,rowsize,
				myswap_bytes);
			break;
		case GL_UNSIGNED_SHORT_5_6_5_REV:
			halveImagePackedPixel(3,extract565rev,shove565rev,
				newwidth,newheight,
				srcImage,dstImage,element_size,rowsize,
				myswap_bytes);
			break;
		case GL_UNSIGNED_SHORT_4_4_4_4:
			halveImagePackedPixel(4,extract4444,shove4444,
				newwidth,newheight,
				srcImage,dstImage,element_size,rowsize,
				myswap_bytes);
			break;
		case GL_UNSIGNED_SHORT_4_4_4_4_REV:
			halveImagePackedPixel(4,extract4444rev,shove4444rev,
				newwidth,newheight,
				srcImage,dstImage,element_size,rowsize,
				myswap_bytes);
			break;
		case GL_UNSIGNED_SHORT_5_5_5_1: 		
			halveImagePackedPixel(4,extract5551,shove5551,
				newwidth,newheight,
				srcImage,dstImage,element_size,rowsize,
				myswap_bytes);
			break;
		case GL_UNSIGNED_SHORT_1_5_5_5_REV: 		
			halveImagePackedPixel(4,extract1555rev,shove1555rev,
				newwidth,newheight,
				srcImage,dstImage,element_size,rowsize,
				myswap_bytes);
			break;
		case GL_UNSIGNED_INT_8_8_8_8:
			halveImagePackedPixel(4,extract8888,shove8888,
				newwidth,newheight,
				srcImage,dstImage,element_size,rowsize,
				myswap_bytes);
			break;
		case GL_UNSIGNED_INT_8_8_8_8_REV:
			halveImagePackedPixel(4,extract8888rev,shove8888rev,
				newwidth,newheight,
				srcImage,dstImage,element_size,rowsize,
				myswap_bytes);
			break;
		case GL_UNSIGNED_INT_10_10_10_2:
			halveImagePackedPixel(4,extract1010102,shove1010102,
				newwidth,newheight,
				srcImage,dstImage,element_size,rowsize,
				myswap_bytes);
			break;
		case GL_UNSIGNED_INT_2_10_10_10_REV:
			halveImagePackedPixel(4,extract2101010rev,shove2101010rev,
				newwidth,newheight,
				srcImage,dstImage,element_size,rowsize,
				myswap_bytes);
			break;
		default:
			assert(0);
			break;
		}