// simple balance board data -> console dumper
// (c) Ave 2008 <ta@iki.fi>

#include <stdio.h>
#include <stdlib.h>
#include <gccore.h>
#include <wiiuse/wpad.h>
//#include <debug.h>

static void *xfb = NULL;
static GXRModeObj *rmode = NULL;

//---------------------------------------------------------------------------------
int main(int argc, char **argv) {
//---------------------------------------------------------------------------------

	VIDEO_Init();
	rmode = VIDEO_GetPreferredMode(NULL);

	// Allocate memory for the display in the uncached region
	xfb = MEM_K0_TO_K1(SYS_AllocateFramebuffer(rmode));
	
	// Initialise the console, required for printf
	console_init(xfb,20,20,rmode->fbWidth,rmode->xfbHeight,rmode->fbWidth*VI_DISPLAY_PIX_SZ);
	
	// Set up the video registers with the chosen mode
	VIDEO_Configure(rmode);
	
	// Tell the video hardware where our display memory is
	VIDEO_SetNextFramebuffer(xfb);
	
	// Make the display visible
	VIDEO_SetBlack(FALSE);

	// Flush the video register changes to the hardware
	VIDEO_Flush();	
	
	// Wait for Video setup to complete
	VIDEO_WaitVSync();
	if(rmode->viTVMode&VI_NON_INTERLACE) VIDEO_WaitVSync();

	//DEBUG_Init(GDBSTUB_DEVICE_USB, 1);
	WPAD_Init();


	// The console understands VT terminal escape codes
	// This positions the cursor on row 2, column 0
	// we can use variables for this with format codes too
	// e.g. printf ("\x1b[%d;%dH", row, column );
	printf("\x1b[1;0H");
	printf("Please press the front/A-button on the balance board!\n\n");

	int timeout = 10;
	int bbport = 0;
	int i;
	int bbcheck = 0;

	while(bbcheck == 0 && timeout > 1)
		{
			timeout-=1;
			printf("Waiting for balance board ... %d \r", timeout);
			WPAD_ScanPads();
			for(i=0; i<WPAD_MAX_WIIMOTES; i++)
			{
				u32 devtype;
				//_break();
				//s32 res = WPAD_Probe(i, &devtype);
				WPAD_Probe(i, &devtype);
				if(devtype == WPAD_EXP_WIIBOARD)
				{
						printf("Found balance board on channel %d       \n", i);
						bbport = i;
						bbcheck = 1;
						break;
				}
				//else printf("No balance board on channel %d, devtype=%u, result=%d\n", i, devtype, res);
			}
			usleep(1000000);
		}
		if (bbcheck==0) printf("No balance board found!         \n\nPress home-button on wiimote to exit.\n");

	struct expansion_t exp;
	WPAD_Expansion(bbport, &exp);
	int tl, tr, bl, br, x, y;
	int rtl, rtr, rbl, rbr;
	int minrtl=60000, minrtr=60000, minrbl=60000, minrbr=60000;
	int maxrtl=0, maxrtr=0, maxrbl=0, maxrbr=0;
	int offx = 52;
	int offy = 14;

	while(1) {
		WPAD_ScanPads();
		WPAD_Expansion(bbport, &exp);

		if (bbcheck==1) {
		if(exp.type == WPAD_EXP_WIIBOARD)
		{
				printf("\x1b[0;0H");
				printf("\x1b[J");
				printf("\n\n\n");
				printf("TL 00: %05d  TR 00: %05d\n", exp.wb.ctl[0], exp.wb.ctr[0]);
				printf("TL 17: %05d  TR 17: %05d\n", exp.wb.ctl[1], exp.wb.ctr[1]);
				printf("TL 34: %05d  TR 34: %05d\n\n", exp.wb.ctl[2], exp.wb.ctr[2]);

				printf("BL 00: %05d  BR 00: %05d\n", exp.wb.cbl[0], exp.wb.cbr[0]);
				printf("BL 17: %05d  BR 17: %05d\n", exp.wb.cbl[1], exp.wb.cbr[1]);
				printf("BL 34: %05d  BR 34: %05d\n\n", exp.wb.cbl[2], exp.wb.cbr[2]);

				tl = exp.wb.tl;
				tr = exp.wb.tr;
				bl = exp.wb.bl;
                br = exp.wb.br;
				rtl = exp.wb.rtl;
				rtr = exp.wb.rtr;
				rbl = exp.wb.rbl;
                rbr = exp.wb.rbr;
				x = exp.wb.x;
				y = exp.wb.y;

				if (rtl<minrtl) minrtl=rtl;
				if (rtr<minrtr) minrtr=rtr;
				if (rbl<minrbl) minrbl=rbl;
				if (rbr<minrbr) minrbr=rbr;
				if (rtl>maxrtl) maxrtl=rtl;
				if (rtr>maxrtr) maxrtr=rtr;
				if (rbl>maxrbl) maxrbl=rbl;
				if (rbr>maxrbr) maxrbr=rbr;

				printf("     Raw   Intp  RawDelta\n");
				printf("TL:  %05d %05d %d\n", rtl, tl, maxrtl-minrtl);
				printf("TR:  %05d %05d %d\n", rtr, tr, maxrtr-minrtr);
				printf("BL:  %05d %05d %d\n", rbl, bl, maxrbl-minrbl);
				printf("BR:  %05d %05d %d\n", rbr, br, maxrbr-minrbr);
				printf("Sum: %05d %05d", rbr+rtl+rtr+rbl, br+tl+tr+bl);

				printf("\x1b[19;0H");
				printf("X:   %d\n", exp.wb.x);
				printf("Y:   %d\n",exp.wb.y);

				int i;
				printf("TL:  %02d ", tl);
				for (i=0;i<tl;i++) printf("*");
				printf("\nTR:  %02d ", tr);
				for (i=0;i<tr;i++) printf("*");
				printf("\nBL:  %02d ", bl);
				for (i=0;i<bl;i++) printf("*");
				printf("\nBR:  %02d ", br);
				for (i=0;i<br;i++) printf("*");
				printf("\nSum: %03d ", tl+tr+bl+br);
				for (i=0;i<((tl+tr+bl+br)/4);i++) printf("*");

				printf("\x1b[%d;%dH", offy + (y/3) , offx + (x/2) );
				printf("\\/");
				printf("\x1b[%d;%dH", offy + (y/3) +1 , offx + (x/2) );
				printf("/\\");
		}
		if(WPAD_ButtonsDown(bbport) & WPAD_BUTTON_A)
			{
				minrtl=60000, minrtr=60000, minrbl=60000, minrbr=60000;
				maxrtl=0, maxrtr=0, maxrbl=0, maxrbr=0;
			}
		}
		u32 pressed = WPAD_ButtonsDown(0);

		if ( pressed & WPAD_BUTTON_HOME ) exit(0);

		VIDEO_WaitVSync();
	}

	return 0;
}
