
Aev_InitVA:
[00055cfc] 4fef fff0                 lea.l      -16(a7),a7
[00055d00] 2079 0010 1f12            movea.l    ACSblk,a0
[00055d06] 3028 0238                 move.w     568(a0),d0
[00055d0a] 6700 00bc                 beq        Aev_InitVA_1
[00055d0e] 41f9 000d 4a8c            lea.l      $000D4A8C,a0
[00055d14] 4eb9 0005 2908            jsr        Ash_getenv
[00055d1a] 2f48 000a                 move.l     a0,10(a7)
[00055d1e] 3f7c ffff 000e            move.w     #$FFFF,14(a7)
[00055d24] 202f 000a                 move.l     10(a7),d0
[00055d28] 672a                      beq.s      Aev_InitVA_2
[00055d2a] 7008                      moveq.l    #8,d0
[00055d2c] 226f 000a                 movea.l    10(a7),a1
[00055d30] 41d7                      lea.l      (a7),a0
[00055d32] 4eb9 0007 6a1a            jsr        strncpy
[00055d38] 7008                      moveq.l    #8,d0
[00055d3a] 41d7                      lea.l      (a7),a0
[00055d3c] 4eb9 0004 3b5e            jsr        Ast_adl
[00055d42] 2279 000d 99d6            movea.l    _globl,a1
[00055d48] 41d7                      lea.l      (a7),a0
[00055d4a] 4eb9 0006 a886            jsr        mt_appl_find
[00055d50] 3f40 000e                 move.w     d0,14(a7)
Aev_InitVA_2:
[00055d54] 302f 000e                 move.w     14(a7),d0
[00055d58] 6a60                      bpl.s      Aev_InitVA_3
[00055d5a] 2279 000d 99d6            movea.l    _globl,a1
[00055d60] 41f9 000d 4a95            lea.l      $000D4A95,a0
[00055d66] 4eb9 0006 a886            jsr        mt_appl_find
[00055d6c] 3f40 000e                 move.w     d0,14(a7)
[00055d70] 6a48                      bpl.s      Aev_InitVA_3
[00055d72] 2279 000d 99d6            movea.l    _globl,a1
[00055d78] 41f9 000d 4a9e            lea.l      $000D4A9E,a0
[00055d7e] 4eb9 0006 a886            jsr        mt_appl_find
[00055d84] 3f40 000e                 move.w     d0,14(a7)
[00055d88] 6a30                      bpl.s      Aev_InitVA_3
[00055d8a] 2279 000d 99d6            movea.l    _globl,a1
[00055d90] 41f9 000d 4aa7            lea.l      $000D4AA7,a0
[00055d96] 4eb9 0006 a886            jsr        mt_appl_find
[00055d9c] 3f40 000e                 move.w     d0,14(a7)
[00055da0] 6a18                      bpl.s      Aev_InitVA_3
[00055da2] 2279 000d 99d6            movea.l    _globl,a1
[00055da8] 41f9 000d 4ab0            lea.l      $000D4AB0,a0
[00055dae] 4eb9 0006 a886            jsr        mt_appl_find
[00055db4] 3f40 000e                 move.w     d0,14(a7)
[00055db8] 6b0e                      bmi.s      Aev_InitVA_1
Aev_InitVA_3:
[00055dba] 4241                      clr.w      d1
[00055dbc] 91c8                      suba.l     a0,a0
[00055dbe] 302f 000e                 move.w     14(a7),d0
[00055dc2] 4eb9 0005 6106            jsr        Aev_AvProtokoll
Aev_InitVA_1:
[00055dc8] 7001                      moveq.l    #1,d0
[00055dca] 4fef 0010                 lea.l      16(a7),a7
[00055dce] 4e75                      rts

Aev_ExitVA:
[00055dd0] 7001                      moveq.l    #1,d0
[00055dd2] 4e75                      rts

VaDataDelete:
[00055dd4] 4e75                      rts

