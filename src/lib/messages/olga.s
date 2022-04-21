
Aev_InitOlga:
[00057c04] 554f                      subq.w     #2,a7
[00057c06] 3ebc 0001                 move.w     #$0001,(a7)
[00057c0a] 4eb9 0006 2a5e            jsr        Alu_create
[00057c10] 23c8 000d 4bde            move.l     a0,olga_connection
[00057c16] 2039 000d 4bde            move.l     olga_connection,d0
[00057c1c] 6604                      bne.s      Aev_InitOlga_1
[00057c1e] 4240                      clr.w      d0
[00057c20] 6050                      bra.s      Aev_InitOlga_2
Aev_InitOlga_1:
[00057c22] 2079 000d 4bde            movea.l    olga_connection,a0
[00057c28] 217c 0005 7e7c 0004       move.l     #DelConnect,4(a0)
[00057c30] 7210                      moveq.l    #16,d1
[00057c32] 70ff                      moveq.l    #-1,d0
[00057c34] 41f9 000d 4bec            lea.l      idle_message,a0
[00057c3a] 4eb9 0007 712e            jsr        memset
[00057c40] 7001                      moveq.l    #1,d0
[00057c42] c079 0009 bfd2            and.w      $0009BFD2,d0
[00057c48] 6720                      beq.s      Aev_InitOlga_3
[00057c4a] 7002                      moveq.l    #2,d0
[00057c4c] c079 0009 bfd2            and.w      $0009BFD2,d0
[00057c52] 670a                      beq.s      Aev_InitOlga_4
[00057c54] 4eb9 0005 7df8            jsr        CheckOlga
[00057c5a] 3e80                      move.w     d0,(a7)
[00057c5c] 600c                      bra.s      Aev_InitOlga_3
Aev_InitOlga_4:
[00057c5e] 4eb9 0005 7da6            jsr        FindOlgaManager
[00057c64] 33c0 000d 4be2            move.w     d0,olga_id
Aev_InitOlga_3:
[00057c6a] 4279 000d 4c00            clr.w      phase
[00057c70] 3017                      move.w     (a7),d0
Aev_InitOlga_2:
[00057c72] 544f                      addq.w     #2,a7
[00057c74] 4e75                      rts

Aev_ExitOlga:
[00057c76] 33fc 0001 000d 4c00       move.w     #$0001,phase
[00057c7e] 3039 000d 4be2            move.w     olga_id,d0
[00057c84] 6b06                      bmi.s      Aev_ExitOlga_1
[00057c86] 4eb9 0005 8452            jsr        Aev_OleExit
Aev_ExitOlga_1:
[00057c8c] 2039 000d 4bde            move.l     olga_connection,d0
[00057c92] 670c                      beq.s      Aev_ExitOlga_2
[00057c94] 2079 000d 4bde            movea.l    olga_connection,a0
[00057c9a] 4eb9 0006 2aa6            jsr        Alu_delete
Aev_ExitOlga_2:
[00057ca0] 7001                      moveq.l    #1,d0
[00057ca2] 4e75                      rts

FindAppl:
[00057ca4] 4fef ffdc                 lea.l      -36(a7),a7
[00057ca8] 2f48 0020                 move.l     a0,32(a7)
[00057cac] 2f49 001c                 move.l     a1,28(a7)
[00057cb0] 3f7c ffff 001a            move.w     #$FFFF,26(a7)
[00057cb6] 2279 000d 99d6            movea.l    _globl,a1
[00057cbc] 206f 0020                 movea.l    32(a7),a0
[00057cc0] 4eb9 0006 a886            jsr        mt_appl_find
[00057cc6] 3f40 001a                 move.w     d0,26(a7)
[00057cca] 302f 001a                 move.w     26(a7),d0
[00057cce] 6a00 00cc                 bpl        FindAppl_1
[00057cd2] 206f 001c                 movea.l    28(a7),a0
[00057cd6] 4eb9 0005 2908            jsr        Ash_getenv
[00057cdc] 2f48 0014                 move.l     a0,20(a7)
[00057ce0] 202f 0014                 move.l     20(a7),d0
[00057ce4] 6700 00b6                 beq        FindAppl_1
[00057ce8] 226f 0014                 movea.l    20(a7),a1
[00057cec] 41d7                      lea.l      (a7),a0
[00057cee] 4eb9 0004 71de            jsr        Af_2name
[00057cf4] 7008                      moveq.l    #8,d0
[00057cf6] 4eb9 0004 3b5e            jsr        Ast_adl
[00057cfc] 2279 000d 99d6            movea.l    _globl,a1
[00057d02] 41d7                      lea.l      (a7),a0
[00057d04] 4eb9 0006 a886            jsr        mt_appl_find
[00057d0a] 3f40 001a                 move.w     d0,26(a7)
[00057d0e] 302f 001a                 move.w     26(a7),d0
[00057d12] 6a00 0088                 bpl        FindAppl_1
[00057d16] 2079 0010 1f12            movea.l    ACSblk,a0
[00057d1c] 3028 0238                 move.w     568(a0),d0
[00057d20] 6700 007a                 beq.w      FindAppl_1
[00057d24] 2079 0010 1f12            movea.l    ACSblk,a0
[00057d2a] 2f28 028c                 move.l     652(a0),-(a7)
[00057d2e] 43f9 000d 4c02            lea.l      $000D4C02,a1
[00057d34] 206f 0018                 movea.l    24(a7),a0
[00057d38] 4eb9 0004 e614            jsr        Ash_prog
[00057d3e] 584f                      addq.w     #4,a7
[00057d40] 426f 0018                 clr.w      24(a7)
[00057d44] 603e                      bra.s      FindAppl_2
FindAppl_4:
[00057d46] 2079 000d 99d6            movea.l    _globl,a0
[00057d4c] 7064                      moveq.l    #100,d0
[00057d4e] 4eb9 0006 af04            jsr        mt_evnt_timer
[00057d54] 2279 000d 99d6            movea.l    _globl,a1
[00057d5a] 206f 0020                 movea.l    32(a7),a0
[00057d5e] 4eb9 0006 a886            jsr        mt_appl_find
[00057d64] 3f40 001a                 move.w     d0,26(a7)
[00057d68] 302f 001a                 move.w     26(a7),d0
[00057d6c] 6a12                      bpl.s      FindAppl_3
[00057d6e] 2279 000d 99d6            movea.l    _globl,a1
[00057d74] 41d7                      lea.l      (a7),a0
[00057d76] 4eb9 0006 a886            jsr        mt_appl_find
[00057d7c] 3f40 001a                 move.w     d0,26(a7)
FindAppl_3:
[00057d80] 526f 0018                 addq.w     #1,24(a7)
FindAppl_2:
[00057d84] 3039 000d 4c00            move.w     phase,d0
[00057d8a] 6610                      bne.s      FindAppl_1
[00057d8c] 3039 000d 4be2            move.w     olga_id,d0
[00057d92] 6a08                      bpl.s      FindAppl_1
[00057d94] 0c6f 001e 0018            cmpi.w     #$001E,24(a7)
[00057d9a] 6daa                      blt.s      FindAppl_4
FindAppl_1:
[00057d9c] 302f 001a                 move.w     26(a7),d0
[00057da0] 4fef 0024                 lea.l      36(a7),a7
[00057da4] 4e75                      rts

