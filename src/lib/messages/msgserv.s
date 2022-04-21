
INMsgService:
[00053a5e] 2039 000d 450e            move.l     globProtData,d0
[00053a64] 6626                      bne.s      INMsgService_1
[00053a66] 4eb9 0006 2a5e            jsr        Alu_create
[00053a6c] 23c8 000d 450e            move.l     a0,globProtData
[00053a72] 2039 000d 450e            move.l     globProtData,d0
[00053a78] 6604                      bne.s      INMsgService_2
[00053a7a] 70ff                      moveq.l    #-1,d0
[00053a7c] 4e75                      rts
INMsgService_2:
[00053a7e] 2079 000d 450e            movea.l    globProtData,a0
[00053a84] 217c 0004 7fa6 0004       move.l     #Ax_glfree,4(a0)
INMsgService_1:
[00053a8c] 43f9 0005 3ac8            lea.l      P2IntCmp,a1
[00053a92] 720e                      moveq.l    #14,d1
[00053a94] 3039 000d 4876            move.w     MsgListeLen,d0
[00053a9a] 48c0                      ext.l      d0
[00053a9c] 41f9 000d 4512            lea.l      MsgListe,a0
[00053aa2] 4eb9 0007 5314            jsr        qsort
[00053aa8] 4240                      clr.w      d0
[00053aaa] 4e75                      rts

TRMsgService:
[00053aac] 2039 000d 450e            move.l     globProtData,d0
[00053ab2] 670c                      beq.s      TRMsgService_1
[00053ab4] 2079 000d 450e            movea.l    globProtData,a0
[00053aba] 4eb9 0006 2aa6            jsr        Alu_delete
TRMsgService_1:
[00053ac0] 42b9 000d 450e            clr.l      globProtData
[00053ac6] 4e75                      rts

P2IntCmp:
[00053ac8] 514f                      subq.w     #8,a7
[00053aca] 2f48 0004                 move.l     a0,4(a7)
[00053ace] 2e89                      move.l     a1,(a7)
[00053ad0] 206f 0004                 movea.l    4(a7),a0
[00053ad4] 3010                      move.w     (a0),d0
[00053ad6] 2057                      movea.l    (a7),a0
[00053ad8] 9050                      sub.w      (a0),d0
[00053ada] 504f                      addq.w     #8,a7
[00053adc] 4e75                      rts

Aev_message:
[00053ade] 2f0a                      move.l     a2,-(a7)
[00053ae0] 4fef ffd8                 lea.l      -40(a7),a7
[00053ae4] 2f48 0024                 move.l     a0,36(a7)
[00053ae8] 3ebc 0001                 move.w     #$0001,(a7)
[00053aec] 4eb9 0004 e608            jsr        Awi_root
[00053af2] 2008                      move.l     a0,d0
[00053af4] 6606                      bne.s      Aev_message_1
[00053af6] 4240                      clr.w      d0
[00053af8] 6000 0274                 bra        Aev_message_2
Aev_message_1:
[00053afc] 2079 0010 1f12            movea.l    ACSblk,a0
[00053b02] 2028 02a8                 move.l     680(a0),d0
[00053b06] 6710                      beq.s      Aev_message_3
[00053b08] 206f 0024                 movea.l    36(a7),a0
[00053b0c] 2279 0010 1f12            movea.l    ACSblk,a1
[00053b12] 2269 02a8                 movea.l    680(a1),a1
[00053b16] 4e91                      jsr        (a1)
Aev_message_3:
[00053b18] 206f 0024                 movea.l    36(a7),a0
[00053b1c] 0c50 0029                 cmpi.w     #$0029,(a0)
[00053b20] 660c                      bne.s      Aev_message_4
[00053b22] 91c8                      suba.l     a0,a0
[00053b24] 4eb9 0005 4fcc            jsr        Aev_GetAcClose
[00053b2a] 6000 0242                 bra        Aev_message_2
Aev_message_4:
[00053b2e] 487a ff98                 pea.l      P2IntCmp(pc)
[00053b32] 720e                      moveq.l    #14,d1
[00053b34] 3039 000d 4876            move.w     MsgListeLen,d0
[00053b3a] 48c0                      ext.l      d0
[00053b3c] 43f9 000d 4512            lea.l      MsgListe,a1
[00053b42] 206f 0028                 movea.l    40(a7),a0
[00053b46] 4eb9 0007 5178            jsr        bsearch
[00053b4c] 584f                      addq.w     #4,a7
[00053b4e] 2f48 0020                 move.l     a0,32(a7)
[00053b52] 202f 0020                 move.l     32(a7),d0
[00053b56] 6700 01ee                 beq        Aev_message_5
[00053b5a] 721e                      moveq.l    #30,d1
[00053b5c] 4240                      clr.w      d0
[00053b5e] 41ef 0002                 lea.l      2(a7),a0
[00053b62] 4eb9 0007 712e            jsr        memset
[00053b68] 2f6f 0024 0002            move.l     36(a7),2(a7)
[00053b6e] 206f 0020                 movea.l    32(a7),a0
[00053b72] 1028 000b                 move.b     11(a0),d0
[00053b76] 4880                      ext.w      d0
[00053b78] 5340                      subq.w     #1,d0
[00053b7a] 6706                      beq.s      Aev_message_6
[00053b7c] 5340                      subq.w     #1,d0
[00053b7e] 670e                      beq.s      Aev_message_7
[00053b80] 6032                      bra.s      Aev_message_8
Aev_message_6:
[00053b82] 4eb9 0004 e46a            jsr        Awi_ontop
[00053b88] 2f48 000e                 move.l     a0,14(a7)
[00053b8c] 602a                      bra.s      Aev_message_9
Aev_message_7:
[00053b8e] 486f 001c                 pea.l      28(a7)
[00053b92] 486f 001e                 pea.l      30(a7)
[00053b96] 486f 001e                 pea.l      30(a7)
[00053b9a] 486f 001e                 pea.l      30(a7)
[00053b9e] 43ef 001e                 lea.l      30(a7),a1
[00053ba2] 206f 0034                 movea.l    52(a7),a0
[00053ba6] 4eb9 0005 43a2            jsr        dd_find_dest
[00053bac] 4fef 0010                 lea.l      16(a7),a7
[00053bb0] 3e80                      move.w     d0,(a7)
[00053bb2] 6004                      bra.s      Aev_message_9
Aev_message_8:
[00053bb4] 42af 000e                 clr.l      14(a7)
Aev_message_9:
[00053bb8] 202f 000e                 move.l     14(a7),d0
[00053bbc] 666c                      bne.s      Aev_message_10
[00053bbe] 206f 0020                 movea.l    32(a7),a0
[00053bc2] 1028 0006                 move.b     6(a0),d0
[00053bc6] 6b62                      bmi.s      Aev_message_10
[00053bc8] 206f 0020                 movea.l    32(a7),a0
[00053bcc] 1028 0006                 move.b     6(a0),d0
[00053bd0] 4880                      ext.w      d0
[00053bd2] 48c0                      ext.l      d0
[00053bd4] d080                      add.l      d0,d0
[00053bd6] 206f 0024                 movea.l    36(a7),a0
[00053bda] 3030 0800                 move.w     0(a0,d0.l),d0
[00053bde] 6b4a                      bmi.s      Aev_message_10
[00053be0] 206f 0020                 movea.l    32(a7),a0
[00053be4] 1228 0006                 move.b     6(a0),d1
[00053be8] 4881                      ext.w      d1
[00053bea] 48c1                      ext.l      d1
[00053bec] d281                      add.l      d1,d1
[00053bee] 206f 0024                 movea.l    36(a7),a0
[00053bf2] 3030 1800                 move.w     0(a0,d1.l),d0
[00053bf6] 4eb9 0004 e5ea            jsr        Awi_wid
[00053bfc] 2f48 000e                 move.l     a0,14(a7)
[00053c00] 202f 000e                 move.l     14(a7),d0
[00053c04] 6606                      bne.s      Aev_message_11
[00053c06] 4240                      clr.w      d0
[00053c08] 6000 0164                 bra        Aev_message_2
Aev_message_11:
[00053c0c] 7002                      moveq.l    #2,d0
[00053c0e] 206f 000e                 movea.l    14(a7),a0
[00053c12] c068 0056                 and.w      86(a0),d0
[00053c16] 660a                      bne.s      Aev_message_12
[00053c18] 206f 0024                 movea.l    36(a7),a0
[00053c1c] 0c50 0015                 cmpi.w     #$0015,(a0)
[00053c20] 6606                      bne.s      Aev_message_13
Aev_message_12:
[00053c22] 4eb9 0004 b286            jsr        Awi_diaend
Aev_message_13:
[00053c28] 6010                      bra.s      Aev_message_14
Aev_message_10:
[00053c2a] 202f 000e                 move.l     14(a7),d0
[00053c2e] 660a                      bne.s      Aev_message_14
[00053c30] 4eb9 0004 e608            jsr        Awi_root
[00053c36] 2f48 000e                 move.l     a0,14(a7)
Aev_message_14:
[00053c3a] 206f 0020                 movea.l    32(a7),a0
[00053c3e] 1028 0007                 move.b     7(a0),d0
[00053c42] 6b18                      bmi.s      Aev_message_15
[00053c44] 206f 0020                 movea.l    32(a7),a0
[00053c48] 1028 0007                 move.b     7(a0),d0
[00053c4c] 4880                      ext.w      d0
[00053c4e] 48c0                      ext.l      d0
[00053c50] d080                      add.l      d0,d0
[00053c52] 206f 0024                 movea.l    36(a7),a0
[00053c56] 3030 0800                 move.w     0(a0,d0.l),d0
[00053c5a] 600a                      bra.s      Aev_message_16
Aev_message_15:
[00053c5c] 2079 0010 1f12            movea.l    ACSblk,a0
[00053c62] 3028 0008                 move.w     8(a0),d0
Aev_message_16:
[00053c66] 3f40 0006                 move.w     d0,6(a7)
[00053c6a] 206f 0020                 movea.l    32(a7),a0
[00053c6e] 1028 0008                 move.b     8(a0),d0
[00053c72] 6b18                      bmi.s      Aev_message_17
[00053c74] 206f 0020                 movea.l    32(a7),a0
[00053c78] 1028 0008                 move.b     8(a0),d0
[00053c7c] 4880                      ext.w      d0
[00053c7e] 48c0                      ext.l      d0
[00053c80] d080                      add.l      d0,d0
[00053c82] 206f 0024                 movea.l    36(a7),a0
[00053c86] 3030 0800                 move.w     0(a0,d0.l),d0
[00053c8a] 600a                      bra.s      Aev_message_18
Aev_message_17:
[00053c8c] 2079 0010 1f12            movea.l    ACSblk,a0
[00053c92] 3028 000a                 move.w     10(a0),d0
Aev_message_18:
[00053c96] 3f40 0008                 move.w     d0,8(a7)
[00053c9a] 206f 0020                 movea.l    32(a7),a0
[00053c9e] 1028 0009                 move.b     9(a0),d0
[00053ca2] 6b18                      bmi.s      Aev_message_19
[00053ca4] 206f 0020                 movea.l    32(a7),a0
[00053ca8] 1028 0009                 move.b     9(a0),d0
[00053cac] 4880                      ext.w      d0
[00053cae] 48c0                      ext.l      d0
[00053cb0] d080                      add.l      d0,d0
[00053cb2] 206f 0024                 movea.l    36(a7),a0
[00053cb6] 3030 0800                 move.w     0(a0,d0.l),d0
[00053cba] 600a                      bra.s      Aev_message_20
Aev_message_19:
[00053cbc] 2079 0010 1f12            movea.l    ACSblk,a0
[00053cc2] 3028 000c                 move.w     12(a0),d0
Aev_message_20:
[00053cc6] 3f40 000a                 move.w     d0,10(a7)
[00053cca] 206f 0020                 movea.l    32(a7),a0
[00053cce] 1028 000a                 move.b     10(a0),d0
[00053cd2] 6b18                      bmi.s      Aev_message_21
[00053cd4] 206f 0020                 movea.l    32(a7),a0
[00053cd8] 1028 000a                 move.b     10(a0),d0
[00053cdc] 4880                      ext.w      d0
[00053cde] 48c0                      ext.l      d0
[00053ce0] d080                      add.l      d0,d0
[00053ce2] 206f 0024                 movea.l    36(a7),a0
[00053ce6] 3030 0800                 move.w     0(a0,d0.l),d0
[00053cea] 600a                      bra.s      Aev_message_22
Aev_message_21:
[00053cec] 2079 0010 1f12            movea.l    ACSblk,a0
[00053cf2] 3028 000e                 move.w     14(a0),d0
Aev_message_22:
[00053cf6] 3f40 000c                 move.w     d0,12(a7)
[00053cfa] 206f 0020                 movea.l    32(a7),a0
[00053cfe] 3028 000c                 move.w     12(a0),d0
[00053d02] 6b18                      bmi.s      Aev_message_23
[00053d04] 206f 0020                 movea.l    32(a7),a0
[00053d08] 3028 000c                 move.w     12(a0),d0
[00053d0c] 48c0                      ext.l      d0
[00053d0e] d080                      add.l      d0,d0
[00053d10] 206f 0024                 movea.l    36(a7),a0
[00053d14] 3f70 0800 001e            move.w     0(a0,d0.l),30(a7)
[00053d1a] 6004                      bra.s      Aev_message_24
Aev_message_23:
[00053d1c] 426f 001e                 clr.w      30(a7)
Aev_message_24:
[00053d20] 206f 0020                 movea.l    32(a7),a0
[00053d24] 2028 0002                 move.l     2(a0),d0
[00053d28] 6716                      beq.s      Aev_message_25
[00053d2a] 3017                      move.w     (a7),d0
[00053d2c] 6712                      beq.s      Aev_message_25
[00053d2e] 41ef 0002                 lea.l      2(a7),a0
[00053d32] 226f 0020                 movea.l    32(a7),a1
[00053d36] 2269 0002                 movea.l    2(a1),a1
[00053d3a] 4e91                      jsr        (a1)
[00053d3c] 3e80                      move.w     d0,(a7)
[00053d3e] 6004                      bra.s      Aev_message_26
Aev_message_25:
[00053d40] 3ebc 0001                 move.w     #$0001,(a7)
Aev_message_26:
[00053d44] 6020                      bra.s      Aev_message_27
Aev_message_5:
[00053d46] 4eb9 0004 e608            jsr        Awi_root
[00053d4c] 2f48 000e                 move.l     a0,14(a7)
[00053d50] 226f 0024                 movea.l    36(a7),a1
[00053d54] 701b                      moveq.l    #27,d0
[00053d56] 206f 000e                 movea.l    14(a7),a0
[00053d5a] 246f 000e                 movea.l    14(a7),a2
[00053d5e] 246a 0004                 movea.l    4(a2),a2
[00053d62] 4e92                      jsr        (a2)
[00053d64] 3e80                      move.w     d0,(a7)
Aev_message_27:
[00053d66] 4eb9 0004 b33c            jsr        Awi_diastart
[00053d6c] 3017                      move.w     (a7),d0
Aev_message_2:
[00053d6e] 4fef 0028                 lea.l      40(a7),a7
[00053d72] 245f                      movea.l    (a7)+,a2
[00053d74] 4e75                      rts

