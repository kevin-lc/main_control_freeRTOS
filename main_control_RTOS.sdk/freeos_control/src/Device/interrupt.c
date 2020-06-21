#include "interrupt.h"

//ÖÐ¶Ï³õÊ¼»¯
int SetupIntrSystem(XScuGic *IntcInstancePtr, XUartPs *uart_ps, XAxiDma *AxiDmaCh0, XScuTimer *timer_ps)
{
	int Status;
	XScuGic_Config *IntcConfig;
	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	Status = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig, IntcConfig->CpuBaseAddress);

	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, IntcInstancePtr);
	Xil_ExceptionEnable();

	//uart_intr_init
	XScuGic_Connect(IntcInstancePtr, UART_INT_IRQ_ID,(Xil_ExceptionHandler) uart_intr_handler,(void *) uart_ps);
	XUartPs_SetInterruptMask(uart_ps, XUARTPS_IXR_RXOVR);
	XScuGic_Enable(IntcInstancePtr, UART_INT_IRQ_ID);
	//XAxiDma_intr_init
	XScuGic_Connect(IntcInstancePtr,CH0_S2MM_INTR_ID,(Xil_InterruptHandler)Dma_Interrupt_Handler,(void *)AxiDmaCh0);
	XScuGic_SetPriorityTriggerType(IntcInstancePtr,CH0_S2MM_INTR_ID,0,3);
	XScuGic_Enable(IntcInstancePtr, CH0_S2MM_INTR_ID);
	//Timer_intr_init
	XScuGic_Connect(IntcInstancePtr, TIMER_IRPT_INTR, (Xil_InterruptHandler)Timer_Interrupt_Handler, (void *)timer_ps);
	XScuGic_Enable(IntcInstancePtr, TIMER_IRPT_INTR);
	XScuTimer_EnableInterrupt(timer_ps);
	return XST_SUCCESS;

}
