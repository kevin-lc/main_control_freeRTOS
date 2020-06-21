#include "control.h"

void Control_Initialize()
{
	XGpio_Initialize(&RCLEAR, GPIO_RCLEAR_DEVICE_ID);
	XGpio_Initialize(&SW_15V, GPIO_SW_15V_DEVICE_ID);
//	XGpio_Initialize(&LTRIG_OUT, GPIO_LTRIG_OUT_DEVICE_ID);
//	XGpio_Initialize(&LASEL_OUT, GPIO_LASEL_OUT_DEVICE_ID);
	XGpio_Initialize(&AD9226_BUFF_EN, GPIO_AD9226_BUFF_EN_DEVICE_ID);


	XGpio_SetDataDirection(&RCLEAR, 1, 0);
	XGpio_SetDataDirection(&SW_15V, 1, 0);
//	XGpio_SetDataDirection(&LTRIG_OUT, 1, 0);
//	XGpio_SetDataDirection(&LASEL_OUT, 1, 0);
	XGpio_SetDataDirection(&AD9226_BUFF_EN, 1, 0);


	XGpio_DiscreteWrite(&SW_15V, 1, 0);
	XGpio_DiscreteWrite(&RCLEAR, 1, 0);
//	XGpio_DiscreteWrite(&LTRIG_OUT, 1, 0);
//	XGpio_DiscreteWrite(&LASEL_OUT, 1, 1);
	XGpio_DiscreteWrite(&AD9226_BUFF_EN, 1, 0);
}