Aev_GetAvExit:
[00055dd6] 4fef fff4                 lea.l      -12(a7),a7
[00055dda] 2f48 0008                 move.l     a0,8(a7)
[00055dde] 206f 0008                 movea.l    8(a7),a0
[00055de2] 2f50 0004                 move.l     (a0),4(a7)
[00055de6] 206f 0004                 movea.l    4(a7),a0
[00055dea] 3028 0002                 move.w     2(a0),d0
[00055dee] 4eb9 0005 3fb0            jsr        Aev_DDSearch
[00055df4] 2e88                      move.l     a0,(a7)
[00055df6] 2017                      move.l     (a7),d0
[00055df8] 6724                      beq.s      Aev_GetAvExit_1
[00055dfa] 70fb                      moveq.l    #-5,d0
[00055dfc] 2057                      movea.l    (a7),a0
[00055dfe] c0a8 0002                 and.l      2(a0),d0
[00055e02] 670c                      beq.s      Aev_GetAvExit_2
[00055e04] 2057                      movea.l    (a7),a0
[00055e06] 02a8 ffff fffb 0002       andi.l     #$FFFFFFFB,2(a0)
[00055e0e] 600e                      bra.s      Aev_GetAvExit_1
Aev_GetAvExit_2:
[00055e10] 206f 0004                 movea.l    4(a7),a0
[00055e14] 3028 0002                 move.w     2(a0),d0
[00055e18] 4eb9 0005 40c6            jsr        Aev_DDDelete
Aev_GetAvExit_1:
[00055e1e] 7001                      moveq.l    #1,d0
[00055e20] 4fef 000c                 lea.l      12(a7),a7
[00055e24] 4e75                      rts

Aev_GetVaProtoStatus:
[00055e26] 2f0a                      move.l     a2,-(a7)
[00055e28] 4fef fff4                 lea.l      -12(a7),a7
[00055e2c] 2f48 0008                 move.l     a0,8(a7)
[00055e30] 206f 0008                 movea.l    8(a7),a0
[00055e34] 2f50 0004                 move.l     (a0),4(a7)
[00055e38] 206f 0004                 movea.l    4(a7),a0
[00055e3c] 2ea8 000c                 move.l     12(a0),(a7)
[00055e40] 4241                      clr.w      d1
[00055e42] 70ff                      moveq.l    #-1,d0
[00055e44] 2057                      movea.l    (a7),a0
[00055e46] 4eb9 0004 7ff8            jsr        Ax_memCheck
[00055e4c] 4a40                      tst.w      d0
[00055e4e] 671c                      beq.s      Aev_GetVaProtoStatus_1
[00055e50] 2257                      movea.l    (a7),a1
[00055e52] 206f 0004                 movea.l    4(a7),a0
[00055e56] 5c48                      addq.w     #6,a0
[00055e58] 7204                      moveq.l    #4,d1
[00055e5a] 246f 0004                 movea.l    4(a7),a2
[00055e5e] 302a 0002                 move.w     2(a2),d0
[00055e62] 4eb9 0005 3fe4            jsr        Aev_DDAdd
[00055e68] 6006                      bra.s      Aev_GetVaProtoStatus_2
[00055e6a] 6004                      bra.s      Aev_GetVaProtoStatus_2
Aev_GetVaProtoStatus_1:
[00055e6c] 4240                      clr.w      d0
[00055e6e] 4e71                      nop
Aev_GetVaProtoStatus_2:
[00055e70] 4fef 000c                 lea.l      12(a7),a7
[00055e74] 245f                      movea.l    (a7)+,a2
[00055e76] 4e75                      rts

Aev_GetVaStart:
[00055e78] 2f0a                      move.l     a2,-(a7)
[00055e7a] 4fef fff2                 lea.l      -14(a7),a7
[00055e7e] 2f48 000a                 move.l     a0,10(a7)
[00055e82] 206f 000a                 movea.l    10(a7),a0
[00055e86] 2f50 0006                 move.l     (a0),6(a7)
[00055e8a] 206f 0006                 movea.l    6(a7),a0
[00055e8e] 2f68 0006 0002            move.l     6(a0),2(a7)
[00055e94] 202f 0002                 move.l     2(a7),d0
[00055e98] 6736                      beq.s      Aev_GetVaStart_1
[00055e9a] 4241                      clr.w      d1
[00055e9c] 70ff                      moveq.l    #-1,d0
[00055e9e] 206f 0002                 movea.l    2(a7),a0
[00055ea2] 4eb9 0004 7ff8            jsr        Ax_memCheck
[00055ea8] 4a40                      tst.w      d0
[00055eaa] 6724                      beq.s      Aev_GetVaStart_1
[00055eac] 226f 0006                 movea.l    6(a7),a1
[00055eb0] 2f09                      move.l     a1,-(a7)
[00055eb2] 4eb9 0004 e608            jsr        Awi_root
[00055eb8] 2f08                      move.l     a0,-(a7)
[00055eba] 4eb9 0004 e608            jsr        Awi_root
[00055ec0] 2468 0004                 movea.l    4(a0),a2
[00055ec4] 205f                      movea.l    (a7)+,a0
[00055ec6] 701b                      moveq.l    #27,d0
[00055ec8] 225f                      movea.l    (a7)+,a1
[00055eca] 4e92                      jsr        (a2)
[00055ecc] 3e80                      move.w     d0,(a7)
[00055ece] 6002                      bra.s      Aev_GetVaStart_2
Aev_GetVaStart_1:
[00055ed0] 4257                      clr.w      (a7)
Aev_GetVaStart_2:
[00055ed2] 206f 0002                 movea.l    2(a7),a0
[00055ed6] 3217                      move.w     (a7),d1
[00055ed8] 226f 0006                 movea.l    6(a7),a1
[00055edc] 3029 0002                 move.w     2(a1),d0
[00055ee0] 4eb9 0005 62d6            jsr        Aev_AvStarted
[00055ee6] 7001                      moveq.l    #1,d0
[00055ee8] 4fef 000e                 lea.l      14(a7),a7
[00055eec] 245f                      movea.l    (a7)+,a2
[00055eee] 4e75                      rts

