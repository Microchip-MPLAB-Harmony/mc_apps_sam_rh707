/*******************************************************************************
  PMSM FOC Control Loop Interrupt Handler

  Company:
    Microchip Technology Inc.

  File Name:
    mc_control_loop.c

  Summary:
    This file contains the state machine and control loop of the motor control
   algorithm.

  Description:
    This file contains the control loop of the PMSM FOC.
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

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "definitions.h"                // SYS function prototypes
#include "device.h"
#include "mc_derivedparams.h"
#include "mc_control_loop.h"
#include "mc_hal.h"
#include "mc_generic_lib.h"
#include "mc_currmeasurement.h"
#include "mc_rotorposition.h"
#include "mc_voltagemeasurement.h"
#include "mc_pwm.h"
#include "mc_speed.h"
#include "mc_picontrol.h"
#include "math.h"



/******************************************************************************/
/* Local Function Prototype                                                   */
/******************************************************************************/
__STATIC_INLINE float MCCTRL_IdrefCalculation( void );
__STATIC_INLINE float MCCTRL_IqrefCalculation( void );

__STATIC_INLINE void MCCTRL_SignalTransformation(void );
__STATIC_INLINE void MCCTRL_StateMachine( void );
__STATIC_INLINE void MCCTRL_CurrentControl(void);
__STATIC_INLINE void MCCTRL_MotorControl(void );

#if (POSITION_FEEDBACK == SENSORLESS_PLL || (POSITION_FEEDBACK == SENSORED_ENCODER && CONTROL_LOOP == OPEN_LOOP))
__STATIC_INLINE tMCAPP_STATUS_E MCCTRL_OpenLoopControl( const int16_t rotationSign );
static void MCCTRL_InitializeOpenLoopControl( void );
static void MCCTRL_ResetOpenLoopControl( void );
#endif

__STATIC_INLINE void  MCCTRL_LoopSynchronization(void);
static void MCCTRL_InitiaizeInfrastructure( void );

   

#if (ENABLED == FIELD_WEAKENING )
static void MCCTRL_InitializeFieldWeakening( void );
__STATIC_INLINE void MCCTRL_FieldWeakening(const tMCCTRL_FW_INPUT_SIGNALS_S  * const fieldWeakeningInput,
                                   tMCCTRL_FW_OUTPUT_SIGNALS_S * const fieldWeakeningOutput );
static void MCCTRL_ResetFieldWeakening( void );
#endif

static uintptr_t dummyforMisra;
/******************************************************************************/
/*                   Global Variables                                         */
/******************************************************************************/
tMCAPP_CONTROL_PARAM_S                  gMCCTRL_CtrlParam;
#if (ENABLED == FIELD_WEAKENING )
tMCCTRL_FW_INPUT_SIGNALS_S              gMCCTRL_FieldWeakeningInput;
tMCCTRL_FW_OUTPUT_SIGNALS_S             gMCCTRL_FieldWeakeningOutput;
tMCCTRL_FW_STATE_SIGNALS_S              gMCCTRL_FieldWeakeningState;
tMCCTRL_FW_PARAM_S                      gMCCTRL_FieldWeakeningParam;
#endif
#if (POSITION_FEEDBACK == SENSORLESS_PLL || (POSITION_FEEDBACK == SENSORED_ENCODER && CONTROL_LOOP == OPEN_LOOP))
tMCCTRL_CLOSING_LOOP_STATE_SIGNALS_S    gMCCTRL_ClosingLoopState;
tMCCTRL_CLOSING_LOOP_PARAM_S            gMCCTRL_ClosingLoopParam;
tMCCTRL_OPEN_LOOP_STATE_SIGNALS_S       gMCCTRL_OpenLoopState = { 0.0f };
tMCCTRL_OPEN_LOOP_PARAM_S               gMCCTRL_OpenLoopParam = {
                                                                  OPEN_LOOP_END_SPEED_RADS_PER_SEC_ELEC_IN_LOOPTIME,
                                                                  OPEN_LOOP_RAMPSPEED_INCREASERATE,
                                                                  Q_CURRENT_REF_OPENLOOP
                                                                };
