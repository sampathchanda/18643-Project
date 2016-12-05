# ==============================================================
# File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
# Version: 2015.2
# Copyright (C) 2015 Xilinx Inc. All rights reserved.
# 
# ==============================================================

__SIM_FPO__ = 1
__SIM_OPENCV__ = 1
__SIM_FFT__ = 1
__SIM_FIR__ = 1
__SIM_DDS__ = 1

TARGET := cosim.tv.exe

AUTOPILOT_ROOT := C:/Xilinx/Vivado_HLS/2015.2
AUTOPILOT_MACH := win64

ifdef COSIM_M32
  AUTOPILOT_MACH := lnx32
  IFLAG += -m32
endif
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := C:/Xilinx/Vivado_HLS/2015.2/msys/bin
endif

IFLAG += -g

IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools/auto_cc/include"
IFLAG += -D__SIM_FPO__
IFLAG += -D__SIM_OPENCV__
IFLAG += -D__SIM_FFT__
IFLAG += -D__SIM_FIR__
IFLAG += -D__SIM_DDS__
IFLAG += -DNT
LFLAG += -L "${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools/systemc/lib" -lsystemc -lpthread
IFLAG += -D__RTL_SIMULATION__
DFLAG += -DAESL_PIPELINE
LFLAG += -Wl,--enable-auto-import

include ./Makefile.rules

all : $(TARGET)

$(ObjDir)/obj_detector_tb.cpp_pre.cpp.tb.o : obj_detector_tb.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling obj_detector_tb.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) gcc -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG)  $< -o $@; \

$(ObjDir)/obj_detector.cpp_pre.cpp.tb.o : obj_detector.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling obj_detector.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) gcc -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG)  $< -o $@; \
