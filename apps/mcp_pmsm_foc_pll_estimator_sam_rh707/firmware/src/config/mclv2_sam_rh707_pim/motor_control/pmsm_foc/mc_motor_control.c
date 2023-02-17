/*******************************************************************************
  PMSM FOC Control Loop Interrupt Handler

  Company:
    Microchip Technology Inc.

  File Name:
    mc_motor_control.c

  Summary:
    This file contains the state machine and control loop of the motor control
   algorithm.

  Description:
    This file contains the control loop of the PMSM FOC.
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
 Header File inclusions  
 *******************************************************************************/
#include "mc_motor_control.h"
#include "mc_hardware_abstraction.h"



/*******************************************************************************
 Constants  
 *******************************************************************************/


/*******************************************************************************
 Private Variables 
 *******************************************************************************/

/*******************************************************************************
 Private Functions 
 *******************************************************************************/

/*******************************************************************************
 Interface Functions 
 *******************************************************************************/

/*! \brief Motor M1 control application initialization 
 * 
 * Details.
 *  Motor M1 Control application initialization 
 * 
 * @param[in]: 
 * @param[in/out]:
 * @param[out]:
 * @return:
 */
void mcMocI_M1ControlApplicationInit( void )
{   
    //tStd_ReturnType_e initStatus;
    uint8_t initStatus;
    mcMocI_RotationSign_gas8[0u] = 1;
    mcMocI_MotorRunningState_gae[0u] = mcState_Idle;
    
    /* Initialize voltage calculation module */
    initStatus = (uint8_t)mcVolI_VoltageCalculationInit(&mcVolI_ConfigurationParameters_gas[0u]);
    
    /* Initialize current calculation module */
    initStatus |= (uint8_t)mcCurI_CurrentCalculationInit( &mcCurI_ConfigurationParameters_gas[0u]);
    
    /* Initialize open loop start-up module */
    initStatus |= (uint8_t)mcSupI_OpenLoopStartupInit(&mcSupI_ConfigurationParameters_gas[0u]);
    
    /* Initialize rotor position calculation module */
    initStatus |= (uint8_t)mcRpoI_PosCalInit(&mcRpoI_ConfigParameters_gas[0u]);
     
    /* Initialize current regulation module */
    initStatus |= (uint8_t)mcRegI_CurrentRegulationInit(&mcRegI_ConfigurationParameters_gas[0u]);
    
    /* Initialize speed regulation module */
    initStatus |= (uint8_t)mcSpeI_SpeedRegulationInit(&mcSpeI_ConfigParameters_gas[0u]);
    
    initStatus |= (uint8_t)mcPwmI_PulseWidthModulationInit( &mcPwmI_ConfigParameters_gas[0u] );
    
#if ( ENABLE == ENABLE_FLUX_WEAKENING )
    initStatus |= (uint8_t)mcFlxI_FluxRegulationInit( &mcFlxI_ConfigParameters_gas[0u] );
#endif
    
#if ( ENABLE_FLYING_START == ENABLE )
     initStatus |= (uint8_t)mcFlyI_FlyingStartInit( &mcFlyI_ConfigParameters_gas[0u] );
#endif
        
     if( (bool)(initStatus & (uint8_t)returnType_Failed ) || (bool)(initStatus & (uint8_t)returnType_Aborted ))
     {
         /* Log initialization failure flag  */
     }
}

 
 
/*! \brief Motor M2 control application initialization 
 * 
 * Details.
 *  Motor M2 Control application initialization 
 * 
 * @param[in]: 
 * @param[in/out]:
 * @param[out]:
 * @return:
 */
void mcMocI_M2ControlApplicationInit( void )
{   
     
}

/*! \brief Motor start stop function 
 * 
 * Details.
 * Motor start stop function  
 * 
 * @param[in]: 
 * @param[in/out]:
 * @param[out]:
 * @return:
 */
void mcMocI_M1StartStop(void)
{
    if( mcState_Idle == mcMocI_MotorRunningState_gae[0u])
    {
        mcMocI_M1Start();
    }
    else
    {
        mcMocI_M1Stop();
    }
}

