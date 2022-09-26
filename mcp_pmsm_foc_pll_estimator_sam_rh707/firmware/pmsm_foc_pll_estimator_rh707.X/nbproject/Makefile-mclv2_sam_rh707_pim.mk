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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_calculation.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_control.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_error_handler.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flux_control.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flying_start.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_function_coordinator.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_generic_library.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_hardware_abstraction.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_interface_handling.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_motor_control.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pmsm_foc.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pwm.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_ramp_profiler.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_rotor_position.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_speed_control.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_start_up.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_voltage_measurement.c ../src/config/mclv2_sam_rh707_pim/peripheral/adc/plib_adc.c ../src/config/mclv2_sam_rh707_pim/peripheral/clk/plib_clk.c ../src/config/mclv2_sam_rh707_pim/peripheral/flexcom/usart/plib_flexcom1_usart.c ../src/config/mclv2_sam_rh707_pim/peripheral/matrix/plib_matrix.c ../src/config/mclv2_sam_rh707_pim/peripheral/nvic/plib_nvic.c ../src/config/mclv2_sam_rh707_pim/peripheral/pio/plib_pio.c ../src/config/mclv2_sam_rh707_pim/peripheral/pwm/plib_pwm0.c ../src/config/mclv2_sam_rh707_pim/stdio/xc32_monitor.c ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScope.c ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScopeCommunication.c ../src/config/mclv2_sam_rh707_pim/initialization.c ../src/config/mclv2_sam_rh707_pim/interrupts.c ../src/config/mclv2_sam_rh707_pim/exceptions.c ../src/config/mclv2_sam_rh707_pim/startup_xc32.c ../src/config/mclv2_sam_rh707_pim/libc_syscalls.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/841051168/mc_current_calculation.o ${OBJECTDIR}/_ext/841051168/mc_current_control.o ${OBJECTDIR}/_ext/841051168/mc_error_handler.o ${OBJECTDIR}/_ext/841051168/mc_flux_control.o ${OBJECTDIR}/_ext/841051168/mc_flying_start.o ${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o ${OBJECTDIR}/_ext/841051168/mc_generic_library.o ${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o ${OBJECTDIR}/_ext/841051168/mc_interface_handling.o ${OBJECTDIR}/_ext/841051168/mc_motor_control.o ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o ${OBJECTDIR}/_ext/841051168/mc_pwm.o ${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o ${OBJECTDIR}/_ext/841051168/mc_rotor_position.o ${OBJECTDIR}/_ext/841051168/mc_speed_control.o ${OBJECTDIR}/_ext/841051168/mc_start_up.o ${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o ${OBJECTDIR}/_ext/458284321/plib_adc.o ${OBJECTDIR}/_ext/458282143/plib_clk.o ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o ${OBJECTDIR}/_ext/1294225698/plib_matrix.o ${OBJECTDIR}/_ext/1321507197/plib_nvic.o ${OBJECTDIR}/_ext/458269739/plib_pio.o ${OBJECTDIR}/_ext/458269307/plib_pwm0.o ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o ${OBJECTDIR}/_ext/1762799627/X2CScope.o ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o ${OBJECTDIR}/_ext/387538179/initialization.o ${OBJECTDIR}/_ext/387538179/interrupts.o ${OBJECTDIR}/_ext/387538179/exceptions.o ${OBJECTDIR}/_ext/387538179/startup_xc32.o ${OBJECTDIR}/_ext/387538179/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/841051168/mc_current_calculation.o.d ${OBJECTDIR}/_ext/841051168/mc_current_control.o.d ${OBJECTDIR}/_ext/841051168/mc_error_handler.o.d ${OBJECTDIR}/_ext/841051168/mc_flux_control.o.d ${OBJECTDIR}/_ext/841051168/mc_flying_start.o.d ${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o.d ${OBJECTDIR}/_ext/841051168/mc_generic_library.o.d ${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o.d ${OBJECTDIR}/_ext/841051168/mc_interface_handling.o.d ${OBJECTDIR}/_ext/841051168/mc_motor_control.o.d ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o.d ${OBJECTDIR}/_ext/841051168/mc_pwm.o.d ${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o.d ${OBJECTDIR}/_ext/841051168/mc_rotor_position.o.d ${OBJECTDIR}/_ext/841051168/mc_speed_control.o.d ${OBJECTDIR}/_ext/841051168/mc_start_up.o.d ${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o.d ${OBJECTDIR}/_ext/458284321/plib_adc.o.d ${OBJECTDIR}/_ext/458282143/plib_clk.o.d ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o.d ${OBJECTDIR}/_ext/1294225698/plib_matrix.o.d ${OBJECTDIR}/_ext/1321507197/plib_nvic.o.d ${OBJECTDIR}/_ext/458269739/plib_pio.o.d ${OBJECTDIR}/_ext/458269307/plib_pwm0.o.d ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o.d ${OBJECTDIR}/_ext/1762799627/X2CScope.o.d ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o.d ${OBJECTDIR}/_ext/387538179/initialization.o.d ${OBJECTDIR}/_ext/387538179/interrupts.o.d ${OBJECTDIR}/_ext/387538179/exceptions.o.d ${OBJECTDIR}/_ext/387538179/startup_xc32.o.d ${OBJECTDIR}/_ext/387538179/libc_syscalls.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/841051168/mc_current_calculation.o ${OBJECTDIR}/_ext/841051168/mc_current_control.o ${OBJECTDIR}/_ext/841051168/mc_error_handler.o ${OBJECTDIR}/_ext/841051168/mc_flux_control.o ${OBJECTDIR}/_ext/841051168/mc_flying_start.o ${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o ${OBJECTDIR}/_ext/841051168/mc_generic_library.o ${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o ${OBJECTDIR}/_ext/841051168/mc_interface_handling.o ${OBJECTDIR}/_ext/841051168/mc_motor_control.o ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o ${OBJECTDIR}/_ext/841051168/mc_pwm.o ${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o ${OBJECTDIR}/_ext/841051168/mc_rotor_position.o ${OBJECTDIR}/_ext/841051168/mc_speed_control.o ${OBJECTDIR}/_ext/841051168/mc_start_up.o ${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o ${OBJECTDIR}/_ext/458284321/plib_adc.o ${OBJECTDIR}/_ext/458282143/plib_clk.o ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o ${OBJECTDIR}/_ext/1294225698/plib_matrix.o ${OBJECTDIR}/_ext/1321507197/plib_nvic.o ${OBJECTDIR}/_ext/458269739/plib_pio.o ${OBJECTDIR}/_ext/458269307/plib_pwm0.o ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o ${OBJECTDIR}/_ext/1762799627/X2CScope.o ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o ${OBJECTDIR}/_ext/387538179/initialization.o ${OBJECTDIR}/_ext/387538179/interrupts.o ${OBJECTDIR}/_ext/387538179/exceptions.o ${OBJECTDIR}/_ext/387538179/startup_xc32.o ${OBJECTDIR}/_ext/387538179/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_calculation.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_control.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_error_handler.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flux_control.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flying_start.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_function_coordinator.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_generic_library.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_hardware_abstraction.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_interface_handling.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_motor_control.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pmsm_foc.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pwm.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_ramp_profiler.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_rotor_position.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_speed_control.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_start_up.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_voltage_measurement.c ../src/config/mclv2_sam_rh707_pim/peripheral/adc/plib_adc.c ../src/config/mclv2_sam_rh707_pim/peripheral/clk/plib_clk.c ../src/config/mclv2_sam_rh707_pim/peripheral/flexcom/usart/plib_flexcom1_usart.c ../src/config/mclv2_sam_rh707_pim/peripheral/matrix/plib_matrix.c ../src/config/mclv2_sam_rh707_pim/peripheral/nvic/plib_nvic.c ../src/config/mclv2_sam_rh707_pim/peripheral/pio/plib_pio.c ../src/config/mclv2_sam_rh707_pim/peripheral/pwm/plib_pwm0.c ../src/config/mclv2_sam_rh707_pim/stdio/xc32_monitor.c ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScope.c ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScopeCommunication.c ../src/config/mclv2_sam_rh707_pim/initialization.c ../src/config/mclv2_sam_rh707_pim/interrupts.c ../src/config/mclv2_sam_rh707_pim/exceptions.c ../src/config/mclv2_sam_rh707_pim/startup_xc32.c ../src/config/mclv2_sam_rh707_pim/libc_syscalls.c ../src/main.c

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
${OBJECTDIR}/_ext/841051168/mc_current_calculation.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_calculation.c  .generated_files/flags/mclv2_sam_rh707_pim/f83c5d8fbb7a2921d0641fae28281eb66a885d72 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_current_calculation.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_current_calculation.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_current_calculation.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_current_calculation.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_calculation.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_current_control.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_control.c  .generated_files/flags/mclv2_sam_rh707_pim/f70a8322ed9d3504aee0dc7596a2c13af6522ba .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_current_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_current_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_current_control.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_current_control.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_control.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_error_handler.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_error_handler.c  .generated_files/flags/mclv2_sam_rh707_pim/e24eaff8eba353a9413b0afac2ef47e59e046a02 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_error_handler.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_error_handler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_error_handler.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_error_handler.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_error_handler.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_flux_control.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flux_control.c  .generated_files/flags/mclv2_sam_rh707_pim/12c1dfb74644fd6d67c43fe029fb6e78392e4491 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_flux_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_flux_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_flux_control.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_flux_control.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flux_control.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_flying_start.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flying_start.c  .generated_files/flags/mclv2_sam_rh707_pim/d21eb3eca0f9bd57cbd8205aac7d7add88937212 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_flying_start.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_flying_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_flying_start.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_flying_start.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flying_start.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_function_coordinator.c  .generated_files/flags/mclv2_sam_rh707_pim/5c661b053bfbeb1b06ac96f5e6fad020b1165362 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_function_coordinator.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_generic_library.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_generic_library.c  .generated_files/flags/mclv2_sam_rh707_pim/d95d45bf24ea9520f56cf078d58b7ee1051b60b .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_generic_library.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_generic_library.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_generic_library.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_generic_library.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_generic_library.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_hardware_abstraction.c  .generated_files/flags/mclv2_sam_rh707_pim/f32431b627396fdffad97a9e963705ca9a27c076 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_hardware_abstraction.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_interface_handling.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_interface_handling.c  .generated_files/flags/mclv2_sam_rh707_pim/854e7df84700752f3f5161cfa195438d708db6f9 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_interface_handling.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_interface_handling.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_interface_handling.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_interface_handling.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_interface_handling.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_motor_control.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_motor_control.c  .generated_files/flags/mclv2_sam_rh707_pim/ed9918c883d0a7b8c89707418c4018f415e7b855 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_motor_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_motor_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_motor_control.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_motor_control.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_motor_control.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pmsm_foc.c  .generated_files/flags/mclv2_sam_rh707_pim/76034ce95a1236f4d9f29eda50ea27161d0577d1 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pmsm_foc.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_pwm.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pwm.c  .generated_files/flags/mclv2_sam_rh707_pim/71e25f2967de79ba8184ae415709021db2d92b94 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_pwm.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_pwm.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pwm.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_ramp_profiler.c  .generated_files/flags/mclv2_sam_rh707_pim/c8fdf989d10e47b29aa1e2cf303c13016be87ecc .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_ramp_profiler.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_rotor_position.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_rotor_position.c  .generated_files/flags/mclv2_sam_rh707_pim/cf35c48eeaf6d332f80447beeb44d8026e4fad84 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_rotor_position.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_rotor_position.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_rotor_position.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_rotor_position.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_rotor_position.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_speed_control.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_speed_control.c  .generated_files/flags/mclv2_sam_rh707_pim/64b2b3cfd77aef4f88f1b3020581ff5f0a8ceda8 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_speed_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_speed_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_speed_control.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_speed_control.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_speed_control.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_start_up.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_start_up.c  .generated_files/flags/mclv2_sam_rh707_pim/3b7023262cae4542b2e8ececf2eb1f45bec2de95 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_start_up.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_start_up.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_start_up.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_start_up.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_start_up.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_voltage_measurement.c  .generated_files/flags/mclv2_sam_rh707_pim/4582c24e07b229b070a2402a85f93e9bb8130dd8 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_voltage_measurement.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458284321/plib_adc.o: ../src/config/mclv2_sam_rh707_pim/peripheral/adc/plib_adc.c  .generated_files/flags/mclv2_sam_rh707_pim/7a75ca11d77c1513c264f924f35b4da05606a333 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/458284321" 
	@${RM} ${OBJECTDIR}/_ext/458284321/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/458284321/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458284321/plib_adc.o.d" -o ${OBJECTDIR}/_ext/458284321/plib_adc.o ../src/config/mclv2_sam_rh707_pim/peripheral/adc/plib_adc.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458282143/plib_clk.o: ../src/config/mclv2_sam_rh707_pim/peripheral/clk/plib_clk.c  .generated_files/flags/mclv2_sam_rh707_pim/bef69dcd44ec3c9778ba834c3747ff1843c4c94e .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/458282143" 
	@${RM} ${OBJECTDIR}/_ext/458282143/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/458282143/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458282143/plib_clk.o.d" -o ${OBJECTDIR}/_ext/458282143/plib_clk.o ../src/config/mclv2_sam_rh707_pim/peripheral/clk/plib_clk.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o: ../src/config/mclv2_sam_rh707_pim/peripheral/flexcom/usart/plib_flexcom1_usart.c  .generated_files/flags/mclv2_sam_rh707_pim/22a49014b9a0d36c193f3cf09930b86aed63a642 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/114167651" 
	@${RM} ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o.d" -o ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o ../src/config/mclv2_sam_rh707_pim/peripheral/flexcom/usart/plib_flexcom1_usart.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1294225698/plib_matrix.o: ../src/config/mclv2_sam_rh707_pim/peripheral/matrix/plib_matrix.c  .generated_files/flags/mclv2_sam_rh707_pim/8688b92f67db7a5d7a65eb4241abec53974575b3 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/1294225698" 
	@${RM} ${OBJECTDIR}/_ext/1294225698/plib_matrix.o.d 
	@${RM} ${OBJECTDIR}/_ext/1294225698/plib_matrix.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1294225698/plib_matrix.o.d" -o ${OBJECTDIR}/_ext/1294225698/plib_matrix.o ../src/config/mclv2_sam_rh707_pim/peripheral/matrix/plib_matrix.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1321507197/plib_nvic.o: ../src/config/mclv2_sam_rh707_pim/peripheral/nvic/plib_nvic.c  .generated_files/flags/mclv2_sam_rh707_pim/3f87f0c646cf50853772ac6d885387adda774268 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/1321507197" 
	@${RM} ${OBJECTDIR}/_ext/1321507197/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1321507197/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1321507197/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1321507197/plib_nvic.o ../src/config/mclv2_sam_rh707_pim/peripheral/nvic/plib_nvic.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458269739/plib_pio.o: ../src/config/mclv2_sam_rh707_pim/peripheral/pio/plib_pio.c  .generated_files/flags/mclv2_sam_rh707_pim/b7529cecf4e02178f81cb0b0e9b6a35f1e78599d .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/458269739" 
	@${RM} ${OBJECTDIR}/_ext/458269739/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/458269739/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458269739/plib_pio.o.d" -o ${OBJECTDIR}/_ext/458269739/plib_pio.o ../src/config/mclv2_sam_rh707_pim/peripheral/pio/plib_pio.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458269307/plib_pwm0.o: ../src/config/mclv2_sam_rh707_pim/peripheral/pwm/plib_pwm0.c  .generated_files/flags/mclv2_sam_rh707_pim/4e6ea6991cf6d5d54670f858ebb97650aecf7950 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/458269307" 
	@${RM} ${OBJECTDIR}/_ext/458269307/plib_pwm0.o.d 
	@${RM} ${OBJECTDIR}/_ext/458269307/plib_pwm0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458269307/plib_pwm0.o.d" -o ${OBJECTDIR}/_ext/458269307/plib_pwm0.o ../src/config/mclv2_sam_rh707_pim/peripheral/pwm/plib_pwm0.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1949058295/xc32_monitor.o: ../src/config/mclv2_sam_rh707_pim/stdio/xc32_monitor.c  .generated_files/flags/mclv2_sam_rh707_pim/2bd5ab0cd888212230c4bb33042acf1fad3475ad .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/1949058295" 
	@${RM} ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1949058295/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o ../src/config/mclv2_sam_rh707_pim/stdio/xc32_monitor.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762799627/X2CScope.o: ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScope.c  .generated_files/flags/mclv2_sam_rh707_pim/e6736d976a08646bef1bc7c5c732582be8ca9b14 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/1762799627" 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScope.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScope.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762799627/X2CScope.o.d" -o ${OBJECTDIR}/_ext/1762799627/X2CScope.o ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScope.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o: ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScopeCommunication.c  .generated_files/flags/mclv2_sam_rh707_pim/7ac7bcbf6c193063a00a1e0c0bd463c3faf8aba8 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/1762799627" 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o.d" -o ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScopeCommunication.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/initialization.o: ../src/config/mclv2_sam_rh707_pim/initialization.c  .generated_files/flags/mclv2_sam_rh707_pim/f8e08cae2c500bb2f19df48668d2aa85885ab575 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/initialization.o.d" -o ${OBJECTDIR}/_ext/387538179/initialization.o ../src/config/mclv2_sam_rh707_pim/initialization.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/interrupts.o: ../src/config/mclv2_sam_rh707_pim/interrupts.c  .generated_files/flags/mclv2_sam_rh707_pim/97ef39b4a6e2a60093f355c387df725bb89b6b70 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/interrupts.o.d" -o ${OBJECTDIR}/_ext/387538179/interrupts.o ../src/config/mclv2_sam_rh707_pim/interrupts.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/exceptions.o: ../src/config/mclv2_sam_rh707_pim/exceptions.c  .generated_files/flags/mclv2_sam_rh707_pim/7473195503a9a29c739a4d5837923d29a43a2dc8 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/exceptions.o.d" -o ${OBJECTDIR}/_ext/387538179/exceptions.o ../src/config/mclv2_sam_rh707_pim/exceptions.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/startup_xc32.o: ../src/config/mclv2_sam_rh707_pim/startup_xc32.c  .generated_files/flags/mclv2_sam_rh707_pim/4968c90c9576caf3d02bfd02b9f82d1823cecc65 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/387538179/startup_xc32.o ../src/config/mclv2_sam_rh707_pim/startup_xc32.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/libc_syscalls.o: ../src/config/mclv2_sam_rh707_pim/libc_syscalls.c  .generated_files/flags/mclv2_sam_rh707_pim/3f6a2deb213f6a55eab7ca012f3a262f6004ddd9 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/387538179/libc_syscalls.o ../src/config/mclv2_sam_rh707_pim/libc_syscalls.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/mclv2_sam_rh707_pim/fae59635c95a82e27d88b24d616bdb6d899fbd5d .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/841051168/mc_current_calculation.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_calculation.c  .generated_files/flags/mclv2_sam_rh707_pim/e69128f6b884b87f0b7827edf89c89a602732de2 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_current_calculation.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_current_calculation.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_current_calculation.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_current_calculation.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_calculation.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_current_control.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_control.c  .generated_files/flags/mclv2_sam_rh707_pim/4d5237141c0607b5f1e235ed7cfc48bacc6c450b .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_current_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_current_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_current_control.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_current_control.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_current_control.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_error_handler.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_error_handler.c  .generated_files/flags/mclv2_sam_rh707_pim/81296988208994fb12776e20b37378847478d719 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_error_handler.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_error_handler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_error_handler.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_error_handler.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_error_handler.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_flux_control.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flux_control.c  .generated_files/flags/mclv2_sam_rh707_pim/db454b5158632f97e9d18146f24137c86170bf74 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_flux_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_flux_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_flux_control.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_flux_control.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flux_control.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_flying_start.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flying_start.c  .generated_files/flags/mclv2_sam_rh707_pim/8ac769bbc195605fd41175c3e7231b5504d514ad .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_flying_start.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_flying_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_flying_start.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_flying_start.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_flying_start.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_function_coordinator.c  .generated_files/flags/mclv2_sam_rh707_pim/8982f0d247d9f52130960d88c460aeb1134bef87 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_function_coordinator.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_function_coordinator.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_generic_library.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_generic_library.c  .generated_files/flags/mclv2_sam_rh707_pim/e14951a57184bb99ad0cca140c6cd01fb53e46eb .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_generic_library.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_generic_library.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_generic_library.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_generic_library.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_generic_library.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_hardware_abstraction.c  .generated_files/flags/mclv2_sam_rh707_pim/d5247e39e0cc4e969c4ad8d23c01b996bf6b4418 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_hardware_abstraction.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_hardware_abstraction.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_interface_handling.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_interface_handling.c  .generated_files/flags/mclv2_sam_rh707_pim/29c746d445ed544547e993de3391dab54c4cec22 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_interface_handling.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_interface_handling.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_interface_handling.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_interface_handling.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_interface_handling.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_motor_control.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_motor_control.c  .generated_files/flags/mclv2_sam_rh707_pim/9520f2426a55e993e8bc29238e8dde1f7827015b .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_motor_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_motor_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_motor_control.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_motor_control.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_motor_control.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pmsm_foc.c  .generated_files/flags/mclv2_sam_rh707_pim/a20dfa0e935868e518d304a12102ae7e983f43b5 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pmsm_foc.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_pwm.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pwm.c  .generated_files/flags/mclv2_sam_rh707_pim/e188430f805a9bb27ad0614df3174e7a67594e26 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_pwm.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_pwm.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pwm.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_ramp_profiler.c  .generated_files/flags/mclv2_sam_rh707_pim/8d25f28e9f05870ca4a4bb27317cdeaae175655e .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_ramp_profiler.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_ramp_profiler.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_rotor_position.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_rotor_position.c  .generated_files/flags/mclv2_sam_rh707_pim/48b189c26c287089b24698924307984fec55bd1f .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_rotor_position.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_rotor_position.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_rotor_position.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_rotor_position.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_rotor_position.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_speed_control.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_speed_control.c  .generated_files/flags/mclv2_sam_rh707_pim/e0a2999d799ec8207bd7d4f57569aa4e1ff3826d .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_speed_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_speed_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_speed_control.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_speed_control.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_speed_control.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_start_up.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_start_up.c  .generated_files/flags/mclv2_sam_rh707_pim/ecd294934c800cc020bd78a9d46b4540281bb4cc .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_start_up.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_start_up.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_start_up.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_start_up.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_start_up.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_voltage_measurement.c  .generated_files/flags/mclv2_sam_rh707_pim/b706b549ea12915ae452310ebdfb366cd2988112 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_voltage_measurement.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_voltage_measurement.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458284321/plib_adc.o: ../src/config/mclv2_sam_rh707_pim/peripheral/adc/plib_adc.c  .generated_files/flags/mclv2_sam_rh707_pim/8a35798ffe5b7f37e03c439658e6aa770f8ccc7 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/458284321" 
	@${RM} ${OBJECTDIR}/_ext/458284321/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/458284321/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458284321/plib_adc.o.d" -o ${OBJECTDIR}/_ext/458284321/plib_adc.o ../src/config/mclv2_sam_rh707_pim/peripheral/adc/plib_adc.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458282143/plib_clk.o: ../src/config/mclv2_sam_rh707_pim/peripheral/clk/plib_clk.c  .generated_files/flags/mclv2_sam_rh707_pim/d2aeb57b43144c067bc382dc219f7663b9effbe1 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/458282143" 
	@${RM} ${OBJECTDIR}/_ext/458282143/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/458282143/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458282143/plib_clk.o.d" -o ${OBJECTDIR}/_ext/458282143/plib_clk.o ../src/config/mclv2_sam_rh707_pim/peripheral/clk/plib_clk.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o: ../src/config/mclv2_sam_rh707_pim/peripheral/flexcom/usart/plib_flexcom1_usart.c  .generated_files/flags/mclv2_sam_rh707_pim/ab10e1f64988e7c3a9999ada2ce1788dbaadfca .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/114167651" 
	@${RM} ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o.d" -o ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o ../src/config/mclv2_sam_rh707_pim/peripheral/flexcom/usart/plib_flexcom1_usart.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1294225698/plib_matrix.o: ../src/config/mclv2_sam_rh707_pim/peripheral/matrix/plib_matrix.c  .generated_files/flags/mclv2_sam_rh707_pim/88ec2b681331d9f2d536f41a0408a37f5860dd10 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/1294225698" 
	@${RM} ${OBJECTDIR}/_ext/1294225698/plib_matrix.o.d 
	@${RM} ${OBJECTDIR}/_ext/1294225698/plib_matrix.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1294225698/plib_matrix.o.d" -o ${OBJECTDIR}/_ext/1294225698/plib_matrix.o ../src/config/mclv2_sam_rh707_pim/peripheral/matrix/plib_matrix.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1321507197/plib_nvic.o: ../src/config/mclv2_sam_rh707_pim/peripheral/nvic/plib_nvic.c  .generated_files/flags/mclv2_sam_rh707_pim/58cf6895ea8f20e8bf432b243ce6a94d75ff0214 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/1321507197" 
	@${RM} ${OBJECTDIR}/_ext/1321507197/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1321507197/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1321507197/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1321507197/plib_nvic.o ../src/config/mclv2_sam_rh707_pim/peripheral/nvic/plib_nvic.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458269739/plib_pio.o: ../src/config/mclv2_sam_rh707_pim/peripheral/pio/plib_pio.c  .generated_files/flags/mclv2_sam_rh707_pim/b96e35515ef58f72f2fc6062fa6bc2a8eeeeeebc .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/458269739" 
	@${RM} ${OBJECTDIR}/_ext/458269739/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/458269739/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458269739/plib_pio.o.d" -o ${OBJECTDIR}/_ext/458269739/plib_pio.o ../src/config/mclv2_sam_rh707_pim/peripheral/pio/plib_pio.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458269307/plib_pwm0.o: ../src/config/mclv2_sam_rh707_pim/peripheral/pwm/plib_pwm0.c  .generated_files/flags/mclv2_sam_rh707_pim/96b866b844f02da22ccbf51161ecd43fd8974550 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/458269307" 
	@${RM} ${OBJECTDIR}/_ext/458269307/plib_pwm0.o.d 
	@${RM} ${OBJECTDIR}/_ext/458269307/plib_pwm0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458269307/plib_pwm0.o.d" -o ${OBJECTDIR}/_ext/458269307/plib_pwm0.o ../src/config/mclv2_sam_rh707_pim/peripheral/pwm/plib_pwm0.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1949058295/xc32_monitor.o: ../src/config/mclv2_sam_rh707_pim/stdio/xc32_monitor.c  .generated_files/flags/mclv2_sam_rh707_pim/ded98b0c4f322b7616469ee140016a1bf6b64948 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/1949058295" 
	@${RM} ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1949058295/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o ../src/config/mclv2_sam_rh707_pim/stdio/xc32_monitor.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762799627/X2CScope.o: ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScope.c  .generated_files/flags/mclv2_sam_rh707_pim/9ecc28d53ddb0166d67e5715411619ee61db627c .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/1762799627" 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScope.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScope.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762799627/X2CScope.o.d" -o ${OBJECTDIR}/_ext/1762799627/X2CScope.o ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScope.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o: ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScopeCommunication.c  .generated_files/flags/mclv2_sam_rh707_pim/44df885cba24348ce6234d0f59b5f16ec8853009 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/1762799627" 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o.d" -o ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScopeCommunication.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/initialization.o: ../src/config/mclv2_sam_rh707_pim/initialization.c  .generated_files/flags/mclv2_sam_rh707_pim/c7aa9a73b03f878ccd39b583e8efe7a6cfc48b9d .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/initialization.o.d" -o ${OBJECTDIR}/_ext/387538179/initialization.o ../src/config/mclv2_sam_rh707_pim/initialization.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/interrupts.o: ../src/config/mclv2_sam_rh707_pim/interrupts.c  .generated_files/flags/mclv2_sam_rh707_pim/8355e7ab5920c159095a0958283421ddc96469c2 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/interrupts.o.d" -o ${OBJECTDIR}/_ext/387538179/interrupts.o ../src/config/mclv2_sam_rh707_pim/interrupts.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/exceptions.o: ../src/config/mclv2_sam_rh707_pim/exceptions.c  .generated_files/flags/mclv2_sam_rh707_pim/977f1aa5aa067652a9239c4962fe9d094eb46f63 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/exceptions.o.d" -o ${OBJECTDIR}/_ext/387538179/exceptions.o ../src/config/mclv2_sam_rh707_pim/exceptions.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/startup_xc32.o: ../src/config/mclv2_sam_rh707_pim/startup_xc32.c  .generated_files/flags/mclv2_sam_rh707_pim/4277b2b58e9212832896c21476cf2e90ed92da74 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/387538179/startup_xc32.o ../src/config/mclv2_sam_rh707_pim/startup_xc32.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/libc_syscalls.o: ../src/config/mclv2_sam_rh707_pim/libc_syscalls.c  .generated_files/flags/mclv2_sam_rh707_pim/907b416f033ae775551dfb1a48bdbb7d19a07d31 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/387538179/libc_syscalls.o ../src/config/mclv2_sam_rh707_pim/libc_syscalls.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/mclv2_sam_rh707_pim/113b1ffcd88965516f63bfa0bf9f9f9f38aa261 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
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