FindOlgaManager:
[00057da6] 3039 000d 4be2            move.w     olga_id,d0
[00057dac] 6a42                      bpl.s      FindOlgaManager_1
[00057dae] 43f9 000d 4c0c            lea.l      $000D4C0C,a1
[00057db4] 41f9 000d 4c03            lea.l      $000D4C03,a0
[00057dba] 6100 fee8                 bsr        FindAppl
[00057dbe] 33c0 000d 4be2            move.w     d0,olga_id
[00057dc4] 3039 000d 4be2            move.w     olga_id,d0
[00057dca] 6a16                      bpl.s      FindOlgaManager_2
[00057dcc] 43f9 000d 4c21            lea.l      $000D4C21,a1
[00057dd2] 41f9 000d 4c18            lea.l      $000D4C18,a0
[00057dd8] 6100 feca                 bsr        FindAppl
[00057ddc] 33c0 000d 4be2            move.w     d0,olga_id
FindOlgaManager_2:
[00057de2] 3039 000d 4be2            move.w     olga_id,d0
[00057de8] 6b06                      bmi.s      FindOlgaManager_1
[00057dea] 4eb9 0005 83dc            jsr        Aev_OleInit
FindOlgaManager_1:
[00057df0] 3039 000d 4be2            move.w     olga_id,d0
[00057df6] 4e75                      rts

CheckOlga:
[00057df8] 554f                      subq.w     #2,a7
[00057dfa] 3039 000d 4bea            move.w     use_olga,d0
[00057e00] 671c                      beq.s      CheckOlga_1
[00057e02] 3039 000d 4be2            move.w     olga_id,d0
[00057e08] 6b14                      bmi.s      CheckOlga_1
[00057e0a] 2079 0010 1f12            movea.l    ACSblk,a0
[00057e10] 3039 000d 4be2            move.w     olga_id,d0
[00057e16] b050                      cmp.w      (a0),d0
[00057e18] 6704                      beq.s      CheckOlga_1
[00057e1a] 7001                      moveq.l    #1,d0
[00057e1c] 605a                      bra.s      CheckOlga_2
CheckOlga_1:
[00057e1e] 3039 000d 4be2            move.w     olga_id,d0
[00057e24] 6a0a                      bpl.s      CheckOlga_3
[00057e26] 6100 ff7e                 bsr        FindOlgaManager
[00057e2a] 33c0 000d 4be2            move.w     d0,olga_id
CheckOlga_3:
[00057e30] 3039 000d 4bea            move.w     use_olga,d0
[00057e36] 661a                      bne.s      CheckOlga_4
[00057e38] 4257                      clr.w      (a7)
[00057e3a] 6008                      bra.s      CheckOlga_5
CheckOlga_6:
[00057e3c] 4eb9 0004 6d70            jsr        Aev_mess
[00057e42] 5257                      addq.w     #1,(a7)
CheckOlga_5:
[00057e44] 3039 000d 4bea            move.w     use_olga,d0
[00057e4a] 6606                      bne.s      CheckOlga_4
[00057e4c] 0c57 001e                 cmpi.w     #$001E,(a7)
[00057e50] 6dea                      blt.s      CheckOlga_6
CheckOlga_4:
[00057e52] 3039 000d 4bea            move.w     use_olga,d0
[00057e58] 671c                      beq.s      CheckOlga_7
[00057e5a] 3039 000d 4be2            move.w     olga_id,d0
[00057e60] 6b14                      bmi.s      CheckOlga_7
[00057e62] 2079 0010 1f12            movea.l    ACSblk,a0
[00057e68] 3039 000d 4be2            move.w     olga_id,d0
[00057e6e] b050                      cmp.w      (a0),d0
[00057e70] 6704                      beq.s      CheckOlga_7
[00057e72] 7001                      moveq.l    #1,d0
[00057e74] 6002                      bra.s      CheckOlga_2
CheckOlga_7:
[00057e76] 4240                      clr.w      d0
CheckOlga_2:
[00057e78] 544f                      addq.w     #2,a7
[00057e7a] 4e75                      rts

DelConnect:
[00057e7c] 2f0a                      move.l     a2,-(a7)
[00057e7e] 514f                      subq.w     #8,a7
[00057e80] 2f48 0004                 move.l     a0,4(a7)
[00057e84] 2eaf 0004                 move.l     4(a7),(a7)
[00057e88] 2257                      movea.l    (a7),a1
[00057e8a] 702c                      moveq.l    #44,d0
[00057e8c] 2057                      movea.l    (a7),a0
[00057e8e] 2050                      movea.l    (a0),a0
[00057e90] 2457                      movea.l    (a7),a2
[00057e92] 2452                      movea.l    (a2),a2
[00057e94] 246a 0004                 movea.l    4(a2),a2
[00057e98] 4e92                      jsr        (a2)
[00057e9a] 2057                      movea.l    (a7),a0
[00057e9c] 2028 0006                 move.l     6(a0),d0
[00057ea0] 670c                      beq.s      DelConnect_1
[00057ea2] 2057                      movea.l    (a7),a0
[00057ea4] 2068 0006                 movea.l    6(a0),a0
[00057ea8] 4eb9 0004 7fa6            jsr        Ax_glfree
DelConnect_1:
[00057eae] 2057                      movea.l    (a7),a0
[00057eb0] 2028 000c                 move.l     12(a0),d0
[00057eb4] 670c                      beq.s      DelConnect_2
[00057eb6] 2057                      movea.l    (a7),a0
[00057eb8] 2068 000c                 movea.l    12(a0),a0
[00057ebc] 4eb9 0004 7fa6            jsr        Ax_glfree
DelConnect_2:
[00057ec2] 7020                      moveq.l    #32,d0
[00057ec4] 206f 0004                 movea.l    4(a7),a0
[00057ec8] 4eb9 0004 8140            jsr        Ax_recycle
[00057ece] 504f                      addq.w     #8,a7
[00057ed0] 245f                      movea.l    (a7)+,a2
[00057ed2] 4e75                      rts

