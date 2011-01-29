#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <malloc.h>
#include <math.h>

#include <ogcsys.h>
#include <gccore.h>
#include <sys/types.h>
#include <wiiuse/wpad.h>

#include "glint.h"
#include "GL/gl.h"
#include "GL/glut.h"

#define DEFAULT_FIFO_SIZE	(256*1024)
 
 
char *__glutProgramName = NULL;
static void *frameBuffer[2] = { NULL, NULL};
GXRModeObj *rmode;
syswd_t watchdog;

u32	fb = 0; 	// initial framebuffer index

/* glut */

void power_off(s32 chan)
	__attribute__ ((no_instrument_function));
void glutInit(int *argcp, char **argv)
	__attribute__ ((no_instrument_function));
void ShowConsole()
	__attribute__ ((no_instrument_function));
void HideConsole()
	__attribute__ ((no_instrument_function));
void glutInitDisplayMode(unsigned int mode)
	__attribute__ ((no_instrument_function));
int glutCreateWindow(const char *title)
	__attribute__ ((no_instrument_function));
void glutSwapBuffers(void)
	__attribute__ ((no_instrument_function));
void glutInitWindowSize(int width, int height)
	__attribute__ ((no_instrument_function));
int glutGet(GLenum type)
	__attribute__ ((no_instrument_function));
void glutDisplayFunc(void (*func)(void))
	__attribute__ ((no_instrument_function));
void glutIdleFunc(void (*func)(void))
	__attribute__ ((no_instrument_function));
extern void do_reset()
	__attribute__ ((no_instrument_function));
void timercallback()
	__attribute__ ((no_instrument_function));
unsigned char getFPS()
	__attribute__ ((no_instrument_function));
void glutMainLoop(void)
	__attribute__ ((no_instrument_function));
void * getFrontFramebuffer()
	__attribute__ ((no_instrument_function));
void * getBackFramebuffer()
	__attribute__ ((no_instrument_function));
void power_off(s32 chan)
	__attribute__ ((no_instrument_function));

