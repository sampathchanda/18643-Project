#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/littlefoot/18643_project/Hardware-Accel/HW/convolution_layer_1/solution2/.autopilot/db/a.g.bc ${1+"$@"}
