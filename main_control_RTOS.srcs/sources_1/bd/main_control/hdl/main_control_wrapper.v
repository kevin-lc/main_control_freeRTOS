//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Jun 15 18:34:49 2020
//Host        : RD-DELL running 64-bit major release  (build 9200)
//Command     : generate_target main_control_wrapper.bd
//Design      : main_control_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module main_control_wrapper
   (AD2_Addr_tri_io,
    AD2_Convent_tri_io,
    AD2_EOC_tri_io,
    AD2_RD_tri_io,
    AD3_Convent_tri_io,
    AD3_EOC_tri_io,
    AD3_RD_tri_io,
    AD7226_DAC_tri_io,
    AD7829_1_2_ADC_tri_io,
    AD9226_Buff_En_tri_io,
    DA1_Addr_tri_io,
    DA1_WR_tri_io,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    LASEL_Out,
    LTRIG_Out,
    RCLEAR_tri_o,
    SW_15V_tri_o,
    VGCLK_tri_o,
    VGDATEN_tri_o,
    VGSDATA_tri_o,
    adc9226_clk,
    adc9226_data);
  inout [2:0]AD2_Addr_tri_io;
  inout [0:0]AD2_Convent_tri_io;
  inout [0:0]AD2_EOC_tri_io;
  inout [0:0]AD2_RD_tri_io;
  inout [0:0]AD3_Convent_tri_io;
  inout [0:0]AD3_EOC_tri_io;
  inout [0:0]AD3_RD_tri_io;
  inout [7:0]AD7226_DAC_tri_io;
  inout [7:0]AD7829_1_2_ADC_tri_io;
  inout [0:0]AD9226_Buff_En_tri_io;
  inout [1:0]DA1_Addr_tri_io;
  inout [0:0]DA1_WR_tri_io;
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output LASEL_Out;
  output LTRIG_Out;
  output [0:0]RCLEAR_tri_o;
  output [0:0]SW_15V_tri_o;
  output [0:0]VGCLK_tri_o;
  output [0:0]VGDATEN_tri_o;
  output [0:0]VGSDATA_tri_o;
  output adc9226_clk;
  input [11:0]adc9226_data;

  wire [0:0]AD2_Addr_tri_i_0;
  wire [1:1]AD2_Addr_tri_i_1;
  wire [2:2]AD2_Addr_tri_i_2;
  wire [0:0]AD2_Addr_tri_io_0;
  wire [1:1]AD2_Addr_tri_io_1;
  wire [2:2]AD2_Addr_tri_io_2;
  wire [0:0]AD2_Addr_tri_o_0;
  wire [1:1]AD2_Addr_tri_o_1;
  wire [2:2]AD2_Addr_tri_o_2;
  wire [0:0]AD2_Addr_tri_t_0;
  wire [1:1]AD2_Addr_tri_t_1;
  wire [2:2]AD2_Addr_tri_t_2;
  wire [0:0]AD2_Convent_tri_i_0;
  wire [0:0]AD2_Convent_tri_io_0;
  wire [0:0]AD2_Convent_tri_o_0;
  wire [0:0]AD2_Convent_tri_t_0;
  wire [0:0]AD2_EOC_tri_i_0;
  wire [0:0]AD2_EOC_tri_io_0;
  wire [0:0]AD2_EOC_tri_o_0;
  wire [0:0]AD2_EOC_tri_t_0;
  wire [0:0]AD2_RD_tri_i_0;
  wire [0:0]AD2_RD_tri_io_0;
  wire [0:0]AD2_RD_tri_o_0;
  wire [0:0]AD2_RD_tri_t_0;
  wire [0:0]AD3_Convent_tri_i_0;
  wire [0:0]AD3_Convent_tri_io_0;
  wire [0:0]AD3_Convent_tri_o_0;
  wire [0:0]AD3_Convent_tri_t_0;
  wire [0:0]AD3_EOC_tri_i_0;
  wire [0:0]AD3_EOC_tri_io_0;
  wire [0:0]AD3_EOC_tri_o_0;
  wire [0:0]AD3_EOC_tri_t_0;
  wire [0:0]AD3_RD_tri_i_0;
  wire [0:0]AD3_RD_tri_io_0;
  wire [0:0]AD3_RD_tri_o_0;
  wire [0:0]AD3_RD_tri_t_0;
  wire [0:0]AD7226_DAC_tri_i_0;
  wire [1:1]AD7226_DAC_tri_i_1;
  wire [2:2]AD7226_DAC_tri_i_2;
  wire [3:3]AD7226_DAC_tri_i_3;
  wire [4:4]AD7226_DAC_tri_i_4;
  wire [5:5]AD7226_DAC_tri_i_5;
  wire [6:6]AD7226_DAC_tri_i_6;
  wire [7:7]AD7226_DAC_tri_i_7;
  wire [0:0]AD7226_DAC_tri_io_0;
  wire [1:1]AD7226_DAC_tri_io_1;
  wire [2:2]AD7226_DAC_tri_io_2;
  wire [3:3]AD7226_DAC_tri_io_3;
  wire [4:4]AD7226_DAC_tri_io_4;
  wire [5:5]AD7226_DAC_tri_io_5;
  wire [6:6]AD7226_DAC_tri_io_6;
  wire [7:7]AD7226_DAC_tri_io_7;
  wire [0:0]AD7226_DAC_tri_o_0;
  wire [1:1]AD7226_DAC_tri_o_1;
  wire [2:2]AD7226_DAC_tri_o_2;
  wire [3:3]AD7226_DAC_tri_o_3;
  wire [4:4]AD7226_DAC_tri_o_4;
  wire [5:5]AD7226_DAC_tri_o_5;
  wire [6:6]AD7226_DAC_tri_o_6;
  wire [7:7]AD7226_DAC_tri_o_7;
  wire [0:0]AD7226_DAC_tri_t_0;
  wire [1:1]AD7226_DAC_tri_t_1;
  wire [2:2]AD7226_DAC_tri_t_2;
  wire [3:3]AD7226_DAC_tri_t_3;
  wire [4:4]AD7226_DAC_tri_t_4;
  wire [5:5]AD7226_DAC_tri_t_5;
  wire [6:6]AD7226_DAC_tri_t_6;
  wire [7:7]AD7226_DAC_tri_t_7;
  wire [0:0]AD7829_1_2_ADC_tri_i_0;
  wire [1:1]AD7829_1_2_ADC_tri_i_1;
  wire [2:2]AD7829_1_2_ADC_tri_i_2;
  wire [3:3]AD7829_1_2_ADC_tri_i_3;
  wire [4:4]AD7829_1_2_ADC_tri_i_4;
  wire [5:5]AD7829_1_2_ADC_tri_i_5;
  wire [6:6]AD7829_1_2_ADC_tri_i_6;
  wire [7:7]AD7829_1_2_ADC_tri_i_7;
  wire [0:0]AD7829_1_2_ADC_tri_io_0;
  wire [1:1]AD7829_1_2_ADC_tri_io_1;
  wire [2:2]AD7829_1_2_ADC_tri_io_2;
  wire [3:3]AD7829_1_2_ADC_tri_io_3;
  wire [4:4]AD7829_1_2_ADC_tri_io_4;
  wire [5:5]AD7829_1_2_ADC_tri_io_5;
  wire [6:6]AD7829_1_2_ADC_tri_io_6;
  wire [7:7]AD7829_1_2_ADC_tri_io_7;
  wire [0:0]AD7829_1_2_ADC_tri_o_0;
  wire [1:1]AD7829_1_2_ADC_tri_o_1;
  wire [2:2]AD7829_1_2_ADC_tri_o_2;
  wire [3:3]AD7829_1_2_ADC_tri_o_3;
  wire [4:4]AD7829_1_2_ADC_tri_o_4;
  wire [5:5]AD7829_1_2_ADC_tri_o_5;
  wire [6:6]AD7829_1_2_ADC_tri_o_6;
  wire [7:7]AD7829_1_2_ADC_tri_o_7;
  wire [0:0]AD7829_1_2_ADC_tri_t_0;
  wire [1:1]AD7829_1_2_ADC_tri_t_1;
  wire [2:2]AD7829_1_2_ADC_tri_t_2;
  wire [3:3]AD7829_1_2_ADC_tri_t_3;
  wire [4:4]AD7829_1_2_ADC_tri_t_4;
  wire [5:5]AD7829_1_2_ADC_tri_t_5;
  wire [6:6]AD7829_1_2_ADC_tri_t_6;
  wire [7:7]AD7829_1_2_ADC_tri_t_7;
  wire [0:0]AD9226_Buff_En_tri_i_0;
  wire [0:0]AD9226_Buff_En_tri_io_0;
  wire [0:0]AD9226_Buff_En_tri_o_0;
  wire [0:0]AD9226_Buff_En_tri_t_0;
  wire [0:0]DA1_Addr_tri_i_0;
  wire [1:1]DA1_Addr_tri_i_1;
  wire [0:0]DA1_Addr_tri_io_0;
  wire [1:1]DA1_Addr_tri_io_1;
  wire [0:0]DA1_Addr_tri_o_0;
  wire [1:1]DA1_Addr_tri_o_1;
  wire [0:0]DA1_Addr_tri_t_0;
  wire [1:1]DA1_Addr_tri_t_1;
  wire [0:0]DA1_WR_tri_i_0;
  wire [0:0]DA1_WR_tri_io_0;
  wire [0:0]DA1_WR_tri_o_0;
  wire [0:0]DA1_WR_tri_t_0;
  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire LASEL_Out;
  wire LTRIG_Out;
  wire [0:0]RCLEAR_tri_o;
  wire [0:0]SW_15V_tri_o;
  wire [0:0]VGCLK_tri_o;
  wire [0:0]VGDATEN_tri_o;
  wire [0:0]VGSDATA_tri_o;
  wire adc9226_clk;
  wire [11:0]adc9226_data;

  IOBUF AD2_Addr_tri_iobuf_0
       (.I(AD2_Addr_tri_o_0),
        .IO(AD2_Addr_tri_io[0]),
        .O(AD2_Addr_tri_i_0),
        .T(AD2_Addr_tri_t_0));
  IOBUF AD2_Addr_tri_iobuf_1
       (.I(AD2_Addr_tri_o_1),
        .IO(AD2_Addr_tri_io[1]),
        .O(AD2_Addr_tri_i_1),
        .T(AD2_Addr_tri_t_1));
  IOBUF AD2_Addr_tri_iobuf_2
       (.I(AD2_Addr_tri_o_2),
        .IO(AD2_Addr_tri_io[2]),
        .O(AD2_Addr_tri_i_2),
        .T(AD2_Addr_tri_t_2));
  IOBUF AD2_Convent_tri_iobuf_0
       (.I(AD2_Convent_tri_o_0),
        .IO(AD2_Convent_tri_io[0]),
        .O(AD2_Convent_tri_i_0),
        .T(AD2_Convent_tri_t_0));
  IOBUF AD2_EOC_tri_iobuf_0
       (.I(AD2_EOC_tri_o_0),
        .IO(AD2_EOC_tri_io[0]),
        .O(AD2_EOC_tri_i_0),
        .T(AD2_EOC_tri_t_0));
  IOBUF AD2_RD_tri_iobuf_0
       (.I(AD2_RD_tri_o_0),
        .IO(AD2_RD_tri_io[0]),
        .O(AD2_RD_tri_i_0),
        .T(AD2_RD_tri_t_0));
  IOBUF AD3_Convent_tri_iobuf_0
       (.I(AD3_Convent_tri_o_0),
        .IO(AD3_Convent_tri_io[0]),
        .O(AD3_Convent_tri_i_0),
        .T(AD3_Convent_tri_t_0));
  IOBUF AD3_EOC_tri_iobuf_0
       (.I(AD3_EOC_tri_o_0),
        .IO(AD3_EOC_tri_io[0]),
        .O(AD3_EOC_tri_i_0),
        .T(AD3_EOC_tri_t_0));
  IOBUF AD3_RD_tri_iobuf_0
       (.I(AD3_RD_tri_o_0),
        .IO(AD3_RD_tri_io[0]),
        .O(AD3_RD_tri_i_0),
        .T(AD3_RD_tri_t_0));
  IOBUF AD7226_DAC_tri_iobuf_0
       (.I(AD7226_DAC_tri_o_0),
        .IO(AD7226_DAC_tri_io[0]),
        .O(AD7226_DAC_tri_i_0),
        .T(AD7226_DAC_tri_t_0));
  IOBUF AD7226_DAC_tri_iobuf_1
       (.I(AD7226_DAC_tri_o_1),
        .IO(AD7226_DAC_tri_io[1]),
        .O(AD7226_DAC_tri_i_1),
        .T(AD7226_DAC_tri_t_1));
  IOBUF AD7226_DAC_tri_iobuf_2
       (.I(AD7226_DAC_tri_o_2),
        .IO(AD7226_DAC_tri_io[2]),
        .O(AD7226_DAC_tri_i_2),
        .T(AD7226_DAC_tri_t_2));
  IOBUF AD7226_DAC_tri_iobuf_3
       (.I(AD7226_DAC_tri_o_3),
        .IO(AD7226_DAC_tri_io[3]),
        .O(AD7226_DAC_tri_i_3),
        .T(AD7226_DAC_tri_t_3));
  IOBUF AD7226_DAC_tri_iobuf_4
       (.I(AD7226_DAC_tri_o_4),
        .IO(AD7226_DAC_tri_io[4]),
        .O(AD7226_DAC_tri_i_4),
        .T(AD7226_DAC_tri_t_4));
  IOBUF AD7226_DAC_tri_iobuf_5
       (.I(AD7226_DAC_tri_o_5),
        .IO(AD7226_DAC_tri_io[5]),
        .O(AD7226_DAC_tri_i_5),
        .T(AD7226_DAC_tri_t_5));
  IOBUF AD7226_DAC_tri_iobuf_6
       (.I(AD7226_DAC_tri_o_6),
        .IO(AD7226_DAC_tri_io[6]),
        .O(AD7226_DAC_tri_i_6),
        .T(AD7226_DAC_tri_t_6));
  IOBUF AD7226_DAC_tri_iobuf_7
       (.I(AD7226_DAC_tri_o_7),
        .IO(AD7226_DAC_tri_io[7]),
        .O(AD7226_DAC_tri_i_7),
        .T(AD7226_DAC_tri_t_7));
  IOBUF AD7829_1_2_ADC_tri_iobuf_0
       (.I(AD7829_1_2_ADC_tri_o_0),
        .IO(AD7829_1_2_ADC_tri_io[0]),
        .O(AD7829_1_2_ADC_tri_i_0),
        .T(AD7829_1_2_ADC_tri_t_0));
  IOBUF AD7829_1_2_ADC_tri_iobuf_1
       (.I(AD7829_1_2_ADC_tri_o_1),
        .IO(AD7829_1_2_ADC_tri_io[1]),
        .O(AD7829_1_2_ADC_tri_i_1),
        .T(AD7829_1_2_ADC_tri_t_1));
  IOBUF AD7829_1_2_ADC_tri_iobuf_2
       (.I(AD7829_1_2_ADC_tri_o_2),
        .IO(AD7829_1_2_ADC_tri_io[2]),
        .O(AD7829_1_2_ADC_tri_i_2),
        .T(AD7829_1_2_ADC_tri_t_2));
  IOBUF AD7829_1_2_ADC_tri_iobuf_3
       (.I(AD7829_1_2_ADC_tri_o_3),
        .IO(AD7829_1_2_ADC_tri_io[3]),
        .O(AD7829_1_2_ADC_tri_i_3),
        .T(AD7829_1_2_ADC_tri_t_3));
  IOBUF AD7829_1_2_ADC_tri_iobuf_4
       (.I(AD7829_1_2_ADC_tri_o_4),
        .IO(AD7829_1_2_ADC_tri_io[4]),
        .O(AD7829_1_2_ADC_tri_i_4),
        .T(AD7829_1_2_ADC_tri_t_4));
  IOBUF AD7829_1_2_ADC_tri_iobuf_5
       (.I(AD7829_1_2_ADC_tri_o_5),
        .IO(AD7829_1_2_ADC_tri_io[5]),
        .O(AD7829_1_2_ADC_tri_i_5),
        .T(AD7829_1_2_ADC_tri_t_5));
  IOBUF AD7829_1_2_ADC_tri_iobuf_6
       (.I(AD7829_1_2_ADC_tri_o_6),
        .IO(AD7829_1_2_ADC_tri_io[6]),
        .O(AD7829_1_2_ADC_tri_i_6),
        .T(AD7829_1_2_ADC_tri_t_6));
  IOBUF AD7829_1_2_ADC_tri_iobuf_7
       (.I(AD7829_1_2_ADC_tri_o_7),
        .IO(AD7829_1_2_ADC_tri_io[7]),
        .O(AD7829_1_2_ADC_tri_i_7),
        .T(AD7829_1_2_ADC_tri_t_7));
  IOBUF AD9226_Buff_En_tri_iobuf_0
       (.I(AD9226_Buff_En_tri_o_0),
        .IO(AD9226_Buff_En_tri_io[0]),
        .O(AD9226_Buff_En_tri_i_0),
        .T(AD9226_Buff_En_tri_t_0));
  IOBUF DA1_Addr_tri_iobuf_0
       (.I(DA1_Addr_tri_o_0),
        .IO(DA1_Addr_tri_io[0]),
        .O(DA1_Addr_tri_i_0),
        .T(DA1_Addr_tri_t_0));
  IOBUF DA1_Addr_tri_iobuf_1
       (.I(DA1_Addr_tri_o_1),
        .IO(DA1_Addr_tri_io[1]),
        .O(DA1_Addr_tri_i_1),
        .T(DA1_Addr_tri_t_1));
  IOBUF DA1_WR_tri_iobuf_0
       (.I(DA1_WR_tri_o_0),
        .IO(DA1_WR_tri_io[0]),
        .O(DA1_WR_tri_i_0),
        .T(DA1_WR_tri_t_0));
  main_control main_control_i
       (.AD2_Addr_tri_i({AD2_Addr_tri_i_2,AD2_Addr_tri_i_1,AD2_Addr_tri_i_0}),
        .AD2_Addr_tri_o({AD2_Addr_tri_o_2,AD2_Addr_tri_o_1,AD2_Addr_tri_o_0}),
        .AD2_Addr_tri_t({AD2_Addr_tri_t_2,AD2_Addr_tri_t_1,AD2_Addr_tri_t_0}),
        .AD2_Convent_tri_i(AD2_Convent_tri_i_0),
        .AD2_Convent_tri_o(AD2_Convent_tri_o_0),
        .AD2_Convent_tri_t(AD2_Convent_tri_t_0),
        .AD2_EOC_tri_i(AD2_EOC_tri_i_0),
        .AD2_EOC_tri_o(AD2_EOC_tri_o_0),
        .AD2_EOC_tri_t(AD2_EOC_tri_t_0),
        .AD2_RD_tri_i(AD2_RD_tri_i_0),
        .AD2_RD_tri_o(AD2_RD_tri_o_0),
        .AD2_RD_tri_t(AD2_RD_tri_t_0),
        .AD3_Convent_tri_i(AD3_Convent_tri_i_0),
        .AD3_Convent_tri_o(AD3_Convent_tri_o_0),
        .AD3_Convent_tri_t(AD3_Convent_tri_t_0),
        .AD3_EOC_tri_i(AD3_EOC_tri_i_0),
        .AD3_EOC_tri_o(AD3_EOC_tri_o_0),
        .AD3_EOC_tri_t(AD3_EOC_tri_t_0),
        .AD3_RD_tri_i(AD3_RD_tri_i_0),
        .AD3_RD_tri_o(AD3_RD_tri_o_0),
        .AD3_RD_tri_t(AD3_RD_tri_t_0),
        .AD7226_DAC_tri_i({AD7226_DAC_tri_i_7,AD7226_DAC_tri_i_6,AD7226_DAC_tri_i_5,AD7226_DAC_tri_i_4,AD7226_DAC_tri_i_3,AD7226_DAC_tri_i_2,AD7226_DAC_tri_i_1,AD7226_DAC_tri_i_0}),
        .AD7226_DAC_tri_o({AD7226_DAC_tri_o_7,AD7226_DAC_tri_o_6,AD7226_DAC_tri_o_5,AD7226_DAC_tri_o_4,AD7226_DAC_tri_o_3,AD7226_DAC_tri_o_2,AD7226_DAC_tri_o_1,AD7226_DAC_tri_o_0}),
        .AD7226_DAC_tri_t({AD7226_DAC_tri_t_7,AD7226_DAC_tri_t_6,AD7226_DAC_tri_t_5,AD7226_DAC_tri_t_4,AD7226_DAC_tri_t_3,AD7226_DAC_tri_t_2,AD7226_DAC_tri_t_1,AD7226_DAC_tri_t_0}),
        .AD7829_1_2_ADC_tri_i({AD7829_1_2_ADC_tri_i_7,AD7829_1_2_ADC_tri_i_6,AD7829_1_2_ADC_tri_i_5,AD7829_1_2_ADC_tri_i_4,AD7829_1_2_ADC_tri_i_3,AD7829_1_2_ADC_tri_i_2,AD7829_1_2_ADC_tri_i_1,AD7829_1_2_ADC_tri_i_0}),
        .AD7829_1_2_ADC_tri_o({AD7829_1_2_ADC_tri_o_7,AD7829_1_2_ADC_tri_o_6,AD7829_1_2_ADC_tri_o_5,AD7829_1_2_ADC_tri_o_4,AD7829_1_2_ADC_tri_o_3,AD7829_1_2_ADC_tri_o_2,AD7829_1_2_ADC_tri_o_1,AD7829_1_2_ADC_tri_o_0}),
        .AD7829_1_2_ADC_tri_t({AD7829_1_2_ADC_tri_t_7,AD7829_1_2_ADC_tri_t_6,AD7829_1_2_ADC_tri_t_5,AD7829_1_2_ADC_tri_t_4,AD7829_1_2_ADC_tri_t_3,AD7829_1_2_ADC_tri_t_2,AD7829_1_2_ADC_tri_t_1,AD7829_1_2_ADC_tri_t_0}),
        .AD9226_Buff_En_tri_i(AD9226_Buff_En_tri_i_0),
        .AD9226_Buff_En_tri_o(AD9226_Buff_En_tri_o_0),
        .AD9226_Buff_En_tri_t(AD9226_Buff_En_tri_t_0),
        .DA1_Addr_tri_i({DA1_Addr_tri_i_1,DA1_Addr_tri_i_0}),
        .DA1_Addr_tri_o({DA1_Addr_tri_o_1,DA1_Addr_tri_o_0}),
        .DA1_Addr_tri_t({DA1_Addr_tri_t_1,DA1_Addr_tri_t_0}),
        .DA1_WR_tri_i(DA1_WR_tri_i_0),
        .DA1_WR_tri_o(DA1_WR_tri_o_0),
        .DA1_WR_tri_t(DA1_WR_tri_t_0),
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .LASEL_Out(LASEL_Out),
        .LTRIG_Out(LTRIG_Out),
        .RCLEAR_tri_o(RCLEAR_tri_o),
        .SW_15V_tri_o(SW_15V_tri_o),
        .VGCLK_tri_o(VGCLK_tri_o),
        .VGDATEN_tri_o(VGDATEN_tri_o),
        .VGSDATA_tri_o(VGSDATA_tri_o),
        .adc9226_clk(adc9226_clk),
        .adc9226_data(adc9226_data));
endmodule
