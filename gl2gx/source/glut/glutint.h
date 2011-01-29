#ifndef __GLUTINT_H_
#define __GLUTINT_H_

#include <GL/gl.h>
#include <GL/glut.h>


/* GLUT callback function types */
typedef void (*GLUTdisplayCB) (void);
typedef void (*GLUTreshapeCB) (int, int);
typedef void (*GLUTkeyboardCB) (unsigned char, int, int);
typedef void (*GLUTmouseCB) (int, int, int, int);
typedef void (*GLUTmotionCB) (int, int);
typedef void (*GLUTpassiveCB) (int, int);
typedef void (*GLUTentryCB) (int);
typedef void (*GLUTvisibilityCB) (int);
typedef void (*GLUTwindowStatusCB) (int);
typedef void (*GLUTidleCB) (void);
typedef void (*GLUTtimerCB) (int);
typedef void (*GLUTmenuStateCB) (int);  /* DEPRICATED. */
typedef void (*GLUTmenuStatusCB) (int, int, int);
typedef void (*GLUTselectCB) (int);
typedef void (*GLUTspecialCB) (int, int, int);
typedef void (*GLUTspaceMotionCB) (int, int, int);
typedef void (*GLUTspaceRotateCB) (int, int, int);
typedef void (*GLUTspaceButtonCB) (int, int);
typedef void (*GLUTdialsCB) (int, int);
typedef void (*GLUTbuttonBoxCB) (int, int);
typedef void (*GLUTtabletMotionCB) (int, int);
typedef void (*GLUTtabletButtonCB) (int, int, int, int);
#ifdef SUPPORT_FORTRAN
typedef void (*GLUTdisplayFCB) (void);
typedef void (*GLUTreshapeFCB) (int *, int *);
/* NOTE the pressed key is int, not unsigned char for Fortran! */
typedef void (*GLUTkeyboardFCB) (int *, int *, int *);
typedef void (*GLUTmouseFCB) (int *, int *, int *, int *);
typedef void (*GLUTmotionFCB) (int *, int *);
typedef void (*GLUTpassiveFCB) (int *, int *);
typedef void (*GLUTentryFCB) (int *);
typedef void (*GLUTvisibilityFCB) (int *);
typedef void (*GLUTwindowStatusFCB) (int *);
typedef void (*GLUTidleFCB) (void);
typedef void (*GLUTtimerFCB) (int *);
typedef void (*GLUTmenuStateFCB) (int *);  /* DEPRICATED. */
typedef void (*GLUTmenuStatusFCB) (int *, int *, int *);
typedef void (*GLUTselectFCB) (int *);
typedef void (*GLUTspecialFCB) (int *, int *, int *);
typedef void (*GLUTspaceMotionFCB) (int *, int *, int *);
typedef void (*GLUTspaceRotateFCB) (int *, int *, int *);
typedef void (*GLUTspaceButtonFCB) (int *, int *);
typedef void (*GLUTdialsFCB) (int *, int *);
typedef void (*GLUTbuttonBoxFCB) (int *, int *);
typedef void (*GLUTtabletMotionFCB) (int *, int *);
typedef void (*GLUTtabletButtonFCB) (int *, int *, int *, int *);
#endif


/* private routines from glut_util.c */
extern void __glutWarning(char *format,...);
extern void __glutFatalError(char *format,...);
extern void __glutFatalUsage(char *format,...);
extern int __glutGet(GLenum type);

extern char *__glutProgramName;

#endif
