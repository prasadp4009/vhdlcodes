set_property SRC_FILE_INFO {cfile:C:/Users/Dadu/Projects/vhdlcodes/verilog_projects/zybo/blink_led/constraints/ZYBO_Master.xdc rfile:../../../constraints/ZYBO_Master.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L11P_T1_SRCC_35 Sch=sysclk
set_property src_info {type:XDC file:1 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { reset }]; #IO_L20N_T3_34 Sch=BTN0
set_property src_info {type:XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { led_pin }]; #IO_L23P_T3_35 Sch=LED0