#endif

static tMCCTRL_TASK_PARAM_S gMCCTRL_TaskParameters = {
                                                  SPEED_LOOP_PWM_COUNT,
                                                  POSITION_LOOP_PWM_COUNT
                                              };

tMCCTRL_TASK_STATE_SIGNALS_S gMCCTRL_TaskStateSignals = { MCCTRL_LOOP_INACTIVE, MCCTRL_LOOP_INACTIVE };

/* Iq PI controller */
tMCLIB_PICONTROLLER_S gMCLIB_IqPIController =
{
    .kp = Q_CURRCNTR_PTERM,
    .ki = Q_CURRCNTR_ITERM,
    .kc = Q_CURRCNTR_CTERM,
    .outMax = Q_CURRCNTR_OUTMAX,
    .outMin = -Q_CURRCNTR_OUTMAX,
    .dSum = 0.0f,
    .out = 0.0f
};
/* Id PI controller */
tMCLIB_PICONTROLLER_S gMCLIB_IdPIController =
{
    .kp = D_CURRCNTR_PTERM,
    .ki = D_CURRCNTR_ITERM,
    .kc = D_CURRCNTR_CTERM,
    .outMax = D_CURRCNTR_OUTMAX,
    .outMin = -D_CURRCNTR_OUTMAX,
    .dSum = 0.0f,
    .out = 0.0f
};
/* Speed PI controller */
tMCLIB_PICONTROLLER_S gMCLIB_SpeedPIController =
{
    .kp = SPEEDCNTR_PTERM,
    .ki = SPEEDCNTR_ITERM,
    .kc = SPEEDCNTR_CTERM,
    .outMax = SPEEDCNTR_OUTMAX,
    .outMin = -SPEEDCNTR_OUTMAX,
    .dSum = 0.0f,
    .out = 0.0f
};

/*****************************************************************************/
/*                   LOCAL FUNCTIONS                                         */
/*****************************************************************************/
#if (POSITION_FEEDBACK == SENSORLESS_PLL || (POSITION_FEEDBACK == SENSORED_ENCODER && CONTROL_LOOP == OPEN_LOOP))
/*****************************************************************************/
/* Function name: MCCTRL_InitializeOpenLoopControl                            */
/* Function parameters: None                                                 */
/* Function return: None                                                     */
/* Description: Initialize open loop parameters and state                    */
/*****************************************************************************/
static void MCCTRL_InitializeOpenLoopControl( void )
{
    /* Initialize open loop parameters */
    gMCCTRL_OpenLoopParam.maxOpenLoopSpeed  = OPEN_LOOP_END_SPEED_RADS_PER_SEC_ELEC_IN_LOOPTIME;
    gMCCTRL_OpenLoopParam.openLoopSpeedRate = OPEN_LOOP_RAMPSPEED_INCREASERATE;
    gMCCTRL_OpenLoopParam.openLoopCurrent   = Q_CURRENT_REF_OPENLOOP;

    /* Initialize open loop state */
    gMCCTRL_OpenLoopState.openLoopAngle = 0.0f;
}

/*****************************************************************************/
/* Function name: MCCTRL_OpenLoopControl                                      */
/* Function parameters: rotationSign                                          */
/* Function return: status                                                     */
/* Description: Open Loop control                                            */
/*****************************************************************************/
__STATIC_INLINE tMCAPP_STATUS_E MCCTRL_OpenLoopControl( const int16_t rotationSign )
{
    tMCAPP_STATUS_E status = MCAPP_IN_PROGRESS;
    if (gMCCTRL_OpenLoopState.openLoopAngle  < gMCCTRL_OpenLoopParam.maxOpenLoopSpeed )
    {
        gMCCTRL_OpenLoopState.openLoopAngle += gMCCTRL_OpenLoopParam.openLoopSpeedRate;
    }
    else
    {
        status = MCAPP_SUCCESS;
    }

    /* Set open loop reference current */
    gMCCTRL_CtrlParam.iqRef = rotationSign * gMCCTRL_OpenLoopParam.openLoopCurrent;
    gMCCTRL_CtrlParam.idRef = 0.0f;

    gMCCTRL_CtrlParam.velRef = gMCCTRL_OpenLoopState.openLoopAngle / FAST_LOOP_TIME_SEC;
    gMCLIB_Position.angle +=  ( (float)rotationSign * gMCCTRL_OpenLoopState.openLoopAngle );
    MCLIB_WrapAngle(&gMCLIB_Position.angle);
    return status;
}

