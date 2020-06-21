/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "dma_bd.h"

/*
 * Create buffer descriptor
 *
 *@param BdDesptr         Buffer Descriptor pointer
 *@param BdCount          BD count
 *@param TotalByteLen     Total byte length will be transferred
 *@param DmaBufferPtr     DMA buffer pointer
 *@param Direction        TXPATH and RXPATH
 *
 *@note  create buffer descriptor with continuous DMA buffer address, divide into BdCount parts
 *
 */
int CreateBdChain(u32 *BdDesptr, u16 BdCount, u32 TotalByteLen, u8 *DmaBufferPtr, u32 Direction)
{
	int i ;

	u32 *BdPtrCurr ;
	u32 *BdPtrNext ;

	u8 *RxBufCurr ;

	/* BD is 16 words alignment, every word is 4 bytes*/
	u32 Bd_Align = BD_ALIGNMENT/sizeof(u32) ;

	/* Current BD pointer and Next BD pointer */
	BdPtrCurr = BdDesptr ;
	BdPtrNext = BdDesptr + Bd_Align ;

	/* DMA buffer pointer */
	RxBufCurr = DmaBufferPtr ;

	/* Set all content to 0 */
	memset(BdDesptr, 0, BdCount*BD_ALIGNMENT) ;

	for(i = 0 ; i < BdCount ; i++)
	{
		/* Write to Next descriptor point Lower 32bit */
		XAxiDma_BdWrite(BdPtrCurr, XAXIDMA_BD_NDESC_OFFSET, (u32)BdPtrNext & XAXIDMA_DESC_LSB_MASK) ;
		/* Write to Buffer Address Lower 32bit */
		XAxiDma_BdWrite(BdPtrCurr, XAXIDMA_BD_BUFA_OFFSET, (u32)RxBufCurr) ;
		/* Write to length field */
		if (Direction == TXPATH)
		{
			if (i == 0)
				XAxiDma_BdWrite(BdPtrCurr, XAXIDMA_BD_CTRL_LEN_OFFSET, (u32)(TotalByteLen/BdCount) | XAXIDMA_BD_CTRL_TXSOF_MASK) ;
			else if (i == BdCount - 1)
				XAxiDma_BdWrite(BdPtrCurr, XAXIDMA_BD_CTRL_LEN_OFFSET, (u32)(TotalByteLen/BdCount) | XAXIDMA_BD_CTRL_TXEOF_MASK) ;
			else
				XAxiDma_BdWrite(BdPtrCurr, XAXIDMA_BD_CTRL_LEN_OFFSET, (u32)(TotalByteLen/BdCount) ) ;
		}
		else
			XAxiDma_BdWrite(BdPtrCurr, XAXIDMA_BD_CTRL_LEN_OFFSET, (u32)(TotalByteLen/BdCount) ) ;

		if (i < BdCount - 2)
		{
			BdPtrCurr += Bd_Align ;
			BdPtrNext += Bd_Align ;
		}
		else
		{
			BdPtrCurr += Bd_Align ;
			BdPtrNext = BdDesptr ;
		}
		/* Provide next DmaRxBuffer address */
		RxBufCurr += TotalByteLen/BdCount ;

	}

	Xil_DCacheFlushRange((INTPTR) BdDesptr, BdCount*BD_ALIGNMENT) ;

	return XST_SUCCESS ;

}

/*
 * Start BD fetching, write CURDESC register, DMACR register, TAILDESC register, after write TAILDESC, SG will start to fetch Descriptor
 *
 *@param BdDesptr         Buffer Descriptor pointer
 *@param BdCount          BD count
 *@param XAxiDmaPtr       DMA pointer
 *@param Direction        TXPATH and RXPATH
 *
 *@note  none
 */
int Bd_Start(u32 *BdDesptr, u16 BdCount, XAxiDma *XAxiDmaPtr, u32 Direction)
{
	u32 *BdPtrLast ;
	XAxiDma_BdRing * RingPtr ;

	if (Direction == TXPATH)
		RingPtr = XAxiDma_GetTxRing(XAxiDmaPtr);
	else
		RingPtr = XAxiDma_GetRxRing(XAxiDmaPtr);
	/* The Last BD address */
	BdPtrLast = BdDesptr + (BdCount - 1) * (BD_ALIGNMENT/sizeof(u32)) ;

	/* Write current descriptor pointer to DMA register */
	XAxiDma_BdWrite(RingPtr->ChanBase, XAXIDMA_CDESC_OFFSET, (u32)BdDesptr & XAXIDMA_DESC_LSB_MASK) ;
	/* Start DMA */
	XAxiDma_BdWrite(RingPtr->ChanBase, XAXIDMA_CR_OFFSET,
			XAxiDma_ReadReg(RingPtr->ChanBase, XAXIDMA_CR_OFFSET) | XAXIDMA_CR_RUNSTOP_MASK) ;

	/* Write Tail descriptor pointer to DMA register, once it is written, SG will start fetching current descriptor pointer */
	if (XAxiDma_BdRingHwIsStarted(RingPtr))
		XAxiDma_BdWrite(RingPtr->ChanBase, XAXIDMA_TDESC_OFFSET, (u32)BdPtrLast & XAXIDMA_DESC_LSB_MASK) ;

	return XST_SUCCESS ;
}

