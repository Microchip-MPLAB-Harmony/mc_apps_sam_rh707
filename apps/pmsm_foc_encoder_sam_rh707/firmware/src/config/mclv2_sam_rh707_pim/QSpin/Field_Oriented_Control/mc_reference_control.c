/**
 * @brief 
 *    Source file for reference control
 *
 * @File Name 
 *    mc_reference_control.c
 *
 * @Company 
 *    Microchip Technology Inc.
 *
 * @Summary
 *    Source file which contains variables and function implementations for reference control.
 *
 * @Description
 *    This file contains variables and function implementations which are generally used for reference
 *    control in pulse width modulation. 
 */

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2022 Microchip Technology Inc. and its subsidiaries.
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

/*******************************************************************************
Headers inclusions
*******************************************************************************/
#include "mc_reference_control.h"

/*******************************************************************************
Local configuration options
*******************************************************************************/


/*******************************************************************************
 Private data types
*******************************************************************************/
typedef struct
{
    bool enable;
    bool initDone;
    float32_t lowerLimit;
    float32_t upperLimit;
    float32_t reference;
    float32_t rampRate;
}tmcRef_State_s;

/*******************************************************************************
Private variables
*******************************************************************************/
static tmcRef_State_s mcRef_State_mds;

/*******************************************************************************
Interface  variables
*******************************************************************************/

/*******************************************************************************
Macro Functions
*******************************************************************************/

/*******************************************************************************
Private Functions
*******************************************************************************/

/*******************************************************************************
 * Interface Functions
*******************************************************************************/
/**
 * @brief Initialize reference control module
 *
 * This function initializes the reference control module.
 *
 * @param[in] pParameters Pointer to the reference parameters structure
 */
void  mcRefI_ReferenceControlInit( tmcRef_Parameters_s * const pParameters )
{
    /** Link state variable structure to the module */
    pParameters->pStatePointer = (void *)&mcRef_State_mds;

    /** Set parameters */
    mcRefI_ParametersSet(pParameters);

    /** Update state variables */
    mcRef_State_mds.lowerLimit = pParameters->minimumRpm;
    mcRef_State_mds.upperLimit = pParameters->maximumRpm;

    /** Calculate ramp rate per cycle   */
    mcRef_State_mds.rampRate = pParameters->rpmPerSecond * pParameters->dt;

    mcRef_State_mds.initDone = true;
}

/**
 * @brief Enable reference control module
 *
 * This function enables the reference control module.
 *
 * @param[in] pParameters Pointer to the reference parameters structure
 */
void  mcRefI_ReferenceControlEnable( tmcRef_Parameters_s * const pParameters )
{
    /** Get the linked state variable */
    tmcRef_State_s * pState;
    pState = (tmcRef_State_s *)pParameters->pStatePointer;

    if( ( NULL == pState ) || ( !pState->initDone ))
    {
         /** Initialize parameters */
        mcRefI_ReferenceControlInit(pParameters);
    }
    else
    {
         /** For MISRA Compliance */
    }

    /** Set enable flag as true */
    pState->enable = true;
}

/**
 * @brief Disable reference control module
 *
 * This function disables the reference control module.
 *
 * @param[in] pParameters Pointer to the reference parameters structure
 */
void  mcRefI_ReferenceControlDisable( tmcRef_Parameters_s * const pParameters )
{
    /** Get the linked state variable */
    tmcRef_State_s * pState;
    pState = (tmcRef_State_s *)pParameters->pStatePointer;

    if( NULL != pState)
    {
        /** Reset state variables  */
        mcRefI_ReferenceControlReset(pParameters);
    }
    else
    {
        /** For MISRA Compliance */
    }

    /** Set enable flag as true */
    pState->enable = false;

}

/**
 * @brief Reference control
 *
 * This function performs the reference control.
 *
 * @param[in] pParameters Pointer to the reference parameters structure
 * @param[in] command The command input
 * @param[out] pOut Pointer to the output
 */
void mcRefI_ReferenceControl(  tmcRef_Parameters_s * const pParameters,
                                                    const float32_t command, float32_t * const pOut )
{
     /** Get the linked state variable */
     tmcRef_State_s * pState;
     pState = (tmcRef_State_s *)pParameters->pStatePointer;

     if( pState->enable )
     {
         /** Execute reference control */
         if( ( pState->reference + pState->rampRate ) < command )
         {
             /** Ramp-up*/
             pState->reference += pState->rampRate;
         }
         else if( ( pState->reference - pState->rampRate ) > command )
         {
             /** Ramp-down */
             pState->reference -= pState->rampRate;
         }
         else
         {
             pState->reference = command;
         }

         /** Clamp the reference  */
         if( pState->reference > pState->upperLimit )
         {
             pState->reference = pState->upperLimit;
         }
         else if( pState->reference < pState->lowerLimit)
         {
             pState->reference = pState->lowerLimit;
         }
         else
         {
             /** For MISRA Compliance */
         }

         *pOut = pState->reference;
     }
     else
     {
         /** Reset reference control */
      }
}

/**
 * @brief Reset reference control
 *
 * This function resets the reference control.
 *
 * @param[in] pParameters Pointer to the reference parameters structure
 */
void mcRefI_ReferenceControlReset( tmcRef_Parameters_s * const pParameters )
{
    /** Get the linked state variable */
    tmcRef_State_s * pState;
    pState = (tmcRef_State_s *)pParameters->pStatePointer;

    /** Reset reference control state variables  */
    pState->reference = pState->lowerLimit;
}
