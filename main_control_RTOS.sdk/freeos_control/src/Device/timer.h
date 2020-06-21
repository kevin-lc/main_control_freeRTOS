#ifndef TIMER_H   /* prevent circular inclusions */
#define TIMER_H   /* by using protection macros */

#include "xscutimer.h"

#define TIMER_DEVICE_ID		XPAR_XSCUTIMER_0_DEVICE_ID
#define TIMER_IRPT_INTR		XPAR_SCUTIMER_INTR

#define TIMER_LOAD_VALUE	(XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ/2 - 1)
#define TIMER_EXPIRED_VALUE 10000

XScuTimer Timer_Ps;
volatile int TimerExpired;
int LastTimerExpired;

int timer_Initial(XScuTimer *timer_ps);

void Timer_Interrupt_Handler(void *CallBackRef);
void timer_start();


#endif
