# Clock
set_property PACKAGE_PIN AK34 [get_ports clk]
set_property IOSTANDARD LVCMOS18 [get_ports clk]
create_clock -period 80.000 -name clk -waveform {0.000 40.000} [get_ports clk]

# Input: rst
set_property PACKAGE_PIN AY33 [get_ports rst]
    set_property IOSTANDARD LVCMOS18 [get_ports rst]
    
# See VC707 board datasheet P63 for FMC 1 pins
# Input: angle (FMC 1)
set_property PACKAGE_PIN D35 [get_ports {angle[0]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {angle[0]}]
set_property PACKAGE_PIN D36 [get_ports {angle[1]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {angle[1]}]
set_property PACKAGE_PIN G32 [get_ports {angle[2]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {angle[2]}]
set_property PACKAGE_PIN F32 [get_ports {angle[3]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {angle[3]}]
set_property PACKAGE_PIN E32 [get_ports {angle[4]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {angle[4]}]
set_property PACKAGE_PIN D32 [get_ports {angle[5]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {angle[5]}]
set_property PACKAGE_PIN B36 [get_ports {angle[6]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {angle[6]}]
set_property PACKAGE_PIN A37 [get_ports {angle[7]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {angle[7]}]
set_property PACKAGE_PIN B39 [get_ports {angle[8]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {angle[8]}]
set_property PACKAGE_PIN A39 [get_ports {angle[9]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {angle[9]}]
set_property PACKAGE_PIN B34 [get_ports {angle[10]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {angle[10]}]
set_property PACKAGE_PIN A34 [get_ports {angle[11]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {angle[11]}]
set_property PACKAGE_PIN G28 [get_ports {angle[12]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {angle[12]}]
set_property PACKAGE_PIN G29 [get_ports {angle[13]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {angle[13]}]
set_property PACKAGE_PIN K27 [get_ports {angle[14]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {angle[14]}]
set_property PACKAGE_PIN J27 [get_ports {angle[15]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {angle[15]}]


# See VC707 board datasheet P68 for FMC 2 pins
# Output: cos (FMC 2)
set_property PACKAGE_PIN AD32 [get_ports {cos[0]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {cos[0]}]
set_property PACKAGE_PIN AD33 [get_ports {cos[1]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {cos[1]}]
set_property PACKAGE_PIN Y32 [get_ports {cos[2]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {cos[2]}]
set_property PACKAGE_PIN Y33 [get_ports {cos[3]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {cos[3]}]
set_property PACKAGE_PIN AE29 [get_ports {cos[4]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {cos[4]}]
set_property PACKAGE_PIN AE30 [get_ports {cos[5]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {cos[5]}]
set_property PACKAGE_PIN AE32 [get_ports {cos[6]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {cos[6]}]
set_property PACKAGE_PIN AE33 [get_ports {cos[7]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {cos[7]}]
set_property PACKAGE_PIN AG36 [get_ports {cos[8]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {cos[8]}]
set_property PACKAGE_PIN AH36 [get_ports {cos[9]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {cos[9]}]
set_property PACKAGE_PIN AD36 [get_ports {cos[10]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {cos[10]}]
set_property PACKAGE_PIN AD37 [get_ports {cos[11]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {cos[11]}]
set_property PACKAGE_PIN AG34 [get_ports {cos[12]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {cos[12]}]
set_property PACKAGE_PIN AE37 [get_ports {cos[13]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {cos[13]}]
set_property PACKAGE_PIN AF37 [get_ports {cos[14]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {cos[14]}]
set_property PACKAGE_PIN AC35 [get_ports {cos[15]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {cos[15]}]
set_property PACKAGE_PIN AA39 [get_ports {cos[16]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {cos[16]}]

# Output: sin (FMC 2)
set_property PACKAGE_PIN AC36 [get_ports {sin[0]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {sin[0]}]
set_property PACKAGE_PIN AD41 [get_ports {sin[1]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {sin[1]}]
set_property PACKAGE_PIN AJ42 [get_ports {sin[2]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {sin[2]}]
set_property PACKAGE_PIN AK42 [get_ports {sin[3]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {sin[3]}]
set_property PACKAGE_PIN AD42 [get_ports {sin[4]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {sin[4]}]
set_property PACKAGE_PIN U39 [get_ports {sin[5]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {sin[5]}]
set_property PACKAGE_PIN T39 [get_ports {sin[6]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {sin[6]}]
set_property PACKAGE_PIN AE42 [get_ports {sin[7]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {sin[7]}]
set_property PACKAGE_PIN AF29 [get_ports {sin[8]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {sin[8]}]
set_property PACKAGE_PIN AB33 [get_ports {sin[9]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {sin[9]}]
set_property PACKAGE_PIN AC33 [get_ports {sin[10]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {sin[10]}]
set_property PACKAGE_PIN AB29 [get_ports {sin[11]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {sin[11]}]
set_property PACKAGE_PIN AC29 [get_ports {sin[12]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {sin[12]}]
set_property PACKAGE_PIN AA31 [get_ports {sin[13]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {sin[13]}]
set_property PACKAGE_PIN AA32 [get_ports {sin[14]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {sin[14]}]
set_property PACKAGE_PIN AF34 [get_ports {sin[15]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {sin[15]}]
set_property PACKAGE_PIN Y39 [get_ports {sin[16]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {sin[16]}]

