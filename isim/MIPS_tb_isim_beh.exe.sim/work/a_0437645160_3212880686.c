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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "F:/JUDY_ESSAM/Alu_221000519.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1306069469_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_0437645160_3212880686_p_0(char *t0)
{
    char t8[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5040);
    t4 = 1;
    if (4U == 4U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5044);
    t4 = 1;
    if (4U == 4U)
        goto LAB15;

LAB16:    t4 = 0;

LAB17:    if (t4 != 0)
        goto LAB13;

LAB14:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5048);
    t4 = 1;
    if (4U == 4U)
        goto LAB25;

LAB26:    t4 = 0;

LAB27:    if (t4 != 0)
        goto LAB23;

LAB24:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5052);
    t4 = 1;
    if (4U == 4U)
        goto LAB33;

LAB34:    t4 = 0;

LAB35:    if (t4 != 0)
        goto LAB31;

LAB32:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5056);
    t4 = 1;
    if (4U == 4U)
        goto LAB41;

LAB42:    t4 = 0;

LAB43:    if (t4 != 0)
        goto LAB39;

LAB40:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5124);
    t4 = 1;
    if (4U == 4U)
        goto LAB52;

LAB53:    t4 = 0;

LAB54:    if (t4 != 0)
        goto LAB50;

LAB51:
LAB3:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t4 = 1;
    if (32U == 32U)
        goto LAB63;

LAB64:    t4 = 0;

LAB65:    if (t4 != 0)
        goto LAB60;

LAB62:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 3296);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB61:    t1 = (t0 + 3152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(44, ng0);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t9 = (t0 + 4900U);
    t11 = (t0 + 1192U);
    t12 = *((char **)t11);
    t11 = (t0 + 4916U);
    t13 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t8, t10, t9, t12, t11);
    t14 = (t8 + 12U);
    t15 = *((unsigned int *)t14);
    t16 = (1U * t15);
    t17 = (32U != t16);
    if (t17 == 1)
        goto LAB11;

LAB12:    t18 = (t0 + 3232);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t13, 32U);
    xsi_driver_first_trans_fast_port(t18);
    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 4U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_size_not_matching(32U, t16, 0);
    goto LAB12;

LAB13:    xsi_set_current_line(46, ng0);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t9 = (t0 + 4900U);
    t11 = (t0 + 1192U);
    t12 = *((char **)t11);
    t11 = (t0 + 4916U);
    t13 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t8, t10, t9, t12, t11);
    t14 = (t8 + 12U);
    t15 = *((unsigned int *)t14);
    t16 = (1U * t15);
    t17 = (32U != t16);
    if (t17 == 1)
        goto LAB21;

LAB22:    t18 = (t0 + 3232);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t13, 32U);
    xsi_driver_first_trans_fast_port(t18);
    goto LAB3;

LAB15:    t5 = 0;

LAB18:    if (t5 < 4U)
        goto LAB19;
    else
        goto LAB17;

LAB19:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB16;

LAB20:    t5 = (t5 + 1);
    goto LAB18;

LAB21:    xsi_size_not_matching(32U, t16, 0);
    goto LAB22;

LAB23:    xsi_set_current_line(48, ng0);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t9 = (t0 + 4900U);
    t11 = (t0 + 1192U);
    t12 = *((char **)t11);
    t11 = (t0 + 4916U);
    t13 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t8, t10, t9, t12, t11);
    t14 = (t0 + 3232);
    t18 = (t14 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t13, 32U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB3;

LAB25:    t5 = 0;

LAB28:    if (t5 < 4U)
        goto LAB29;
    else
        goto LAB27;

LAB29:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB26;

LAB30:    t5 = (t5 + 1);
    goto LAB28;

LAB31:    xsi_set_current_line(50, ng0);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t9 = (t0 + 4900U);
    t11 = (t0 + 1192U);
    t12 = *((char **)t11);
    t11 = (t0 + 4916U);
    t13 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t8, t10, t9, t12, t11);
    t14 = (t0 + 3232);
    t18 = (t14 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t13, 32U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB3;

LAB33:    t5 = 0;

LAB36:    if (t5 < 4U)
        goto LAB37;
    else
        goto LAB35;

LAB37:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB34;

LAB38:    t5 = (t5 + 1);
    goto LAB36;

LAB39:    xsi_set_current_line(52, ng0);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t9 = (t0 + 1192U);
    t11 = *((char **)t9);
    t9 = ((IEEE_P_2592010699) + 4024);
    t17 = xsi_vhdl_lessthan(t9, t10, 32U, t11, 32U);
    if (t17 != 0)
        goto LAB47;

LAB49:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 5092);
    t3 = (t0 + 3232);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);

LAB48:    goto LAB3;

LAB41:    t5 = 0;

LAB44:    if (t5 < 4U)
        goto LAB45;
    else
        goto LAB43;

LAB45:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB42;

LAB46:    t5 = (t5 + 1);
    goto LAB44;

LAB47:    xsi_set_current_line(53, ng0);
    t12 = (t0 + 5060);
    t14 = (t0 + 3232);
    t18 = (t14 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 32U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB48;

LAB50:    xsi_set_current_line(58, ng0);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t9 = (t0 + 4900U);
    t11 = (t0 + 1192U);
    t12 = *((char **)t11);
    t11 = (t0 + 4916U);
    t13 = ieee_p_2592010699_sub_1306069469_503743352(IEEE_P_2592010699, t8, t10, t9, t12, t11);
    t14 = (t8 + 12U);
    t15 = *((unsigned int *)t14);
    t16 = (1U * t15);
    t17 = (32U != t16);
    if (t17 == 1)
        goto LAB58;

LAB59:    t18 = (t0 + 3232);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t13, 32U);
    xsi_driver_first_trans_fast_port(t18);
    goto LAB3;

LAB52:    t5 = 0;

LAB55:    if (t5 < 4U)
        goto LAB56;
    else
        goto LAB54;

LAB56:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB53;

LAB57:    t5 = (t5 + 1);
    goto LAB55;

LAB58:    xsi_size_not_matching(32U, t16, 0);
    goto LAB59;

LAB60:    xsi_set_current_line(61, ng0);
    t7 = (t0 + 3296);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB61;

LAB63:    t5 = 0;

LAB66:    if (t5 < 32U)
        goto LAB67;
    else
        goto LAB65;

LAB67:    t1 = (t2 + t5);
    t6 = (t3 + t5);
    if (*((unsigned char *)t1) != *((unsigned char *)t6))
        goto LAB64;

LAB68:    t5 = (t5 + 1);
    goto LAB66;

}


extern void work_a_0437645160_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0437645160_3212880686_p_0};
	xsi_register_didat("work_a_0437645160_3212880686", "isim/MIPS_tb_isim_beh.exe.sim/work/a_0437645160_3212880686.didat");
	xsi_register_executes(pe);
}