Aev_CmpMsgInList:
[00053d76] 4fef fff6                 lea.l      -10(a7),a7
[00053d7a] 2f48 0006                 move.l     a0,6(a7)
[00053d7e] 2f49 0002                 move.l     a1,2(a7)
[00053d82] 206f 0006                 movea.l    6(a7),a0
[00053d86] 3010                      move.w     (a0),d0
[00053d88] 206f 0002                 movea.l    2(a7),a0
[00053d8c] b050                      cmp.w      (a0),d0
[00053d8e] 6704                      beq.s      Aev_CmpMsgInList_1
[00053d90] 4240                      clr.w      d0
[00053d92] 6042                      bra.s      Aev_CmpMsgInList_2
Aev_CmpMsgInList_1:
[00053d94] 4257                      clr.w      (a7)
[00053d96] 6036                      bra.s      Aev_CmpMsgInList_3
Aev_CmpMsgInList_5:
[00053d98] 3017                      move.w     (a7),d0
[00053d9a] 48c0                      ext.l      d0
[00053d9c] e588                      lsl.l      #2,d0
[00053d9e] 206f 0006                 movea.l    6(a7),a0
[00053da2] 2030 0804                 move.l     4(a0,d0.l),d0
[00053da6] 6724                      beq.s      Aev_CmpMsgInList_4
[00053da8] 3017                      move.w     (a7),d0
[00053daa] 48c0                      ext.l      d0
[00053dac] d080                      add.l      d0,d0
[00053dae] 206f 0002                 movea.l    2(a7),a0
[00053db2] 3030 080a                 move.w     10(a0,d0.l),d0
[00053db6] 3217                      move.w     (a7),d1
[00053db8] 48c1                      ext.l      d1
[00053dba] e589                      lsl.l      #2,d1
[00053dbc] 206f 0006                 movea.l    6(a7),a0
[00053dc0] 2070 1804                 movea.l    4(a0,d1.l),a0
[00053dc4] b050                      cmp.w      (a0),d0
[00053dc6] 6704                      beq.s      Aev_CmpMsgInList_4
[00053dc8] 4240                      clr.w      d0
[00053dca] 600a                      bra.s      Aev_CmpMsgInList_2
Aev_CmpMsgInList_4:
[00053dcc] 5257                      addq.w     #1,(a7)
Aev_CmpMsgInList_3:
[00053dce] 0c57 0008                 cmpi.w     #$0008,(a7)
[00053dd2] 6dc4                      blt.s      Aev_CmpMsgInList_5
[00053dd4] 7001                      moveq.l    #1,d0
Aev_CmpMsgInList_2:
[00053dd6] 4fef 000a                 lea.l      10(a7),a7
[00053dda] 4e75                      rts

Aev_CmpDestID:
[00053ddc] 514f                      subq.w     #8,a7
[00053dde] 2f48 0004                 move.l     a0,4(a7)
[00053de2] 2e89                      move.l     a1,(a7)
[00053de4] 206f 0004                 movea.l    4(a7),a0
[00053de8] 3010                      move.w     (a0),d0
[00053dea] 2057                      movea.l    (a7),a0
[00053dec] b050                      cmp.w      (a0),d0
[00053dee] 6604                      bne.s      Aev_CmpDestID_1
[00053df0] 7001                      moveq.l    #1,d0
[00053df2] 6002                      bra.s      Aev_CmpDestID_2
Aev_CmpDestID_1:
[00053df4] 4240                      clr.w      d0
Aev_CmpDestID_2:
[00053df6] 504f                      addq.w     #8,a7
[00053df8] 4e75                      rts

Aev_SendMsg:
[00053dfa] 2f0a                      move.l     a2,-(a7)
[00053dfc] 4fef ffec                 lea.l      -20(a7),a7
[00053e00] 3f40 0012                 move.w     d0,18(a7)
[00053e04] 3f41 0010                 move.w     d1,16(a7)
[00053e08] 2f48 000c                 move.l     a0,12(a7)
[00053e0c] 2f49 0008                 move.l     a1,8(a7)
[00053e10] 3f42 0006                 move.w     d2,6(a7)
[00053e14] 4257                      clr.w      (a7)
[00053e16] 2079 0010 1f12            movea.l    ACSblk,a0
[00053e1c] 226f 000c                 movea.l    12(a7),a1
[00053e20] 3350 0002                 move.w     (a0),2(a1)
[00053e24] 2279 000d 99d6            movea.l    _globl,a1
[00053e2a] 206f 000c                 movea.l    12(a7),a0
[00053e2e] 7210                      moveq.l    #16,d1
[00053e30] 302f 0012                 move.w     18(a7),d0
[00053e34] 4eb9 0006 a818            jsr        mt_appl_write
[00053e3a] 4a40                      tst.w      d0
[00053e3c] 6704                      beq.s      Aev_SendMsg_1
[00053e3e] 7001                      moveq.l    #1,d0
[00053e40] 6002                      bra.s      Aev_SendMsg_2
Aev_SendMsg_1:
[00053e42] 4240                      clr.w      d0
Aev_SendMsg_2:
[00053e44] 3e80                      move.w     d0,(a7)
[00053e46] 3017                      move.w     (a7),d0
[00053e48] 6700 0090                 beq        Aev_SendMsg_3
[00053e4c] 302f 0006                 move.w     6(a7),d0
[00053e50] 6b00 0088                 bmi        Aev_SendMsg_3
[00053e54] 202f 0008                 move.l     8(a7),d0
[00053e58] 6700 0080                 beq        Aev_SendMsg_3
[00053e5c] 701a                      moveq.l    #26,d0
[00053e5e] 4eb9 0004 7cc8            jsr        Ax_malloc
[00053e64] 2f48 0002                 move.l     a0,2(a7)
[00053e68] 202f 0002                 move.l     2(a7),d0
[00053e6c] 6604                      bne.s      Aev_SendMsg_4
[00053e6e] 4240                      clr.w      d0
[00053e70] 606a                      bra.s      Aev_SendMsg_5
Aev_SendMsg_4:
[00053e72] 206f 0002                 movea.l    2(a7),a0
[00053e76] 30af 0012                 move.w     18(a7),(a0)
[00053e7a] 206f 0002                 movea.l    2(a7),a0
[00053e7e] 216f 0008 0002            move.l     8(a7),2(a0)
[00053e84] 206f 0002                 movea.l    2(a7),a0
[00053e88] 316f 0006 0006            move.w     6(a7),6(a0)
[00053e8e] 206f 0002                 movea.l    2(a7),a0
[00053e92] 316f 0010 0008            move.w     16(a7),8(a0)
[00053e98] 7010                      moveq.l    #16,d0
[00053e9a] 226f 000c                 movea.l    12(a7),a1
[00053e9e] 206f 0002                 movea.l    2(a7),a0
[00053ea2] 41e8 000a                 lea.l      10(a0),a0
[00053ea6] 4eb9 0007 6f44            jsr        memcpy
[00053eac] 226f 0002                 movea.l    2(a7),a1
[00053eb0] 2079 000d 2c50            movea.l    SentMsg,a0
[00053eb6] 2479 000d 2c50            movea.l    SentMsg,a2
[00053ebc] 246a 000c                 movea.l    12(a2),a2
[00053ec0] 4e92                      jsr        (a2)
[00053ec2] 5340                      subq.w     #1,d0
[00053ec4] 6714                      beq.s      Aev_SendMsg_3
[00053ec6] 226f 000c                 movea.l    12(a7),a1
[00053eca] 7004                      moveq.l    #4,d0
[00053ecc] 206f 0008                 movea.l    8(a7),a0
[00053ed0] 246f 0008                 movea.l    8(a7),a2
[00053ed4] 246a 0004                 movea.l    4(a2),a2
[00053ed8] 4e92                      jsr        (a2)
Aev_SendMsg_3:
[00053eda] 3017                      move.w     (a7),d0
Aev_SendMsg_5:
[00053edc] 4fef 0014                 lea.l      20(a7),a7
[00053ee0] 245f                      movea.l    (a7)+,a2
[00053ee2] 4e75                      rts

Aev_SendMsg2all:
[00053ee4] 2f0a                      move.l     a2,-(a7)
[00053ee6] 514f                      subq.w     #8,a7
[00053ee8] 2f48 0004                 move.l     a0,4(a7)
[00053eec] 2e89                      move.l     a1,(a7)
[00053eee] 206f 0004                 movea.l    4(a7),a0
[00053ef2] 3028 0008                 move.w     8(a0),d0
[00053ef6] 6b28                      bmi.s      Aev_SendMsg2all_1
[00053ef8] 206f 0004                 movea.l    4(a7),a0
[00053efc] 3428 0008                 move.w     8(a0),d2
[00053f00] 206f 0004                 movea.l    4(a7),a0
[00053f04] 2268 0004                 movea.l    4(a0),a1
[00053f08] 206f 0004                 movea.l    4(a7),a0
[00053f0c] 2050                      movea.l    (a0),a0
[00053f0e] 246f 0004                 movea.l    4(a7),a2
[00053f12] 322a 000a                 move.w     10(a2),d1
[00053f16] 2457                      movea.l    (a7),a2
[00053f18] 3012                      move.w     (a2),d0
[00053f1a] 6100 fede                 bsr        Aev_SendMsg
[00053f1e] 6018                      bra.s      Aev_SendMsg2all_2
Aev_SendMsg2all_1:
[00053f20] 2279 000d 99d6            movea.l    _globl,a1
[00053f26] 206f 0004                 movea.l    4(a7),a0
[00053f2a] 2050                      movea.l    (a0),a0
[00053f2c] 7210                      moveq.l    #16,d1
[00053f2e] 2457                      movea.l    (a7),a2
[00053f30] 3012                      move.w     (a2),d0
[00053f32] 4eb9 0006 a818            jsr        mt_appl_write
Aev_SendMsg2all_2:
[00053f38] 504f                      addq.w     #8,a7
[00053f3a] 245f                      movea.l    (a7)+,a2
[00053f3c] 4e75                      rts