/*
 * Clear BD status before Bd_Start, or SG will not start
 *
 *@param BdDesptr         Buffer Descriptor pointer
 *@param BdCount          BD count
 *
 *@note  none
 */
void Bd_StatusClr(u32 *BdDesptr, u16 BdCount)
{
	int i ;
	u32 *BdPtrCurr = BdDesptr ;
	/* BD is 16 words alignment, every word is 4 bytes*/
	u32 Bd_Align = BD_ALIGNMENT/sizeof(u32) ;

	for(i = 0 ; i < BdCount ; i ++)
	{
		XAxiDma_BdWrite(BdPtrCurr, XAXIDMA_BD_STS_OFFSET, 0) ;
		BdPtrCurr += Bd_Align ;
	}
	Xil_DCacheFlushRange((INTPTR) BdDesptr, BdCount*BD_ALIGNMENT) ;
}

void XAxiDma_Adc(u32 *BdChainBuffer, u32 adc_addr, u32 adc_len, u16 BdCount, XAxiDma *AxiDma)
{
	/* Clear BD Status */
	Bd_StatusClr(BdChainBuffer, BdCount) ;
	/* Start Channel 0 sample */
	ad9226_sample(adc_addr, adc_len)  ;
	/* start DMA translation from AD9226 channel 0 to DDR3 */
	Bd_Start(BdChainBuffer, BdCount, AxiDma, RXPATH) ;
}

/*
 *Initial DMA and connect interrupt to handler, open s2mm interrupt
 *
 *@param DeviceId    DMA device id
 *@param IntrID      DMA interrupt id
 *@param XAxiDma     DMA pointer
 *@param InstancePtr GIC pointer
 *
 *@note  none
 */
int XAxiDma_Initial(XAxiDma *XAxiDma)
{
	XAxiDma_Config *CfgPtr;
	int Status;
	/* Initialize the XAxiDma device. */
	CfgPtr = XAxiDma_LookupConfig(CH0_DMA_DEV_ID);

	Status = XAxiDma_CfgInitialize(XAxiDma, CfgPtr);

	/* Disable MM2S interrupt, Enable S2MM interrupt */
	XAxiDma_IntrEnable(XAxiDma, XAXIDMA_IRQ_IOC_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(XAxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

	return XST_SUCCESS ;
}

/*
 *callback function
 *Check interrupt status and assert s2mm flag
 */
void Dma_Interrupt_Handler(void *CallBackRef)
{
	XAxiDma *XAxiDmaPtr = (XAxiDma *) CallBackRef;

	int s2mm_sr ;

	s2mm_sr = XAxiDma_IntrGetIrq(XAxiDmaPtr, XAXIDMA_DEVICE_TO_DMA) ;
	//xil_printf("Interrupt Value is 0x%x\r\n", s2mm_sr) ;

	if (s2mm_sr & XAXIDMA_IRQ_IOC_MASK)
	{
		/* Clear interrupt */
		XAxiDma_IntrAckIrq(XAxiDmaPtr, XAXIDMA_IRQ_IOC_MASK,XAXIDMA_DEVICE_TO_DMA) ;

		if (XAxiDmaPtr->RegBase == CH0_DMA_BASE)
		{
			Xil_DCacheInvalidateRange((INTPTR)CH0DmaRxBuffer, ADC_BYTE*ADC_CAPTURELEN);
			ch0_s2mm_flag = 1;
		}

	}
}


void ad9226_sample(u32 adc_addr, u32 adc_len)
{
	/* provide length to AD9226 channel */
	AD9226_SAMPLE_mWriteReg(adc_addr, AD9226_LENGTH, adc_len)  ;
	/* start sample AD9226 channel */
	AD9226_SAMPLE_mWriteReg(adc_addr, AD9226_START, 1) ;
}




