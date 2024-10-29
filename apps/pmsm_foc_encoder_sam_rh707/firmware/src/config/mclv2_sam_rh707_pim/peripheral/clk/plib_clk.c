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

#include "device.h"
#include "plib_clk.h"
#include <stdbool.h>
#include <string.h>

#define CRCCU_TIMEOUT    (0x100000U)

/* CRCCU descriptor type */
typedef struct crccu_dscr_type
{
    uint32_t ul_tr_addr;        /* TR_ADDR */
    uint32_t ul_tr_ctrl;        /* TR_CTRL */
    uint32_t ul_reserved[6];    /* Reserved register */
    uint32_t ul_tr_crc;         /* TR_CRC */
} crccu_dscr_type_t;

static crccu_dscr_type_t __attribute__((aligned(512))) crc_dscr = {0};
static uint32_t calibValue = 0U;
static bool crc_valid = false;

static bool checkGpnvmWordCrc(void)
{
    uint8_t count           = 0U;
    uint32_t ul_timeout     = 0U;
    uint32_t gpnvm_table[4] = {0};

    /* Read GPNVM bits */
    HEFC_REGS->HEFC_FCR = (HEFC_FCR_FKEY(0x5AU) | HEFC_FCR_FCMD_GGPB);
    __DSB();
    __ISB();
    while ((HEFC_REGS-> HEFC_FSR & HEFC_FSR_FRDY_Msk) != HEFC_FSR_FRDY_Msk)
    {
        /* Waiting for the HEFC Ready state */
    }
    for (count = 0U; count < 4U; count++)
    {
        gpnvm_table[count] = HEFC_REGS->HEFC_FRR;
    }

    // Check GPNVM_WORD CRC with CRCCU peripheral
    PMC_REGS->PMC_PCR = PMC_PCR_EN_Msk | PMC_PCR_CMD_Msk | PMC_PCR_PID(22U); /* Enable CRCCU peripheral clock */

    //Set up descriptors
    (void)memset((void *)&crc_dscr, 0, sizeof(crccu_dscr_type_t));
    CRCCU_REGS->CRCCU_DSCR = (uint32_t)&crc_dscr;

    crc_dscr.ul_tr_addr = (uint32_t) &gpnvm_table[1];
    /* Transfer width: word, interrupt enable, 1 word size */
    crc_dscr.ul_tr_ctrl = (2UL << 24) | 1U;

    __DSB();
    __ISB();

    // Set CRCCU mode
    CRCCU_REGS->CRCCU_MR = CRCCU_MR_ENABLE_Msk | CRCCU_MR_DIVIDER(1U) | CRCCU_MR_PTYPE_CASTAGNOLI | CRCCU_MR_BITORDER_LSBFIRST;

    /* Reset the CRCCU */
    CRCCU_REGS->CRCCU_CR = CRCCU_CR_RESET_Msk;

    /* Start the CRC calculation */
    CRCCU_REGS->CRCCU_DMA_EN = CRCCU_DMA_EN_DMAEN_Msk;

    /* Wait end of the CRC calculation */
    while ( ((CRCCU_REGS->CRCCU_DMA_SR & CRCCU_DMA_SR_DMASR_Msk) == CRCCU_DMA_SR_DMASR_Msk) && (ul_timeout < CRCCU_TIMEOUT))
    {
        ul_timeout++;
        /* Wait for CRC calculation */
    }

    if (gpnvm_table[0] == CRCCU_REGS->CRCCU_SR)
    {
        // Compute calibration value using ftrim and ttrim from GPNVM_WORD
        calibValue = (((gpnvm_table[1] & FUSES_USER_WORD_1_RC_FTRIM0_Msk) >> FUSES_USER_WORD_1_RC_FTRIM0_Pos) << 2U) |
                      ((gpnvm_table[1] & FUSES_USER_WORD_1_RC_TTRIM0_Msk) >> FUSES_USER_WORD_1_RC_TTRIM0_Pos);
        crc_valid = true;
    }
    return crc_valid;
}
static void rcTrimCalibrationSequence(void)
{
    /* Configure the RC Oscillator frequency to select 4MHz */
    PMC_REGS->CKGR_MOR = (PMC_REGS->CKGR_MOR & ~CKGR_MOR_MOSCRCF_Msk) | CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCRCF_4_MHz;

    /* Wait until the RC oscillator clock is ready */
    while( (PMC_REGS->PMC_SR & PMC_SR_MOSCRCS_Msk) != PMC_SR_MOSCRCS_Msk)
    {
        /* Wait for the RC oscillator clock is ready */
    }

    __DSB();
    __ISB();

    /* Set SEL for 8/10/12 MHz */
    PMC_REGS->PMC_OCR1 |= (PMC_OCR1_SEL8_Msk | PMC_OCR1_SEL10_Msk | PMC_OCR1_SEL12_Msk);

    /* Set Calib values for 8/10/12 MHz */
    PMC_REGS->PMC_OSC2 = (PMC_REGS->PMC_OSC2 | CKGR_MOR_KEY_PASSWD) | PMC_OSC2_EN_WR_CALIB_Msk;
    PMC_REGS->PMC_OCR1 = (PMC_REGS->PMC_OCR1 & ~(PMC_OCR1_CAL8_Msk | PMC_OCR1_CAL10_Msk | PMC_OCR1_CAL12_Msk) ) | \
                         PMC_OCR1_CAL8(calibValue) | PMC_OCR1_CAL10(calibValue) | PMC_OCR1_CAL12(calibValue);
    PMC_REGS->PMC_OSC2 = (PMC_REGS->PMC_OSC2 | CKGR_MOR_KEY_PASSWD) & (~PMC_OSC2_EN_WR_CALIB_Msk);

    __DSB();
    __ISB();

    /* Configure the RC Oscillator frequency to select 8MHz */
    PMC_REGS->CKGR_MOR = (PMC_REGS->CKGR_MOR & ~CKGR_MOR_MOSCRCF_Msk) | CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCRCF_8_MHz;

    /* Wait until the RC oscillator clock is ready */
    while( (PMC_REGS->PMC_SR & PMC_SR_MOSCRCS_Msk) != PMC_SR_MOSCRCS_Msk)
    {
        /* Wait until the RC oscillator clock is ready */
    }

    __DSB();
    __ISB();

    /* Set SEL for 4 MHz */
    PMC_REGS->PMC_OCR1 |= PMC_OCR1_SEL4_Msk;

    /* Set Calib values for 4 MHz */
    PMC_REGS->PMC_OSC2 = (PMC_REGS->PMC_OSC2 | CKGR_MOR_KEY_PASSWD) | PMC_OSC2_EN_WR_CALIB_Msk;
    PMC_REGS->PMC_OCR1 = (PMC_REGS->PMC_OCR1 & ~(PMC_OCR1_CAL4_Msk)) | PMC_OCR1_CAL4(calibValue);
    PMC_REGS->PMC_OSC2 = (PMC_REGS->PMC_OSC2 | CKGR_MOR_KEY_PASSWD) & (~PMC_OSC2_EN_WR_CALIB_Msk);

    __DSB();
    __ISB();
}
static void rc2ckTrimCalibrationSequence(void)
{
    /* Configure the RC Oscillator frequency to select 4MHz */
    PMC_REGS->PMC_OSC2 = (PMC_REGS->PMC_OSC2 & ~PMC_OSC2_OSCRCF_Msk) | PMC_OSC2_KEY_PASSWD | PMC_OSC2_OSCRCF_4_MHz;

    __DSB();
    __ISB();

    /* Set SEL for 8/10/12 MHz */
    PMC_REGS->PMC_OCR2 |= (PMC_OCR2_SEL8_Msk | PMC_OCR2_SEL10_Msk | PMC_OCR2_SEL12_Msk);

    /* Set Calib values for 8/10/12 MHz */
    PMC_REGS->PMC_OSC2 = (PMC_REGS->PMC_OSC2 | CKGR_MOR_KEY_PASSWD) | PMC_OSC2_EN_WR_CALIB_Msk;
    PMC_REGS->PMC_OCR2 = (PMC_REGS->PMC_OCR2 & ~(PMC_OCR2_CAL8_Msk | PMC_OCR2_CAL10_Msk | PMC_OCR2_CAL12_Msk) ) | \
                         PMC_OCR2_CAL8(calibValue) | PMC_OCR2_CAL10(calibValue) | PMC_OCR2_CAL12(calibValue);
    PMC_REGS->PMC_OSC2 = (PMC_REGS->PMC_OSC2 | CKGR_MOR_KEY_PASSWD) & (~PMC_OSC2_EN_WR_CALIB_Msk);

    __DSB();
    __ISB();

    /* Configure the RC Oscillator frequency to select 8MHz */
    PMC_REGS->PMC_OSC2 = (PMC_REGS->PMC_OSC2 & ~PMC_OSC2_OSCRCF_Msk) | PMC_OSC2_KEY_PASSWD | PMC_OSC2_OSCRCF_8_MHz;

    __DSB();
    __ISB();

    /* Set SEL for 4 MHz */
    PMC_REGS->PMC_OCR2 |= PMC_OCR2_SEL4_Msk;

    /* Set Calib values for 4 MHz */
    PMC_REGS->PMC_OSC2 = (PMC_REGS->PMC_OSC2 | CKGR_MOR_KEY_PASSWD) | PMC_OSC2_EN_WR_CALIB_Msk;
    PMC_REGS->PMC_OCR2 = (PMC_REGS->PMC_OCR2 & ~(PMC_OCR2_CAL4_Msk)) | PMC_OCR2_CAL4(calibValue);
    PMC_REGS->PMC_OSC2 = (PMC_REGS->PMC_OSC2 | CKGR_MOR_KEY_PASSWD) & (~PMC_OSC2_EN_WR_CALIB_Msk);
}
/*********************************************************************************
Initialize Slow Clock (SLCK)
*********************************************************************************/
static void CLK_SlowClockInitialize(void)
{
    SUPC_REGS->SUPC_CR = SUPC_CR_KEY_PASSWD;

}


