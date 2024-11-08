/**
 * @brief 
  *  Motor Control current measurement interface file
 *
 * @Company 
 *   Microchip Technology Inc.
 *
 * @File name
 *   mc_current_calculation.h
 *
 * @Summary 
 *    Header file for current measurement
 *
 * @Description
 *   This file contains the data structures and function prototypes  necessary for the current
 *    measurement functionality in motor control applications.
 *
 *   It includes definitions for initializing the current measurement module,  calculating current
 *   sensor offsets, computing phase currents, and resetting  the current calculations.
 */

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2021 Microchip Technology Inc. and its subsidiaries.
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
 Header files inclusions
 *******************************************************************************/
#include "mc_current_calculation.h"

/*******************************************************************************
 Module configuration
 *******************************************************************************/
/*******************************************************************************
 * Private constants
 *******************************************************************************/
#define OFFSET_SAMPLES    128u  /**< No of samples for offset calculation  */

/*******************************************************************************
 * Private data-types
 *******************************************************************************/

typedef struct
{
    uint8_t  calibDone;             /**< Flag indicating calibration status */
    uint16_t  adcSampleCounter;     /**< Counter for ADC samples */
    float32_t iaOffset;             /**< Offset for phase A current */
    float32_t ibOffset;             /**< Offset for phase B current */
    float32_t adcToCurrentFactor;   /**< Conversion factor from ADC to current */
    uint32_t iaOffsetBuffer;        /**< Buffer for phase A offset */
    uint32_t ibOffsetBuffer;        /**< Buffer for phase B offset */
} tmcCur_States_s;

/*******************************************************************************
 Private variables
 *******************************************************************************/
static tmcCur_States_s  mcCur_State_mds;

/*******************************************************************************
 Private Functions
 *******************************************************************************/

/*******************************************************************************
 Interface variables
 *******************************************************************************/
tmcCur_ModuleData_s mcCurI_ModuleData_gds;

/*******************************************************************************
 Interface Functions
 *******************************************************************************/

/**
 * @brief Current control initialization function.
 *
 * Initializes the current control module by setting up the required parameters 
 * and preparing the module for current calculations.
 *
 * @param[in,out] pModule Pointer to the module data structure.
 * 
 * @return None
 */
void mcCurI_CurrentCalculationInit( tmcCur_ModuleData_s * const pModule )
{
    tmcCur_States_s * pState;
    pState = &mcCur_State_mds;

    /** Set parameters */
    tmcCur_Parameters_s * pParameters = &pModule->dParameters;
    mcCur_ParametersSet( pParameters);

    /** Update intermediate parameters */
    pState = &mcCur_State_mds;
    pState->adcToCurrentFactor = pParameters->adcToCurrentFactor;

}

/**
 * @brief Function to calculate the current sensor offset.
 *
 * Calculates the offset for the current sensors to ensure accurate current measurements.
 *
 * @param[in,out] pModule Pointer to the module data structure.
 * 
 * @return None
 */
tmcTypes_StdReturn_e mcCurI_CurrentOffsetCalculation( tmcCur_ModuleData_s * const pModule )
{
    tmcCur_States_s * pState;
    pState = &mcCur_State_mds;

    tmcTypes_StdReturn_e status = StdReturn_Progress;

    /** Read input ports */
    mcCur_InputsRead(&pModule->dInput);

    if ( pState->adcSampleCounter < OFFSET_SAMPLES)
    {
        pState->iaOffsetBuffer += (uint32_t)pModule->dInput.iaAdcInput;
        pState->ibOffsetBuffer += (uint32_t)pModule->dInput.ibAdcInput;
        pState->adcSampleCounter++;
    }
    else
    {

        pState->iaOffset = (float32_t)( (float32_t)pState->iaOffsetBuffer/ (float32_t)OFFSET_SAMPLES );
        pState->ibOffset = (float32_t)( (float32_t)pState->ibOffsetBuffer/ (float32_t)OFFSET_SAMPLES );

        /**Set ADC Calibration Done Flag */
        pState->calibDone = 1u;
        status = StdReturn_Complete;


    }

    return status;
}

/**
 * @brief Function to calculate the phase currents.
 *
 * Computes the phase currents based on the ADC input values and stores the results 
 * in the module's output structure.
 *
 * @param[in,out] pModule Pointer to the module data structure.
 * 
 * @return None
 */
void mcCurI_CurrentCalculation( tmcCur_ModuleData_s * const pModule )
{
    tmcCur_States_s * pState;
    pState = &mcCur_State_mds;

    /** Read input ports */
    mcCur_InputsRead(&pModule->dInput);

    /** Phase A current measurement */
    pModule->dOutput.iABC.a = ( pState->iaOffset - (float32_t)pModule->dInput.iaAdcInput ) * pState->adcToCurrentFactor;

    /** Phase B current measurement */
    pModule->dOutput.iABC.b = ( pState->ibOffset - (float32_t)pModule->dInput.ibAdcInput ) * pState->adcToCurrentFactor;

    /** Phase C current calculation */
    pModule->dOutput.iABC.c = -pModule->dOutput.iABC.a - pModule->dOutput.iABC.b;
}

/**
 * @brief Function to reset phase current calculation.
 *
 * Resets the state of the current calculation module, clearing any stored values 
 * and preparing it for a fresh set of calculations.
 *
 * @param[in,out] pModule Pointer to the module data structure.
 * 
 * @return None
 */
void mcCurI_CurrentCalculationReset( tmcCur_ModuleData_s * const pModule )
{
    /** Nothing to do */
}
