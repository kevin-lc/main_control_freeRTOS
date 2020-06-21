#include "uart.h"

u8 C_CMD_IDN[]="*IDN?";
u8 C_CMD_15SW[]="15SW ";
u8 C_CMD_SET_GAIN[]="GAIN ";
u8 C_CMD_GET_ADC[]="ADC?";
u8 C_CMD_SET_LHV[]="LHV ";
u8 C_CMD_SET_RHV[]="RHV ";
u8 C_CMD_SET_ROFST[]="ROFST ";
u8 C_CMD_GET_APDT[]="APDT?";
//´®¿Ú³õÊ¼»¯
int uart_Initial(XUartPs *uart_ps)
{
	int status;
	XUartPs_Config *uart_cfg;

	uart_cfg = XUartPs_LookupConfig(UART_DEVICE_ID);

	status = XUartPs_CfgInitialize(uart_ps, uart_cfg, uart_cfg->BaseAddress);

	status = XUartPs_SelfTest(uart_ps);

	XUartPs_SetOperMode(uart_ps, XUARTPS_OPER_MODE_NORMAL);

	XUartPs_SetBaudRate(uart_ps,115200);

	XUartPs_SetFifoThreshold(uart_ps, 1);

	return XST_SUCCESS;
}


void uart_intr_handler(void *call_back_ref)
{
	XUartPs *uart_instance_ptr = (XUartPs *) call_back_ref;
	u32 rec_data = 0;
	u32 isr_status;
	u8 *send_temp = "abcd";
	isr_status = XUartPs_ReadReg(uart_instance_ptr->Config.BaseAddress,XUARTPS_IMR_OFFSET);

	isr_status &= XUartPs_ReadReg(uart_instance_ptr->Config.BaseAddress,XUARTPS_ISR_OFFSET);

	if (isr_status & (u32)XUARTPS_IXR_RXOVR)
	{
		rec_data = XUartPs_RecvByte(XPAR_PS7_UART_1_BASEADDR);

		XUartPs_WriteReg(uart_instance_ptr->Config.BaseAddress,XUARTPS_ISR_OFFSET, XUARTPS_IXR_RXOVR) ;
	}
	if(rec_data !='\n')
	{
		UART_RX_Buffer[UART_Input_First] = rec_data;
		UART_Input_First++;
	}
	else
	{
		UART_RX_Buffer[UART_Input_First] = '\0';
//		UartPsSend(uart_instance_ptr, UART_Buffer,UART_Input_First);
//		UartPsSend(uart_instance_ptr, send_temp,sizeof(send_temp));
		UART_Input_First = 0;
		End_Recieve=1;
	}
//	XUartPs_SendByte(XPAR_PS7_UART_1_BASEADDR,rec_data);

}

void UART_process(u8 var)
{
	u8 setvalue;
	u8 temp_char=0;
	u16 temp_value=0;

	switch (var)
	{
		case RS232CMD_C_CMD_IDN:
			printf("lsp: 20200506\n");
			break;
		case RS232CMD_C_CMD_15SW:
			if(strcmp1(&UART_RX_Buffer[5],"ON")==1)
			{
				temp_char=1;
				XGpio_DiscreteWrite(&SW_15V, 1, 1);
			}
			else if(strcmp1(&UART_RX_Buffer[5],"OFF")==1)
			{
				temp_char=0;
				XGpio_DiscreteWrite(&SW_15V, 1, 0);
			}
			break;
		case RS232CMD_C_CMD_SET_GAIN:
			strtounchar(&UART_RX_Buffer, &setvalue);
			AD8320_SET(setvalue);
			break;
		case RS232CMD_C_CMD_GET_ADC:
			start_ADC_acquisition = 1;
//			XAxiDma_Adc(Ch0BdChainBuffer, AD9226_CH0_BASE, ADC_SAMPLE_NUM, BD_COUNT, &AxiDmaCh0) ;
			break;
		case RS232CMD_C_CMD_SET_LHV:
			strtounchar(&UART_RX_Buffer, &setvalue);
			AD7226_DATA_Set(setvalue, 0);
			break;
		case RS232CMD_C_CMD_SET_RHV:
			strtounchar(&UART_RX_Buffer, &setvalue);
			AD7226_DATA_Set(setvalue, 1);
			break;
		case RS232CMD_C_CMD_SET_ROFST:
			strtounchar(&UART_RX_Buffer, &setvalue);
			AD7226_DATA_Set(setvalue, 2);
			break;
		case RS232CMD_C_CMD_GET_APDT:

			AD7416_read(IIC_ad7416_ADDR, 2);
			for(int i=0;i<10;i++)
			{
				temp_value += byte2word(temp_data,temperature_rbuf);
			}
			temp_value = (temp_value/10)*0.25;
			printf("APDT:%.2f\n",temp_value);
			break;
		default:

			break;
	}
}

u8 judge_command(const u8*souce)
{
	u8 val=0;
	if(strcmp1(souce,&C_CMD_IDN)==1)
		val=RS232CMD_C_CMD_IDN;

	else if(strcmp1(souce,&C_CMD_15SW)==1)
		val=RS232CMD_C_CMD_15SW;

	else if(strcmp1(souce,&C_CMD_SET_GAIN)==1)
		val=RS232CMD_C_CMD_SET_GAIN;

	else if(strcmp1(souce,&C_CMD_GET_ADC)==1)
		val=RS232CMD_C_CMD_GET_ADC;

	else if(strcmp1(souce,&C_CMD_SET_LHV)==1)
		val=RS232CMD_C_CMD_SET_LHV;

	else if(strcmp1(souce,&C_CMD_SET_RHV)==1)
		val=RS232CMD_C_CMD_SET_RHV;

	else if(strcmp1(souce,&C_CMD_SET_ROFST)==1)
		val=RS232CMD_C_CMD_SET_ROFST;

	else if(strcmp1(souce,&C_CMD_GET_APDT)==1)
		val=RS232CMD_C_CMD_GET_APDT;

	return(val);
}

int UartPsSend(XUartPs *InstancePtr, u8 *BufferPtr, u32 NumBytes)
{

	u32 SentCount = 0U;

	/* Setup the buffer parameters */
	InstancePtr->SendBuffer.RequestedBytes = NumBytes;
	InstancePtr->SendBuffer.RemainingBytes = NumBytes;
	InstancePtr->SendBuffer.NextBytePtr = BufferPtr;


	while (InstancePtr->SendBuffer.RemainingBytes > SentCount)
	{
		/* Fill the FIFO from the buffer */
		if (!XUartPs_IsTransmitFull(InstancePtr->Config.BaseAddress))
		{
			XUartPs_WriteReg(InstancePtr->Config.BaseAddress,
					XUARTPS_FIFO_OFFSET,
					((u32)InstancePtr->SendBuffer.
							NextBytePtr[SentCount]));

			/* Increment the send count. */
			SentCount++;
		}
	}

	/* Update the buffer to reflect the bytes that were sent from it */
	InstancePtr->SendBuffer.NextBytePtr += SentCount;
	InstancePtr->SendBuffer.RemainingBytes -= SentCount;

	return SentCount;
}
