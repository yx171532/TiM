/* C file TimerFunction.c for getting Realtime */

#include <time.h>
#include <stdio.h>
#include <stdlib.h>

#if defined(__MINGW32__) || defined(_MSC_VER)
/* use the rt_tock and rt_tick from OpenModelica Simulation Runtime */
#else
#include <rtclock.h>
#endif

double getRealTime(double tm)
{	
   double value = rt_tock(0);
   fprintf(stderr, "tk:%g ", value); fflush(NULL);
   return value;
}

double initTime(double tn)
{
  rt_tick(0);
  fprintf(stderr, "tick: %g ", 0.0);
  return 0.0;
}
