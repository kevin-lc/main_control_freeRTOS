#include "AD7416.h"

int I2c_Initial(XIicPs *Iic_ps)
{
	int Status;
	XIicPs_Config *Config;

	Config = XIicPs_LookupConfig(IIC_DEVICE_ID);
	Status = XIicPs_CfgInitialize(&Iic, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}
	XIicPs_SetSClk(&Iic, IIC_SCLK_RATE);

	return XST_SUCCESS;
}

void I2cPs_write(XIicPs *I2C_Ptr, u8 *MsgPtr, s32 ByteCount, u16 SlaveAddr)
{

	XIicPs_MasterSendPolled(I2C_Ptr, MsgPtr, ByteCount, SlaveAddr);

	while (XIicPs_BusIsBusy(I2C_Ptr)) {
	}
//	usleep(2000);

}

void I2cPs_read(XIicPs *I2C_Ptr, u8 *MsgPtr, s32 ByteCount, u16 SlaveAddr)
{
	XIicPs_MasterRecvPolled(I2C_Ptr, MsgPtr, ByteCount, SlaveAddr);
//	while (XIicPs_BusIsBusy(I2C_Ptr)) {
//	}
//	usleep(2000);

}


void read_eeprom(u8 addr,u8 len)
{
	eeprom_wbuf[0]=addr;
	I2cPs_write(&Iic,eeprom_wbuf, 1, EEPROM_ADDR);
	I2cPs_read (&Iic,eeprom_rbuf, len, EEPROM_ADDR);
}


void write_eeprom(u8 addr,u8 len)
{
	eeprom_wbuf[0]=addr;
	I2cPs_write(&Iic,eeprom_wbuf,len+1,EEPROM_ADDR);
}

int I2cPs_Setup_IntrSystem(XScuGic * GicInstancePtr , XIicPs *I2C_Ptr ,u16 I2cIntrId)
{
	int Status;

	Status = XScuGic_Connect(GicInstancePtr, I2cIntrId,	(Xil_InterruptHandler)XIicPs_MasterInterruptHandler, (void *)I2C_Ptr);
	if (Status != XST_SUCCESS) {
		return Status;
	}

	XScuGic_Enable(GicInstancePtr, I2cIntrId);
	return XST_SUCCESS;
}

void AD7416_read(u8 addr,u8 len)
{
	temperature_wbuf[0]=0;
	temperature_rbuf[0]=0;
	temperature_rbuf[1]=0;
	I2cPs_write(&Iic,temperature_wbuf, 1, addr);
	I2cPs_read (&Iic,temperature_rbuf, len, addr);

}
