
Ash_thermometer:
[00052950] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[00052954] 594f                      subq.w     #4,a7
[00052956] 3600                      move.w     d0,d3
[00052958] 2848                      movea.l    a0,a4
[0005295a] 3801                      move.w     d1,d4
[0005295c] 2e89                      move.l     a1,(a7)
[0005295e] 2a6f 0028                 movea.l    40(a7),a5
[00052962] 266f 0030                 movea.l    48(a7),a3
[00052966] 7072                      moveq.l    #114,d0
[00052968] 4eb9 0004 7cc8            jsr        Ax_malloc
[0005296e] 2448                      movea.l    a0,a2
[00052970] 200a                      move.l     a2,d0
[00052972] 6606                      bne.s      Ash_thermometer_1
[00052974] 70ff                      moveq.l    #-1,d0
[00052976] 6000 00f6                 bra        Ash_thermometer_2
Ash_thermometer_1:
[0005297a] 7272                      moveq.l    #114,d1
[0005297c] 4240                      clr.w      d0
[0005297e] 204a                      movea.l    a2,a0
[00052980] 4eb9 0007 712e            jsr        memset
[00052986] 2557 0040                 move.l     (a7),64(a2)
[0005298a] 256f 0024 0044            move.l     36(a7),68(a2)
[00052990] 254d 0048                 move.l     a5,72(a2)
[00052994] 256f 002c 004c            move.l     44(a7),76(a2)
[0005299a] 254b 0050                 move.l     a3,80(a2)
[0005299e] 256f 0034 0054            move.l     52(a7),84(a2)
[000529a4] 256f 0038 0058            move.l     56(a7),88(a2)
[000529aa] 3543 0064                 move.w     d3,100(a2)
[000529ae] 254c 005c                 move.l     a4,92(a2)
[000529b2] 3544 0066                 move.w     d4,102(a2)
[000529b6] 204a                      movea.l    a2,a0
[000529b8] 2279 000d 4434            movea.l    $000D4434,a1
[000529be] 4e91                      jsr        (a1)
[000529c0] 2848                      movea.l    a0,a4
[000529c2] 200c                      move.l     a4,d0
[000529c4] 6750                      beq.s      Ash_thermometer_3
[000529c6] 7208                      moveq.l    #8,d1
[000529c8] c243                      and.w      d3,d1
[000529ca] 670c                      beq.s      Ash_thermometer_4
[000529cc] 226c 000c                 movea.l    12(a4),a1
[000529d0] 4e91                      jsr        (a1)
[000529d2] 7802                      moveq.l    #2,d4
[000529d4] 6000 0096                 bra        Ash_thermometer_5
Ash_thermometer_4:
[000529d8] 2079 0010 1f12            movea.l    ACSblk,a0
[000529de] 2568 0232 006a            move.l     562(a0),106(a2)
[000529e4] 2079 0010 1f12            movea.l    ACSblk,a0
[000529ea] 217c 0000 0001 0232       move.l     #$00000001,562(a0)
[000529f2] 204c                      movea.l    a4,a0
[000529f4] 4eb9 0005 1292            jsr        Awi_dialog
[000529fa] 3800                      move.w     d0,d4
[000529fc] 93c9                      suba.l     a1,a1
[000529fe] 204c                      movea.l    a4,a0
[00052a00] 2c6c 0004                 movea.l    4(a4),a6
[00052a04] 7002                      moveq.l    #2,d0
[00052a06] 4e96                      jsr        (a6)
[00052a08] 2079 0010 1f12            movea.l    ACSblk,a0
[00052a0e] 216a 006a 0232            move.l     106(a2),562(a0)
[00052a14] 604c                      bra.s      Ash_thermometer_6
Ash_thermometer_3:
[00052a16] 202f 0024                 move.l     36(a7),d0
[00052a1a] 6706                      beq.s      Ash_thermometer_7
[00052a1c] 204a                      movea.l    a2,a0
[00052a1e] 2240                      movea.l    d0,a1
[00052a20] 4e91                      jsr        (a1)
Ash_thermometer_7:
[00052a22] 200d                      move.l     a5,d0
[00052a24] 6708                      beq.s      Ash_thermometer_8
[00052a26] 204a                      movea.l    a2,a0
[00052a28] 4e95                      jsr        (a5)
[00052a2a] 4a40                      tst.w      d0
[00052a2c] 6728                      beq.s      Ash_thermometer_9
Ash_thermometer_8:
[00052a2e] 202f 002c                 move.l     44(a7),d0
[00052a32] 6716                      beq.s      Ash_thermometer_10
[00052a34] 6008                      bra.s      Ash_thermometer_11
Ash_thermometer_12:
[00052a36] 200b                      move.l     a3,d0
[00052a38] 6704                      beq.s      Ash_thermometer_11
[00052a3a] 204a                      movea.l    a2,a0
[00052a3c] 4e93                      jsr        (a3)
Ash_thermometer_11:
[00052a3e] 204a                      movea.l    a2,a0
[00052a40] 226f 002c                 movea.l    44(a7),a1
[00052a44] 4e91                      jsr        (a1)
[00052a46] 4a40                      tst.w      d0
[00052a48] 66ec                      bne.s      Ash_thermometer_12
Ash_thermometer_10:
[00052a4a] 202f 0034                 move.l     52(a7),d0
[00052a4e] 6706                      beq.s      Ash_thermometer_9
[00052a50] 204a                      movea.l    a2,a0
[00052a52] 2240                      movea.l    d0,a1
[00052a54] 4e91                      jsr        (a1)
Ash_thermometer_9:
[00052a56] 202f 0038                 move.l     56(a7),d0
[00052a5a] 6706                      beq.s      Ash_thermometer_6
[00052a5c] 204a                      movea.l    a2,a0
[00052a5e] 2240                      movea.l    d0,a1
[00052a60] 4e91                      jsr        (a1)
Ash_thermometer_6:
[00052a62] 7072                      moveq.l    #114,d0
[00052a64] 204a                      movea.l    a2,a0
[00052a66] 4eb9 0004 8140            jsr        Ax_recycle
Ash_thermometer_5:
[00052a6c] 3004                      move.w     d4,d0
Ash_thermometer_2:
[00052a6e] 584f                      addq.w     #4,a7
[00052a70] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[00052a74] 4e75                      rts