Aev_GetAvStarted:
[00055ef0] 2f0a                      move.l     a2,-(a7)
[00055ef2] 4fef ffca                 lea.l      -54(a7),a7
[00055ef6] 2f48 0032                 move.l     a0,50(a7)
[00055efa] 206f 0032                 movea.l    50(a7),a0
[00055efe] 2f50 002e                 move.l     (a0),46(a7)
[00055f02] 3f7c 4711 0004            move.w     #$4711,4(a7)
[00055f08] 206f 002e                 movea.l    46(a7),a0
[00055f0c] 2ea8 0006                 move.l     6(a0),(a7)
[00055f10] 206f 002e                 movea.l    46(a7),a0
[00055f14] 3f68 0002 000a            move.w     2(a0),10(a7)
[00055f1a] 3f7c 0001 000c            move.w     #$0001,12(a7)
[00055f20] 41ef 0004                 lea.l      4(a7),a0
[00055f24] 2f48 000e                 move.l     a0,14(a7)
[00055f28] 42af 0012                 clr.l      18(a7)
[00055f2c] 42af 0016                 clr.l      22(a7)
[00055f30] 206f 002e                 movea.l    46(a7),a0
[00055f34] 5c48                      addq.w     #6,a0
[00055f36] 2f48 001a                 move.l     a0,26(a7)
[00055f3a] 206f 002e                 movea.l    46(a7),a0
[00055f3e] 5048                      addq.w     #8,a0
[00055f40] 2f48 001e                 move.l     a0,30(a7)
[00055f44] 42af 0022                 clr.l      34(a7)
[00055f48] 42af 0026                 clr.l      38(a7)
[00055f4c] 42af 002a                 clr.l      42(a7)
[00055f50] 4879 0005 3d76            pea.l      Aev_CmpMsgInList
[00055f56] 43ef 000e                 lea.l      14(a7),a1
[00055f5a] 2079 000d 2c50            movea.l    SentMsg,a0
[00055f60] 2479 000d 2c50            movea.l    SentMsg,a2
[00055f66] 246a 0020                 movea.l    32(a2),a2
[00055f6a] 4e92                      jsr        (a2)
[00055f6c] 584f                      addq.w     #4,a7
[00055f6e] 2f48 0006                 move.l     a0,6(a7)
[00055f72] 202f 0006                 move.l     6(a7),d0
[00055f76] 6744                      beq.s      Aev_GetAvStarted_1
[00055f78] 206f 0006                 movea.l    6(a7),a0
[00055f7c] 2028 0002                 move.l     2(a0),d0
[00055f80] 671c                      beq.s      Aev_GetAvStarted_2
[00055f82] 2257                      movea.l    (a7),a1
[00055f84] 303c 0191                 move.w     #$0191,d0
[00055f88] 206f 0006                 movea.l    6(a7),a0
[00055f8c] 2068 0002                 movea.l    2(a0),a0
[00055f90] 246f 0006                 movea.l    6(a7),a2
[00055f94] 246a 0002                 movea.l    2(a2),a2
[00055f98] 246a 0004                 movea.l    4(a2),a2
[00055f9c] 4e92                      jsr        (a2)
Aev_GetAvStarted_2:
[00055f9e] 4879 0006 2c64            pea.l      Alu_ptrCmp
[00055fa4] 226f 000a                 movea.l    10(a7),a1
[00055fa8] 2079 000d 2c50            movea.l    SentMsg,a0
[00055fae] 2479 000d 2c50            movea.l    SentMsg,a2
[00055fb4] 246a 0020                 movea.l    32(a2),a2
[00055fb8] 4e92                      jsr        (a2)
[00055fba] 584f                      addq.w     #4,a7
Aev_GetAvStarted_1:
[00055fbc] 2057                      movea.l    (a7),a0
[00055fbe] 4eb9 0004 7fa6            jsr        Ax_glfree
[00055fc4] 7001                      moveq.l    #1,d0
[00055fc6] 4fef 0036                 lea.l      54(a7),a7
[00055fca] 245f                      movea.l    (a7)+,a2
[00055fcc] 4e75                      rts