/*****************************************************************************/
/* Function name: MCCTRL_ResetOpenLoopControl                                 */
/* Function parameters: None                                                 */
/* Function return: None                                                     */
/* Description: Reset open loop parameters and state                         */
/*****************************************************************************/
static void MCCTRL_ResetOpenLoopControl( void )
{
    /* Reset open loop state */
    gMCCTRL_OpenLoopState.openLoopAngle = 0.0f;
}
#endif

#if(ENABLED == FIELD_WEAKENING )
/*****************************************************************************/
/* Function name: MCCTRL_InitializeFieldWeakening                             */
/* Function parameters: None                                                 */
/* Function return: None                                                     */
/* Description: Initialize field weakening parameters and state              */
/*****************************************************************************/
static void MCCTRL_InitializeFieldWeakening( void )
{
         /* Initialize field weakening state variables and parameters */
    gMCCTRL_FieldWeakeningParam.wbase           =     RATED_SPEED_RAD_PER_SEC_ELEC;
    gMCCTRL_FieldWeakeningParam.umaxSqr         =     MAX_STATOR_VOLT_SQUARE;
    gMCCTRL_FieldWeakeningParam. esFiltCoeff    =     KFILTER_ESDQ;
    gMCCTRL_FieldWeakeningParam.ls              =     MOTOR_PER_PHASE_INDUCTANCE ;
    gMCCTRL_FieldWeakeningParam.rs              =     MOTOR_PER_PHASE_RESISTANCE ;
    gMCCTRL_FieldWeakeningParam.fs              =     PWM_FREQUENCY;
    gMCCTRL_FieldWeakeningParam.idmax           =     MAX_FW_NEGATIVE_ID_REF;

    /* Reset the state variables of field weakening */
    gMCCTRL_FieldWeakeningState.uQrefFilt       =     0.0f;
    gMCCTRL_FieldWeakeningState.iQrefFilt       =     0.0f;
    gMCCTRL_FieldWeakeningState.iQrefLast       =     0.0f;

}


/******************************************************************************/
/* Function name: MCCTRL_FieldWeakening                                       */
/* Function parameters:  tMCCTRL_FW_INPUT_SIGNALS_S input                     */
/*                       tMCCTRL_FW_OUTPUT_SIGNALS_S output                   */
/* Function return: None                                                      */
/* Description: Field weakening                                               */
/******************************************************************************/
__STATIC_INLINE void MCCTRL_FieldWeakening( const tMCCTRL_FW_INPUT_SIGNALS_S * const fieldWeakeningInput,
                                   tMCCTRL_FW_OUTPUT_SIGNALS_S * const fieldWeakeningOutput )
{
    float UqRef, UdSquare,OmegaLs, idref;

    UdSquare = fieldWeakeningInput->ud * fieldWeakeningInput->ud;

    if( fieldWeakeningInput->ws > gMCCTRL_FieldWeakeningParam.wbase )
    {
        if(UdSquare >= gMCCTRL_FieldWeakeningParam.umaxSqr)
        {
            UdSquare = gMCCTRL_FieldWeakeningParam.umaxSqr;
        }

        UqRef = sqrtf((float)(  gMCCTRL_FieldWeakeningParam.umaxSqr - UdSquare));

        gMCCTRL_FieldWeakeningState.uQrefFilt =     gMCCTRL_FieldWeakeningState.uQrefFilt
                                        + ( ( UqRef - gMCCTRL_FieldWeakeningState.uQrefFilt) *  gMCCTRL_FieldWeakeningParam.esFiltCoeff );

        OmegaLs = ( fieldWeakeningInput->ws *  gMCCTRL_FieldWeakeningParam.ls);

        /* Id reference for feed forward control */
        idref = (( gMCCTRL_FieldWeakeningState.uQrefFilt * fieldWeakeningInput->umax )
              - (  gMCCTRL_FieldWeakeningParam.rs * fieldWeakeningInput->iqref )
              - (  gMCCTRL_FieldWeakeningParam.ls * (( fieldWeakeningInput->iqref - gMCCTRL_FieldWeakeningState.iQrefLast) *  gMCCTRL_FieldWeakeningParam.fs) )
              - ( fieldWeakeningInput->esFilt )) / OmegaLs;

        gMCCTRL_FieldWeakeningState.iQrefLast = fieldWeakeningInput->iqref;

        /* d-axis current saturation  */
        if(idref > 0)
        {
            fieldWeakeningOutput->idref = 0;
        }
        else if( idref <  gMCCTRL_FieldWeakeningParam.idmax)
        {
            fieldWeakeningOutput->idref =  gMCCTRL_FieldWeakeningParam.idmax;
        }
        else
        {
            fieldWeakeningOutput->idref = idref;
        }
    }
    else
    {
        /* Field weakening is disabled below rated speed. */
        fieldWeakeningOutput->idref = 0;
    }
}

