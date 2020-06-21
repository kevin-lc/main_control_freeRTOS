#ifndef AD7416_H   /* prevent circular inclusions */
#define AD7416_H   /* by using protection macros */

#include "xparameters.h"
#include "xiicps.h"
#include "xscugic.h"
#include  "sleep.h"

//#define INTC_DEVICE_ID	    XPAR_SCUGIC_SINGLE_DEVICE_ID
#define IIC_DEVICE_ID		XPAR_XIICPS_0_DEVICE_ID

#define IIC_ad7416_ADDR		0x48
#define EEPROM_ADDR         0x54
#define IIC_SCLK_RATE		100000

#define eeprom_BUFFER_SIZE	132
#define temperature_BUFFER_SIZE	2

XIicPs Iic;

u8 temperature_wbuf[temperature_BUFFER_SIZE];
u8 temperature_rbuf[temperature_BUFFER_SIZE];
u8 eeprom_wbuf[eeprom_BUFFER_SIZE];
u8 eeprom_rbuf[eeprom_BUFFER_SIZE];

int I2c_Initial(XIicPs *Iic_ps);
void I2cPs_write(XIicPs *I2C_Ptr, u8 *MsgPtr, s32 ByteCount, u16 SlaveAddr);
void I2cPs_read(XIicPs *I2C_Ptr, u8 *MsgPtr, s32 ByteCount, u16 SlaveAddr);
void read_eeprom(u8 addr,u8 len);
void write_eeprom(u8 addr,u8 len);
//void Setup_Intr_Exception(XScuGic * IntcInstancePtr);

int I2cPs_Setup_IntrSystem(XScuGic * GicInstancePtr , XIicPs *I2C_Ptr ,u16 I2cIntrId);

void AD7416_read(u8 addr,u8 len);

#endif