Aev_SendAllMsg:
[00053f3e] 2f0a                      move.l     a2,-(a7)
[00053f40] 4fef ffe8                 lea.l      -24(a7),a7
[00053f44] 2f48 0014                 move.l     a0,20(a7)
[00053f48] 3f40 0012                 move.w     d0,18(a7)
[00053f4c] 2f49 000e                 move.l     a1,14(a7)
[00053f50] 3f41 000c                 move.w     d1,12(a7)
[00053f54] 2eaf 0014                 move.l     20(a7),(a7)
[00053f58] 2f6f 000e 0004            move.l     14(a7),4(a7)
[00053f5e] 3f6f 000c 0008            move.w     12(a7),8(a7)
[00053f64] 3f6f 0012 000a            move.w     18(a7),10(a7)
[00053f6a] 487a ff78                 pea.l      Aev_SendMsg2all(pc)
[00053f6e] 42a7                      clr.l      -(a7)
[00053f70] 43ef 0008                 lea.l      8(a7),a1
[00053f74] 2079 000d 2c54            movea.l    ListOfApps,a0
[00053f7a] 2479 000d 2c54            movea.l    ListOfApps,a2
[00053f80] 246a 0040                 movea.l    64(a2),a2
[00053f84] 4e92                      jsr        (a2)
[00053f86] 504f                      addq.w     #8,a7
[00053f88] 7001                      moveq.l    #1,d0
[00053f8a] 4fef 0018                 lea.l      24(a7),a7
[00053f8e] 245f                      movea.l    (a7)+,a2
[00053f90] 4e75                      rts

DDCmpIDs:
[00053f92] 514f                      subq.w     #8,a7
[00053f94] 2f48 0004                 move.l     a0,4(a7)
[00053f98] 2e89                      move.l     a1,(a7)
[00053f9a] 2057                      movea.l    (a7),a0
[00053f9c] 3010                      move.w     (a0),d0
[00053f9e] 206f 0004                 movea.l    4(a7),a0
[00053fa2] b050                      cmp.w      (a0),d0
[00053fa4] 6604                      bne.s      DDCmpIDs_1
[00053fa6] 7001                      moveq.l    #1,d0
[00053fa8] 6002                      bra.s      DDCmpIDs_2
DDCmpIDs_1:
[00053faa] 4240                      clr.w      d0
DDCmpIDs_2:
[00053fac] 504f                      addq.w     #8,a7
[00053fae] 4e75                      rts

Aev_DDSearch:
[00053fb0] 2f0a                      move.l     a2,-(a7)
[00053fb2] 514f                      subq.w     #8,a7
[00053fb4] 3f40 0006                 move.w     d0,6(a7)
[00053fb8] 3f6f 0006 0004            move.w     6(a7),4(a7)
[00053fbe] 487a ffd2                 pea.l      DDCmpIDs(pc)
[00053fc2] 43ef 0008                 lea.l      8(a7),a1
[00053fc6] 2079 000d 2c54            movea.l    ListOfApps,a0
[00053fcc] 2479 000d 2c54            movea.l    ListOfApps,a2
[00053fd2] 246a 0020                 movea.l    32(a2),a2
[00053fd6] 4e92                      jsr        (a2)
[00053fd8] 584f                      addq.w     #4,a7
[00053fda] 2e88                      move.l     a0,(a7)
[00053fdc] 2057                      movea.l    (a7),a0
[00053fde] 504f                      addq.w     #8,a7
[00053fe0] 245f                      movea.l    (a7)+,a2
[00053fe2] 4e75                      rts

Aev_DDAdd:
[00053fe4] 2f0a                      move.l     a2,-(a7)
[00053fe6] 4fef fff0                 lea.l      -16(a7),a7
[00053fea] 3f40 000e                 move.w     d0,14(a7)
[00053fee] 3f41 000c                 move.w     d1,12(a7)
[00053ff2] 2f48 0008                 move.l     a0,8(a7)
[00053ff6] 2f49 0004                 move.l     a1,4(a7)
[00053ffa] 0c6f 0002 000c            cmpi.w     #$0002,12(a7)
[00054000] 670e                      beq.s      Aev_DDAdd_1
[00054002] 0c6f 0004 000c            cmpi.w     #$0004,12(a7)
[00054008] 6706                      beq.s      Aev_DDAdd_1
[0005400a] 4240                      clr.w      d0
[0005400c] 6000 00b0                 bra        Aev_DDAdd_2
Aev_DDAdd_1:
[00054010] 302f 000e                 move.w     14(a7),d0
[00054014] 6100 ff9a                 bsr.w      Aev_DDSearch
[00054018] 2e88                      move.l     a0,(a7)
[0005401a] 2017                      move.l     (a7),d0
[0005401c] 664c                      bne.s      Aev_DDAdd_3
[0005401e] 7024                      moveq.l    #36,d0
[00054020] 4eb9 0004 7cc8            jsr        Ax_malloc
[00054026] 2e88                      move.l     a0,(a7)
[00054028] 2017                      move.l     (a7),d0
[0005402a] 6606                      bne.s      Aev_DDAdd_4
[0005402c] 4240                      clr.w      d0
[0005402e] 6000 008e                 bra        Aev_DDAdd_2
Aev_DDAdd_4:
[00054032] 7224                      moveq.l    #36,d1
[00054034] 4240                      clr.w      d0
[00054036] 2057                      movea.l    (a7),a0
[00054038] 4eb9 0007 712e            jsr        memset
[0005403e] 2057                      movea.l    (a7),a0
[00054040] 30af 000e                 move.w     14(a7),(a0)
[00054044] 2257                      movea.l    (a7),a1
[00054046] 2079 000d 2c54            movea.l    ListOfApps,a0
[0005404c] 2479 000d 2c54            movea.l    ListOfApps,a2
[00054052] 246a 000c                 movea.l    12(a2),a2
[00054056] 4e92                      jsr        (a2)
[00054058] 4a40                      tst.w      d0
[0005405a] 660e                      bne.s      Aev_DDAdd_3
[0005405c] 7024                      moveq.l    #36,d0
[0005405e] 2057                      movea.l    (a7),a0
[00054060] 4eb9 0004 8140            jsr        Ax_recycle
[00054066] 4240                      clr.w      d0
[00054068] 6054                      bra.s      Aev_DDAdd_2
Aev_DDAdd_3:
[0005406a] 302f 000c                 move.w     12(a7),d0
[0005406e] 5540                      subq.w     #2,d0
[00054070] 6706                      beq.s      Aev_DDAdd_5
[00054072] 5540                      subq.w     #2,d0
[00054074] 6720                      beq.s      Aev_DDAdd_6
[00054076] 6044                      bra.s      Aev_DDAdd_7
Aev_DDAdd_5:
[00054078] 2057                      movea.l    (a7),a0
[0005407a] 00a8 0000 0002 0002       ori.l      #$00000002,2(a0)
[00054082] 206f 0008                 movea.l    8(a7),a0
[00054086] 2257                      movea.l    (a7),a1
[00054088] 3350 0006                 move.w     (a0),6(a1)
[0005408c] 2057                      movea.l    (a7),a0
[0005408e] 216f 0004 0008            move.l     4(a7),8(a0)
[00054094] 6026                      bra.s      Aev_DDAdd_7
Aev_DDAdd_6:
[00054096] 2057                      movea.l    (a7),a0
[00054098] 00a8 0000 0004 0002       ori.l      #$00000004,2(a0)
[000540a0] 7006                      moveq.l    #6,d0
[000540a2] 226f 0008                 movea.l    8(a7),a1
[000540a6] 2057                      movea.l    (a7),a0
[000540a8] 41e8 000c                 lea.l      12(a0),a0
[000540ac] 4eb9 0007 6f44            jsr        memcpy
[000540b2] 2057                      movea.l    (a7),a0
[000540b4] 216f 0004 0012            move.l     4(a7),18(a0)
[000540ba] 4e71                      nop
Aev_DDAdd_7:
[000540bc] 7001                      moveq.l    #1,d0
Aev_DDAdd_2:
[000540be] 4fef 0010                 lea.l      16(a7),a7
[000540c2] 245f                      movea.l    (a7)+,a2
[000540c4] 4e75                      rts

Aev_DDDelete:
[000540c6] 2f0a                      move.l     a2,-(a7)
[000540c8] 554f                      subq.w     #2,a7
[000540ca] 3e80                      move.w     d0,(a7)
[000540cc] 487a fec4                 pea.l      DDCmpIDs(pc)
[000540d0] 43ef 0004                 lea.l      4(a7),a1
[000540d4] 2079 000d 2c54            movea.l    ListOfApps,a0
[000540da] 2479 000d 2c54            movea.l    ListOfApps,a2
[000540e0] 246a 0018                 movea.l    24(a2),a2
[000540e4] 4e92                      jsr        (a2)
[000540e6] 584f                      addq.w     #4,a7
[000540e8] 7201                      moveq.l    #1,d1
[000540ea] b280                      cmp.l      d0,d1
[000540ec] 6604                      bne.s      Aev_DDDelete_1
[000540ee] 7001                      moveq.l    #1,d0
[000540f0] 6002                      bra.s      Aev_DDDelete_2
Aev_DDDelete_1:
[000540f2] 4240                      clr.w      d0
Aev_DDDelete_2:
[000540f4] 544f                      addq.w     #2,a7
[000540f6] 245f                      movea.l    (a7)+,a2
[000540f8] 4e75                      rts

Aev_DDRemove:
[000540fa] 594f                      subq.w     #4,a7
[000540fc] 2e88                      move.l     a0,(a7)
[000540fe] 7002                      moveq.l    #2,d0
[00054100] 2057                      movea.l    (a7),a0
[00054102] c0a8 0002                 and.l      2(a0),d0
[00054106] 670e                      beq.s      Aev_DDRemove_1
[00054108] 72ff                      moveq.l    #-1,d1
[0005410a] 91c8                      suba.l     a0,a0
[0005410c] 2257                      movea.l    (a7),a1
[0005410e] 3011                      move.w     (a1),d0
[00054110] 4eb9 0005 5be8            jsr        Aev_AccExit
Aev_DDRemove_1:
[00054116] 7004                      moveq.l    #4,d0
[00054118] 2057                      movea.l    (a7),a0
[0005411a] c0a8 0002                 and.l      2(a0),d0
[0005411e] 670e                      beq.s      Aev_DDRemove_2
[00054120] 72ff                      moveq.l    #-1,d1
[00054122] 91c8                      suba.l     a0,a0
[00054124] 2257                      movea.l    (a7),a1
[00054126] 3011                      move.w     (a1),d0
[00054128] 4eb9 0005 6198            jsr        Aev_AvExit
Aev_DDRemove_2:
[0005412e] 2057                      movea.l    (a7),a0
[00054130] 41e8 0016                 lea.l      22(a0),a0
[00054134] 4eb9 0005 51c6            jsr        XAccDataDelete
[0005413a] 2057                      movea.l    (a7),a0
[0005413c] 2068 0020                 movea.l    32(a0),a0
[00054140] 4eb9 0005 5dd4            jsr        VaDataDelete
[00054146] 7024                      moveq.l    #36,d0
[00054148] 2057                      movea.l    (a7),a0
[0005414a] 4eb9 0004 8140            jsr        Ax_recycle
[00054150] 7001                      moveq.l    #1,d0
[00054152] 584f                      addq.w     #4,a7
[00054154] 4e75                      rts

Ash_chkDDtype:
[00054156] 514f                      subq.w     #8,a7
[00054158] 2f48 0004                 move.l     a0,4(a7)
[0005415c] 2e89                      move.l     a1,(a7)
[0005415e] 206f 0004                 movea.l    4(a7),a0
[00054162] 0c50 0002                 cmpi.w     #$0002,(a0)
[00054166] 670a                      beq.s      Ash_chkDDtype_1
[00054168] 206f 0004                 movea.l    4(a7),a0
[0005416c] 0c50 0004                 cmpi.w     #$0004,(a0)
[00054170] 660e                      bne.s      Ash_chkDDtype_2
Ash_chkDDtype_1:
[00054172] 2057                      movea.l    (a7),a0
[00054174] 3028 0004                 move.w     4(a0),d0
[00054178] 206f 0004                 movea.l    4(a7),a0
[0005417c] c050                      and.w      (a0),d0
[0005417e] 6002                      bra.s      Ash_chkDDtype_3
Ash_chkDDtype_2:
[00054180] 4240                      clr.w      d0
Ash_chkDDtype_3:
[00054182] 504f                      addq.w     #8,a7
[00054184] 4e75                      rts

