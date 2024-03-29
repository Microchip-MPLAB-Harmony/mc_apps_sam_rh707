/*******************************************************************************
 Voltage calculation functions 

  Company:
    Microchip Technology Inc.

  File Name:
    mc_voltage_measurement.c

  Summary:
  Voltage calculation functions 

  Description:
  Voltage Calculation functions 
 
 *******************************************************************************/

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
Headers inclusions
 *******************************************************************************/
#include <stdint.h>
#include "mc_voltage_measurement.h"

/*******************************************************************************
 * Constants 
 *******************************************************************************/
#define     CONSTANT_SquareRoot3                                   ((float)1.732)

/*******************************************************************************
 Private data-types 
 *******************************************************************************/

typedef struct
{
    float adcToVoltage;
    float dcVoltageFiltParam;
}tmcVol_Parameters_s;

typedef struct
{
    float dcBusVoltage;
}tmcVol_StateVariables_s;
    
/*******************************************************************************
 Private variables 
 *******************************************************************************/
static tmcVol_InputPorts_s mcVol_InputPorts_mas[VOLTAGE_MEASUREMENT_INSTANCES];
static tmcVol_OutputPorts_s mcVol_OutputPorts_mas[VOLTAGE_MEASUREMENT_INSTANCES];
static tmcVol_Parameters_s mcVol_Parameters_mas[VOLTAGE_MEASUREMENT_INSTANCES];


/*******************************************************************************
 Interface variables 
 *******************************************************************************/
tmcVol_ConfigParameters_s mcVolI_ConfigurationParameters_gas[VOLTAGE_MEASUREMENT_INSTANCES] = 
{
    VOLTAGE_MEASUREMENT_MODULE_A_CONFIG,
#if( 2u == VOLTAGE_MEASUREMENT_INSTANCES )
    VOLTAGE_MEASUREMENT_MODULE_B_CONFIG
#endif
};


/*******************************************************************************
 Private Functions 
 *******************************************************************************/
static tStd_ReturnType_e  mcVol_AssertionFailedReaction( const char * message )
{
    /*ToDo: Decide appropriate fail reaction */
     return returnType_Failed;
}

static void mcVol_EulerFilter( float input, float * out, float filterParam )
{
    *out = *out + filterParam * ( input - (*out ));
}

#define ASSERT( expression, message ) if(!expression){uint8_t status_e;\
                                          status_e=(uint8_t)((tStd_ReturnType_e)mcVol_AssertionFailedReaction(message));\
                                          if(status_e==(uint8_t)returnType_Failed){/*Error log*/}}

/*******************************************************************************
 Interface Functions 
 *******************************************************************************/

/*! \brief Voltage calculation initialization function 
 * 
 * Details.
 *  Voltage calculation initialization function 
 * 
 * @param[in]: 
 * @param[in/out]:
 * @param[out]:
 * @return:
 */
tStd_ReturnType_e  mcVolI_VoltageCalculationInit( tmcVol_ConfigParameters_s * volParam )
{
    /* Check if configuration parameters does not point to NULL */
    ASSERT(( NULL != volParam), "Configuration parameters points to NULL");
    
    /* Check if input ports are initialized properly */
    ASSERT( (  NULL != volParam->inPort.sensorInput ) , "Input Ports are not assigned" );
    
    mcVol_InputPorts_mas[volParam->Id] = volParam->inPort;
    
     /* Check if output ports are initialized properly */
     ASSERT(((  NULL != volParam->outPort.busVoltage ) && ( NULL != volParam->outPort.filteredBusVoltage ) ),
                      "Output Ports are not assigned");
    
     mcVol_OutputPorts_mas[volParam->Id] = volParam->outPort;
     
     /* Update and calculate independent and dependent parameters respectively */
     mcVol_Parameters_mas[volParam->Id].dcVoltageFiltParam = volParam->userParam.busVoltageFiltParam;
     mcVol_Parameters_mas[volParam->Id].adcToVoltage  = volParam->userParam.adcToVoltage;

     return returnType_Passed;
}


/*! \brief Voltage calculation function 
 * 
 * Details.
 *  Voltage calculation function 
 * 
 * @param[in]: 
 * @param[in/out]:
 * @param[out]:
 * @return:
 */
void mcVolI_VoltageCalculationRun( const tmcVol_InstanceId_e Id )
{     
    /* Calculate DC bus voltage */
    *mcVol_OutputPorts_mas[Id].busVoltage =  ( (float)*mcVol_InputPorts_mas[Id].sensorInput )
                                                                    *  mcVol_Parameters_mas[Id].adcToVoltage ;
    
    mcVol_EulerFilter( *mcVol_OutputPorts_mas[Id].busVoltage,  mcVol_OutputPorts_mas[Id].filteredBusVoltage,
                                    mcVol_Parameters_mas[Id].dcVoltageFiltParam );
    
    /* Calculate maximum inverter AC peak voltage */
    *mcVol_OutputPorts_mas[Id].maximumUacPeak = *mcVol_OutputPorts_mas[Id].filteredBusVoltage / CONSTANT_SquareRoot3;
    
    /* Write output ports */
}




/*! \brief Voltage calculation reset 
 * 
 * Details.
 *  Voltage calculation reset 
 * 
 * @param[in]: 
 * @param[in/out]:
 * @param[out]:
 * @return:
 */
void mcVolI_VoltageCalculationReset( const tmcVol_InstanceId_e Id )
{
    /* Do nothing */
}
