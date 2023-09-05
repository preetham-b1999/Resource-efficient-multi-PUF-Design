


create_pblock PUF
add_cells_to_pblock [get_pblocks PUF] [get_cells -quiet [list design_1_i/ffapuf_top_0]]
resize_pblock [get_pblocks PUF] -add {SLICE_X0Y2:SLICE_X81Y56}
resize_pblock [get_pblocks PUF] -add {DSP48_X0Y2:DSP48_X2Y21}
resize_pblock [get_pblocks PUF] -add {RAMB18_X0Y2:RAMB18_X2Y21}
resize_pblock [get_pblocks PUF] -add {RAMB36_X0Y1:RAMB36_X2Y10}
create_pblock peripherals
add_cells_to_pblock [get_pblocks peripherals] [get_cells -quiet [list \
          design_1_i/axi_gpio_0 \
          design_1_i/axi_gpio_1 \
          design_1_i/axi_uartlite_0 \
          design_1_i/clk_wiz_1 \
          design_1_i/mdm_1 \
          design_1_i/microblaze_0 \
          design_1_i/microblaze_0_axi_intc \
          design_1_i/microblaze_0_axi_periph \
          design_1_i/microblaze_0_local_memory \
          design_1_i/microblaze_0_xlconcat \
          design_1_i/rst_clk_wiz_1_100M]]
resize_pblock [get_pblocks peripherals] -add {SLICE_X0Y147:SLICE_X79Y197}
resize_pblock [get_pblocks peripherals] -add {DSP48_X0Y60:DSP48_X2Y77}
resize_pblock [get_pblocks peripherals] -add {RAMB18_X0Y60:RAMB18_X2Y77}
resize_pblock [get_pblocks peripherals] -add {RAMB36_X0Y30:RAMB36_X2Y38}