Prozent:
[00052a76] 48e7 1c3e                 movem.l    d3-d5/a2-a6,-(a7)
[00052a7a] 2448                      movea.l    a0,a2
[00052a7c] 2800                      move.l     d0,d4
[00052a7e] 2650                      movea.l    (a0),a3
[00052a80] 49f9 000d 44e6            lea.l      laufBNr,a4
[00052a86] 322b 0062                 move.w     98(a3),d1
[00052a8a] d241                      add.w      d1,d1
[00052a8c] 3434 1000                 move.w     0(a4,d1.w),d2
[00052a90] 48c2                      ext.l      d2
[00052a92] 2002                      move.l     d2,d0
[00052a94] d080                      add.l      d0,d0
[00052a96] d082                      add.l      d2,d0
[00052a98] e788                      lsl.l      #3,d0
[00052a9a] 2a6a 0014                 movea.l    20(a2),a5
[00052a9e] dbc0                      adda.l     d0,a5
[00052aa0] 3434 1008                 move.w     8(a4,d1.w),d2
[00052aa4] 48c2                      ext.l      d2
[00052aa6] 2002                      move.l     d2,d0
[00052aa8] d080                      add.l      d0,d0
[00052aaa] d082                      add.l      d2,d0
[00052aac] e788                      lsl.l      #3,d0
[00052aae] 2c6a 0014                 movea.l    20(a2),a6
[00052ab2] ddc0                      adda.l     d0,a6
[00052ab4] 4243                      clr.w      d3
[00052ab6] 302e 0014                 move.w     20(a6),d0
[00052aba] 48c0                      ext.l      d0
[00052abc] 2204                      move.l     d4,d1
[00052abe] 4eb9 0007 76f0            jsr        _lmul
[00052ac4] 2a00                      move.l     d0,d5
[00052ac6] 700c                      moveq.l    #12,d0
[00052ac8] e0a5                      asr.l      d0,d5
[00052aca] 4df9 0010 1f12            lea.l      ACSblk,a6
[00052ad0] ba6d 0014                 cmp.w      20(a5),d5
[00052ad4] 6e04                      bgt.s      Prozent_1
[00052ad6] 4a45                      tst.w      d5
[00052ad8] 6630                      bne.s      Prozent_2
Prozent_1:
[00052ada] 3b45 0014                 move.w     d5,20(a5)
[00052ade] 2056                      movea.l    (a6),a0
[00052ae0] 216a 0014 025c            move.l     20(a2),604(a0)
[00052ae6] 302b 0062                 move.w     98(a3),d0
[00052aea] d040                      add.w      d0,d0
[00052aec] 2056                      movea.l    (a6),a0
[00052aee] 3174 0000 0260            move.w     0(a4,d0.w),608(a0)
[00052af4] 72ff                      moveq.l    #-1,d1
[00052af6] 342b 0062                 move.w     98(a3),d2
[00052afa] d442                      add.w      d2,d2
[00052afc] 3034 2000                 move.w     0(a4,d2.w),d0
[00052b00] 204a                      movea.l    a2,a0
[00052b02] 4eb9 0004 b600            jsr        Awi_obchange
[00052b08] 7601                      moveq.l    #1,d3
Prozent_2:
[00052b0a] 7004                      moveq.l    #4,d0
[00052b0c] c06b 0064                 and.w      100(a3),d0
[00052b10] 6772                      beq.s      Prozent_3
[00052b12] 2a04                      move.l     d4,d5
[00052b14] da85                      add.l      d5,d5
[00052b16] da84                      add.l      d4,d5
[00052b18] e78d                      lsl.l      #3,d5
[00052b1a] da84                      add.l      d4,d5
[00052b1c] e58d                      lsl.l      #2,d5
[00052b1e] 720c                      moveq.l    #12,d1
[00052b20] e2a5                      asr.l      d1,d5
[00052b22] 4a43                      tst.w      d3
[00052b24] 660a                      bne.s      Prozent_4
[00052b26] ba6b 0060                 cmp.w      96(a3),d5
[00052b2a] 6e04                      bgt.s      Prozent_4
[00052b2c] 4a45                      tst.w      d5
[00052b2e] 6654                      bne.s      Prozent_3
Prozent_4:
[00052b30] ba6b 0060                 cmp.w      96(a3),d5
[00052b34] 6e04                      bgt.s      Prozent_5
[00052b36] 4a45                      tst.w      d5
[00052b38] 6604                      bne.s      Prozent_6
Prozent_5:
[00052b3a] 3745 0060                 move.w     d5,96(a3)
Prozent_6:
[00052b3e] 3f05                      move.w     d5,-(a7)
[00052b40] 43f9 000d 44fe            lea.l      $000D44FE,a1
[00052b46] 322b 0062                 move.w     98(a3),d1
[00052b4a] d241                      add.w      d1,d1
[00052b4c] 3034 1010                 move.w     16(a4,d1.w),d0
[00052b50] 206a 0014                 movea.l    20(a2),a0
[00052b54] 4eb9 0004 afac            jsr        Aob_printf
[00052b5a] 544f                      addq.w     #2,a7
[00052b5c] 2056                      movea.l    (a6),a0
[00052b5e] 216a 0014 025c            move.l     20(a2),604(a0)
[00052b64] 302b 0062                 move.w     98(a3),d0
[00052b68] d040                      add.w      d0,d0
[00052b6a] 2056                      movea.l    (a6),a0
[00052b6c] 3174 0010 0260            move.w     16(a4,d0.w),608(a0)
[00052b72] 322b 0062                 move.w     98(a3),d1
[00052b76] d241                      add.w      d1,d1
[00052b78] 3034 1010                 move.w     16(a4,d1.w),d0
[00052b7c] 204a                      movea.l    a2,a0
[00052b7e] 4eb9 0004 b846            jsr        Awi_obredraw
Prozent_3:
[00052b84] 4cdf 7c38                 movem.l    (a7)+,d3-d5/a2-a6
[00052b88] 4e75                      rts

TextUpdate:
[00052b8a] 48e7 003c                 movem.l    a2-a5,-(a7)
[00052b8e] 2448                      movea.l    a0,a2
[00052b90] 2849                      movea.l    a1,a4
[00052b92] 2650                      movea.l    (a0),a3
[00052b94] 7001                      moveq.l    #1,d0
[00052b96] c06b 0064                 and.w      100(a3),d0
[00052b9a] 674c                      beq.s      TextUpdate_1
[00052b9c] 4bf9 000d 44de            lea.l      textNr,a5
[00052ba2] 224c                      movea.l    a4,a1
[00052ba4] 322b 0062                 move.w     98(a3),d1
[00052ba8] d241                      add.w      d1,d1
[00052baa] 3035 1000                 move.w     0(a5,d1.w),d0
[00052bae] 206a 0014                 movea.l    20(a2),a0
[00052bb2] 4eb9 0004 afe0            jsr        Aob_puttext
[00052bb8] 2079 0010 1f12            movea.l    ACSblk,a0
[00052bbe] 216a 0014 025c            move.l     20(a2),604(a0)
[00052bc4] 302b 0062                 move.w     98(a3),d0
[00052bc8] d040                      add.w      d0,d0
[00052bca] 2079 0010 1f12            movea.l    ACSblk,a0
[00052bd0] 3175 0000 0260            move.w     0(a5,d0.w),608(a0)
[00052bd6] 322b 0062                 move.w     98(a3),d1
[00052bda] d241                      add.w      d1,d1
[00052bdc] 3035 1000                 move.w     0(a5,d1.w),d0
[00052be0] 204a                      movea.l    a2,a0
[00052be2] 4eb9 0004 b846            jsr        Awi_obredraw
TextUpdate_1:
[00052be8] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00052bec] 4e75                      rts