Aev_GetAvSendKey:
[00055fce] 514f                      subq.w     #8,a7
[00055fd0] 2f48 0004                 move.l     a0,4(a7)
[00055fd4] 206f 0004                 movea.l    4(a7),a0
[00055fd8] 2e90                      move.l     (a0),(a7)
[00055fda] 2057                      movea.l    (a7),a0
[00055fdc] 3028 0006                 move.w     6(a0),d0
[00055fe0] 662a                      bne.s      Aev_GetAvSendKey_1
[00055fe2] 2057                      movea.l    (a7),a0
[00055fe4] 0c68 5048 000a            cmpi.w     #$5048,10(a0)
[00055fea] 6620                      bne.s      Aev_GetAvSendKey_1
[00055fec] 2079 0010 1f12            movea.l    ACSblk,a0
[00055ff2] 4268 0266                 clr.w      614(a0)
[00055ff6] 2057                      movea.l    (a7),a0
[00055ff8] 3028 0008                 move.w     8(a0),d0
[00055ffc] c07c 00ff                 and.w      #$00FF,d0
[00056000] 2079 0010 1f12            movea.l    ACSblk,a0
[00056006] 3140 02ce                 move.w     d0,718(a0)
[0005600a] 602a                      bra.s      Aev_GetAvSendKey_2
Aev_GetAvSendKey_1:
[0005600c] 2057                      movea.l    (a7),a0
[0005600e] 2279 0010 1f12            movea.l    ACSblk,a1
[00056014] 3368 0006 0266            move.w     6(a0),614(a1)
[0005601a] 2057                      movea.l    (a7),a0
[0005601c] 3228 0006                 move.w     6(a0),d1
[00056020] 2057                      movea.l    (a7),a0
[00056022] 3028 0008                 move.w     8(a0),d0
[00056026] 4eb9 0004 1e3e            jsr        nkc_gemks2n
[0005602c] 2079 0010 1f12            movea.l    ACSblk,a0
[00056032] 3140 02ce                 move.w     d0,718(a0)
Aev_GetAvSendKey_2:
[00056036] 91c8                      suba.l     a0,a0
[00056038] 4eb9 0004 6522            jsr        evkeybrd
[0005603e] 5240                      addq.w     #1,d0
[00056040] 6d04                      blt.s      Aev_GetAvSendKey_3
[00056042] 7001                      moveq.l    #1,d0
[00056044] 6002                      bra.s      Aev_GetAvSendKey_4
Aev_GetAvSendKey_3:
[00056046] 4240                      clr.w      d0
Aev_GetAvSendKey_4:
[00056048] 504f                      addq.w     #8,a7
[0005604a] 4e75                      rts

Aev_GetAvSendClick:
[0005604c] 514f                      subq.w     #8,a7
[0005604e] 2f48 0004                 move.l     a0,4(a7)
[00056052] 206f 0004                 movea.l    4(a7),a0
[00056056] 2e90                      move.l     (a0),(a7)
[00056058] 2057                      movea.l    (a7),a0
[0005605a] 2279 0010 1f12            movea.l    ACSblk,a1
[00056060] 3368 0006 0262            move.w     6(a0),610(a1)
[00056066] 2057                      movea.l    (a7),a0
[00056068] 2279 0010 1f12            movea.l    ACSblk,a1
[0005606e] 3368 0008 0264            move.w     8(a0),612(a1)
[00056074] 2057                      movea.l    (a7),a0
[00056076] 2279 0010 1f12            movea.l    ACSblk,a1
[0005607c] 3368 000a 02ca            move.w     10(a0),714(a1)
[00056082] 2057                      movea.l    (a7),a0
[00056084] 2279 0010 1f12            movea.l    ACSblk,a1
[0005608a] 3368 000c 0266            move.w     12(a0),614(a1)
[00056090] 2057                      movea.l    (a7),a0
[00056092] 2279 0010 1f12            movea.l    ACSblk,a1
[00056098] 3368 000e 02cc            move.w     14(a0),716(a1)
[0005609e] 2079 0010 1f12            movea.l    ACSblk,a0
[000560a4] 3228 02cc                 move.w     716(a0),d1
[000560a8] 2079 0010 1f12            movea.l    ACSblk,a0
[000560ae] 3028 02ca                 move.w     714(a0),d0
[000560b2] 4eb9 0004 69f2            jsr        evbutton
[000560b8] 4a40                      tst.w      d0
[000560ba] 6b04                      bmi.s      Aev_GetAvSendClick_1
[000560bc] 7001                      moveq.l    #1,d0
[000560be] 6002                      bra.s      Aev_GetAvSendClick_2
Aev_GetAvSendClick_1:
[000560c0] 4240                      clr.w      d0
Aev_GetAvSendClick_2:
[000560c2] 504f                      addq.w     #8,a7
[000560c4] 4e75                      rts

