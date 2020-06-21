#ifndef AD7226_H   /* prevent circular inclusions */
#define AD7226_H   /* by using protection macros */

#include "xparameters.h"
#include "xgpio.h"
#include  "sleep.h"

//define AD7226
#define AD7226_DATA_DEVICE_ID  XPAR_GPIO_14_DEVICE_ID
#define AD7226_WR_DEVICE_ID  XPAR_GPIO_13_DEVICE_ID
#define AD7226_Addr_DEVICE_ID  XPAR_GPIO_12_DEVICE_ID


XGpio AD7226_DATA;
XGpio AD7226_WR;
XGpio AD7226_Addr;

int AD7226_Init();
void AD7226_DATA_Set(u8 dac_data, u8 addr);

#endif