Ash_sendall:
[00054186] 2f0a                      move.l     a2,-(a7)
[00054188] 4fef ffe8                 lea.l      -24(a7),a7
[0005418c] 2f48 0014                 move.l     a0,20(a7)
[00054190] 2f40 0010                 move.l     d0,16(a7)
[00054194] 202f 0010                 move.l     16(a7),d0
[00054198] 6a00 008c                 bpl        Ash_sendall_1
[0005419c] 2079 0010 1f12            movea.l    ACSblk,a0
[000541a2] 2068 0280                 movea.l    640(a0),a0
[000541a6] 0c50 0400                 cmpi.w     #$0400,(a0)
[000541aa] 6c0a                      bge.s      Ash_sendall_2
[000541ac] 0c79 0200 0010 2620       cmpi.w     #$0200,_ACSv_magix
[000541b4] 6d70                      blt.s      Ash_sendall_1
Ash_sendall_2:
[000541b6] 2f39 000d 99d6            move.l     _globl,-(a7)
[000541bc] 486f 000e                 pea.l      14(a7)
[000541c0] 43ef 0014                 lea.l      20(a7),a1
[000541c4] 41ef 0008                 lea.l      8(a7),a0
[000541c8] 4240                      clr.w      d0
[000541ca] 4eb9 0006 aa02            jsr        mt_appl_search
[000541d0] 504f                      addq.w     #8,a7
[000541d2] 3f40 000e                 move.w     d0,14(a7)
[000541d6] 6046                      bra.s      Ash_sendall_3
Ash_sendall_6:
[000541d8] 7006                      moveq.l    #6,d0
[000541da] c06f 000c                 and.w      12(a7),d0
[000541de] 671e                      beq.s      Ash_sendall_4
[000541e0] 2279 000d 99d6            movea.l    _globl,a1
[000541e6] 206f 0014                 movea.l    20(a7),a0
[000541ea] 7210                      moveq.l    #16,d1
[000541ec] 302f 000a                 move.w     10(a7),d0
[000541f0] 4eb9 0006 a818            jsr        mt_appl_write
[000541f6] 4a40                      tst.w      d0
[000541f8] 6604                      bne.s      Ash_sendall_4
[000541fa] 4240                      clr.w      d0
[000541fc] 604a                      bra.s      Ash_sendall_5
Ash_sendall_4:
[000541fe] 2f39 000d 99d6            move.l     _globl,-(a7)
[00054204] 486f 000e                 pea.l      14(a7)
[00054208] 43ef 0014                 lea.l      20(a7),a1
[0005420c] 41ef 0008                 lea.l      8(a7),a0
[00054210] 7001                      moveq.l    #1,d0
[00054212] 4eb9 0006 aa02            jsr        mt_appl_search
[00054218] 504f                      addq.w     #8,a7
[0005421a] 3f40 000e                 move.w     d0,14(a7)
Ash_sendall_3:
[0005421e] 302f 000e                 move.w     14(a7),d0
[00054222] 66b4                      bne.s      Ash_sendall_6
[00054224] 6020                      bra.s      Ash_sendall_7
Ash_sendall_1:
[00054226] 487a fcbc                 pea.l      Aev_SendMsg2all(pc)
[0005422a] 487a ff2a                 pea.l      Ash_chkDDtype(pc)
[0005422e] 43ef 0018                 lea.l      24(a7),a1
[00054232] 2079 000d 2c54            movea.l    ListOfApps,a0
[00054238] 2479 000d 2c54            movea.l    ListOfApps,a2
[0005423e] 246a 0040                 movea.l    64(a2),a2
[00054242] 4e92                      jsr        (a2)
[00054244] 504f                      addq.w     #8,a7
Ash_sendall_7:
[00054246] 7001                      moveq.l    #1,d0
Ash_sendall_5:
[00054248] 4fef 0018                 lea.l      24(a7),a7
[0005424c] 245f                      movea.l    (a7)+,a2
[0005424e] 4e75                      rts

Ash_nextdd:
[00054250] 594f                      subq.w     #4,a7
[00054252] 2e88                      move.l     a0,(a7)
[00054254] 2017                      move.l     (a7),d0
[00054256] 6616                      bne.s      Ash_nextdd_1
[00054258] 2079 000d 2c54            movea.l    ListOfApps,a0
[0005425e] 2279 000d 2c54            movea.l    ListOfApps,a1
[00054264] 2269 0024                 movea.l    36(a1),a1
[00054268] 4e91                      jsr        (a1)
[0005426a] 601a                      bra.s      Ash_nextdd_2
[0005426c] 6018                      bra.s      Ash_nextdd_2
Ash_nextdd_1:
[0005426e] 7201                      moveq.l    #1,d1
[00054270] 7001                      moveq.l    #1,d0
[00054272] 2079 000d 2c54            movea.l    ListOfApps,a0
[00054278] 2279 000d 2c54            movea.l    ListOfApps,a1
[0005427e] 2269 0034                 movea.l    52(a1),a1
[00054282] 4e91                      jsr        (a1)
[00054284] 4e71                      nop
Ash_nextdd_2:
[00054286] 584f                      addq.w     #4,a7
[00054288] 4e75                      rts

dd_exec:
[0005428a] 2f0a                      move.l     a2,-(a7)
[0005428c] 4fef ffdc                 lea.l      -36(a7),a7
[00054290] 2f48 001e                 move.l     a0,30(a7)
[00054294] 2f49 001a                 move.l     a1,26(a7)
[00054298] 3f40 0018                 move.w     d0,24(a7)
[0005429c] 202f 001e                 move.l     30(a7),d0
[000542a0] 6604                      bne.s      dd_exec_1
[000542a2] 6000 00f6                 bra        dd_exec_2
dd_exec_1:
[000542a6] 202f 002c                 move.l     44(a7),d0
[000542aa] 670a                      beq.s      dd_exec_3
[000542ac] 206f 002c                 movea.l    44(a7),a0
[000542b0] 2028 0004                 move.l     4(a0),d0
[000542b4] 660a                      bne.s      dd_exec_4
dd_exec_3:
[000542b6] 302f 0018                 move.w     24(a7),d0
[000542ba] 6b04                      bmi.s      dd_exec_4
[000542bc] 6000 00dc                 bra        dd_exec_2
dd_exec_4:
[000542c0] 4eb9 0004 4a26            jsr        Adr_unselect
[000542c6] 41d7                      lea.l      (a7),a0
[000542c8] 4eb9 0005 f4e8            jsr        Act_save
[000542ce] 2079 0010 1f12            movea.l    ACSblk,a0
[000542d4] 216f 001e 0258            move.l     30(a7),600(a0)
[000542da] 2079 0010 1f12            movea.l    ACSblk,a0
[000542e0] 316f 0018 0260            move.w     24(a7),608(a0)
[000542e6] 2079 0010 1f12            movea.l    ACSblk,a0
[000542ec] 216f 001a 025c            move.l     26(a7),604(a0)
[000542f2] 7002                      moveq.l    #2,d0
[000542f4] 41f9 000d 2a6a            lea.l      _WDD,a0
[000542fa] 4eb9 0004 487c            jsr        Adr_add
[00054300] 206f 001a                 movea.l    26(a7),a0
[00054304] 3028 0008                 move.w     8(a0),d0
[00054308] c07c 0800                 and.w      #$0800,d0
[0005430c] 661c                      bne.s      dd_exec_5
[0005430e] 7201                      moveq.l    #1,d1
[00054310] 206f 001a                 movea.l    26(a7),a0
[00054314] 8268 000a                 or.w       10(a0),d1
[00054318] 302f 0018                 move.w     24(a7),d0
[0005431c] 206f 001e                 movea.l    30(a7),a0
[00054320] 226f 001e                 movea.l    30(a7),a1
[00054324] 2269 0066                 movea.l    102(a1),a1
[00054328] 4e91                      jsr        (a1)
dd_exec_5:
[0005432a] 302f 0018                 move.w     24(a7),d0
[0005432e] 6a34                      bpl.s      dd_exec_6
[00054330] 3f7c 0001 0022            move.w     #$0001,34(a7)
[00054336] 43ef 0022                 lea.l      34(a7),a1
[0005433a] 7011                      moveq.l    #17,d0
[0005433c] 206f 001e                 movea.l    30(a7),a0
[00054340] 246f 001e                 movea.l    30(a7),a2
[00054344] 246a 0004                 movea.l    4(a2),a2
[00054348] 4e92                      jsr        (a2)
[0005434a] 302f 0022                 move.w     34(a7),d0
[0005434e] 6712                      beq.s      dd_exec_7
[00054350] 93c9                      suba.l     a1,a1
[00054352] 7010                      moveq.l    #16,d0
[00054354] 206f 001e                 movea.l    30(a7),a0
[00054358] 246f 001e                 movea.l    30(a7),a2
[0005435c] 246a 0004                 movea.l    4(a2),a2
[00054360] 4e92                      jsr        (a2)
dd_exec_7:
[00054362] 600a                      bra.s      dd_exec_8
dd_exec_6:
[00054364] 206f 002c                 movea.l    44(a7),a0
[00054368] 2068 0004                 movea.l    4(a0),a0
[0005436c] 4e90                      jsr        (a0)
dd_exec_8:
[0005436e] 206f 001a                 movea.l    26(a7),a0
[00054372] 3228 000a                 move.w     10(a0),d1
[00054376] c27c fffe                 and.w      #$FFFE,d1
[0005437a] 302f 0018                 move.w     24(a7),d0
[0005437e] 206f 001e                 movea.l    30(a7),a0
[00054382] 226f 001e                 movea.l    30(a7),a1
[00054386] 2269 0066                 movea.l    102(a1),a1
[0005438a] 4e91                      jsr        (a1)
[0005438c] 4eb9 0004 4a26            jsr        Adr_unselect
[00054392] 41d7                      lea.l      (a7),a0
[00054394] 4eb9 0005 f532            jsr        Act_restore
dd_exec_2:
[0005439a] 4fef 0024                 lea.l      36(a7),a7
[0005439e] 245f                      movea.l    (a7)+,a2
[000543a0] 4e75                      rts

