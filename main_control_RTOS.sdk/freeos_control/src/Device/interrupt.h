#ifndef INTERRUPT_H   /* prevent circular inclusions */
#define INTERRUPT_H   /* by using protection macros */

#include "xscugic.h"
#include "uart.h"
#include "dma_bd.h"
#include "timer.h"


#define INTC_DEVICE_ID 	   XPAR_SCUGIC_SINGLE_DEVICE_ID

XScuGic IntcInstance;		/* Interrupt Controller Instance */

int SetupIntrSystem(XScuGic *IntcInstancePtr, XUartPs *uart_ps, XAxiDma *AxiDmaCh0, XScuTimer *timer_ps);

int TimerSetupIntrSystem(XScuGic *IntcInstancePtr,XScuTimer *TimerInstancePtr, u16 TimerIntrId);

void TimerDisableIntrSystem(XScuGic *IntcInstancePtr, u16 TimerIntrId);


#endif