Aev_GetVaPathUpdate:
[000560c6] 4fef fff4                 lea.l      -12(a7),a7
[000560ca] 2f48 0008                 move.l     a0,8(a7)
[000560ce] 206f 0008                 movea.l    8(a7),a0
[000560d2] 2f50 0004                 move.l     (a0),4(a7)
[000560d6] 206f 0004                 movea.l    4(a7),a0
[000560da] 2ea8 0006                 move.l     6(a0),(a7)
[000560de] 2017                      move.l     (a7),d0
[000560e0] 671c                      beq.s      Aev_GetVaPathUpdate_1
[000560e2] 4241                      clr.w      d1
[000560e4] 70ff                      moveq.l    #-1,d0
[000560e6] 2057                      movea.l    (a7),a0
[000560e8] 4eb9 0004 7ff8            jsr        Ax_memCheck
[000560ee] 4a40                      tst.w      d0
[000560f0] 670c                      beq.s      Aev_GetVaPathUpdate_1
[000560f2] 2057                      movea.l    (a7),a0
[000560f4] 303c 03ea                 move.w     #$03EA,d0
[000560f8] 4eb9 0004 ef62            jsr        Awi_sendall
Aev_GetVaPathUpdate_1:
[000560fe] 7001                      moveq.l    #1,d0
[00056100] 4fef 000c                 lea.l      12(a7),a7
[00056104] 4e75                      rts

Aev_AvProtokoll:
[00056106] 4fef ffe8                 lea.l      -24(a7),a7
[0005610a] 3f40 0016                 move.w     d0,22(a7)
[0005610e] 2f48 0012                 move.l     a0,18(a7)
[00056112] 3f41 0010                 move.w     d1,16(a7)
[00056116] 41f9 000d 4a3c            lea.l      $000D4A3C,a0
[0005611c] 43d7                      lea.l      (a7),a1
[0005611e] 700f                      moveq.l    #15,d0
Aev_AvProtokoll_1:
[00056120] 12d8                      move.b     (a0)+,(a1)+
[00056122] 51c8 fffc                 dbf        d0,Aev_AvProtokoll_1
[00056126] 2079 0010 1f12            movea.l    ACSblk,a0
[0005612c] 302f 0016                 move.w     22(a7),d0
[00056130] b050                      cmp.w      (a0),d0
[00056132] 675c                      beq.s      Aev_AvProtokoll_2
[00056134] 3ebc 4700                 move.w     #$4700,(a7)
[00056138] 2079 0010 1f12            movea.l    ACSblk,a0
[0005613e] 3f50 0002                 move.w     (a0),2(a7)
[00056142] 426f 0008                 clr.w      8(a7)
[00056146] 426f 000a                 clr.w      10(a7)
[0005614a] 2079 0010 1f12            movea.l    ACSblk,a0
[00056150] 2f68 03dc 000c            move.l     988(a0),12(a7)
[00056156] 3f7c 0036 0006            move.w     #$0036,6(a7)
[0005615c] 302f 0016                 move.w     22(a7),d0
[00056160] 6b1a                      bmi.s      Aev_AvProtokoll_3
[00056162] 342f 0010                 move.w     16(a7),d2
[00056166] 226f 0012                 movea.l    18(a7),a1
[0005616a] 41d7                      lea.l      (a7),a0
[0005616c] 7201                      moveq.l    #1,d1
[0005616e] 302f 0016                 move.w     22(a7),d0
[00056172] 4eb9 0005 3dfa            jsr        Aev_SendMsg
[00056178] 6018                      bra.s      Aev_AvProtokoll_4
[0005617a] 6014                      bra.s      Aev_AvProtokoll_2
Aev_AvProtokoll_3:
[0005617c] 322f 0010                 move.w     16(a7),d1
[00056180] 226f 0012                 movea.l    18(a7),a1
[00056184] 7001                      moveq.l    #1,d0
[00056186] 41d7                      lea.l      (a7),a0
[00056188] 4eb9 0005 3f3e            jsr        Aev_SendAllMsg
[0005618e] 6002                      bra.s      Aev_AvProtokoll_4
Aev_AvProtokoll_2:
[00056190] 4240                      clr.w      d0
Aev_AvProtokoll_4:
[00056192] 4fef 0018                 lea.l      24(a7),a7
[00056196] 4e75                      rts