void glutInit(int *argcp, char **argv) {
	/*char *str;

	// Determine temporary program name.
	str = strrchr(argv[0], '/');
	if (str == NULL) {
		__glutProgramName = argv[0];
	} else {
	    __glutProgramName = str + 1;
	}*/
	__glutProgramName = "test";

	// init the vi.
	VIDEO_Init();
 
	rmode = VIDEO_GetPreferredMode(NULL);
	
	//initialize gl default values
	glColor3f(1.0,1.0,1.0);
	glTexCoord2f(0.0f, 0.0f);
	glNormal3f(0.0f,0.0f,1.0f);
	
	int i = 0;
	for (i=0;i<8;i++){
		lights[i].pos.v = (guVector){0.0f,0.0f,1.0f};
		lights[i].pos.w = 0;
		
        lights[i].enabled = false;
        lights[i].ambient =  (GXColorf) {0.0, 0.0, 0.0, 1.0};
        lights[i].diffuse =  (GXColorf) {0.0, 0.0, 0.0, 1.0};
        lights[i].specular = (GXColorf) {0.0, 0.0, 0.0, 1.0};
        
        lights[i].spotCutoff = 180;
        lights[i].spotExponent = 0;
        lights[i].spotDir = (guVector) {0.0, 0.0, -1.0};
		
		lights[i].constant = 1;
		lights[i].linear = 0;
		lights[i].quad = 0;
    }
    
    lights[0].diffuse =  (GXColorf) {1.0, 1.0, 1.0, 1.0};        
    lights[0].specular = (GXColorf) {1.0, 1.0, 1.0, 1.0};
    
	globAmbient = (GXColorf) {0.2, 0.2, 0.2, 1.0};

	//material specs
	curmat.emissive = (GXColorf) {0.0, 0.0, 0.0, 1.0};
	curmat.ambient =  (GXColorf) {0.2, 0.2, 0.2, 1.0};
	curmat.diffuse =  (GXColorf) {0.8, 0.8, 0.8, 1.0};
	curmat.specular = (GXColorf) {0.0, 0.0, 0.0, 1.0};
	
	blend_type = GX_BM_NONE;
	blend_src = GX_BL_ONE;
	blend_dst = GX_BL_ZERO;
	blend_op = GX_LO_CLEAR;	
	
	cull_mode = GX_CULL_BACK;
	
	InitStackMtx(&model_stack,32);
	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();
	
	InitStackPrjMtx(&projection_stack,2);
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	
	for(i = 0; i < MAX_NO_TEXTURES; ++i)
	{
		InitStackMtx(texture_stack+i,2);
		glMatrixMode(GL_TEXTURE);
		glActiveTextureARB(GL_TEXTURE0 + i);
		glLoadIdentity();
	}
	
	glActiveTextureARB(GL_TEXTURE0);
	
	norm.enable = false;
	norm.p = _normalelements;
	norm.stride = sizeof(guVector);
	norm.type = GL_FLOAT;
	norm.size = 3;
	
	vert.enable = false;
	vert.p = _vertexelements;
	vert.stride = sizeof(guVector);
	vert.size = 3;
	vert.type = GL_FLOAT;
		
	for(i = 0; i < MAX_NO_TEXTURES; ++i)
	{
		tex[i].p = NULL;
		tex[i].stride = sizeof(TexCoordElement);
		tex[i].size = 2;
		tex[i].type = GL_FLOAT;
		tex[i].enable = false;
	}
	
	//tex[0].p = _texcoordelements;
	
		
	color.enable = false;
	color.p = _colorelements;
	color.stride = sizeof(GXColorf);
	color.size = 4;
	color.type = GL_FLOAT;
	
	curmtx = &model_stack;
	cur_mode = GL_MODELVIEW;
	cur_tex = 0;
	cur_tex_client = 0;

	curmat.shininess = 0.0;

    //texture is disabled by default
	lighting = false;
    
    //setup culling
    gxcullfaceanabled=false; //disable
    gxwinding = GL_CCW;       //counterclockwise
	
	depthtestenabled = GX_FALSE;
	depthfunction = GX_LESS;
	depthupdate = GX_TRUE;
	
	_clearcolor = (GXColor){0, 0, 0, 0xff};
	_cleardepth = 1.;
	
	initTextures();
	initCalllist();
	initTextureSlots();
	
	cur_state = GL_STATE_NONE;
	
	scissor_test = false;
	
	for(i = 0; i < sizeof(Trans)/sizeof(Trans[0]); ++i)
	{
		Trans[i] = (ColorTrans){1,0};
	}
	
	normNear = 0.;
	normFar = 1.;
	
	read_mode = GL_BACK;
	
	copy_mat_enabled = false;
	copy_material = GL_AMBIENT_AND_DIFFUSE;
	
	fog_enable = false;
	fog_mode = GX_FOG_EXP;
	fog_startz = 0.;
	fog_endz = 1.;
	fog_density = 5.5451774444796f;
	fog_color = (GXColor){0,0,0,1};
	
	line_width = 1;
	
	_glInitStacks();
	
	for(i = 0; i < 4; ++i)
	{
		color_write_mask[i] = true;
	}
	
#ifdef HW_RVL
	//WPAD_SetPowerButtonCallback(&power_off);
#endif
}


bool _console_enabled = false;
bool _console_inited = false;

void ShowConsole()
{
	_console_enabled = true;
	
//	if(_console_inited)	CON_StartDraw();
}

void HideConsole()
{
	//CON_StopDraw();
	
	_console_enabled = false;
}

void getVImode(u32 *w, u32 *h)
{
	*w = rmode->viWidth;
	*h = rmode->viHeight;
}

