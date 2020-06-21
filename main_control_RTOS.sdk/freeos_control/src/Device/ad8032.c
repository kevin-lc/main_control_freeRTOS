#include "ad8032.h"

void AD8320_SET(u8 da)
{
    u8 i;
    u8 data_bit;
    u8 SDI_data;

    SDI_data = da;
    XGpio_DiscreteClear(&VGDATEN, 1, 1);
    XGpio_DiscreteClear(&VGCLK, 1, 1);
    for (i=0;i<8;i++)
    {
        data_bit = (SDI_data & 0x80)>>7;
        if(data_bit == 0)
        	XGpio_DiscreteClear(&VGSDATA, 1, 1);
        else
        	XGpio_DiscreteWrite(&VGSDATA, 1, 1);
        XGpio_DiscreteWrite(&VGCLK, 1, 1);
        SDI_data <<= 1;
        XGpio_DiscreteClear(&VGCLK, 1, 1);
    }
    XGpio_DiscreteClear(&VGDATEN, 1, 1);
    XGpio_DiscreteWrite(&VGDATEN, 1, 1);
    XGpio_DiscreteClear(&VGCLK, 1, 1);
}

void AD8320_Initial()
{
    XGpio_Initialize(&VGCLK, GPIO_VGCLK_DEVICE_ID);
    XGpio_Initialize(&VGDATEN, GPIO_VGDATEN_DEVICE_ID);
    XGpio_Initialize(&VGSDATA, GPIO_VGSDATA_DEVICE_ID);

    XGpio_SetDataDirection(&VGCLK, 1, 0);
    XGpio_SetDataDirection(&VGDATEN, 1, 0);
    XGpio_SetDataDirection(&VGSDATA, 1, 0);
}
