#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-mclv2_sam_rh707_pim.mk)" "nbproject/Makefile-local-mclv2_sam_rh707_pim.mk"
include nbproject/Makefile-local-mclv2_sam_rh707_pim.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=mclv2_sam_rh707_pim
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/pmsm_foc_pll_estimator_rh707.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/pmsm_foc_pll_estimator_rh707.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_calculation.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_control.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_error_handler.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flux_control.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flying_start.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_function_coordinator.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_generic_library.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_hardware_abstraction.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_interface_handling.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_motor_control.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pmsm_foc.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_position_control.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pwm.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_ramp_profiler.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_rotor_position.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_speed_control.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_start_up.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_voltage_measurement.c ../src/config/mclv2_sam_rh707_pim/peripheral/adc/plib_adc.c ../src/config/mclv2_sam_rh707_pim/peripheral/clk/plib_clk.c ../src/config/mclv2_sam_rh707_pim/peripheral/flexcom/usart/plib_flexcom1_usart.c ../src/config/mclv2_sam_rh707_pim/peripheral/matrix/plib_matrix.c ../src/config/mclv2_sam_rh707_pim/peripheral/nvic/plib_nvic.c ../src/config/mclv2_sam_rh707_pim/peripheral/pio/plib_pio.c ../src/config/mclv2_sam_rh707_pim/peripheral/pwm/plib_pwm0.c ../src/config/mclv2_sam_rh707_pim/stdio/xc32_monitor.c ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScope.c ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScopeCommunication.c ../src/config/mclv2_sam_rh707_pim/initialization.c ../src/config/mclv2_sam_rh707_pim/interrupts.c ../src/config/mclv2_sam_rh707_pim/exceptions.c ../src/config/mclv2_sam_rh707_pim/startup_xc32.c ../src/config/mclv2_sam_rh707_pim/libc_syscalls.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/841051168/mc_current_calculation.o ${OBJECTDIR}/_ext/841051168/mc_current_control.o ${OBJECTDIR}/_ext/841051168/mc_error_handler.o ${OBJECTDIR}/_ext/841051168/mc_flux_control.o ${OBJECTDIR}/_ext/841051168/mc_flying_start.o ${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o ${OBJECTDIR}/_ext/841051168/mc_generic_library.o ${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o ${OBJECTDIR}/_ext/841051168/mc_interface_handling.o ${OBJECTDIR}/_ext/841051168/mc_motor_control.o ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o ${OBJECTDIR}/_ext/841051168/mc_position_control.o ${OBJECTDIR}/_ext/841051168/mc_pwm.o ${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o ${OBJECTDIR}/_ext/841051168/mc_rotor_position.o ${OBJECTDIR}/_ext/841051168/mc_speed_control.o ${OBJECTDIR}/_ext/841051168/mc_start_up.o ${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o ${OBJECTDIR}/_ext/458284321/plib_adc.o ${OBJECTDIR}/_ext/458282143/plib_clk.o ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o ${OBJECTDIR}/_ext/1294225698/plib_matrix.o ${OBJECTDIR}/_ext/1321507197/plib_nvic.o ${OBJECTDIR}/_ext/458269739/plib_pio.o ${OBJECTDIR}/_ext/458269307/plib_pwm0.o ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o ${OBJECTDIR}/_ext/1762799627/X2CScope.o ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o ${OBJECTDIR}/_ext/387538179/initialization.o ${OBJECTDIR}/_ext/387538179/interrupts.o ${OBJECTDIR}/_ext/387538179/exceptions.o ${OBJECTDIR}/_ext/387538179/startup_xc32.o ${OBJECTDIR}/_ext/387538179/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/841051168/mc_current_calculation.o.d ${OBJECTDIR}/_ext/841051168/mc_current_control.o.d ${OBJECTDIR}/_ext/841051168/mc_error_handler.o.d ${OBJECTDIR}/_ext/841051168/mc_flux_control.o.d ${OBJECTDIR}/_ext/841051168/mc_flying_start.o.d ${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o.d ${OBJECTDIR}/_ext/841051168/mc_generic_library.o.d ${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o.d ${OBJECTDIR}/_ext/841051168/mc_interface_handling.o.d ${OBJECTDIR}/_ext/841051168/mc_motor_control.o.d ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o.d ${OBJECTDIR}/_ext/841051168/mc_position_control.o.d ${OBJECTDIR}/_ext/841051168/mc_pwm.o.d ${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o.d ${OBJECTDIR}/_ext/841051168/mc_rotor_position.o.d ${OBJECTDIR}/_ext/841051168/mc_speed_control.o.d ${OBJECTDIR}/_ext/841051168/mc_start_up.o.d ${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o.d ${OBJECTDIR}/_ext/458284321/plib_adc.o.d ${OBJECTDIR}/_ext/458282143/plib_clk.o.d ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o.d ${OBJECTDIR}/_ext/1294225698/plib_matrix.o.d ${OBJECTDIR}/_ext/1321507197/plib_nvic.o.d ${OBJECTDIR}/_ext/458269739/plib_pio.o.d ${OBJECTDIR}/_ext/458269307/plib_pwm0.o.d ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o.d ${OBJECTDIR}/_ext/1762799627/X2CScope.o.d ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o.d ${OBJECTDIR}/_ext/387538179/initialization.o.d ${OBJECTDIR}/_ext/387538179/interrupts.o.d ${OBJECTDIR}/_ext/387538179/exceptions.o.d ${OBJECTDIR}/_ext/387538179/startup_xc32.o.d ${OBJECTDIR}/_ext/387538179/libc_syscalls.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/841051168/mc_current_calculation.o ${OBJECTDIR}/_ext/841051168/mc_current_control.o ${OBJECTDIR}/_ext/841051168/mc_error_handler.o ${OBJECTDIR}/_ext/841051168/mc_flux_control.o ${OBJECTDIR}/_ext/841051168/mc_flying_start.o ${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o ${OBJECTDIR}/_ext/841051168/mc_generic_library.o ${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o ${OBJECTDIR}/_ext/841051168/mc_interface_handling.o ${OBJECTDIR}/_ext/841051168/mc_motor_control.o ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o ${OBJECTDIR}/_ext/841051168/mc_position_control.o ${OBJECTDIR}/_ext/841051168/mc_pwm.o ${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o ${OBJECTDIR}/_ext/841051168/mc_rotor_position.o ${OBJECTDIR}/_ext/841051168/mc_speed_control.o ${OBJECTDIR}/_ext/841051168/mc_start_up.o ${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o ${OBJECTDIR}/_ext/458284321/plib_adc.o ${OBJECTDIR}/_ext/458282143/plib_clk.o ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o ${OBJECTDIR}/_ext/1294225698/plib_matrix.o ${OBJECTDIR}/_ext/1321507197/plib_nvic.o ${OBJECTDIR}/_ext/458269739/plib_pio.o ${OBJECTDIR}/_ext/458269307/plib_pwm0.o ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o ${OBJECTDIR}/_ext/1762799627/X2CScope.o ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o ${OBJECTDIR}/_ext/387538179/initialization.o ${OBJECTDIR}/_ext/387538179/interrupts.o ${OBJECTDIR}/_ext/387538179/exceptions.o ${OBJECTDIR}/_ext/387538179/startup_xc32.o ${OBJECTDIR}/_ext/387538179/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_calculation.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_control.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_error_handler.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flux_control.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flying_start.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_function_coordinator.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_generic_library.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_hardware_abstraction.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_interface_handling.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_motor_control.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pmsm_foc.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_position_control.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pwm.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_ramp_profiler.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_rotor_position.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_speed_control.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_start_up.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_voltage_measurement.c ../src/config/mclv2_sam_rh707_pim/peripheral/adc/plib_adc.c ../src/config/mclv2_sam_rh707_pim/peripheral/clk/plib_clk.c ../src/config/mclv2_sam_rh707_pim/peripheral/flexcom/usart/plib_flexcom1_usart.c ../src/config/mclv2_sam_rh707_pim/peripheral/matrix/plib_matrix.c ../src/config/mclv2_sam_rh707_pim/peripheral/nvic/plib_nvic.c ../src/config/mclv2_sam_rh707_pim/peripheral/pio/plib_pio.c ../src/config/mclv2_sam_rh707_pim/peripheral/pwm/plib_pwm0.c ../src/config/mclv2_sam_rh707_pim/stdio/xc32_monitor.c ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScope.c ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScopeCommunication.c ../src/config/mclv2_sam_rh707_pim/initialization.c ../src/config/mclv2_sam_rh707_pim/interrupts.c ../src/config/mclv2_sam_rh707_pim/exceptions.c ../src/config/mclv2_sam_rh707_pim/startup_xc32.c ../src/config/mclv2_sam_rh707_pim/libc_syscalls.c ../src/main.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-mclv2_sam_rh707_pim.mk ${DISTDIR}/pmsm_foc_pll_estimator_rh707.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMRH707F18A
MP_LINKER_FILE_OPTION=,--script="..\src\config\mclv2_sam_rh707_pim\ATSAMRH707F18A.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/841051168/mc_current_calculation.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_calculation.c  .generated_files/flags/mclv2_sam_rh707_pim/70dc8d08b8f9e58de98cc36e7fb346371d062079 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_current_calculation.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_current_calculation.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_current_calculation.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_current_calculation.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_calculation.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_current_control.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_control.c  .generated_files/flags/mclv2_sam_rh707_pim/a58feb3e688d4e3d81a0930c4d9ac35661f348d3 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_current_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_current_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_current_control.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_current_control.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_control.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_error_handler.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_error_handler.c  .generated_files/flags/mclv2_sam_rh707_pim/8ba4377422e90b8e2f1b850933e9d6c7f385a28f .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_error_handler.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_error_handler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_error_handler.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_error_handler.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_error_handler.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_flux_control.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flux_control.c  .generated_files/flags/mclv2_sam_rh707_pim/54367310122ca36968ec1de3840315d0c50427a5 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_flux_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_flux_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_flux_control.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_flux_control.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flux_control.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_flying_start.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flying_start.c  .generated_files/flags/mclv2_sam_rh707_pim/70304cf6e101d6ff96ca437f87efd41137865e07 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_flying_start.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_flying_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_flying_start.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_flying_start.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flying_start.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_function_coordinator.c  .generated_files/flags/mclv2_sam_rh707_pim/f4b478ab6898e7b5997b218eb639ecfab41160e9 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_function_coordinator.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_generic_library.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_generic_library.c  .generated_files/flags/mclv2_sam_rh707_pim/fedd2ad022b2e90e8a8719e6b29d808031775dc0 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_generic_library.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_generic_library.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_generic_library.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_generic_library.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_generic_library.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_hardware_abstraction.c  .generated_files/flags/mclv2_sam_rh707_pim/1f78fe819d51a459d55e5cdeee54d5aee18353fe .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_hardware_abstraction.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_interface_handling.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_interface_handling.c  .generated_files/flags/mclv2_sam_rh707_pim/b9ed172a1b5b43f9c9b8e6235bb9ac48f1bc58bd .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_interface_handling.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_interface_handling.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_interface_handling.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_interface_handling.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_interface_handling.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_motor_control.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_motor_control.c  .generated_files/flags/mclv2_sam_rh707_pim/519cc91ecb1d3cf038e822ae8ac9dfb7b0dc65aa .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_motor_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_motor_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_motor_control.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_motor_control.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_motor_control.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pmsm_foc.c  .generated_files/flags/mclv2_sam_rh707_pim/d9b9bd9fd52c5bddb4ab824092b6ef905fe39004 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pmsm_foc.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_position_control.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_position_control.c  .generated_files/flags/mclv2_sam_rh707_pim/1c673d0b8aa8b54ace860fbf1bb06c5bae9e7e00 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_position_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_position_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_position_control.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_position_control.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_position_control.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_pwm.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pwm.c  .generated_files/flags/mclv2_sam_rh707_pim/8a63aceded859b7e408fd9e835b50f20dd7c9927 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_pwm.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_pwm.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pwm.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_ramp_profiler.c  .generated_files/flags/mclv2_sam_rh707_pim/7050991d2c0f6e84cc354cb54d483f386255b172 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_ramp_profiler.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_rotor_position.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_rotor_position.c  .generated_files/flags/mclv2_sam_rh707_pim/ae1d578fc5b18842363bf5e7459861375c8b1ff9 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_rotor_position.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_rotor_position.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_rotor_position.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_rotor_position.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_rotor_position.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_speed_control.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_speed_control.c  .generated_files/flags/mclv2_sam_rh707_pim/3b0b23391bcc0c2ca744ab20148baff73541550 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_speed_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_speed_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_speed_control.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_speed_control.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_speed_control.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_start_up.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_start_up.c  .generated_files/flags/mclv2_sam_rh707_pim/49874f8a340162dcb90bbf7e20c5b9f60b14aba8 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_start_up.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_start_up.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_start_up.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_start_up.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_start_up.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_voltage_measurement.c  .generated_files/flags/mclv2_sam_rh707_pim/91b664913414686ca4f73a0f70435efc09c7ba94 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_voltage_measurement.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458284321/plib_adc.o: ../src/config/mclv2_sam_rh707_pim/peripheral/adc/plib_adc.c  .generated_files/flags/mclv2_sam_rh707_pim/96fe3764a409e64cbe0b9f446e2b1f397540ff5a .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/458284321" 
	@${RM} ${OBJECTDIR}/_ext/458284321/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/458284321/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458284321/plib_adc.o.d" -o ${OBJECTDIR}/_ext/458284321/plib_adc.o ../src/config/mclv2_sam_rh707_pim/peripheral/adc/plib_adc.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458282143/plib_clk.o: ../src/config/mclv2_sam_rh707_pim/peripheral/clk/plib_clk.c  .generated_files/flags/mclv2_sam_rh707_pim/d43ea8523ef1fb47dd0868e33c3a18feaea711f2 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/458282143" 
	@${RM} ${OBJECTDIR}/_ext/458282143/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/458282143/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458282143/plib_clk.o.d" -o ${OBJECTDIR}/_ext/458282143/plib_clk.o ../src/config/mclv2_sam_rh707_pim/peripheral/clk/plib_clk.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o: ../src/config/mclv2_sam_rh707_pim/peripheral/flexcom/usart/plib_flexcom1_usart.c  .generated_files/flags/mclv2_sam_rh707_pim/ea10cdc8c097fd0a77e3886860c3876485a8df23 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/114167651" 
	@${RM} ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o.d" -o ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o ../src/config/mclv2_sam_rh707_pim/peripheral/flexcom/usart/plib_flexcom1_usart.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1294225698/plib_matrix.o: ../src/config/mclv2_sam_rh707_pim/peripheral/matrix/plib_matrix.c  .generated_files/flags/mclv2_sam_rh707_pim/813bd1c63dafcdd54068b4067e28dd7a9e775741 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/1294225698" 
	@${RM} ${OBJECTDIR}/_ext/1294225698/plib_matrix.o.d 
	@${RM} ${OBJECTDIR}/_ext/1294225698/plib_matrix.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1294225698/plib_matrix.o.d" -o ${OBJECTDIR}/_ext/1294225698/plib_matrix.o ../src/config/mclv2_sam_rh707_pim/peripheral/matrix/plib_matrix.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1321507197/plib_nvic.o: ../src/config/mclv2_sam_rh707_pim/peripheral/nvic/plib_nvic.c  .generated_files/flags/mclv2_sam_rh707_pim/c22daf6d70d0d186f2d48d000a7abf9e57609af0 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/1321507197" 
	@${RM} ${OBJECTDIR}/_ext/1321507197/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1321507197/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1321507197/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1321507197/plib_nvic.o ../src/config/mclv2_sam_rh707_pim/peripheral/nvic/plib_nvic.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458269739/plib_pio.o: ../src/config/mclv2_sam_rh707_pim/peripheral/pio/plib_pio.c  .generated_files/flags/mclv2_sam_rh707_pim/63e3c3c8515d3dad2aba41a6dca3c43f12eb7f9b .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/458269739" 
	@${RM} ${OBJECTDIR}/_ext/458269739/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/458269739/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458269739/plib_pio.o.d" -o ${OBJECTDIR}/_ext/458269739/plib_pio.o ../src/config/mclv2_sam_rh707_pim/peripheral/pio/plib_pio.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458269307/plib_pwm0.o: ../src/config/mclv2_sam_rh707_pim/peripheral/pwm/plib_pwm0.c  .generated_files/flags/mclv2_sam_rh707_pim/72930e221c340b5cce3d783c2d46569a606d857c .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/458269307" 
	@${RM} ${OBJECTDIR}/_ext/458269307/plib_pwm0.o.d 
	@${RM} ${OBJECTDIR}/_ext/458269307/plib_pwm0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458269307/plib_pwm0.o.d" -o ${OBJECTDIR}/_ext/458269307/plib_pwm0.o ../src/config/mclv2_sam_rh707_pim/peripheral/pwm/plib_pwm0.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1949058295/xc32_monitor.o: ../src/config/mclv2_sam_rh707_pim/stdio/xc32_monitor.c  .generated_files/flags/mclv2_sam_rh707_pim/4bac68cc7cb4a71e78dae6b5f2fca342265335b8 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/1949058295" 
	@${RM} ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1949058295/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o ../src/config/mclv2_sam_rh707_pim/stdio/xc32_monitor.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762799627/X2CScope.o: ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScope.c  .generated_files/flags/mclv2_sam_rh707_pim/6c59e41ccc398d0fe0197f2cd2a87ae7294e0ef8 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/1762799627" 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScope.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScope.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762799627/X2CScope.o.d" -o ${OBJECTDIR}/_ext/1762799627/X2CScope.o ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScope.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o: ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScopeCommunication.c  .generated_files/flags/mclv2_sam_rh707_pim/bf5c5328e97a88087bad20ef2c38ab70adaceabd .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/1762799627" 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o.d" -o ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScopeCommunication.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/initialization.o: ../src/config/mclv2_sam_rh707_pim/initialization.c  .generated_files/flags/mclv2_sam_rh707_pim/63bedb32210f693a25a34f39b657221327e1a7 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/initialization.o.d" -o ${OBJECTDIR}/_ext/387538179/initialization.o ../src/config/mclv2_sam_rh707_pim/initialization.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/interrupts.o: ../src/config/mclv2_sam_rh707_pim/interrupts.c  .generated_files/flags/mclv2_sam_rh707_pim/428bf3169f812cf05614cc9648f153cf7a98092d .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/interrupts.o.d" -o ${OBJECTDIR}/_ext/387538179/interrupts.o ../src/config/mclv2_sam_rh707_pim/interrupts.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/exceptions.o: ../src/config/mclv2_sam_rh707_pim/exceptions.c  .generated_files/flags/mclv2_sam_rh707_pim/e55557d597c6c69435dd45da106b60425294c72e .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/exceptions.o.d" -o ${OBJECTDIR}/_ext/387538179/exceptions.o ../src/config/mclv2_sam_rh707_pim/exceptions.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/startup_xc32.o: ../src/config/mclv2_sam_rh707_pim/startup_xc32.c  .generated_files/flags/mclv2_sam_rh707_pim/1e9545572c86cee2c06818b6ecbb41ef2686a94b .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/387538179/startup_xc32.o ../src/config/mclv2_sam_rh707_pim/startup_xc32.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/libc_syscalls.o: ../src/config/mclv2_sam_rh707_pim/libc_syscalls.c  .generated_files/flags/mclv2_sam_rh707_pim/940001d822bea1f05917bd9477256444b11d669b .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/387538179/libc_syscalls.o ../src/config/mclv2_sam_rh707_pim/libc_syscalls.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/mclv2_sam_rh707_pim/417678f7e84dd791341d04b65d18ba199fda7367 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/841051168/mc_current_calculation.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_calculation.c  .generated_files/flags/mclv2_sam_rh707_pim/1a5b54f50ff8abeb1b5ceb6cad2af1fbfa024898 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_current_calculation.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_current_calculation.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_current_calculation.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_current_calculation.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_calculation.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_current_control.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_control.c  .generated_files/flags/mclv2_sam_rh707_pim/54053d25237681727731173305c767d99173caf9 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_current_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_current_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_current_control.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_current_control.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_control.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_error_handler.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_error_handler.c  .generated_files/flags/mclv2_sam_rh707_pim/d7b2d91724423a7a5f51137b4c4f3809a8de8af4 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_error_handler.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_error_handler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_error_handler.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_error_handler.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_error_handler.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_flux_control.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flux_control.c  .generated_files/flags/mclv2_sam_rh707_pim/86a63c1d27eb3fe803026b93b315845d2ada113b .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_flux_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_flux_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_flux_control.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_flux_control.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flux_control.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_flying_start.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flying_start.c  .generated_files/flags/mclv2_sam_rh707_pim/5425b4aa4e5e2d3af0781f58eb9ce2f535cc6bad .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_flying_start.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_flying_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_flying_start.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_flying_start.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flying_start.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_function_coordinator.c  .generated_files/flags/mclv2_sam_rh707_pim/de6f2f0ed437b5ddbb1fae8f23158d0187b442f8 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_function_coordinator.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_generic_library.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_generic_library.c  .generated_files/flags/mclv2_sam_rh707_pim/b595ac65ff0be9a18d83162bc7e395fd674447c2 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_generic_library.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_generic_library.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_generic_library.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_generic_library.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_generic_library.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_hardware_abstraction.c  .generated_files/flags/mclv2_sam_rh707_pim/c672600470e47f69a354def09ea098654386153d .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_hardware_abstraction.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_interface_handling.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_interface_handling.c  .generated_files/flags/mclv2_sam_rh707_pim/79389aad8e10aa19665c51b55fee2d604ec84131 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_interface_handling.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_interface_handling.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_interface_handling.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_interface_handling.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_interface_handling.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_motor_control.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_motor_control.c  .generated_files/flags/mclv2_sam_rh707_pim/8eacae83bda21c78266c2eb6b0a0b27a2e5d0ae2 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_motor_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_motor_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_motor_control.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_motor_control.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_motor_control.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pmsm_foc.c  .generated_files/flags/mclv2_sam_rh707_pim/9c9fac99db711c08f1d575cb5acb181025e0ca8 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pmsm_foc.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_position_control.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_position_control.c  .generated_files/flags/mclv2_sam_rh707_pim/f460484c7354b6a4253dd80d81840579d6a4fb65 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_position_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_position_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_position_control.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_position_control.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_position_control.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_pwm.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pwm.c  .generated_files/flags/mclv2_sam_rh707_pim/10e9a144b0d29d14fa44a480e967c1794e38ce90 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_pwm.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_pwm.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pwm.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_ramp_profiler.c  .generated_files/flags/mclv2_sam_rh707_pim/745e4f037223d5a804a5d5d3b62c7ada59072be4 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_ramp_profiler.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_rotor_position.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_rotor_position.c  .generated_files/flags/mclv2_sam_rh707_pim/57c1788bf41db2bc21342bb51d46d5dc0cffdde2 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_rotor_position.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_rotor_position.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_rotor_position.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_rotor_position.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_rotor_position.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_speed_control.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_speed_control.c  .generated_files/flags/mclv2_sam_rh707_pim/635198042c57c27799861e55ce9f40501040b3b0 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_speed_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_speed_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_speed_control.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_speed_control.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_speed_control.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_start_up.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_start_up.c  .generated_files/flags/mclv2_sam_rh707_pim/bb6c359b8a97e2e293ef3a89e175c7ff4d104265 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_start_up.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_start_up.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_start_up.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_start_up.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_start_up.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_voltage_measurement.c  .generated_files/flags/mclv2_sam_rh707_pim/35e058e1fb2a7c5aac9f686c3117b74a42cfa72b .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_voltage_measurement.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458284321/plib_adc.o: ../src/config/mclv2_sam_rh707_pim/peripheral/adc/plib_adc.c  .generated_files/flags/mclv2_sam_rh707_pim/ade72295c34d31a46e5da139fec715487e7d2ba2 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/458284321" 
	@${RM} ${OBJECTDIR}/_ext/458284321/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/458284321/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458284321/plib_adc.o.d" -o ${OBJECTDIR}/_ext/458284321/plib_adc.o ../src/config/mclv2_sam_rh707_pim/peripheral/adc/plib_adc.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458282143/plib_clk.o: ../src/config/mclv2_sam_rh707_pim/peripheral/clk/plib_clk.c  .generated_files/flags/mclv2_sam_rh707_pim/c89fb014a83c97577eaed40290ec7c65f75c954b .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/458282143" 
	@${RM} ${OBJECTDIR}/_ext/458282143/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/458282143/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458282143/plib_clk.o.d" -o ${OBJECTDIR}/_ext/458282143/plib_clk.o ../src/config/mclv2_sam_rh707_pim/peripheral/clk/plib_clk.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o: ../src/config/mclv2_sam_rh707_pim/peripheral/flexcom/usart/plib_flexcom1_usart.c  .generated_files/flags/mclv2_sam_rh707_pim/2be3b3aa9135bbacb93d36b8fe5a8d422e27847 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/114167651" 
	@${RM} ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o.d" -o ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o ../src/config/mclv2_sam_rh707_pim/peripheral/flexcom/usart/plib_flexcom1_usart.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1294225698/plib_matrix.o: ../src/config/mclv2_sam_rh707_pim/peripheral/matrix/plib_matrix.c  .generated_files/flags/mclv2_sam_rh707_pim/5ea4aa7a9e5e9fb8ad15a5d7638c3709bd2fd8b7 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/1294225698" 
	@${RM} ${OBJECTDIR}/_ext/1294225698/plib_matrix.o.d 
	@${RM} ${OBJECTDIR}/_ext/1294225698/plib_matrix.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1294225698/plib_matrix.o.d" -o ${OBJECTDIR}/_ext/1294225698/plib_matrix.o ../src/config/mclv2_sam_rh707_pim/peripheral/matrix/plib_matrix.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1321507197/plib_nvic.o: ../src/config/mclv2_sam_rh707_pim/peripheral/nvic/plib_nvic.c  .generated_files/flags/mclv2_sam_rh707_pim/4aefa70ddb9b3ab76273ab4cce30e3752ba24f98 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/1321507197" 
	@${RM} ${OBJECTDIR}/_ext/1321507197/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1321507197/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1321507197/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1321507197/plib_nvic.o ../src/config/mclv2_sam_rh707_pim/peripheral/nvic/plib_nvic.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458269739/plib_pio.o: ../src/config/mclv2_sam_rh707_pim/peripheral/pio/plib_pio.c  .generated_files/flags/mclv2_sam_rh707_pim/720e86e811dd1d1d020b1a2c1832cbfb91fb80e8 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/458269739" 
	@${RM} ${OBJECTDIR}/_ext/458269739/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/458269739/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458269739/plib_pio.o.d" -o ${OBJECTDIR}/_ext/458269739/plib_pio.o ../src/config/mclv2_sam_rh707_pim/peripheral/pio/plib_pio.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458269307/plib_pwm0.o: ../src/config/mclv2_sam_rh707_pim/peripheral/pwm/plib_pwm0.c  .generated_files/flags/mclv2_sam_rh707_pim/2fea6bfc402e7e673d297a1a746d6bdc8b049ad0 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/458269307" 
	@${RM} ${OBJECTDIR}/_ext/458269307/plib_pwm0.o.d 
	@${RM} ${OBJECTDIR}/_ext/458269307/plib_pwm0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458269307/plib_pwm0.o.d" -o ${OBJECTDIR}/_ext/458269307/plib_pwm0.o ../src/config/mclv2_sam_rh707_pim/peripheral/pwm/plib_pwm0.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1949058295/xc32_monitor.o: ../src/config/mclv2_sam_rh707_pim/stdio/xc32_monitor.c  .generated_files/flags/mclv2_sam_rh707_pim/143b04a72e159827b79644408135fd51b37a4aeb .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/1949058295" 
	@${RM} ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1949058295/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o ../src/config/mclv2_sam_rh707_pim/stdio/xc32_monitor.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762799627/X2CScope.o: ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScope.c  .generated_files/flags/mclv2_sam_rh707_pim/e148f42305c87c5ab2d6e0f87308d08f7abd093 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/1762799627" 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScope.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScope.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762799627/X2CScope.o.d" -o ${OBJECTDIR}/_ext/1762799627/X2CScope.o ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScope.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o: ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScopeCommunication.c  .generated_files/flags/mclv2_sam_rh707_pim/7f279b9399e5b1fd25d449810d4b43528e183663 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/1762799627" 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o.d" -o ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScopeCommunication.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/initialization.o: ../src/config/mclv2_sam_rh707_pim/initialization.c  .generated_files/flags/mclv2_sam_rh707_pim/62d5699f7f8396e011e6dbb93a0f41aa53ece947 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/initialization.o.d" -o ${OBJECTDIR}/_ext/387538179/initialization.o ../src/config/mclv2_sam_rh707_pim/initialization.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/interrupts.o: ../src/config/mclv2_sam_rh707_pim/interrupts.c  .generated_files/flags/mclv2_sam_rh707_pim/bd63dced74cccde17417e8b92327d7b87d9e9e16 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/interrupts.o.d" -o ${OBJECTDIR}/_ext/387538179/interrupts.o ../src/config/mclv2_sam_rh707_pim/interrupts.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/exceptions.o: ../src/config/mclv2_sam_rh707_pim/exceptions.c  .generated_files/flags/mclv2_sam_rh707_pim/905d9a263995add2f8b245ac25221c2192b3ef6 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/exceptions.o.d" -o ${OBJECTDIR}/_ext/387538179/exceptions.o ../src/config/mclv2_sam_rh707_pim/exceptions.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/startup_xc32.o: ../src/config/mclv2_sam_rh707_pim/startup_xc32.c  .generated_files/flags/mclv2_sam_rh707_pim/8fc202ba8792500306332f21bed8e5639fe68176 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/387538179/startup_xc32.o ../src/config/mclv2_sam_rh707_pim/startup_xc32.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/libc_syscalls.o: ../src/config/mclv2_sam_rh707_pim/libc_syscalls.c  .generated_files/flags/mclv2_sam_rh707_pim/196cb540a27d17815deb3eba33595675d0549445 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/387538179/libc_syscalls.o ../src/config/mclv2_sam_rh707_pim/libc_syscalls.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/mclv2_sam_rh707_pim/a1d5ca194b74e0d20072a68e8fcb6c38fb0939fd .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/pmsm_foc_pll_estimator_rh707.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/lib/libCORTEXM7_X2CScope.a ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/lib/libCORTEXM7_X2CScope.a  ../src/config/mclv2_sam_rh707_pim/ATSAMRH707F18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g  -D__MPLAB_DEBUGGER_ICD4=1 -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/pmsm_foc_pll_estimator_rh707.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\src\config\mclv2_sam_rh707_pim\X2CCode\X2CScope\lib\libCORTEXM7_X2CScope.a ..\src\config\mclv2_sam_rh707_pim\X2CCode\X2CScope\lib\libCORTEXM7_X2CScope.a     -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_ICD4=1,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/pmsm_foc_pll_estimator_rh707.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/lib/libCORTEXM7_X2CScope.a ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/lib/libCORTEXM7_X2CScope.a ../src/config/mclv2_sam_rh707_pim/ATSAMRH707F18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/pmsm_foc_pll_estimator_rh707.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\src\config\mclv2_sam_rh707_pim\X2CCode\X2CScope\lib\libCORTEXM7_X2CScope.a ..\src\config\mclv2_sam_rh707_pim\X2CCode\X2CScope\lib\libCORTEXM7_X2CScope.a     -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/pmsm_foc_pll_estimator_rh707.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