dd_find_dest:
[000543a2] 4fef ffdc                 lea.l      -36(a7),a7
[000543a6] 2f48 0020                 move.l     a0,32(a7)
[000543aa] 2f49 001c                 move.l     a1,28(a7)
[000543ae] 4eb9 0004 e608            jsr        Awi_root
[000543b4] 2f48 0010                 move.l     a0,16(a7)
[000543b8] 42a7                      clr.l      -(a7)
[000543ba] 42a7                      clr.l      -(a7)
[000543bc] 42a7                      clr.l      -(a7)
[000543be] 486f 0024                 pea.l      36(a7)
[000543c2] 720a                      moveq.l    #10,d1
[000543c4] 4240                      clr.w      d0
[000543c6] 4eb9 0007 14ea            jsr        wind_get
[000543cc] 4fef 0010                 lea.l      16(a7),a7
[000543d0] 206f 0020                 movea.l    32(a7),a0
[000543d4] 0c50 003f                 cmpi.w     #$003F,(a0)
[000543d8] 6616                      bne.s      dd_find_dest_1
[000543da] 206f 0020                 movea.l    32(a7),a0
[000543de] 3f68 0008 0016            move.w     8(a0),22(a7)
[000543e4] 206f 0020                 movea.l    32(a7),a0
[000543e8] 3f68 000a 0014            move.w     10(a0),20(a7)
[000543ee] 6018                      bra.s      dd_find_dest_2
dd_find_dest_1:
[000543f0] 2079 0010 1f12            movea.l    ACSblk,a0
[000543f6] 3f68 0262 0016            move.w     610(a0),22(a7)
[000543fc] 2079 0010 1f12            movea.l    ACSblk,a0
[00054402] 3f68 0264 0014            move.w     612(a0),20(a7)
dd_find_dest_2:
[00054408] 206f 0020                 movea.l    32(a7),a0
[0005440c] 0c50 003f                 cmpi.w     #$003F,(a0)
[00054410] 6610                      bne.s      dd_find_dest_3
[00054412] 206f 0020                 movea.l    32(a7),a0
[00054416] 3028 0006                 move.w     6(a0),d0
[0005441a] 4eb9 0004 e5ea            jsr        Awi_wid
[00054420] 601a                      bra.s      dd_find_dest_4
dd_find_dest_3:
[00054422] 2079 000d 99d6            movea.l    _globl,a0
[00054428] 322f 0014                 move.w     20(a7),d1
[0005442c] 302f 0016                 move.w     22(a7),d0
[00054430] 4eb9 0006 d54c            jsr        mt_wind_find
[00054436] 4eb9 0004 e5ea            jsr        Awi_wid
dd_find_dest_4:
[0005443c] 2f48 000c                 move.l     a0,12(a7)
[00054440] 202f 000c                 move.l     12(a7),d0
[00054444] 6614                      bne.s      dd_find_dest_5
[00054446] 206f 0020                 movea.l    32(a7),a0
[0005444a] 0c50 003f                 cmpi.w     #$003F,(a0)
[0005444e] 670a                      beq.s      dd_find_dest_5
[00054450] 4eb9 0004 e46a            jsr        Awi_ontop
[00054456] 2f48 000c                 move.l     a0,12(a7)
dd_find_dest_5:
[0005445a] 202f 000c                 move.l     12(a7),d0
[0005445e] 6606                      bne.s      dd_find_dest_6
[00054460] 2f6f 0010 000c            move.l     16(a7),12(a7)
dd_find_dest_6:
[00054466] 206f 000c                 movea.l    12(a7),a0
[0005446a] 3028 0056                 move.w     86(a0),d0
[0005446e] c07c 0800                 and.w      #$0800,d0
[00054472] 6706                      beq.s      dd_find_dest_7
[00054474] 4240                      clr.w      d0
[00054476] 6000 02d6                 bra        dd_find_dest_8
dd_find_dest_7:
[0005447a] 206f 000c                 movea.l    12(a7),a0
[0005447e] 302f 0018                 move.w     24(a7),d0
[00054482] b068 0020                 cmp.w      32(a0),d0
[00054486] 671e                      beq.s      dd_find_dest_9
[00054488] 206f 000c                 movea.l    12(a7),a0
[0005448c] b1ef 0010                 cmpa.l     16(a7),a0
[00054490] 6714                      beq.s      dd_find_dest_9
[00054492] 206f 000c                 movea.l    12(a7),a0
[00054496] 226f 000c                 movea.l    12(a7),a1
[0005449a] 2269 006e                 movea.l    110(a1),a1
[0005449e] 4e91                      jsr        (a1)
[000544a0] 4eb9 0004 6d70            jsr        Aev_mess
dd_find_dest_9:
[000544a6] 206f 0030                 movea.l    48(a7),a0
[000544aa] 30bc ffff                 move.w     #$FFFF,(a0)
[000544ae] 206f 0028                 movea.l    40(a7),a0
[000544b2] 4290                      clr.l      (a0)
[000544b4] 206f 000c                 movea.l    12(a7),a0
[000544b8] 2028 0014                 move.l     20(a0),d0
[000544bc] 6700 00ca                 beq        dd_find_dest_10
[000544c0] 302f 0014                 move.w     20(a7),d0
[000544c4] 206f 000c                 movea.l    12(a7),a0
[000544c8] 9068 0036                 sub.w      54(a0),d0
[000544cc] 3f00                      move.w     d0,-(a7)
[000544ce] 342f 0018                 move.w     24(a7),d2
[000544d2] 206f 000e                 movea.l    14(a7),a0
[000544d6] 9468 0034                 sub.w      52(a0),d2
[000544da] 7208                      moveq.l    #8,d1
[000544dc] 4240                      clr.w      d0
[000544de] 206f 000e                 movea.l    14(a7),a0
[000544e2] 2068 0014                 movea.l    20(a0),a0
[000544e6] 4eb9 0004 5468            jsr        Adr_find
[000544ec] 544f                      addq.w     #2,a7
[000544ee] 206f 0030                 movea.l    48(a7),a0
[000544f2] 3080                      move.w     d0,(a0)
[000544f4] 206f 0030                 movea.l    48(a7),a0
[000544f8] 3010                      move.w     (a0),d0
[000544fa] 6b00 008c                 bmi        dd_find_dest_10
[000544fe] 206f 0030                 movea.l    48(a7),a0
[00054502] 3f50 001a                 move.w     (a0),26(a7)
dd_find_dest_12:
[00054506] 322f 001a                 move.w     26(a7),d1
[0005450a] 48c1                      ext.l      d1
[0005450c] 2001                      move.l     d1,d0
[0005450e] d080                      add.l      d0,d0
[00054510] d081                      add.l      d1,d0
[00054512] e788                      lsl.l      #3,d0
[00054514] 206f 000c                 movea.l    12(a7),a0
[00054518] 2068 0014                 movea.l    20(a0),a0
[0005451c] d1c0                      adda.l     d0,a0
[0005451e] 2f48 0008                 move.l     a0,8(a7)
[00054522] 7020                      moveq.l    #32,d0
[00054524] 206f 0008                 movea.l    8(a7),a0
[00054528] c068 0008                 and.w      8(a0),d0
[0005452c] 663e                      bne.s      dd_find_dest_11
[0005452e] 206f 0008                 movea.l    8(a7),a0
[00054532] 3028 0020                 move.w     32(a0),d0
[00054536] c07c 8000                 and.w      #$8000,d0
[0005453a] 6730                      beq.s      dd_find_dest_11
[0005453c] 206f 0008                 movea.l    8(a7),a0
[00054540] 41e8 0018                 lea.l      24(a0),a0
[00054544] 226f 0028                 movea.l    40(a7),a1
[00054548] 2288                      move.l     a0,(a1)
[0005454a] 206f 0028                 movea.l    40(a7),a0
[0005454e] 2050                      movea.l    (a0),a0
[00054550] 2028 0004                 move.l     4(a0),d0
[00054554] 6716                      beq.s      dd_find_dest_11
[00054556] 206f 0030                 movea.l    48(a7),a0
[0005455a] 30af 001a                 move.w     26(a7),(a0)
[0005455e] 206f 000c                 movea.l    12(a7),a0
[00054562] 226f 002c                 movea.l    44(a7),a1
[00054566] 22a8 0014                 move.l     20(a0),(a1)
[0005456a] 601c                      bra.s      dd_find_dest_10
dd_find_dest_11:
[0005456c] 302f 001a                 move.w     26(a7),d0
[00054570] 206f 000c                 movea.l    12(a7),a0
[00054574] 2068 0014                 movea.l    20(a0),a0
[00054578] 4eb9 0004 af6c            jsr        Aob_up
[0005457e] 3f40 001a                 move.w     d0,26(a7)
[00054582] 5240                      addq.w     #1,d0
[00054584] 6600 ff80                 bne.w      dd_find_dest_12
dd_find_dest_10:
[00054588] 206f 0030                 movea.l    48(a7),a0
[0005458c] 3010                      move.w     (a0),d0
[0005458e] 6a00 00de                 bpl        dd_find_dest_13
[00054592] 206f 000c                 movea.l    12(a7),a0
[00054596] 2028 0018                 move.l     24(a0),d0
[0005459a] 6700 00d2                 beq        dd_find_dest_13
[0005459e] 302f 0014                 move.w     20(a7),d0
[000545a2] 206f 000c                 movea.l    12(a7),a0
[000545a6] 9068 0036                 sub.w      54(a0),d0
[000545aa] 3f00                      move.w     d0,-(a7)
[000545ac] 342f 0018                 move.w     24(a7),d2
[000545b0] 206f 000e                 movea.l    14(a7),a0
[000545b4] 9468 0034                 sub.w      52(a0),d2
[000545b8] 7208                      moveq.l    #8,d1
[000545ba] 4240                      clr.w      d0
[000545bc] 206f 000e                 movea.l    14(a7),a0
[000545c0] 2068 0018                 movea.l    24(a0),a0
[000545c4] 4eb9 0004 5468            jsr        Adr_find
[000545ca] 544f                      addq.w     #2,a7
[000545cc] 206f 0030                 movea.l    48(a7),a0
[000545d0] 3080                      move.w     d0,(a0)
[000545d2] 206f 0030                 movea.l    48(a7),a0
[000545d6] 3010                      move.w     (a0),d0
[000545d8] 6b00 0094                 bmi        dd_find_dest_13
[000545dc] 206f 0030                 movea.l    48(a7),a0
[000545e0] 3f50 001a                 move.w     (a0),26(a7)
dd_find_dest_16:
[000545e4] 322f 001a                 move.w     26(a7),d1
[000545e8] 48c1                      ext.l      d1
[000545ea] 2001                      move.l     d1,d0
[000545ec] d080                      add.l      d0,d0
[000545ee] d081                      add.l      d1,d0
[000545f0] e788                      lsl.l      #3,d0
[000545f2] 206f 000c                 movea.l    12(a7),a0
[000545f6] 2068 0018                 movea.l    24(a0),a0
[000545fa] d1c0                      adda.l     d0,a0
[000545fc] 2f48 0008                 move.l     a0,8(a7)
[00054600] 7020                      moveq.l    #32,d0
[00054602] 206f 0008                 movea.l    8(a7),a0
[00054606] c068 0008                 and.w      8(a0),d0
[0005460a] 663e                      bne.s      dd_find_dest_14
[0005460c] 206f 0008                 movea.l    8(a7),a0
[00054610] 3028 0020                 move.w     32(a0),d0
[00054614] c07c 8000                 and.w      #$8000,d0
[00054618] 6730                      beq.s      dd_find_dest_14
[0005461a] 206f 0008                 movea.l    8(a7),a0
[0005461e] 41e8 0018                 lea.l      24(a0),a0
[00054622] 226f 0028                 movea.l    40(a7),a1
[00054626] 2288                      move.l     a0,(a1)
[00054628] 206f 0028                 movea.l    40(a7),a0
[0005462c] 2050                      movea.l    (a0),a0
[0005462e] 2028 0004                 move.l     4(a0),d0
[00054632] 6716                      beq.s      dd_find_dest_14
[00054634] 206f 0030                 movea.l    48(a7),a0
[00054638] 30af 001a                 move.w     26(a7),(a0)
[0005463c] 206f 000c                 movea.l    12(a7),a0
[00054640] 226f 002c                 movea.l    44(a7),a1
[00054644] 22a8 0018                 move.l     24(a0),(a1)
[00054648] 601c                      bra.s      dd_find_dest_15
dd_find_dest_14:
[0005464a] 302f 001a                 move.w     26(a7),d0
[0005464e] 206f 000c                 movea.l    12(a7),a0
[00054652] 2068 0018                 movea.l    24(a0),a0
[00054656] 4eb9 0004 af6c            jsr        Aob_up
[0005465c] 3f40 001a                 move.w     d0,26(a7)
[00054660] 5240                      addq.w     #1,d0
[00054662] 6600 ff80                 bne.w      dd_find_dest_16
dd_find_dest_15:
[00054666] 206f 0030                 movea.l    48(a7),a0
[0005466a] 0050 1000                 ori.w      #$1000,(a0)
dd_find_dest_13:
[0005466e] 206f 0030                 movea.l    48(a7),a0
[00054672] 3010                      move.w     (a0),d0
[00054674] c07c 0fff                 and.w      #$0FFF,d0
[00054678] 670c                      beq.s      dd_find_dest_17
[0005467a] 206f 0034                 movea.l    52(a7),a0
[0005467e] 30bc ffff                 move.w     #$FFFF,(a0)
[00054682] 6000 00ac                 bra        dd_find_dest_18
dd_find_dest_17:
[00054686] 70ff                      moveq.l    #-1,d0
[00054688] 3f40 001a                 move.w     d0,26(a7)
[0005468c] 206f 0034                 movea.l    52(a7),a0
[00054690] 3080                      move.w     d0,(a0)
[00054692] 6044                      bra.s      dd_find_dest_19
dd_find_dest_21:
[00054694] 206f 0034                 movea.l    52(a7),a0
[00054698] 3f50 001a                 move.w     (a0),26(a7)
[0005469c] 206f 0034                 movea.l    52(a7),a0
[000546a0] 3010                      move.w     (a0),d0
[000546a2] 206f 000c                 movea.l    12(a7),a0
[000546a6] 2268 0014                 movea.l    20(a0),a1
[000546aa] 41d7                      lea.l      (a7),a0
[000546ac] 4eb9 0004 a3be            jsr        Aob_offset
[000546b2] 322f 0014                 move.w     20(a7),d1
[000546b6] 206f 000c                 movea.l    12(a7),a0
[000546ba] 9268 0036                 sub.w      54(a0),d1
[000546be] 302f 0016                 move.w     22(a7),d0
[000546c2] 206f 000c                 movea.l    12(a7),a0
[000546c6] 9068 0034                 sub.w      52(a0),d0
[000546ca] 41d7                      lea.l      (a7),a0
[000546cc] 4eb9 0005 ef64            jsr        Aob_within
[000546d2] 4a40                      tst.w      d0
[000546d4] 6702                      beq.s      dd_find_dest_19
[000546d6] 601e                      bra.s      dd_find_dest_20
dd_find_dest_19:
[000546d8] 7208                      moveq.l    #8,d1
[000546da] 206f 0034                 movea.l    52(a7),a0
[000546de] 3010                      move.w     (a0),d0
[000546e0] 206f 000c                 movea.l    12(a7),a0
[000546e4] 2068 0014                 movea.l    20(a0),a0
[000546e8] 4eb9 0004 aeca            jsr        Aob_findflag
[000546ee] 206f 0034                 movea.l    52(a7),a0
[000546f2] 3080                      move.w     d0,(a0)
[000546f4] 6a9e                      bpl.s      dd_find_dest_21
dd_find_dest_20:
[000546f6] 206f 0034                 movea.l    52(a7),a0
[000546fa] 3010                      move.w     (a0),d0
[000546fc] 6b32                      bmi.s      dd_find_dest_18
[000546fe] 206f 000c                 movea.l    12(a7),a0
[00054702] 3028 001c                 move.w     28(a0),d0
[00054706] 206f 0034                 movea.l    52(a7),a0
[0005470a] b050                      cmp.w      (a0),d0
[0005470c] 6722                      beq.s      dd_find_dest_18
[0005470e] 4eb9 0004 b286            jsr        Awi_diaend
[00054714] 206f 0034                 movea.l    52(a7),a0
[00054718] 226f 000c                 movea.l    12(a7),a1
[0005471c] 3350 001c                 move.w     (a0),28(a1)
[00054720] 206f 000c                 movea.l    12(a7),a0
[00054724] 317c ffff 001e            move.w     #$FFFF,30(a0)
[0005472a] 4eb9 0004 b33c            jsr        Awi_diastart
dd_find_dest_18:
[00054730] 206f 001c                 movea.l    28(a7),a0
[00054734] 20af 000c                 move.l     12(a7),(a0)
[00054738] 206f 0030                 movea.l    48(a7),a0
[0005473c] 3010                      move.w     (a0),d0
[0005473e] c07c 0fff                 and.w      #$0FFF,d0
[00054742] 6a06                      bpl.s      dd_find_dest_22
[00054744] 4240                      clr.w      d0
[00054746] 6006                      bra.s      dd_find_dest_8
[00054748] 6004                      bra.s      dd_find_dest_8
dd_find_dest_22:
[0005474a] 7001                      moveq.l    #1,d0
[0005474c] 4e71                      nop
dd_find_dest_8:
[0005474e] 4fef 0024                 lea.l      36(a7),a7
[00054752] 4e75                      rts