CmpIDConnect:
[00057ed4] 514f                      subq.w     #8,a7
[00057ed6] 2f48 0004                 move.l     a0,4(a7)
[00057eda] 2e89                      move.l     a1,(a7)
[00057edc] 206f 0004                 movea.l    4(a7),a0
[00057ee0] 3010                      move.w     (a0),d0
[00057ee2] 2057                      movea.l    (a7),a0
[00057ee4] b068 0004                 cmp.w      4(a0),d0
[00057ee8] 6604                      bne.s      CmpIDConnect_1
[00057eea] 7001                      moveq.l    #1,d0
[00057eec] 6002                      bra.s      CmpIDConnect_2
CmpIDConnect_1:
[00057eee] 4240                      clr.w      d0
CmpIDConnect_2:
[00057ef0] 504f                      addq.w     #8,a7
[00057ef2] 4e75                      rts

CmpDatInfoConnect:
[00057ef4] 514f                      subq.w     #8,a7
[00057ef6] 2f48 0004                 move.l     a0,4(a7)
[00057efa] 2e89                      move.l     a1,(a7)
[00057efc] 7001                      moveq.l    #1,d0
[00057efe] 2057                      movea.l    (a7),a0
[00057f00] c068 0010                 and.w      16(a0),d0
[00057f04] 6720                      beq.s      CmpDatInfoConnect_1
[00057f06] 2057                      movea.l    (a7),a0
[00057f08] 2268 0006                 movea.l    6(a0),a1
[00057f0c] 206f 0004                 movea.l    4(a7),a0
[00057f10] 2068 0006                 movea.l    6(a0),a0
[00057f14] 4eb9 0004 38ac            jsr        Ast_icmp
[00057f1a] 4a40                      tst.w      d0
[00057f1c] 6604                      bne.s      CmpDatInfoConnect_2
[00057f1e] 7001                      moveq.l    #1,d0
[00057f20] 6002                      bra.s      CmpDatInfoConnect_3
CmpDatInfoConnect_2:
[00057f22] 4240                      clr.w      d0
CmpDatInfoConnect_3:
[00057f24] 601e                      bra.s      CmpDatInfoConnect_4
CmpDatInfoConnect_1:
[00057f26] 2057                      movea.l    (a7),a0
[00057f28] 2268 0006                 movea.l    6(a0),a1
[00057f2c] 206f 0004                 movea.l    4(a7),a0
[00057f30] 2068 0006                 movea.l    6(a0),a0
[00057f34] 4eb9 0004 3856            jsr        Ast_cmp
[00057f3a] 4a40                      tst.w      d0
[00057f3c] 6604                      bne.s      CmpDatInfoConnect_5
[00057f3e] 7001                      moveq.l    #1,d0
[00057f40] 6002                      bra.s      CmpDatInfoConnect_4
CmpDatInfoConnect_5:
[00057f42] 4240                      clr.w      d0
CmpDatInfoConnect_4:
[00057f44] 4a40                      tst.w      d0
[00057f46] 671a                      beq.s      CmpDatInfoConnect_6
[00057f48] 7002                      moveq.l    #2,d0
[00057f4a] 206f 0004                 movea.l    4(a7),a0
[00057f4e] c068 0010                 and.w      16(a0),d0
[00057f52] 7202                      moveq.l    #2,d1
[00057f54] 2057                      movea.l    (a7),a0
[00057f56] c268 0012                 and.w      18(a0),d1
[00057f5a] b041                      cmp.w      d1,d0
[00057f5c] 6604                      bne.s      CmpDatInfoConnect_6
[00057f5e] 7001                      moveq.l    #1,d0
[00057f60] 6002                      bra.s      CmpDatInfoConnect_7
CmpDatInfoConnect_6:
[00057f62] 4240                      clr.w      d0
CmpDatInfoConnect_7:
[00057f64] 504f                      addq.w     #8,a7
[00057f66] 4e75                      rts

Datei2Connect:
[00057f68] 2f0a                      move.l     a2,-(a7)
[00057f6a] 594f                      subq.w     #4,a7
[00057f6c] 2e88                      move.l     a0,(a7)
[00057f6e] 487a ff84                 pea.l      CmpDatInfoConnect(pc)
[00057f72] 226f 0004                 movea.l    4(a7),a1
[00057f76] 2079 000d 4bde            movea.l    olga_connection,a0
[00057f7c] 2479 000d 4bde            movea.l    olga_connection,a2
[00057f82] 246a 0020                 movea.l    32(a2),a2
[00057f86] 4e92                      jsr        (a2)
[00057f88] 584f                      addq.w     #4,a7
[00057f8a] 584f                      addq.w     #4,a7
[00057f8c] 245f                      movea.l    (a7)+,a2
[00057f8e] 4e75                      rts

ID2Connect:
[00057f90] 2f0a                      move.l     a2,-(a7)
[00057f92] 554f                      subq.w     #2,a7
[00057f94] 3e80                      move.w     d0,(a7)
[00057f96] 487a ff3c                 pea.l      CmpIDConnect(pc)
[00057f9a] 43ef 0004                 lea.l      4(a7),a1
[00057f9e] 2079 000d 4bde            movea.l    olga_connection,a0
[00057fa4] 2479 000d 4bde            movea.l    olga_connection,a2
[00057faa] 246a 0020                 movea.l    32(a2),a2
[00057fae] 4e92                      jsr        (a2)
[00057fb0] 584f                      addq.w     #4,a7
[00057fb2] 544f                      addq.w     #2,a7
[00057fb4] 245f                      movea.l    (a7)+,a2
[00057fb6] 4e75                      rts

SendOlgaUpdate:
[00057fb8] 2f0a                      move.l     a2,-(a7)
[00057fba] 514f                      subq.w     #8,a7
[00057fbc] 2f48 0004                 move.l     a0,4(a7)
[00057fc0] 2e89                      move.l     a1,(a7)
[00057fc2] 206f 0004                 movea.l    4(a7),a0
[00057fc6] 2257                      movea.l    (a7),a1
[00057fc8] 3368 000a 000a            move.w     10(a0),10(a1)
[00057fce] 2257                      movea.l    (a7),a1
[00057fd0] 702b                      moveq.l    #43,d0
[00057fd2] 2057                      movea.l    (a7),a0
[00057fd4] 2050                      movea.l    (a0),a0
[00057fd6] 2457                      movea.l    (a7),a2
[00057fd8] 2452                      movea.l    (a2),a2
[00057fda] 246a 0004                 movea.l    4(a2),a2
[00057fde] 4e92                      jsr        (a2)
[00057fe0] 504f                      addq.w     #8,a7
[00057fe2] 245f                      movea.l    (a7)+,a2
[00057fe4] 4e75                      rts

