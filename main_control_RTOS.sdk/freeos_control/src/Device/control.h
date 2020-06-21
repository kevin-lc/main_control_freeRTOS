#ifndef CONTROL_H   /* prevent circular inclusions */
#define CONTROL_H   /* by using protection macros */

#include "xparameters.h"
#include "xgpio.h"
#include  "sleep.h"

#define GPIO_RCLEAR_DEVICE_ID  XPAR_GPIO_0_DEVICE_ID
#define GPIO_SW_15V_DEVICE_ID  XPAR_GPIO_1_DEVICE_ID
//#define GPIO_LTRIG_OUT_DEVICE_ID  XPAR_GPIO_16_DEVICE_ID
//#define GPIO_LASEL_OUT_DEVICE_ID  XPAR_GPIO_18_DEVICE_ID
#define GPIO_AD9226_BUFF_EN_DEVICE_ID  XPAR_GPIO_16_DEVICE_ID

XGpio RCLEAR;
XGpio SW_15V;
//XGpio LTRIG_OUT;
//XGpio LASEL_OUT;
XGpio AD9226_BUFF_EN;

void Control_Initialize();

#endif