Aev_AvExit:
[00056198] 4fef ffe8                 lea.l      -24(a7),a7
[0005619c] 3f40 0016                 move.w     d0,22(a7)
[000561a0] 2f48 0012                 move.l     a0,18(a7)
[000561a4] 3f41 0010                 move.w     d1,16(a7)
[000561a8] 41f9 000d 4a4c            lea.l      $000D4A4C,a0
[000561ae] 43d7                      lea.l      (a7),a1
[000561b0] 700f                      moveq.l    #15,d0
Aev_AvExit_1:
[000561b2] 12d8                      move.b     (a0)+,(a1)+
[000561b4] 51c8 fffc                 dbf        d0,Aev_AvExit_1
[000561b8] 2079 0010 1f12            movea.l    ACSblk,a0
[000561be] 302f 0016                 move.w     22(a7),d0
[000561c2] b050                      cmp.w      (a0),d0
[000561c4] 675a                      beq.s      Aev_AvExit_2
[000561c6] 3ebc 4736                 move.w     #$4736,(a7)
[000561ca] 2079 0010 1f12            movea.l    ACSblk,a0
[000561d0] 3f50 0002                 move.w     (a0),2(a7)
[000561d4] 426f 0004                 clr.w      4(a7)
[000561d8] 426f 0006                 clr.w      6(a7)
[000561dc] 426f 0008                 clr.w      8(a7)
[000561e0] 426f 000a                 clr.w      10(a7)
[000561e4] 426f 000c                 clr.w      12(a7)
[000561e8] 426f 000e                 clr.w      14(a7)
[000561ec] 302f 0016                 move.w     22(a7),d0
[000561f0] 6b1a                      bmi.s      Aev_AvExit_3
[000561f2] 342f 0010                 move.w     16(a7),d2
[000561f6] 226f 0012                 movea.l    18(a7),a1
[000561fa] 41d7                      lea.l      (a7),a0
[000561fc] 7201                      moveq.l    #1,d1
[000561fe] 302f 0016                 move.w     22(a7),d0
[00056202] 4eb9 0005 3dfa            jsr        Aev_SendMsg
[00056208] 6018                      bra.s      Aev_AvExit_4
[0005620a] 6014                      bra.s      Aev_AvExit_2
Aev_AvExit_3:
[0005620c] 322f 0010                 move.w     16(a7),d1
[00056210] 226f 0012                 movea.l    18(a7),a1
[00056214] 7001                      moveq.l    #1,d0
[00056216] 41d7                      lea.l      (a7),a0
[00056218] 4eb9 0005 3f3e            jsr        Aev_SendAllMsg
[0005621e] 6002                      bra.s      Aev_AvExit_4
Aev_AvExit_2:
[00056220] 4240                      clr.w      d0
Aev_AvExit_4:
[00056222] 4fef 0018                 lea.l      24(a7),a7
[00056226] 4e75                      rts