Aev_GetOlgaInit:
[00057fe6] 4fef fff6                 lea.l      -10(a7),a7
[00057fea] 2f48 0006                 move.l     a0,6(a7)
[00057fee] 206f 0006                 movea.l    6(a7),a0
[00057ff2] 2e90                      move.l     (a0),(a7)
[00057ff4] 2057                      movea.l    (a7),a0
[00057ff6] 3039 000d 4be2            move.w     olga_id,d0
[00057ffc] b068 0002                 cmp.w      2(a0),d0
[00058000] 6604                      bne.s      Aev_GetOlgaInit_1
[00058002] 7001                      moveq.l    #1,d0
[00058004] 6002                      bra.s      Aev_GetOlgaInit_2
Aev_GetOlgaInit_1:
[00058006] 4240                      clr.w      d0
Aev_GetOlgaInit_2:
[00058008] 3f40 0004                 move.w     d0,4(a7)
[0005800c] 302f 0004                 move.w     4(a7),d0
[00058010] 674e                      beq.s      Aev_GetOlgaInit_3
[00058012] 2057                      movea.l    (a7),a0
[00058014] 3028 000e                 move.w     14(a0),d0
[00058018] 662a                      bne.s      Aev_GetOlgaInit_4
[0005801a] 33fc ffff 000d 4be2       move.w     #$FFFF,olga_id
[00058022] 4279 000d 4be4            clr.w      olga_infos
[00058028] 33fc ffff 000d 4be6       move.w     #$FFFF,olga_stufe
[00058030] 2079 000d 4bde            movea.l    olga_connection,a0
[00058036] 2279 000d 4bde            movea.l    olga_connection,a1
[0005803c] 2269 0008                 movea.l    8(a1),a1
[00058040] 4e91                      jsr        (a1)
[00058042] 601c                      bra.s      Aev_GetOlgaInit_3
Aev_GetOlgaInit_4:
[00058044] 2057                      movea.l    (a7),a0
[00058046] 33e8 0006 000d 4be4       move.w     6(a0),olga_infos
[0005804e] 2057                      movea.l    (a7),a0
[00058050] 33e8 0008 000d 4be6       move.w     8(a0),olga_stufe
[00058058] 33fc 0001 000d 4bea       move.w     #$0001,use_olga
Aev_GetOlgaInit_3:
[00058060] 302f 0004                 move.w     4(a7),d0
[00058064] 4fef 000a                 lea.l      10(a7),a7
[00058068] 4e75                      rts

Aev_GetOleExit:
[0005806a] 514f                      subq.w     #8,a7
[0005806c] 2f48 0004                 move.l     a0,4(a7)
[00058070] 206f 0004                 movea.l    4(a7),a0
[00058074] 2e90                      move.l     (a0),(a7)
[00058076] 3039 000d 4be2            move.w     olga_id,d0
[0005807c] 6b40                      bmi.s      Aev_GetOleExit_1
[0005807e] 2057                      movea.l    (a7),a0
[00058080] 3039 000d 4be2            move.w     olga_id,d0
[00058086] b068 0002                 cmp.w      2(a0),d0
[0005808a] 6632                      bne.s      Aev_GetOleExit_1
[0005808c] 33fc ffff 000d 4be2       move.w     #$FFFF,olga_id
[00058094] 4279 000d 4be4            clr.w      olga_infos
[0005809a] 33fc ffff 000d 4be6       move.w     #$FFFF,olga_stufe
[000580a2] 4279 000d 4bea            clr.w      use_olga
[000580a8] 2079 000d 4bde            movea.l    olga_connection,a0
[000580ae] 2279 000d 4bde            movea.l    olga_connection,a1
[000580b4] 2269 0008                 movea.l    8(a1),a1
[000580b8] 4e91                      jsr        (a1)
[000580ba] 7001                      moveq.l    #1,d0
[000580bc] 6002                      bra.s      Aev_GetOleExit_2
Aev_GetOleExit_1:
[000580be] 4240                      clr.w      d0
Aev_GetOleExit_2:
[000580c0] 504f                      addq.w     #8,a7
[000580c2] 4e75                      rts

Aev_GetOleNew:
[000580c4] 514f                      subq.w     #8,a7
[000580c6] 2f48 0004                 move.l     a0,4(a7)
[000580ca] 206f 0004                 movea.l    4(a7),a0
[000580ce] 2e90                      move.l     (a0),(a7)
[000580d0] 2057                      movea.l    (a7),a0
[000580d2] 33e8 0002 000d 4be2       move.w     2(a0),olga_id
[000580da] 2057                      movea.l    (a7),a0
[000580dc] 33e8 000e 000d 4be8       move.w     14(a0),olga_version
[000580e4] 4eb9 0005 83dc            jsr        Aev_OleInit
[000580ea] 504f                      addq.w     #8,a7
[000580ec] 4e75                      rts

