
xelab xil_defaultlib.apatb_splitter_top -prj splitter.prj --lib "ieee_proposed=./ieee_proposed" -s splitter 
xsim --noieeewarnings splitter -tclbatch splitter.tcl

