
xelab xil_defaultlib.apatb_maxpool_top -prj maxpool.prj --lib "ieee_proposed=./ieee_proposed" -s maxpool 
xsim --noieeewarnings maxpool -tclbatch maxpool.tcl

