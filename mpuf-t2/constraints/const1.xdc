
create_pblock pblock_ffapuf_top_1
add_cells_to_pblock [get_pblocks pblock_ffapuf_top_1] [get_cells -quiet [list design_1_i/ffapuf_top_0]]
resize_pblock [get_pblocks pblock_ffapuf_top_1] -add {SLICE_X2Y0:SLICE_X49Y97}
resize_pblock [get_pblocks pblock_ffapuf_top_1] -add {DSP48_X0Y0:DSP48_X0Y37}
resize_pblock [get_pblocks pblock_ffapuf_top_1] -add {RAMB18_X0Y0:RAMB18_X0Y37}
resize_pblock [get_pblocks pblock_ffapuf_top_1] -add {RAMB36_X0Y0:RAMB36_X0Y18}

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
resize_pblock [get_pblocks peripherals] -add {SLICE_X0Y105:SLICE_X47Y198}
resize_pblock [get_pblocks peripherals] -add {DSP48_X0Y42:DSP48_X0Y77}
resize_pblock [get_pblocks peripherals] -add {RAMB18_X0Y42:RAMB18_X0Y77}
resize_pblock [get_pblocks peripherals] -add {RAMB36_X0Y21:RAMB36_X0Y38}
