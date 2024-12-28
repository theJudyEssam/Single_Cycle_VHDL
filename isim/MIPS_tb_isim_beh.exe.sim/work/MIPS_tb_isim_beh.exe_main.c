/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_1242562249;
char *STD_STANDARD;
char *IEEE_P_2592010699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_a_1991350011_3212880686_init();
    work_a_3219856015_3212880686_init();
    work_a_1960848210_3212880686_init();
    work_a_3496226640_3212880686_init();
    work_a_3044219816_3212880686_init();
    work_a_0437645160_3212880686_init();
    work_a_3392787015_0831356973_init();
    work_a_2482959074_3212880686_init();
    work_a_0909257147_3212880686_init();
    work_a_0817802551_3212880686_init();
    work_a_2278322344_3212880686_init();
    work_a_4088295336_3212880686_init();
    work_a_1430113433_3212880686_init();
    work_a_0258635663_2372691052_init();


    xsi_register_tops("work_a_0258635663_2372691052");

    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);

    return xsi_run_simulation(argc, argv);

}
