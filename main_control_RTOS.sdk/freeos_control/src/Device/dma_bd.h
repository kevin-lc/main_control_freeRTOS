/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */

#include "xaxidma.h"
#include "xparameters.h"
#include "ad9226_sample.h"
/*
 * BD definitions
 */
#define BD_ALIGNMENT     0x40
#define TXPATH           1
#define RXPATH           0

#define AD9226_CH0_BASE    XPAR_AD9226_SAMPLE_0_S00_AXI_BASEADDR
#define AD9226_START       AD9226_SAMPLE_S00_AXI_SLV_REG0_OFFSET
#define AD9226_LENGTH      AD9226_SAMPLE_S00_AXI_SLV_REG1_OFFSET

/*
 *DMA BD defines
 */
#define BD_COUNT         4
#define ADC_SAMPLE_NUM  4000
#define ADC_DATA_NUM    (ADC_SAMPLE_NUM)
#define ADC_CAPTURELEN     ADC_SAMPLE_NUM           /* ADC capture length */
#define ADC_COE            16             /* ADC coefficient */
#define ADC_BYTE           2              /* ADC data byte number */
#define ADC_BITS           12


#define MAX_DMA_LEN		   0x800000      /* DMA max length in byte */

#define CH0_DMA_DEV_ID	   XPAR_AXIDMA_0_DEVICE_ID
#define CH0_DMA_BASE	   XPAR_AXIDMA_0_BASEADDR
#define CH0_S2MM_INTR_ID   XPAR_FABRIC_AXI_DMA_0_S2MM_INTROUT_INTR

XAxiDma AxiDmaCh0;



int adc_data[ADC_DATA_NUM];
short CH0DmaRxBuffer[MAX_DMA_LEN/sizeof(short)]  __attribute__ ((aligned(64)));
u32 Ch0BdChainBuffer[BD_ALIGNMENT*16] __attribute__ ((aligned(64)));
int ch0_s2mm_flag;
int FrameLengthCurr;


/*
 * Functions declaration
 */
int CreateBdChain(u32 *BdDesptr, u16 BdCount, u32 TotalByteLen, u8 *DmaBufferPtr, u32 Direction) ;
int Bd_Start(u32 *BdDesptr, u16 BdCount, XAxiDma *XAxiDmaPtr, u32 Direction) ;
void Bd_StatusClr(u32 *BdDesptr, u16 BdCount) ;


void ad9226_sample(u32 adc_addr, u32 adc_len);
void XAxiDma_Adc(u32 *BdChainBuffer, u32 adc_addr, u32 adc_len, u16 BdCount, XAxiDma *AxiDma);
int XAxiDma_Initial(XAxiDma *XAxiDma);
void Dma_Interrupt_Handler(void *CallBackRef);
