#include "AD7226.h"

int AD7226_Init()
{
	XGpio_Initialize(&AD7226_DATA, AD7226_DATA_DEVICE_ID);
	XGpio_Initialize(&AD7226_WR, AD7226_WR_DEVICE_ID);
	XGpio_Initialize(&AD7226_Addr, AD7226_Addr_DEVICE_ID);

	XGpio_SetDataDirection(&AD7226_DATA, 1, 0);
	XGpio_SetDataDirection(&AD7226_WR, 1, 0);
	XGpio_SetDataDirection(&AD7226_Addr, 1, 0);

	XGpio_DiscreteWrite(&AD7226_WR, 1, 1);

	return XST_SUCCESS;
}

void AD7226_DATA_Set(u8 dac_data, u8 addr)
{
	XGpio_DiscreteWrite(&AD7226_Addr, 1, addr);
	XGpio_DiscreteWrite(&AD7226_DATA, 1, dac_data);

	XGpio_DiscreteWrite(&AD7226_WR, 1, 0);
	usleep(50);
	XGpio_DiscreteWrite(&AD7226_WR, 1, 1);

}



