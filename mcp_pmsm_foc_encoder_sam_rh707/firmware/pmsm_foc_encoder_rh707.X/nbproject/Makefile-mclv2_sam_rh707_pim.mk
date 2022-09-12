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
FINAL_IMAGE=${DISTDIR}/pmsm_foc_encoder_rh707.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/pmsm_foc_encoder_rh707.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_control_loop.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_currmeasurement.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_errorhandler.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_generic_lib.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_lib.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_picontrol.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pmsm_foc.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pwm.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_rotorposition.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_speed.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_voltagemeasurement.c ../src/config/mclv2_sam_rh707_pim/peripheral/adc/plib_adc.c ../src/config/mclv2_sam_rh707_pim/peripheral/clk/plib_clk.c ../src/config/mclv2_sam_rh707_pim/peripheral/flexcom/usart/plib_flexcom1_usart.c ../src/config/mclv2_sam_rh707_pim/peripheral/matrix/plib_matrix.c ../src/config/mclv2_sam_rh707_pim/peripheral/nvic/plib_nvic.c ../src/config/mclv2_sam_rh707_pim/peripheral/pio/plib_pio.c ../src/config/mclv2_sam_rh707_pim/peripheral/pwm/plib_pwm0.c ../src/config/mclv2_sam_rh707_pim/peripheral/tc/plib_tc0.c ../src/config/mclv2_sam_rh707_pim/stdio/xc32_monitor.c ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScope.c ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScopeCommunication.c ../src/config/mclv2_sam_rh707_pim/initialization.c ../src/config/mclv2_sam_rh707_pim/interrupts.c ../src/config/mclv2_sam_rh707_pim/exceptions.c ../src/config/mclv2_sam_rh707_pim/startup_xc32.c ../src/config/mclv2_sam_rh707_pim/libc_syscalls.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/841051168/mc_control_loop.o ${OBJECTDIR}/_ext/841051168/mc_currmeasurement.o ${OBJECTDIR}/_ext/841051168/mc_errorhandler.o ${OBJECTDIR}/_ext/841051168/mc_generic_lib.o ${OBJECTDIR}/_ext/841051168/mc_lib.o ${OBJECTDIR}/_ext/841051168/mc_picontrol.o ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o ${OBJECTDIR}/_ext/841051168/mc_pwm.o ${OBJECTDIR}/_ext/841051168/mc_rotorposition.o ${OBJECTDIR}/_ext/841051168/mc_speed.o ${OBJECTDIR}/_ext/841051168/mc_voltagemeasurement.o ${OBJECTDIR}/_ext/458284321/plib_adc.o ${OBJECTDIR}/_ext/458282143/plib_clk.o ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o ${OBJECTDIR}/_ext/1294225698/plib_matrix.o ${OBJECTDIR}/_ext/1321507197/plib_nvic.o ${OBJECTDIR}/_ext/458269739/plib_pio.o ${OBJECTDIR}/_ext/458269307/plib_pwm0.o ${OBJECTDIR}/_ext/400859216/plib_tc0.o ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o ${OBJECTDIR}/_ext/1762799627/X2CScope.o ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o ${OBJECTDIR}/_ext/387538179/initialization.o ${OBJECTDIR}/_ext/387538179/interrupts.o ${OBJECTDIR}/_ext/387538179/exceptions.o ${OBJECTDIR}/_ext/387538179/startup_xc32.o ${OBJECTDIR}/_ext/387538179/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/841051168/mc_control_loop.o.d ${OBJECTDIR}/_ext/841051168/mc_currmeasurement.o.d ${OBJECTDIR}/_ext/841051168/mc_errorhandler.o.d ${OBJECTDIR}/_ext/841051168/mc_generic_lib.o.d ${OBJECTDIR}/_ext/841051168/mc_lib.o.d ${OBJECTDIR}/_ext/841051168/mc_picontrol.o.d ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o.d ${OBJECTDIR}/_ext/841051168/mc_pwm.o.d ${OBJECTDIR}/_ext/841051168/mc_rotorposition.o.d ${OBJECTDIR}/_ext/841051168/mc_speed.o.d ${OBJECTDIR}/_ext/841051168/mc_voltagemeasurement.o.d ${OBJECTDIR}/_ext/458284321/plib_adc.o.d ${OBJECTDIR}/_ext/458282143/plib_clk.o.d ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o.d ${OBJECTDIR}/_ext/1294225698/plib_matrix.o.d ${OBJECTDIR}/_ext/1321507197/plib_nvic.o.d ${OBJECTDIR}/_ext/458269739/plib_pio.o.d ${OBJECTDIR}/_ext/458269307/plib_pwm0.o.d ${OBJECTDIR}/_ext/400859216/plib_tc0.o.d ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o.d ${OBJECTDIR}/_ext/1762799627/X2CScope.o.d ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o.d ${OBJECTDIR}/_ext/387538179/initialization.o.d ${OBJECTDIR}/_ext/387538179/interrupts.o.d ${OBJECTDIR}/_ext/387538179/exceptions.o.d ${OBJECTDIR}/_ext/387538179/startup_xc32.o.d ${OBJECTDIR}/_ext/387538179/libc_syscalls.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/841051168/mc_control_loop.o ${OBJECTDIR}/_ext/841051168/mc_currmeasurement.o ${OBJECTDIR}/_ext/841051168/mc_errorhandler.o ${OBJECTDIR}/_ext/841051168/mc_generic_lib.o ${OBJECTDIR}/_ext/841051168/mc_lib.o ${OBJECTDIR}/_ext/841051168/mc_picontrol.o ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o ${OBJECTDIR}/_ext/841051168/mc_pwm.o ${OBJECTDIR}/_ext/841051168/mc_rotorposition.o ${OBJECTDIR}/_ext/841051168/mc_speed.o ${OBJECTDIR}/_ext/841051168/mc_voltagemeasurement.o ${OBJECTDIR}/_ext/458284321/plib_adc.o ${OBJECTDIR}/_ext/458282143/plib_clk.o ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o ${OBJECTDIR}/_ext/1294225698/plib_matrix.o ${OBJECTDIR}/_ext/1321507197/plib_nvic.o ${OBJECTDIR}/_ext/458269739/plib_pio.o ${OBJECTDIR}/_ext/458269307/plib_pwm0.o ${OBJECTDIR}/_ext/400859216/plib_tc0.o ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o ${OBJECTDIR}/_ext/1762799627/X2CScope.o ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o ${OBJECTDIR}/_ext/387538179/initialization.o ${OBJECTDIR}/_ext/387538179/interrupts.o ${OBJECTDIR}/_ext/387538179/exceptions.o ${OBJECTDIR}/_ext/387538179/startup_xc32.o ${OBJECTDIR}/_ext/387538179/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_control_loop.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_currmeasurement.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_errorhandler.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_generic_lib.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_lib.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_picontrol.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pmsm_foc.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pwm.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_rotorposition.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_speed.c ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_voltagemeasurement.c ../src/config/mclv2_sam_rh707_pim/peripheral/adc/plib_adc.c ../src/config/mclv2_sam_rh707_pim/peripheral/clk/plib_clk.c ../src/config/mclv2_sam_rh707_pim/peripheral/flexcom/usart/plib_flexcom1_usart.c ../src/config/mclv2_sam_rh707_pim/peripheral/matrix/plib_matrix.c ../src/config/mclv2_sam_rh707_pim/peripheral/nvic/plib_nvic.c ../src/config/mclv2_sam_rh707_pim/peripheral/pio/plib_pio.c ../src/config/mclv2_sam_rh707_pim/peripheral/pwm/plib_pwm0.c ../src/config/mclv2_sam_rh707_pim/peripheral/tc/plib_tc0.c ../src/config/mclv2_sam_rh707_pim/stdio/xc32_monitor.c ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScope.c ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScopeCommunication.c ../src/config/mclv2_sam_rh707_pim/initialization.c ../src/config/mclv2_sam_rh707_pim/interrupts.c ../src/config/mclv2_sam_rh707_pim/exceptions.c ../src/config/mclv2_sam_rh707_pim/startup_xc32.c ../src/config/mclv2_sam_rh707_pim/libc_syscalls.c ../src/main.c

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
	${MAKE}  -f nbproject/Makefile-mclv2_sam_rh707_pim.mk ${DISTDIR}/pmsm_foc_encoder_rh707.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/841051168/mc_control_loop.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_control_loop.c  .generated_files/flags/mclv2_sam_rh707_pim/8639fccb5f89dc07f254920572a81082d0043e69 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_control_loop.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_control_loop.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_control_loop.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_control_loop.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_control_loop.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_currmeasurement.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_currmeasurement.c  .generated_files/flags/mclv2_sam_rh707_pim/27f3bed16e3df72d49b7f37cd9702263d3e784ac .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_currmeasurement.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_currmeasurement.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_currmeasurement.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_currmeasurement.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_currmeasurement.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_errorhandler.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_errorhandler.c  .generated_files/flags/mclv2_sam_rh707_pim/ed4751855bdc269d63e218fdbc12884f45685984 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_errorhandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_errorhandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_errorhandler.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_errorhandler.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_errorhandler.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_generic_lib.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_generic_lib.c  .generated_files/flags/mclv2_sam_rh707_pim/df0d4936466cfa306613ded596ac06b952c6b588 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_generic_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_generic_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_generic_lib.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_generic_lib.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_generic_lib.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_lib.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_lib.c  .generated_files/flags/mclv2_sam_rh707_pim/6853f646442f195067bb96c1152ff276d025d511 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_lib.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_lib.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_lib.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_picontrol.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_picontrol.c  .generated_files/flags/mclv2_sam_rh707_pim/51f89820ede733817d9e53b56ef4e2164c9be57d .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_picontrol.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_picontrol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_picontrol.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_picontrol.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_picontrol.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pmsm_foc.c  .generated_files/flags/mclv2_sam_rh707_pim/5ff982f6f4a6938bfe036e1c4084b5896a754c08 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pmsm_foc.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_pwm.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pwm.c  .generated_files/flags/mclv2_sam_rh707_pim/e85e2f1c43cb67cbc4c9b7ec822ee98183c423ff .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_pwm.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_pwm.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pwm.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_rotorposition.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_rotorposition.c  .generated_files/flags/mclv2_sam_rh707_pim/9b9f1e51c71bea2c467aa8978431dd0db4ef75db .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_rotorposition.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_rotorposition.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_rotorposition.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_rotorposition.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_rotorposition.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_speed.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_speed.c  .generated_files/flags/mclv2_sam_rh707_pim/9ebc8e88c6f8051daac82110f2102863627de7a .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_speed.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_speed.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_speed.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_speed.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_speed.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_voltagemeasurement.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_voltagemeasurement.c  .generated_files/flags/mclv2_sam_rh707_pim/6f96c8c273b43bc90e0980c38e70dd202715aa88 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_voltagemeasurement.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_voltagemeasurement.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_voltagemeasurement.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_voltagemeasurement.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_voltagemeasurement.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458284321/plib_adc.o: ../src/config/mclv2_sam_rh707_pim/peripheral/adc/plib_adc.c  .generated_files/flags/mclv2_sam_rh707_pim/a65ccefbf6484f1d9a1a8658b5713a4eb4101503 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/458284321" 
	@${RM} ${OBJECTDIR}/_ext/458284321/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/458284321/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458284321/plib_adc.o.d" -o ${OBJECTDIR}/_ext/458284321/plib_adc.o ../src/config/mclv2_sam_rh707_pim/peripheral/adc/plib_adc.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458282143/plib_clk.o: ../src/config/mclv2_sam_rh707_pim/peripheral/clk/plib_clk.c  .generated_files/flags/mclv2_sam_rh707_pim/83c5ada0e0c7c0fb1752c5beb56cf36ffebbae0c .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/458282143" 
	@${RM} ${OBJECTDIR}/_ext/458282143/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/458282143/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458282143/plib_clk.o.d" -o ${OBJECTDIR}/_ext/458282143/plib_clk.o ../src/config/mclv2_sam_rh707_pim/peripheral/clk/plib_clk.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o: ../src/config/mclv2_sam_rh707_pim/peripheral/flexcom/usart/plib_flexcom1_usart.c  .generated_files/flags/mclv2_sam_rh707_pim/e331880d70628dcd553cf624a164e0a951ae9b1b .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/114167651" 
	@${RM} ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o.d" -o ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o ../src/config/mclv2_sam_rh707_pim/peripheral/flexcom/usart/plib_flexcom1_usart.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1294225698/plib_matrix.o: ../src/config/mclv2_sam_rh707_pim/peripheral/matrix/plib_matrix.c  .generated_files/flags/mclv2_sam_rh707_pim/7894e7950a304fe1481b847f63f5ee90e2ab40f3 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/1294225698" 
	@${RM} ${OBJECTDIR}/_ext/1294225698/plib_matrix.o.d 
	@${RM} ${OBJECTDIR}/_ext/1294225698/plib_matrix.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1294225698/plib_matrix.o.d" -o ${OBJECTDIR}/_ext/1294225698/plib_matrix.o ../src/config/mclv2_sam_rh707_pim/peripheral/matrix/plib_matrix.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1321507197/plib_nvic.o: ../src/config/mclv2_sam_rh707_pim/peripheral/nvic/plib_nvic.c  .generated_files/flags/mclv2_sam_rh707_pim/1a984cf85bf8ac97b630ea5e8d514b0a46ed5ad .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/1321507197" 
	@${RM} ${OBJECTDIR}/_ext/1321507197/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1321507197/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1321507197/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1321507197/plib_nvic.o ../src/config/mclv2_sam_rh707_pim/peripheral/nvic/plib_nvic.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458269739/plib_pio.o: ../src/config/mclv2_sam_rh707_pim/peripheral/pio/plib_pio.c  .generated_files/flags/mclv2_sam_rh707_pim/c6537ed23a605d8806c49a2509f45626d12b2a43 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/458269739" 
	@${RM} ${OBJECTDIR}/_ext/458269739/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/458269739/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458269739/plib_pio.o.d" -o ${OBJECTDIR}/_ext/458269739/plib_pio.o ../src/config/mclv2_sam_rh707_pim/peripheral/pio/plib_pio.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458269307/plib_pwm0.o: ../src/config/mclv2_sam_rh707_pim/peripheral/pwm/plib_pwm0.c  .generated_files/flags/mclv2_sam_rh707_pim/79e0c047ee65e0b781a1910e8b41b7bc302007a7 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/458269307" 
	@${RM} ${OBJECTDIR}/_ext/458269307/plib_pwm0.o.d 
	@${RM} ${OBJECTDIR}/_ext/458269307/plib_pwm0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458269307/plib_pwm0.o.d" -o ${OBJECTDIR}/_ext/458269307/plib_pwm0.o ../src/config/mclv2_sam_rh707_pim/peripheral/pwm/plib_pwm0.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/400859216/plib_tc0.o: ../src/config/mclv2_sam_rh707_pim/peripheral/tc/plib_tc0.c  .generated_files/flags/mclv2_sam_rh707_pim/28a51ac2a1bfc4c7865d7681c6b9a911797409be .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/400859216" 
	@${RM} ${OBJECTDIR}/_ext/400859216/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/400859216/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/400859216/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/400859216/plib_tc0.o ../src/config/mclv2_sam_rh707_pim/peripheral/tc/plib_tc0.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1949058295/xc32_monitor.o: ../src/config/mclv2_sam_rh707_pim/stdio/xc32_monitor.c  .generated_files/flags/mclv2_sam_rh707_pim/bbd895e4d3ac617a975dc6bebc7bc91c832f0a23 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/1949058295" 
	@${RM} ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1949058295/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o ../src/config/mclv2_sam_rh707_pim/stdio/xc32_monitor.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762799627/X2CScope.o: ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScope.c  .generated_files/flags/mclv2_sam_rh707_pim/f028be153335909c84d1074d2ef6f17917a6cfe7 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/1762799627" 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScope.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScope.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762799627/X2CScope.o.d" -o ${OBJECTDIR}/_ext/1762799627/X2CScope.o ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScope.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o: ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScopeCommunication.c  .generated_files/flags/mclv2_sam_rh707_pim/37993be4e31f941be69d1bdf67cf849585d82c8d .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/1762799627" 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o.d" -o ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScopeCommunication.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/initialization.o: ../src/config/mclv2_sam_rh707_pim/initialization.c  .generated_files/flags/mclv2_sam_rh707_pim/da13af1f6487c77a8f3d9f655b2c750fba7edeeb .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/initialization.o.d" -o ${OBJECTDIR}/_ext/387538179/initialization.o ../src/config/mclv2_sam_rh707_pim/initialization.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/interrupts.o: ../src/config/mclv2_sam_rh707_pim/interrupts.c  .generated_files/flags/mclv2_sam_rh707_pim/b56e3888b34171bba7c9ab2deccb8665d4c57832 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/interrupts.o.d" -o ${OBJECTDIR}/_ext/387538179/interrupts.o ../src/config/mclv2_sam_rh707_pim/interrupts.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/exceptions.o: ../src/config/mclv2_sam_rh707_pim/exceptions.c  .generated_files/flags/mclv2_sam_rh707_pim/bdea9baef18c8256261e405ef86c536c3e4b7029 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/exceptions.o.d" -o ${OBJECTDIR}/_ext/387538179/exceptions.o ../src/config/mclv2_sam_rh707_pim/exceptions.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/startup_xc32.o: ../src/config/mclv2_sam_rh707_pim/startup_xc32.c  .generated_files/flags/mclv2_sam_rh707_pim/8b5f152565d10b3b7a31769cc1e54a636dbfafad .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/387538179/startup_xc32.o ../src/config/mclv2_sam_rh707_pim/startup_xc32.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/libc_syscalls.o: ../src/config/mclv2_sam_rh707_pim/libc_syscalls.c  .generated_files/flags/mclv2_sam_rh707_pim/917db052fd381f18220efcf097902d808c20e4e5 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/387538179/libc_syscalls.o ../src/config/mclv2_sam_rh707_pim/libc_syscalls.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/mclv2_sam_rh707_pim/dec0d46026242d6ab144736a90ab6bee6771cfa2 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/841051168/mc_control_loop.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_control_loop.c  .generated_files/flags/mclv2_sam_rh707_pim/56929c588a81b8351090221c78c3607efd105e11 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_control_loop.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_control_loop.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_control_loop.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_control_loop.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_control_loop.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_currmeasurement.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_currmeasurement.c  .generated_files/flags/mclv2_sam_rh707_pim/127d984383687bdd0812cd071bc6ca51b21e5814 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_currmeasurement.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_currmeasurement.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_currmeasurement.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_currmeasurement.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_currmeasurement.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_errorhandler.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_errorhandler.c  .generated_files/flags/mclv2_sam_rh707_pim/ff74f302a58db56045f9d34da330e841bfb20748 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_errorhandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_errorhandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_errorhandler.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_errorhandler.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_errorhandler.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_generic_lib.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_generic_lib.c  .generated_files/flags/mclv2_sam_rh707_pim/2f5983386596c6defb32232e857272f7c521f2d3 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_generic_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_generic_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_generic_lib.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_generic_lib.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_generic_lib.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_lib.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_lib.c  .generated_files/flags/mclv2_sam_rh707_pim/325bde9825c411525a8e128f57132590a2e6617f .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_lib.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_lib.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_lib.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_picontrol.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_picontrol.c  .generated_files/flags/mclv2_sam_rh707_pim/6d2587724fd6a36371b08f1b6e206118435548e7 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_picontrol.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_picontrol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_picontrol.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_picontrol.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_picontrol.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pmsm_foc.c  .generated_files/flags/mclv2_sam_rh707_pim/cf71b2494107daf335e0c72a015e96f43dd7b758 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pmsm_foc.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_pwm.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pwm.c  .generated_files/flags/mclv2_sam_rh707_pim/c403d9dfdbd63e96d82c475611740b355190b8d2 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_pwm.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_pwm.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pwm.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_rotorposition.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_rotorposition.c  .generated_files/flags/mclv2_sam_rh707_pim/c3926feeee5e9daca431417188ca7c3e8964cf7c .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_rotorposition.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_rotorposition.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_rotorposition.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_rotorposition.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_rotorposition.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_speed.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_speed.c  .generated_files/flags/mclv2_sam_rh707_pim/3b84a424b4094f62f4b25709d2fc9d7bdb5f6b9f .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_speed.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_speed.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_speed.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_speed.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_speed.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_voltagemeasurement.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_voltagemeasurement.c  .generated_files/flags/mclv2_sam_rh707_pim/2b8f6dde783f15a5fb5a181cfd781d9226bee849 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_voltagemeasurement.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_voltagemeasurement.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_voltagemeasurement.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_voltagemeasurement.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_voltagemeasurement.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458284321/plib_adc.o: ../src/config/mclv2_sam_rh707_pim/peripheral/adc/plib_adc.c  .generated_files/flags/mclv2_sam_rh707_pim/2db8dec60dc415dd108dcae487ec8cc4fb268be8 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/458284321" 
	@${RM} ${OBJECTDIR}/_ext/458284321/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/458284321/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458284321/plib_adc.o.d" -o ${OBJECTDIR}/_ext/458284321/plib_adc.o ../src/config/mclv2_sam_rh707_pim/peripheral/adc/plib_adc.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458282143/plib_clk.o: ../src/config/mclv2_sam_rh707_pim/peripheral/clk/plib_clk.c  .generated_files/flags/mclv2_sam_rh707_pim/1ca824e98276001f402ee6e0dcad93606e6db9ea .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/458282143" 
	@${RM} ${OBJECTDIR}/_ext/458282143/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/458282143/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458282143/plib_clk.o.d" -o ${OBJECTDIR}/_ext/458282143/plib_clk.o ../src/config/mclv2_sam_rh707_pim/peripheral/clk/plib_clk.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o: ../src/config/mclv2_sam_rh707_pim/peripheral/flexcom/usart/plib_flexcom1_usart.c  .generated_files/flags/mclv2_sam_rh707_pim/9ae5ddbe24835db2bc170dc78956114850ca92e9 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/114167651" 
	@${RM} ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o.d" -o ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o ../src/config/mclv2_sam_rh707_pim/peripheral/flexcom/usart/plib_flexcom1_usart.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1294225698/plib_matrix.o: ../src/config/mclv2_sam_rh707_pim/peripheral/matrix/plib_matrix.c  .generated_files/flags/mclv2_sam_rh707_pim/80f3c3c3f6156688d64c082b5e5a47766f24d29f .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/1294225698" 
	@${RM} ${OBJECTDIR}/_ext/1294225698/plib_matrix.o.d 
	@${RM} ${OBJECTDIR}/_ext/1294225698/plib_matrix.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1294225698/plib_matrix.o.d" -o ${OBJECTDIR}/_ext/1294225698/plib_matrix.o ../src/config/mclv2_sam_rh707_pim/peripheral/matrix/plib_matrix.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1321507197/plib_nvic.o: ../src/config/mclv2_sam_rh707_pim/peripheral/nvic/plib_nvic.c  .generated_files/flags/mclv2_sam_rh707_pim/2fe8a6b300923ed87b643cef6bac6df16f047ea2 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/1321507197" 
	@${RM} ${OBJECTDIR}/_ext/1321507197/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1321507197/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1321507197/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1321507197/plib_nvic.o ../src/config/mclv2_sam_rh707_pim/peripheral/nvic/plib_nvic.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458269739/plib_pio.o: ../src/config/mclv2_sam_rh707_pim/peripheral/pio/plib_pio.c  .generated_files/flags/mclv2_sam_rh707_pim/cf3f23b51f4ad11af8da1ea2c6b13b09037b4b3 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/458269739" 
	@${RM} ${OBJECTDIR}/_ext/458269739/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/458269739/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458269739/plib_pio.o.d" -o ${OBJECTDIR}/_ext/458269739/plib_pio.o ../src/config/mclv2_sam_rh707_pim/peripheral/pio/plib_pio.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458269307/plib_pwm0.o: ../src/config/mclv2_sam_rh707_pim/peripheral/pwm/plib_pwm0.c  .generated_files/flags/mclv2_sam_rh707_pim/abb25b169fdf288471e7cffeb66617dea024242 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/458269307" 
	@${RM} ${OBJECTDIR}/_ext/458269307/plib_pwm0.o.d 
	@${RM} ${OBJECTDIR}/_ext/458269307/plib_pwm0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458269307/plib_pwm0.o.d" -o ${OBJECTDIR}/_ext/458269307/plib_pwm0.o ../src/config/mclv2_sam_rh707_pim/peripheral/pwm/plib_pwm0.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/400859216/plib_tc0.o: ../src/config/mclv2_sam_rh707_pim/peripheral/tc/plib_tc0.c  .generated_files/flags/mclv2_sam_rh707_pim/533b45acdbc5ef3118e5bc7b6ed7ff9fe99c0e12 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/400859216" 
	@${RM} ${OBJECTDIR}/_ext/400859216/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/400859216/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/400859216/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/400859216/plib_tc0.o ../src/config/mclv2_sam_rh707_pim/peripheral/tc/plib_tc0.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1949058295/xc32_monitor.o: ../src/config/mclv2_sam_rh707_pim/stdio/xc32_monitor.c  .generated_files/flags/mclv2_sam_rh707_pim/c4dca8b878ae998256878baf3c0bde5ab5619b3 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/1949058295" 
	@${RM} ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1949058295/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o ../src/config/mclv2_sam_rh707_pim/stdio/xc32_monitor.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762799627/X2CScope.o: ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScope.c  .generated_files/flags/mclv2_sam_rh707_pim/a784f18c1b8dab75dc3acd38f2d332383b00b40e .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/1762799627" 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScope.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScope.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762799627/X2CScope.o.d" -o ${OBJECTDIR}/_ext/1762799627/X2CScope.o ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScope.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o: ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScopeCommunication.c  .generated_files/flags/mclv2_sam_rh707_pim/7e134cb59b96d320a7eb61637c6973d0245ed050 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/1762799627" 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o.d" -o ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScopeCommunication.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/initialization.o: ../src/config/mclv2_sam_rh707_pim/initialization.c  .generated_files/flags/mclv2_sam_rh707_pim/fc40314bbac1e1c01087319cb8285618ddfe901d .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/initialization.o.d" -o ${OBJECTDIR}/_ext/387538179/initialization.o ../src/config/mclv2_sam_rh707_pim/initialization.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/interrupts.o: ../src/config/mclv2_sam_rh707_pim/interrupts.c  .generated_files/flags/mclv2_sam_rh707_pim/fab082a653726e3e97ba7d6e170a50e44541cf17 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/interrupts.o.d" -o ${OBJECTDIR}/_ext/387538179/interrupts.o ../src/config/mclv2_sam_rh707_pim/interrupts.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/exceptions.o: ../src/config/mclv2_sam_rh707_pim/exceptions.c  .generated_files/flags/mclv2_sam_rh707_pim/2b6021485b2e5ea67915246214ff454d1a7d86cd .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/exceptions.o.d" -o ${OBJECTDIR}/_ext/387538179/exceptions.o ../src/config/mclv2_sam_rh707_pim/exceptions.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/startup_xc32.o: ../src/config/mclv2_sam_rh707_pim/startup_xc32.c  .generated_files/flags/mclv2_sam_rh707_pim/c49db363c161bfca5f7da8c4f40aaa15cdee111c .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/387538179/startup_xc32.o ../src/config/mclv2_sam_rh707_pim/startup_xc32.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/libc_syscalls.o: ../src/config/mclv2_sam_rh707_pim/libc_syscalls.c  .generated_files/flags/mclv2_sam_rh707_pim/bcbece4c0bf59c181ad5641ae1b751dfe4fc2d6c .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/387538179/libc_syscalls.o ../src/config/mclv2_sam_rh707_pim/libc_syscalls.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/mclv2_sam_rh707_pim/87f3aaba5907ca1b1840642940357fb11b97b587 .generated_files/flags/mclv2_sam_rh707_pim/5a3fbb1f613b17eb2eaad2630a96da4a5dfcce8b
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
${DISTDIR}/pmsm_foc_encoder_rh707.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/lib/libCORTEXM7_X2CScope.a  ../src/config/mclv2_sam_rh707_pim/ATSAMRH707F18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g  -D__MPLAB_DEBUGGER_ICD4=1 -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/pmsm_foc_encoder_rh707.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\src\config\mclv2_sam_rh707_pim\X2CCode\X2CScope\lib\libCORTEXM7_X2CScope.a     -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_ICD4=1,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/pmsm_foc_encoder_rh707.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/lib/libCORTEXM7_X2CScope.a ../src/config/mclv2_sam_rh707_pim/ATSAMRH707F18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/pmsm_foc_encoder_rh707.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\src\config\mclv2_sam_rh707_pim\X2CCode\X2CScope\lib\libCORTEXM7_X2CScope.a     -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/pmsm_foc_encoder_rh707.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
