/*******************************************************************************
  Motor Control Generic Library Source File

  Company:
    Microchip Technology Inc.

  File Name:
    mc_generic_lib.c

  Summary:
    This file contains the motor control algorithm functions.

  Description:
    This file contains the motor control algorithm common functions like sin cosine calculation.
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
 Header Inclusions  
 *******************************************************************************/
#include "mc_generic_library.h"
#include "mc_current_control.h"
#include "math.h"

/*******************************************************************************
 * Constants
 *******************************************************************************/

static const float sineTable[TABLE_SIZE] = 
// <editor-fold defaultstate="collapsed" desc="Sine Table">
{
0.0f,
0.024541f,
0.049068f,
0.073565f,
0.098017f,
0.122411f,
0.14673f,
0.170962f,
0.19509f,
0.219101f,
0.24298f,
0.266713f,
0.290285f,
0.313682f,
0.33689f,
0.359895f,
0.382683f,
0.405241f,
0.427555f,
0.449611f,
0.471397f,
0.492898f,
0.514103f,
0.534998f,
0.55557f,
0.575808f,
0.595699f,
0.615232f,
0.634393f,
0.653173f,
0.671559f,
0.689541f,
0.707107f,
0.724247f,
0.740951f,
0.757209f,
0.77301f,
0.788346f,
0.803208f,
0.817585f,
0.83147f,
0.844854f,
0.857729f,
0.870087f,
0.881921f,
0.893224f,
0.903989f,
0.91421f,
0.92388f,
0.932993f,
0.941544f,
0.949528f,
0.95694f,
0.963776f,
0.970031f,
0.975702f,
0.980785f,
0.985278f,
0.989177f,
0.99248f,
0.995185f,
0.99729f,
0.998795f,
0.999699f,
1.0f,
0.999699f,
0.998795f,
0.99729f,
0.995185f,
0.99248f,
0.989177f,
0.985278f,
0.980785f,
0.975702f,
0.970031f,
0.963776f,
0.95694f,
0.949528f,
0.941544f,
0.932993f,
0.92388f,
0.91421f,
0.903989f,
0.893224f,
0.881921f,
0.870087f,
0.857729f,
0.844854f,
0.83147f,
0.817585f,
0.803208f,
0.788346f,
0.77301f,
0.757209f,
0.740951f,
0.724247f,
0.707107f,
0.689541f,
0.671559f,
0.653173f,
0.634393f,
0.615232f,
0.595699f,
0.575808f,
0.55557f,
0.534998f,
0.514103f,
0.492898f,
0.471397f,
0.449611f,
0.427555f,
0.405241f,
0.382683f,
0.359895f,
0.33689f,
0.313682f,
0.290285f,
0.266713f,
0.24298f,
0.219101f,
0.19509f,
0.170962f,
0.14673f,
0.122411f,
0.098017f,
0.073565f,
0.049068f,
0.024541f,
0.0f,
-0.024541f,
-0.049068f,
-0.073565f,
-0.098017f,
-0.122411f,
-0.14673f,
-0.170962f,
-0.19509f,
-0.219101f,
-0.24298f,
-0.266713f,
-0.290285f,
-0.313682f,
-0.33689f,
-0.359895f,
-0.382683f,
-0.405241f,
-0.427555f,
-0.449611f,
-0.471397f,
-0.492898f,
-0.514103f,
-0.534998f,
-0.55557f,
-0.575808f,
-0.595699f,
-0.615232f,
-0.634393f,
-0.653173f,
-0.671559f,
-0.689541f,
-0.707107f,
-0.724247f,
-0.740951f,
-0.757209f,
-0.77301f,
-0.788346f,
-0.803208f,
-0.817585f,
-0.83147f,
-0.844854f,
-0.857729f,
-0.870087f,
-0.881921f,
-0.893224f,
-0.903989f,
-0.91421f,
-0.92388f,
-0.932993f,
-0.941544f,
-0.949528f,
-0.95694f,
-0.963776f,
-0.970031f,
-0.975702f,
-0.980785f,
-0.985278f,
-0.989177f,
-0.99248f,
-0.995185f,
-0.99729f,
-0.998795f,
-0.999699f,
-1.0f,
-0.999699f,
-0.998795f,
-0.99729f,
-0.995185f,
-0.99248f,
-0.989177f,
-0.985278f,
-0.980785f,
-0.975702f,
-0.970031f,
-0.963776f,
-0.95694f,
-0.949528f,
-0.941544f,
-0.932993f,
-0.92388f,
-0.91421f,
-0.903989f,
-0.893224f,
-0.881921f,
-0.870087f,
-0.857729f,
-0.844854f,
-0.83147f,
-0.817585f,
-0.803208f,
-0.788346f,
-0.77301f,
-0.757209f,
-0.740951f,
-0.724247f,
-0.707107f,
-0.689541f,
-0.671559f,
-0.653173f,
-0.634393f,
-0.615232f,
-0.595699f,
-0.575808f,
-0.55557f,
-0.534998f,
-0.514103f,
-0.492898f,
-0.471397f,
-0.449611f,
-0.427555f,
-0.405241f,
-0.382683f,
-0.359895f,
-0.33689f,
-0.313682f,
-0.290285f,
-0.266713f,
-0.24298f,
-0.219101f,
-0.19509f,
-0.170962f,
-0.14673f,
-0.122411f,
-0.098017f,
-0.073565f,
-0.049068f,
-0.024541f
};
// </editor-fold>