ThermoCreate:
[00052bee] 48e7 003c                 movem.l    a2-a5,-(a7)
[00052bf2] 554f                      subq.w     #2,a7
[00052bf4] 2448                      movea.l    a0,a2
[00052bf6] 47f9 000d 442c            lea.l      ThermWind,a3
[00052bfc] 200a                      move.l     a2,d0
[00052bfe] 672a                      beq.s      ThermoCreate_1
[00052c00] 7203                      moveq.l    #3,d1
[00052c02] c26a 0064                 and.w      100(a2),d1
[00052c06] 3541 0062                 move.w     d1,98(a2)
[00052c0a] e549                      lsl.w      #2,d1
[00052c0c] 41eb 00a2                 lea.l      162(a3),a0
[00052c10] 2770 1000 0014            move.l     0(a0,d1.w),20(a3)
[00052c16] 276a 005c 004a            move.l     92(a2),74(a3)
[00052c1c] 204b                      movea.l    a3,a0
[00052c1e] 4eb9 0004 f41a            jsr        Awi_create
[00052c24] 2848                      movea.l    a0,a4
[00052c26] 200c                      move.l     a4,d0
[00052c28] 6606                      bne.s      ThermoCreate_2
ThermoCreate_1:
[00052c2a] 91c8                      suba.l     a0,a0
[00052c2c] 6000 015c                 bra        ThermoCreate_3
ThermoCreate_2:
[00052c30] 206c 0014                 movea.l    20(a4),a0
[00052c34] 3968 0014 0038            move.w     20(a0),56(a4)
[00052c3a] 206c 0014                 movea.l    20(a4),a0
[00052c3e] 3968 0016 003a            move.w     22(a0),58(a4)
[00052c44] 2f39 000d 99d6            move.l     _globl,-(a7)
[00052c4a] 486c 002a                 pea.l      42(a4)
[00052c4e] 486c 0028                 pea.l      40(a4)
[00052c52] 3f2c 003a                 move.w     58(a4),-(a7)
[00052c56] 3f2c 0038                 move.w     56(a4),-(a7)
[00052c5a] 3f2c 0036                 move.w     54(a4),-(a7)
[00052c5e] 43ef 0012                 lea.l      18(a7),a1
[00052c62] 41ef 0012                 lea.l      18(a7),a0
[00052c66] 342c 0034                 move.w     52(a4),d2
[00052c6a] 322c 0022                 move.w     34(a4),d1
[00052c6e] 4240                      clr.w      d0
[00052c70] 4eb9 0006 d60a            jsr        mt_wind_calc
[00052c76] 4fef 0012                 lea.l      18(a7),a7
[00052c7a] 288a                      move.l     a2,(a4)
[00052c7c] 254c 006e                 move.l     a4,110(a2)
[00052c80] 24bc ffff ffff            move.l     #$FFFFFFFF,(a2)
[00052c86] 42aa 0004                 clr.l      4(a2)
[00052c8a] 42aa 0008                 clr.l      8(a2)
[00052c8e] 322a 0062                 move.w     98(a2),d1
[00052c92] d241                      add.w      d1,d1
[00052c94] 41eb 00ba                 lea.l      186(a3),a0
[00052c98] 3430 1000                 move.w     0(a0,d1.w),d2
[00052c9c] 48c2                      ext.l      d2
[00052c9e] 2002                      move.l     d2,d0
[00052ca0] d080                      add.l      d0,d0
[00052ca2] d082                      add.l      d2,d0
[00052ca4] e788                      lsl.l      #3,d0
[00052ca6] 226c 0014                 movea.l    20(a4),a1
[00052caa] 4271 0814                 clr.w      20(a1,d0.l)
[00052cae] 7000                      moveq.l    #0,d0
[00052cb0] 204c                      movea.l    a4,a0
[00052cb2] 6100 fdc2                 bsr        Prozent
[00052cb6] 302a 0066                 move.w     102(a2),d0
[00052cba] 6b56                      bmi.s      ThermoCreate_4
[00052cbc] 2079 0010 1f12            movea.l    ACSblk,a0
[00052cc2] 0c68 0010 001a            cmpi.w     #$0010,26(a0)
[00052cc8] 6d48                      blt.s      ThermoCreate_4
[00052cca] 2268 023c                 movea.l    572(a0),a1
[00052cce] 3229 000e                 move.w     14(a1),d1
[00052cd2] c27c 0100                 and.w      #$0100,d1
[00052cd6] 663a                      bne.s      ThermoCreate_4
[00052cd8] 302a 0062                 move.w     98(a2),d0
[00052cdc] d040                      add.w      d0,d0
[00052cde] 41eb 00ba                 lea.l      186(a3),a0
[00052ce2] 3230 0000                 move.w     0(a0,d0.w),d1
[00052ce6] 48c1                      ext.l      d1
[00052ce8] 2401                      move.l     d1,d2
[00052cea] d482                      add.l      d2,d2
[00052cec] d481                      add.l      d1,d2
[00052cee] e78a                      lsl.l      #3,d2
[00052cf0] 226c 0014                 movea.l    20(a4),a1
[00052cf4] 2071 280c                 movea.l    12(a1,d2.l),a0
[00052cf8] 02a8 ffff ff80 0004       andi.l     #$FFFFFF80,4(a0)
[00052d00] 700f                      moveq.l    #15,d0
[00052d02] c06a 0066                 and.w      102(a2),d0
[00052d06] 48c0                      ext.l      d0
[00052d08] 80bc 0000 0070            or.l       #$00000070,d0
[00052d0e] 81a8 0004                 or.l       d0,4(a0)
ThermoCreate_4:
[00052d12] 2012                      move.l     (a2),d0
[00052d14] 6a1c                      bpl.s      ThermoCreate_5
[00052d16] 222a 0044                 move.l     68(a2),d1
[00052d1a] 6716                      beq.s      ThermoCreate_5
[00052d1c] 204a                      movea.l    a2,a0
[00052d1e] 2241                      movea.l    d1,a1
[00052d20] 4e91                      jsr        (a1)
[00052d22] 4a40                      tst.w      d0
[00052d24] 660c                      bne.s      ThermoCreate_5
[00052d26] 93c9                      suba.l     a1,a1
[00052d28] 7002                      moveq.l    #2,d0
[00052d2a] 204c                      movea.l    a4,a0
[00052d2c] 2a6c 0004                 movea.l    4(a4),a5
[00052d30] 4e95                      jsr        (a5)
ThermoCreate_5:
[00052d32] 7001                      moveq.l    #1,d0
[00052d34] c06a 0064                 and.w      100(a2),d0
[00052d38] 671c                      beq.s      ThermoCreate_6
[00052d3a] 43ea 000c                 lea.l      12(a2),a1
[00052d3e] 322a 0062                 move.w     98(a2),d1
[00052d42] d241                      add.w      d1,d1
[00052d44] 41eb 00b2                 lea.l      178(a3),a0
[00052d48] 3030 1000                 move.w     0(a0,d1.w),d0
[00052d4c] 206c 0014                 movea.l    20(a4),a0
[00052d50] 4eb9 0004 afe0            jsr        Aob_puttext
ThermoCreate_6:
[00052d56] 7004                      moveq.l    #4,d0
[00052d58] c06a 0064                 and.w      100(a2),d0
[00052d5c] 6604                      bne.s      ThermoCreate_7
[00052d5e] 7401                      moveq.l    #1,d2
[00052d60] 6002                      bra.s      ThermoCreate_8
ThermoCreate_7:
[00052d62] 4242                      clr.w      d2
ThermoCreate_8:
[00052d64] 323c 0080                 move.w     #$0080,d1
[00052d68] 302a 0062                 move.w     98(a2),d0
[00052d6c] d040                      add.w      d0,d0
[00052d6e] 41eb 00ca                 lea.l      202(a3),a0
[00052d72] 3030 0000                 move.w     0(a0,d0.w),d0
[00052d76] 204c                      movea.l    a4,a0
[00052d78] 4eb9 0004 d65e            jsr        Aob_flags
[00052d7e] 006c 0024 0056            ori.w      #$0024,86(a4)
[00052d84] 426a 0068                 clr.w      104(a2)
[00052d88] 204c                      movea.l    a4,a0
ThermoCreate_3:
[00052d8a] 544f                      addq.w     #2,a7
[00052d8c] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00052d90] 4e75                      rts

ThermoService:
[00052d92] 48e7 0038                 movem.l    a2-a4,-(a7)
[00052d96] 2448                      movea.l    a0,a2
[00052d98] 2650                      movea.l    (a0),a3
[00052d9a] 3200                      move.w     d0,d1
[00052d9c] 5541                      subq.w     #2,d1
[00052d9e] 6704                      beq.s      ThermoService_1
[00052da0] 6000 00a8                 bra        ThermoService_2
ThermoService_1:
[00052da4] 302a 0056                 move.w     86(a2),d0
[00052da8] c07c 0200                 and.w      #$0200,d0
[00052dac] 6600 0098                 bne        ThermoService_3
[00052db0] 006a 0200 0056            ori.w      #$0200,86(a2)
[00052db6] 026a ffdf 0056            andi.w     #$FFDF,86(a2)
[00052dbc] 49f9 0010 1f12            lea.l      ACSblk,a4
[00052dc2] 302b 0068                 move.w     104(a3),d0
[00052dc6] 6730                      beq.s      ThermoService_4
[00052dc8] 222b 0054                 move.l     84(a3),d1
[00052dcc] 672a                      beq.s      ThermoService_4
[00052dce] 7408                      moveq.l    #8,d2
[00052dd0] c46b 0064                 and.w      100(a3),d2
[00052dd4] 6608                      bne.s      ThermoService_5
[00052dd6] 2054                      movea.l    (a4),a0
[00052dd8] 216b 006a 0232            move.l     106(a3),562(a0)
ThermoService_5:
[00052dde] 204b                      movea.l    a3,a0
[00052de0] 226b 0054                 movea.l    84(a3),a1
[00052de4] 4e91                      jsr        (a1)
[00052de6] 7008                      moveq.l    #8,d0
[00052de8] c06b 0064                 and.w      100(a3),d0
[00052dec] 660a                      bne.s      ThermoService_4
[00052dee] 2054                      movea.l    (a4),a0
[00052df0] 217c 0000 0001 0232       move.l     #$00000001,562(a0)
ThermoService_4:
[00052df8] 204a                      movea.l    a2,a0
[00052dfa] 4eb9 0005 0330            jsr        Awi_delete
[00052e00] 42ab 006e                 clr.l      110(a3)
[00052e04] 202b 0058                 move.l     88(a3),d0
[00052e08] 672a                      beq.s      ThermoService_6
[00052e0a] 7208                      moveq.l    #8,d1
[00052e0c] c26b 0064                 and.w      100(a3),d1
[00052e10] 6608                      bne.s      ThermoService_7
[00052e12] 2054                      movea.l    (a4),a0
[00052e14] 216b 006a 0232            move.l     106(a3),562(a0)
ThermoService_7:
[00052e1a] 204b                      movea.l    a3,a0
[00052e1c] 226b 0058                 movea.l    88(a3),a1
[00052e20] 4e91                      jsr        (a1)
[00052e22] 7008                      moveq.l    #8,d0
[00052e24] c06b 0064                 and.w      100(a3),d0
[00052e28] 660a                      bne.s      ThermoService_6
[00052e2a] 2054                      movea.l    (a4),a0
[00052e2c] 217c 0000 0001 0232       move.l     #$00000001,562(a0)
ThermoService_6:
[00052e34] 7008                      moveq.l    #8,d0
[00052e36] c06b 0064                 and.w      100(a3),d0
[00052e3a] 670a                      beq.s      ThermoService_3
[00052e3c] 204b                      movea.l    a3,a0
[00052e3e] 7072                      moveq.l    #114,d0
[00052e40] 4eb9 0004 8140            jsr        Ax_recycle
ThermoService_3:
[00052e46] 7001                      moveq.l    #1,d0
[00052e48] 6002                      bra.s      ThermoService_8
ThermoService_2:
[00052e4a] 4240                      clr.w      d0
ThermoService_8:
[00052e4c] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00052e50] 4e75                      rts

