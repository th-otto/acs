INMsgService:
[00053a5e] 2039 000d 450e            move.l     $000D450E,d0
[00053a64] 6626                      bne.s      $00053A8C
[00053a66] 4eb9 0006 2a5e            jsr        $00062A5E
[00053a6c] 23c8 000d 450e            move.l     a0,$000D450E
[00053a72] 2039 000d 450e            move.l     $000D450E,d0
[00053a78] 6604                      bne.s      $00053A7E
[00053a7a] 70ff                      moveq.l    #-1,d0
[00053a7c] 4e75                      rts
[00053a7e] 2079 000d 450e            movea.l    $000D450E,a0
[00053a84] 217c 0004 7fa6 0004       move.l     #$00047FA6,4(a0)
[00053a8c] 43f9 0005 3ac8            lea.l      $00053AC8,a1
[00053a92] 720e                      moveq.l    #14,d1
[00053a94] 3039 000d 4876            move.w     $000D4876,d0
[00053a9a] 48c0                      ext.l      d0
[00053a9c] 41f9 000d 4512            lea.l      $000D4512,a0
[00053aa2] 4eb9 0007 5314            jsr        $00075314
[00053aa8] 4240                      clr.w      d0
[00053aaa] 4e75                      rts
TRMsgService:
[00053aac] 2039 000d 450e            move.l     $000D450E,d0
[00053ab2] 670c                      beq.s      $00053AC0
[00053ab4] 2079 000d 450e            movea.l    $000D450E,a0
[00053aba] 4eb9 0006 2aa6            jsr        $00062AA6
[00053ac0] 42b9 000d 450e            clr.l      $000D450E
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
[00053aec] 4eb9 0004 e608            jsr        $0004E608
[00053af2] 2008                      move.l     a0,d0
[00053af4] 6606                      bne.s      $00053AFC
[00053af6] 4240                      clr.w      d0
[00053af8] 6000 0274                 bra        $00053D6E
[00053afc] 2079 0010 1f12            movea.l    ACSblk,a0
[00053b02] 2028 02a8                 move.l     680(a0),d0
[00053b06] 6710                      beq.s      $00053B18
[00053b08] 206f 0024                 movea.l    36(a7),a0
[00053b0c] 2279 0010 1f12            movea.l    ACSblk,a1
[00053b12] 2269 02a8                 movea.l    680(a1),a1
[00053b16] 4e91                      jsr        (a1)
[00053b18] 206f 0024                 movea.l    36(a7),a0
[00053b1c] 0c50 0029                 cmpi.w     #$0029,(a0)
[00053b20] 660c                      bne.s      $00053B2E
[00053b22] 91c8                      suba.l     a0,a0
[00053b24] 4eb9 0005 4fcc            jsr        $00054FCC
[00053b2a] 6000 0242                 bra        $00053D6E
[00053b2e] 487a ff98                 pea.l      $00053AC8(pc)
[00053b32] 720e                      moveq.l    #14,d1
[00053b34] 3039 000d 4876            move.w     $000D4876,d0
[00053b3a] 48c0                      ext.l      d0
[00053b3c] 43f9 000d 4512            lea.l      $000D4512,a1
[00053b42] 206f 0028                 movea.l    40(a7),a0
[00053b46] 4eb9 0007 5178            jsr        $00075178
[00053b4c] 584f                      addq.w     #4,a7
[00053b4e] 2f48 0020                 move.l     a0,32(a7)
[00053b52] 202f 0020                 move.l     32(a7),d0
[00053b56] 6700 01ee                 beq        $00053D46
[00053b5a] 721e                      moveq.l    #30,d1
[00053b5c] 4240                      clr.w      d0
[00053b5e] 41ef 0002                 lea.l      2(a7),a0
[00053b62] 4eb9 0007 712e            jsr        $0007712E
[00053b68] 2f6f 0024 0002            move.l     36(a7),2(a7)
[00053b6e] 206f 0020                 movea.l    32(a7),a0
[00053b72] 1028 000b                 move.b     11(a0),d0
[00053b76] 4880                      ext.w      d0
[00053b78] 5340                      subq.w     #1,d0
[00053b7a] 6706                      beq.s      $00053B82
[00053b7c] 5340                      subq.w     #1,d0
[00053b7e] 670e                      beq.s      $00053B8E
[00053b80] 6032                      bra.s      $00053BB4
[00053b82] 4eb9 0004 e46a            jsr        $0004E46A
[00053b88] 2f48 000e                 move.l     a0,14(a7)
[00053b8c] 602a                      bra.s      $00053BB8
[00053b8e] 486f 001c                 pea.l      28(a7)
[00053b92] 486f 001e                 pea.l      30(a7)
[00053b96] 486f 001e                 pea.l      30(a7)
[00053b9a] 486f 001e                 pea.l      30(a7)
[00053b9e] 43ef 001e                 lea.l      30(a7),a1
[00053ba2] 206f 0034                 movea.l    52(a7),a0
[00053ba6] 4eb9 0005 43a2            jsr        $000543A2
[00053bac] 4fef 0010                 lea.l      16(a7),a7
[00053bb0] 3e80                      move.w     d0,(a7)
[00053bb2] 6004                      bra.s      $00053BB8
[00053bb4] 42af 000e                 clr.l      14(a7)
[00053bb8] 202f 000e                 move.l     14(a7),d0
[00053bbc] 666c                      bne.s      $00053C2A
[00053bbe] 206f 0020                 movea.l    32(a7),a0
[00053bc2] 1028 0006                 move.b     6(a0),d0
[00053bc6] 6b62                      bmi.s      $00053C2A
[00053bc8] 206f 0020                 movea.l    32(a7),a0
[00053bcc] 1028 0006                 move.b     6(a0),d0
[00053bd0] 4880                      ext.w      d0
[00053bd2] 48c0                      ext.l      d0
[00053bd4] d080                      add.l      d0,d0
[00053bd6] 206f 0024                 movea.l    36(a7),a0
[00053bda] 3030 0800                 move.w     0(a0,d0.l),d0
[00053bde] 6b4a                      bmi.s      $00053C2A
[00053be0] 206f 0020                 movea.l    32(a7),a0
[00053be4] 1228 0006                 move.b     6(a0),d1
[00053be8] 4881                      ext.w      d1
[00053bea] 48c1                      ext.l      d1
[00053bec] d281                      add.l      d1,d1
[00053bee] 206f 0024                 movea.l    36(a7),a0
[00053bf2] 3030 1800                 move.w     0(a0,d1.l),d0
[00053bf6] 4eb9 0004 e5ea            jsr        $0004E5EA
[00053bfc] 2f48 000e                 move.l     a0,14(a7)
[00053c00] 202f 000e                 move.l     14(a7),d0
[00053c04] 6606                      bne.s      $00053C0C
[00053c06] 4240                      clr.w      d0
[00053c08] 6000 0164                 bra        $00053D6E
[00053c0c] 7002                      moveq.l    #2,d0
[00053c0e] 206f 000e                 movea.l    14(a7),a0
[00053c12] c068 0056                 and.w      86(a0),d0
[00053c16] 660a                      bne.s      $00053C22
[00053c18] 206f 0024                 movea.l    36(a7),a0
[00053c1c] 0c50 0015                 cmpi.w     #$0015,(a0)
[00053c20] 6606                      bne.s      $00053C28
[00053c22] 4eb9 0004 b286            jsr        $0004B286
[00053c28] 6010                      bra.s      $00053C3A
[00053c2a] 202f 000e                 move.l     14(a7),d0
[00053c2e] 660a                      bne.s      $00053C3A
[00053c30] 4eb9 0004 e608            jsr        $0004E608
[00053c36] 2f48 000e                 move.l     a0,14(a7)
[00053c3a] 206f 0020                 movea.l    32(a7),a0
[00053c3e] 1028 0007                 move.b     7(a0),d0
[00053c42] 6b18                      bmi.s      $00053C5C
[00053c44] 206f 0020                 movea.l    32(a7),a0
[00053c48] 1028 0007                 move.b     7(a0),d0
[00053c4c] 4880                      ext.w      d0
[00053c4e] 48c0                      ext.l      d0
[00053c50] d080                      add.l      d0,d0
[00053c52] 206f 0024                 movea.l    36(a7),a0
[00053c56] 3030 0800                 move.w     0(a0,d0.l),d0
[00053c5a] 600a                      bra.s      $00053C66
[00053c5c] 2079 0010 1f12            movea.l    ACSblk,a0
[00053c62] 3028 0008                 move.w     8(a0),d0
[00053c66] 3f40 0006                 move.w     d0,6(a7)
[00053c6a] 206f 0020                 movea.l    32(a7),a0
[00053c6e] 1028 0008                 move.b     8(a0),d0
[00053c72] 6b18                      bmi.s      $00053C8C
[00053c74] 206f 0020                 movea.l    32(a7),a0
[00053c78] 1028 0008                 move.b     8(a0),d0
[00053c7c] 4880                      ext.w      d0
[00053c7e] 48c0                      ext.l      d0
[00053c80] d080                      add.l      d0,d0
[00053c82] 206f 0024                 movea.l    36(a7),a0
[00053c86] 3030 0800                 move.w     0(a0,d0.l),d0
[00053c8a] 600a                      bra.s      $00053C96
[00053c8c] 2079 0010 1f12            movea.l    ACSblk,a0
[00053c92] 3028 000a                 move.w     10(a0),d0
[00053c96] 3f40 0008                 move.w     d0,8(a7)
[00053c9a] 206f 0020                 movea.l    32(a7),a0
[00053c9e] 1028 0009                 move.b     9(a0),d0
[00053ca2] 6b18                      bmi.s      $00053CBC
[00053ca4] 206f 0020                 movea.l    32(a7),a0
[00053ca8] 1028 0009                 move.b     9(a0),d0
[00053cac] 4880                      ext.w      d0
[00053cae] 48c0                      ext.l      d0
[00053cb0] d080                      add.l      d0,d0
[00053cb2] 206f 0024                 movea.l    36(a7),a0
[00053cb6] 3030 0800                 move.w     0(a0,d0.l),d0
[00053cba] 600a                      bra.s      $00053CC6
[00053cbc] 2079 0010 1f12            movea.l    ACSblk,a0
[00053cc2] 3028 000c                 move.w     12(a0),d0
[00053cc6] 3f40 000a                 move.w     d0,10(a7)
[00053cca] 206f 0020                 movea.l    32(a7),a0
[00053cce] 1028 000a                 move.b     10(a0),d0
[00053cd2] 6b18                      bmi.s      $00053CEC
[00053cd4] 206f 0020                 movea.l    32(a7),a0
[00053cd8] 1028 000a                 move.b     10(a0),d0
[00053cdc] 4880                      ext.w      d0
[00053cde] 48c0                      ext.l      d0
[00053ce0] d080                      add.l      d0,d0
[00053ce2] 206f 0024                 movea.l    36(a7),a0
[00053ce6] 3030 0800                 move.w     0(a0,d0.l),d0
[00053cea] 600a                      bra.s      $00053CF6
[00053cec] 2079 0010 1f12            movea.l    ACSblk,a0
[00053cf2] 3028 000e                 move.w     14(a0),d0
[00053cf6] 3f40 000c                 move.w     d0,12(a7)
[00053cfa] 206f 0020                 movea.l    32(a7),a0
[00053cfe] 3028 000c                 move.w     12(a0),d0
[00053d02] 6b18                      bmi.s      $00053D1C
[00053d04] 206f 0020                 movea.l    32(a7),a0
[00053d08] 3028 000c                 move.w     12(a0),d0
[00053d0c] 48c0                      ext.l      d0
[00053d0e] d080                      add.l      d0,d0
[00053d10] 206f 0024                 movea.l    36(a7),a0
[00053d14] 3f70 0800 001e            move.w     0(a0,d0.l),30(a7)
[00053d1a] 6004                      bra.s      $00053D20
[00053d1c] 426f 001e                 clr.w      30(a7)
[00053d20] 206f 0020                 movea.l    32(a7),a0
[00053d24] 2028 0002                 move.l     2(a0),d0
[00053d28] 6716                      beq.s      $00053D40
[00053d2a] 3017                      move.w     (a7),d0
[00053d2c] 6712                      beq.s      $00053D40
[00053d2e] 41ef 0002                 lea.l      2(a7),a0
[00053d32] 226f 0020                 movea.l    32(a7),a1
[00053d36] 2269 0002                 movea.l    2(a1),a1
[00053d3a] 4e91                      jsr        (a1)
[00053d3c] 3e80                      move.w     d0,(a7)
[00053d3e] 6004                      bra.s      $00053D44
[00053d40] 3ebc 0001                 move.w     #$0001,(a7)
[00053d44] 6020                      bra.s      $00053D66
[00053d46] 4eb9 0004 e608            jsr        $0004E608
[00053d4c] 2f48 000e                 move.l     a0,14(a7)
[00053d50] 226f 0024                 movea.l    36(a7),a1
[00053d54] 701b                      moveq.l    #27,d0
[00053d56] 206f 000e                 movea.l    14(a7),a0
[00053d5a] 246f 000e                 movea.l    14(a7),a2
[00053d5e] 246a 0004                 movea.l    4(a2),a2
[00053d62] 4e92                      jsr        (a2)
[00053d64] 3e80                      move.w     d0,(a7)
[00053d66] 4eb9 0004 b33c            jsr        $0004B33C
[00053d6c] 3017                      move.w     (a7),d0
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
[00053d8e] 6704                      beq.s      $00053D94
[00053d90] 4240                      clr.w      d0
[00053d92] 6042                      bra.s      $00053DD6
[00053d94] 4257                      clr.w      (a7)
[00053d96] 6036                      bra.s      $00053DCE
[00053d98] 3017                      move.w     (a7),d0
[00053d9a] 48c0                      ext.l      d0
[00053d9c] e588                      lsl.l      #2,d0
[00053d9e] 206f 0006                 movea.l    6(a7),a0
[00053da2] 2030 0804                 move.l     4(a0,d0.l),d0
[00053da6] 6724                      beq.s      $00053DCC
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
[00053dc6] 6704                      beq.s      $00053DCC
[00053dc8] 4240                      clr.w      d0
[00053dca] 600a                      bra.s      $00053DD6
[00053dcc] 5257                      addq.w     #1,(a7)
[00053dce] 0c57 0008                 cmpi.w     #$0008,(a7)
[00053dd2] 6dc4                      blt.s      $00053D98
[00053dd4] 7001                      moveq.l    #1,d0
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
[00053dee] 6604                      bne.s      $00053DF4
[00053df0] 7001                      moveq.l    #1,d0
[00053df2] 6002                      bra.s      $00053DF6
[00053df4] 4240                      clr.w      d0
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
[00053e24] 2279 000d 99d6            movea.l    $000D99D6,a1
[00053e2a] 206f 000c                 movea.l    12(a7),a0
[00053e2e] 7210                      moveq.l    #16,d1
[00053e30] 302f 0012                 move.w     18(a7),d0
[00053e34] 4eb9 0006 a818            jsr        $0006A818
[00053e3a] 4a40                      tst.w      d0
[00053e3c] 6704                      beq.s      $00053E42
[00053e3e] 7001                      moveq.l    #1,d0
[00053e40] 6002                      bra.s      $00053E44
[00053e42] 4240                      clr.w      d0
[00053e44] 3e80                      move.w     d0,(a7)
[00053e46] 3017                      move.w     (a7),d0
[00053e48] 6700 0090                 beq        $00053EDA
[00053e4c] 302f 0006                 move.w     6(a7),d0
[00053e50] 6b00 0088                 bmi        $00053EDA
[00053e54] 202f 0008                 move.l     8(a7),d0
[00053e58] 6700 0080                 beq        $00053EDA
[00053e5c] 701a                      moveq.l    #26,d0
[00053e5e] 4eb9 0004 7cc8            jsr        Ax_malloc
[00053e64] 2f48 0002                 move.l     a0,2(a7)
[00053e68] 202f 0002                 move.l     2(a7),d0
[00053e6c] 6604                      bne.s      $00053E72
[00053e6e] 4240                      clr.w      d0
[00053e70] 606a                      bra.s      $00053EDC
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
[00053ea6] 4eb9 0007 6f44            jsr        $00076F44
[00053eac] 226f 0002                 movea.l    2(a7),a1
[00053eb0] 2079 000d 2c50            movea.l    $000D2C50,a0
[00053eb6] 2479 000d 2c50            movea.l    $000D2C50,a2
[00053ebc] 246a 000c                 movea.l    12(a2),a2
[00053ec0] 4e92                      jsr        (a2)
[00053ec2] 5340                      subq.w     #1,d0
[00053ec4] 6714                      beq.s      $00053EDA
[00053ec6] 226f 000c                 movea.l    12(a7),a1
[00053eca] 7004                      moveq.l    #4,d0
[00053ecc] 206f 0008                 movea.l    8(a7),a0
[00053ed0] 246f 0008                 movea.l    8(a7),a2
[00053ed4] 246a 0004                 movea.l    4(a2),a2
[00053ed8] 4e92                      jsr        (a2)
[00053eda] 3017                      move.w     (a7),d0
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
[00053ef6] 6b28                      bmi.s      $00053F20
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
[00053f1a] 6100 fede                 bsr        $00053DFA
[00053f1e] 6018                      bra.s      $00053F38
[00053f20] 2279 000d 99d6            movea.l    $000D99D6,a1
[00053f26] 206f 0004                 movea.l    4(a7),a0
[00053f2a] 2050                      movea.l    (a0),a0
[00053f2c] 7210                      moveq.l    #16,d1
[00053f2e] 2457                      movea.l    (a7),a2
[00053f30] 3012                      move.w     (a2),d0
[00053f32] 4eb9 0006 a818            jsr        $0006A818
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
[00053f6a] 487a ff78                 pea.l      $00053EE4(pc)
[00053f6e] 42a7                      clr.l      -(a7)
[00053f70] 43ef 0008                 lea.l      8(a7),a1
[00053f74] 2079 000d 2c54            movea.l    $000D2C54,a0
[00053f7a] 2479 000d 2c54            movea.l    $000D2C54,a2
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
[00053fa4] 6604                      bne.s      $00053FAA
[00053fa6] 7001                      moveq.l    #1,d0
[00053fa8] 6002                      bra.s      $00053FAC
[00053faa] 4240                      clr.w      d0
[00053fac] 504f                      addq.w     #8,a7
[00053fae] 4e75                      rts
Aev_DDSearch:
[00053fb0] 2f0a                      move.l     a2,-(a7)
[00053fb2] 514f                      subq.w     #8,a7
[00053fb4] 3f40 0006                 move.w     d0,6(a7)
[00053fb8] 3f6f 0006 0004            move.w     6(a7),4(a7)
[00053fbe] 487a ffd2                 pea.l      $00053F92(pc)
[00053fc2] 43ef 0008                 lea.l      8(a7),a1
[00053fc6] 2079 000d 2c54            movea.l    $000D2C54,a0
[00053fcc] 2479 000d 2c54            movea.l    $000D2C54,a2
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
[00054000] 670e                      beq.s      $00054010
[00054002] 0c6f 0004 000c            cmpi.w     #$0004,12(a7)
[00054008] 6706                      beq.s      $00054010
[0005400a] 4240                      clr.w      d0
[0005400c] 6000 00b0                 bra        $000540BE
[00054010] 302f 000e                 move.w     14(a7),d0
[00054014] 6100 ff9a                 bsr.w      $00053FB0
[00054018] 2e88                      move.l     a0,(a7)
[0005401a] 2017                      move.l     (a7),d0
[0005401c] 664c                      bne.s      $0005406A
[0005401e] 7024                      moveq.l    #36,d0
[00054020] 4eb9 0004 7cc8            jsr        Ax_malloc
[00054026] 2e88                      move.l     a0,(a7)
[00054028] 2017                      move.l     (a7),d0
[0005402a] 6606                      bne.s      $00054032
[0005402c] 4240                      clr.w      d0
[0005402e] 6000 008e                 bra        $000540BE
[00054032] 7224                      moveq.l    #36,d1
[00054034] 4240                      clr.w      d0
[00054036] 2057                      movea.l    (a7),a0
[00054038] 4eb9 0007 712e            jsr        $0007712E
[0005403e] 2057                      movea.l    (a7),a0
[00054040] 30af 000e                 move.w     14(a7),(a0)
[00054044] 2257                      movea.l    (a7),a1
[00054046] 2079 000d 2c54            movea.l    $000D2C54,a0
[0005404c] 2479 000d 2c54            movea.l    $000D2C54,a2
[00054052] 246a 000c                 movea.l    12(a2),a2
[00054056] 4e92                      jsr        (a2)
[00054058] 4a40                      tst.w      d0
[0005405a] 660e                      bne.s      $0005406A
[0005405c] 7024                      moveq.l    #36,d0
[0005405e] 2057                      movea.l    (a7),a0
[00054060] 4eb9 0004 8140            jsr        $00048140
[00054066] 4240                      clr.w      d0
[00054068] 6054                      bra.s      $000540BE
[0005406a] 302f 000c                 move.w     12(a7),d0
[0005406e] 5540                      subq.w     #2,d0
[00054070] 6706                      beq.s      $00054078
[00054072] 5540                      subq.w     #2,d0
[00054074] 6720                      beq.s      $00054096
[00054076] 6044                      bra.s      $000540BC
[00054078] 2057                      movea.l    (a7),a0
[0005407a] 00a8 0000 0002 0002       ori.l      #$00000002,2(a0)
[00054082] 206f 0008                 movea.l    8(a7),a0
[00054086] 2257                      movea.l    (a7),a1
[00054088] 3350 0006                 move.w     (a0),6(a1)
[0005408c] 2057                      movea.l    (a7),a0
[0005408e] 216f 0004 0008            move.l     4(a7),8(a0)
[00054094] 6026                      bra.s      $000540BC
[00054096] 2057                      movea.l    (a7),a0
[00054098] 00a8 0000 0004 0002       ori.l      #$00000004,2(a0)
[000540a0] 7006                      moveq.l    #6,d0
[000540a2] 226f 0008                 movea.l    8(a7),a1
[000540a6] 2057                      movea.l    (a7),a0
[000540a8] 41e8 000c                 lea.l      12(a0),a0
[000540ac] 4eb9 0007 6f44            jsr        $00076F44
[000540b2] 2057                      movea.l    (a7),a0
[000540b4] 216f 0004 0012            move.l     4(a7),18(a0)
[000540ba] 4e71                      nop
[000540bc] 7001                      moveq.l    #1,d0
[000540be] 4fef 0010                 lea.l      16(a7),a7
[000540c2] 245f                      movea.l    (a7)+,a2
[000540c4] 4e75                      rts
Aev_DDDelete:
[000540c6] 2f0a                      move.l     a2,-(a7)
[000540c8] 554f                      subq.w     #2,a7
[000540ca] 3e80                      move.w     d0,(a7)
[000540cc] 487a fec4                 pea.l      $00053F92(pc)
[000540d0] 43ef 0004                 lea.l      4(a7),a1
[000540d4] 2079 000d 2c54            movea.l    $000D2C54,a0
[000540da] 2479 000d 2c54            movea.l    $000D2C54,a2
[000540e0] 246a 0018                 movea.l    24(a2),a2
[000540e4] 4e92                      jsr        (a2)
[000540e6] 584f                      addq.w     #4,a7
[000540e8] 7201                      moveq.l    #1,d1
[000540ea] b280                      cmp.l      d0,d1
[000540ec] 6604                      bne.s      $000540F2
[000540ee] 7001                      moveq.l    #1,d0
[000540f0] 6002                      bra.s      $000540F4
[000540f2] 4240                      clr.w      d0
[000540f4] 544f                      addq.w     #2,a7
[000540f6] 245f                      movea.l    (a7)+,a2
[000540f8] 4e75                      rts
Aev_DDRemove:
[000540fa] 594f                      subq.w     #4,a7
[000540fc] 2e88                      move.l     a0,(a7)
[000540fe] 7002                      moveq.l    #2,d0
[00054100] 2057                      movea.l    (a7),a0
[00054102] c0a8 0002                 and.l      2(a0),d0
[00054106] 670e                      beq.s      $00054116
[00054108] 72ff                      moveq.l    #-1,d1
[0005410a] 91c8                      suba.l     a0,a0
[0005410c] 2257                      movea.l    (a7),a1
[0005410e] 3011                      move.w     (a1),d0
[00054110] 4eb9 0005 5be8            jsr        $00055BE8
[00054116] 7004                      moveq.l    #4,d0
[00054118] 2057                      movea.l    (a7),a0
[0005411a] c0a8 0002                 and.l      2(a0),d0
[0005411e] 670e                      beq.s      $0005412E
[00054120] 72ff                      moveq.l    #-1,d1
[00054122] 91c8                      suba.l     a0,a0
[00054124] 2257                      movea.l    (a7),a1
[00054126] 3011                      move.w     (a1),d0
[00054128] 4eb9 0005 6198            jsr        $00056198
[0005412e] 2057                      movea.l    (a7),a0
[00054130] 41e8 0016                 lea.l      22(a0),a0
[00054134] 4eb9 0005 51c6            jsr        $000551C6
[0005413a] 2057                      movea.l    (a7),a0
[0005413c] 2068 0020                 movea.l    32(a0),a0
[00054140] 4eb9 0005 5dd4            jsr        $00055DD4
[00054146] 7024                      moveq.l    #36,d0
[00054148] 2057                      movea.l    (a7),a0
[0005414a] 4eb9 0004 8140            jsr        $00048140
[00054150] 7001                      moveq.l    #1,d0
[00054152] 584f                      addq.w     #4,a7
[00054154] 4e75                      rts
Ash_chkDDtype:
[00054156] 514f                      subq.w     #8,a7
[00054158] 2f48 0004                 move.l     a0,4(a7)
[0005415c] 2e89                      move.l     a1,(a7)
[0005415e] 206f 0004                 movea.l    4(a7),a0
[00054162] 0c50 0002                 cmpi.w     #$0002,(a0)
[00054166] 670a                      beq.s      $00054172
[00054168] 206f 0004                 movea.l    4(a7),a0
[0005416c] 0c50 0004                 cmpi.w     #$0004,(a0)
[00054170] 660e                      bne.s      $00054180
[00054172] 2057                      movea.l    (a7),a0
[00054174] 3028 0004                 move.w     4(a0),d0
[00054178] 206f 0004                 movea.l    4(a7),a0
[0005417c] c050                      and.w      (a0),d0
[0005417e] 6002                      bra.s      $00054182
[00054180] 4240                      clr.w      d0
[00054182] 504f                      addq.w     #8,a7
[00054184] 4e75                      rts
Ash_sendall:
[00054186] 2f0a                      move.l     a2,-(a7)
[00054188] 4fef ffe8                 lea.l      -24(a7),a7
[0005418c] 2f48 0014                 move.l     a0,20(a7)
[00054190] 2f40 0010                 move.l     d0,16(a7)
[00054194] 202f 0010                 move.l     16(a7),d0
[00054198] 6a00 008c                 bpl        $00054226
[0005419c] 2079 0010 1f12            movea.l    ACSblk,a0
[000541a2] 2068 0280                 movea.l    640(a0),a0
[000541a6] 0c50 0400                 cmpi.w     #$0400,(a0)
[000541aa] 6c0a                      bge.s      $000541B6
[000541ac] 0c79 0200 0010 2620       cmpi.w     #$0200,$00102620
[000541b4] 6d70                      blt.s      $00054226
[000541b6] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[000541bc] 486f 000e                 pea.l      14(a7)
[000541c0] 43ef 0014                 lea.l      20(a7),a1
[000541c4] 41ef 0008                 lea.l      8(a7),a0
[000541c8] 4240                      clr.w      d0
[000541ca] 4eb9 0006 aa02            jsr        $0006AA02
[000541d0] 504f                      addq.w     #8,a7
[000541d2] 3f40 000e                 move.w     d0,14(a7)
[000541d6] 6046                      bra.s      $0005421E
[000541d8] 7006                      moveq.l    #6,d0
[000541da] c06f 000c                 and.w      12(a7),d0
[000541de] 671e                      beq.s      $000541FE
[000541e0] 2279 000d 99d6            movea.l    $000D99D6,a1
[000541e6] 206f 0014                 movea.l    20(a7),a0
[000541ea] 7210                      moveq.l    #16,d1
[000541ec] 302f 000a                 move.w     10(a7),d0
[000541f0] 4eb9 0006 a818            jsr        $0006A818
[000541f6] 4a40                      tst.w      d0
[000541f8] 6604                      bne.s      $000541FE
[000541fa] 4240                      clr.w      d0
[000541fc] 604a                      bra.s      $00054248
[000541fe] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[00054204] 486f 000e                 pea.l      14(a7)
[00054208] 43ef 0014                 lea.l      20(a7),a1
[0005420c] 41ef 0008                 lea.l      8(a7),a0
[00054210] 7001                      moveq.l    #1,d0
[00054212] 4eb9 0006 aa02            jsr        $0006AA02
[00054218] 504f                      addq.w     #8,a7
[0005421a] 3f40 000e                 move.w     d0,14(a7)
[0005421e] 302f 000e                 move.w     14(a7),d0
[00054222] 66b4                      bne.s      $000541D8
[00054224] 6020                      bra.s      $00054246
[00054226] 487a fcbc                 pea.l      $00053EE4(pc)
[0005422a] 487a ff2a                 pea.l      $00054156(pc)
[0005422e] 43ef 0018                 lea.l      24(a7),a1
[00054232] 2079 000d 2c54            movea.l    $000D2C54,a0
[00054238] 2479 000d 2c54            movea.l    $000D2C54,a2
[0005423e] 246a 0040                 movea.l    64(a2),a2
[00054242] 4e92                      jsr        (a2)
[00054244] 504f                      addq.w     #8,a7
[00054246] 7001                      moveq.l    #1,d0
[00054248] 4fef 0018                 lea.l      24(a7),a7
[0005424c] 245f                      movea.l    (a7)+,a2
[0005424e] 4e75                      rts
Ash_nextdd:
[00054250] 594f                      subq.w     #4,a7
[00054252] 2e88                      move.l     a0,(a7)
[00054254] 2017                      move.l     (a7),d0
[00054256] 6616                      bne.s      $0005426E
[00054258] 2079 000d 2c54            movea.l    $000D2C54,a0
[0005425e] 2279 000d 2c54            movea.l    $000D2C54,a1
[00054264] 2269 0024                 movea.l    36(a1),a1
[00054268] 4e91                      jsr        (a1)
[0005426a] 601a                      bra.s      $00054286
[0005426c] 6018                      bra.s      $00054286
[0005426e] 7201                      moveq.l    #1,d1
[00054270] 7001                      moveq.l    #1,d0
[00054272] 2079 000d 2c54            movea.l    $000D2C54,a0
[00054278] 2279 000d 2c54            movea.l    $000D2C54,a1
[0005427e] 2269 0034                 movea.l    52(a1),a1
[00054282] 4e91                      jsr        (a1)
[00054284] 4e71                      nop
[00054286] 584f                      addq.w     #4,a7
[00054288] 4e75                      rts
dd_exec:
[0005428a] 2f0a                      move.l     a2,-(a7)
[0005428c] 4fef ffdc                 lea.l      -36(a7),a7
[00054290] 2f48 001e                 move.l     a0,30(a7)
[00054294] 2f49 001a                 move.l     a1,26(a7)
[00054298] 3f40 0018                 move.w     d0,24(a7)
[0005429c] 202f 001e                 move.l     30(a7),d0
[000542a0] 6604                      bne.s      $000542A6
[000542a2] 6000 00f6                 bra        $0005439A
[000542a6] 202f 002c                 move.l     44(a7),d0
[000542aa] 670a                      beq.s      $000542B6
[000542ac] 206f 002c                 movea.l    44(a7),a0
[000542b0] 2028 0004                 move.l     4(a0),d0
[000542b4] 660a                      bne.s      $000542C0
[000542b6] 302f 0018                 move.w     24(a7),d0
[000542ba] 6b04                      bmi.s      $000542C0
[000542bc] 6000 00dc                 bra        $0005439A
[000542c0] 4eb9 0004 4a26            jsr        $00044A26
[000542c6] 41d7                      lea.l      (a7),a0
[000542c8] 4eb9 0005 f4e8            jsr        $0005F4E8
[000542ce] 2079 0010 1f12            movea.l    ACSblk,a0
[000542d4] 216f 001e 0258            move.l     30(a7),600(a0)
[000542da] 2079 0010 1f12            movea.l    ACSblk,a0
[000542e0] 316f 0018 0260            move.w     24(a7),608(a0)
[000542e6] 2079 0010 1f12            movea.l    ACSblk,a0
[000542ec] 216f 001a 025c            move.l     26(a7),604(a0)
[000542f2] 7002                      moveq.l    #2,d0
[000542f4] 41f9 000d 2a6a            lea.l      $000D2A6A,a0
[000542fa] 4eb9 0004 487c            jsr        $0004487C
[00054300] 206f 001a                 movea.l    26(a7),a0
[00054304] 3028 0008                 move.w     8(a0),d0
[00054308] c07c 0800                 and.w      #$0800,d0
[0005430c] 661c                      bne.s      $0005432A
[0005430e] 7201                      moveq.l    #1,d1
[00054310] 206f 001a                 movea.l    26(a7),a0
[00054314] 8268 000a                 or.w       10(a0),d1
[00054318] 302f 0018                 move.w     24(a7),d0
[0005431c] 206f 001e                 movea.l    30(a7),a0
[00054320] 226f 001e                 movea.l    30(a7),a1
[00054324] 2269 0066                 movea.l    102(a1),a1
[00054328] 4e91                      jsr        (a1)
[0005432a] 302f 0018                 move.w     24(a7),d0
[0005432e] 6a34                      bpl.s      $00054364
[00054330] 3f7c 0001 0022            move.w     #$0001,34(a7)
[00054336] 43ef 0022                 lea.l      34(a7),a1
[0005433a] 7011                      moveq.l    #17,d0
[0005433c] 206f 001e                 movea.l    30(a7),a0
[00054340] 246f 001e                 movea.l    30(a7),a2
[00054344] 246a 0004                 movea.l    4(a2),a2
[00054348] 4e92                      jsr        (a2)
[0005434a] 302f 0022                 move.w     34(a7),d0
[0005434e] 6712                      beq.s      $00054362
[00054350] 93c9                      suba.l     a1,a1
[00054352] 7010                      moveq.l    #16,d0
[00054354] 206f 001e                 movea.l    30(a7),a0
[00054358] 246f 001e                 movea.l    30(a7),a2
[0005435c] 246a 0004                 movea.l    4(a2),a2
[00054360] 4e92                      jsr        (a2)
[00054362] 600a                      bra.s      $0005436E
[00054364] 206f 002c                 movea.l    44(a7),a0
[00054368] 2068 0004                 movea.l    4(a0),a0
[0005436c] 4e90                      jsr        (a0)
[0005436e] 206f 001a                 movea.l    26(a7),a0
[00054372] 3228 000a                 move.w     10(a0),d1
[00054376] c27c fffe                 and.w      #$FFFE,d1
[0005437a] 302f 0018                 move.w     24(a7),d0
[0005437e] 206f 001e                 movea.l    30(a7),a0
[00054382] 226f 001e                 movea.l    30(a7),a1
[00054386] 2269 0066                 movea.l    102(a1),a1
[0005438a] 4e91                      jsr        (a1)
[0005438c] 4eb9 0004 4a26            jsr        $00044A26
[00054392] 41d7                      lea.l      (a7),a0
[00054394] 4eb9 0005 f532            jsr        $0005F532
[0005439a] 4fef 0024                 lea.l      36(a7),a7
[0005439e] 245f                      movea.l    (a7)+,a2
[000543a0] 4e75                      rts
dd_find_dest:
[000543a2] 4fef ffdc                 lea.l      -36(a7),a7
[000543a6] 2f48 0020                 move.l     a0,32(a7)
[000543aa] 2f49 001c                 move.l     a1,28(a7)
[000543ae] 4eb9 0004 e608            jsr        $0004E608
[000543b4] 2f48 0010                 move.l     a0,16(a7)
[000543b8] 42a7                      clr.l      -(a7)
[000543ba] 42a7                      clr.l      -(a7)
[000543bc] 42a7                      clr.l      -(a7)
[000543be] 486f 0024                 pea.l      36(a7)
[000543c2] 720a                      moveq.l    #10,d1
[000543c4] 4240                      clr.w      d0
[000543c6] 4eb9 0007 14ea            jsr        $000714EA
[000543cc] 4fef 0010                 lea.l      16(a7),a7
[000543d0] 206f 0020                 movea.l    32(a7),a0
[000543d4] 0c50 003f                 cmpi.w     #$003F,(a0)
[000543d8] 6616                      bne.s      $000543F0
[000543da] 206f 0020                 movea.l    32(a7),a0
[000543de] 3f68 0008 0016            move.w     8(a0),22(a7)
[000543e4] 206f 0020                 movea.l    32(a7),a0
[000543e8] 3f68 000a 0014            move.w     10(a0),20(a7)
[000543ee] 6018                      bra.s      $00054408
[000543f0] 2079 0010 1f12            movea.l    ACSblk,a0
[000543f6] 3f68 0262 0016            move.w     610(a0),22(a7)
[000543fc] 2079 0010 1f12            movea.l    ACSblk,a0
[00054402] 3f68 0264 0014            move.w     612(a0),20(a7)
[00054408] 206f 0020                 movea.l    32(a7),a0
[0005440c] 0c50 003f                 cmpi.w     #$003F,(a0)
[00054410] 6610                      bne.s      $00054422
[00054412] 206f 0020                 movea.l    32(a7),a0
[00054416] 3028 0006                 move.w     6(a0),d0
[0005441a] 4eb9 0004 e5ea            jsr        $0004E5EA
[00054420] 601a                      bra.s      $0005443C
[00054422] 2079 000d 99d6            movea.l    $000D99D6,a0
[00054428] 322f 0014                 move.w     20(a7),d1
[0005442c] 302f 0016                 move.w     22(a7),d0
[00054430] 4eb9 0006 d54c            jsr        $0006D54C
[00054436] 4eb9 0004 e5ea            jsr        $0004E5EA
[0005443c] 2f48 000c                 move.l     a0,12(a7)
[00054440] 202f 000c                 move.l     12(a7),d0
[00054444] 6614                      bne.s      $0005445A
[00054446] 206f 0020                 movea.l    32(a7),a0
[0005444a] 0c50 003f                 cmpi.w     #$003F,(a0)
[0005444e] 670a                      beq.s      $0005445A
[00054450] 4eb9 0004 e46a            jsr        $0004E46A
[00054456] 2f48 000c                 move.l     a0,12(a7)
[0005445a] 202f 000c                 move.l     12(a7),d0
[0005445e] 6606                      bne.s      $00054466
[00054460] 2f6f 0010 000c            move.l     16(a7),12(a7)
[00054466] 206f 000c                 movea.l    12(a7),a0
[0005446a] 3028 0056                 move.w     86(a0),d0
[0005446e] c07c 0800                 and.w      #$0800,d0
[00054472] 6706                      beq.s      $0005447A
[00054474] 4240                      clr.w      d0
[00054476] 6000 02d6                 bra        $0005474E
[0005447a] 206f 000c                 movea.l    12(a7),a0
[0005447e] 302f 0018                 move.w     24(a7),d0
[00054482] b068 0020                 cmp.w      32(a0),d0
[00054486] 671e                      beq.s      $000544A6
[00054488] 206f 000c                 movea.l    12(a7),a0
[0005448c] b1ef 0010                 cmpa.l     16(a7),a0
[00054490] 6714                      beq.s      $000544A6
[00054492] 206f 000c                 movea.l    12(a7),a0
[00054496] 226f 000c                 movea.l    12(a7),a1
[0005449a] 2269 006e                 movea.l    110(a1),a1
[0005449e] 4e91                      jsr        (a1)
[000544a0] 4eb9 0004 6d70            jsr        $00046D70
[000544a6] 206f 0030                 movea.l    48(a7),a0
[000544aa] 30bc ffff                 move.w     #$FFFF,(a0)
[000544ae] 206f 0028                 movea.l    40(a7),a0
[000544b2] 4290                      clr.l      (a0)
[000544b4] 206f 000c                 movea.l    12(a7),a0
[000544b8] 2028 0014                 move.l     20(a0),d0
[000544bc] 6700 00ca                 beq        $00054588
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
[000544e6] 4eb9 0004 5468            jsr        $00045468
[000544ec] 544f                      addq.w     #2,a7
[000544ee] 206f 0030                 movea.l    48(a7),a0
[000544f2] 3080                      move.w     d0,(a0)
[000544f4] 206f 0030                 movea.l    48(a7),a0
[000544f8] 3010                      move.w     (a0),d0
[000544fa] 6b00 008c                 bmi        $00054588
[000544fe] 206f 0030                 movea.l    48(a7),a0
[00054502] 3f50 001a                 move.w     (a0),26(a7)
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
[0005452c] 663e                      bne.s      $0005456C
[0005452e] 206f 0008                 movea.l    8(a7),a0
[00054532] 3028 0020                 move.w     32(a0),d0
[00054536] c07c 8000                 and.w      #$8000,d0
[0005453a] 6730                      beq.s      $0005456C
[0005453c] 206f 0008                 movea.l    8(a7),a0
[00054540] 41e8 0018                 lea.l      24(a0),a0
[00054544] 226f 0028                 movea.l    40(a7),a1
[00054548] 2288                      move.l     a0,(a1)
[0005454a] 206f 0028                 movea.l    40(a7),a0
[0005454e] 2050                      movea.l    (a0),a0
[00054550] 2028 0004                 move.l     4(a0),d0
[00054554] 6716                      beq.s      $0005456C
[00054556] 206f 0030                 movea.l    48(a7),a0
[0005455a] 30af 001a                 move.w     26(a7),(a0)
[0005455e] 206f 000c                 movea.l    12(a7),a0
[00054562] 226f 002c                 movea.l    44(a7),a1
[00054566] 22a8 0014                 move.l     20(a0),(a1)
[0005456a] 601c                      bra.s      $00054588
[0005456c] 302f 001a                 move.w     26(a7),d0
[00054570] 206f 000c                 movea.l    12(a7),a0
[00054574] 2068 0014                 movea.l    20(a0),a0
[00054578] 4eb9 0004 af6c            jsr        $0004AF6C
[0005457e] 3f40 001a                 move.w     d0,26(a7)
[00054582] 5240                      addq.w     #1,d0
[00054584] 6600 ff80                 bne.w      $00054506
[00054588] 206f 0030                 movea.l    48(a7),a0
[0005458c] 3010                      move.w     (a0),d0
[0005458e] 6a00 00de                 bpl        $0005466E
[00054592] 206f 000c                 movea.l    12(a7),a0
[00054596] 2028 0018                 move.l     24(a0),d0
[0005459a] 6700 00d2                 beq        $0005466E
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
[000545c4] 4eb9 0004 5468            jsr        $00045468
[000545ca] 544f                      addq.w     #2,a7
[000545cc] 206f 0030                 movea.l    48(a7),a0
[000545d0] 3080                      move.w     d0,(a0)
[000545d2] 206f 0030                 movea.l    48(a7),a0
[000545d6] 3010                      move.w     (a0),d0
[000545d8] 6b00 0094                 bmi        $0005466E
[000545dc] 206f 0030                 movea.l    48(a7),a0
[000545e0] 3f50 001a                 move.w     (a0),26(a7)
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
[0005460a] 663e                      bne.s      $0005464A
[0005460c] 206f 0008                 movea.l    8(a7),a0
[00054610] 3028 0020                 move.w     32(a0),d0
[00054614] c07c 8000                 and.w      #$8000,d0
[00054618] 6730                      beq.s      $0005464A
[0005461a] 206f 0008                 movea.l    8(a7),a0
[0005461e] 41e8 0018                 lea.l      24(a0),a0
[00054622] 226f 0028                 movea.l    40(a7),a1
[00054626] 2288                      move.l     a0,(a1)
[00054628] 206f 0028                 movea.l    40(a7),a0
[0005462c] 2050                      movea.l    (a0),a0
[0005462e] 2028 0004                 move.l     4(a0),d0
[00054632] 6716                      beq.s      $0005464A
[00054634] 206f 0030                 movea.l    48(a7),a0
[00054638] 30af 001a                 move.w     26(a7),(a0)
[0005463c] 206f 000c                 movea.l    12(a7),a0
[00054640] 226f 002c                 movea.l    44(a7),a1
[00054644] 22a8 0018                 move.l     24(a0),(a1)
[00054648] 601c                      bra.s      $00054666
[0005464a] 302f 001a                 move.w     26(a7),d0
[0005464e] 206f 000c                 movea.l    12(a7),a0
[00054652] 2068 0018                 movea.l    24(a0),a0
[00054656] 4eb9 0004 af6c            jsr        $0004AF6C
[0005465c] 3f40 001a                 move.w     d0,26(a7)
[00054660] 5240                      addq.w     #1,d0
[00054662] 6600 ff80                 bne.w      $000545E4
[00054666] 206f 0030                 movea.l    48(a7),a0
[0005466a] 0050 1000                 ori.w      #$1000,(a0)
[0005466e] 206f 0030                 movea.l    48(a7),a0
[00054672] 3010                      move.w     (a0),d0
[00054674] c07c 0fff                 and.w      #$0FFF,d0
[00054678] 670c                      beq.s      $00054686
[0005467a] 206f 0034                 movea.l    52(a7),a0
[0005467e] 30bc ffff                 move.w     #$FFFF,(a0)
[00054682] 6000 00ac                 bra        $00054730
[00054686] 70ff                      moveq.l    #-1,d0
[00054688] 3f40 001a                 move.w     d0,26(a7)
[0005468c] 206f 0034                 movea.l    52(a7),a0
[00054690] 3080                      move.w     d0,(a0)
[00054692] 6044                      bra.s      $000546D8
[00054694] 206f 0034                 movea.l    52(a7),a0
[00054698] 3f50 001a                 move.w     (a0),26(a7)
[0005469c] 206f 0034                 movea.l    52(a7),a0
[000546a0] 3010                      move.w     (a0),d0
[000546a2] 206f 000c                 movea.l    12(a7),a0
[000546a6] 2268 0014                 movea.l    20(a0),a1
[000546aa] 41d7                      lea.l      (a7),a0
[000546ac] 4eb9 0004 a3be            jsr        $0004A3BE
[000546b2] 322f 0014                 move.w     20(a7),d1
[000546b6] 206f 000c                 movea.l    12(a7),a0
[000546ba] 9268 0036                 sub.w      54(a0),d1
[000546be] 302f 0016                 move.w     22(a7),d0
[000546c2] 206f 000c                 movea.l    12(a7),a0
[000546c6] 9068 0034                 sub.w      52(a0),d0
[000546ca] 41d7                      lea.l      (a7),a0
[000546cc] 4eb9 0005 ef64            jsr        $0005EF64
[000546d2] 4a40                      tst.w      d0
[000546d4] 6702                      beq.s      $000546D8
[000546d6] 601e                      bra.s      $000546F6
[000546d8] 7208                      moveq.l    #8,d1
[000546da] 206f 0034                 movea.l    52(a7),a0
[000546de] 3010                      move.w     (a0),d0
[000546e0] 206f 000c                 movea.l    12(a7),a0
[000546e4] 2068 0014                 movea.l    20(a0),a0
[000546e8] 4eb9 0004 aeca            jsr        $0004AECA
[000546ee] 206f 0034                 movea.l    52(a7),a0
[000546f2] 3080                      move.w     d0,(a0)
[000546f4] 6a9e                      bpl.s      $00054694
[000546f6] 206f 0034                 movea.l    52(a7),a0
[000546fa] 3010                      move.w     (a0),d0
[000546fc] 6b32                      bmi.s      $00054730
[000546fe] 206f 000c                 movea.l    12(a7),a0
[00054702] 3028 001c                 move.w     28(a0),d0
[00054706] 206f 0034                 movea.l    52(a7),a0
[0005470a] b050                      cmp.w      (a0),d0
[0005470c] 6722                      beq.s      $00054730
[0005470e] 4eb9 0004 b286            jsr        $0004B286
[00054714] 206f 0034                 movea.l    52(a7),a0
[00054718] 226f 000c                 movea.l    12(a7),a1
[0005471c] 3350 001c                 move.w     (a0),28(a1)
[00054720] 206f 000c                 movea.l    12(a7),a0
[00054724] 317c ffff 001e            move.w     #$FFFF,30(a0)
[0005472a] 4eb9 0004 b33c            jsr        $0004B33C
[00054730] 206f 001c                 movea.l    28(a7),a0
[00054734] 20af 000c                 move.l     12(a7),(a0)
[00054738] 206f 0030                 movea.l    48(a7),a0
[0005473c] 3010                      move.w     (a0),d0
[0005473e] c07c 0fff                 and.w      #$0FFF,d0
[00054742] 6a06                      bpl.s      $0005474A
[00054744] 4240                      clr.w      d0
[00054746] 6006                      bra.s      $0005474E
[00054748] 6004                      bra.s      $0005474E
[0005474a] 7001                      moveq.l    #1,d0
[0005474c] 4e71                      nop
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
[0005476c] 4eb9 0004 dedc            jsr        $0004DEDC
[00054772] 4a40                      tst.w      d0
[00054774] 664a                      bne.s      $000547C0
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
[000547a6] 6100 fae2                 bsr        $0005428A
[000547aa] 584f                      addq.w     #4,a7
[000547ac] 206f 0004                 movea.l    4(a7),a0
[000547b0] 4268 0016                 clr.w      22(a0)
[000547b4] 206f 0004                 movea.l    4(a7),a0
[000547b8] 42a8 000c                 clr.l      12(a0)
[000547bc] 7001                      moveq.l    #1,d0
[000547be] 6002                      bra.s      $000547C2
[000547c0] 4240                      clr.w      d0
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
[000547f0] 6700 0136                 beq        $00054928
[000547f4] 206f 043e                 movea.l    1086(a7),a0
[000547f8] 2028 0004                 move.l     4(a0),d0
[000547fc] 6700 012a                 beq        $00054928
[00054800] 302f 000a                 move.w     10(a7),d0
[00054804] 6b00 0122                 bmi        $00054928
[00054808] 7004                      moveq.l    #4,d0
[0005480a] 43f9 000d 4878            lea.l      $000D4878,a1
[00054810] 206f 000c                 movea.l    12(a7),a0
[00054814] 4eb9 0007 69fc            jsr        $000769FC
[0005481a] 4a40                      tst.w      d0
[0005481c] 6600 007c                 bne.w      $0005489A
[00054820] 206f 0010                 movea.l    16(a7),a0
[00054824] 4eb9 0004 7b12            jsr        $00047B12
[0005482a] 2f48 0414                 move.l     a0,1044(a7)
[0005482e] 202f 0414                 move.l     1044(a7),d0
[00054832] 6762                      beq.s      $00054896
[00054834] 206f 0414                 movea.l    1044(a7),a0
[00054838] 226f 0414                 movea.l    1044(a7),a1
[0005483c] 2269 0024                 movea.l    36(a1),a1
[00054840] 4e91                      jsr        (a1)
[00054842] 2e88                      move.l     a0,(a7)
[00054844] 604c                      bra.s      $00054892
[00054846] 2257                      movea.l    (a7),a1
[00054848] 41ef 0014                 lea.l      20(a7),a0
[0005484c] 4eb9 0004 7a1e            jsr        $00047A1E
[00054852] 206f 0004                 movea.l    4(a7),a0
[00054856] 317c 0014 0016            move.w     #$0014,22(a0)
[0005485c] 41ef 0014                 lea.l      20(a7),a0
[00054860] 226f 0004                 movea.l    4(a7),a1
[00054864] 2348 000c                 move.l     a0,12(a1)
[00054868] 2f2f 043e                 move.l     1086(a7),-(a7)
[0005486c] 302f 000e                 move.w     14(a7),d0
[00054870] 226f 0446                 movea.l    1094(a7),a1
[00054874] 206f 043e                 movea.l    1086(a7),a0
[00054878] 6100 fa10                 bsr        $0005428A
[0005487c] 584f                      addq.w     #4,a7
[0005487e] 7201                      moveq.l    #1,d1
[00054880] 7001                      moveq.l    #1,d0
[00054882] 206f 0414                 movea.l    1044(a7),a0
[00054886] 226f 0414                 movea.l    1044(a7),a1
[0005488a] 2269 0034                 movea.l    52(a1),a1
[0005488e] 4e91                      jsr        (a1)
[00054890] 2e88                      move.l     a0,(a7)
[00054892] 2017                      move.l     (a7),d0
[00054894] 66b0                      bne.s      $00054846
[00054896] 6000 007c                 bra.w      $00054914
[0005489a] 43f9 000d 487d            lea.l      $000D487D,a1
[000548a0] 206f 0010                 movea.l    16(a7),a0
[000548a4] 4eb9 0007 6a34            jsr        $00076A34
[000548aa] 2008                      move.l     a0,d0
[000548ac] 670c                      beq.s      $000548BA
[000548ae] 206f 0004                 movea.l    4(a7),a0
[000548b2] 317c 001f 0016            move.w     #$001F,22(a0)
[000548b8] 603a                      bra.s      $000548F4
[000548ba] 43f9 000d 4880            lea.l      $000D4880,a1
[000548c0] 206f 000c                 movea.l    12(a7),a0
[000548c4] 4eb9 0007 6950            jsr        $00076950
[000548ca] 2008                      move.l     a0,d0
[000548cc] 6610                      bne.s      $000548DE
[000548ce] 206f 0010                 movea.l    16(a7),a0
[000548d2] 4eb9 0004 73bc            jsr        $000473BC
[000548d8] 72ff                      moveq.l    #-1,d1
[000548da] b280                      cmp.l      d0,d1
[000548dc] 6f0c                      ble.s      $000548EA
[000548de] 206f 0004                 movea.l    4(a7),a0
[000548e2] 317c 000b 0016            move.w     #$000B,22(a0)
[000548e8] 600a                      bra.s      $000548F4
[000548ea] 206f 0004                 movea.l    4(a7),a0
[000548ee] 317c 0014 0016            move.w     #$0014,22(a0)
[000548f4] 206f 0004                 movea.l    4(a7),a0
[000548f8] 216f 0010 000c            move.l     16(a7),12(a0)
[000548fe] 2f2f 043e                 move.l     1086(a7),-(a7)
[00054902] 302f 000e                 move.w     14(a7),d0
[00054906] 226f 0446                 movea.l    1094(a7),a1
[0005490a] 206f 043e                 movea.l    1086(a7),a0
[0005490e] 6100 f97a                 bsr        $0005428A
[00054912] 584f                      addq.w     #4,a7
[00054914] 206f 0004                 movea.l    4(a7),a0
[00054918] 4268 0016                 clr.w      22(a0)
[0005491c] 206f 0004                 movea.l    4(a7),a0
[00054920] 42a8 000c                 clr.l      12(a0)
[00054924] 6000 01f6                 bra        $00054B1C
[00054928] 7004                      moveq.l    #4,d0
[0005492a] 43f9 000d 4888            lea.l      $000D4888,a1
[00054930] 206f 000c                 movea.l    12(a7),a0
[00054934] 4eb9 0007 69fc            jsr        $000769FC
[0005493a] 4a40                      tst.w      d0
[0005493c] 6600 00ea                 bne        $00054A28
[00054940] 3f7c 0001 0430            move.w     #$0001,1072(a7)
[00054946] 206f 0010                 movea.l    16(a7),a0
[0005494a] 4eb9 0004 7b12            jsr        $00047B12
[00054950] 2f48 0414                 move.l     a0,1044(a7)
[00054954] 202f 0414                 move.l     1044(a7),d0
[00054958] 6700 00ca                 beq        $00054A24
[0005495c] 206f 0414                 movea.l    1044(a7),a0
[00054960] 226f 0414                 movea.l    1044(a7),a1
[00054964] 2269 0024                 movea.l    36(a1),a1
[00054968] 4e91                      jsr        (a1)
[0005496a] 2e88                      move.l     a0,(a7)
[0005496c] 6000 00b0                 bra        $00054A1E
[00054970] 2257                      movea.l    (a7),a1
[00054972] 41ef 0014                 lea.l      20(a7),a0
[00054976] 4eb9 0004 7a1e            jsr        $00047A1E
[0005497c] 206f 0004                 movea.l    4(a7),a0
[00054980] 317c 0014 0016            move.w     #$0014,22(a0)
[00054986] 41ef 0014                 lea.l      20(a7),a0
[0005498a] 226f 0004                 movea.l    4(a7),a1
[0005498e] 2348 000c                 move.l     a0,12(a1)
[00054992] 4eb9 0004 4a26            jsr        $00044A26
[00054998] 41ef 0418                 lea.l      1048(a7),a0
[0005499c] 4eb9 0005 f4e8            jsr        $0005F4E8
[000549a2] 2079 0010 1f12            movea.l    ACSblk,a0
[000549a8] 216f 043a 0258            move.l     1082(a7),600(a0)
[000549ae] 2079 0010 1f12            movea.l    ACSblk,a0
[000549b4] 316f 000a 0260            move.w     10(a7),608(a0)
[000549ba] 2079 0010 1f12            movea.l    ACSblk,a0
[000549c0] 216f 0442 025c            move.l     1090(a7),604(a0)
[000549c6] 7002                      moveq.l    #2,d0
[000549c8] 41f9 000d 2a6a            lea.l      $000D2A6A,a0
[000549ce] 4eb9 0004 487c            jsr        $0004487C
[000549d4] 43ef 0430                 lea.l      1072(a7),a1
[000549d8] 7011                      moveq.l    #17,d0
[000549da] 206f 043a                 movea.l    1082(a7),a0
[000549de] 246f 043a                 movea.l    1082(a7),a2
[000549e2] 246a 0004                 movea.l    4(a2),a2
[000549e6] 4e92                      jsr        (a2)
[000549e8] 302f 0430                 move.w     1072(a7),d0
[000549ec] 6712                      beq.s      $00054A00
[000549ee] 93c9                      suba.l     a1,a1
[000549f0] 7010                      moveq.l    #16,d0
[000549f2] 206f 043a                 movea.l    1082(a7),a0
[000549f6] 246f 043a                 movea.l    1082(a7),a2
[000549fa] 246a 0004                 movea.l    4(a2),a2
[000549fe] 4e92                      jsr        (a2)
[00054a00] 41ef 0418                 lea.l      1048(a7),a0
[00054a04] 4eb9 0005 f532            jsr        $0005F532
[00054a0a] 7201                      moveq.l    #1,d1
[00054a0c] 7001                      moveq.l    #1,d0
[00054a0e] 206f 0414                 movea.l    1044(a7),a0
[00054a12] 226f 0414                 movea.l    1044(a7),a1
[00054a16] 2269 0034                 movea.l    52(a1),a1
[00054a1a] 4e91                      jsr        (a1)
[00054a1c] 2e88                      move.l     a0,(a7)
[00054a1e] 2017                      move.l     (a7),d0
[00054a20] 6600 ff4e                 bne        $00054970
[00054a24] 6000 00f6                 bra        $00054B1C
[00054a28] 7004                      moveq.l    #4,d0
[00054a2a] 43f9 000d 488d            lea.l      $000D488D,a1
[00054a30] 206f 000c                 movea.l    12(a7),a0
[00054a34] 4eb9 0007 69fc            jsr        $000769FC
[00054a3a] 4a40                      tst.w      d0
[00054a3c] 6600 00de                 bne        $00054B1C
[00054a40] 302f 0008                 move.w     8(a7),d0
[00054a44] 6b4e                      bmi.s      $00054A94
[00054a46] 6040                      bra.s      $00054A88
[00054a48] 206f 0010                 movea.l    16(a7),a0
[00054a4c] 0c10 001f                 cmpi.b     #$1F,(a0)
[00054a50] 6f32                      ble.s      $00054A84
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
[00054a84] 52af 0010                 addq.l     #1,16(a7)
[00054a88] 206f 0010                 movea.l    16(a7),a0
[00054a8c] 1010                      move.b     (a0),d0
[00054a8e] 66b8                      bne.s      $00054A48
[00054a90] 6000 008a                 bra        $00054B1C
[00054a94] 6000 007c                 bra.w      $00054B12
[00054a98] 206f 0010                 movea.l    16(a7),a0
[00054a9c] 1010                      move.b     (a0),d0
[00054a9e] 4880                      ext.w      d0
[00054aa0] 907c 0009                 sub.w      #$0009,d0
[00054aa4] 6718                      beq.s      $00054ABE
[00054aa6] 5340                      subq.w     #1,d0
[00054aa8] 6722                      beq.s      $00054ACC
[00054aaa] 5740                      subq.w     #3,d0
[00054aac] 6702                      beq.s      $00054AB0
[00054aae] 602a                      bra.s      $00054ADA
[00054ab0] 2079 0010 1f12            movea.l    ACSblk,a0
[00054ab6] 317c 8000 02ce            move.w     #$8000,718(a0)
[00054abc] 602e                      bra.s      $00054AEC
[00054abe] 2079 0010 1f12            movea.l    ACSblk,a0
[00054ac4] 317c 8009 02ce            move.w     #$8009,718(a0)
[00054aca] 6020                      bra.s      $00054AEC
[00054acc] 2079 0010 1f12            movea.l    ACSblk,a0
[00054ad2] 317c 800d 02ce            move.w     #$800D,718(a0)
[00054ad8] 6012                      bra.s      $00054AEC
[00054ada] 206f 0010                 movea.l    16(a7),a0
[00054ade] 1010                      move.b     (a0),d0
[00054ae0] 4880                      ext.w      d0
[00054ae2] 2079 0010 1f12            movea.l    ACSblk,a0
[00054ae8] 3140 02ce                 move.w     d0,718(a0)
[00054aec] 2079 0010 1f12            movea.l    ACSblk,a0
[00054af2] 3228 02ce                 move.w     718(a0),d1
[00054af6] 2079 0010 1f12            movea.l    ACSblk,a0
[00054afc] 3028 0266                 move.w     614(a0),d0
[00054b00] 206f 043a                 movea.l    1082(a7),a0
[00054b04] 226f 043a                 movea.l    1082(a7),a1
[00054b08] 2269 0062                 movea.l    98(a1),a1
[00054b0c] 4e91                      jsr        (a1)
[00054b0e] 52af 0010                 addq.l     #1,16(a7)
[00054b12] 206f 0010                 movea.l    16(a7),a0
[00054b16] 1010                      move.b     (a0),d0
[00054b18] 6600 ff7e                 bne        $00054A98
[00054b1c] 7001                      moveq.l    #1,d0
[00054b1e] 4fef 0432                 lea.l      1074(a7),a7
[00054b22] 245f                      movea.l    (a7)+,a2
[00054b24] 4e75                      rts