/*! \brief Motor start function 
 * 
 * Details.
 * Motor start function  
 * 
 * @param[in]: 
 * @param[in/out]:
 * @param[out]:
 * @return:
 */
void mcMocI_M1Start(void)
{
    mcMocI_RunningStatus_gde[0u] = 1u;
#if ( ENABLE_FLYING_START == ENABLE )
    /* Switch the motor control state to flying start */
    mcMocI_MotorRunningState_gae[0u] =  mcState_FlyingStart;
#else 
    /* Switch the motor control state to start-up */
    mcMocI_MotorRunningState_gae[0u] = mcState_Startup;
#endif
       
    /* Enable / Re-enable PWM output */
    mcHalI_VSI_PwmEnable();

}

/*! \brief Motor stop function 
 * 
 * Details.
 * Motor stop function  
 * 
 * @param[in]: 
 * @param[in/out]:
 * @param[out]:
 * @return:
 */
void mcMocI_M1Stop(void)
{
    mcMocI_RunningStatus_gde[0u] = 0u;

    /* Disable PWM output */
    mcHalI_VSI_PwmDisable();

    /* Switch the motor control state to mcState_Idle */
    mcMocI_MotorRunningState_gae[0u] = mcState_Idle;
    
    /* Motor Controller parameter initialization */
    mcMocI_M1ControlReset( );
}

/*! \brief Motor direction toggle 
 * 
 * Details.
 * Motor direction toggle
 * 
 * @param[in]: 
 * @param[in/out]:
 * @param[out]:
 * @return:
 */
void mcMocI_M1DirectionToggle(void)
{
    if( mcState_Idle == mcMocI_MotorRunningState_gae[0u])
    {
        /* Change rotation sign */
        mcMocI_RotationSign_gas8[0u] = -mcMocI_RotationSign_gas8[0u];

        LED_02_Toggle();   
    }
}

/*! \brief Motor M1 control application ISR tasks
 * 
 * Details.
 *  Motor M1 Control application ISR tasks  
 * 
 * @param[in]: 
 * @param[in/out]:
 * @param[out]:
 * @return:
 */