Aev_GetOlgaAck:
[000580ee] 2f0a                      move.l     a2,-(a7)
[000580f0] 4fef ffd6                 lea.l      -42(a7),a7
[000580f4] 2f48 0022                 move.l     a0,34(a7)
[000580f8] 206f 0022                 movea.l    34(a7),a0
[000580fc] 2f50 001e                 move.l     (a0),30(a7)
[00058100] 42af 0004                 clr.l      4(a7)
[00058104] 4297                      clr.l      (a7)
[00058106] 206f 001e                 movea.l    30(a7),a0
[0005810a] 3028 000e                 move.w     14(a0),d0
[0005810e] 907c 1238                 sub.w      #$1238,d0
[00058112] 6714                      beq.s      Aev_GetOlgaAck_1
[00058114] 5540                      subq.w     #2,d0
[00058116] 6764                      beq.s      Aev_GetOlgaAck_2
[00058118] 907c 000a                 sub.w      #$000A,d0
[0005811c] 6700 0084                 beq        Aev_GetOlgaAck_3
[00058120] 5940                      subq.w     #4,d0
[00058122] 6724                      beq.s      Aev_GetOlgaAck_4
[00058124] 6000 009a                 bra        Aev_GetOlgaAck_5
Aev_GetOlgaAck_1:
[00058128] 206f 001e                 movea.l    30(a7),a0
[0005812c] 2f68 0006 000e            move.l     6(a0),14(a7)
[00058132] 3f7c 0002 0018            move.w     #$0002,24(a7)
[00058138] 41ef 0008                 lea.l      8(a7),a0
[0005813c] 6100 fe2a                 bsr        Datei2Connect
[00058140] 2f48 001a                 move.l     a0,26(a7)
[00058144] 6000 007a                 bra.w      Aev_GetOlgaAck_5
Aev_GetOlgaAck_4:
[00058148] 206f 001e                 movea.l    30(a7),a0
[0005814c] 3028 000a                 move.w     10(a0),d0
[00058150] 6100 fe3e                 bsr        ID2Connect
[00058154] 2f48 001a                 move.l     a0,26(a7)
[00058158] 202f 001a                 move.l     26(a7),d0
[0005815c] 671c                      beq.s      Aev_GetOlgaAck_6
[0005815e] 206f 001a                 movea.l    26(a7),a0
[00058162] 2f50 0026                 move.l     (a0),38(a7)
[00058166] 226f 001a                 movea.l    26(a7),a1
[0005816a] 702f                      moveq.l    #47,d0
[0005816c] 206f 0026                 movea.l    38(a7),a0
[00058170] 246f 0026                 movea.l    38(a7),a2
[00058174] 246a 0004                 movea.l    4(a2),a2
[00058178] 4e92                      jsr        (a2)
Aev_GetOlgaAck_6:
[0005817a] 6044                      bra.s      Aev_GetOlgaAck_5
Aev_GetOlgaAck_2:
[0005817c] 206f 001e                 movea.l    30(a7),a0
[00058180] 2f68 000a 000e            move.l     10(a0),14(a7)
[00058186] 3f7c 0002 0018            move.w     #$0002,24(a7)
[0005818c] 41ef 0008                 lea.l      8(a7),a0
[00058190] 6100 fdd6                 bsr        Datei2Connect
[00058194] 2f48 001a                 move.l     a0,26(a7)
[00058198] 206f 001e                 movea.l    30(a7),a0
[0005819c] 2ea8 0006                 move.l     6(a0),(a7)
[000581a0] 601e                      bra.s      Aev_GetOlgaAck_5
Aev_GetOlgaAck_3:
[000581a2] 206f 001e                 movea.l    30(a7),a0
[000581a6] 2f68 0006 000e            move.l     6(a0),14(a7)
[000581ac] 3f7c 0002 0018            move.w     #$0002,24(a7)
[000581b2] 41ef 0008                 lea.l      8(a7),a0
[000581b6] 6100 fdb0                 bsr        Datei2Connect
[000581ba] 2f48 001a                 move.l     a0,26(a7)
[000581be] 4e71                      nop
Aev_GetOlgaAck_5:
[000581c0] 202f 001a                 move.l     26(a7),d0
[000581c4] 6742                      beq.s      Aev_GetOlgaAck_7
[000581c6] 206f 001e                 movea.l    30(a7),a0
[000581ca] 3010                      move.w     (a0),d0
[000581cc] 206f 001a                 movea.l    26(a7),a0
[000581d0] b068 001a                 cmp.w      26(a0),d0
[000581d4] 6630                      bne.s      Aev_GetOlgaAck_8
[000581d6] 206f 001a                 movea.l    26(a7),a0
[000581da] 5368 001c                 subq.w     #1,28(a0)
[000581de] 206f 001a                 movea.l    26(a7),a0
[000581e2] 0c68 0001 001c            cmpi.w     #$0001,28(a0)
[000581e8] 6c0a                      bge.s      Aev_GetOlgaAck_9
[000581ea] 206f 001a                 movea.l    26(a7),a0
[000581ee] 317c ffff 001a            move.w     #$FFFF,26(a0)
Aev_GetOlgaAck_9:
[000581f4] 206f 001a                 movea.l    26(a7),a0
[000581f8] 3028 001e                 move.w     30(a0),d0
[000581fc] 6708                      beq.s      Aev_GetOlgaAck_8
[000581fe] 206f 001a                 movea.l    26(a7),a0
[00058202] 6100 fc78                 bsr        DelConnect
Aev_GetOlgaAck_8:
[00058206] 6006                      bra.s      Aev_GetOlgaAck_10
Aev_GetOlgaAck_7:
[00058208] 2f6f 000e 0004            move.l     14(a7),4(a7)
Aev_GetOlgaAck_10:
[0005820e] 202f 0004                 move.l     4(a7),d0
[00058212] 671e                      beq.s      Aev_GetOlgaAck_11
[00058214] 4879 0006 2c64            pea.l      Alu_ptrCmp
[0005821a] 226f 0008                 movea.l    8(a7),a1
[0005821e] 2079 000d 450e            movea.l    globProtData,a0
[00058224] 2479 000d 450e            movea.l    globProtData,a2
[0005822a] 246a 0018                 movea.l    24(a2),a2
[0005822e] 4e92                      jsr        (a2)
[00058230] 584f                      addq.w     #4,a7
Aev_GetOlgaAck_11:
[00058232] 2017                      move.l     (a7),d0
[00058234] 671e                      beq.s      Aev_GetOlgaAck_12
[00058236] 4879 0006 2c64            pea.l      Alu_ptrCmp
[0005823c] 226f 0004                 movea.l    4(a7),a1
[00058240] 2079 000d 450e            movea.l    globProtData,a0
[00058246] 2479 000d 450e            movea.l    globProtData,a2
[0005824c] 246a 0018                 movea.l    24(a2),a2
[00058250] 4e92                      jsr        (a2)
[00058252] 584f                      addq.w     #4,a7
Aev_GetOlgaAck_12:
[00058254] 7001                      moveq.l    #1,d0
[00058256] 4fef 002a                 lea.l      42(a7),a7
[0005825a] 245f                      movea.l    (a7)+,a2
[0005825c] 4e75                      rts

Aev_GetOlgaUpdated:
[0005825e] 2f0a                      move.l     a2,-(a7)
[00058260] 4fef ffe6                 lea.l      -26(a7),a7
[00058264] 2f48 0016                 move.l     a0,22(a7)
[00058268] 206f 0016                 movea.l    22(a7),a0
[0005826c] 2f50 0012                 move.l     (a0),18(a7)
[00058270] 206f 0012                 movea.l    18(a7),a0
[00058274] 2f68 0006 0006            move.l     6(a0),6(a7)
[0005827a] 4241                      clr.w      d1
[0005827c] 70ff                      moveq.l    #-1,d0
[0005827e] 206f 0006                 movea.l    6(a7),a0
[00058282] 4eb9 0004 7ff8            jsr        Ax_memCheck
[00058288] 4a40                      tst.w      d0
[0005828a] 672e                      beq.s      Aev_GetOlgaUpdated_1
[0005828c] 206f 0012                 movea.l    18(a7),a0
[00058290] 3f68 000a 000a            move.w     10(a0),10(a7)
[00058296] 426f 0010                 clr.w      16(a7)
[0005829a] 487a fd1c                 pea.l      SendOlgaUpdate(pc)
[0005829e] 487a fc54                 pea.l      CmpDatInfoConnect(pc)
[000582a2] 43ef 0008                 lea.l      8(a7),a1
[000582a6] 2079 000d 4bde            movea.l    olga_connection,a0
[000582ac] 2479 000d 4bde            movea.l    olga_connection,a2
[000582b2] 246a 0040                 movea.l    64(a2),a2
[000582b6] 4e92                      jsr        (a2)
[000582b8] 504f                      addq.w     #8,a7
Aev_GetOlgaUpdated_1:
[000582ba] 7001                      moveq.l    #1,d0
[000582bc] 4fef 001a                 lea.l      26(a7),a7
[000582c0] 245f                      movea.l    (a7)+,a2
[000582c2] 4e75                      rts

