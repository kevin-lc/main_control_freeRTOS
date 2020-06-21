#include "timer.h"

int timer_Initial(XScuTimer *timer_ps)
{
	int Status;
	int LastTimerExpired = 0;
	XScuTimer_Config *ConfigPtr;

	ConfigPtr = XScuTimer_LookupConfig(TIMER_DEVICE_ID);

	Status = XScuTimer_CfgInitialize(timer_ps, ConfigPtr, ConfigPtr->BaseAddr);
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

void Timer_Interrupt_Handler(void *CallBackRef)
{
	XScuTimer *TimerInstancePtr = (XScuTimer *) CallBackRef;
	if (XScuTimer_IsExpired(TimerInstancePtr))
	{
		XScuTimer_ClearInterruptStatus(TimerInstancePtr);
		printf("%d Second\n",TimerExpired);
		TimerExpired++;
		if (TimerExpired == TIMER_EXPIRED_VALUE)
		{
			XScuTimer_DisableAutoReload(TimerInstancePtr);
		}
	}
}

void timer_start()
{
	XScuTimer_EnableAutoReload(&Timer_Ps);
	XScuTimer_LoadTimer(&Timer_Ps, TIMER_LOAD_VALUE);
	XScuTimer_Start(&Timer_Ps);
}