GetImgIntoObj:
[00054754] 4fef ffee                 lea.l      -18(a7),a7
[00054758] 2f48 000e                 move.l     a0,14(a7)
[0005475c] 2f49 000a                 move.l     a1,10(a7)
[00054760] 3f40 0008                 move.w     d0,8(a7)
[00054764] 4240                      clr.w      d0
[00054766] 43d7                      lea.l      (a7),a1
[00054768] 206f 000e                 movea.l    14(a7),a0
[0005476c] 4eb9 0004 dedc            jsr        Abp_img2mfdb
[00054772] 4a40                      tst.w      d0
[00054774] 664a                      bne.s      GetImgIntoObj_1
[00054776] 2079 000d 2a7e            movea.l    $000D2A7E,a0
[0005477c] 41e8 0048                 lea.l      72(a0),a0
[00054780] 2f48 0004                 move.l     a0,4(a7)
[00054784] 206f 0004                 movea.l    4(a7),a0
[00054788] 317c 000a 0016            move.w     #$000A,22(a0)
[0005478e] 206f 0004                 movea.l    4(a7),a0
[00054792] 2157 000c                 move.l     (a7),12(a0)
[00054796] 2f2f 0016                 move.l     22(a7),-(a7)
[0005479a] 302f 000c                 move.w     12(a7),d0
[0005479e] 226f 001e                 movea.l    30(a7),a1
[000547a2] 206f 000e                 movea.l    14(a7),a0
[000547a6] 6100 fae2                 bsr        dd_exec
[000547aa] 584f                      addq.w     #4,a7
[000547ac] 206f 0004                 movea.l    4(a7),a0
[000547b0] 4268 0016                 clr.w      22(a0)
[000547b4] 206f 0004                 movea.l    4(a7),a0
[000547b8] 42a8 000c                 clr.l      12(a0)
[000547bc] 7001                      moveq.l    #1,d0
[000547be] 6002                      bra.s      GetImgIntoObj_2
GetImgIntoObj_1:
[000547c0] 4240                      clr.w      d0
GetImgIntoObj_2:
[000547c2] 4fef 0012                 lea.l      18(a7),a7
[000547c6] 4e75                      rts

GetTxtIntoObj:
[000547c8] 2f0a                      move.l     a2,-(a7)
[000547ca] 4fef fbce                 lea.l      -1074(a7),a7
[000547ce] 2f48 0010                 move.l     a0,16(a7)
[000547d2] 2f49 000c                 move.l     a1,12(a7)
[000547d6] 3f40 000a                 move.w     d0,10(a7)
[000547da] 3f41 0008                 move.w     d1,8(a7)
[000547de] 2079 000d 2a7e            movea.l    $000D2A7E,a0
[000547e4] 41e8 0048                 lea.l      72(a0),a0
[000547e8] 2f48 0004                 move.l     a0,4(a7)
[000547ec] 202f 043e                 move.l     1086(a7),d0
[000547f0] 6700 0136                 beq        GetTxtIntoObj_1
[000547f4] 206f 043e                 movea.l    1086(a7),a0
[000547f8] 2028 0004                 move.l     4(a0),d0
[000547fc] 6700 012a                 beq        GetTxtIntoObj_1
[00054800] 302f 000a                 move.w     10(a7),d0
[00054804] 6b00 0122                 bmi        GetTxtIntoObj_1
[00054808] 7004                      moveq.l    #4,d0
[0005480a] 43f9 000d 4878            lea.l      $000D4878,a1
[00054810] 206f 000c                 movea.l    12(a7),a0
[00054814] 4eb9 0007 69fc            jsr        strncmp
[0005481a] 4a40                      tst.w      d0
[0005481c] 6600 007c                 bne.w      GetTxtIntoObj_2
[00054820] 206f 0010                 movea.l    16(a7),a0
[00054824] 4eb9 0004 7b12            jsr        Af_parseCmdLine
[0005482a] 2f48 0414                 move.l     a0,1044(a7)
[0005482e] 202f 0414                 move.l     1044(a7),d0
[00054832] 6762                      beq.s      GetTxtIntoObj_3
[00054834] 206f 0414                 movea.l    1044(a7),a0
[00054838] 226f 0414                 movea.l    1044(a7),a1
[0005483c] 2269 0024                 movea.l    36(a1),a1
[00054840] 4e91                      jsr        (a1)
[00054842] 2e88                      move.l     a0,(a7)
[00054844] 604c                      bra.s      GetTxtIntoObj_4
GetTxtIntoObj_5:
[00054846] 2257                      movea.l    (a7),a1
[00054848] 41ef 0014                 lea.l      20(a7),a0
[0005484c] 4eb9 0004 7a1e            jsr        Af_quote
[00054852] 206f 0004                 movea.l    4(a7),a0
[00054856] 317c 0014 0016            move.w     #$0014,22(a0)
[0005485c] 41ef 0014                 lea.l      20(a7),a0
[00054860] 226f 0004                 movea.l    4(a7),a1
[00054864] 2348 000c                 move.l     a0,12(a1)
[00054868] 2f2f 043e                 move.l     1086(a7),-(a7)
[0005486c] 302f 000e                 move.w     14(a7),d0
[00054870] 226f 0446                 movea.l    1094(a7),a1
[00054874] 206f 043e                 movea.l    1086(a7),a0
[00054878] 6100 fa10                 bsr        dd_exec
[0005487c] 584f                      addq.w     #4,a7
[0005487e] 7201                      moveq.l    #1,d1
[00054880] 7001                      moveq.l    #1,d0
[00054882] 206f 0414                 movea.l    1044(a7),a0
[00054886] 226f 0414                 movea.l    1044(a7),a1
[0005488a] 2269 0034                 movea.l    52(a1),a1
[0005488e] 4e91                      jsr        (a1)
[00054890] 2e88                      move.l     a0,(a7)
GetTxtIntoObj_4:
[00054892] 2017                      move.l     (a7),d0
[00054894] 66b0                      bne.s      GetTxtIntoObj_5
GetTxtIntoObj_3:
[00054896] 6000 007c                 bra.w      GetTxtIntoObj_6
GetTxtIntoObj_2:
[0005489a] 43f9 000d 487d            lea.l      $000D487D,a1
[000548a0] 206f 0010                 movea.l    16(a7),a0
[000548a4] 4eb9 0007 6a34            jsr        strpbrk
[000548aa] 2008                      move.l     a0,d0
[000548ac] 670c                      beq.s      GetTxtIntoObj_7
[000548ae] 206f 0004                 movea.l    4(a7),a0
[000548b2] 317c 001f 0016            move.w     #$001F,22(a0)
[000548b8] 603a                      bra.s      GetTxtIntoObj_8
GetTxtIntoObj_7:
[000548ba] 43f9 000d 4880            lea.l      $000D4880,a1
[000548c0] 206f 000c                 movea.l    12(a7),a0
[000548c4] 4eb9 0007 6950            jsr        strcpy
[000548ca] 2008                      move.l     a0,d0
[000548cc] 6610                      bne.s      GetTxtIntoObj_9
[000548ce] 206f 0010                 movea.l    16(a7),a0
[000548d2] 4eb9 0004 73bc            jsr        Af_length
[000548d8] 72ff                      moveq.l    #-1,d1
[000548da] b280                      cmp.l      d0,d1
[000548dc] 6f0c                      ble.s      GetTxtIntoObj_10
GetTxtIntoObj_9:
[000548de] 206f 0004                 movea.l    4(a7),a0
[000548e2] 317c 000b 0016            move.w     #$000B,22(a0)
[000548e8] 600a                      bra.s      GetTxtIntoObj_8
GetTxtIntoObj_10:
[000548ea] 206f 0004                 movea.l    4(a7),a0
[000548ee] 317c 0014 0016            move.w     #$0014,22(a0)
GetTxtIntoObj_8:
[000548f4] 206f 0004                 movea.l    4(a7),a0
[000548f8] 216f 0010 000c            move.l     16(a7),12(a0)
[000548fe] 2f2f 043e                 move.l     1086(a7),-(a7)
[00054902] 302f 000e                 move.w     14(a7),d0
[00054906] 226f 0446                 movea.l    1094(a7),a1
[0005490a] 206f 043e                 movea.l    1086(a7),a0
[0005490e] 6100 f97a                 bsr        dd_exec
[00054912] 584f                      addq.w     #4,a7
GetTxtIntoObj_6:
[00054914] 206f 0004                 movea.l    4(a7),a0
[00054918] 4268 0016                 clr.w      22(a0)
[0005491c] 206f 0004                 movea.l    4(a7),a0
[00054920] 42a8 000c                 clr.l      12(a0)
[00054924] 6000 01f6                 bra        GetTxtIntoObj_11
GetTxtIntoObj_1:
[00054928] 7004                      moveq.l    #4,d0
[0005492a] 43f9 000d 4888            lea.l      $000D4888,a1
[00054930] 206f 000c                 movea.l    12(a7),a0
[00054934] 4eb9 0007 69fc            jsr        strncmp
[0005493a] 4a40                      tst.w      d0
[0005493c] 6600 00ea                 bne        GetTxtIntoObj_12
[00054940] 3f7c 0001 0430            move.w     #$0001,1072(a7)
[00054946] 206f 0010                 movea.l    16(a7),a0
[0005494a] 4eb9 0004 7b12            jsr        Af_parseCmdLine
[00054950] 2f48 0414                 move.l     a0,1044(a7)
[00054954] 202f 0414                 move.l     1044(a7),d0
[00054958] 6700 00ca                 beq        GetTxtIntoObj_13
[0005495c] 206f 0414                 movea.l    1044(a7),a0
[00054960] 226f 0414                 movea.l    1044(a7),a1
[00054964] 2269 0024                 movea.l    36(a1),a1
[00054968] 4e91                      jsr        (a1)
[0005496a] 2e88                      move.l     a0,(a7)
[0005496c] 6000 00b0                 bra        GetTxtIntoObj_14
GetTxtIntoObj_16:
[00054970] 2257                      movea.l    (a7),a1
[00054972] 41ef 0014                 lea.l      20(a7),a0
[00054976] 4eb9 0004 7a1e            jsr        Af_quote
[0005497c] 206f 0004                 movea.l    4(a7),a0
[00054980] 317c 0014 0016            move.w     #$0014,22(a0)
[00054986] 41ef 0014                 lea.l      20(a7),a0
[0005498a] 226f 0004                 movea.l    4(a7),a1
[0005498e] 2348 000c                 move.l     a0,12(a1)
[00054992] 4eb9 0004 4a26            jsr        Adr_unselect
[00054998] 41ef 0418                 lea.l      1048(a7),a0
[0005499c] 4eb9 0005 f4e8            jsr        Act_save
[000549a2] 2079 0010 1f12            movea.l    ACSblk,a0
[000549a8] 216f 043a 0258            move.l     1082(a7),600(a0)
[000549ae] 2079 0010 1f12            movea.l    ACSblk,a0
[000549b4] 316f 000a 0260            move.w     10(a7),608(a0)
[000549ba] 2079 0010 1f12            movea.l    ACSblk,a0
[000549c0] 216f 0442 025c            move.l     1090(a7),604(a0)
[000549c6] 7002                      moveq.l    #2,d0
[000549c8] 41f9 000d 2a6a            lea.l      _WDD,a0
[000549ce] 4eb9 0004 487c            jsr        Adr_add
[000549d4] 43ef 0430                 lea.l      1072(a7),a1
[000549d8] 7011                      moveq.l    #17,d0
[000549da] 206f 043a                 movea.l    1082(a7),a0
[000549de] 246f 043a                 movea.l    1082(a7),a2
[000549e2] 246a 0004                 movea.l    4(a2),a2
[000549e6] 4e92                      jsr        (a2)
[000549e8] 302f 0430                 move.w     1072(a7),d0
[000549ec] 6712                      beq.s      GetTxtIntoObj_15
[000549ee] 93c9                      suba.l     a1,a1
[000549f0] 7010                      moveq.l    #16,d0
[000549f2] 206f 043a                 movea.l    1082(a7),a0
[000549f6] 246f 043a                 movea.l    1082(a7),a2
[000549fa] 246a 0004                 movea.l    4(a2),a2
[000549fe] 4e92                      jsr        (a2)
GetTxtIntoObj_15:
[00054a00] 41ef 0418                 lea.l      1048(a7),a0
[00054a04] 4eb9 0005 f532            jsr        Act_restore
[00054a0a] 7201                      moveq.l    #1,d1
[00054a0c] 7001                      moveq.l    #1,d0
[00054a0e] 206f 0414                 movea.l    1044(a7),a0
[00054a12] 226f 0414                 movea.l    1044(a7),a1
[00054a16] 2269 0034                 movea.l    52(a1),a1
[00054a1a] 4e91                      jsr        (a1)
[00054a1c] 2e88                      move.l     a0,(a7)
GetTxtIntoObj_14:
[00054a1e] 2017                      move.l     (a7),d0
[00054a20] 6600 ff4e                 bne        GetTxtIntoObj_16
GetTxtIntoObj_13:
[00054a24] 6000 00f6                 bra        GetTxtIntoObj_11
GetTxtIntoObj_12:
[00054a28] 7004                      moveq.l    #4,d0
[00054a2a] 43f9 000d 488d            lea.l      $000D488D,a1
[00054a30] 206f 000c                 movea.l    12(a7),a0
[00054a34] 4eb9 0007 69fc            jsr        strncmp
[00054a3a] 4a40                      tst.w      d0
[00054a3c] 6600 00de                 bne        GetTxtIntoObj_11
[00054a40] 302f 0008                 move.w     8(a7),d0
[00054a44] 6b4e                      bmi.s      GetTxtIntoObj_17
[00054a46] 6040                      bra.s      GetTxtIntoObj_18
GetTxtIntoObj_20:
[00054a48] 206f 0010                 movea.l    16(a7),a0
[00054a4c] 0c10 001f                 cmpi.b     #$1F,(a0)
[00054a50] 6f32                      ble.s      GetTxtIntoObj_19
[00054a52] 206f 0010                 movea.l    16(a7),a0
[00054a56] 1010                      move.b     (a0),d0
[00054a58] 4880                      ext.w      d0
[00054a5a] 2079 0010 1f12            movea.l    ACSblk,a0
[00054a60] 3140 02ce                 move.w     d0,718(a0)
[00054a64] 206f 0010                 movea.l    16(a7),a0
[00054a68] 1210                      move.b     (a0),d1
[00054a6a] 4881                      ext.w      d1
[00054a6c] 2079 0010 1f12            movea.l    ACSblk,a0
[00054a72] 3028 0266                 move.w     614(a0),d0
[00054a76] 206f 043a                 movea.l    1082(a7),a0
[00054a7a] 226f 043a                 movea.l    1082(a7),a1
[00054a7e] 2269 0062                 movea.l    98(a1),a1
[00054a82] 4e91                      jsr        (a1)
GetTxtIntoObj_19:
[00054a84] 52af 0010                 addq.l     #1,16(a7)
GetTxtIntoObj_18:
[00054a88] 206f 0010                 movea.l    16(a7),a0
[00054a8c] 1010                      move.b     (a0),d0
[00054a8e] 66b8                      bne.s      GetTxtIntoObj_20
[00054a90] 6000 008a                 bra        GetTxtIntoObj_11
GetTxtIntoObj_17:
[00054a94] 6000 007c                 bra.w      GetTxtIntoObj_21
GetTxtIntoObj_27:
[00054a98] 206f 0010                 movea.l    16(a7),a0
[00054a9c] 1010                      move.b     (a0),d0
[00054a9e] 4880                      ext.w      d0
[00054aa0] 907c 0009                 sub.w      #$0009,d0
[00054aa4] 6718                      beq.s      GetTxtIntoObj_22
[00054aa6] 5340                      subq.w     #1,d0
[00054aa8] 6722                      beq.s      GetTxtIntoObj_23
[00054aaa] 5740                      subq.w     #3,d0
[00054aac] 6702                      beq.s      GetTxtIntoObj_24
[00054aae] 602a                      bra.s      GetTxtIntoObj_25
GetTxtIntoObj_24:
[00054ab0] 2079 0010 1f12            movea.l    ACSblk,a0
[00054ab6] 317c 8000 02ce            move.w     #$8000,718(a0)
[00054abc] 602e                      bra.s      GetTxtIntoObj_26
GetTxtIntoObj_22:
[00054abe] 2079 0010 1f12            movea.l    ACSblk,a0
[00054ac4] 317c 8009 02ce            move.w     #$8009,718(a0)
[00054aca] 6020                      bra.s      GetTxtIntoObj_26
GetTxtIntoObj_23:
[00054acc] 2079 0010 1f12            movea.l    ACSblk,a0
[00054ad2] 317c 800d 02ce            move.w     #$800D,718(a0)
[00054ad8] 6012                      bra.s      GetTxtIntoObj_26
GetTxtIntoObj_25:
[00054ada] 206f 0010                 movea.l    16(a7),a0
[00054ade] 1010                      move.b     (a0),d0
[00054ae0] 4880                      ext.w      d0
[00054ae2] 2079 0010 1f12            movea.l    ACSblk,a0
[00054ae8] 3140 02ce                 move.w     d0,718(a0)
GetTxtIntoObj_26:
[00054aec] 2079 0010 1f12            movea.l    ACSblk,a0
[00054af2] 3228 02ce                 move.w     718(a0),d1
[00054af6] 2079 0010 1f12            movea.l    ACSblk,a0
[00054afc] 3028 0266                 move.w     614(a0),d0
[00054b00] 206f 043a                 movea.l    1082(a7),a0
[00054b04] 226f 043a                 movea.l    1082(a7),a1
[00054b08] 2269 0062                 movea.l    98(a1),a1
[00054b0c] 4e91                      jsr        (a1)
[00054b0e] 52af 0010                 addq.l     #1,16(a7)
GetTxtIntoObj_21:
[00054b12] 206f 0010                 movea.l    16(a7),a0
[00054b16] 1010                      move.b     (a0),d0
[00054b18] 6600 ff7e                 bne        GetTxtIntoObj_27
GetTxtIntoObj_11:
[00054b1c] 7001                      moveq.l    #1,d0
[00054b1e] 4fef 0432                 lea.l      1074(a7),a7
[00054b22] 245f                      movea.l    (a7)+,a2
[00054b24] 4e75                      rts

		.data