Aev_GetOlgaGetInfo:
[000582c4] 2f0a                      move.l     a2,-(a7)
[000582c6] 4fef fff0                 lea.l      -16(a7),a7
[000582ca] 2f48 0008                 move.l     a0,8(a7)
[000582ce] 206f 0008                 movea.l    8(a7),a0
[000582d2] 2f50 0004                 move.l     (a0),4(a7)
[000582d6] 487a fbfc                 pea.l      CmpIDConnect(pc)
[000582da] 226f 0008                 movea.l    8(a7),a1
[000582de] 43e9 000a                 lea.l      10(a1),a1
[000582e2] 2079 000d 4bde            movea.l    olga_connection,a0
[000582e8] 2479 000d 4bde            movea.l    olga_connection,a2
[000582ee] 246a 0020                 movea.l    32(a2),a2
[000582f2] 4e92                      jsr        (a2)
[000582f4] 584f                      addq.w     #4,a7
[000582f6] 2e88                      move.l     a0,(a7)
[000582f8] 2017                      move.l     (a7),d0
[000582fa] 672c                      beq.s      Aev_GetOlgaGetInfo_1
[000582fc] 2057                      movea.l    (a7),a0
[000582fe] 2f50 000c                 move.l     (a0),12(a7)
[00058302] 2257                      movea.l    (a7),a1
[00058304] 702d                      moveq.l    #45,d0
[00058306] 206f 000c                 movea.l    12(a7),a0
[0005830a] 246f 000c                 movea.l    12(a7),a2
[0005830e] 246a 0004                 movea.l    4(a2),a2
[00058312] 4e92                      jsr        (a2)
[00058314] 4a40                      tst.w      d0
[00058316] 6710                      beq.s      Aev_GetOlgaGetInfo_1
[00058318] 2057                      movea.l    (a7),a0
[0005831a] 226f 0004                 movea.l    4(a7),a1
[0005831e] 3029 0002                 move.w     2(a1),d0
[00058322] 4eb9 0005 8602            jsr        Aev_OlgaInfo
Aev_GetOlgaGetInfo_1:
[00058328] 7001                      moveq.l    #1,d0
[0005832a] 4fef 0010                 lea.l      16(a7),a7
[0005832e] 245f                      movea.l    (a7)+,a2
[00058330] 4e75                      rts

Aev_GetOlgaClientTermi:
[00058332] 7001                      moveq.l    #1,d0
[00058334] 4e75                      rts

Aev_GetOlgaIdle:
[00058336] 2f0a                      move.l     a2,-(a7)
[00058338] 4fef ffe6                 lea.l      -26(a7),a7
[0005833c] 2f48 0016                 move.l     a0,22(a7)
[00058340] 206f 0016                 movea.l    22(a7),a0
[00058344] 2f50 0012                 move.l     (a0),18(a7)
[00058348] 3ebc 0001                 move.w     #$0001,(a7)
[0005834c] 0c79 1249 000d 4bec       cmpi.w     #$1249,idle_message
[00058354] 662a                      bne.s      Aev_GetOlgaIdle_1
[00058356] 7008                      moveq.l    #8,d0
[00058358] 226f 0012                 movea.l    18(a7),a1
[0005835c] 5049                      addq.w     #8,a1
[0005835e] 41f9 000d 4bf4            lea.l      $000D4BF4,a0
[00058364] 4eb9 0007 6f2e            jsr        memcmp
[0005836a] 4a40                      tst.w      d0
[0005836c] 6612                      bne.s      Aev_GetOlgaIdle_1
[0005836e] 7210                      moveq.l    #16,d1
[00058370] 70ff                      moveq.l    #-1,d0
[00058372] 41f9 000d 4bec            lea.l      idle_message,a0
[00058378] 4eb9 0007 712e            jsr        memset
[0005837e] 6052                      bra.s      Aev_GetOlgaIdle_2
Aev_GetOlgaIdle_1:
[00058380] 206f 0012                 movea.l    18(a7),a0
[00058384] 3028 0002                 move.w     2(a0),d0
[00058388] 2079 0010 1f12            movea.l    ACSblk,a0
[0005838e] b050                      cmp.w      (a0),d0
[00058390] 6740                      beq.s      Aev_GetOlgaIdle_2
[00058392] 7010                      moveq.l    #16,d0
[00058394] 226f 0012                 movea.l    18(a7),a1
[00058398] 41ef 0002                 lea.l      2(a7),a0
[0005839c] 4eb9 0007 6f44            jsr        memcpy
[000583a2] 2079 0010 1f12            movea.l    ACSblk,a0
[000583a8] 3f50 0004                 move.w     (a0),4(a7)
[000583ac] 2279 000d 99d6            movea.l    _globl,a1
[000583b2] 41ef 0002                 lea.l      2(a7),a0
[000583b6] 7210                      moveq.l    #16,d1
[000583b8] 246f 0012                 movea.l    18(a7),a2
[000583bc] 302a 0002                 move.w     2(a2),d0
[000583c0] 4eb9 0006 a818            jsr        mt_appl_write
[000583c6] 4a40                      tst.w      d0
[000583c8] 6704                      beq.s      Aev_GetOlgaIdle_3
[000583ca] 7001                      moveq.l    #1,d0
[000583cc] 6002                      bra.s      Aev_GetOlgaIdle_4
Aev_GetOlgaIdle_3:
[000583ce] 4240                      clr.w      d0
Aev_GetOlgaIdle_4:
[000583d0] 3e80                      move.w     d0,(a7)
Aev_GetOlgaIdle_2:
[000583d2] 3017                      move.w     (a7),d0
[000583d4] 4fef 001a                 lea.l      26(a7),a7
[000583d8] 245f                      movea.l    (a7)+,a2
[000583da] 4e75                      rts

