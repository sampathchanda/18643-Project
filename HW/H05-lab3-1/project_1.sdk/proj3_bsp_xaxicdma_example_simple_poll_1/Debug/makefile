################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
proj3_bsp_xaxicdma_example_simple_poll_1.elf.size \


# All Target
all: proj3_bsp_xaxicdma_example_simple_poll_1.elf secondary-outputs

# Tool invocations
proj3_bsp_xaxicdma_example_simple_poll_1.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM gcc linker'
	arm-xilinx-eabi-gcc -Wl,-T -Wl,../src/lscript.ld -L../../proj3_bsp/ps7_cortexa9_0/lib -o "proj3_bsp_xaxicdma_example_simple_poll_1.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

proj3_bsp_xaxicdma_example_simple_poll_1.elf.size: proj3_bsp_xaxicdma_example_simple_poll_1.elf
	@echo 'Invoking: ARM Print Size'
	arm-xilinx-eabi-size proj3_bsp_xaxicdma_example_simple_poll_1.elf  |tee "proj3_bsp_xaxicdma_example_simple_poll_1.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(S_UPPER_DEPS)$(C_DEPS)$(ELFSIZE) proj3_bsp_xaxicdma_example_simple_poll_1.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
