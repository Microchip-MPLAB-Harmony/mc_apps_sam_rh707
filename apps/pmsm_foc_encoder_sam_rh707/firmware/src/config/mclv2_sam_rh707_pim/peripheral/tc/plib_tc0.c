/*******************************************************************************
  TC Peripheral Library Interface Source File

  Company
    Microchip Technology Inc.

  File Name
    plib_tc0.c

  Summary
    TC peripheral library source file.

  Description
    This file implements the interface to the TC peripheral library.  This
    library provides access to and control of the associated peripheral
    instance.

*******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
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

/*  This section lists the other files that are included in this file.
*/
#include "device.h"
#include "plib_tc0.h"
#include "interrupts.h"


/* Initialize channel in quadrature mode */
void TC0_QuadratureInitialize (void)
{
    /* clock selection and waveform selection */
    TC0_REGS->TC_CHANNEL[0].TC_CMR = TC_CMR_TCCLKS_XC0 | TC_CMR_CAPTURE_LDRA_RISING;
    TC0_REGS->TC_CHANNEL[0].TC_RC = 0xFFFF;

    /*Enable quadrature mode */
    TC0_REGS->TC_BMR = TC_BMR_QDEN_Msk  | TC_BMR_MAXFILT(2U) | TC_BMR_EDGPHA_Msk
        | (TC_BMR_POSEN_Msk);

    /* Clear interrupt status */
    (void)TC0_REGS->TC_QISR;
}

void TC0_QuadratureStart (void)
{
    TC0_REGS->TC_CHANNEL[0].TC_CCR = (TC_CCR_CLKEN_Msk | TC_CCR_SWTRG_Msk);
}

void TC0_QuadratureStop (void)
{
    TC0_REGS->TC_CHANNEL[0].TC_CCR = (TC_CCR_CLKDIS_Msk);
}

TC_QUADRATURE_STATUS TC0_QuadratureStatusGet(void)
{
    return (TC_QUADRATURE_STATUS)(TC0_REGS->TC_QISR & (uint32_t)TC_QUADRATURE_STATUS_MSK);
}
 
 

 

 
 

 

 
/**
 End of File
*/