/*****************************************************************************/
/* Function name: MCCTRL_ResetFieldWeakening                                 */
/* Function parameters: None                                                 */
/* Function return: None                                                     */
/* Description: Reset field weakening state                                  */
/*****************************************************************************/
static void MCCTRL_ResetFieldWeakening( void )
{
    /* Reset the state variables of field weakening */
    gMCCTRL_FieldWeakeningState.uQrefFilt     =       0.0f;
    gMCCTRL_FieldWeakeningState.iQrefFilt     =       0.0f;
    gMCCTRL_FieldWeakeningState.iQrefLast     =       0.0f;

}
#endif

/******************************************************************************/
/* Function name: MCCTRL_InitiaizeInfrastructure                               */
/* Function parameters: None                                                  */
/* Function return: None                                                      */
/* Description: Initialize slow loop variables                                */
/******************************************************************************/
static void MCCTRL_InitiaizeInfrastructure( void )
{
   /* Initialize  infrastructure state variables */
   gMCCTRL_TaskStateSignals.positionLoopActive = MCCTRL_LOOP_INACTIVE;
   gMCCTRL_TaskStateSignals.speedLoopActive = MCCTRL_LOOP_INACTIVE;

   /* Initialize infrastructure parameters */
   gMCCTRL_TaskParameters.positionLoopCount = POSITION_LOOP_PWM_COUNT;
   gMCCTRL_TaskParameters.speedLoopCount = SPEED_LOOP_PWM_COUNT;
}

/******************************************************************************/
/* Function name: MCCTRL_SignalTransformation                               */
/* Function parameters: None                                                  */
/* Function return: None                                                      */
/* Description: Clarke and Park transform                                     */
/******************************************************************************/
__STATIC_INLINE void MCCTRL_SignalTransformation(void )
{
    /* Clarke transform */
    MCLIB_ClarkeTransform(&gMCCUR_OutputSignals.phaseCurrents, &gMCLIB_CurrentAlphaBeta);

    /* Park transform */
    MCLIB_ParkTransform(&gMCLIB_CurrentAlphaBeta, &gMCLIB_Position, &gMCLIB_CurrentDQ);
}