/******************************************************************************/
/*                   COS Table  -  0.0244rad resolution                                     */
/******************************************************************************/

static const float cosineTable[TABLE_SIZE] = 
// <editor-fold defaultstate="collapsed" desc="Cosine Table">
{
1.0f,
0.999699f,
0.998795f,
0.99729f,
0.995185f,
0.99248f,
0.989177f,
0.985278f,
0.980785f,
0.975702f,
0.970031f,
0.963776f,
0.95694f,
0.949528f,
0.941544f,
0.932993f,
0.92388f,
0.91421f,
0.903989f,
0.893224f,
0.881921f,
0.870087f,
0.857729f,
0.844854f,
0.83147f,
0.817585f,
0.803208f,
0.788346f,
0.77301f,
0.757209f,
0.740951f,
0.724247f,
0.707107f,
0.689541f,
0.671559f,
0.653173f,
0.634393f,
0.615232f,
0.595699f,
0.575808f,
0.55557f,
0.534998f,
0.514103f,
0.492898f,
0.471397f,
0.449611f,
0.427555f,
0.405241f,
0.382683f,
0.359895f,
0.33689f,
0.313682f,
0.290285f,
0.266713f,
0.24298f,
0.219101f,
0.19509f,
0.170962f,
0.14673f,
0.122411f,
0.098017f,
0.073565f,
0.049068f,
0.024541f,
0.0f,
-0.024541f,
-0.049068f,
-0.073565f,
-0.098017f,
-0.122411f,
-0.14673f,
-0.170962f,
-0.19509f,
-0.219101f,
-0.24298f,
-0.266713f,
-0.290285f,
-0.313682f,
-0.33689f,
-0.359895f,
-0.382683f,
-0.405241f,
-0.427555f,
-0.449611f,
-0.471397f,
-0.492898f,
-0.514103f,
-0.534998f,
-0.55557f,
-0.575808f,
-0.595699f,
-0.615232f,
-0.634393f,
-0.653173f,
-0.671559f,
-0.689541f,
-0.707107f,
-0.724247f,
-0.740951f,
-0.757209f,
-0.77301f,
-0.788346f,
-0.803208f,
-0.817585f,
-0.83147f,
-0.844854f,
-0.857729f,
-0.870087f,
-0.881921f,
-0.893224f,
-0.903989f,
-0.91421f,
-0.92388f,
-0.932993f,
-0.941544f,
-0.949528f,
-0.95694f,
-0.963776f,
-0.970031f,
-0.975702f,
-0.980785f,
-0.985278f,
-0.989177f,
-0.99248f,
-0.995185f,
-0.99729f,
-0.998795f,
-0.999699f,
-1.0f,
-0.999699f,
-0.998795f,
-0.99729f,
-0.995185f,
-0.99248f,
-0.989177f,
-0.985278f,
-0.980785f,
-0.975702f,
-0.970031f,
-0.963776f,
-0.95694f,
-0.949528f,
-0.941544f,
-0.932993f,
-0.92388f,
-0.91421f,
-0.903989f,
-0.893224f,
-0.881921f,
-0.870087f,
-0.857729f,
-0.844854f,
-0.83147f,
-0.817585f,
-0.803208f,
-0.788346f,
-0.77301f,
-0.757209f,
-0.740951f,
-0.724247f,
-0.707107f,
-0.689541f,
-0.671559f,
-0.653173f,
-0.634393f,
-0.615232f,
-0.595699f,
-0.575808f,
-0.55557f,
-0.534998f,
-0.514103f,
-0.492898f,
-0.471397f,
-0.449611f,
-0.427555f,
-0.405241f,
-0.382683f,
-0.359895f,
-0.33689f,
-0.313682f,
-0.290285f,
-0.266713f,
-0.24298f,
-0.219101f,
-0.19509f,
-0.170962f,
-0.14673f,
-0.122411f,
-0.098017f,
-0.073565f,
-0.049068f,
-0.024541f,
0.0f,
0.024541f,
0.049068f,
0.073565f,
0.098017f,
0.122411f,
0.14673f,
0.170962f,
0.19509f,
0.219101f,
0.24298f,
0.266713f,
0.290285f,
0.313682f,
0.33689f,
0.359895f,
0.382683f,
0.405241f,
0.427555f,
0.449611f,
0.471397f,
0.492898f,
0.514103f,
0.534998f,
0.55557f,
0.575808f,
0.595699f,
0.615232f,
0.634393f,
0.653173f,
0.671559f,
0.689541f,
0.707107f,
0.724247f,
0.740951f,
0.757209f,
0.77301f,
0.788346f,
0.803208f,
0.817585f,
0.83147f,
0.844854f,
0.857729f,
0.870087f,
0.881921f,
0.893224f,
0.903989f,
0.91421f,
0.92388f,
0.932993f,
0.941544f,
0.949528f,
0.95694f,
0.963776f,
0.970031f,
0.975702f,
0.980785f,
0.985278f,
0.989177f,
0.99248f,
0.995185f,
0.99729f,
0.998795f,
0.999699f
};
// </editor-fold>

