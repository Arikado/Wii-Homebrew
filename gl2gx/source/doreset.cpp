#include <stdlib.h>

extern "C" void do_reset()
{
	exit(0);
	throw;
}
