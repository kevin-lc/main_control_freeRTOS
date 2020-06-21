-makelib xcelium_lib/xilinx_vip -sv \
  "D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_4 -sv \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_6 -sv \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0/sim/main_control_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_20 \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_axi_gpio_0_0/sim/main_control_axi_gpio_0_0.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_rst_ps7_0_50M_0/sim/main_control_rst_ps7_0_50M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../main_control.srcs/sources_1/bd/main_control/sim/main_control.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_18 \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_17 \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_19 \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_xbar_0/sim/main_control_xbar_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_axi_gpio_0_1/sim/main_control_axi_gpio_0_1.vhd" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_axi_gpio_0_2/sim/main_control_axi_gpio_0_2.vhd" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_axi_gpio_0_3/sim/main_control_axi_gpio_0_3.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_ad9226_sample_0_0/src/afifo/sim/afifo.v" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/a61e/src/ad9226_sample.v" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/a61e/hdl/ad9226_sample_v1_0_S00_AXI.v" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/a61e/hdl/ad9226_sample_v1_0.v" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_ad9226_sample_0_0/sim/main_control_ad9226_sample_0_0.v" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_12 \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_20 \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/dfb3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_sg_v4_1_11 \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/efa7/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_dma_v7_1_19 \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/09b0/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_axi_dma_0_0/sim/main_control_axi_dma_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_xbar_1/sim/main_control_xbar_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_rst_ps7_0_40M_0/sim/main_control_rst_ps7_0_40M_0.vhd" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_rst_ps7_0_142M_1/sim/main_control_rst_ps7_0_142M_1.vhd" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_VGSDATA_0/sim/main_control_VGSDATA_0.vhd" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_VGCLK_0/sim/main_control_VGCLK_0.vhd" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_AD2_Addr_0/sim/main_control_AD2_Addr_0.vhd" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_DA1_Addr_0/sim/main_control_DA1_Addr_0.vhd" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_DA1_WR_0/sim/main_control_DA1_WR_0.vhd" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_DA1_WR_1/sim/main_control_DA1_WR_1.vhd" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_DA1_WR_2/sim/main_control_DA1_WR_2.vhd" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_DA1_WR_3/sim/main_control_DA1_WR_3.vhd" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_DA1_WR_4/sim/main_control_DA1_WR_4.vhd" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_AD3_RD_0/sim/main_control_AD3_RD_0.vhd" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_AD2_RD_0/sim/main_control_AD2_RD_0.vhd" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_AD2_RD_2/sim/main_control_AD2_RD_2.vhd" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_AD2_Convent_0/sim/main_control_AD2_Convent_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/196c/src/ax_pwm.v" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/196c/hdl/ax_pwm_v1_0_S00_AXI.v" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/196c/hdl/ax_pwm_v1_0.v" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_ax_pwm_0_1/sim/main_control_ax_pwm_0_1.v" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_tier2_xbar_0_0/sim/main_control_tier2_xbar_0_0.v" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_tier2_xbar_1_0/sim/main_control_tier2_xbar_1_0.v" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_tier2_xbar_2_0/sim/main_control_tier2_xbar_2_0.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_18 \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_auto_pc_0/sim/main_control_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/axi_clock_converter_v2_1_17 \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/693a/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_2 \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/axi_dwidth_converter_v2_1_18 \
  "../../../../main_control.srcs/sources_1/bd/main_control/ipshared/0815/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_auto_us_0/sim/main_control_auto_us_0.v" \
  "../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_auto_pc_1/sim/main_control_auto_pc_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

