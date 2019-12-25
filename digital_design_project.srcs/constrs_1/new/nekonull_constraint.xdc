# set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets -of_objects [get_cells <seg_out_OBUF[7]_inst_i_1>]]

# set_property SEVERITY {Warning}  [get_drc_checks LUTLP-1]

# set_property SEVERITY {Warning} [get_drc_checks NSTD-1]

# input switches, clk

set_property IOSTANDARD LVCMOS33 [get_ports {d[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {l[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {e[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sys_clk[0]}]

set_property PACKAGE_PIN Y9 [get_ports {d[0]}]
set_property PACKAGE_PIN W9 [get_ports {l[0]}]
set_property PACKAGE_PIN Y7 [get_ports {r[0]}]
set_property PACKAGE_PIN Y8 [get_ports {e[0]}]
set_property PACKAGE_PIN AB8 [get_ports {b[0]}]
set_property PACKAGE_PIN AA8 [get_ports {p[0]}]
set_property PACKAGE_PIN Y18 [get_ports {sys_clk[0]}]

# seg

set_property IOSTANDARD LVCMOS33 [get_ports {seg_en[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_en[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_en[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_en[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_en[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_en[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_en[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_en[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {seg_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out[7]}]

set_property PACKAGE_PIN A18 [get_ports {seg_en[7]}]
set_property PACKAGE_PIN A20 [get_ports {seg_en[6]}]
set_property PACKAGE_PIN B20 [get_ports {seg_en[5]}]
set_property PACKAGE_PIN E18 [get_ports {seg_en[4]}]
set_property PACKAGE_PIN F18 [get_ports {seg_en[3]}]
set_property PACKAGE_PIN D19 [get_ports {seg_en[2]}]
set_property PACKAGE_PIN E19 [get_ports {seg_en[1]}]
set_property PACKAGE_PIN C19 [get_ports {seg_en[0]}]

set_property PACKAGE_PIN E13 [get_ports {seg_out[7]}]
set_property PACKAGE_PIN C15 [get_ports {seg_out[6]}]
set_property PACKAGE_PIN C14 [get_ports {seg_out[5]}]
set_property PACKAGE_PIN E17 [get_ports {seg_out[4]}]
set_property PACKAGE_PIN F16 [get_ports {seg_out[3]}]
set_property PACKAGE_PIN F14 [get_ports {seg_out[2]}]
set_property PACKAGE_PIN F13 [get_ports {seg_out[1]}]
set_property PACKAGE_PIN F15 [get_ports {seg_out[0]}]

# leds

set_property IOSTANDARD LVCMOS33 [get_ports {d_light[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p_light[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {l_light[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {l_light[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {l_light[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_light[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_light[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_light[0]}]

set_property PACKAGE_PIN D22 [get_ports {r_light[2]}]
set_property PACKAGE_PIN E22 [get_ports {r_light[1]}]
set_property PACKAGE_PIN A21 [get_ports {r_light[0]}]
set_property PACKAGE_PIN A19 [get_ports {buzzer[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {buzzer[0]}]
set_property PACKAGE_PIN E21 [get_ports {l_light[2]}]
set_property PACKAGE_PIN D21 [get_ports {l_light[1]}]
set_property PACKAGE_PIN G21 [get_ports {l_light[0]}]
set_property PACKAGE_PIN M17 [get_ports {d_light[0]}]
set_property PACKAGE_PIN M16 [get_ports {p_light[0]}]