/*******************************************************************************/
/* Function name: MCCTRL_IqrefCalculation                                       */
/* Function parameters: None                                                   */
/* Function return: None                                                       */
/* Description: Q-axis reference current calculation in close loop             */
/*                       control                                               */
/*******************************************************************************/
__STATIC_INLINE float MCCTRL_IqrefCalculation( void )
{
    float iqRef = 0.0f;
  #if( CONTROL_LOOP == SPEED_LOOP )

    /* Quadrature axis reference current limitation */
    if( gMCLIB_IdPIController.inRef < MAX_MOTOR_CURRENT )
    {
        gMCLIB_SpeedPIController.outMax = sqrtf((float)(MAX_CURRENT_SQUARED - (float)( gMCLIB_IdPIController.inRef * gMCLIB_IdPIController.inRef )));
        gMCLIB_SpeedPIController.outMin = -gMCLIB_SpeedPIController.outMax;
    }
    else
    {
        gMCLIB_SpeedPIController.outMax = 0.0f;
        gMCLIB_SpeedPIController.outMin = 0.0f;
    }

    /* Execute the velocity control loop */
    gMCLIB_SpeedPIController.inMeas = gMCRPOS_OutputSignals.speed;
    gMCLIB_SpeedPIController.inRef  = ( (float)gMCCTRL_CtrlParam.rotationSign * gMCSPE_OutputSignals.commandSpeed );
    MCLIB_PIControl(&gMCLIB_SpeedPIController);
    iqRef = gMCLIB_SpeedPIController.out;


  #elif ( CONTROL_LOOP == TORQUE_LOOP )
  #if POTENTIOMETER_INPUT_ENABLED == ENABLED
    iqRef = gMCCTRL_CtrlParam.iqPotInput * POT_ADC_COUNT_FW_TORQUE_RATIO;
    if (iqRef < Q_CURRENT_MIN_TORQUE)
    {
        iqRef = Q_CURRENT_MIN_TORQUE;
    } 
    iqRef = gMCCTRL_CtrlParam.rotationSign * iqRef;
    
  #else
    iqRef = gMCCTRL_CtrlParam.rotationSign *  gMCCTRL_CtrlParam.iqUserInput;
  #endif
  #endif
    return ( iqRef);
}

/******************************************************************************/
/* Function name: MCCTRL_IdrefCalculation                                      */
/* Function parameters: None                                                  */
/* Function return: None                                                      */
/* Description: D-axis reference current calculation in close loop            */
/*                        control                                             */
/******************************************************************************/
__STATIC_INLINE float MCCTRL_IdrefCalculation( void )
{
    static float idRef;
#if(FIELD_WEAKENING == ENABLED)
    float VqRefSquare;

    /* Dynamic d-q adjustment with d component priority */
    VqRefSquare = MAX_STATOR_VOLT_SQUARE - gMCLIB_IdPIController.out * gMCLIB_IdPIController.out;

    gMCLIB_IqPIController.outMax = sqrtf((float)(VqRefSquare));

    /* Read inputs for field weakening  */
    gMCCTRL_FieldWeakeningInput.yd = gMCLIB_IdPIController.out;
    gMCCTRL_FieldWeakeningInput.ws = gMCSPE_OutputSignals.commandSpeed;
    gMCCTRL_FieldWeakeningInput.iqref =  ( gMCCTRL_CtrlParam.iqRef >= 0.0f )? (gMCCTRL_CtrlParam.iqRef):(-gMCCTRL_CtrlParam.iqRef);
    gMCCTRL_FieldWeakeningInput.ud =  gMCLIB_VoltageDQ.directAxis;
    gMCCTRL_FieldWeakeningInput.umax = gMCVOL_OutputSignals.umax;
    gMCCTRL_FieldWeakeningInput.esFilt = MOTOR_BEMF_CONST_V_PEAK_PHASE_RAD_PER_SEC_ELEC * gMCSPE_OutputSignals.commandSpeed;

    MCCTRL_FieldWeakening(&gMCCTRL_FieldWeakeningInput, &gMCCTRL_FieldWeakeningOutput);

    /* Write field weakening output */
    idRef = idRef + KFILTER_POT * ( gMCCTRL_FieldWeakeningOutput.idref -  idRef);

#else
    idRef = 0.0f;
#endif

    return idRef;
}

/******************************************************************************/
/* Function name: MCCTRL_PotentiometerRead                                    */
/* Function parameters: None                                                  */
/* Function return: None                                                      */
/* Description: Motor Control potentiometer read for torque mode              */
/******************************************************************************/
__STATIC_INLINE void MCCTRL_PotentiometerRead (void)
{
    gMCCTRL_CtrlParam.iqPotInput = (float)((uint16_t)(MCHAL_ADCPotResultGet(MCHAL_ADC_POT) >> MCHAL_ADC_RESULT_SHIFT));
}