globProtData:
[000d450e]                           dc.b $00
[000d450f]                           dc.b $00
[000d4510]                           dc.b $00
[000d4511]                           dc.b $00
MsgListe:
[000d4512]                           dc.w $0400
[000d4514] 00055242                  dc.l Aev_GetAccID
[000d4518]                           dc.w $ffff
[000d451a]                           dc.w $ffff
[000d451c]                           dc.w $ff00
[000d451e]                           dc.w $ffff
[000d4520]                           dc.w $0403
[000d4522] 000553d2                  dc.l Aev_GetAccAcc
[000d4526]                           dc.w $ffff
[000d4528]                           dc.w $ffff
[000d452a]                           dc.w $ff00
[000d452c]                           dc.b $ff
[000d452d]                           dc.b $ff
[000d452e]                           dc.w $0500
[000d4530] 000552ec                  dc.l Aev_GetAccAck
[000d4534]                           dc.w $ffff
[000d4536]                           dc.w $ffff
[000d4538]                           dc.w $ff00
[000d453a]                           dc.w $ffff
[000d453c]                           dc.w $0502
[000d453e] 0005548e                  dc.l Aev_GetAccKey
[000d4542]                           dc.w $ffff
[000d4544]                           dc.b $ff
[000d4545]                           dc.b $ff
[000d4546]                           dc.w $ff01
[000d4548]                           dc.w $ffff
[000d454a]                           dc.w $0501
[000d454c] 00055526                  dc.l Aev_GetAccText
[000d4550]                           dc.w $ffff
[000d4552]                           dc.w $ffff
[000d4554]                           dc.w $ff02
[000d4556]                           dc.w $ffff
[000d4558]                           dc.w $0504
[000d455a] 000555ee                  dc.l Aev_GetAccImg
[000d455e]                           dc.b $ff
[000d455f]                           dc.b $ff
[000d4560]                           dc.w $ffff
[000d4562]                           dc.w $ff02
[000d4564]                           dc.w $ffff
[000d4566]                           dc.w $0503
[000d4568] 00055842                  dc.l Aev_GetAccMeta
[000d456c]                           dc.w $ffff
[000d456e]                           dc.w $ffff
[000d4570]                           dc.w $ff02
[000d4572]                           dc.w $ffff
[000d4574]                           dc.b $47
[000d4575]                           dc.b $01
[000d4576] 00055e26                  dc.l Aev_GetVaProtoStatus
[000d457a]                           dc.w $ffff
[000d457c]                           dc.w $ffff
[000d457e]                           dc.w $ff00
[000d4580]                           dc.w $ffff
[000d4582]                           dc.b $47
[000d4583]                           dc.b $36
[000d4584] 00055dd6                  dc.l Aev_GetAvExit
[000d4588]                           dc.w $ffff
[000d458a]                           dc.w $ffff
[000d458c]                           dc.b $ff
[000d458d]                           dc.b $00
[000d458e]                           dc.w $ffff
[000d4590]                           dc.w $4711
[000d4592] 00055e78                  dc.l Aev_GetVaStart
[000d4596]                           dc.w $ffff
[000d4598]                           dc.w $ffff
[000d459a]                           dc.w $ff00
[000d459c]                           dc.b $ff
[000d459d]                           dc.b $ff
[000d459e]                           dc.w $4738
[000d45a0] 00055ef0                  dc.l Aev_GetAvStarted
[000d45a4]                           dc.w $ffff
[000d45a6]                           dc.w $ffff
[000d45a8]                           dc.w $ff00
[000d45aa]                           dc.b $ff
[000d45ab]                           dc.b $ff
[000d45ac]                           dc.w $4710
[000d45ae] 00055fce                  dc.l Aev_GetAvSendKey
[000d45b2]                           dc.w $ffff
[000d45b4]                           dc.w $ffff
[000d45b6]                           dc.w $ff00
[000d45b8]                           dc.w $ffff
[000d45ba]                           dc.w $4709
[000d45bc] 0005604c                  dc.l Aev_GetAvSendClick
[000d45c0]                           dc.w $ffff
[000d45c2]                           dc.w $ffff
[000d45c4]                           dc.w $ff00
[000d45c6]                           dc.w $ffff
[000d45c8]                           dc.w $4730
[000d45ca] 000560c6                  dc.l Aev_GetVaPathUpdate
[000d45ce]                           dc.w $ffff
[000d45d0]                           dc.w $ffff
[000d45d2]                           dc.w $ff00
[000d45d4]                           dc.w $ffff
[000d45d6]                           dc.b $00
[000d45d7]                           dc.b $3f
[000d45d8] 00056386                  dc.l Aev_GetAPDragDrop
[000d45dc]                           dc.b $03
[000d45dd]                           dc.b $ff
[000d45de]                           dc.w $ffff
[000d45e0]                           dc.w $ff02
[000d45e2]                           dc.w $ffff
[000d45e4]                           dc.w $1236
[000d45e6] 00057fe6                  dc.l Aev_GetOlgaInit
[000d45ea]                           dc.w $ffff
[000d45ec]                           dc.w $ffff
[000d45ee]                           dc.w $ff00
[000d45f0]                           dc.w $ffff
[000d45f2]                           dc.w $4951
[000d45f4] 0005806a                  dc.l Aev_GetOleExit
[000d45f8]                           dc.w $ffff
[000d45fa]                           dc.w $ffff
[000d45fc]                           dc.w $ff00
[000d45fe]                           dc.b $ff
[000d45ff]                           dc.b $ff
[000d4600]                           dc.w $4952
[000d4602] 000580c4                  dc.l Aev_GetOleNew
[000d4606]                           dc.w $ffff
[000d4608]                           dc.w $ffff
[000d460a]                           dc.w $ff00
[000d460c]                           dc.w $ffff
[000d460e]                           dc.w $1239
[000d4610] 000580ee                  dc.l Aev_GetOlgaAck
[000d4614]                           dc.w $ffff
[000d4616]                           dc.w $ffff
[000d4618]                           dc.w $ff00
[000d461a]                           dc.w $ffff
[000d461c]                           dc.w $123f
[000d461e] 0005825e                  dc.l Aev_GetOlgaUpdated
[000d4622]                           dc.w $ffff
[000d4624]                           dc.w $ffff
[000d4626]                           dc.w $ff00
[000d4628]                           dc.w $ffff
[000d462a]                           dc.w $1247
[000d462c] 000582c4                  dc.l Aev_GetOlgaGetInfo
[000d4630]                           dc.w $ffff
[000d4632]                           dc.w $ffff
[000d4634]                           dc.w $ff00
[000d4636]                           dc.w $ffff
[000d4638]                           dc.w $1249
[000d463a] 00058336                  dc.l Aev_GetOlgaIdle
[000d463e]                           dc.w $ffff
[000d4640]                           dc.w $ffff
[000d4642]                           dc.w $ff00
[000d4644]                           dc.w $ffff
[000d4646]                           dc.w $1255
[000d4648] 00058332                  dc.l Aev_GetOlgaClientTermi
[000d464c]                           dc.w $ffff
[000d464e]                           dc.w $ffff
[000d4650]                           dc.w $ff00
[000d4652]                           dc.w $ffff
[000d4654]                           dc.w $babc
[000d4656] 00056be2                  dc.l Aev_GetAckBubbleGEM
[000d465a]                           dc.w $ffff
[000d465c]                           dc.w $ffff
[000d465e]                           dc.w $ff00
[000d4660]                           dc.w $ffff
[000d4662]                           dc.w $baba
[000d4664] 00056c26                  dc.l Aev_GetRequestBubbleGE
[000d4668]                           dc.w $0304
[000d466a]                           dc.w $0504
[000d466c]                           dc.w $0500
[000d466e]                           dc.w $ffff
[000d4670]                           dc.w $1350
[000d4672] 000571b0                  dc.l Aev_GetGSRequest
[000d4676]                           dc.w $ffff
[000d4678]                           dc.w $ffff
[000d467a]                           dc.w $ff00
[000d467c]                           dc.w $ffff
[000d467e]                           dc.w $1354
[000d4680] 000572ba                  dc.l Aev_GetGSQuit
[000d4684]                           dc.w $ffff
[000d4686]                           dc.w $ffff
[000d4688]                           dc.w $ff00
[000d468a]                           dc.w $ffff
[000d468c]                           dc.w $1352
[000d468e] 0005732c                  dc.l Aev_GetGSCommand
[000d4692]                           dc.w $ffff
[000d4694]                           dc.w $ffff
[000d4696]                           dc.w $ff00
[000d4698]                           dc.w $ffff
[000d469a]                           dc.w $1353
[000d469c] 00057486                  dc.l Aev_GetGSAck
[000d46a0]                           dc.w $ffff
[000d46a2]                           dc.w $ffff
[000d46a4]                           dc.w $ff00
[000d46a6]                           dc.w $ffff
[000d46a8]                           dc.w $0402
[000d46aa] 00058980                  dc.l Aev_GetAcReply
[000d46ae]                           dc.w $ffff
[000d46b0]                           dc.w $ffff
[000d46b2]                           dc.w $ff00
[000d46b4]                           dc.w $ffff
[000d46b6]                           dc.w $dadd
[000d46b8] 00056830                  dc.l Aev_GetDhstAdd
[000d46bc]                           dc.w $ffff
[000d46be]                           dc.w $ffff
[000d46c0]                           dc.w $ff00
[000d46c2]                           dc.w $ffff
[000d46c4]                           dc.w $dade
[000d46c6] 00056834                  dc.l Aev_GetDhstAck
[000d46ca]                           dc.w $ffff
[000d46cc]                           dc.w $ffff
[000d46ce]                           dc.w $ff00
[000d46d0]                           dc.w $ffff
[000d46d2]                           dc.b $00
[000d46d3]                           dc.b $0a
[000d46d4] 00054b26                  dc.l Aev_GetMnSelected
[000d46d8]                           dc.w $ffff
[000d46da]                           dc.w $ffff
[000d46dc]                           dc.w $ff00
[000d46de]                           dc.w $ffff
[000d46e0]                           dc.b $00
[000d46e1]                           dc.b $14
[000d46e2] 00054b46                  dc.l Aev_GetWmRedraw
[000d46e6]                           dc.w $0304
[000d46e8]                           dc.w $0506
[000d46ea]                           dc.w $0700
[000d46ec]                           dc.w $ffff
[000d46ee]                           dc.b $00
[000d46ef]                           dc.b $15
[000d46f0] 00054b6a                  dc.l Aev_GetWmTopped
[000d46f4]                           dc.w $03ff
[000d46f6]                           dc.w $ffff
[000d46f8]                           dc.w $ff00
[000d46fa]                           dc.w $ffff
[000d46fc]                           dc.b $00
[000d46fd]                           dc.b $16
[000d46fe] 00054bf4                  dc.l Aev_GetWmClosed
[000d4702]                           dc.w $03ff
[000d4704]                           dc.w $ffff
[000d4706]                           dc.w $ff00
[000d4708]                           dc.w $ffff
[000d470a]                           dc.b $00
[000d470b]                           dc.b $17
[000d470c] 00054c64                  dc.l Aev_GetWmFulled
[000d4710]                           dc.w $03ff
[000d4712]                           dc.w $ffff
[000d4714]                           dc.w $ff00
[000d4716]                           dc.w $ffff
[000d4718]                           dc.b $00
[000d4719]                           dc.b $18
[000d471a] 00054c80                  dc.l Aev_GetWmArrowed
[000d471e]                           dc.w $03ff
[000d4720]                           dc.w $ffff
[000d4722]                           dc.w $ff00
[000d4724]                           dc.w $ffff
[000d4726]                           dc.b $00
[000d4727]                           dc.b $19
[000d4728] 00054d54                  dc.l Aev_GetWmHSlid
[000d472c]                           dc.w $03ff
[000d472e]                           dc.w $ffff
[000d4730]                           dc.w $ff00
[000d4732]                           dc.w $ffff
[000d4734]                           dc.b $00
[000d4735]                           dc.b $1a
[000d4736] 00054d78                  dc.l Aev_GetWmVSlid
[000d473a]                           dc.w $03ff
[000d473c]                           dc.w $ffff
[000d473e]                           dc.w $ff00
[000d4740]                           dc.w $ffff
[000d4742]                           dc.b $00
[000d4743]                           dc.b $1b
[000d4744] 00054d9c                  dc.l Aev_GetWmSized
[000d4748]                           dc.w $0304
[000d474a]                           dc.w $0506
[000d474c]                           dc.w $0700
[000d474e]                           dc.w $ffff
[000d4750]                           dc.b $00
[000d4751]                           dc.b $1c
[000d4752] 00054dc0                  dc.l Aev_GetWmMoved
[000d4756]                           dc.w $0304
[000d4758]                           dc.w $0506
[000d475a]                           dc.w $0700
[000d475c]                           dc.w $ffff
[000d475e]                           dc.b $00
[000d475f]                           dc.b $64
[000d4760] 00054de4                  dc.l Aev_GetWmBottomed
[000d4764]                           dc.w $03ff
[000d4766]                           dc.w $ffff
[000d4768]                           dc.w $ff00
[000d476a]                           dc.w $ffff
[000d476c]                           dc.b $00
[000d476d]                           dc.b $21
[000d476e] 00054de4                  dc.l Aev_GetWmBottomed
[000d4772]                           dc.w $03ff
[000d4774]                           dc.w $ffff
[000d4776]                           dc.w $ff00
[000d4778]                           dc.w $ffff
[000d477a]                           dc.b $00
[000d477b]                           dc.b $1f
[000d477c] 00054dfa                  dc.l Aev_GetWmOnTop
[000d4780]                           dc.w $03ff
[000d4782]                           dc.w $ffff
[000d4784]                           dc.w $ff00
[000d4786]                           dc.w $ffff
[000d4788]                           dc.b $00
[000d4789]                           dc.b $1e
[000d478a] 00054e2a                  dc.l Aev_GetWmUnTopped
[000d478e]                           dc.w $03ff
[000d4790]                           dc.w $ffff
[000d4792]                           dc.w $ff00
[000d4794]                           dc.w $ffff
[000d4796]                           dc.b $00
[000d4797]                           dc.b $1d
[000d4798]                           dc.b $00
[000d4799]                           dc.b $00
[000d479a]                           dc.b $00
[000d479b]                           dc.b $00
[000d479c]                           dc.w $ffff
[000d479e]                           dc.w $ffff
[000d47a0]                           dc.w $ff00
[000d47a2]                           dc.w $ffff
[000d47a4]                           dc.b $00
[000d47a5]                           dc.b $20
[000d47a6]                           dc.b $00
[000d47a7]                           dc.b $00
[000d47a8]                           dc.b $00
[000d47a9]                           dc.b $00
[000d47aa]                           dc.w $ffff
[000d47ac]                           dc.w $ffff
[000d47ae]                           dc.w $ff00
[000d47b0]                           dc.w $ffff
[000d47b2]                           dc.w $5758
[000d47b4] 00054e32                  dc.l Aev_GetWmShaded
[000d47b8]                           dc.w $03ff
[000d47ba]                           dc.w $ffff
[000d47bc]                           dc.w $ff00
[000d47be]                           dc.w $ffff
[000d47c0]                           dc.w $5759
[000d47c2] 00054e62                  dc.l Aev_GetWmUnshaded
[000d47c6]                           dc.w $03ff
[000d47c8]                           dc.w $ffff
[000d47ca]                           dc.w $ff00
[000d47cc]                           dc.w $ffff
[000d47ce]                           dc.w $0930
[000d47d0] 00054d0a                  dc.l Aev_GetWmMouseWheel
[000d47d4]                           dc.w $0305
[000d47d6]                           dc.w $06ff
[000d47d8]                           dc.w $ff00
[000d47da]                           dc.b $00
[000d47db]                           dc.b $04
[000d47dc]                           dc.b $00
[000d47dd]                           dc.b $25
[000d47de] 00054e2e                  dc.l Aev_GetWmToolbar
[000d47e2]                           dc.w $03ff
[000d47e4]                           dc.w $ffff
[000d47e6]                           dc.w $ff00
[000d47e8]                           dc.w $ffff
[000d47ea]                           dc.b $00
[000d47eb]                           dc.b $32
[000d47ec] 00054f02                  dc.l Aev_GetApTerm
[000d47f0]                           dc.w $ffff
[000d47f2]                           dc.w $ffff
[000d47f4]                           dc.w $ff00
[000d47f6]                           dc.w $ffff
[000d47f8]                           dc.b $00
[000d47f9]                           dc.b $50
[000d47fa] 00054f18                  dc.l Aev_GetScChanged
[000d47fe]                           dc.w $ffff
[000d4800]                           dc.w $ffff
[000d4802]                           dc.w $ff00
[000d4804]                           dc.w $ffff
[000d4806]                           dc.b $00
[000d4807]                           dc.b $53
[000d4808] 00054f26                  dc.l Aev_GetFntChanged
[000d480c]                           dc.w $ffff
[000d480e]                           dc.w $ffff
[000d4810]                           dc.w $ff00
[000d4812]                           dc.w $ffff
[000d4814]                           dc.b $00
[000d4815]                           dc.b $52
[000d4816] 00054f8a                  dc.l Aev_GetPrnChanged
[000d481a]                           dc.w $ffff
[000d481c]                           dc.w $ffff
[000d481e]                           dc.w $ff00
[000d4820]                           dc.w $ffff
[000d4822]                           dc.b $00
[000d4823]                           dc.b $54
[000d4824] 00054fa2                  dc.l Aev_GetColorsChanged
[000d4828]                           dc.w $ffff
[000d482a]                           dc.w $ffff
[000d482c]                           dc.w $ff00
[000d482e]                           dc.w $ffff
[000d4830]                           dc.b $00
[000d4831]                           dc.b $28
[000d4832] 0005503c                  dc.l Aev_GetAcOpen
[000d4836]                           dc.w $ffff
[000d4838]                           dc.w $ffff
[000d483a]                           dc.w $ff00
[000d483c]                           dc.w $ffff
[000d483e]                           dc.b $00
[000d483f]                           dc.b $29
[000d4840] 00054fcc                  dc.l Aev_GetAcClose
[000d4844]                           dc.w $ffff
[000d4846]                           dc.w $ffff
[000d4848]                           dc.w $ff00
[000d484a]                           dc.w $ffff
[000d484c]                           dc.b $00
[000d484d]                           dc.b $22
[000d484e] 00054eaa                  dc.l Aev_GetWmIconify
[000d4852]                           dc.w $03ff
[000d4854]                           dc.w $ffff
[000d4856]                           dc.w $ff00
[000d4858]                           dc.w $ffff
[000d485a]                           dc.b $00
[000d485b]                           dc.b $24
[000d485c] 00054ec8                  dc.l Aev_GetWmAllIconify
[000d4860]                           dc.w $03ff
[000d4862]                           dc.w $ffff
[000d4864]                           dc.w $ff00
[000d4866]                           dc.w $ffff
[000d4868]                           dc.b $00
[000d4869]                           dc.b $23
[000d486a] 00054ee6                  dc.l Aev_GetWmUnIconify
[000d486e]                           dc.w $03ff
[000d4870]                           dc.w $ffff
[000d4872]                           dc.w $ff00
[000d4874]                           dc.w $ffff
MsgListeLen:
[000d4876]                           dc.b $00
[000d4877]                           dc.b '>ARGS',0
[000d487d]                           dc.b $0a
[000d487e]                           dc.w $0d00
xd4880:
[000d4880]                           dc.b 'XAccTxt',0
xd4888:
[000d4888]                           dc.b 'ARGS',0
xd488d:
[000d488d]                           dc.b '.TXT',0
		.even
