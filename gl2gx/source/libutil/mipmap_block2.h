switch(type) {
	case GL_UNSIGNED_BYTE:
		scale_internal_ubyte(cmpts, width, height,
			(const GLubyte *)usersImage, newwidth, newheight,
			(GLubyte *)dstImage, element_size,
			rowsize, group_size);
		break;
	case GL_BYTE:
		scale_internal_byte(cmpts, width, height,
			(const GLbyte *)usersImage, newwidth, newheight, 
			(GLbyte *)dstImage, element_size,
			rowsize, group_size);
		break;
	case GL_UNSIGNED_SHORT:
		scale_internal_ushort(cmpts, width, height,
			(const GLushort *)usersImage, newwidth, newheight,
			(GLushort *)dstImage, element_size,
			rowsize, group_size, myswap_bytes);
		break;
	case GL_SHORT:
		scale_internal_short(cmpts, width, height,
			(const GLshort *)usersImage, newwidth, newheight,
			(GLshort *)dstImage, element_size,
			rowsize, group_size, myswap_bytes);
		break;
	case GL_UNSIGNED_INT:
		scale_internal_uint(cmpts, width, height,
			(const GLuint *)usersImage, newwidth, newheight,
			(GLuint *)dstImage, element_size,
			rowsize, group_size, myswap_bytes);
		break;
	case GL_INT:
		scale_internal_int(cmpts, width, height,
			(const GLint *)usersImage, newwidth, newheight, 
			(GLint *)dstImage, element_size,
			rowsize, group_size, myswap_bytes);
		break;
	case GL_FLOAT:
		scale_internal_float(cmpts, width, height,
			(const GLfloat *)usersImage, newwidth, newheight, 
			(GLfloat *)dstImage, element_size,
			rowsize, group_size, myswap_bytes);
		break;
	case GL_UNSIGNED_BYTE_3_3_2:
		scaleInternalPackedPixel(3,extract332,shove332,
			width, height,usersImage,
			newwidth,newheight,(void *)dstImage,
			element_size,rowsize,myswap_bytes);
		break;
	case GL_UNSIGNED_BYTE_2_3_3_REV:
		scaleInternalPackedPixel(3,extract233rev,shove233rev,
			width, height,usersImage,
			newwidth,newheight,(void *)dstImage,
			element_size,rowsize,myswap_bytes);
		break;
	case GL_UNSIGNED_SHORT_5_6_5:
		scaleInternalPackedPixel(3,extract565,shove565,
			width, height,usersImage,
			newwidth,newheight,(void *)dstImage,
			element_size,rowsize,myswap_bytes);
		break;
	case GL_UNSIGNED_SHORT_5_6_5_REV:
		scaleInternalPackedPixel(3,extract565rev,shove565rev,
			width, height,usersImage,
			newwidth,newheight,(void *)dstImage,
			element_size,rowsize,myswap_bytes);
		break;
	case GL_UNSIGNED_SHORT_4_4_4_4:
		scaleInternalPackedPixel(4,extract4444,shove4444,
			width, height,usersImage,
			newwidth,newheight,(void *)dstImage,
			element_size,rowsize,myswap_bytes);
		break;
	case GL_UNSIGNED_SHORT_4_4_4_4_REV:
		scaleInternalPackedPixel(4,extract4444rev,shove4444rev,
			width, height,usersImage,
			newwidth,newheight,(void *)dstImage,
			element_size,rowsize,myswap_bytes);
		break;
	case GL_UNSIGNED_SHORT_5_5_5_1:
		scaleInternalPackedPixel(4,extract5551,shove5551,
			width, height,usersImage,
			newwidth,newheight,(void *)dstImage,
			element_size,rowsize,myswap_bytes);
		break;
	case GL_UNSIGNED_SHORT_1_5_5_5_REV:
		scaleInternalPackedPixel(4,extract1555rev,shove1555rev,
			width, height,usersImage,
			newwidth,newheight,(void *)dstImage,
			element_size,rowsize,myswap_bytes);
		break;
	case GL_UNSIGNED_INT_8_8_8_8:
		scaleInternalPackedPixel(4,extract8888,shove8888,
			width, height,usersImage,
			newwidth,newheight,(void *)dstImage,
			element_size,rowsize,myswap_bytes);
		break;
	case GL_UNSIGNED_INT_8_8_8_8_REV:
		scaleInternalPackedPixel(4,extract8888rev,shove8888rev,
			width, height,usersImage,
			newwidth,newheight,(void *)dstImage,
			element_size,rowsize,myswap_bytes);
		break;
	case GL_UNSIGNED_INT_10_10_10_2:
		scaleInternalPackedPixel(4,extract1010102,shove1010102,
			width, height,usersImage,
			newwidth,newheight,(void *)dstImage,
			element_size,rowsize,myswap_bytes);
		break;
	case GL_UNSIGNED_INT_2_10_10_10_REV:
		scaleInternalPackedPixel(4,extract2101010rev,shove2101010rev,
			width, height,usersImage,
			newwidth,newheight,(void *)dstImage,
			element_size,rowsize,myswap_bytes);
		break;
	default:
		assert(0);
		break;
		}