/*******************************************************************************
 Interface Constants 
 *******************************************************************************/

/*! \brief Sine and Cosine calculation 
 * 
 * Details.
 *  Sine and Cosine calculation 
 * 
 * @param[in]: 
 * @param[in/out]:
 * @param[out]:
 * @return:
 */
void mcLib_SinCosCalc( float const rotor_angle, float* sineAngle, float* cosAngle )
{
    float angle = rotor_angle;
    /*
       Since we are using "float", it is not possible to get an index of array
       directly. Almost every time, we will need to do interpolation, as per
       following equation: -
       y = y0 + (y1 - y0)*((x - x0)/(x1 - x0)) */

    uint32_t y0_Index;
    uint32_t y0_IndexNext;
    float x0, y0, y1, temp;

    // Software check to ensure  0 <= Angle < 2*PI
    if( angle <  0.0f )
    {
        angle = angle + TOTAL_SINE_TABLE_ANGLE;
    }

    if( angle >= TOTAL_SINE_TABLE_ANGLE  )
    {
        angle = angle - TOTAL_SINE_TABLE_ANGLE;
    }


    y0_Index = (uint32_t)((float)(angle / ANGLE_STEP));
    y0_IndexNext = y0_Index + 1U;

    if(y0_IndexNext >= TABLE_SIZE )
    {
        y0_IndexNext = 0U;
    }

    x0 = ((float)y0_Index * ANGLE_STEP);

    /* Since below calculation is same for sin & cosine, we can do it once and reuse. */
    temp = ((angle - x0) * ONE_BY_ANGLE_STEP);

    /*==============  Find Sine now  =============================================*/
    y0 = sineTable[y0_Index];
    y1 = sineTable[y0_IndexNext];
    *sineAngle = y0 + ((y1 - y0) * temp);

   /*==============  Find Cosine now  =============================================*/
    y0 = cosineTable[y0_Index];
    y1 = cosineTable[y0_IndexNext];
    *cosAngle = y0 + ((y1 - y0) * temp);

}

/*! \brief Wrap angle to  0 to 2pi
 * 
 * Details.
 * Wrap angle to 0 to 2pi
 * 
 * @param[in]: 
 * @param[in/out]:
 * @param[out]:
 * @return:
 */
void mcLib_WrapAngleTo2Pi( float * const angle )
{
    if(*angle >= SINGLE_ELEC_ROT_RADS_PER_SEC)
    {
        *angle -= SINGLE_ELEC_ROT_RADS_PER_SEC;
    }
    else if( 0.0f > *angle )
    {
        *angle += SINGLE_ELEC_ROT_RADS_PER_SEC;
    }
    else
    {
       /* Do nothing */
    }
}