/******************************************************************************/
/* Function name: MCCTRL_StateMachine                                          */
/* Function parameters: None                                                  */
/* Function return: None                                                      */
/* Description: Motor Control state machine                                   */
/******************************************************************************/
__STATIC_INLINE void MCCTRL_StateMachine( void )
{
    switch(gMCCTRL_CtrlParam.mcState)
    {
        case MCAPP_IDLE:
        {
            /* Do not do anything */
            gMCRPOS_RotorAlignOutput.iqRef = 0.0f;

        }
        break;
        
        
        case MCAPP_FIELD_ALIGNMENT:
        {
            /* Read inputs for initial rotor position detection */
            if( MCAPP_SUCCESS == MCRPOS_InitialRotorPositonDetection(&gMCRPOS_RotorAlignOutput))
            {
                gMCCTRL_CtrlParam.mcStateLast = gMCCTRL_CtrlParam.mcState;
                #if (CONTROL_LOOP == OPEN_LOOP)
                gMCCTRL_CtrlParam.mcState = MCAPP_OPEN_LOOP;
                #else
                gMCCTRL_CtrlParam.mcState = MCAPP_CLOSED_LOOP;
                #endif
            }
            gMCCTRL_CtrlParam.iqRef =  (float)gMCCTRL_CtrlParam.rotationSign * gMCRPOS_RotorAlignOutput.iqRef;
            gMCCTRL_CtrlParam.idRef =  gMCRPOS_RotorAlignOutput.idRef;
            gMCLIB_Position.angle =  (float)gMCCTRL_CtrlParam.rotationSign *  gMCRPOS_RotorAlignOutput.angle;
        }
        break;

#if (POSITION_FEEDBACK == SENSORLESS_PLL || (POSITION_FEEDBACK == SENSORED_ENCODER && CONTROL_LOOP == OPEN_LOOP))
        case MCAPP_OPEN_LOOP:
        {
            if( MCAPP_SUCCESS == MCCTRL_OpenLoopControl( gMCCTRL_CtrlParam.rotationSign))
            {
                gMCLIB_SpeedPIController.dSum = gMCCTRL_CtrlParam.iqRef;
                gMCCTRL_CtrlParam.mcState = MCAPP_CLOSING_LOOP;
            }
        }
        break;

        case MCAPP_CLOSING_LOOP:
        {
            {
                if( gMCCTRL_ClosingLoopState.stabilizationCounter < CLOSING_LOOP_TIME_COUNTS )
                {
                    gMCCTRL_ClosingLoopState.stabilizationCounter++;
                }
                else
                {
                    /* switch to close loop */
                  #if(CONTROL_LOOP != OPEN_LOOP)
                    gMCCTRL_CtrlParam.mcState = MCAPP_CLOSED_LOOP;
                    gMCCTRL_ClosingLoopState.stabilizationCounter = 0;
                  #endif
                }
            }
            /* the angle set depends on startup ramp */
            gMCLIB_Position.angle += ( (float)gMCCTRL_CtrlParam.rotationSign * gMCCTRL_CtrlParam.velRef  * FAST_LOOP_TIME_SEC );
            MCLIB_WrapAngle( &gMCLIB_Position.angle);
        }
        break;
#endif
        case MCAPP_CLOSED_LOOP:
        {
            /* Switched to closed by slowly decreasing the offset which is present in the estimated angle during open loop */
            gMCLIB_Position.angle = gMCRPOS_OutputSignals.angle;


            /* d- axis reference current calculation */
            gMCCTRL_CtrlParam.idRef = MCCTRL_IdrefCalculation();

            /* q- axis reference current calculation */
            gMCCTRL_CtrlParam.iqRef = MCCTRL_IqrefCalculation();
        }
        break;
        default:
        {
            /* Undefined state: Should never come here */
        }
        break;
    }

}