Aev_OleInit:
[000583dc] 4fef ffee                 lea.l      -18(a7),a7
[000583e0] 426f 0010                 clr.w      16(a7)
[000583e4] 3039 000d 4be2            move.w     olga_id,d0
[000583ea] 6b5c                      bmi.s      Aev_OleInit_1
[000583ec] 2079 0010 1f12            movea.l    ACSblk,a0
[000583f2] 3039 000d 4be2            move.w     olga_id,d0
[000583f8] b050                      cmp.w      (a0),d0
[000583fa] 674c                      beq.s      Aev_OleInit_1
[000583fc] 7210                      moveq.l    #16,d1
[000583fe] 4240                      clr.w      d0
[00058400] 41d7                      lea.l      (a7),a0
[00058402] 4eb9 0007 712e            jsr        memset
[00058408] 3ebc 4950                 move.w     #$4950,(a7)
[0005840c] 2079 0010 1f12            movea.l    ACSblk,a0
[00058412] 3f50 0002                 move.w     (a0),2(a7)
[00058416] 3f7c 0801 0006            move.w     #$0801,6(a7)
[0005841c] 3f79 0009 bfd4 000e       move.w     $0009BFD4,14(a7)
[00058424] 2279 000d 99d6            movea.l    _globl,a1
[0005842a] 41d7                      lea.l      (a7),a0
[0005842c] 7210                      moveq.l    #16,d1
[0005842e] 3039 000d 4be2            move.w     olga_id,d0
[00058434] 4eb9 0006 a818            jsr        mt_appl_write
[0005843a] 4a40                      tst.w      d0
[0005843c] 6704                      beq.s      Aev_OleInit_2
[0005843e] 7001                      moveq.l    #1,d0
[00058440] 6002                      bra.s      Aev_OleInit_3
Aev_OleInit_2:
[00058442] 4240                      clr.w      d0
Aev_OleInit_3:
[00058444] 3f40 0010                 move.w     d0,16(a7)
Aev_OleInit_1:
[00058448] 302f 0010                 move.w     16(a7),d0
[0005844c] 4fef 0012                 lea.l      18(a7),a7
[00058450] 4e75                      rts

Aev_OleExit:
[00058452] 4fef ffee                 lea.l      -18(a7),a7
[00058456] 426f 0010                 clr.w      16(a7)
[0005845a] 6100 f99c                 bsr        CheckOlga
[0005845e] 4a40                      tst.w      d0
[00058460] 676c                      beq.s      Aev_OleExit_1
[00058462] 7210                      moveq.l    #16,d1
[00058464] 4240                      clr.w      d0
[00058466] 41d7                      lea.l      (a7),a0
[00058468] 4eb9 0007 712e            jsr        memset
[0005846e] 3ebc 4951                 move.w     #$4951,(a7)
[00058472] 2079 0010 1f12            movea.l    ACSblk,a0
[00058478] 3f50 0002                 move.w     (a0),2(a7)
[0005847c] 2279 000d 99d6            movea.l    _globl,a1
[00058482] 41d7                      lea.l      (a7),a0
[00058484] 7210                      moveq.l    #16,d1
[00058486] 3039 000d 4be2            move.w     olga_id,d0
[0005848c] 4eb9 0006 a818            jsr        mt_appl_write
[00058492] 4a40                      tst.w      d0
[00058494] 6704                      beq.s      Aev_OleExit_2
[00058496] 7001                      moveq.l    #1,d0
[00058498] 6002                      bra.s      Aev_OleExit_3
Aev_OleExit_2:
[0005849a] 4240                      clr.w      d0
Aev_OleExit_3:
[0005849c] 3f40 0010                 move.w     d0,16(a7)
[000584a0] 33fc ffff 000d 4be2       move.w     #$FFFF,olga_id
[000584a8] 4279 000d 4be4            clr.w      olga_infos
[000584ae] 33fc ffff 000d 4be6       move.w     #$FFFF,olga_stufe
[000584b6] 4279 000d 4bea            clr.w      use_olga
[000584bc] 2079 000d 4bde            movea.l    olga_connection,a0
[000584c2] 2279 000d 4bde            movea.l    olga_connection,a1
[000584c8] 2269 0008                 movea.l    8(a1),a1
[000584cc] 4e91                      jsr        (a1)
Aev_OleExit_1:
[000584ce] 302f 0010                 move.w     16(a7),d0
[000584d2] 4fef 0012                 lea.l      18(a7),a7
[000584d6] 4e75                      rts

Aev_OlgaUpdate:
[000584d8] 2f0a                      move.l     a2,-(a7)
[000584da] 4fef ffd0                 lea.l      -48(a7),a7
[000584de] 2f48 002c                 move.l     a0,44(a7)
[000584e2] 426f 002a                 clr.w      42(a7)
[000584e6] 6100 f910                 bsr        CheckOlga
[000584ea] 4a40                      tst.w      d0
[000584ec] 6700 0108                 beq        Aev_OlgaUpdate_1
[000584f0] 2f6f 002c 000a            move.l     44(a7),10(a7)
[000584f6] 3f7c 0002 0014            move.w     #$0002,20(a7)
[000584fc] 41ef 0004                 lea.l      4(a7),a0
[00058500] 6100 fa66                 bsr        Datei2Connect
[00058504] 2f48 0016                 move.l     a0,22(a7)
[00058508] 7210                      moveq.l    #16,d1
[0005850a] 4240                      clr.w      d0
[0005850c] 41ef 001a                 lea.l      26(a7),a0
[00058510] 4eb9 0007 712e            jsr        memset
[00058516] 3f7c 1238 001a            move.w     #$1238,26(a7)
[0005851c] 2079 0010 1f12            movea.l    ACSblk,a0
[00058522] 3f50 001c                 move.w     (a0),28(a7)
[00058526] 202f 0016                 move.l     22(a7),d0
[0005852a] 660a                      bne.s      Aev_OlgaUpdate_2
[0005852c] 206f 0016                 movea.l    22(a7),a0
[00058530] 3028 001e                 move.w     30(a0),d0
[00058534] 6756                      beq.s      Aev_OlgaUpdate_3
Aev_OlgaUpdate_2:
[00058536] 206f 0016                 movea.l    22(a7),a0
[0005853a] 2068 000c                 movea.l    12(a0),a0
[0005853e] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00058544] 4a40                      tst.w      d0
[00058546] 6704                      beq.s      Aev_OlgaUpdate_4
[00058548] 4240                      clr.w      d0
[0005854a] 6008                      bra.s      Aev_OlgaUpdate_5
Aev_OlgaUpdate_4:
[0005854c] 206f 0016                 movea.l    22(a7),a0
[00058550] 3028 0004                 move.w     4(a0),d0
Aev_OlgaUpdate_5:
[00058554] 3f40 0024                 move.w     d0,36(a7)
[00058558] 206f 0016                 movea.l    22(a7),a0
[0005855c] 2f68 0006 0020            move.l     6(a0),32(a7)
[00058562] 206f 0016                 movea.l    22(a7),a0
[00058566] 0c68 1238 001a            cmpi.w     #$1238,26(a0)
[0005856c] 660a                      bne.s      Aev_OlgaUpdate_6
[0005856e] 206f 0016                 movea.l    22(a7),a0
[00058572] 5268 001c                 addq.w     #1,28(a0)
[00058576] 6008                      bra.s      Aev_OlgaUpdate_7
Aev_OlgaUpdate_6:
[00058578] 206f 0016                 movea.l    22(a7),a0
[0005857c] 4268 001c                 clr.w      28(a0)
Aev_OlgaUpdate_7:
[00058580] 206f 0016                 movea.l    22(a7),a0
[00058584] 317c 1238 001a            move.w     #$1238,26(a0)
[0005858a] 6044                      bra.s      Aev_OlgaUpdate_8
Aev_OlgaUpdate_3:
[0005858c] 206f 002c                 movea.l    44(a7),a0
[00058590] 4eb9 0007 69b0            jsr        strlen
[00058596] 5280                      addq.l     #1,d0
[00058598] 4eb9 0004 7f44            jsr        Ax_glmalloc
[0005859e] 2e88                      move.l     a0,(a7)
[000585a0] 2017                      move.l     (a7),d0
[000585a2] 6604                      bne.s      Aev_OlgaUpdate_9
[000585a4] 4240                      clr.w      d0
[000585a6] 6052                      bra.s      Aev_OlgaUpdate_10
Aev_OlgaUpdate_9:
[000585a8] 2257                      movea.l    (a7),a1
[000585aa] 2079 000d 450e            movea.l    globProtData,a0
[000585b0] 2479 000d 450e            movea.l    globProtData,a2
[000585b6] 246a 000c                 movea.l    12(a2),a2
[000585ba] 4e92                      jsr        (a2)
[000585bc] 226f 002c                 movea.l    44(a7),a1
[000585c0] 2057                      movea.l    (a7),a0
[000585c2] 4eb9 0007 6950            jsr        strcpy
[000585c8] 2f57 0020                 move.l     (a7),32(a7)
[000585cc] 426f 0024                 clr.w      36(a7)
Aev_OlgaUpdate_8:
[000585d0] 2279 000d 99d6            movea.l    _globl,a1
[000585d6] 41ef 001a                 lea.l      26(a7),a0
[000585da] 7210                      moveq.l    #16,d1
[000585dc] 3039 000d 4be2            move.w     olga_id,d0
[000585e2] 4eb9 0006 a818            jsr        mt_appl_write
[000585e8] 4a40                      tst.w      d0
[000585ea] 6704                      beq.s      Aev_OlgaUpdate_11
[000585ec] 7001                      moveq.l    #1,d0
[000585ee] 6002                      bra.s      Aev_OlgaUpdate_12
Aev_OlgaUpdate_11:
[000585f0] 4240                      clr.w      d0
Aev_OlgaUpdate_12:
[000585f2] 3f40 002a                 move.w     d0,42(a7)
Aev_OlgaUpdate_1:
[000585f6] 302f 002a                 move.w     42(a7),d0
Aev_OlgaUpdate_10:
[000585fa] 4fef 0030                 lea.l      48(a7),a7
[000585fe] 245f                      movea.l    (a7)+,a2
[00058600] 4e75                      rts