/*! \brief Impose lower and upper limit
 * 
 * Details.
 * Impose lower and upper limit 
 * 
 * @param[in]: 
 * @param[in/out]:
 * @param[out]:
 * @return:
 */
void mcLib_ImposeLimits( float * const input, const float lowerLimit, const float upperLimit )
{
    if( *input > upperLimit )
    {
        *input  = upperLimit;
    }
    else if( *input < lowerLimit )
    {
        *input  = lowerLimit;
    }
    else
    {
       /* Do nothing */
    }

}

/*! \brief Calculate square root 
 * 
 * Details.
 *  Calculate square root 
 * 
 * @param[in]: 
 * @param[in/out]:
 * @param[out]:
 * @return:
 */
float  mcLib_SquareRootCalculate( float square )
{
    if (square>=0.0f){
        return (float)sqrt(square);
    }
    else{
        return (float)sqrt(-square);
    }
}

/*! \brief Clarke Transform 
 * 
 * Details.
 * Clarke Transform
 * 
 * @param[in]: 
 * @param[in/out]:
 * @param[out]:
 * @return:
 */
 void mcLib_ClarkeTransform( const tmcInf_ThreePhaseQuantity_s * const  input, 
                                                tmcLib_ClarkTransform_s * const output)
{
    output->alpha = input->a;
    output->beta = (input->a * ONE_BY_SQRT3) + (input->b * TWO_BY_SQRT3);
}

/*! \brief Park Transform 
 * 
 * Details.
 *  Park Transform 
 * 
 * @param[in]: 
 * @param[in/out]:
 * @param[out]:
 * @return:
 */
void mcLib_ParkTransform( const tmcLib_ClarkTransform_s * const input, 
                                            const float theta, tmcLib_ParkTransform_s * const output)
{
    float sine, cosine;
    
    mcLib_SinCosCalc(theta, &sine, &cosine );
    output->direct =  input->alpha * cosine  + input->beta * sine;
    output->quadrature = -input->alpha * sine  + input->beta * cosine;
}

/*! \brief Inverse park transform 
 * 
 * Details.
 *  Inverse park transform 
 * 
 * @param[in]: 
 * @param[in/out]:
 * @param[out]:
 * @return:
 */
 void mcLib_InvParkTransform( const tmcLib_ParkTransform_s * const input, 
                                                  const float theta, tmcLib_ClarkTransform_s * const output)
{
    float sine, cosine;
    
    mcLib_SinCosCalc( theta, &sine, &cosine );
    output->alpha =  input->direct * cosine - input->quadrature * sine;
    output->beta  =  input->direct * sine  + input->quadrature * cosine;
}

 /*! \brief PI controller parameter set 
 * 
 * Details.
 *  PI controller parameter set
 * 
 * @param[in]: 
 * @param[in/out]:
 * @param[out]:
 * @return:
 */ 
void mcLib_PiControllerParametersSet( tmcLib_PiController_s * piController, tmcLib_PiControllerParameter_s * piParam )
{
    /* Set PI controller parameters */
    piController->Kp = piParam->Kp;
    piController->Ki =  piParam->Ki;
    piController->Kc =  piParam->Kc;
    piController->Ymax =  piParam->Ymax;
    piController->Ymin =  piParam->Ymin;
    
    /* Set PI controller state */
    piController->Yi = 0.0f;    
}

/*! \brief PI controller run
 * 
 * Details.
 *  PI controller run
 * 
 * @param[in]: 
 * @param[in/out]:
 * @param[out]:
 * @return:
 */ 
void mcLib_PiControllerRun( tmcLib_PiController_s * piController )
{
    float err;
    float out;
    float exc;

    err  = piController->reference - piController->feedback;
    out  = piController->Yi + piController->Kp * err;

    /* Limit checking for PI output */
    if( out > piController->Ymax )
    {
       piController->Yout = piController->Ymax;
    }
    else if( out < piController->Ymin )
    {
       piController->Yout = piController->Ymin;
    }
    else
    {
       piController->Yout = out;
    }

    exc = out - piController->Yout;
    piController->Yi = piController->Yi + piController->Ki * err - piController->Kc * exc;
}

/*! \brief PI controller reset
 * 
 * Details.
 *  PI controller reset
 * 
 * @param[in]: 
 * @param[in/out]:
 * @param[out]:
 * @return:
 */
void mcLib_PiControllerReset( tmcLib_PiController_s * piController )
{
    piController->Yi = 0.0f;
}

/*******************************************************************************
 End of File
*/