/*******************************************************************************/
/* Function name: MCCTRL_CurrentControl                                        */
/* Function parameters: None                                                   */
/* Function return: None                                                       */
/* Description: PI control for Id and Iq                                       */
/*******************************************************************************/
__STATIC_INLINE void MCCTRL_CurrentControl( void )
{
    /* PI control for Iq torque control loop */
    gMCLIB_IqPIController.inMeas = gMCLIB_CurrentDQ.quadratureAxis;
    gMCLIB_IqPIController.inRef  = gMCCTRL_CtrlParam.iqRef;
    MCLIB_PIControl(&gMCLIB_IqPIController);
    gMCLIB_VoltageDQ.quadratureAxis = gMCLIB_IqPIController.out;

    /* PI control for Id flux control loop */
    gMCLIB_IdPIController.inMeas = gMCLIB_CurrentDQ.directAxis;
    gMCLIB_IdPIController.inRef  = gMCCTRL_CtrlParam.idRef;
    MCLIB_PIControl(&gMCLIB_IdPIController);
    gMCLIB_VoltageDQ.directAxis = gMCLIB_IdPIController.out;
}

/******************************************************************************/
/* Function name: MCCTRL_MotorControl                                         *
 * Function parameters: None                                                  *
 * Function return: None                                                      *
 * Description: ADC end of conversion interrupt is used for executing fast    *
 *              control loop.It estimates speed and rotor angle based upon    *
 *              the phase current measurements and updates duty.              *
 ******************************************************************************/
__STATIC_INLINE void MCCTRL_MotorControl( void )
{
    /* Control state machine */
    MCCTRL_StateMachine();

    /* Direct and Quadrature axis current control */
    MCCTRL_CurrentControl();

    /* Calculate qSin,qCos from qAngle  */
    MCLIB_SinCosCalc(gMCLIB_Position.angle, &gMCLIB_Position.sineAngle, &gMCLIB_Position.cosAngle );

    /* Calculate qValpha, qVbeta from qSin,qCos,qVd,qVq */
    MCLIB_InvParkTransform(&gMCLIB_VoltageDQ, &gMCLIB_Position, &gMCLIB_VoltageAlphaBeta);

    /* PWM modulation */
    MCPWM_PWMModulator();

    /* X2C scope update */
    MCHAL_X2C_Update();

}

/*******************************************************************************/
/* Function name: MCCTRL_LoopSynchronization                                    */
/* Function parameters: None                                                   */
/* Function return: Bool( True - executes slow control loop )                  */
/* Description: To be used in a state machine to decide whether                */
/* to execute slow control loop                                                */
/*******************************************************************************/
__STATIC_INLINE void  MCCTRL_LoopSynchronization(void)
{
    static uint32_t speedLoopCounter = 0U;
    static uint32_t positionLoopCounter = 0U;
    speedLoopCounter++;
    positionLoopCounter++;
    if( gMCCTRL_TaskParameters.speedLoopCount <= speedLoopCounter)
    {
        speedLoopCounter = 0U;
        gMCCTRL_TaskStateSignals.speedLoopActive = MCCTRL_LOOP_ACTIVE;
    }

    if( gMCCTRL_TaskParameters.positionLoopCount <= positionLoopCounter )
    {
        positionLoopCounter = 0U;
        gMCCTRL_TaskStateSignals.positionLoopActive = MCCTRL_LOOP_ACTIVE;
    }
}


/******************************************************************************/
/*                        INTERFACE FUNCTIONS                                 */
/******************************************************************************/

/******************************************************************************/
/* Function name: MCCTRL_InitializeMotorControl                                */
/* Function parameters: None                                                  */
/* Function return: None                                                      */
/* Description: Initialize control loop variables.                            */
/******************************************************************************/
 void MCCTRL_InitializeMotorControl(void)
{
    MCCTRL_InitiaizeInfrastructure();
#if (POSITION_FEEDBACK == SENSORLESS_PLL || (POSITION_FEEDBACK == SENSORED_ENCODER && CONTROL_LOOP == OPEN_LOOP))    
    /* Initialize open loop control */
    MCCTRL_InitializeOpenLoopControl();
#endif
#if (ENABLED == FIELD_WEAKENING )
    MCCTRL_InitializeFieldWeakening();
#endif

    gMCPWM_SVPWM.period = (float)((uint32_t)MCHAL_PWMPrimaryPeriodGet(MCHAL_PWM_PH_U));
    gMCPWM_SVPWM.neutralPWM = (uint32_t)((float)(0.5f * gMCPWM_SVPWM.period ));
    gMCPWM_SVPWM.enableSVPWM = true;
}


