/*******************************************************************************
 Motor Control Hardware Abstraction interface file

  Company:
    Microchip Technology Inc.

  File Name:
    mc_hal.h

  Summary:
    Header file for hardware abstraction

  Description:
    This file contains the function mapping and channel mapping to provide
    hardware abstraction layer for motor control algorithm
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2020 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/
// DOM-IGNORE-END

#ifndef MCHAL_H    // Guards against multiple inclusion
#define MCHAL_H


// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

/*  This section lists the other files that are included in this file.
*/

#include <stddef.h>
#include "definitions.h"
#include "mc_userparams.h"
#include "mc_pmsm_foc.h"

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

extern "C" {

#endif

// DOM-IGNORE-END


// *****************************************************************************
// *****************************************************************************
// Section: Data Types
// *****************************************************************************
// *****************************************************************************


// *****************************************************************************
// *****************************************************************************
// Section: Interface Routines
// *****************************************************************************
// *****************************************************************************

/****************************** PWM ***********************************************************/
#define MCHAL_PWM_PH_U                  PWM_CHANNEL_0
#define MCHAL_PWM_PH_V                  PWM_CHANNEL_1
#define MCHAL_PWM_PH_W                  PWM_CHANNEL_2
#define MCHAL_PWM_PH_MASK               0x7U
#define MCHAL_PWMStop(mask)                 PWM0_ChannelsStop(mask)
#define MCHAL_PWMStart(mask)                PWM0_ChannelsStart(mask)
#define MCHAL_PWMPrimaryPeriodGet(ch)       PWM0_ChannelPeriodGet(ch)
#define MCHAL_PWMDutySet(ch, duty)          PWM0_ChannelDutySet(ch, duty)
#define MCHAL_PWMOutputDisable(ch)          PWM0_ChannelOverrideDisable(ch)
#define MCHAL_PWMOutputEnable(ch)           PWM0_ChannelOverrideEnable(ch)
#define MCHAL_PWMCallbackRegister(ch, fn, context)  PWM0_CallbackRegister(fn, context)


/**************************************** ADC ***************************************************/
  
#define MCHAL_ADC_PH_U                                   ADC_CH0
#define MCHAL_ADC_PH_V                                   ADC_CH2
#define MCHAL_ADC_VDC                                    ADC_CH12
#define MCHAL_ADC_POT                                    ADC_CH10


#define MCHAL_ADC_RESULT_SHIFT                           (0U)
#define MCHAL_ADCCallbackRegister(ch, fn, context)       ADC_CallbackRegister(fn, context)
#define MCHAL_ADCChannelConversionStart(ch)              ADC_ConversionStart()
#define MCHAL_ADCPhaseUResultGet(ch)                     ADC_ChannelResultGet(ch)
#define MCHAL_ADCPhaseVResultGet(ch)                     ADC_ChannelResultGet(ch)
#define MCHAL_ADCPotResultGet(ch)                        ADC_ChannelResultGet(ch)
#define MCHAL_ADCVdcResultGet(ch)                        ADC_ChannelResultGet(ch)
#define MCHAL_ADCChannelResultIsReady(ch)                ADC_ChannelResultIsReady(ch)
#define MCHAL_ADCEnable( )                              
#define MCHAL_ADCDisable( )                             



/***************************** Encoder *******************************************************/
#define MCHAL_EncoderStart()                 TC0_QuadratureStart()
#define MCHAL_EncoderStop()                  TC0_QuadratureStop()
#define MCHAL_EncoderPositionGet()           TC0_QuadraturePositionGet()
#define MCHAL_EncoderSpeedGet()
#define MCHAL_EncoderPositionSet(count)
#define MCHAL_EncoderSpeedSet(count)

/************************************ Interrupt *********************************************/
#define MCHAL_CTRL_IRQ              (ADC_IRQn)
#define MCHAL_FAULT_IRQ             (PWM0_IRQn)

#define MCHAL_IntDisable(irq)       NVIC_DisableIRQ(irq)
#define MCHAL_IntEnable(irq)        NVIC_EnableIRQ(irq)
#define MCHAL_IntClear(irq)         NVIC_ClearPendingIRQ(irq)


/******************************* LED and Switches *******************************************/

#define MCHAL_FAULT_LED_SET()       GPIO_FAULT_LED_Set()
#define MCHAL_FAULT_LED_CLEAR()     GPIO_FAULT_LED_Clear()
#define MCHAL_FAULT_LED_TOGGLE()    GPIO_FAULT_LED_Toggle()

#define MCHAL_DIR_LED_SET()         GPIO_DIR_LED_Set()
#define MCHAL_DIR_LED_CLEAR()       GPIO_DIR_LED_Clear()
#define MCHAL_DIR_LED_TOGGLE()      GPIO_DIR_LED_Toggle()

#define MCHAL_DIR_SWITCH_GET()         GPIO_DIR_SWITCH_Get()

#define MCHAL_START_STOP_SWITCH_GET()  GPIO_START_STOP_SWITCH_Get()

/***************************** X2CScope **************************************************/
#define MCHAL_X2C_Update()          X2CScope_Update()

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

}

#endif
// DOM-IGNORE-END

#endif //MCINF_H

/**
 End of File
*/