ThermoInit:
[00052e52] 48e7 1e38                 movem.l    d3-d6/a2-a4,-(a7)
[00052e56] 2448                      movea.l    a0,a2
[00052e58] 2650                      movea.l    (a0),a3
[00052e5a] 7601                      moveq.l    #1,d3
[00052e5c] 49f9 0010 1f12            lea.l      ACSblk,a4
[00052e62] 302b 0068                 move.w     104(a3),d0
[00052e66] 6700 00c6                 beq        ThermoInit_1
[00052e6a] 7208                      moveq.l    #8,d1
[00052e6c] c26b 0064                 and.w      100(a3),d1
[00052e70] 6608                      bne.s      ThermoInit_2
[00052e72] 2054                      movea.l    (a4),a0
[00052e74] 216b 006a 0232            move.l     106(a3),562(a0)
ThermoInit_2:
[00052e7a] 026a ffdf 0056            andi.w     #$FFDF,86(a2)
[00052e80] 202b 004c                 move.l     76(a3),d0
[00052e84] 670e                      beq.s      ThermoInit_3
[00052e86] 204b                      movea.l    a3,a0
[00052e88] 2240                      movea.l    d0,a1
[00052e8a] 4e91                      jsr        (a1)
[00052e8c] 4a40                      tst.w      d0
[00052e8e] 6704                      beq.s      ThermoInit_3
[00052e90] 7601                      moveq.l    #1,d3
[00052e92] 6002                      bra.s      ThermoInit_4
ThermoInit_3:
[00052e94] 4243                      clr.w      d3
ThermoInit_4:
[00052e96] 43eb 000c                 lea.l      12(a3),a1
[00052e9a] 204a                      movea.l    a2,a0
[00052e9c] 6100 fcec                 bsr        TextUpdate
[00052ea0] 4a43                      tst.w      d3
[00052ea2] 670c                      beq.s      ThermoInit_5
[00052ea4] 202b 0050                 move.l     80(a3),d0
[00052ea8] 6706                      beq.s      ThermoInit_5
[00052eaa] 204b                      movea.l    a3,a0
[00052eac] 2240                      movea.l    d0,a1
[00052eae] 4e91                      jsr        (a1)
ThermoInit_5:
[00052eb0] 5293                      addq.l     #1,(a3)
[00052eb2] 7008                      moveq.l    #8,d0
[00052eb4] c06b 0064                 and.w      100(a3),d0
[00052eb8] 660a                      bne.s      ThermoInit_6
[00052eba] 2054                      movea.l    (a4),a0
[00052ebc] 217c 0000 0001 0232       move.l     #$00000001,562(a0)
ThermoInit_6:
[00052ec4] 4a43                      tst.w      d3
[00052ec6] 6742                      beq.s      ThermoInit_7
[00052ec8] 202b 0008                 move.l     8(a3),d0
[00052ecc] 673c                      beq.s      ThermoInit_7
[00052ece] 282b 0004                 move.l     4(a3),d4
[00052ed2] c8bc fff0 0000            and.l      #$FFF00000,d4
[00052ed8] 2a2b 0004                 move.l     4(a3),d5
[00052edc] cabc 000f ffff            and.l      #$000FFFFF,d5
[00052ee2] 2005                      move.l     d5,d0
[00052ee4] 720c                      moveq.l    #12,d1
[00052ee6] e3a8                      lsl.l      d1,d0
[00052ee8] 222b 0008                 move.l     8(a3),d1
[00052eec] 4eb9 0007 769e            jsr        _uldiv
[00052ef2] 2f00                      move.l     d0,-(a7)
[00052ef4] 2004                      move.l     d4,d0
[00052ef6] 222b 0008                 move.l     8(a3),d1
[00052efa] 4eb9 0007 769e            jsr        _uldiv
[00052f00] 2c00                      move.l     d0,d6
[00052f02] 700c                      moveq.l    #12,d0
[00052f04] e0ae                      lsr.l      d0,d6
[00052f06] dc9f                      add.l      (a7)+,d6
[00052f08] 6006                      bra.s      ThermoInit_8
ThermoInit_7:
[00052f0a] 2c3c 0000 1000            move.l     #$00001000,d6
ThermoInit_8:
[00052f10] 4a86                      tst.l      d6
[00052f12] 6a04                      bpl.s      ThermoInit_9
[00052f14] 7c00                      moveq.l    #0,d6
[00052f16] 600e                      bra.s      ThermoInit_10
ThermoInit_9:
[00052f18] bcbc 0000 1000            cmp.l      #$00001000,d6
[00052f1e] 6f06                      ble.s      ThermoInit_10
[00052f20] 2c3c 0000 1000            move.l     #$00001000,d6
ThermoInit_10:
[00052f26] 2006                      move.l     d6,d0
[00052f28] 204a                      movea.l    a2,a0
[00052f2a] 6100 fb4a                 bsr        Prozent
ThermoInit_1:
[00052f2e] 302b 0068                 move.w     104(a3),d0
[00052f32] 664c                      bne.s      ThermoInit_11
[00052f34] 322a 0020                 move.w     32(a2),d1
[00052f38] 6b46                      bmi.s      ThermoInit_11
[00052f3a] 242b 0048                 move.l     72(a3),d2
[00052f3e] 6732                      beq.s      ThermoInit_12
[00052f40] 7808                      moveq.l    #8,d4
[00052f42] c86b 0064                 and.w      100(a3),d4
[00052f46] 6608                      bne.s      ThermoInit_13
[00052f48] 2054                      movea.l    (a4),a0
[00052f4a] 216b 006a 0232            move.l     106(a3),562(a0)
ThermoInit_13:
[00052f50] 026a ffdf 0056            andi.w     #$FFDF,86(a2)
[00052f56] 204b                      movea.l    a3,a0
[00052f58] 226b 0048                 movea.l    72(a3),a1
[00052f5c] 4e91                      jsr        (a1)
[00052f5e] 3600                      move.w     d0,d3
[00052f60] 7208                      moveq.l    #8,d1
[00052f62] c26b 0064                 and.w      100(a3),d1
[00052f66] 660a                      bne.s      ThermoInit_12
[00052f68] 2054                      movea.l    (a4),a0
[00052f6a] 217c 0000 0001 0232       move.l     #$00000001,562(a0)
ThermoInit_12:
[00052f72] 43eb 000c                 lea.l      12(a3),a1
[00052f76] 204a                      movea.l    a2,a0
[00052f78] 6100 fc10                 bsr        TextUpdate
[00052f7c] 3743 0068                 move.w     d3,104(a3)
ThermoInit_11:
[00052f80] 302a 0056                 move.w     86(a2),d0
[00052f84] c07c 0200                 and.w      #$0200,d0
[00052f88] 6630                      bne.s      ThermoInit_14
[00052f8a] 006a 0020 0056            ori.w      #$0020,86(a2)
[00052f90] 7008                      moveq.l    #8,d0
[00052f92] c06b 0064                 and.w      100(a3),d0
[00052f96] 6612                      bne.s      ThermoInit_15
[00052f98] 4a43                      tst.w      d3
[00052f9a] 6604                      bne.s      ThermoInit_16
[00052f9c] 7201                      moveq.l    #1,d1
[00052f9e] 6002                      bra.s      ThermoInit_17
ThermoInit_16:
[00052fa0] 4241                      clr.w      d1
ThermoInit_17:
[00052fa2] 2054                      movea.l    (a4),a0
[00052fa4] 3141 0268                 move.w     d1,616(a0)
[00052fa8] 6010                      bra.s      ThermoInit_14
ThermoInit_15:
[00052faa] 4a43                      tst.w      d3
[00052fac] 660c                      bne.s      ThermoInit_14
[00052fae] 93c9                      suba.l     a1,a1
[00052fb0] 7002                      moveq.l    #2,d0
[00052fb2] 204a                      movea.l    a2,a0
[00052fb4] 266a 0004                 movea.l    4(a2),a3
[00052fb8] 4e93                      jsr        (a3)
ThermoInit_14:
[00052fba] 4240                      clr.w      d0
[00052fbc] 4cdf 1c78                 movem.l    (a7)+,d3-d6/a2-a4
[00052fc0] 4e75                      rts