void mcMocI_M1ControlTasksRun( void  )
{

  if( 1u == mcMocI_RunningStatus_gde[0u] )
  {
    
    /* Current Measurement */
    mcCurI_CurrentCalculationRun( (tmcCur_InstanceId_e)0u );

    /* Clarke transform */
    mcLib_ClarkeTransform(&mcCurI_PhaseCurrents_gas[0u], &mcMocI_FeedbackAlphaBetaCurrent_gas[0u]);

    /* Park transform */
    mcLib_ParkTransform(&mcMocI_FeedbackAlphaBetaCurrent_gas[0u], mcMocI_SpaceVectorAngle_gaf32[0u], &mcMocI_FeedbackDQCurrent_gas[0u]);

    /* Rotor position estimation */
    mcRpoI_PosCalRun( (tmcRpo_InstanceId_e)0u );   
    
    switch( mcMocI_MotorRunningState_gae[0u] )
    {
        case mcState_Idle:
        {
            /* Idle state*/
        }
        break;
#if ( ENABLE_FLYING_START == ENABLE )
        case mcState_FlyingStart:
        {
           tStd_ReturnType_e completionStatus;
           
           completionStatus = mcFlyI_FlyingStartRun( 0u );
           if( returnType_Failed == completionStatus )
           {
               mcMocI_MotorRunningState_gae[0u] = mcState_Foc;
           }
           else if( returnType_Passed == completionStatus)
           {
               mcMocI_MotorRunningState_gae[0u] = mcState_Foc;
           }
           else
           {
               /* Do nothing */
           }
        }
        break;
#endif
        case mcState_Startup:
        {
           if( 1u ==  mcSupI_OpenLoopStartupRun( (tmcSup_InstanceId_e)0u ) )
           {   
                /* Update speed controller parameters */
                mcSpeI_SpeedControlIntegralSet( 0u, mcSpeI_ReferenceIqCurrent_gaf32[0u] );
                mcSpeI_ReferenceElectricalSpeed_gaf32[0u] = mcRpoI_ElectricalRotorSpeed_gaf32[0u];

                /* Reset the d-axis controller integral */
                mcRegI_IdCurrentControlIntegralSet(0, 0.0f);

                /* Change control state */
                mcMocI_MotorRunningState_gae[0u] = mcState_Foc;
           }
   
        }
        break;
 
        case mcState_Foc:
        {
            /* Switched to closed by slowly decreasing the offset which is present in the estimated angle during open loop */
            mcMocI_SpaceVectorAngle_gaf32[0u] = mcRpoI_ElectricalRotorPosition_gaf32[0u];

            /* d- axis reference current calculation */
            mcSpeI_ReferenceIdCurrent_gaf32[0u] = 0.0f;
          
          #if ( ENABLE == ENABLE_FLUX_WEAKENING )
            mcFlxI_FluxRegulationRun( 0u );
          #endif
            
            /* Speed regulation  */
            mcSpeI_SpeedRegulationRun( (tmcSpe_InstanceId_e)0u );
        }
        break;
        default:
        {
            /* Undefined state: Should never come here */
        }
        break;
    }
    
     /* Direct and Quadrature axis current control */
    mcRegI_CurrentRegulationRun( (tmcReg_InstanceId_e)0u );

    /* Calculate qValpha, qVbeta from qSin,qCos,qVd,qVq */
    mcLib_InvParkTransform(&mcMocI_DQVoltage_gas[0u], mcMocI_SpaceVectorAngle_gaf32[0u], &mcMocI_AlphaBetaVoltage_gas[0u]);

    /* PWM modulation */
    mcPwmI_PulseWidthModulationRun( (tmcPwm_InstanceId_e)0u );
  }
    
}

/*! \brief Motor M2 control application ISR tasks
 * 
 * Details.
 *  Motor M2 Control application ISR tasks  
 * 
 * @param[in]: 
 * @param[in/out]:
 * @param[out]:
 * @return:
 */
void mcMocI_M2ControlTasksRun( void  )
{
        
}

/*! \brief Motor M1 control application reset
 * 
 * Details.
 *  Motor M1 Control application reset 
 * 
 * @param[in]: 
 * @param[in/out]:
 * @param[out]:
 * @return:
 */
void mcMocI_M1ControlReset( void )
{
     /* Reset voltage calculation module */
    mcVolI_VoltageCalculationReset( (tmcVol_InstanceId_e)0u );
        
    /* Reset open loop start-up module */
    mcSupI_OpenLoopStartupReset( (tmcSup_InstanceId_e)0u );

    /* Reset rotor position calculation module */
    mcRpoI_PosCalReset( (tmcRpo_InstanceId_e)0u );
     
    /* Reset current regulation module */
    mcRegI_CurrentRegulationReset( (tmcReg_InstanceId_e)0u );
    
    /* Reset speed regulation module */
    mcSpeI_SpeedRegulationReset( (tmcSpe_InstanceId_e)0u );
    
    /* Reset PWM modulator */
    mcPwmI_PulseWidthModulationReset( (tmcPwm_InstanceId_e)0u );
    
#if ( ENABLE == ENABLE_FLUX_WEAKENING )
    mcFlxI_FluxRegulationReset( 0u );
#endif
            
#if ( ENABLE_FLYING_START == ENABLE )
     mcFlyI_FlyingStartReset( 0u );
#endif
    
   
    /* Reset pulse width modulation function */
    mcPwmI_PulseWidthModulationReset( (tmcPwm_InstanceId_e)0u );
}
 
 
/*! \brief Motor M2 control application reset
 * 
 * Details.
 *  Motor M2 Control application reset 
 * 
 * @param[in]: 
 * @param[in/out]:
 * @param[out]:
 * @return:
 */
void mcMocI_M2ControlReset( void )
{
       
}


