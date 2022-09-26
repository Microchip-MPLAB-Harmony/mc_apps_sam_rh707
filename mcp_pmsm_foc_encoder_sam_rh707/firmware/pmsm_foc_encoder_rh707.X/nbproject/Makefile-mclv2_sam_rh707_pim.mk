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
${OBJECTDIR}/_ext/841051168/mc_control_loop.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_control_loop.c  .generated_files/flags/mclv2_sam_rh707_pim/438d48e5a06bd29eabdee2efc28988ebdd954bff .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_control_loop.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_control_loop.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_control_loop.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_control_loop.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_control_loop.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_currmeasurement.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_currmeasurement.c  .generated_files/flags/mclv2_sam_rh707_pim/c3a055d8329d4372e011303dae760e736eaff341 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_currmeasurement.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_currmeasurement.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_currmeasurement.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_currmeasurement.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_currmeasurement.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_errorhandler.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_errorhandler.c  .generated_files/flags/mclv2_sam_rh707_pim/963fc52b2b07c2c6e048efed7c8684fc1b36f381 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_errorhandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_errorhandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_errorhandler.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_errorhandler.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_errorhandler.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_generic_lib.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_generic_lib.c  .generated_files/flags/mclv2_sam_rh707_pim/5f4462118fe0fab6e0b7144d161d685e01ee97a5 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_generic_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_generic_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_generic_lib.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_generic_lib.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_generic_lib.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_lib.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_lib.c  .generated_files/flags/mclv2_sam_rh707_pim/7bfb3b6a2701a22fb82aa613cdf787e198cfd8b9 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_lib.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_lib.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_lib.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_picontrol.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_picontrol.c  .generated_files/flags/mclv2_sam_rh707_pim/59deace8f03f2cfb416ae8caa90db9356878cf93 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_picontrol.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_picontrol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_picontrol.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_picontrol.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_picontrol.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pmsm_foc.c  .generated_files/flags/mclv2_sam_rh707_pim/3df00e7b3d6f1d9f099d70ff37be2c1ad8eb082 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pmsm_foc.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_pwm.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pwm.c  .generated_files/flags/mclv2_sam_rh707_pim/c3c5d7bceaa8d1871ed98fab9294fac96b92c678 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_pwm.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_pwm.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pwm.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_rotorposition.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_rotorposition.c  .generated_files/flags/mclv2_sam_rh707_pim/74acce8d2986f30f4dbfa5be050b63bfe1af5daa .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_rotorposition.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_rotorposition.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_rotorposition.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_rotorposition.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_rotorposition.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_speed.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_speed.c  .generated_files/flags/mclv2_sam_rh707_pim/3d72aee664e416a71e819f2efa35607896ac32dd .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_speed.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_speed.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_speed.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_speed.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_speed.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_voltagemeasurement.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_voltagemeasurement.c  .generated_files/flags/mclv2_sam_rh707_pim/39cd4905ac9c51827dc2420afd3d1f6284f4acfa .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_voltagemeasurement.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_voltagemeasurement.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_voltagemeasurement.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_voltagemeasurement.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_voltagemeasurement.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458284321/plib_adc.o: ../src/config/mclv2_sam_rh707_pim/peripheral/adc/plib_adc.c  .generated_files/flags/mclv2_sam_rh707_pim/104d915a990138050038873b5de57e7c906880d2 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/458284321" 
	@${RM} ${OBJECTDIR}/_ext/458284321/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/458284321/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458284321/plib_adc.o.d" -o ${OBJECTDIR}/_ext/458284321/plib_adc.o ../src/config/mclv2_sam_rh707_pim/peripheral/adc/plib_adc.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458282143/plib_clk.o: ../src/config/mclv2_sam_rh707_pim/peripheral/clk/plib_clk.c  .generated_files/flags/mclv2_sam_rh707_pim/a32bb540ca6454b0b9ef4ca5ef752681e4745d0e .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/458282143" 
	@${RM} ${OBJECTDIR}/_ext/458282143/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/458282143/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458282143/plib_clk.o.d" -o ${OBJECTDIR}/_ext/458282143/plib_clk.o ../src/config/mclv2_sam_rh707_pim/peripheral/clk/plib_clk.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o: ../src/config/mclv2_sam_rh707_pim/peripheral/flexcom/usart/plib_flexcom1_usart.c  .generated_files/flags/mclv2_sam_rh707_pim/2197a229a7ea0e78cb0a9d3a113369eceb022f55 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/114167651" 
	@${RM} ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o.d" -o ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o ../src/config/mclv2_sam_rh707_pim/peripheral/flexcom/usart/plib_flexcom1_usart.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1294225698/plib_matrix.o: ../src/config/mclv2_sam_rh707_pim/peripheral/matrix/plib_matrix.c  .generated_files/flags/mclv2_sam_rh707_pim/d7adb4f1adfa3346a66ed59489d947203cea0aad .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/1294225698" 
	@${RM} ${OBJECTDIR}/_ext/1294225698/plib_matrix.o.d 
	@${RM} ${OBJECTDIR}/_ext/1294225698/plib_matrix.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1294225698/plib_matrix.o.d" -o ${OBJECTDIR}/_ext/1294225698/plib_matrix.o ../src/config/mclv2_sam_rh707_pim/peripheral/matrix/plib_matrix.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1321507197/plib_nvic.o: ../src/config/mclv2_sam_rh707_pim/peripheral/nvic/plib_nvic.c  .generated_files/flags/mclv2_sam_rh707_pim/b85d0acd2693eca27ebde812204af6f5e6c01216 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/1321507197" 
	@${RM} ${OBJECTDIR}/_ext/1321507197/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1321507197/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1321507197/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1321507197/plib_nvic.o ../src/config/mclv2_sam_rh707_pim/peripheral/nvic/plib_nvic.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458269739/plib_pio.o: ../src/config/mclv2_sam_rh707_pim/peripheral/pio/plib_pio.c  .generated_files/flags/mclv2_sam_rh707_pim/5d03dac267ad62524105d0bccde6c1f3a276c328 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/458269739" 
	@${RM} ${OBJECTDIR}/_ext/458269739/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/458269739/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458269739/plib_pio.o.d" -o ${OBJECTDIR}/_ext/458269739/plib_pio.o ../src/config/mclv2_sam_rh707_pim/peripheral/pio/plib_pio.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458269307/plib_pwm0.o: ../src/config/mclv2_sam_rh707_pim/peripheral/pwm/plib_pwm0.c  .generated_files/flags/mclv2_sam_rh707_pim/40351ab64f73021a2dade1b0b9234c4bb01322d8 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/458269307" 
	@${RM} ${OBJECTDIR}/_ext/458269307/plib_pwm0.o.d 
	@${RM} ${OBJECTDIR}/_ext/458269307/plib_pwm0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458269307/plib_pwm0.o.d" -o ${OBJECTDIR}/_ext/458269307/plib_pwm0.o ../src/config/mclv2_sam_rh707_pim/peripheral/pwm/plib_pwm0.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/400859216/plib_tc0.o: ../src/config/mclv2_sam_rh707_pim/peripheral/tc/plib_tc0.c  .generated_files/flags/mclv2_sam_rh707_pim/471e971edb850cd60877255c5b974b6f9ab097ff .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/400859216" 
	@${RM} ${OBJECTDIR}/_ext/400859216/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/400859216/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/400859216/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/400859216/plib_tc0.o ../src/config/mclv2_sam_rh707_pim/peripheral/tc/plib_tc0.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1949058295/xc32_monitor.o: ../src/config/mclv2_sam_rh707_pim/stdio/xc32_monitor.c  .generated_files/flags/mclv2_sam_rh707_pim/c64486f20e88ad37163ea28411f010e7531b89cf .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/1949058295" 
	@${RM} ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1949058295/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o ../src/config/mclv2_sam_rh707_pim/stdio/xc32_monitor.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762799627/X2CScope.o: ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScope.c  .generated_files/flags/mclv2_sam_rh707_pim/54f74c443be4f7cd6fc2f7516fa7645292426387 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/1762799627" 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScope.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScope.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762799627/X2CScope.o.d" -o ${OBJECTDIR}/_ext/1762799627/X2CScope.o ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScope.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o: ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScopeCommunication.c  .generated_files/flags/mclv2_sam_rh707_pim/14188f38df4e2b1968ea3c71a187e110d19e5c89 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/1762799627" 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o.d" -o ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScopeCommunication.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/initialization.o: ../src/config/mclv2_sam_rh707_pim/initialization.c  .generated_files/flags/mclv2_sam_rh707_pim/9917b27d5a1bf0cbac344cf372e1833bebf386b1 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/initialization.o.d" -o ${OBJECTDIR}/_ext/387538179/initialization.o ../src/config/mclv2_sam_rh707_pim/initialization.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/interrupts.o: ../src/config/mclv2_sam_rh707_pim/interrupts.c  .generated_files/flags/mclv2_sam_rh707_pim/8a56c1fc2f468bbc551d032df66746bc4f6cf6be .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/interrupts.o.d" -o ${OBJECTDIR}/_ext/387538179/interrupts.o ../src/config/mclv2_sam_rh707_pim/interrupts.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/exceptions.o: ../src/config/mclv2_sam_rh707_pim/exceptions.c  .generated_files/flags/mclv2_sam_rh707_pim/27719ccfb8d19d82f6c78367c407dc7ca632b045 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/exceptions.o.d" -o ${OBJECTDIR}/_ext/387538179/exceptions.o ../src/config/mclv2_sam_rh707_pim/exceptions.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/startup_xc32.o: ../src/config/mclv2_sam_rh707_pim/startup_xc32.c  .generated_files/flags/mclv2_sam_rh707_pim/a1d62eb425a66cfdb7a31248197faecfe62d739d .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/387538179/startup_xc32.o ../src/config/mclv2_sam_rh707_pim/startup_xc32.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/libc_syscalls.o: ../src/config/mclv2_sam_rh707_pim/libc_syscalls.c  .generated_files/flags/mclv2_sam_rh707_pim/8375de42490edef2604936174775d4f8861484d .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/387538179/libc_syscalls.o ../src/config/mclv2_sam_rh707_pim/libc_syscalls.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/mclv2_sam_rh707_pim/26173556c345632d802052d97f5a7466bd1ab520 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/841051168/mc_control_loop.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_control_loop.c  .generated_files/flags/mclv2_sam_rh707_pim/20a7058e636e64d036e71d165b497b535d172980 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_control_loop.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_control_loop.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_control_loop.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_control_loop.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_control_loop.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_currmeasurement.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_currmeasurement.c  .generated_files/flags/mclv2_sam_rh707_pim/9cd2e6012c76858838b62217b8dda8f422be4bc8 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_currmeasurement.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_currmeasurement.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_currmeasurement.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_currmeasurement.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_currmeasurement.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_errorhandler.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_errorhandler.c  .generated_files/flags/mclv2_sam_rh707_pim/8e3ba34845343316dc74d496ffb18b3f6fdf7aee .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_errorhandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_errorhandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_errorhandler.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_errorhandler.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_errorhandler.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_generic_lib.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_generic_lib.c  .generated_files/flags/mclv2_sam_rh707_pim/9333aa2a355487925676d100361fcefce165739e .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_generic_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_generic_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_generic_lib.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_generic_lib.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_generic_lib.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_lib.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_lib.c  .generated_files/flags/mclv2_sam_rh707_pim/e61684a3f96502fa2e75b8ba58968e2b92538dc4 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_lib.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_lib.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_lib.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_picontrol.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_picontrol.c  .generated_files/flags/mclv2_sam_rh707_pim/8cc68daf182b4ab06cd7f7600f095de6652aa2e2 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_picontrol.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_picontrol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_picontrol.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_picontrol.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_picontrol.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pmsm_foc.c  .generated_files/flags/mclv2_sam_rh707_pim/3870d5a24c03eccf734168a14c9a52d33a30fab6 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_pmsm_foc.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pmsm_foc.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_pwm.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pwm.c  .generated_files/flags/mclv2_sam_rh707_pim/e6a89ce0f3870acd7765dee928c4ac95a79652d2 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_pwm.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_pwm.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_pwm.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_rotorposition.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_rotorposition.c  .generated_files/flags/mclv2_sam_rh707_pim/ddd5f5597eb671eda3e5805e9087fb4514a188d .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_rotorposition.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_rotorposition.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_rotorposition.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_rotorposition.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_rotorposition.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_speed.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_speed.c  .generated_files/flags/mclv2_sam_rh707_pim/960d19f915e5b22bad9496fdfe738ea937a9fd7 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_speed.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_speed.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_speed.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_speed.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_speed.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/841051168/mc_voltagemeasurement.o: ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_voltagemeasurement.c  .generated_files/flags/mclv2_sam_rh707_pim/c4308c91df2bb013238a4d2d1496b272d1129d3b .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/841051168" 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_voltagemeasurement.o.d 
	@${RM} ${OBJECTDIR}/_ext/841051168/mc_voltagemeasurement.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/841051168/mc_voltagemeasurement.o.d" -o ${OBJECTDIR}/_ext/841051168/mc_voltagemeasurement.o ../src/config/mclv2_sam_rh707_pim/motor_control/pmsm_foc/mc_voltagemeasurement.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458284321/plib_adc.o: ../src/config/mclv2_sam_rh707_pim/peripheral/adc/plib_adc.c  .generated_files/flags/mclv2_sam_rh707_pim/77690bd40189bf02445a39ab5d9efdff1707b953 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/458284321" 
	@${RM} ${OBJECTDIR}/_ext/458284321/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/458284321/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458284321/plib_adc.o.d" -o ${OBJECTDIR}/_ext/458284321/plib_adc.o ../src/config/mclv2_sam_rh707_pim/peripheral/adc/plib_adc.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458282143/plib_clk.o: ../src/config/mclv2_sam_rh707_pim/peripheral/clk/plib_clk.c  .generated_files/flags/mclv2_sam_rh707_pim/69bcd42a41e1e8ddf56bf9679aa8e7afcd977f96 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/458282143" 
	@${RM} ${OBJECTDIR}/_ext/458282143/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/458282143/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458282143/plib_clk.o.d" -o ${OBJECTDIR}/_ext/458282143/plib_clk.o ../src/config/mclv2_sam_rh707_pim/peripheral/clk/plib_clk.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o: ../src/config/mclv2_sam_rh707_pim/peripheral/flexcom/usart/plib_flexcom1_usart.c  .generated_files/flags/mclv2_sam_rh707_pim/4ccd024189facfdccd62d15fd1dda8afe8de7c56 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/114167651" 
	@${RM} ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o.d" -o ${OBJECTDIR}/_ext/114167651/plib_flexcom1_usart.o ../src/config/mclv2_sam_rh707_pim/peripheral/flexcom/usart/plib_flexcom1_usart.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1294225698/plib_matrix.o: ../src/config/mclv2_sam_rh707_pim/peripheral/matrix/plib_matrix.c  .generated_files/flags/mclv2_sam_rh707_pim/77862025ad4eab6cf0c96251d18d34f130ed7b6b .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/1294225698" 
	@${RM} ${OBJECTDIR}/_ext/1294225698/plib_matrix.o.d 
	@${RM} ${OBJECTDIR}/_ext/1294225698/plib_matrix.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1294225698/plib_matrix.o.d" -o ${OBJECTDIR}/_ext/1294225698/plib_matrix.o ../src/config/mclv2_sam_rh707_pim/peripheral/matrix/plib_matrix.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1321507197/plib_nvic.o: ../src/config/mclv2_sam_rh707_pim/peripheral/nvic/plib_nvic.c  .generated_files/flags/mclv2_sam_rh707_pim/c061f3e72f5eb4dff4a2ee185abeaa50f12b4ed4 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/1321507197" 
	@${RM} ${OBJECTDIR}/_ext/1321507197/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1321507197/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1321507197/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1321507197/plib_nvic.o ../src/config/mclv2_sam_rh707_pim/peripheral/nvic/plib_nvic.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458269739/plib_pio.o: ../src/config/mclv2_sam_rh707_pim/peripheral/pio/plib_pio.c  .generated_files/flags/mclv2_sam_rh707_pim/8fea9ee20543ea9e0e7113f36f36b3a1146091cb .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/458269739" 
	@${RM} ${OBJECTDIR}/_ext/458269739/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/458269739/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458269739/plib_pio.o.d" -o ${OBJECTDIR}/_ext/458269739/plib_pio.o ../src/config/mclv2_sam_rh707_pim/peripheral/pio/plib_pio.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/458269307/plib_pwm0.o: ../src/config/mclv2_sam_rh707_pim/peripheral/pwm/plib_pwm0.c  .generated_files/flags/mclv2_sam_rh707_pim/2a12707401a5be626a7317ea524174080fac4a86 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/458269307" 
	@${RM} ${OBJECTDIR}/_ext/458269307/plib_pwm0.o.d 
	@${RM} ${OBJECTDIR}/_ext/458269307/plib_pwm0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458269307/plib_pwm0.o.d" -o ${OBJECTDIR}/_ext/458269307/plib_pwm0.o ../src/config/mclv2_sam_rh707_pim/peripheral/pwm/plib_pwm0.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/400859216/plib_tc0.o: ../src/config/mclv2_sam_rh707_pim/peripheral/tc/plib_tc0.c  .generated_files/flags/mclv2_sam_rh707_pim/5f5c9692b74a379bac74d6f6775dcb220d9906c2 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/400859216" 
	@${RM} ${OBJECTDIR}/_ext/400859216/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/400859216/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/400859216/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/400859216/plib_tc0.o ../src/config/mclv2_sam_rh707_pim/peripheral/tc/plib_tc0.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1949058295/xc32_monitor.o: ../src/config/mclv2_sam_rh707_pim/stdio/xc32_monitor.c  .generated_files/flags/mclv2_sam_rh707_pim/cd98cf8c77f4a8b21c87cb7f07a12c4032781cd6 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/1949058295" 
	@${RM} ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1949058295/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1949058295/xc32_monitor.o ../src/config/mclv2_sam_rh707_pim/stdio/xc32_monitor.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762799627/X2CScope.o: ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScope.c  .generated_files/flags/mclv2_sam_rh707_pim/f0506d95cf7b1830aebc57b451ac96486157baaa .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/1762799627" 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScope.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScope.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762799627/X2CScope.o.d" -o ${OBJECTDIR}/_ext/1762799627/X2CScope.o ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScope.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o: ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScopeCommunication.c  .generated_files/flags/mclv2_sam_rh707_pim/686393934af52bf00ebfee6206f0ba2fa7bf2f4e .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/1762799627" 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o.d" -o ${OBJECTDIR}/_ext/1762799627/X2CScopeCommunication.o ../src/config/mclv2_sam_rh707_pim/X2CCode/X2CScope/src/X2CScopeCommunication.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/initialization.o: ../src/config/mclv2_sam_rh707_pim/initialization.c  .generated_files/flags/mclv2_sam_rh707_pim/1408270947e93607895bb06e92520c5b83fa7790 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/initialization.o.d" -o ${OBJECTDIR}/_ext/387538179/initialization.o ../src/config/mclv2_sam_rh707_pim/initialization.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/interrupts.o: ../src/config/mclv2_sam_rh707_pim/interrupts.c  .generated_files/flags/mclv2_sam_rh707_pim/324e16cb29bab4612eaa00bf708b5575b4be1775 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/interrupts.o.d" -o ${OBJECTDIR}/_ext/387538179/interrupts.o ../src/config/mclv2_sam_rh707_pim/interrupts.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/exceptions.o: ../src/config/mclv2_sam_rh707_pim/exceptions.c  .generated_files/flags/mclv2_sam_rh707_pim/d38f1fe9c86353840fb665d26abac59d91dbef41 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/exceptions.o.d" -o ${OBJECTDIR}/_ext/387538179/exceptions.o ../src/config/mclv2_sam_rh707_pim/exceptions.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/startup_xc32.o: ../src/config/mclv2_sam_rh707_pim/startup_xc32.c  .generated_files/flags/mclv2_sam_rh707_pim/bc65f68d25e5732543b517f30609cee60646a1cb .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/387538179/startup_xc32.o ../src/config/mclv2_sam_rh707_pim/startup_xc32.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/387538179/libc_syscalls.o: ../src/config/mclv2_sam_rh707_pim/libc_syscalls.c  .generated_files/flags/mclv2_sam_rh707_pim/c7bf7b8e541c30efb9fe72af342fe95f10b0dbc4 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
	@${MKDIR} "${OBJECTDIR}/_ext/387538179" 
	@${RM} ${OBJECTDIR}/_ext/387538179/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/387538179/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/mclv2_sam_rh707_pim" -I"../src/config/mclv2_sam_rh707_pim/X2CCode" -I"../src/packs/ATSAMRH707F18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/387538179/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/387538179/libc_syscalls.o ../src/config/mclv2_sam_rh707_pim/libc_syscalls.c   -mdtcm=0x20000 -mitcm=0x10000 -DXPRJ_mclv2_sam_rh707_pim=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/mclv2_sam_rh707_pim/a9383435d0ddb0920e5ff0bde91cbf02da84e675 .generated_files/flags/mclv2_sam_rh707_pim/84a4031c6fcebc452a9ebc544ba81923c45c81e7
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