/*********************************************************************************
Initialize Main Clock (MAINCK)
*********************************************************************************/
static void CLK_MainClockInitialize(void)
{
    /* Enable the RC Oscillator */
    PMC_REGS->CKGR_MOR|= CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCRCEN_Msk;

    /* Wait until the RC oscillator clock is ready. */
    while( (PMC_REGS->PMC_SR & PMC_SR_MOSCRCS_Msk) != PMC_SR_MOSCRCS_Msk)
    {

    }

    if (checkGpnvmWordCrc())
    {
        rcTrimCalibrationSequence();
    }
    /* Configure the RC Oscillator frequency */
    PMC_REGS->CKGR_MOR = (PMC_REGS->CKGR_MOR & ~CKGR_MOR_MOSCRCF_Msk) | CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCRCF_10_MHz;

    /* Wait until the RC oscillator clock is ready */
    while( (PMC_REGS->PMC_SR & PMC_SR_MOSCRCS_Msk) != PMC_SR_MOSCRCS_Msk)
    {

    }

    /* Main RC Oscillator is selected as the Main Clock (MAINCK) source.
       Switch Main Clock (MAINCK) to the RC Oscillator clock */
    PMC_REGS->CKGR_MOR = (PMC_REGS->CKGR_MOR & ~CKGR_MOR_MOSCSEL_Msk) | CKGR_MOR_KEY_PASSWD;


    while ((PMC_REGS->PMC_SR & PMC_SR_MCKRDY_Msk) != PMC_SR_MCKRDY_Msk)
    {

    }
}


