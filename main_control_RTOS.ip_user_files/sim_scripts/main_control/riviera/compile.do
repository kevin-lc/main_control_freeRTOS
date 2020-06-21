vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_4
vlib riviera/processing_system7_vip_v1_0_6
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_cdc_v1_0_2
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_20
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_18
vlib riviera/fifo_generator_v13_2_3
vlib riviera/axi_data_fifo_v2_1_17
vlib riviera/axi_crossbar_v2_1_19
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_fifo_v1_0_12
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_datamover_v5_1_20
vlib riviera/axi_sg_v4_1_11
vlib riviera/axi_dma_v7_1_19
vlib riviera/axi_protocol_converter_v2_1_18
vlib riviera/axi_clock_converter_v2_1_17
vlib riviera/blk_mem_gen_v8_4_2
vlib riviera/axi_dwidth_converter_v2_1_18

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 riviera/axi_vip_v1_1_4
vmap processing_system7_vip_v1_0_6 riviera/processing_system7_vip_v1_0_6
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_20 riviera/axi_gpio_v2_0_20
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_18 riviera/axi_register_slice_v2_1_18
vmap fifo_generator_v13_2_3 riviera/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 riviera/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 riviera/axi_crossbar_v2_1_19
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_fifo_v1_0_12 riviera/lib_fifo_v1_0_12
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_20 riviera/axi_datamover_v5_1_20
vmap axi_sg_v4_1_11 riviera/axi_sg_v4_1_11
vmap axi_dma_v7_1_19 riviera/axi_dma_v7_1_19
vmap axi_protocol_converter_v2_1_18 riviera/axi_protocol_converter_v2_1_18
vmap axi_clock_converter_v2_1_17 riviera/axi_clock_converter_v2_1_17
vmap blk_mem_gen_v8_4_2 riviera/blk_mem_gen_v8_4_2
vmap axi_dwidth_converter_v2_1_18 riviera/axi_dwidth_converter_v2_1_18

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4  -sv2k12 "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_6  -sv2k12 "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0/sim/main_control_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_20 -93 \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_axi_gpio_0_0/sim/main_control_axi_gpio_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_rst_ps7_0_50M_0/sim/main_control_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../main_control.srcs/sources_1/bd/main_control/sim/main_control.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18  -v2k5 "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -93 \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17  -v2k5 "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19  -v2k5 "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_xbar_0/sim/main_control_xbar_0.v" \

vcom -work xil_defaultlib -93 \
"../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_axi_gpio_0_1/sim/main_control_axi_gpio_0_1.vhd" \
"../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_axi_gpio_0_2/sim/main_control_axi_gpio_0_2.vhd" \
"../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_axi_gpio_0_3/sim/main_control_axi_gpio_0_3.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_ad9226_sample_0_0/src/afifo/sim/afifo.v" \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/a61e/src/ad9226_sample.v" \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/a61e/hdl/ad9226_sample_v1_0_S00_AXI.v" \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/a61e/hdl/ad9226_sample_v1_0.v" \
"../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_ad9226_sample_0_0/sim/main_control_ad9226_sample_0_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_12 -93 \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_20 -93 \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/dfb3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_11 -93 \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/efa7/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_19 -93 \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/09b0/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_axi_dma_0_0/sim/main_control_axi_dma_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_xbar_1/sim/main_control_xbar_1.v" \

vcom -work xil_defaultlib -93 \
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

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/196c/src/ax_pwm.v" \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/196c/hdl/ax_pwm_v1_0_S00_AXI.v" \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/196c/hdl/ax_pwm_v1_0.v" \
"../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_ax_pwm_0_1/sim/main_control_ax_pwm_0_1.v" \
"../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_tier2_xbar_0_0/sim/main_control_tier2_xbar_0_0.v" \
"../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_tier2_xbar_1_0/sim/main_control_tier2_xbar_1_0.v" \
"../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_tier2_xbar_2_0/sim/main_control_tier2_xbar_2_0.v" \

vlog -work axi_protocol_converter_v2_1_18  -v2k5 "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_auto_pc_0/sim/main_control_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_17  -v2k5 "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/693a/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_2  -v2k5 "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_18  -v2k5 "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../main_control.srcs/sources_1/bd/main_control/ipshared/0815/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/ec67/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ipshared/70cf/hdl" "+incdir+../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_auto_us_0/sim/main_control_auto_us_0.v" \
"../../../../main_control.srcs/sources_1/bd/main_control/ip/main_control_auto_pc_1/sim/main_control_auto_pc_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