ThermCancel:
[00052fc2] 48e7 003c                 movem.l    a2-a5,-(a7)
[00052fc6] 45f9 0010 1f12            lea.l      ACSblk,a2
[00052fcc] 2052                      movea.l    (a2),a0
[00052fce] 2668 0258                 movea.l    600(a0),a3
[00052fd2] 2853                      movea.l    (a3),a4
[00052fd4] 202c 0054                 move.l     84(a4),d0
[00052fd8] 6764                      beq.s      ThermCancel_1
[00052fda] 7208                      moveq.l    #8,d1
[00052fdc] c26c 0064                 and.w      100(a4),d1
[00052fe0] 6606                      bne.s      ThermCancel_2
[00052fe2] 216c 006a 0232            move.l     106(a4),562(a0)
ThermCancel_2:
[00052fe8] 026b ffdf 0056            andi.w     #$FFDF,86(a3)
[00052fee] 204c                      movea.l    a4,a0
[00052ff0] 226c 0054                 movea.l    84(a4),a1
[00052ff4] 4e91                      jsr        (a1)
[00052ff6] 4a40                      tst.w      d0
[00052ff8] 672e                      beq.s      ThermCancel_3
[00052ffa] 43ec 000c                 lea.l      12(a4),a1
[00052ffe] 204b                      movea.l    a3,a0
[00053000] 6100 fb88                 bsr        TextUpdate
[00053004] 7008                      moveq.l    #8,d0
[00053006] c06c 0064                 and.w      100(a4),d0
[0005300a] 670e                      beq.s      ThermCancel_4
[0005300c] 93c9                      suba.l     a1,a1
[0005300e] 204b                      movea.l    a3,a0
[00053010] 2a6b 0004                 movea.l    4(a3),a5
[00053014] 7002                      moveq.l    #2,d0
[00053016] 4e95                      jsr        (a5)
[00053018] 6008                      bra.s      ThermCancel_5
ThermCancel_4:
[0005301a] 2052                      movea.l    (a2),a0
[0005301c] 317c 0001 0268            move.w     #$0001,616(a0)
ThermCancel_5:
[00053022] 426c 0068                 clr.w      104(a4)
[00053026] 6006                      bra.s      ThermCancel_6
ThermCancel_3:
[00053028] 006b 0020 0056            ori.w      #$0020,86(a3)
ThermCancel_6:
[0005302e] 7008                      moveq.l    #8,d0
[00053030] c06c 0064                 and.w      100(a4),d0
[00053034] 6608                      bne.s      ThermCancel_1
[00053036] 2052                      movea.l    (a2),a0
[00053038] 216c 006a 0232            move.l     106(a4),562(a0)
ThermCancel_1:
[0005303e] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00053042] 4e75                      rts

ThermoClosed:
[00053044] 4e75                      rts

ThermoGEMScript:
[00053046] 7001                      moveq.l    #1,d0
[00053048] 4e75                      rts

		.data