Aev_VaStart:
[00056228] 4fef ffe0                 lea.l      -32(a7),a7
[0005622c] 3f40 001e                 move.w     d0,30(a7)
[00056230] 2f48 001a                 move.l     a0,26(a7)
[00056234] 2f49 0016                 move.l     a1,22(a7)
[00056238] 3f41 0014                 move.w     d1,20(a7)
[0005623c] 41f9 000d 4a6c            lea.l      $000D4A6C,a0
[00056242] 43ef 0004                 lea.l      4(a7),a1
[00056246] 700f                      moveq.l    #15,d0
Aev_VaStart_1:
[00056248] 12d8                      move.b     (a0)+,(a1)+
[0005624a] 51c8 fffc                 dbf        d0,Aev_VaStart_1
[0005624e] 2079 0010 1f12            movea.l    ACSblk,a0
[00056254] 302f 001e                 move.w     30(a7),d0
[00056258] b050                      cmp.w      (a0),d0
[0005625a] 6772                      beq.s      Aev_VaStart_2
[0005625c] 7001                      moveq.l    #1,d0
[0005625e] 206f 001a                 movea.l    26(a7),a0
[00056262] 4eb9 0004 41b4            jsr        Ast_copy
[00056268] 2e88                      move.l     a0,(a7)
[0005626a] 2017                      move.l     (a7),d0
[0005626c] 6604                      bne.s      Aev_VaStart_3
[0005626e] 4240                      clr.w      d0
[00056270] 605e                      bra.s      Aev_VaStart_4
Aev_VaStart_3:
[00056272] 3f7c 4711 0004            move.w     #$4711,4(a7)
[00056278] 2079 0010 1f12            movea.l    ACSblk,a0
[0005627e] 3f50 0006                 move.w     (a0),6(a7)
[00056282] 426f 0008                 clr.w      8(a7)
[00056286] 426f 000e                 clr.w      14(a7)
[0005628a] 426f 0010                 clr.w      16(a7)
[0005628e] 426f 0012                 clr.w      18(a7)
[00056292] 2f57 000a                 move.l     (a7),10(a7)
[00056296] 302f 001e                 move.w     30(a7),d0
[0005629a] 6b1c                      bmi.s      Aev_VaStart_5
[0005629c] 342f 0014                 move.w     20(a7),d2
[000562a0] 226f 0016                 movea.l    22(a7),a1
[000562a4] 41ef 0004                 lea.l      4(a7),a0
[000562a8] 7201                      moveq.l    #1,d1
[000562aa] 302f 001e                 move.w     30(a7),d0
[000562ae] 4eb9 0005 3dfa            jsr        Aev_SendMsg
[000562b4] 601a                      bra.s      Aev_VaStart_4
[000562b6] 6016                      bra.s      Aev_VaStart_2
Aev_VaStart_5:
[000562b8] 322f 0014                 move.w     20(a7),d1
[000562bc] 226f 0016                 movea.l    22(a7),a1
[000562c0] 7001                      moveq.l    #1,d0
[000562c2] 41ef 0004                 lea.l      4(a7),a0
[000562c6] 4eb9 0005 3f3e            jsr        Aev_SendAllMsg
[000562cc] 6002                      bra.s      Aev_VaStart_4
Aev_VaStart_2:
[000562ce] 4240                      clr.w      d0
Aev_VaStart_4:
[000562d0] 4fef 0020                 lea.l      32(a7),a7
[000562d4] 4e75                      rts

Aev_AvStarted:
[000562d6] 4fef ffea                 lea.l      -22(a7),a7
[000562da] 3f40 0014                 move.w     d0,20(a7)
[000562de] 2f48 0010                 move.l     a0,16(a7)
[000562e2] 41f9 000d 4a7c            lea.l      $000D4A7C,a0
[000562e8] 43d7                      lea.l      (a7),a1
[000562ea] 700f                      moveq.l    #15,d0
Aev_AvStarted_1:
[000562ec] 12d8                      move.b     (a0)+,(a1)+
[000562ee] 51c8 fffc                 dbf        d0,Aev_AvStarted_1
[000562f2] 2079 0010 1f12            movea.l    ACSblk,a0
[000562f8] 302f 0014                 move.w     20(a7),d0
[000562fc] b050                      cmp.w      (a0),d0
[000562fe] 674c                      beq.s      Aev_AvStarted_2
[00056300] 7210                      moveq.l    #16,d1
[00056302] 4240                      clr.w      d0
[00056304] 41d7                      lea.l      (a7),a0
[00056306] 4eb9 0007 712e            jsr        memset
[0005630c] 3ebc 4738                 move.w     #$4738,(a7)
[00056310] 2079 0010 1f12            movea.l    ACSblk,a0
[00056316] 3f50 0002                 move.w     (a0),2(a7)
[0005631a] 2f6f 0010 0006            move.l     16(a7),6(a7)
[00056320] 302f 0014                 move.w     20(a7),d0
[00056324] 6b16                      bmi.s      Aev_AvStarted_3
[00056326] 74ff                      moveq.l    #-1,d2
[00056328] 93c9                      suba.l     a1,a1
[0005632a] 41d7                      lea.l      (a7),a0
[0005632c] 7201                      moveq.l    #1,d1
[0005632e] 302f 0014                 move.w     20(a7),d0
[00056332] 4eb9 0005 3dfa            jsr        Aev_SendMsg
[00056338] 6014                      bra.s      Aev_AvStarted_4
[0005633a] 6010                      bra.s      Aev_AvStarted_2
Aev_AvStarted_3:
[0005633c] 72ff                      moveq.l    #-1,d1
[0005633e] 93c9                      suba.l     a1,a1
[00056340] 7001                      moveq.l    #1,d0
[00056342] 41d7                      lea.l      (a7),a0
[00056344] 4eb9 0005 3f3e            jsr        Aev_SendAllMsg
[0005634a] 6002                      bra.s      Aev_AvStarted_4
Aev_AvStarted_2:
[0005634c] 4240                      clr.w      d0
Aev_AvStarted_4:
[0005634e] 4fef 0016                 lea.l      22(a7),a7
[00056352] 4e75                      rts

		.data