Aev_OlgaInfo:
[00058602] 4fef ffe8                 lea.l      -24(a7),a7
[00058606] 3f40 0016                 move.w     d0,22(a7)
[0005860a] 2f48 0012                 move.l     a0,18(a7)
[0005860e] 3ebc 0001                 move.w     #$0001,(a7)
[00058612] 6100 f7e4                 bsr        CheckOlga
[00058616] 4a40                      tst.w      d0
[00058618] 6754                      beq.s      Aev_OlgaInfo_1
[0005861a] 7210                      moveq.l    #16,d1
[0005861c] 4240                      clr.w      d0
[0005861e] 41ef 0002                 lea.l      2(a7),a0
[00058622] 4eb9 0007 712e            jsr        memset
[00058628] 3f7c 1248 0002            move.w     #$1248,2(a7)
[0005862e] 2079 0010 1f12            movea.l    ACSblk,a0
[00058634] 3f50 0004                 move.w     (a0),4(a7)
[00058638] 206f 0012                 movea.l    18(a7),a0
[0005863c] 3f68 0004 000c            move.w     4(a0),12(a7)
[00058642] 206f 0012                 movea.l    18(a7),a0
[00058646] 2f68 000c 0008            move.l     12(a0),8(a7)
[0005864c] 2279 000d 99d6            movea.l    _globl,a1
[00058652] 41ef 0002                 lea.l      2(a7),a0
[00058656] 7210                      moveq.l    #16,d1
[00058658] 302f 0016                 move.w     22(a7),d0
[0005865c] 4eb9 0006 a818            jsr        mt_appl_write
[00058662] 4a40                      tst.w      d0
[00058664] 6704                      beq.s      Aev_OlgaInfo_2
[00058666] 7001                      moveq.l    #1,d0
[00058668] 6002                      bra.s      Aev_OlgaInfo_3
Aev_OlgaInfo_2:
[0005866a] 4240                      clr.w      d0
Aev_OlgaInfo_3:
[0005866c] 3e80                      move.w     d0,(a7)
Aev_OlgaInfo_1:
[0005866e] 3017                      move.w     (a7),d0
[00058670] 4fef 0018                 lea.l      24(a7),a7
[00058674] 4e75                      rts

		.data

olga_connection:
[000d4bde]                           dc.b $00
[000d4bdf]                           dc.b $00
[000d4be0]                           dc.b $00
[000d4be1]                           dc.b $00
olga_id:
[000d4be2]                           dc.w $ffff
olga_infos:
[000d4be4]                           dc.b $00
[000d4be5]                           dc.b $00
olga_stufe:
[000d4be6]                           dc.w $ffff
olga_version:
[000d4be8]                           dc.b $00
[000d4be9]                           dc.b $00
use_olga:
[000d4bea]                           dc.b $00
[000d4beb]                           dc.b $00
idle_message:
[000d4bec]                           dc.w $ffff
[000d4bee]                           dc.w $ffff
[000d4bf0]                           dc.w $ffff
[000d4bf2]                           dc.w $ffff
[000d4bf4]                           dc.w $ffff
[000d4bf6]                           dc.w $ffff
[000d4bf8]                           dc.w $ffff
[000d4bfa]                           dc.w $ffff
max_id:
[000d4bfc]                           dc.b $00
[000d4bfd]                           dc.b $00
max_grp_id:
[000d4bfe]                           dc.b $00
[000d4bff]                           dc.b $00
phase:
[000d4c00]                           dc.w $ffff
[000d4c02]                           dc.b $00
xd4c03:
[000d4c03]                           dc.b 'OLGA    ',0
xd4c0c:
[000d4c0c]                           dc.b 'OLGAMANAGER',0
xd4c18:
[000d4c18]                           dc.b 'OLEMANGR',0
xd4c21:
[000d4c21]                           dc.b 'OLEMANAGER',0
		.even
