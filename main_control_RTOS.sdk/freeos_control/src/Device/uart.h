#ifndef UART_H   /* prevent circular inclusions */
#define UART_H   /* by using protection macros */

#include "xuartps.h"
#include "xscugic.h"
#include "control.h"
#include "dma_bd.h"
#include "str_fun.h"
#include "AD7416.h"

#define UART_DEVICE_ID XPAR_PS7_UART_1_DEVICE_ID
#define UART_INT_IRQ_ID XPAR_XUARTPS_1_INTR

XUartPs Uart_Ps;

typedef enum _RS232CMD
{

	RS232CMD_NOP=0X00,
	RS232CMD_C_CMD_IDN,
	RS232CMD_C_CMD_15SW,
	RS232CMD_C_CMD_SET_GAIN,
	RS232CMD_C_CMD_GET_ADC,
	RS232CMD_C_CMD_SET_LHV,
	RS232CMD_C_CMD_SET_RHV,
	RS232CMD_C_CMD_SET_ROFST,
	RS232CMD_C_CMD_GET_APDT,


}RS232CMD;


u8 UART_TX_Buffer[4096];
u8 UART_RX_Buffer[4096];
u32 UART_Input_First;
u8 End_Recieve;
u8 start_ADC_acquisition;
u16 temp_data;

u8 judge_command(const u8*souce);
int uart_Initial(XUartPs *uart_ps);
void uart_intr_handler(void *call_back_ref);
int UartPsSend(XUartPs *InstancePtr, u8 *BufferPtr, u32 NumBytes);
void UART_process(u8 var);

#endif