/*********************************************************************************
Initialize RC2 Clock (RC2CK)
*********************************************************************************/
static void CLK_RC2ClockInitialize(void)
{
    PMC_REGS->PMC_OSC2 |= PMC_OSC2_EN_Msk | PMC_OSC2_KEY_PASSWD;
    if (crc_valid)
    {
        rc2ckTrimCalibrationSequence();
    }
    PMC_REGS->PMC_OSC2 = (PMC_REGS->PMC_OSC2 & ~PMC_OSC2_OSCRCF_Msk) | PMC_OSC2_OSCRCF_10_MHz | PMC_OSC2_KEY_PASSWD;
}


/*********************************************************************************
Initialize PLLACK/PLLBCK
*********************************************************************************/
static void CLK_PLLxClockInitialize(void)
{
    PMC_REGS->PMC_PLL_CFG = PMC_PLL_CFG_SRB_SR_VAL_24K |
                            PMC_PLL_CFG_SCB_SC_VAL_20p |
                            PMC_PLL_CFG_OUTCUR_PLLB_ICP0 |
                            PMC_PLL_CFG_SRA_SR_VAL_24K |
                            PMC_PLL_CFG_SCA_SC_VAL_60p |
                            PMC_PLL_CFG_OUTCUR_PLLA_ICP3;

    /* Configure and Enable PLLA */
    PMC_REGS->CKGR_PLLAR =  CKGR_PLLAR_ONE_Msk |
                            CKGR_PLLAR_FREQ_VCO_VCO1 |
                            CKGR_PLLAR_PLLACOUNT(0x3fU) |
                            CKGR_PLLAR_MULA(9U) |
                            CKGR_PLLAR_DIVA(1U);

    while ( (PMC_REGS->PMC_SR & PMC_SR_LOCKA_Msk) != PMC_SR_LOCKA_Msk)
    {

    }

}

