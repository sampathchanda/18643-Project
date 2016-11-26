
xelab xil_defaultlib.apatb_convolve_top -prj convolve.prj --lib "ieee_proposed=./ieee_proposed" -s convolve 
xsim --noieeewarnings convolve -tclbatch convolve.tcl