xd4a3c:
[000d4a3c]                           dc.b $00
[000d4a3d]                           dc.b $00
[000d4a3e]                           dc.b $00
[000d4a3f]                           dc.b $00
[000d4a40]                           dc.b $00
[000d4a41]                           dc.b $00
[000d4a42]                           dc.b $00
[000d4a43]                           dc.b $00
[000d4a44]                           dc.b $00
[000d4a45]                           dc.b $00
[000d4a46]                           dc.b $00
[000d4a47]                           dc.b $00
[000d4a48]                           dc.b $00
[000d4a49]                           dc.b $00
[000d4a4a]                           dc.b $00
[000d4a4b]                           dc.b $00
[000d4a4c]                           dc.b $00
[000d4a4d]                           dc.b $00
[000d4a4e]                           dc.b $00
[000d4a4f]                           dc.b $00
[000d4a50]                           dc.b $00
[000d4a51]                           dc.b $00
[000d4a52]                           dc.b $00
[000d4a53]                           dc.b $00
[000d4a54]                           dc.b $00
[000d4a55]                           dc.b $00
[000d4a56]                           dc.b $00
[000d4a57]                           dc.b $00
[000d4a58]                           dc.b $00
[000d4a59]                           dc.b $00
[000d4a5a]                           dc.b $00
[000d4a5b]                           dc.b $00
[000d4a5c]                           dc.b $00
[000d4a5d]                           dc.b $00
[000d4a5e]                           dc.b $00
[000d4a5f]                           dc.b $00
[000d4a60]                           dc.b $00
[000d4a61]                           dc.b $00
[000d4a62]                           dc.b $00
[000d4a63]                           dc.b $00
[000d4a64]                           dc.b $00
[000d4a65]                           dc.b $00
[000d4a66]                           dc.b $00
[000d4a67]                           dc.b $00
[000d4a68]                           dc.b $00
[000d4a69]                           dc.b $00
[000d4a6a]                           dc.b $00
[000d4a6b]                           dc.b $00
[000d4a6c]                           dc.b $00
[000d4a6d]                           dc.b $00
[000d4a6e]                           dc.b $00
[000d4a6f]                           dc.b $00
[000d4a70]                           dc.b $00
[000d4a71]                           dc.b $00
[000d4a72]                           dc.b $00
[000d4a73]                           dc.b $00
[000d4a74]                           dc.b $00
[000d4a75]                           dc.b $00
[000d4a76]                           dc.b $00
[000d4a77]                           dc.b $00
[000d4a78]                           dc.b $00
[000d4a79]                           dc.b $00
[000d4a7a]                           dc.b $00
[000d4a7b]                           dc.b $00
[000d4a7c]                           dc.b $00
[000d4a7d]                           dc.b $00
[000d4a7e]                           dc.b $00
[000d4a7f]                           dc.b $00
[000d4a80]                           dc.b $00
[000d4a81]                           dc.b $00
[000d4a82]                           dc.b $00
[000d4a83]                           dc.b $00
[000d4a84]                           dc.b $00
[000d4a85]                           dc.b $00
[000d4a86]                           dc.b $00
[000d4a87]                           dc.b $00
[000d4a88]                           dc.b $00
[000d4a89]                           dc.b $00
[000d4a8a]                           dc.b $00
[000d4a8b]                           dc.b $00
xd4a8c:
[000d4a8c]                           dc.b 'AVSERVER',0
xd4a95:
[000d4a95]                           dc.b 'JINNEE  ',0
xd4a9e:
[000d4a9e]                           dc.b 'GEMINI  ',0
xd4aa7:
[000d4aa7]                           dc.b 'AVSERVER',0
xd4ab0:
[000d4ab0]                           dc.b 'MAGXDESK',0
		.even
