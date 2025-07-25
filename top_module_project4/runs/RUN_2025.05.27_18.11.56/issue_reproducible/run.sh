#!/bin/sh
dir=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
cd $dir;
export CELL_PAD_EXCLUDE='sky130_fd_sc_hd__tap* sky130_fd_sc_hd__decap* sky130_ef_sc_hd__decap* sky130_fd_sc_hd__fill*';
export CLOCK_PERIOD='15';
export CLOCK_PORT='CLK';
export CLOCK_WIRE_RC_LAYER='met5';
export CURRENT_DEF='./tmp/cts/13-top_module_project4.resized.def';
export CURRENT_NETLIST='./tmp/cts/13-top_module_project4.resized.nl.v';
export CURRENT_ODB='./tmp/cts/13-top_module_project4.resized.odb';
export CURRENT_POWERED_NETLIST='./tmp/cts/13-top_module_project4.resized.pnl.v';
export DATA_WIRE_RC_LAYER='met2';
export DESIGN_NAME='top_module_project4';
export DIODE_CELL='sky130_fd_sc_hd__diode_2';
export DIODE_PADDING='2';
export DONT_USE_CELLS='sky130_fd_sc_hd__a2111oi_0 sky130_fd_sc_hd__a21boi_0 sky130_fd_sc_hd__and2_0 sky130_fd_sc_hd__buf_16 sky130_fd_sc_hd__clkdlybuf4s15_1 sky130_fd_sc_hd__clkdlybuf4s18_1 sky130_fd_sc_hd__fa_4 sky130_fd_sc_hd__lpflow_bleeder_1 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 sky130_fd_sc_hd__lpflow_clkbufkapwr_16 sky130_fd_sc_hd__lpflow_clkbufkapwr_2 sky130_fd_sc_hd__lpflow_clkbufkapwr_4 sky130_fd_sc_hd__lpflow_clkbufkapwr_8 sky130_fd_sc_hd__lpflow_clkinvkapwr_1 sky130_fd_sc_hd__lpflow_clkinvkapwr_16 sky130_fd_sc_hd__lpflow_clkinvkapwr_2 sky130_fd_sc_hd__lpflow_clkinvkapwr_4 sky130_fd_sc_hd__lpflow_clkinvkapwr_8 sky130_fd_sc_hd__lpflow_decapkapwr_12 sky130_fd_sc_hd__lpflow_decapkapwr_3 sky130_fd_sc_hd__lpflow_decapkapwr_4 sky130_fd_sc_hd__lpflow_decapkapwr_6 sky130_fd_sc_hd__lpflow_decapkapwr_8 sky130_fd_sc_hd__lpflow_inputiso0n_1 sky130_fd_sc_hd__lpflow_inputiso0p_1 sky130_fd_sc_hd__lpflow_inputiso1n_1 sky130_fd_sc_hd__lpflow_inputiso1p_1 sky130_fd_sc_hd__lpflow_inputisolatch_1 sky130_fd_sc_hd__lpflow_isobufsrc_1 sky130_fd_sc_hd__lpflow_isobufsrc_16 sky130_fd_sc_hd__lpflow_isobufsrc_2 sky130_fd_sc_hd__lpflow_isobufsrc_4 sky130_fd_sc_hd__lpflow_isobufsrc_8 sky130_fd_sc_hd__lpflow_isobufsrckapwr_16 sky130_fd_sc_hd__lpflow_lsbuf_lh_hl_isowell_tap_1 sky130_fd_sc_hd__lpflow_lsbuf_lh_hl_isowell_tap_2 sky130_fd_sc_hd__lpflow_lsbuf_lh_hl_isowell_tap_4 sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_4 sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_tap_1 sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_tap_2 sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_tap_4 sky130_fd_sc_hd__mux4_4 sky130_fd_sc_hd__o21ai_0 sky130_fd_sc_hd__o311ai_0 sky130_fd_sc_hd__or2_0 sky130_fd_sc_hd__probe_p_8 sky130_fd_sc_hd__probec_p_8 sky130_fd_sc_hd__xor3_1 sky130_fd_sc_hd__xor3_2 sky130_fd_sc_hd__xor3_4 sky130_fd_sc_hd__xnor3_1 sky130_fd_sc_hd__xnor3_2 sky130_fd_sc_hd__xnor3_4';
export DPL_CELL_PADDING='0';
export FP_PDN_ENABLE_GLOBAL_CONNECTIONS='1';
export FP_PDN_ENABLE_MACROS_GRID='1';
export GLB_OPTIMIZE_MIRRORING='1';
export GLB_RESIZER_MAX_CAP_MARGIN='10';
export GLB_RESIZER_MAX_SLEW_MARGIN='10';
export GLB_RESIZER_MAX_WIRE_LENGTH='0';
export GND_NET='VGND';
export GRT_ADJUSTMENT='0.3';
export GRT_ALLOW_CONGESTION='0';
export GRT_CONGESTION_REPORT_FILE='./tmp/routing/resizer-routing-design-congestion.rpt';
export GRT_LAYER_ADJUSTMENTS='0.99,0,0,0,0,0';
export GRT_OVERFLOW_ITERS='50';
export IO_PCT='0.2';
export LIB_TYPICAL='pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib';
export MAX_FANOUT_CONSTRAINT='10';
export MAX_TRANSITION_CONSTRAINT='0.75';
export MERGED_LEF='./tmp/merged.nom.lef';
export OUTPUT_CAP_LOAD='33.442';
export PACKAGED_SCRIPT_0='openlane/scripts/openroad/resizer_routing_design.tcl';
export PACKAGED_SCRIPT_1='openlane/scripts/openroad/common/io.tcl';
export PACKAGED_SCRIPT_2='openlane/scripts/openroad/common/resizer.tcl';
export PACKAGED_SCRIPT_3='openlane/scripts/openroad/common/set_routing_layers.tcl';
export PACKAGED_SCRIPT_4='openlane/scripts/openroad/common/set_layer_adjustments.tcl';
export PACKAGED_SCRIPT_5='openlane/scripts/openroad/common/set_rc.tcl';
export PACKAGED_SCRIPT_6='openlane/scripts/openroad/common/dpl_cell_pad.tcl';
export PACKAGED_SCRIPT_7='openlane/scripts/base.sdc';
export PACKAGED_SCRIPT_8='./tmp/14-top_module_project4.sdc';
export PACKAGED_SCRIPT_9='openlane/scripts/openroad/common/set_global_connections.tcl';
export PNR_SDC_FILE='openlane/scripts/base.sdc';
export PROCESS_CORNER='nom';
export RSZ_DONT_TOUCH='';
export RSZ_DONT_TOUCH_RX='\$^';
export RSZ_LIB='pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib';
export RSZ_LIB_FASTEST='pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v95.lib';
export RSZ_LIB_SLOWEST='pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_100C_1v60.lib';
export RSZ_MULTICORNER_LIB='1';
export RT_CLOCK_MIN_LAYER='met3';
export RT_MAX_LAYER='met5';
export RT_MIN_LAYER='met1';
export SAVE_DEF='./tmp/14-top_module_project4.def';
export SAVE_NETLIST='./out.v';
export SAVE_ODB='./tmp/14-top_module_project4.odb';
export SAVE_POWERED_NETLIST='./tmp/14-top_module_project4.pnl.v';
export SAVE_SDC='./tmp/14-top_module_project4.sdc';
export SCRIPTS_DIR='openlane/scripts';
export SIGNOFF_SDC_FILE='openlane/scripts/base.sdc';
export STA_PRE_CTS='0';
export STD_CELL_GROUND_PINS='VGND VNB';
export STD_CELL_POWER_PINS='VPWR VPB';
export SYNTH_CLOCK_TRANSITION='0.15';
export SYNTH_CLOCK_UNCERTAINTY='0.25';
export SYNTH_DRIVING_CELL='sky130_fd_sc_hd__inv_2';
export SYNTH_DRIVING_CELL_PIN='Y';
export SYNTH_TIMING_DERATE='0.05';
export TECH_METAL_LAYERS='li1 met1 met2 met3 met4 met5';
export VDD_NET='VPWR';
export _PROPAGATE_ALL_CLOCKS='0';
TOOL_BIN=${TOOL_BIN:-openroad}
$TOOL_BIN -exit $PACKAGED_SCRIPT_0
