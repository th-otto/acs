edar_3d:
[00026a5e] 2079 0010 1f12            movea.l    ACSblk,a0
[00026a64] 2268 025c                 movea.l    604(a0),a1
[00026a68] 2069 003c                 movea.l    60(a1),a0
[00026a6c] 0aa8 8000 0000 0004       eori.l     #$80000000,4(a0)
[00026a74] 72ff                      moveq.l    #-1,d1
[00026a76] 7001                      moveq.l    #1,d0
[00026a78] 2079 0010 1f12            movea.l    ACSblk,a0
[00026a7e] 2068 0258                 movea.l    600(a0),a0
[00026a82] 2279 0010 1f12            movea.l    ACSblk,a1
[00026a88] 2269 0258                 movea.l    600(a1),a1
[00026a8c] 2269 0066                 movea.l    102(a1),a1
[00026a90] 4e91                      jsr        (a1)
[00026a92] 4e75                      rts
edar_arr:
[00026a94] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00026a98] 514f                      subq.w     #8,a7
[00026a9a] 41f9 000b 3704            lea.l      $000B3704,a0
[00026aa0] 4eb9 0004 9a5c            jsr        $00049A5C
[00026aa6] 2448                      movea.l    a0,a2
[00026aa8] 200a                      move.l     a2,d0
[00026aaa] 6700 0106                 beq        $00026BB2
[00026aae] 47f9 0010 1f12            lea.l      ACSblk,a3
[00026ab4] 7009                      moveq.l    #9,d0
[00026ab6] 2053                      movea.l    (a3),a0
[00026ab8] 2268 0258                 movea.l    600(a0),a1
[00026abc] 2269 0014                 movea.l    20(a1),a1
[00026ac0] 41d7                      lea.l      (a7),a0
[00026ac2] 4eb9 0004 a3be            jsr        $0004A3BE
[00026ac8] 7001                      moveq.l    #1,d0
[00026aca] 2053                      movea.l    (a3),a0
[00026acc] 2268 0258                 movea.l    600(a0),a1
[00026ad0] d069 0034                 add.w      52(a1),d0
[00026ad4] d157                      add.w      d0,(a7)
[00026ad6] 7201                      moveq.l    #1,d1
[00026ad8] d269 0036                 add.w      54(a1),d1
[00026adc] d36f 0002                 add.w      d1,2(a7)
[00026ae0] 2049                      movea.l    a1,a0
[00026ae2] 224a                      movea.l    a2,a1
[00026ae4] 3017                      move.w     (a7),d0
[00026ae6] 322f 0002                 move.w     2(a7),d1
[00026aea] 4eb9 0004 948a            jsr        $0004948A
[00026af0] 3600                      move.w     d0,d3
[00026af2] 4a40                      tst.w      d0
[00026af4] 6f00 00b4                 ble        $00026BAA
[00026af8] 2053                      movea.l    (a3),a0
[00026afa] 2268 025c                 movea.l    604(a0),a1
[00026afe] 2869 003c                 movea.l    60(a1),a4
[00026b02] 584c                      addq.w     #4,a4
[00026b04] 48c0                      ext.l      d0
[00026b06] 2200                      move.l     d0,d1
[00026b08] d281                      add.l      d1,d1
[00026b0a] d280                      add.l      d0,d1
[00026b0c] e789                      lsl.l      #3,d1
[00026b0e] 2072 180c                 movea.l    12(a2,d1.l),a0
[00026b12] 5848                      addq.w     #4,a0
[00026b14] 3403                      move.w     d3,d2
[00026b16] b47c 0008                 cmp.w      #$0008,d2
[00026b1a] 6262                      bhi.s      $00026B7E
[00026b1c] d442                      add.w      d2,d2
[00026b1e] 343b 2006                 move.w     $00026B26(pc,d2.w),d2
[00026b22] 4efb 2002                 jmp        $00026B26(pc,d2.w)
J10:
[00026b26] 0058                      dc.w $0058   ; $00026b7e-$00026b26
[00026b28] 0012                      dc.w $0012   ; $00026b38-$00026b26
[00026b2a] 0036                      dc.w $0036   ; $00026b5c-$00026b26
[00026b2c] 0012                      dc.w $0012   ; $00026b38-$00026b26
[00026b2e] 0036                      dc.w $0036   ; $00026b5c-$00026b26
[00026b30] 0012                      dc.w $0012   ; $00026b38-$00026b26
[00026b32] 0036                      dc.w $0036   ; $00026b5c-$00026b26
[00026b34] 0012                      dc.w $0012   ; $00026b38-$00026b26
[00026b36] 0036                      dc.w $0036   ; $00026b5c-$00026b26
[00026b38] 2014                      move.l     (a4),d0
[00026b3a] c0bc fcff ffff            and.l      #$FCFFFFFF,d0
[00026b40] 2210                      move.l     (a0),d1
[00026b42] c2bc 0300 0000            and.l      #$03000000,d1
[00026b48] 8081                      or.l       d1,d0
[00026b4a] 2880                      move.l     d0,(a4)
[00026b4c] 2253                      movea.l    (a3),a1
[00026b4e] 2269 025c                 movea.l    604(a1),a1
[00026b52] 2269 0114                 movea.l    276(a1),a1
[00026b56] 2350 0004                 move.l     (a0),4(a1)
[00026b5a] 6022                      bra.s      $00026B7E
[00026b5c] 2014                      move.l     (a4),d0
[00026b5e] c0bc cfff ffff            and.l      #$CFFFFFFF,d0
[00026b64] 2210                      move.l     (a0),d1
[00026b66] c2bc 3000 0000            and.l      #$30000000,d1
[00026b6c] 8081                      or.l       d1,d0
[00026b6e] 2880                      move.l     d0,(a4)
[00026b70] 2253                      movea.l    (a3),a1
[00026b72] 2869 025c                 movea.l    604(a1),a4
[00026b76] 226c 012c                 movea.l    300(a4),a1
[00026b7a] 2350 0004                 move.l     (a0),4(a1)
[00026b7e] 72ff                      moveq.l    #-1,d1
[00026b80] 7009                      moveq.l    #9,d0
[00026b82] 2053                      movea.l    (a3),a0
[00026b84] 2068 0258                 movea.l    600(a0),a0
[00026b88] 2253                      movea.l    (a3),a1
[00026b8a] 2869 0258                 movea.l    600(a1),a4
[00026b8e] 226c 0066                 movea.l    102(a4),a1
[00026b92] 4e91                      jsr        (a1)
[00026b94] 72ff                      moveq.l    #-1,d1
[00026b96] 7001                      moveq.l    #1,d0
[00026b98] 2053                      movea.l    (a3),a0
[00026b9a] 2068 0258                 movea.l    600(a0),a0
[00026b9e] 2253                      movea.l    (a3),a1
[00026ba0] 2869 0258                 movea.l    600(a1),a4
[00026ba4] 226c 0066                 movea.l    102(a4),a1
[00026ba8] 4e91                      jsr        (a1)
[00026baa] 204a                      movea.l    a2,a0
[00026bac] 4eb9 0004 9b7c            jsr        $00049B7C
[00026bb2] 504f                      addq.w     #8,a7
[00026bb4] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00026bb8] 4e75                      rts
edar_col:
[00026bba] 3f03                      move.w     d3,-(a7)
[00026bbc] 2f0a                      move.l     a2,-(a7)
[00026bbe] 2079 0010 1f12            movea.l    ACSblk,a0
[00026bc4] 2268 025c                 movea.l    604(a0),a1
[00026bc8] 2469 003c                 movea.l    60(a1),a2
[00026bcc] 584a                      addq.w     #4,a2
[00026bce] 7011                      moveq.l    #17,d0
[00026bd0] 3f00                      move.w     d0,-(a7)
[00026bd2] 7412                      moveq.l    #18,d2
[00026bd4] 720f                      moveq.l    #15,d1
[00026bd6] 700f                      moveq.l    #15,d0
[00026bd8] c06a 0002                 and.w      2(a2),d0
[00026bdc] 4eb9 0002 f280            jsr        $0002F280
[00026be2] 544f                      addq.w     #2,a7
[00026be4] 3600                      move.w     d0,d3
[00026be6] 6b28                      bmi.s      $00026C10
[00026be8] 72f0                      moveq.l    #-16,d1
[00026bea] c292                      and.l      (a2),d1
[00026bec] 48c0                      ext.l      d0
[00026bee] 8280                      or.l       d0,d1
[00026bf0] 2481                      move.l     d1,(a2)
[00026bf2] 2079 0010 1f12            movea.l    ACSblk,a0
[00026bf8] 2068 0258                 movea.l    600(a0),a0
[00026bfc] 2279 0010 1f12            movea.l    ACSblk,a1
[00026c02] 2469 0258                 movea.l    600(a1),a2
[00026c06] 226a 0066                 movea.l    102(a2),a1
[00026c0a] 7001                      moveq.l    #1,d0
[00026c0c] 72ff                      moveq.l    #-1,d1
[00026c0e] 4e91                      jsr        (a1)
[00026c10] 245f                      movea.l    (a7)+,a2
[00026c12] 361f                      move.w     (a7)+,d3
[00026c14] 4e75                      rts
edar_ends:
[00026c16] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00026c1a] 514f                      subq.w     #8,a7
[00026c1c] 41f9 000b 37dc            lea.l      $000B37DC,a0
[00026c22] 4eb9 0004 9a5c            jsr        $00049A5C
[00026c28] 2448                      movea.l    a0,a2
[00026c2a] 200a                      move.l     a2,d0
[00026c2c] 6700 012e                 beq        $00026D5C
[00026c30] 47f9 0010 1f12            lea.l      ACSblk,a3
[00026c36] 7020                      moveq.l    #32,d0
[00026c38] 2053                      movea.l    (a3),a0
[00026c3a] 2268 0258                 movea.l    600(a0),a1
[00026c3e] 2269 0014                 movea.l    20(a1),a1
[00026c42] 41d7                      lea.l      (a7),a0
[00026c44] 4eb9 0004 a3be            jsr        $0004A3BE
[00026c4a] 7001                      moveq.l    #1,d0
[00026c4c] 2053                      movea.l    (a3),a0
[00026c4e] 2268 0258                 movea.l    600(a0),a1
[00026c52] d069 0034                 add.w      52(a1),d0
[00026c56] d157                      add.w      d0,(a7)
[00026c58] 7201                      moveq.l    #1,d1
[00026c5a] d269 0036                 add.w      54(a1),d1
[00026c5e] d36f 0002                 add.w      d1,2(a7)
[00026c62] 2049                      movea.l    a1,a0
[00026c64] 224a                      movea.l    a2,a1
[00026c66] 3017                      move.w     (a7),d0
[00026c68] 322f 0002                 move.w     2(a7),d1
[00026c6c] 4eb9 0004 948a            jsr        $0004948A
[00026c72] 3600                      move.w     d0,d3
[00026c74] 4a40                      tst.w      d0
[00026c76] 6f00 00dc                 ble        $00026D54
[00026c7a] 2053                      movea.l    (a3),a0
[00026c7c] 2268 025c                 movea.l    604(a0),a1
[00026c80] 2069 003c                 movea.l    60(a1),a0
[00026c84] 5848                      addq.w     #4,a0
[00026c86] 5340                      subq.w     #1,d0
[00026c88] 670e                      beq.s      $00026C98
[00026c8a] 5340                      subq.w     #1,d0
[00026c8c] 6716                      beq.s      $00026CA4
[00026c8e] 5340                      subq.w     #1,d0
[00026c90] 671e                      beq.s      $00026CB0
[00026c92] 5340                      subq.w     #1,d0
[00026c94] 672c                      beq.s      $00026CC2
[00026c96] 603a                      bra.s      $00026CD2
[00026c98] 2010                      move.l     (a0),d0
[00026c9a] c0bc ffcf ffff            and.l      #$FFCFFFFF,d0
[00026ca0] 2080                      move.l     d0,(a0)
[00026ca2] 602e                      bra.s      $00026CD2
[00026ca4] 2010                      move.l     (a0),d0
[00026ca6] c0bc ff3f ffff            and.l      #$FF3FFFFF,d0
[00026cac] 2080                      move.l     d0,(a0)
[00026cae] 6022                      bra.s      $00026CD2
[00026cb0] 2010                      move.l     (a0),d0
[00026cb2] c0bc ffcf ffff            and.l      #$FFCFFFFF,d0
[00026cb8] 80bc 0010 0000            or.l       #$00100000,d0
[00026cbe] 2080                      move.l     d0,(a0)
[00026cc0] 6010                      bra.s      $00026CD2
[00026cc2] 2010                      move.l     (a0),d0
[00026cc4] c0bc ff3f ffff            and.l      #$FF3FFFFF,d0
[00026cca] 80bc 0040 0000            or.l       #$00400000,d0
[00026cd0] 2080                      move.l     d0,(a0)
[00026cd2] 3003                      move.w     d3,d0
[00026cd4] 5340                      subq.w     #1,d0
[00026cd6] 670e                      beq.s      $00026CE6
[00026cd8] 5340                      subq.w     #1,d0
[00026cda] 672c                      beq.s      $00026D08
[00026cdc] 5340                      subq.w     #1,d0
[00026cde] 6706                      beq.s      $00026CE6
[00026ce0] 5340                      subq.w     #1,d0
[00026ce2] 6724                      beq.s      $00026D08
[00026ce4] 6042                      bra.s      $00026D28
[00026ce6] 3203                      move.w     d3,d1
[00026ce8] 48c1                      ext.l      d1
[00026cea] 2001                      move.l     d1,d0
[00026cec] d080                      add.l      d0,d0
[00026cee] d081                      add.l      d1,d0
[00026cf0] e788                      lsl.l      #3,d0
[00026cf2] 2072 080c                 movea.l    12(a2,d0.l),a0
[00026cf6] 2253                      movea.l    (a3),a1
[00026cf8] 2269 025c                 movea.l    604(a1),a1
[00026cfc] 2269 033c                 movea.l    828(a1),a1
[00026d00] 2368 0004 0004            move.l     4(a0),4(a1)
[00026d06] 6020                      bra.s      $00026D28
[00026d08] 3203                      move.w     d3,d1
[00026d0a] 48c1                      ext.l      d1
[00026d0c] 2001                      move.l     d1,d0
[00026d0e] d080                      add.l      d0,d0
[00026d10] d081                      add.l      d1,d0
[00026d12] e788                      lsl.l      #3,d0
[00026d14] 2072 080c                 movea.l    12(a2,d0.l),a0
[00026d18] 2253                      movea.l    (a3),a1
[00026d1a] 2269 025c                 movea.l    604(a1),a1
[00026d1e] 2269 0354                 movea.l    852(a1),a1
[00026d22] 2368 0004 0004            move.l     4(a0),4(a1)
[00026d28] 72ff                      moveq.l    #-1,d1
[00026d2a] 7020                      moveq.l    #32,d0
[00026d2c] 2053                      movea.l    (a3),a0
[00026d2e] 2068 0258                 movea.l    600(a0),a0
[00026d32] 2253                      movea.l    (a3),a1
[00026d34] 2269 0258                 movea.l    600(a1),a1
[00026d38] 2269 0066                 movea.l    102(a1),a1
[00026d3c] 4e91                      jsr        (a1)
[00026d3e] 72ff                      moveq.l    #-1,d1
[00026d40] 7001                      moveq.l    #1,d0
[00026d42] 2053                      movea.l    (a3),a0
[00026d44] 2068 0258                 movea.l    600(a0),a0
[00026d48] 2253                      movea.l    (a3),a1
[00026d4a] 2269 0258                 movea.l    600(a1),a1
[00026d4e] 2269 0066                 movea.l    102(a1),a1
[00026d52] 4e91                      jsr        (a1)
[00026d54] 204a                      movea.l    a2,a0
[00026d56] 4eb9 0004 9b7c            jsr        $00049B7C
[00026d5c] 504f                      addq.w     #8,a7
[00026d5e] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00026d62] 4e75                      rts
edar_fat:
[00026d64] 2079 0010 1f12            movea.l    ACSblk,a0
[00026d6a] 2268 025c                 movea.l    604(a0),a1
[00026d6e] 2069 003c                 movea.l    60(a1),a0
[00026d72] 0aa8 0008 0000 0004       eori.l     #$00080000,4(a0)
[00026d7a] 72ff                      moveq.l    #-1,d1
[00026d7c] 7001                      moveq.l    #1,d0
[00026d7e] 2079 0010 1f12            movea.l    ACSblk,a0
[00026d84] 2068 0258                 movea.l    600(a0),a0
[00026d88] 2279 0010 1f12            movea.l    ACSblk,a1
[00026d8e] 2269 0258                 movea.l    600(a1),a1
[00026d92] 2269 0066                 movea.l    102(a1),a1
[00026d96] 4e91                      jsr        (a1)
[00026d98] 4e75                      rts
edar_len:
[00026d9a] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00026d9e] 514f                      subq.w     #8,a7
[00026da0] 41f9 000b 3854            lea.l      $000B3854,a0
[00026da6] 4eb9 0004 9a5c            jsr        $00049A5C
[00026dac] 2448                      movea.l    a0,a2
[00026dae] 200a                      move.l     a2,d0
[00026db0] 6700 0112                 beq        $00026EC4
[00026db4] 47f9 0010 1f12            lea.l      ACSblk,a3
[00026dba] 7015                      moveq.l    #21,d0
[00026dbc] 2053                      movea.l    (a3),a0
[00026dbe] 2268 0258                 movea.l    600(a0),a1
[00026dc2] 2269 0014                 movea.l    20(a1),a1
[00026dc6] 41d7                      lea.l      (a7),a0
[00026dc8] 4eb9 0004 a3be            jsr        $0004A3BE
[00026dce] 7001                      moveq.l    #1,d0
[00026dd0] 2053                      movea.l    (a3),a0
[00026dd2] 2268 0258                 movea.l    600(a0),a1
[00026dd6] d069 0034                 add.w      52(a1),d0
[00026dda] d157                      add.w      d0,(a7)
[00026ddc] 7201                      moveq.l    #1,d1
[00026dde] d269 0036                 add.w      54(a1),d1
[00026de2] d36f 0002                 add.w      d1,2(a7)
[00026de6] 2049                      movea.l    a1,a0
[00026de8] 224a                      movea.l    a2,a1
[00026dea] 3017                      move.w     (a7),d0
[00026dec] 322f 0002                 move.w     2(a7),d1
[00026df0] 4eb9 0004 948a            jsr        $0004948A
[00026df6] 3600                      move.w     d0,d3
[00026df8] 4a40                      tst.w      d0
[00026dfa] 6f00 00c0                 ble        $00026EBC
[00026dfe] 2053                      movea.l    (a3),a0
[00026e00] 2268 025c                 movea.l    604(a0),a1
[00026e04] 2069 003c                 movea.l    60(a1),a0
[00026e08] 5848                      addq.w     #4,a0
[00026e0a] 5340                      subq.w     #1,d0
[00026e0c] 670e                      beq.s      $00026E1C
[00026e0e] 5340                      subq.w     #1,d0
[00026e10] 6712                      beq.s      $00026E24
[00026e12] 5340                      subq.w     #1,d0
[00026e14] 6716                      beq.s      $00026E2C
[00026e16] 5340                      subq.w     #1,d0
[00026e18] 671a                      beq.s      $00026E34
[00026e1a] 601e                      bra.s      $00026E3A
[00026e1c] 0290 fbff ffff            andi.l     #$FBFFFFFF,(a0)
[00026e22] 6016                      bra.s      $00026E3A
[00026e24] 0290 bfff ffff            andi.l     #$BFFFFFFF,(a0)
[00026e2a] 600e                      bra.s      $00026E3A
[00026e2c] 0090 0400 0000            ori.l      #$04000000,(a0)
[00026e32] 6006                      bra.s      $00026E3A
[00026e34] 0090 4000 0000            ori.l      #$40000000,(a0)
[00026e3a] 3003                      move.w     d3,d0
[00026e3c] 5340                      subq.w     #1,d0
[00026e3e] 670e                      beq.s      $00026E4E
[00026e40] 5340                      subq.w     #1,d0
[00026e42] 672c                      beq.s      $00026E70
[00026e44] 5340                      subq.w     #1,d0
[00026e46] 6706                      beq.s      $00026E4E
[00026e48] 5340                      subq.w     #1,d0
[00026e4a] 6724                      beq.s      $00026E70
[00026e4c] 6042                      bra.s      $00026E90
[00026e4e] 3203                      move.w     d3,d1
[00026e50] 48c1                      ext.l      d1
[00026e52] 2001                      move.l     d1,d0
[00026e54] d080                      add.l      d0,d0
[00026e56] d081                      add.l      d1,d0
[00026e58] e788                      lsl.l      #3,d0
[00026e5a] 2072 080c                 movea.l    12(a2,d0.l),a0
[00026e5e] 2253                      movea.l    (a3),a1
[00026e60] 2269 025c                 movea.l    604(a1),a1
[00026e64] 2269 0234                 movea.l    564(a1),a1
[00026e68] 2368 0004 0004            move.l     4(a0),4(a1)
[00026e6e] 6020                      bra.s      $00026E90
[00026e70] 3203                      move.w     d3,d1
[00026e72] 48c1                      ext.l      d1
[00026e74] 2001                      move.l     d1,d0
[00026e76] d080                      add.l      d0,d0
[00026e78] d081                      add.l      d1,d0
[00026e7a] e788                      lsl.l      #3,d0
[00026e7c] 2072 080c                 movea.l    12(a2,d0.l),a0
[00026e80] 2253                      movea.l    (a3),a1
[00026e82] 2269 025c                 movea.l    604(a1),a1
[00026e86] 2269 024c                 movea.l    588(a1),a1
[00026e8a] 2368 0004 0004            move.l     4(a0),4(a1)
[00026e90] 72ff                      moveq.l    #-1,d1
[00026e92] 7015                      moveq.l    #21,d0
[00026e94] 2053                      movea.l    (a3),a0
[00026e96] 2068 0258                 movea.l    600(a0),a0
[00026e9a] 2253                      movea.l    (a3),a1
[00026e9c] 2269 0258                 movea.l    600(a1),a1
[00026ea0] 2269 0066                 movea.l    102(a1),a1
[00026ea4] 4e91                      jsr        (a1)
[00026ea6] 72ff                      moveq.l    #-1,d1
[00026ea8] 7001                      moveq.l    #1,d0
[00026eaa] 2053                      movea.l    (a3),a0
[00026eac] 2068 0258                 movea.l    600(a0),a0
[00026eb0] 2253                      movea.l    (a3),a1
[00026eb2] 2269 0258                 movea.l    600(a1),a1
[00026eb6] 2269 0066                 movea.l    102(a1),a1
[00026eba] 4e91                      jsr        (a1)
[00026ebc] 204a                      movea.l    a2,a0
[00026ebe] 4eb9 0004 9b7c            jsr        $00049B7C
[00026ec4] 504f                      addq.w     #8,a7
[00026ec6] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00026eca] 4e75                      rts
edar_stil:
[00026ecc] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00026ed0] 514f                      subq.w     #8,a7
[00026ed2] 41f9 000b 38cc            lea.l      $000B38CC,a0
[00026ed8] 4eb9 0004 9a5c            jsr        $00049A5C
[00026ede] 2448                      movea.l    a0,a2
[00026ee0] 200a                      move.l     a2,d0
[00026ee2] 6700 00b4                 beq        $00026F98
[00026ee6] 47f9 0010 1f12            lea.l      ACSblk,a3
[00026eec] 701b                      moveq.l    #27,d0
[00026eee] 2053                      movea.l    (a3),a0
[00026ef0] 2268 0258                 movea.l    600(a0),a1
[00026ef4] 2269 0014                 movea.l    20(a1),a1
[00026ef8] 41d7                      lea.l      (a7),a0
[00026efa] 4eb9 0004 a3be            jsr        $0004A3BE
[00026f00] 7001                      moveq.l    #1,d0
[00026f02] 2053                      movea.l    (a3),a0
[00026f04] 2268 0258                 movea.l    600(a0),a1
[00026f08] d069 0034                 add.w      52(a1),d0
[00026f0c] d157                      add.w      d0,(a7)
[00026f0e] 7201                      moveq.l    #1,d1
[00026f10] d269 0036                 add.w      54(a1),d1
[00026f14] d36f 0002                 add.w      d1,2(a7)
[00026f18] 2049                      movea.l    a1,a0
[00026f1a] 224a                      movea.l    a2,a1
[00026f1c] 3017                      move.w     (a7),d0
[00026f1e] 322f 0002                 move.w     2(a7),d1
[00026f22] 4eb9 0004 948a            jsr        $0004948A
[00026f28] 4a40                      tst.w      d0
[00026f2a] 6f64                      ble.s      $00026F90
[00026f2c] 2053                      movea.l    (a3),a0
[00026f2e] 2268 025c                 movea.l    604(a0),a1
[00026f32] 2069 003c                 movea.l    60(a1),a0
[00026f36] 5848                      addq.w     #4,a0
[00026f38] 2210                      move.l     (a0),d1
[00026f3a] c2bc fff8 ffff            and.l      #$FFF8FFFF,d1
[00026f40] 3400                      move.w     d0,d2
[00026f42] 48c2                      ext.l      d2
[00026f44] 7610                      moveq.l    #16,d3
[00026f46] e7aa                      lsl.l      d3,d2
[00026f48] 8282                      or.l       d2,d1
[00026f4a] 2081                      move.l     d1,(a0)
[00026f4c] 2053                      movea.l    (a3),a0
[00026f4e] 2268 025c                 movea.l    604(a0),a1
[00026f52] 2069 02c4                 movea.l    708(a1),a0
[00026f56] 5848                      addq.w     #4,a0
[00026f58] 2210                      move.l     (a0),d1
[00026f5a] c2bc fff8 ffff            and.l      #$FFF8FFFF,d1
[00026f60] 8282                      or.l       d2,d1
[00026f62] 2081                      move.l     d1,(a0)
[00026f64] 701b                      moveq.l    #27,d0
[00026f66] 2053                      movea.l    (a3),a0
[00026f68] 2068 0258                 movea.l    600(a0),a0
[00026f6c] 2253                      movea.l    (a3),a1
[00026f6e] 2269 0258                 movea.l    600(a1),a1
[00026f72] 2269 0066                 movea.l    102(a1),a1
[00026f76] 72ff                      moveq.l    #-1,d1
[00026f78] 4e91                      jsr        (a1)
[00026f7a] 72ff                      moveq.l    #-1,d1
[00026f7c] 7001                      moveq.l    #1,d0
[00026f7e] 2053                      movea.l    (a3),a0
[00026f80] 2068 0258                 movea.l    600(a0),a0
[00026f84] 2253                      movea.l    (a3),a1
[00026f86] 2269 0258                 movea.l    600(a1),a1
[00026f8a] 2269 0066                 movea.l    102(a1),a1
[00026f8e] 4e91                      jsr        (a1)
[00026f90] 204a                      movea.l    a2,a0
[00026f92] 4eb9 0004 9b7c            jsr        $00049B7C
[00026f98] 504f                      addq.w     #8,a7
[00026f9a] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00026f9e] 4e75                      rts
init_arrow:
[00026fa0] 2f0a                      move.l     a2,-(a7)
[00026fa2] 2f0b                      move.l     a3,-(a7)
[00026fa4] 2448                      movea.l    a0,a2
[00026fa6] 43f9 000b 3ec0            lea.l      $000B3EC0,a1
[00026fac] 303c 2329                 move.w     #$2329,d0
[00026fb0] 266a 0004                 movea.l    4(a2),a3
[00026fb4] 4e93                      jsr        (a3)
[00026fb6] 43f9 000b 3f10            lea.l      $000B3F10,a1
[00026fbc] 303c 2329                 move.w     #$2329,d0
[00026fc0] 204a                      movea.l    a2,a0
[00026fc2] 266a 0004                 movea.l    4(a2),a3
[00026fc6] 4e93                      jsr        (a3)
[00026fc8] 265f                      movea.l    (a7)+,a3
[00026fca] 245f                      movea.l    (a7)+,a2
[00026fcc] 4e75                      rts
minsize:
[00026fce] 2079 0010 1f12            movea.l    ACSblk,a0
[00026fd4] 3028 0012                 move.w     18(a0),d0
[00026fd8] d040                      add.w      d0,d0
[00026fda] 3280                      move.w     d0,(a1)
[00026fdc] 2079 0010 1f12            movea.l    ACSblk,a0
[00026fe2] 226f 0004                 movea.l    4(a7),a1
[00026fe6] 32a8 0014                 move.w     20(a0),(a1)
[00026fea] 4e75                      rts
object_tree:
[00026fec] 48e7 0034                 movem.l    a2-a3/a5,-(a7)
[00026ff0] 514f                      subq.w     #8,a7
[00026ff2] 2f48 0004                 move.l     a0,4(a7)
[00026ff6] 2649                      movea.l    a1,a3
[00026ff8] 41f9 000b 398c            lea.l      $000B398C,a0
[00026ffe] 4eb9 0004 9a5c            jsr        $00049A5C
[00027004] 2448                      movea.l    a0,a2
[00027006] 200a                      move.l     a2,d0
[00027008] 6606                      bne.s      $00027010
[0002700a] 91c8                      suba.l     a0,a0
[0002700c] 6000 0284                 bra        $00027292
[00027010] 41ea 0030                 lea.l      48(a2),a0
[00027014] 7016                      moveq.l    #22,d0
[00027016] c06b 0008                 and.w      8(a3),d0
[0002701a] 8168 0008                 or.w       d0,8(a0)
[0002701e] 703f                      moveq.l    #63,d0
[00027020] c06b 000a                 and.w      10(a3),d0
[00027024] 8168 000a                 or.w       d0,10(a0)
[00027028] 2668 000c                 movea.l    12(a0),a3
[0002702c] 702b                      moveq.l    #43,d0
[0002702e] 224a                      movea.l    a2,a1
[00027030] 2079 0010 1f12            movea.l    ACSblk,a0
[00027036] 2068 0258                 movea.l    600(a0),a0
[0002703a] 4eb9 0002 f23c            jsr        $0002F23C
[00027040] 702c                      moveq.l    #44,d0
[00027042] 224a                      movea.l    a2,a1
[00027044] 2079 0010 1f12            movea.l    ACSblk,a0
[0002704a] 2068 0258                 movea.l    600(a0),a0
[0002704e] 4eb9 0002 f23c            jsr        $0002F23C
[00027054] 4857                      pea.l      (a7)
[00027056] 43f9 000b 3f78            lea.l      $000B3F78,a1
[0002705c] 206f 0008                 movea.l    8(a7),a0
[00027060] 2050                      movea.l    (a0),a0
[00027062] 4eb9 0007 594a            jsr        $0007594A
[00027068] 584f                      addq.w     #4,a7
[0002706a] 2757 0004                 move.l     (a7),4(a3)
[0002706e] 2a6a 0024                 movea.l    36(a2),a5
[00027072] 584d                      addq.w     #4,a5
[00027074] 0295 ffff fff0            andi.l     #$FFFFFFF0,(a5)
[0002707a] 700f                      moveq.l    #15,d0
[0002707c] c06f 0002                 and.w      2(a7),d0
[00027080] 6608                      bne.s      $0002708A
[00027082] 0095 0000 0001            ori.l      #$00000001,(a5)
[00027088] 6006                      bra.s      $00027090
[0002708a] 0095 0000 0000            ori.l      #$00000000,(a5)
[00027090] 700f                      moveq.l    #15,d0
[00027092] c06f 0002                 and.w      2(a7),d0
[00027096] 48c0                      ext.l      d0
[00027098] e588                      lsl.l      #2,d0
[0002709a] 41f9 000b e270            lea.l      $000BE270,a0
[000270a0] 2270 0800                 movea.l    0(a0,d0.l),a1
[000270a4] 204a                      movea.l    a2,a0
[000270a6] 7012                      moveq.l    #18,d0
[000270a8] 4eb9 0004 afe0            jsr        $0004AFE0
[000270ae] 700f                      moveq.l    #15,d0
[000270b0] c06f 0002                 and.w      2(a7),d0
[000270b4] 026a fff0 01a6            andi.w     #$FFF0,422(a2)
[000270ba] c07c 000f                 and.w      #$000F,d0
[000270be] 816a 01a6                 or.w       d0,422(a2)
[000270c2] 2a6a 0114                 movea.l    276(a2),a5
[000270c6] 584d                      addq.w     #4,a5
[000270c8] 2017                      move.l     (a7),d0
[000270ca] 7218                      moveq.l    #24,d1
[000270cc] e2a0                      asr.l      d1,d0
[000270ce] c07c 0007                 and.w      #$0007,d0
[000270d2] b07c 0007                 cmp.w      #$0007,d0
[000270d6] 6238                      bhi.s      $00027110
[000270d8] d040                      add.w      d0,d0
[000270da] 303b 0006                 move.w     $000270E2(pc,d0.w),d0
[000270de] 4efb 0002                 jmp        $000270E2(pc,d0.w)
J11:
[000270e2] 0010                      dc.w $0010   ; $000270f2-$000270e2
[000270e4] 0018                      dc.w $0018   ; $000270fa-$000270e2
[000270e6] 0020                      dc.w $0020   ; $00027102-$000270e2
[000270e8] 0028                      dc.w $0028   ; $0002710a-$000270e2
[000270ea] 0010                      dc.w $0010   ; $000270f2-$000270e2
[000270ec] 0018                      dc.w $0018   ; $000270fa-$000270e2
[000270ee] 0020                      dc.w $0020   ; $00027102-$000270e2
[000270f0] 0028                      dc.w $0028   ; $0002710a-$000270e2
[000270f2] 2abc 0011 0001            move.l     #$00110001,(a5)
[000270f8] 6016                      bra.s      $00027110
[000270fa] 2abc 1111 0001            move.l     #$11110001,(a5)
[00027100] 600e                      bra.s      $00027110
[00027102] 2abc 2211 0001            move.l     #$22110001,(a5)
[00027108] 6006                      bra.s      $00027110
[0002710a] 2abc 3311 0001            move.l     #$33110001,(a5)
[00027110] 2a6a 012c                 movea.l    300(a2),a5
[00027114] 584d                      addq.w     #4,a5
[00027116] 2017                      move.l     (a7),d0
[00027118] 721c                      moveq.l    #28,d1
[0002711a] e2a0                      asr.l      d1,d0
[0002711c] c07c 0007                 and.w      #$0007,d0
[00027120] b07c 0007                 cmp.w      #$0007,d0
[00027124] 6238                      bhi.s      $0002715E
[00027126] d040                      add.w      d0,d0
[00027128] 303b 0006                 move.w     $00027130(pc,d0.w),d0
[0002712c] 4efb 0002                 jmp        $00027130(pc,d0.w)
J12:
[00027130] 0010                      dc.w $0010   ; $00027140-$00027130
[00027132] 0018                      dc.w $0018   ; $00027148-$00027130
[00027134] 0020                      dc.w $0020   ; $00027150-$00027130
[00027136] 0028                      dc.w $0028   ; $00027158-$00027130
[00027138] 0010                      dc.w $0010   ; $00027140-$00027130
[0002713a] 0018                      dc.w $0018   ; $00027148-$00027130
[0002713c] 0020                      dc.w $0020   ; $00027150-$00027130
[0002713e] 0028                      dc.w $0028   ; $00027158-$00027130
[00027140] 2abc 0041 0001            move.l     #$00410001,(a5)
[00027146] 6016                      bra.s      $0002715E
[00027148] 2abc 1141 0001            move.l     #$11410001,(a5)
[0002714e] 600e                      bra.s      $0002715E
[00027150] 2abc 2241 0001            move.l     #$22410001,(a5)
[00027156] 6006                      bra.s      $0002715E
[00027158] 2abc 3341 0001            move.l     #$33410001,(a5)
[0002715e] 2a6a 033c                 movea.l    828(a2),a5
[00027162] 584d                      addq.w     #4,a5
[00027164] 2015                      move.l     (a5),d0
[00027166] c0bc ffcf ffff            and.l      #$FFCFFFFF,d0
[0002716c] 2217                      move.l     (a7),d1
[0002716e] c2bc 0030 0000            and.l      #$00300000,d1
[00027174] 8081                      or.l       d1,d0
[00027176] 2a80                      move.l     d0,(a5)
[00027178] 2a6a 0354                 movea.l    852(a2),a5
[0002717c] 584d                      addq.w     #4,a5
[0002717e] 2015                      move.l     (a5),d0
[00027180] c0bc ff3f ffff            and.l      #$FF3FFFFF,d0
[00027186] 2217                      move.l     (a7),d1
[00027188] c2bc 00c0 0000            and.l      #$00C00000,d1
[0002718e] 8081                      or.l       d1,d0
[00027190] 2a80                      move.l     d0,(a5)
[00027192] 2217                      move.l     (a7),d1
[00027194] c2bc 0008 0000            and.l      #$00080000,d1
[0002719a] 6708                      beq.s      $000271A4
[0002719c] 006a 0001 036a            ori.w      #$0001,874(a2)
[000271a2] 6006                      bra.s      $000271AA
[000271a4] 026a fffe 036a            andi.w     #$FFFE,874(a2)
[000271aa] 2017                      move.l     (a7),d0
[000271ac] c0bc 8000 0000            and.l      #$80000000,d0
[000271b2] 6708                      beq.s      $000271BC
[000271b4] 006a 0001 039a            ori.w      #$0001,922(a2)
[000271ba] 6006                      bra.s      $000271C2
[000271bc] 026a fffe 039a            andi.w     #$FFFE,922(a2)
[000271c2] 2a6a 0234                 movea.l    564(a2),a5
[000271c6] 584d                      addq.w     #4,a5
[000271c8] 2015                      move.l     (a5),d0
[000271ca] c0bc fbff ffff            and.l      #$FBFFFFFF,d0
[000271d0] 2217                      move.l     (a7),d1
[000271d2] c2bc 0400 0000            and.l      #$04000000,d1
[000271d8] 8081                      or.l       d1,d0
[000271da] 2a80                      move.l     d0,(a5)
[000271dc] 2a6a 024c                 movea.l    588(a2),a5
[000271e0] 584d                      addq.w     #4,a5
[000271e2] 2015                      move.l     (a5),d0
[000271e4] c0bc bfff ffff            and.l      #$BFFFFFFF,d0
[000271ea] 2217                      move.l     (a7),d1
[000271ec] c2bc 4000 0000            and.l      #$40000000,d1
[000271f2] 8081                      or.l       d1,d0
[000271f4] 2a80                      move.l     d0,(a5)
[000271f6] 2a6a 02c4                 movea.l    708(a2),a5
[000271fa] 584d                      addq.w     #4,a5
[000271fc] 2015                      move.l     (a5),d0
[000271fe] c0bc fff8 ffff            and.l      #$FFF8FFFF,d0
[00027204] 2217                      move.l     (a7),d1
[00027206] c2bc 0007 0000            and.l      #$00070000,d1
[0002720c] 8081                      or.l       d1,d0
[0002720e] 2a80                      move.l     d0,(a5)
[00027210] 206a 0414                 movea.l    1044(a2),a0
[00027214] 2768 000c 0018            move.l     12(a0),24(a3)
[0002721a] 206f 0004                 movea.l    4(a7),a0
[0002721e] 2068 0026                 movea.l    38(a0),a0
[00027222] 4eb9 0004 3a92            jsr        $00043A92
[00027228] 4a40                      tst.w      d0
[0002722a] 6712                      beq.s      $0002723E
[0002722c] 43f9 000b 3f6b            lea.l      $000B3F6B,a1
[00027232] 702b                      moveq.l    #43,d0
[00027234] 204a                      movea.l    a2,a0
[00027236] 4eb9 0004 afe0            jsr        $0004AFE0
[0002723c] 6012                      bra.s      $00027250
[0002723e] 206f 0004                 movea.l    4(a7),a0
[00027242] 2268 0026                 movea.l    38(a0),a1
[00027246] 702b                      moveq.l    #43,d0
[00027248] 204a                      movea.l    a2,a0
[0002724a] 4eb9 0004 afe0            jsr        $0004AFE0
[00027250] 206a 042c                 movea.l    1068(a2),a0
[00027254] 2768 000c 001c            move.l     12(a0),28(a3)
[0002725a] 206f 0004                 movea.l    4(a7),a0
[0002725e] 2068 002a                 movea.l    42(a0),a0
[00027262] 4eb9 0004 3a92            jsr        $00043A92
[00027268] 4a40                      tst.w      d0
[0002726a] 6712                      beq.s      $0002727E
[0002726c] 43f9 000b 3f6b            lea.l      $000B3F6B,a1
[00027272] 702c                      moveq.l    #44,d0
[00027274] 204a                      movea.l    a2,a0
[00027276] 4eb9 0004 afe0            jsr        $0004AFE0
[0002727c] 6012                      bra.s      $00027290
[0002727e] 206f 0004                 movea.l    4(a7),a0
[00027282] 2268 002a                 movea.l    42(a0),a1
[00027286] 702c                      moveq.l    #44,d0
[00027288] 204a                      movea.l    a2,a0
[0002728a] 4eb9 0004 afe0            jsr        $0004AFE0
[00027290] 204a                      movea.l    a2,a0
[00027292] 504f                      addq.w     #8,a7
[00027294] 4cdf 2c00                 movem.l    (a7)+,a2-a3/a5
[00027298] 4e75                      rts
test_it:
[0002729a] 2f0a                      move.l     a2,-(a7)
[0002729c] 2f0b                      move.l     a3,-(a7)
[0002729e] 2648                      movea.l    a0,a3
[000272a0] 2449                      movea.l    a1,a2
[000272a2] 22bc 0005 b212            move.l     #$0005B212,(a1)
[000272a8] 486a 0004                 pea.l      4(a2)
[000272ac] 43f9 000b 3f78            lea.l      $000B3F78,a1
[000272b2] 2050                      movea.l    (a0),a0
[000272b4] 4eb9 0007 594a            jsr        $0007594A
[000272ba] 584f                      addq.w     #4,a7
[000272bc] 7000                      moveq.l    #0,d0
[000272be] 2540 0014                 move.l     d0,20(a2)
[000272c2] 2540 0010                 move.l     d0,16(a2)
[000272c6] 2540 000c                 move.l     d0,12(a2)
[000272ca] 2540 0008                 move.l     d0,8(a2)
[000272ce] 206b 0026                 movea.l    38(a3),a0
[000272d2] 4eb9 0004 3a92            jsr        $00043A92
[000272d8] 4a40                      tst.w      d0
[000272da] 6704                      beq.s      $000272E0
[000272dc] 91c8                      suba.l     a0,a0
[000272de] 6004                      bra.s      $000272E4
[000272e0] 206b 0026                 movea.l    38(a3),a0
[000272e4] 2548 0018                 move.l     a0,24(a2)
[000272e8] 206b 002a                 movea.l    42(a3),a0
[000272ec] 4eb9 0004 3a92            jsr        $00043A92
[000272f2] 4a40                      tst.w      d0
[000272f4] 6704                      beq.s      $000272FA
[000272f6] 91c8                      suba.l     a0,a0
[000272f8] 6004                      bra.s      $000272FE
[000272fa] 206b 002a                 movea.l    42(a3),a0
[000272fe] 2548 001c                 move.l     a0,28(a2)
[00027302] 265f                      movea.l    (a7)+,a3
[00027304] 245f                      movea.l    (a7)+,a2
[00027306] 4e75                      rts
abort:
[00027308] 2079 0010 1f12            movea.l    ACSblk,a0
[0002730e] 2268 0258                 movea.l    600(a0),a1
[00027312] 2069 0014                 movea.l    20(a1),a0
[00027316] 2068 003c                 movea.l    60(a0),a0
[0002731a] 42a8 0018                 clr.l      24(a0)
[0002731e] 42a8 001c                 clr.l      28(a0)
[00027322] 2079 000b 3f00            movea.l    $000B3F00,a0
[00027328] 2050                      movea.l    (a0),a0
[0002732a] 4e90                      jsr        (a0)
[0002732c] 4e75                      rts
ok:
[0002732e] 48e7 0038                 movem.l    a2-a4,-(a7)
[00027332] 4fef ffd2                 lea.l      -46(a7),a7
[00027336] 2079 0010 1f12            movea.l    ACSblk,a0
[0002733c] 2268 0258                 movea.l    600(a0),a1
[00027340] 2469 0014                 movea.l    20(a1),a2
[00027344] 286a 003c                 movea.l    60(a2),a4
[00027348] 47f9 000f f566            lea.l      $000FF566,a3
[0002734e] 2f2c 0004                 move.l     4(a4),-(a7)
[00027352] 43f9 000b 3f78            lea.l      $000B3F78,a1
[00027358] 204b                      movea.l    a3,a0
[0002735a] 4eb9 0007 5680            jsr        $00075680
[00027360] 584f                      addq.w     #4,a7
[00027362] 2e8b                      move.l     a3,(a7)
[00027364] 2f7c 000b 3f6b 0004       move.l     #$000B3F6B,4(a7)
[0002736c] 4240                      clr.w      d0
[0002736e] 3f40 001c                 move.w     d0,28(a7)
[00027372] 3f40 0012                 move.w     d0,18(a7)
[00027376] 3f40 0008                 move.w     d0,8(a7)
[0002737a] 7200                      moveq.l    #0,d1
[0002737c] 2f41 001e                 move.l     d1,30(a7)
[00027380] 2f41 0014                 move.l     d1,20(a7)
[00027384] 2f41 000a                 move.l     d1,10(a7)
[00027388] 7000                      moveq.l    #0,d0
[0002738a] 2f40 0022                 move.l     d0,34(a7)
[0002738e] 2f40 0018                 move.l     d0,24(a7)
[00027392] 2f40 000e                 move.l     d0,14(a7)
[00027396] 43ef 0026                 lea.l      38(a7),a1
[0002739a] 41ea 0408                 lea.l      1032(a2),a0
[0002739e] 7003                      moveq.l    #3,d0
[000273a0] 4eb9 0005 e010            jsr        $0005E010
[000273a6] 206f 0026                 movea.l    38(a7),a0
[000273aa] 4eb9 0004 3a92            jsr        $00043A92
[000273b0] 4a40                      tst.w      d0
[000273b2] 6704                      beq.s      $000273B8
[000273b4] 42af 0026                 clr.l      38(a7)
[000273b8] 43ef 002a                 lea.l      42(a7),a1
[000273bc] 7003                      moveq.l    #3,d0
[000273be] 41ea 0420                 lea.l      1056(a2),a0
[000273c2] 4eb9 0005 e010            jsr        $0005E010
[000273c8] 206f 002a                 movea.l    42(a7),a0
[000273cc] 4eb9 0004 3a92            jsr        $00043A92
[000273d2] 4a40                      tst.w      d0
[000273d4] 6704                      beq.s      $000273DA
[000273d6] 42af 002a                 clr.l      42(a7)
[000273da] 2079 0010 1f12            movea.l    ACSblk,a0
[000273e0] 3228 0014                 move.w     20(a0),d1
[000273e4] 3028 0012                 move.w     18(a0),d0
[000273e8] d040                      add.w      d0,d0
[000273ea] 41d7                      lea.l      (a7),a0
[000273ec] 2279 000b 3f00            movea.l    $000B3F00,a1
[000273f2] 2269 0004                 movea.l    4(a1),a1
[000273f6] 4e91                      jsr        (a1)
[000273f8] 6100 ff0e                 bsr        $00027308
[000273fc] 4fef 002e                 lea.l      46(a7),a7
[00027400] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00027404] 4e75                      rts
