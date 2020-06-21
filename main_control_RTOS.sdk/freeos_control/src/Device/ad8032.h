#ifndef AD8032_H   /* prevent circular inclusions */
#define AD8032_H   /* by using protection macros */

#include "xparameters.h"
#include "xgpio.h"
#include  "sleep.h"

#define GPIO_VGCLK_DEVICE_ID  XPAR_GPIO_2_DEVICE_ID
#define GPIO_VGDATEN_DEVICE_ID  XPAR_GPIO_3_DEVICE_ID
#define GPIO_VGSDATA_DEVICE_ID  XPAR_GPIO_4_DEVICE_ID

XGpio VGCLK;
XGpio VGDATEN;
XGpio VGSDATA;



void AD8320_SET(u8 da);
void AD8320_Initial();

#endif