void glutInitDisplayMode(unsigned int mode) {
	// allocate 2 framebuffers for double buffering
	frameBuffer[0] = MEM_K0_TO_K1(SYS_AllocateFramebuffer(rmode));
	frameBuffer[1] = MEM_K0_TO_K1(SYS_AllocateFramebuffer(rmode));
	
	VIDEO_ClearFrameBuffer(rmode,frameBuffer[0], 0);
	VIDEO_ClearFrameBuffer(rmode,frameBuffer[1], 0);

	VIDEO_Configure(rmode);
	VIDEO_SetNextFramebuffer(frameBuffer[fb]);
	VIDEO_SetBlack(FALSE);
	VIDEO_Flush();
	VIDEO_WaitVSync();
	if(rmode->viTVMode&VI_NON_INTERLACE) VIDEO_WaitVSync();
	
	int conX = 30;
	int conY = 30;
	int conHeight = 100;
	int conWidth = rmode->fbWidth-60;
	
	// Initialise the debug console.
	_console_inited = !CON_InitEx(rmode, conX, conY, conWidth, conHeight);
	
	//if(_console_enabled)
//	{
		ShowConsole();
	//}
	//ShowConsole(); CON_SetStipple(0);

	f32 yscale;

	u32 xfbHeight;

	// setup the fifo and then init the flipper
	void *gp_fifo = NULL;
	gp_fifo = memalign(32,DEFAULT_FIFO_SIZE);
	memset(gp_fifo,0,DEFAULT_FIFO_SIZE);
 
	GX_Init(gp_fifo,DEFAULT_FIFO_SIZE);
  
	// other gx setup
	GX_SetViewport(0,0,rmode->fbWidth,rmode->efbHeight,0,1);
	yscale = GX_GetYScaleFactor(rmode->efbHeight,rmode->xfbHeight);
	xfbHeight = GX_SetDispCopyYScale(yscale);
	
	GX_SetScissor(0,0,rmode->fbWidth,rmode->efbHeight);
	fb_max_height = rmode->efbHeight;
	fb_max_width = rmode->fbWidth;
	scissorInfo = (boxInfo){0,0,fb_max_width,fb_max_height};
	viewPort = (boxInfo){0,0,fb_max_width,fb_max_height};
	
	GX_SetDispCopySrc(0,0,rmode->fbWidth,rmode->efbHeight);
	GX_SetDispCopyDst(rmode->fbWidth,xfbHeight);
	GX_SetCopyFilter(rmode->aa,rmode->sample_pattern,GX_TRUE,rmode->vfilter);
	GX_SetFieldMode(rmode->field_rendering,((rmode->viHeight==2*rmode->xfbHeight)?GX_ENABLE:GX_DISABLE));
	
	if (rmode->aa)
		GX_SetPixelFmt(GX_PF_RGB565_Z16, GX_ZC_LINEAR);
	else
		GX_SetPixelFmt(GX_PF_RGB8_Z24, GX_ZC_LINEAR);
		
	GXColor c = (GXColor){0x0,0x0,0x0,0xFF};
	
	GX_SetCopyClear(c, 0);
	GX_CopyDisp(frameBuffer[fb],GX_TRUE);
	GX_SetCopyClear(c, GX_MAX_Z24);
	GX_CopyDisp(frameBuffer[fb],GX_TRUE);
	GX_CopyDisp(frameBuffer[fb],GX_TRUE);
	GX_SetDispCopyGamma(GX_GM_1_0);
	
	
	// setup the vertex attribute table
	// describes the data
	// args: vat location 0-7, type of data, data format, size, scale
	// so for ex. in the first call we are sending position data with
	// 3 values X,Y,Z of size F32. scale sets the number of fractional
	// bits for non float data.
	GX_SetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);		//vertex
	GX_SetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_NRM_XYZ, GX_F32, 0);		//normals
	GX_SetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);	//color
 

	// setup the vertex descriptor
	// tells the flipper to expect direct data
	GX_ClearVtxDesc();
	GX_SetVtxDesc(GX_VA_POS, GX_DIRECT);
 	GX_SetVtxDesc(GX_VA_NRM, GX_DIRECT);
	GX_SetVtxDesc(GX_VA_CLR0, GX_DIRECT);
	GX_SetVtxDesc(GX_VA_TEX0, GX_DIRECT);
	
 
	int i;
	for(i = 0; i < MAX_NO_TEXTURES; ++i)
	{
		GX_SetVtxAttrFmt(GX_VTXFMT0, incTexDesc(i), GX_TEX_ST, GX_F32, 0); 	//texture
	}
	
	GX_SetArray (GX_VA_POS, NULL, 0);
	GX_SetArray (GX_VA_NRM, NULL, 0);
	GX_SetArray (GX_VA_CLR0, NULL, 0);
	for(i = 0; i < MAX_NO_TEXTURES; ++i)
	{
		GX_SetArray (incTexDesc(i), NULL, 0);
	}
	
	// setup texture coordinate generation
	// args: texcoord slot 0-7, matrix type, source to generate texture coordinates from, matrix to use 
	GX_SetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);

	GX_SetNumChans(1); //	<RedShade>	GX_SetNumChans(1); = turn on 1 channel of lighting

	GX_SetNumTexGens(1); //multitexturing so set to 1 for now
	GX_InvalidateTexAll(); //now be carefull as this clears all texture memory could get unpredicted results on second call

	GX_SetTevOrder(GX_TEVSTAGE0, GX_TEXCOORDNULL, GX_TEXMAP_NULL, GX_COLOR0A0);			
	GX_SetTevOp(GX_TEVSTAGE0, GX_PASSCLR);
	
	//GX_SetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_CLEAR);
	GX_SetAlphaUpdate(GX_TRUE);
	
	GX_SetCullMode(GX_CULL_NONE);
	
	GX_DrawDone();
	
	//clean up just to be sure
	ResetArrays();
}

