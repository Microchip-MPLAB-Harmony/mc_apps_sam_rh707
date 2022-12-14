/*******************************************************************************
    Speed measurement interface file

  Company:
    Microchip Technology Inc.

  File Name:
    mc_speed.h

  Summary:
    Header file for speed measurement

  Description:
    This file contains the data structures and function prototypes used by
    speed measurement.
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

#ifndef MC_SPEED_H
#define MC_SPEED_H

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

extern "C" {

#endif

// DOM-IGNORE-END

#if (CONTROL_LOOP == SPEED_LOOP)
// *****************************************************************************
// *****************************************************************************
// Section: Data Types
// *****************************************************************************
// *****************************************************************************

typedef struct
{
    float potFiltered;
}tMCSPE_STATE_SIGNAL_S;

typedef struct
{
  float speedRef;
}tMCSPE_INPUT_SIGNAL_S;

typedef struct
{
    float potReading;
    float commandRpm;
    float commandSpeed;
}tMCSPE_OUTPUT_SIGNAL_S;


typedef struct
{
    float filterParam;
    float pot2SpeedRatio;
    float minSpeed;
}tMCSPE_PARAMETERS_S;


/******************************************************************************/
/*                       INTERFACE VARIABLES                                  */
/******************************************************************************/
extern tMCSPE_OUTPUT_SIGNAL_S gMCSPE_OutputSignals;
extern tMCSPE_STATE_SIGNAL_S  gMCSPE_StateSignals;
extern tMCSPE_PARAMETERS_S    gMCSPE_Parameters;


/******************************************************************************/
/*                       INTERFACE FUNCTIONS                                  */
/******************************************************************************/

/******************************************************************************/
/* Function name: MCSPE_InitializeSpeedControl                                */
/* Function parameters: None                                                  */
/* Function return: uint8_t                                                   */
/* Description: Reset speed control state variables                           */
/******************************************************************************/
void  MCSPE_InitializeSpeedControl(void);


/******************************************************************************/
/* Function name: MCSPE_SpeedCommand                                          */
/* Function parameters: None                                                  */
/* Function return: None                                                      */
/* Description: Determines the speed command from external source             */
/*                      or potentiometer                                      */
/******************************************************************************/
void MCSPE_SpeedCommand( void );


/******************************************************************************/
/* Function name: MCSPE_ResetSpeedControl                                     */
/* Function parameters: None                                                  */
/* Function return: uint8_t                                                   */
/* Description: Reset speed control state variables                           */
/******************************************************************************/
void  MCSPE_ResetSpeedControl(void);


void MCSPE_PotentiometerRead( void );

#endif

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

}

#endif
// DOM-IGNORE-END

#endif    /* MC_SPEED_H */