void MCCTRL_CurrentOffsetCalibration( uint32_t status, uintptr_t context )
{
    /* Current sense amplifiers offset calculation */
    if(gMCCUR_OutputSignals.calibDone == 0U)
    {
        MCCUR_OffsetCalibration();
    }
    else
    {
        MCHAL_ADCCallbackRegister( MCHAL_ADC_PH_U, MCCTRL_CurrentLoopTasks, (uintptr_t)dummyforMisra );
    }
}

 /******************************************************************************/
/* Function name: MCINF_CurrentLoopTasks                                      */
/* Function parameters: None                                                  */
/* Function return: None                                                      */
/* Description: Current loop tasks executed in the ADC ISR                    */
/******************************************************************************/
void MCCTRL_CurrentLoopTasks( uint32_t status, uintptr_t context )
{
    /* Current Measurement */
    MCCUR_CurrentMeasurement( );


    /* Clarke, Park transform */
    MCCTRL_SignalTransformation();

    /* Rotor position estimation */
    MCRPOS_PositionMeasurement( );

    /* Motor control */
    MCCTRL_MotorControl( );

    /* Voltage measurement */
    MCVOL_VoltageMeasurement( );     
#if (POTENTIOMETER_INPUT_ENABLED == ENABLED && CONTROL_LOOP == SPEED_LOOP)    
    /* Read potentiometer value */
    MCSPE_PotentiometerRead();
#endif    
#if (POTENTIOMETER_INPUT_ENABLED == ENABLED && CONTROL_LOOP == TORQUE_LOOP)    
    /* Read potentiometer value */
    MCCTRL_PotentiometerRead();
#endif

     /* sync count for slow control loop execution */
    MCCTRL_LoopSynchronization();

}

/******************************************************************************/
/* Function name: MCCTRL_ResetMotorControl                                    */
/* Function parameters: None                                                  */
/* Function return: None                                                      */
/* Description: Reset control loop variables.                            */
/******************************************************************************/
 void MCCTRL_ResetMotorControl(void)
{
    /* Parameter initialization for FOC */
    MCLIB_ResetPIParameters(&gMCLIB_IqPIController);
    MCLIB_ResetPIParameters(&gMCLIB_IdPIController);
    MCLIB_ResetPIParameters(&gMCLIB_SpeedPIController);
    gMCCTRL_CtrlParam.idRef = 0.0f;
    gMCCTRL_CtrlParam.iqRef = 0.0f;
    gMCRPOS_OutputSignals.speed = 0.0f;
    gMCRPOS_OutputSignals.angle = 0.0f;
#if (CONTROL_LOOP == SPEED_LOOP)    
    gMCSPE_OutputSignals.commandSpeed = 0.0f;
#endif    
    gMCCTRL_CtrlParam.velRef = 0.0f;


#if (POSITION_FEEDBACK == SENSORLESS_PLL || (POSITION_FEEDBACK == SENSORED_ENCODER && CONTROL_LOOP == OPEN_LOOP))
    /* Reset open loop control */
    MCCTRL_ResetOpenLoopControl();
#endif
#if (ENABLED == FIELD_WEAKENING )
    MCCTRL_ResetFieldWeakening();
#endif

    gMCPWM_SVPWM.period = (float)((uint32_t)MCHAL_PWMPrimaryPeriodGet(MCHAL_PWM_PH_U));
    gMCPWM_SVPWM.neutralPWM = (uint32_t)((float)(0.5f * gMCPWM_SVPWM.period ));
}



/*******************************************************************************
 End of File
*/