int glutCreateWindow(const char *title) {
	GX_SetModViewport(0,0,rmode->fbWidth,rmode->efbHeight,0,1);
	
	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();
	gluLookAt(0.0F, 0.0F, 0.0F, 0.0F, 0.0F, -1.0F, 0.0F, 1.0F, 0.0F); //setup opengl compat coord system
	return 0;
}

int offset = 10;

float computeFactor()
{
	return ((float)rmode->efbHeight-2*offset)/((float)rmode->efbHeight);
}

void GX_SetModViewport(f32 xOrig,f32 yOrig,f32 wd,f32 ht,f32 nearZ,f32 farZ)
{
	float f = computeFactor();
	
	GX_SetViewport(xOrig, rmode->efbHeight-offset-f*(yOrig+ht), wd, ht*f, nearZ, farZ);
}

void GX_SetModScissor(u32 xOrigin,u32 yOrigin,u32 wd,u32 ht)
{
	float f = computeFactor();
	
	GX_SetScissor(xOrigin, rmode->efbHeight-offset-f*(yOrigin+ht), wd, f*ht);
}

void GX_SetMaxScissor()
{
	GX_SetModScissor(0, 0, rmode->fbWidth,rmode->efbHeight);
}

volatile char FPS = 0;
volatile char incFPS = 0;

void glutSwapBuffers(void) {
	glFlush();
	
	fb ^= 1;		// flip framebuffer				//swapbuffers(DC);
	
	GX_CopyDisp(frameBuffer[fb],GX_FALSE);			//
	
	GX_DrawDone();
	incFPS++;

	if(_console_enabled)
	{
		//CON_FlipStipple();
		//CON_CopyToFB(frameBuffer[fb]);
	}
													//
	VIDEO_SetNextFramebuffer(frameBuffer[fb]);		//
													//
	VIDEO_Flush();									//
													// 
	VIDEO_WaitVSync();								//	
}

void glutInitWindowSize(int width, int height) {
		GX_SetModViewport(0,0,width,height,0,1);
}

int glutGet(GLenum type) {
	int retval = 0;
	switch(type)
	{
	case GLUT_SCREEN_WIDTH: retval = rmode->fbWidth; break;
	case GLUT_SCREEN_HEIGHT: retval = rmode->efbHeight; break;
	case GLUT_INIT_DISPLAY_MODE: retval = GLUT_RGB | GLUT_DOUBLE | GLUT_DEPTH; break;
	}
	return retval;
}

void (*displayfunc)(void) = NULL;

void glutDisplayFunc(void (*func)(void)){
	displayfunc = func;
}

void (*idlefunc)(void) = NULL;

void glutIdleFunc(void (*func)(void)){
	idlefunc = func;
}

volatile unsigned char count;
volatile unsigned char kill;

extern void do_reset();

void timercallback(syswd_t alarm, void *cb)
{
	//count++;
	if(count > 2)
	{
		printf("%d\n",count);
		GX_AbortFrame();
	}
	
	if(count > 10)
	{
		kill = 1;
	}
	
	FPS = incFPS;
	incFPS = 0;
}

unsigned char getFPS()
{
	return FPS;
}

void *glutThread(void *a) {	

	if(displayfunc) displayfunc();
	
	while(1) {
		count = 0;
		if(idlefunc) idlefunc();
		LWP_YieldThread();
	}
	return 0;
}

void glutMainLoop(void){
	struct timespec start;
	struct timespec interval;
	int watchdog_conf = 0;
	
    watchdog_conf = !SYS_CreateAlarm(&watchdog);	
	
	kill = 0;
	
	start.tv_sec = 0;
	start.tv_nsec = 0;
	
	interval.tv_sec = 1;
	interval.tv_nsec = 0;
	
	if(watchdog_conf)
	{
		count = 0;		
		
		SYS_SetPeriodicAlarm(watchdog, &start, &interval, &timercallback, NULL);
	}
	
	lwp_t draw_thread;
	
	LWP_CreateThread(&draw_thread, &glutThread, 0, NULL, 500000, 67);
	
    while(1)
	{
		nanosleep(&interval);
		if(kill)
		{
			do_reset();
		}
	}
	
}

void * getFrontFramebuffer()
{
	return frameBuffer[fb];
}

void * getBackFramebuffer()
{
	return frameBuffer[fb^1];
}

void power_off(s32 chan)
{
	kill = 1;
}