/*********************************************************************************
Initialize Master clock (MCK)
*********************************************************************************/
static void CLK_MasterClockInitialize(void)
{
    /* Program PMC_MCKR.PRES and wait for PMC_SR.MCKRDY to be set   */
    PMC_REGS->PMC_MCKR = (PMC_REGS->PMC_MCKR & ~PMC_MCKR_PRES_Msk) | PMC_MCKR_PRES_CLK_2;
    while ((PMC_REGS->PMC_SR & PMC_SR_MCKRDY_Msk) != PMC_SR_MCKRDY_Msk)
    {

    }

    /* Program PMC_MCKR.MDIV and Wait for PMC_SR.MCKRDY to be set   */
    PMC_REGS->PMC_MCKR = (PMC_REGS->PMC_MCKR & ~PMC_MCKR_MDIV_Msk) | PMC_MCKR_MDIV_EQ_PCK;
    while ((PMC_REGS->PMC_SR & PMC_SR_MCKRDY_Msk) != PMC_SR_MCKRDY_Msk)
    {

    }

    /* Program PMC_MCKR.CSS and Wait for PMC_SR.MCKRDY to be set    */
    PMC_REGS->PMC_MCKR = (PMC_REGS->PMC_MCKR & ~PMC_MCKR_CSS_Msk) | PMC_MCKR_CSS_PLLA_CLK;
    while ((PMC_REGS->PMC_SR & PMC_SR_MCKRDY_Msk) != PMC_SR_MCKRDY_Msk)
    {

    }

}

/*********************************************************************************
Initialize Peripheral Clock
*********************************************************************************/
static void CLK_PeripheralClockInitialize(void)
{
    PMC_REGS->PMC_PCR = PMC_PCR_EN_Msk | PMC_PCR_CMD_Msk | PMC_PCR_PID(8U); /* FLEXCOM1 */
    PMC_REGS->PMC_PCR = PMC_PCR_EN_Msk | PMC_PCR_CMD_Msk | PMC_PCR_PID(10U); /* PIO */
    PMC_REGS->PMC_PCR = PMC_PCR_EN_Msk | PMC_PCR_CMD_Msk | PMC_PCR_PID(23)  /* ADC */
        | PMC_PCR_GCLKEN_Msk | PMC_PCR_GCLKCSS_MCK_CLK | PMC_PCR_GCLKDIV(0);
    PMC_REGS->PMC_PCR = PMC_PCR_EN_Msk | PMC_PCR_CMD_Msk | PMC_PCR_PID(25U); /* TC0_CHANNEL0 */
    PMC_REGS->PMC_PCR = PMC_PCR_EN_Msk | PMC_PCR_CMD_Msk | PMC_PCR_PID(31U); /* PWM0 */
}

/*********************************************************************************
Clock Initialize
*********************************************************************************/
void CLOCK_Initialize( void )
{
    SCB_DisableDCache();
    SCB_DisableICache();

    /* Initialize Slow Clock */
    CLK_SlowClockInitialize();

    /* Initialize Main Clock */
    CLK_MainClockInitialize();

    /* Initialize RC2 */
    CLK_RC2ClockInitialize();

    /* Initialize PLLA/PLLB */
    CLK_PLLxClockInitialize();

    /* Initialize Master Clock */
    CLK_MasterClockInitialize();

    /* Initialize Peripheral Clock */
    CLK_PeripheralClockInitialize();


    SCB_EnableDCache();
    SCB_EnableICache();
}
