
call xelab xil_defaultlib.apatb_obj_detector_top -prj obj_detector.prj --lib "ieee_proposed=./ieee_proposed" -s obj_detector 
call xsim --noieeewarnings obj_detector -tclbatch obj_detector.tcl