TEXT_01:
[000d40a2]                           dc.w $3132
[000d40a4]                           dc.b '345678901234567890123456789012345678901234567890',0
TEXT_02:
[000d40d5]                           dc.b $00
TEXT_04:
[000d40d6]                           dc.b 'Abbrechen',0
TEXT_05:
[000d40e0]                           dc.b $00
TEXT_06:
[000d40e1]                           dc.b '100 %',0
[000d40e7]                           dc.b $00
TEDINFO_02:
[000d40e8] 000d40a2                  dc.l TEXT_01
[000d40ec] 000d40d5                  dc.l TEXT_02
[000d40f0] 000d40d5                  dc.l TEXT_02
[000d40f4]                           dc.b $00
[000d40f5]                           dc.b $05
[000d40f6]                           dc.b $00
[000d40f7]                           dc.b $06
[000d40f8]                           dc.b $00
[000d40f9]                           dc.b $00
[000d40fa]                           dc.w $1100
[000d40fc]                           dc.b $00
[000d40fd]                           dc.b $00
[000d40fe]                           dc.w $ffff
[000d4100]                           dc.b $00
[000d4101]                           dc.b $33
[000d4102]                           dc.b $00
[000d4103]                           dc.b $01
TEDINFO_03:
[000d4104] 000d40e1                  dc.l TEXT_06
[000d4108] 000d40d5                  TEXT_02
[000d410c] 000d40d5                  TEXT_02
[000d4110]                           dc.b $00
[000d4111]                           dc.b $03
[000d4112]                           dc.b $00
[000d4113]                           dc.b $06
[000d4114]                           dc.b $00
[000d4115]                           dc.b $02
[000d4116]                           dc.w $1100
[000d4118]                           dc.b $00
[000d4119]                           dc.b $00
[000d411a]                           dc.b $00
[000d411b]                           dc.b $00
[000d411c]                           dc.b $00
[000d411d]                           dc.b $06
[000d411e]                           dc.b $00
[000d411f]                           dc.b $01
TEDINFO_04:
[000d4120] 000d40e1                  dc.l TEXT_06
[000d4124] 000d40d5                  dc.l TEXT_02
[000d4128] 000d40d5                  dc.l TEXT_02
[000d412c]                           dc.b $00
[000d412d]                           dc.b $03
[000d412e]                           dc.b $00
[000d412f]                           dc.b $06
[000d4130]                           dc.b $00
[000d4131]                           dc.b $02
[000d4132]                           dc.w $1100
[000d4134]                           dc.b $00
[000d4135]                           dc.b $00
[000d4136]                           dc.w $ffff
[000d4138]                           dc.b $00
[000d4139]                           dc.b $06
[000d413a]                           dc.b $00
[000d413b]                           dc.b $01
A_3DBUTTON01:
[000d413c] 0005a4e2                  dc.l A_3Dbutton
[000d4140]                           dc.w $29f1
[000d4142]                           dc.w $0178
[000d4144] 00059318                  dc.l Auo_string
[000d4148]                           dc.b $00
[000d4149]                           dc.b $00
[000d414a]                           dc.b $00
[000d414b]                           dc.b $00
[000d414c]                           dc.b $00
[000d414d]                           dc.b $00
[000d414e]                           dc.b $00
[000d414f]                           dc.b $00
[000d4150]                           dc.b $00
[000d4151]                           dc.b $00
[000d4152]                           dc.b $00
[000d4153]                           dc.b $00
[000d4154]                           dc.b $00
[000d4155]                           dc.b $00
[000d4156]                           dc.b $00
[000d4157]                           dc.b $00
[000d4158]                           dc.b $00
[000d4159]                           dc.b $00
[000d415a]                           dc.b $00
[000d415b]                           dc.b $00
A_3DBUTTON02:
[000d415c] 0005a4e2                  dc.l A_3Dbutton
[000d4160]                           dc.w $2001
[000d4162]                           dc.w $9178
[000d4164] 00059318                  dc.l Auo_string
[000d4168]                           dc.b $00
[000d4169]                           dc.b $00
[000d416a]                           dc.b $00
[000d416b]                           dc.b $00
[000d416c]                           dc.b $00
[000d416d]                           dc.b $00
[000d416e]                           dc.b $00
[000d416f]                           dc.b $00
[000d4170]                           dc.b $00
[000d4171]                           dc.b $00
[000d4172]                           dc.b $00
[000d4173]                           dc.b $00
[000d4174]                           dc.b $00
[000d4175]                           dc.b $00
[000d4176]                           dc.b $00
[000d4177]                           dc.b $00
[000d4178]                           dc.b $00
[000d4179]                           dc.b $00
[000d417a]                           dc.b $00
[000d417b]                           dc.b $00
A_3DBUTTON04:
[000d417c] 0005a4e2                  dc.l A_3Dbutton
[000d4180]                           dc.w $2901
[000d4182]                           dc.w $0178
[000d4184] 00059318                  dc.l Auo_string
[000d4188] 000d40d6                  dc.l TEXT_04
[000d418c]                           dc.b $00
[000d418d]                           dc.b $00
[000d418e]                           dc.b $00
[000d418f]                           dc.b $00
[000d4190]                           dc.b $00
[000d4191]                           dc.b $00
[000d4192]                           dc.b $00
[000d4193]                           dc.b $00
[000d4194]                           dc.b $00
[000d4195]                           dc.b $00
[000d4196]                           dc.b $00
[000d4197]                           dc.b $00
[000d4198]                           dc.b $00
[000d4199]                           dc.b $00
[000d419a]                           dc.b $00
[000d419b]                           dc.b $00
A_3DBUTTON05:
[000d419c] 0005a4e2                  dc.l A_3Dbutton
[000d41a0]                           dc.w $29f1
[000d41a2]                           dc.w $0178
[000d41a4] 00059318                  dc.l Auo_string
[000d41a8]                           dc.b $00
[000d41a9]                           dc.b $00
[000d41aa]                           dc.b $00
[000d41ab]                           dc.b $00
[000d41ac]                           dc.b $00
[000d41ad]                           dc.b $00
[000d41ae]                           dc.b $00
[000d41af]                           dc.b $00
[000d41b0]                           dc.b $00
[000d41b1]                           dc.b $00
[000d41b2]                           dc.b $00
[000d41b3]                           dc.b $00
[000d41b4]                           dc.b $00
[000d41b5]                           dc.b $00
[000d41b6]                           dc.b $00
[000d41b7]                           dc.b $00
[000d41b8]                           dc.b $00
[000d41b9]                           dc.b $00
[000d41ba]                           dc.b $00
[000d41bb]                           dc.b $00
A_3DBUTTON06:
[000d41bc] 0005a4e2                  dc.l A_3Dbutton
[000d41c0]                           dc.b $29
[000d41c1]                           dc.b $f1
[000d41c2]                           dc.w $0178
[000d41c4] 00059318                  dc.l Auo_string
[000d41c8]                           dc.b $00
[000d41c9]                           dc.b $00
[000d41ca]                           dc.b $00
[000d41cb]                           dc.b $00
[000d41cc]                           dc.b $00
[000d41cd]                           dc.b $00
[000d41ce]                           dc.b $00
[000d41cf]                           dc.b $00
[000d41d0]                           dc.b $00
[000d41d1]                           dc.b $00
[000d41d2]                           dc.b $00
[000d41d3]                           dc.b $00
[000d41d4]                           dc.b $00
[000d41d5]                           dc.b $00
[000d41d6]                           dc.b $00
[000d41d7]                           dc.b $00
[000d41d8]                           dc.b $00
[000d41d9]                           dc.b $00
[000d41da]                           dc.b $00
[000d41db]                           dc.b $00
A_3DBUTTON07:
[000d41dc] 0005a4e2                  dc.l A_3Dbutton
[000d41e0]                           dc.w $29f1
[000d41e2]                           dc.w $0178
[000d41e4] 00059318                  dc.l Auo_string
[000d41e8]                           dc.b $00
[000d41e9]                           dc.b $00
[000d41ea]                           dc.b $00
[000d41eb]                           dc.b $00
[000d41ec]                           dc.b $00
[000d41ed]                           dc.b $00
[000d41ee]                           dc.b $00
[000d41ef]                           dc.b $00
[000d41f0]                           dc.b $00
[000d41f1]                           dc.b $00
[000d41f2]                           dc.b $00
[000d41f3]                           dc.b $00
[000d41f4]                           dc.b $00
[000d41f5]                           dc.b $00
[000d41f6]                           dc.b $00
[000d41f7]                           dc.b $00
[000d41f8]                           dc.b $00
[000d41f9]                           dc.b $00
[000d41fa]                           dc.b $00
[000d41fb]                           dc.b $00
A_3DBUTTON08:
[000d41fc] 0005a4e2                  dc.l A_3Dbutton
[000d4200]                           dc.w $29f1
[000d4202]                           dc.w $0178
[000d4204] 00059318                  dc.l Auo_string
[000d4208]                           dc.b $00
[000d4209]                           dc.b $00
[000d420a]                           dc.b $00
[000d420b]                           dc.b $00
[000d420c]                           dc.b $00
[000d420d]                           dc.b $00
[000d420e]                           dc.b $00
[000d420f]                           dc.b $00
[000d4210]                           dc.b $00
[000d4211]                           dc.b $00
[000d4212]                           dc.b $00
[000d4213]                           dc.b $00
[000d4214]                           dc.b $00
[000d4215]                           dc.b $00
[000d4216]                           dc.b $00
[000d4217]                           dc.b $00
[000d4218]                           dc.b $00
[000d4219]                           dc.b $00
[000d421a]                           dc.b $00
[000d421b]                           dc.b $00
ThermAObj:
[000d421c]                           dc.w $ffff
[000d421e]                           dc.b $00
[000d421f]                           dc.b $01
[000d4220]                           dc.b $00
[000d4221]                           dc.b $03
[000d4222]                           dc.b $00
[000d4223]                           dc.b $18
[000d4224]                           dc.b $00
[000d4225]                           dc.b $00
[000d4226]                           dc.b $00
[000d4227]                           dc.b $00
[000d4228] 000d413c                  dc.l A_3DBUTTON01
[000d422c]                           dc.b $00
[000d422d]                           dc.b $00
[000d422e]                           dc.b $00
[000d422f]                           dc.b $00
[000d4230]                           dc.b $00
[000d4231]                           dc.b $29
[000d4232]                           dc.w $0404
_01_ThermAObj:
[000d4234]                           dc.b $00
[000d4235]                           dc.b $03
[000d4236]                           dc.w $ffff
[000d4238]                           dc.b $ff
[000d4239]                           dc.b $ff
[000d423a]                           dc.b $00
[000d423b]                           dc.b $18
[000d423c]                           dc.b $00
[000d423d]                           dc.b $45
[000d423e]                           dc.b $00
[000d423f]                           dc.b $00
[000d4240] 000d417c                  dc.l A_3DBUTTON04
[000d4244]                           dc.b $00
[000d4245]                           dc.b $0d
[000d4246]                           dc.w $0c02
[000d4248]                           dc.b $00
[000d4249]                           dc.b $10
[000d424a]                           dc.b $00
[000d424b]                           dc.b $01
_01aThermAObj:
[000d424c] 00052fc2                  dc.l ThermCancel
[000d4250]                           dc.b $00
[000d4251]                           dc.b $00
[000d4252]                           dc.b $00
[000d4253]                           dc.b $00
[000d4254]                           dc.w $8000
[000d4256]                           dc.w $8841
[000d4258]                           dc.b $00
[000d4259]                           dc.b $00
[000d425a]                           dc.b $00
[000d425b]                           dc.b $00
[000d425c]                           dc.b $00
[000d425d]                           dc.b $00
[000d425e]                           dc.b $00
[000d425f]                           dc.b $00
[000d4260]                           dc.b $00
[000d4261]                           dc.b $00
[000d4262]                           dc.b $00
[000d4263]                           dc.b $00
_03_ThermAObj:
[000d4264]                           dc.b $00
[000d4265]                           dc.b $00
[000d4266]                           dc.b $00
[000d4267]                           dc.b $04
[000d4268]                           dc.b $00
[000d4269]                           dc.b $05
[000d426a]                           dc.b $00
[000d426b]                           dc.b $18
[000d426c]                           dc.b $00
[000d426d]                           dc.b $00
[000d426e]                           dc.b $00
[000d426f]                           dc.b $00
[000d4270] 000d415c                  dc.l A_3DBUTTON02
[000d4274]                           dc.b $00
[000d4275]                           dc.b $01
[000d4276]                           dc.b $00
[000d4277]                           dc.b $01
[000d4278]                           dc.b $00
[000d4279]                           dc.b $27
[000d427a]                           dc.w $0401
_04_ThermAObj:
[000d427c]                           dc.b $00
[000d427d]                           dc.b $05
[000d427e]                           dc.w $ffff
[000d4280]                           dc.w $ffff
[000d4282]                           dc.b $00
[000d4283]                           dc.b $18
[000d4284]                           dc.b $00
[000d4285]                           dc.b $00
[000d4286]                           dc.b $00
[000d4287]                           dc.b $00
[000d4288] 000d419c                  dc.l A_3DBUTTON05
[000d428c]                           dc.b $00
[000d428d]                           dc.b $00
[000d428e]                           dc.b $00
[000d428f]                           dc.b $00
[000d4290]                           dc.b $00
[000d4291]                           dc.b $0b
[000d4292]                           dc.w $0401
_05_ThermAObj:
[000d4294]                           dc.b $00
[000d4295]                           dc.b $03
[000d4296]                           dc.w $ffff
[000d4298]                           dc.b $ff
[000d4299]                           dc.b $ff
[000d429a]                           dc.b $00
[000d429b]                           dc.b $15
[000d429c]                           dc.b $00
[000d429d]                           dc.b $20
[000d429e]                           dc.b $00
[000d429f]                           dc.b $00
[000d42a0] 000d4120                  dc.l TEDINFO_04
[000d42a4]                           dc.b $00
[000d42a5]                           dc.b $11
[000d42a6]                           dc.w $0200
[000d42a8]                           dc.b $00
[000d42a9]                           dc.b $05
[000d42aa]                           dc.b $00
[000d42ab]                           dc.b $01
ThermObj:
[000d42ac]                           dc.w $ffff
[000d42ae]                           dc.b $00
[000d42af]                           dc.b $01
[000d42b0]                           dc.b $00
[000d42b1]                           dc.b $01
[000d42b2]                           dc.b $00
[000d42b3]                           dc.b $18
[000d42b4]                           dc.b $00
[000d42b5]                           dc.b $00
[000d42b6]                           dc.b $00
[000d42b7]                           dc.b $00
[000d42b8] 000d413c                  dc.l A_3DBUTTON01
[000d42bc]                           dc.b $00
[000d42bd]                           dc.b $00
[000d42be]                           dc.b $00
[000d42bf]                           dc.b $00
[000d42c0]                           dc.b $00
[000d42c1]                           dc.b $29
[000d42c2]                           dc.w $0403
_01_ThermObj:
[000d42c4]                           dc.b $00
[000d42c5]                           dc.b $00
[000d42c6]                           dc.b $00
[000d42c7]                           dc.b $02
[000d42c8]                           dc.b $00
[000d42c9]                           dc.b $03
[000d42ca]                           dc.b $00
[000d42cb]                           dc.b $18
[000d42cc]                           dc.b $00
[000d42cd]                           dc.b $00
[000d42ce]                           dc.b $00
[000d42cf]                           dc.b $00
[000d42d0] 000d415c                  dc.l A_3DBUTTON02
[000d42d4]                           dc.b $00
[000d42d5]                           dc.b $01
[000d42d6]                           dc.b $00
[000d42d7]                           dc.b $01
[000d42d8]                           dc.b $00
[000d42d9]                           dc.b $27
[000d42da]                           dc.w $0401
_02_ThermObj:
[000d42dc]                           dc.b $00
[000d42dd]                           dc.b $03
[000d42de]                           dc.w $ffff
[000d42e0]                           dc.w $ffff
[000d42e2]                           dc.b $00
[000d42e3]                           dc.b $18
[000d42e4]                           dc.b $00
[000d42e5]                           dc.b $00
[000d42e6]                           dc.b $00
[000d42e7]                           dc.b $00
[000d42e8] 000d41bc                  dc.l A_3DBUTTON06
[000d42ec]                           dc.b $00
[000d42ed]                           dc.b $00
[000d42ee]                           dc.b $00
[000d42ef]                           dc.b $00
[000d42f0]                           dc.b $00
[000d42f1]                           dc.b $0b
[000d42f2]                           dc.w $0401
_03_ThermObj:
[000d42f4]                           dc.b $00
[000d42f5]                           dc.b $01
[000d42f6]                           dc.w $ffff
[000d42f8]                           dc.w $ffff
[000d42fa]                           dc.b $00
[000d42fb]                           dc.b $15
[000d42fc]                           dc.b $00
[000d42fd]                           dc.b $20
[000d42fe]                           dc.b $00
[000d42ff]                           dc.b $00
[000d4300] 000d4120                  dc.l TEDINFO_04
[000d4304]                           dc.b $00
[000d4305]                           dc.b $11
[000d4306]                           dc.w $0200
[000d4308]                           dc.b $00
[000d4309]                           dc.b $05
[000d430a]                           dc.b $00
[000d430b]                           dc.b $01
ThermTAObj:
[000d430c]                           dc.w $ffff
[000d430e]                           dc.b $00
[000d430f]                           dc.b $01
[000d4310]                           dc.b $00
[000d4311]                           dc.b $06
[000d4312]                           dc.b $00
[000d4313]                           dc.b $18
[000d4314]                           dc.b $00
[000d4315]                           dc.b $00
[000d4316]                           dc.b $00
[000d4317]                           dc.b $00
[000d4318] 000d413c                  dc.l A_3DBUTTON01
[000d431c]                           dc.b $00
[000d431d]                           dc.b $00
[000d431e]                           dc.b $00
[000d431f]                           dc.b $00
[000d4320]                           dc.b $00
[000d4321]                           dc.b $29
[000d4322]                           dc.w $0405
_01_ThermTAObj:
[000d4324]                           dc.b $00
[000d4325]                           dc.b $04
[000d4326]                           dc.b $00
[000d4327]                           dc.b $02
[000d4328]                           dc.b $00
[000d4329]                           dc.b $03
[000d432a]                           dc.b $00
[000d432b]                           dc.b $18
[000d432c]                           dc.b $00
[000d432d]                           dc.b $00
[000d432e]                           dc.b $00
[000d432f]                           dc.b $00
[000d4330] 000d415c                  dc.l A_3DBUTTON02
[000d4334]                           dc.b $00
[000d4335]                           dc.b $01
[000d4336]                           dc.b $00
[000d4337]                           dc.b $02
[000d4338]                           dc.b $00
[000d4339]                           dc.b $27
[000d433a]                           dc.w $0401
_02_ThermTAObj:
[000d433c]                           dc.b $00
[000d433d]                           dc.b $03
[000d433e]                           dc.w $ffff
[000d4340]                           dc.w $ffff
[000d4342]                           dc.b $00
[000d4343]                           dc.b $18
[000d4344]                           dc.b $00
[000d4345]                           dc.b $00
[000d4346]                           dc.b $00
[000d4347]                           dc.b $00
[000d4348] 000d41dc                  dc.l A_3DBUTTON07
[000d434c]                           dc.b $00
[000d434d]                           dc.b $00
[000d434e]                           dc.b $00
[000d434f]                           dc.b $00
[000d4350]                           dc.b $00
[000d4351]                           dc.b $0b
[000d4352]                           dc.w $0401
_03_ThermTAObj:
[000d4354]                           dc.b $00
[000d4355]                           dc.b $01
[000d4356]                           dc.w $ffff
[000d4358]                           dc.w $ffff
[000d435a]                           dc.b $00
[000d435b]                           dc.b $15
[000d435c]                           dc.b $00
[000d435d]                           dc.b $00
[000d435e]                           dc.b $00
[000d435f]                           dc.b $00
[000d4360] 000d4120                  dc.l TEDINFO_04
[000d4364]                           dc.b $00
[000d4365]                           dc.b $11
[000d4366]                           dc.w $0200
[000d4368]                           dc.b $00
[000d4369]                           dc.b $05
[000d436a]                           dc.b $00
[000d436b]                           dc.b $01
_04_ThermTAObj:
[000d436c]                           dc.b $00
[000d436d]                           dc.b $06
[000d436e]                           dc.w $ffff
[000d4370]                           dc.w $ffff
[000d4372]                           dc.b $00
[000d4373]                           dc.b $18
[000d4374]                           dc.b $00
[000d4375]                           dc.b $45
[000d4376]                           dc.b $00
[000d4377]                           dc.b $00
[000d4378] 000d417c                  dc.l A_3DBUTTON04
[000d437c]                           dc.b $00
[000d437d]                           dc.b $0d
[000d437e]                           dc.w $0c03
[000d4380]                           dc.b $00
[000d4381]                           dc.b $10
[000d4382]                           dc.b $00
[000d4383]                           dc.b $01
_05_ThermTAObj:
[000d4384] 00052fc2                  dc.l ThermCancel
[000d4388]                           dc.b $00
[000d4389]                           dc.b $00
[000d438a]                           dc.b $00
[000d438b]                           dc.b $00
[000d438c]                           dc.w $8000
[000d438e]                           dc.w $8841
[000d4390]                           dc.b $00
[000d4391]                           dc.b $00
[000d4392]                           dc.b $00
[000d4393]                           dc.b $00
[000d4394]                           dc.b $00
[000d4395]                           dc.b $00
[000d4396]                           dc.b $00
[000d4397]                           dc.b $00
[000d4398]                           dc.b $00
[000d4399]                           dc.b $00
[000d439a]                           dc.b $00
[000d439b]                           dc.b $00
_05aThermTAObj:
[000d439c]                           dc.b $00
[000d439d]                           dc.b $00
[000d439e]                           dc.w $ffff
[000d43a0]                           dc.b $ff
[000d43a1]                           dc.b $ff
[000d43a2]                           dc.b $00
[000d43a3]                           dc.b $15
[000d43a4]                           dc.b $00
[000d43a5]                           dc.b $20
[000d43a6]                           dc.b $00
[000d43a7]                           dc.b $00
[000d43a8] 000d40e8                  dc.l TEDINFO_02
[000d43ac]                           dc.b $00
[000d43ad]                           dc.b $01
[000d43ae]                           dc.b $00
[000d43af]                           dc.b $00
[000d43b0]                           dc.b $00
[000d43b1]                           dc.b $28
[000d43b2]                           dc.b $00
[000d43b3]                           dc.b $02
ThermTObj:
[000d43b4]                           dc.w $ffff
[000d43b6]                           dc.b $00
[000d43b7]                           dc.b $01
[000d43b8]                           dc.b $00
[000d43b9]                           dc.b $04
[000d43ba]                           dc.b $00
[000d43bb]                           dc.b $18
[000d43bc]                           dc.b $00
[000d43bd]                           dc.b $00
[000d43be]                           dc.b $00
[000d43bf]                           dc.b $00
[000d43c0] 000d413c                  dc.l A_3DBUTTON01
[000d43c4]                           dc.b $00
[000d43c5]                           dc.b $00
[000d43c6]                           dc.b $00
[000d43c7]                           dc.b $00
[000d43c8]                           dc.b $00
[000d43c9]                           dc.b $29
[000d43ca]                           dc.w $0404
_01_ThermTObj:
[000d43cc]                           dc.b $00
[000d43cd]                           dc.b $04
[000d43ce]                           dc.b $00
[000d43cf]                           dc.b $02
[000d43d0]                           dc.b $00
[000d43d1]                           dc.b $03
[000d43d2]                           dc.b $00
[000d43d3]                           dc.b $18
[000d43d4]                           dc.b $00
[000d43d5]                           dc.b $00
[000d43d6]                           dc.b $00
[000d43d7]                           dc.b $00
[000d43d8] 000d415c                  dc.l A_3DBUTTON02
[000d43dc]                           dc.b $00
[000d43dd]                           dc.b $01
[000d43de]                           dc.b $00
[000d43df]                           dc.b $02
[000d43e0]                           dc.b $00
[000d43e1]                           dc.b $27
[000d43e2]                           dc.w $0401
_02_ThermTObj:
[000d43e4]                           dc.b $00
[000d43e5]                           dc.b $03
[000d43e6]                           dc.w $ffff
[000d43e8]                           dc.w $ffff
[000d43ea]                           dc.b $00
[000d43eb]                           dc.b $18
[000d43ec]                           dc.b $00
[000d43ed]                           dc.b $00
[000d43ee]                           dc.b $00
[000d43ef]                           dc.b $00
[000d43f0] 000d41fc                  dc.l A_3DBUTTON08
[000d43f4]                           dc.b $00
[000d43f5]                           dc.b $00
[000d43f6]                           dc.b $00
[000d43f7]                           dc.b $00
[000d43f8]                           dc.b $00
[000d43f9]                           dc.b $0b
[000d43fa]                           dc.b $04
[000d43fb]                           dc.b $01
_03_ThermTObj:
[000d43fc]                           dc.b $00
[000d43fd]                           dc.b $01
[000d43fe]                           dc.w $ffff
[000d4400]                           dc.w $ffff
[000d4402]                           dc.b $00
[000d4403]                           dc.b $15
[000d4404]                           dc.b $00
[000d4405]                           dc.b $00
[000d4406]                           dc.b $00
[000d4407]                           dc.b $00
[000d4408] 000d4104                  dc.l TEDINFO_03
[000d440c]                           dc.b $00
[000d440d]                           dc.b $11
[000d440e]                           dc.w $0200
[000d4410]                           dc.b $00
[000d4411]                           dc.b $05
[000d4412]                           dc.b $00
[000d4413]                           dc.b $01
_04_ThermTObj:
[000d4414]                           dc.b $00
[000d4415]                           dc.b $00
[000d4416]                           dc.w $ffff
[000d4418]                           dc.w $ffff
[000d441a]                           dc.b $00
[000d441b]                           dc.b $15
[000d441c]                           dc.b $00
[000d441d]                           dc.b $20
[000d441e]                           dc.b $00
[000d441f]                           dc.b $00
[000d4420] 000d40e8                  dc.l TEDINFO_02
[000d4424]                           dc.b $00
[000d4425]                           dc.b $01
[000d4426]                           dc.b $00
[000d4427]                           dc.b $00
[000d4428]                           dc.b $00
[000d4429]                           dc.b $28
[000d442a]                           dc.b $00
[000d442b]                           dc.b $02
ThermWind:
[000d442c]                           dc.b $00
[000d442d]                           dc.b $00
[000d442e]                           dc.b $00
[000d442f]                           dc.b $00
[000d4430] 00052d92                  dc.l ThermoService
[000d4434] 00052bee                  dc.l ThermoCreate
[000d4438] 0004f69e                  dc.l Awi_open
[000d443c] 00052e52                  dc.l ThermoInit
[000d4440]                           dc.b $00
[000d4441]                           dc.b $00
[000d4442]                           dc.b $00
[000d4443]                           dc.b $00
[000d4444]                           dc.b $00
[000d4445]                           dc.b $00
[000d4446]                           dc.b $00
[000d4447]                           dc.b $00
[000d4448]                           dc.b $00
[000d4449]                           dc.b $00
[000d444a]                           dc.b $00
[000d444b]                           dc.b $00
[000d444c]                           dc.w $ffff
[000d444e]                           dc.w $2009
[000d4450]                           dc.b $00
[000d4451]                           dc.b $00
[000d4452]                           dc.b $00
[000d4453]                           dc.b $00
[000d4454]                           dc.b $00
[000d4455]                           dc.b $78
[000d4456]                           dc.b $00
[000d4457]                           dc.b $32
[000d4458]                           dc.b $00
[000d4459]                           dc.b $00
[000d445a]                           dc.b $00
[000d445b]                           dc.b $00
[000d445c]                           dc.b $00
[000d445d]                           dc.b $00
[000d445e]                           dc.b $00
[000d445f]                           dc.b $00
[000d4460]                           dc.b $00
[000d4461]                           dc.b $00
[000d4462]                           dc.b $00
[000d4463]                           dc.b $00
[000d4464]                           dc.b $00
[000d4465]                           dc.b $00
[000d4466]                           dc.b $00
[000d4467]                           dc.b $00
[000d4468]                           dc.w $ffff
[000d446a]                           dc.w $ffff
[000d446c]                           dc.w $ffff
[000d446e]                           dc.b $ff
[000d446f]                           dc.b $ff
[000d4470]                           dc.b $00
[000d4471]                           dc.b $00
[000d4472]                           dc.b $00
[000d4473]                           dc.b $00
[000d4474]                           dc.w $f8f8
[000d4476] 000d40e0                  dc.l TEXT_05
[000d447a] 000d40d5                  dc.l TEXT_02
[000d447e]                           dc.b $00
[000d447f]                           dc.b $00
[000d4480]                           dc.b $00
[000d4481]                           dc.b $00
[000d4482]                           dc.b $00
[000d4483]                           dc.b $00
[000d4484]                           dc.w $ffff
[000d4486]                           dc.b $00
[000d4487]                           dc.b $00
[000d4488]                           dc.b $00
[000d4489]                           dc.b $00
[000d448a]                           dc.b $00
[000d448b]                           dc.b $00
[000d448c]                           dc.b $00
[000d448d]                           dc.b $00
[000d448e] 0005ef2c                  dc.l Awi_keys
[000d4492] 0004b600                  dc.l Awi_obchange
[000d4496] 0004b8cc                  dc.l Awi_redraw
[000d449a] 00050454                  dc.l Awi_topped
[000d449e] 00053044                  dc.l ThermoClosed
[000d44a2] 00050496                  dc.l Awi_fulled
[000d44a6] 0004bcc8                  dc.l Awi_arrowed
[000d44aa] 0004beea                  dc.l Awi_hslid
[000d44ae] 0004bf56                  dc.l Awi_vslid
[000d44b2] 000506ca                  dc.l Awi_sized
[000d44b6] 000507bc                  dc.l Awi_moved
[000d44ba] 00050f9c                  dc.l Awi_iconify
[000d44be] 0005117c                  dc.l Awi_uniconify
[000d44c2] 00053046                  dc.l ThermoGEMScript
[000d44c6]                           dc.b $00
[000d44c7]                           dc.b $00
[000d44c8]                           dc.b $00
[000d44c9]                           dc.b $00
[000d44ca]                           dc.b $00
[000d44cb]                           dc.b $00
[000d44cc]                           dc.b $00
[000d44cd]                           dc.b $00
ThermObjs:
[000d44ce] 000d42ac                  dc.l ThermObj
[000d44d2] 000d43b4                  dc.l ThermTObj
[000d44d6] 000d421c                  dc.l ThermAObj
[000d44da] 000d430c                  dc.l ThermTAObj
textNr:
[000d44de]                           dc.w $ffff
[000d44e0]                           dc.b $00
[000d44e1]                           dc.b $04
[000d44e2]                           dc.w $ffff
[000d44e4]                           dc.b $00
[000d44e5]                           dc.b $06
laufBNr:
[000d44e6]                           dc.b $00
[000d44e7]                           dc.b $02
[000d44e8]                           dc.b $00
[000d44e9]                           dc.b $02
[000d44ea]                           dc.b $00
[000d44eb]                           dc.b $04
[000d44ec]                           dc.b $00
[000d44ed]                           dc.b $02
fixBNr:
[000d44ee]                           dc.b $00
[000d44ef]                           dc.b $01
[000d44f0]                           dc.b $00
[000d44f1]                           dc.b $01
[000d44f2]                           dc.b $00
[000d44f3]                           dc.b $03
[000d44f4]                           dc.b $00
[000d44f5]                           dc.b $01
prozNr:
[000d44f6]                           dc.b $00
[000d44f7]                           dc.b $03
[000d44f8]                           dc.b $00
[000d44f9]                           dc.b $03
[000d44fa]                           dc.b $00
[000d44fb]                           dc.b $05
[000d44fc]                           dc.b $00
[000d44fd]                           dc.b $03
[000d44fe]                           dc.b '%i %%',0
