
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
[00026a9a] 41f9 000b 3704            lea.l      POP_ARR,a0
[00026aa0] 4eb9 0004 9a5c            jsr        Aob_create
[00026aa6] 2448                      movea.l    a0,a2
[00026aa8] 200a                      move.l     a2,d0
[00026aaa] 6700 0106                 beq        edar_arr_1
[00026aae] 47f9 0010 1f12            lea.l      ACSblk,a3
[00026ab4] 7009                      moveq.l    #9,d0
[00026ab6] 2053                      movea.l    (a3),a0
[00026ab8] 2268 0258                 movea.l    600(a0),a1
[00026abc] 2269 0014                 movea.l    20(a1),a1
[00026ac0] 41d7                      lea.l      (a7),a0
[00026ac2] 4eb9 0004 a3be            jsr        Aob_offset
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
[00026aea] 4eb9 0004 948a            jsr        Ame_popup
[00026af0] 3600                      move.w     d0,d3
[00026af2] 4a40                      tst.w      d0
[00026af4] 6f00 00b4                 ble        edar_arr_2
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
[00026b1a] 6262                      bhi.s      edar_arr_3
[00026b1c] d442                      add.w      d2,d2
[00026b1e] 343b 2006                 move.w     $00026B26(pc,d2.w),d2
[00026b22] 4efb 2002                 jmp        $00026B26(pc,d2.w)
J10:
[00026b26] 0058                      dc.w $0058   ; edar_arr_3-J10
[00026b28] 0012                      dc.w $0012   ; edar_arr_4-J10
[00026b2a] 0036                      dc.w $0036   ; edar_arr_5-J10
[00026b2c] 0012                      dc.w $0012   ; edar_arr_4-J10
[00026b2e] 0036                      dc.w $0036   ; edar_arr_5-J10
[00026b30] 0012                      dc.w $0012   ; edar_arr_4-J10
[00026b32] 0036                      dc.w $0036   ; edar_arr_5-J10
[00026b34] 0012                      dc.w $0012   ; edar_arr_4-J10
[00026b36] 0036                      dc.w $0036   ; edar_arr_5-J10
edar_arr_4:
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
[00026b5a] 6022                      bra.s      edar_arr_3
edar_arr_5:
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
edar_arr_3:
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
edar_arr_2:
[00026baa] 204a                      movea.l    a2,a0
[00026bac] 4eb9 0004 9b7c            jsr        Aob_delete
edar_arr_1:
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
[00026bdc] 4eb9 0002 f280            jsr        oe_colsel
[00026be2] 544f                      addq.w     #2,a7
[00026be4] 3600                      move.w     d0,d3
[00026be6] 6b28                      bmi.s      edar_col_1
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
edar_col_1:
[00026c10] 245f                      movea.l    (a7)+,a2
[00026c12] 361f                      move.w     (a7)+,d3
[00026c14] 4e75                      rts

edar_ends:
[00026c16] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00026c1a] 514f                      subq.w     #8,a7
[00026c1c] 41f9 000b 37dc            lea.l      POP_END,a0
[00026c22] 4eb9 0004 9a5c            jsr        Aob_create
[00026c28] 2448                      movea.l    a0,a2
[00026c2a] 200a                      move.l     a2,d0
[00026c2c] 6700 012e                 beq        edar_ends_1
[00026c30] 47f9 0010 1f12            lea.l      ACSblk,a3
[00026c36] 7020                      moveq.l    #32,d0
[00026c38] 2053                      movea.l    (a3),a0
[00026c3a] 2268 0258                 movea.l    600(a0),a1
[00026c3e] 2269 0014                 movea.l    20(a1),a1
[00026c42] 41d7                      lea.l      (a7),a0
[00026c44] 4eb9 0004 a3be            jsr        Aob_offset
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
[00026c6c] 4eb9 0004 948a            jsr        Ame_popup
[00026c72] 3600                      move.w     d0,d3
[00026c74] 4a40                      tst.w      d0
[00026c76] 6f00 00dc                 ble        edar_ends_2
[00026c7a] 2053                      movea.l    (a3),a0
[00026c7c] 2268 025c                 movea.l    604(a0),a1
[00026c80] 2069 003c                 movea.l    60(a1),a0
[00026c84] 5848                      addq.w     #4,a0
[00026c86] 5340                      subq.w     #1,d0
[00026c88] 670e                      beq.s      edar_ends_3
[00026c8a] 5340                      subq.w     #1,d0
[00026c8c] 6716                      beq.s      edar_ends_4
[00026c8e] 5340                      subq.w     #1,d0
[00026c90] 671e                      beq.s      edar_ends_5
[00026c92] 5340                      subq.w     #1,d0
[00026c94] 672c                      beq.s      edar_ends_6
[00026c96] 603a                      bra.s      edar_ends_7
edar_ends_3:
[00026c98] 2010                      move.l     (a0),d0
[00026c9a] c0bc ffcf ffff            and.l      #$FFCFFFFF,d0
[00026ca0] 2080                      move.l     d0,(a0)
[00026ca2] 602e                      bra.s      edar_ends_7
edar_ends_4:
[00026ca4] 2010                      move.l     (a0),d0
[00026ca6] c0bc ff3f ffff            and.l      #$FF3FFFFF,d0
[00026cac] 2080                      move.l     d0,(a0)
[00026cae] 6022                      bra.s      edar_ends_7
edar_ends_5:
[00026cb0] 2010                      move.l     (a0),d0
[00026cb2] c0bc ffcf ffff            and.l      #$FFCFFFFF,d0
[00026cb8] 80bc 0010 0000            or.l       #$00100000,d0
[00026cbe] 2080                      move.l     d0,(a0)
[00026cc0] 6010                      bra.s      edar_ends_7
edar_ends_6:
[00026cc2] 2010                      move.l     (a0),d0
[00026cc4] c0bc ff3f ffff            and.l      #$FF3FFFFF,d0
[00026cca] 80bc 0040 0000            or.l       #$00400000,d0
[00026cd0] 2080                      move.l     d0,(a0)
edar_ends_7:
[00026cd2] 3003                      move.w     d3,d0
[00026cd4] 5340                      subq.w     #1,d0
[00026cd6] 670e                      beq.s      edar_ends_8
[00026cd8] 5340                      subq.w     #1,d0
[00026cda] 672c                      beq.s      edar_ends_9
[00026cdc] 5340                      subq.w     #1,d0
[00026cde] 6706                      beq.s      edar_ends_8
[00026ce0] 5340                      subq.w     #1,d0
[00026ce2] 6724                      beq.s      edar_ends_9
[00026ce4] 6042                      bra.s      edar_ends_10
edar_ends_8:
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
[00026d06] 6020                      bra.s      edar_ends_10
edar_ends_9:
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
edar_ends_10:
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
edar_ends_2:
[00026d54] 204a                      movea.l    a2,a0
[00026d56] 4eb9 0004 9b7c            jsr        Aob_delete
edar_ends_1:
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
[00026da0] 41f9 000b 3854            lea.l      POP_LEN,a0
[00026da6] 4eb9 0004 9a5c            jsr        Aob_create
[00026dac] 2448                      movea.l    a0,a2
[00026dae] 200a                      move.l     a2,d0
[00026db0] 6700 0112                 beq        edar_len_1
[00026db4] 47f9 0010 1f12            lea.l      ACSblk,a3
[00026dba] 7015                      moveq.l    #21,d0
[00026dbc] 2053                      movea.l    (a3),a0
[00026dbe] 2268 0258                 movea.l    600(a0),a1
[00026dc2] 2269 0014                 movea.l    20(a1),a1
[00026dc6] 41d7                      lea.l      (a7),a0
[00026dc8] 4eb9 0004 a3be            jsr        Aob_offset
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
[00026df0] 4eb9 0004 948a            jsr        Ame_popup
[00026df6] 3600                      move.w     d0,d3
[00026df8] 4a40                      tst.w      d0
[00026dfa] 6f00 00c0                 ble        edar_len_2
[00026dfe] 2053                      movea.l    (a3),a0
[00026e00] 2268 025c                 movea.l    604(a0),a1
[00026e04] 2069 003c                 movea.l    60(a1),a0
[00026e08] 5848                      addq.w     #4,a0
[00026e0a] 5340                      subq.w     #1,d0
[00026e0c] 670e                      beq.s      edar_len_3
[00026e0e] 5340                      subq.w     #1,d0
[00026e10] 6712                      beq.s      edar_len_4
[00026e12] 5340                      subq.w     #1,d0
[00026e14] 6716                      beq.s      edar_len_5
[00026e16] 5340                      subq.w     #1,d0
[00026e18] 671a                      beq.s      edar_len_6
[00026e1a] 601e                      bra.s      edar_len_7
edar_len_3:
[00026e1c] 0290 fbff ffff            andi.l     #$FBFFFFFF,(a0)
[00026e22] 6016                      bra.s      edar_len_7
edar_len_4:
[00026e24] 0290 bfff ffff            andi.l     #$BFFFFFFF,(a0)
[00026e2a] 600e                      bra.s      edar_len_7
edar_len_5:
[00026e2c] 0090 0400 0000            ori.l      #$04000000,(a0)
[00026e32] 6006                      bra.s      edar_len_7
edar_len_6:
[00026e34] 0090 4000 0000            ori.l      #$40000000,(a0)
edar_len_7:
[00026e3a] 3003                      move.w     d3,d0
[00026e3c] 5340                      subq.w     #1,d0
[00026e3e] 670e                      beq.s      edar_len_8
[00026e40] 5340                      subq.w     #1,d0
[00026e42] 672c                      beq.s      edar_len_9
[00026e44] 5340                      subq.w     #1,d0
[00026e46] 6706                      beq.s      edar_len_8
[00026e48] 5340                      subq.w     #1,d0
[00026e4a] 6724                      beq.s      edar_len_9
[00026e4c] 6042                      bra.s      edar_len_10
edar_len_8:
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
[00026e6e] 6020                      bra.s      edar_len_10
edar_len_9:
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
edar_len_10:
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
edar_len_2:
[00026ebc] 204a                      movea.l    a2,a0
[00026ebe] 4eb9 0004 9b7c            jsr        Aob_delete
edar_len_1:
[00026ec4] 504f                      addq.w     #8,a7
[00026ec6] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00026eca] 4e75                      rts

edar_stil:
[00026ecc] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00026ed0] 514f                      subq.w     #8,a7
[00026ed2] 41f9 000b 38cc            lea.l      POP_STYLESEL,a0
[00026ed8] 4eb9 0004 9a5c            jsr        Aob_create
[00026ede] 2448                      movea.l    a0,a2
[00026ee0] 200a                      move.l     a2,d0
[00026ee2] 6700 00b4                 beq        edar_stil_1
[00026ee6] 47f9 0010 1f12            lea.l      ACSblk,a3
[00026eec] 701b                      moveq.l    #27,d0
[00026eee] 2053                      movea.l    (a3),a0
[00026ef0] 2268 0258                 movea.l    600(a0),a1
[00026ef4] 2269 0014                 movea.l    20(a1),a1
[00026ef8] 41d7                      lea.l      (a7),a0
[00026efa] 4eb9 0004 a3be            jsr        Aob_offset
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
[00026f22] 4eb9 0004 948a            jsr        Ame_popup
[00026f28] 4a40                      tst.w      d0
[00026f2a] 6f64                      ble.s      edar_stil_2
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
edar_stil_2:
[00026f90] 204a                      movea.l    a2,a0
[00026f92] 4eb9 0004 9b7c            jsr        Aob_delete
edar_stil_1:
[00026f98] 504f                      addq.w     #8,a7
[00026f9a] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00026f9e] 4e75                      rts

init_arrow:
[00026fa0] 2f0a                      move.l     a2,-(a7)
[00026fa2] 2f0b                      move.l     a3,-(a7)
[00026fa4] 2448                      movea.l    a0,a2
[00026fa6] 43f9 000b 3ec0            lea.l      data,a1
[00026fac] 303c 2329                 move.w     #$2329,d0
[00026fb0] 266a 0004                 movea.l    4(a2),a3
[00026fb4] 4e93                      jsr        (a3)
[00026fb6] 43f9 000b 3f10            lea.l      disdata,a1
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
[00026ff8] 41f9 000b 398c            lea.l      ED_ARROW,a0
[00026ffe] 4eb9 0004 9a5c            jsr        Aob_create
[00027004] 2448                      movea.l    a0,a2
[00027006] 200a                      move.l     a2,d0
[00027008] 6606                      bne.s      object_tree_1
[0002700a] 91c8                      suba.l     a0,a0
[0002700c] 6000 0284                 bra        object_tree_2
object_tree_1:
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
[0002703a] 4eb9 0002 f23c            jsr        oe_beself
[00027040] 702c                      moveq.l    #44,d0
[00027042] 224a                      movea.l    a2,a1
[00027044] 2079 0010 1f12            movea.l    ACSblk,a0
[0002704a] 2068 0258                 movea.l    600(a0),a0
[0002704e] 4eb9 0002 f23c            jsr        oe_beself
[00027054] 4857                      pea.l      (a7)
[00027056] 43f9 000b 3f78            lea.l      $000B3F78,a1
[0002705c] 206f 0008                 movea.l    8(a7),a0
[00027060] 2050                      movea.l    (a0),a0
[00027062] 4eb9 0007 594a            jsr        sscanf
[00027068] 584f                      addq.w     #4,a7
[0002706a] 2757 0004                 move.l     (a7),4(a3)
[0002706e] 2a6a 0024                 movea.l    36(a2),a5
[00027072] 584d                      addq.w     #4,a5
[00027074] 0295 ffff fff0            andi.l     #$FFFFFFF0,(a5)
[0002707a] 700f                      moveq.l    #15,d0
[0002707c] c06f 0002                 and.w      2(a7),d0
[00027080] 6608                      bne.s      object_tree_3
[00027082] 0095 0000 0001            ori.l      #$00000001,(a5)
[00027088] 6006                      bra.s      object_tree_4
object_tree_3:
[0002708a] 0095 0000 0000            ori.l      #$00000000,(a5)
object_tree_4:
[00027090] 700f                      moveq.l    #15,d0
[00027092] c06f 0002                 and.w      2(a7),d0
[00027096] 48c0                      ext.l      d0
[00027098] e588                      lsl.l      #2,d0
[0002709a] 41f9 000b e270            lea.l      colour_text,a0
[000270a0] 2270 0800                 movea.l    0(a0,d0.l),a1
[000270a4] 204a                      movea.l    a2,a0
[000270a6] 7012                      moveq.l    #18,d0
[000270a8] 4eb9 0004 afe0            jsr        Aob_puttext
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
[000270d6] 6238                      bhi.s      object_tree_5
[000270d8] d040                      add.w      d0,d0
[000270da] 303b 0006                 move.w     $000270E2(pc,d0.w),d0
[000270de] 4efb 0002                 jmp        $000270E2(pc,d0.w)
J11:
[000270e2] 0010                      dc.w $0010   ; object_tree_6-J11
[000270e4] 0018                      dc.w $0018   ; object_tree_7-J11
[000270e6] 0020                      dc.w $0020   ; object_tree_8-J11
[000270e8] 0028                      dc.w $0028   ; object_tree_9-J11
[000270ea] 0010                      dc.w $0010   ; object_tree_6-J11
[000270ec] 0018                      dc.w $0018   ; object_tree_7-J11
[000270ee] 0020                      dc.w $0020   ; object_tree_8-J11
[000270f0] 0028                      dc.w $0028   ; object_tree_9-J11
object_tree_6:
[000270f2] 2abc 0011 0001            move.l     #$00110001,(a5)
[000270f8] 6016                      bra.s      object_tree_5
object_tree_7:
[000270fa] 2abc 1111 0001            move.l     #$11110001,(a5)
[00027100] 600e                      bra.s      object_tree_5
object_tree_8:
[00027102] 2abc 2211 0001            move.l     #$22110001,(a5)
[00027108] 6006                      bra.s      object_tree_5
object_tree_9:
[0002710a] 2abc 3311 0001            move.l     #$33110001,(a5)
object_tree_5:
[00027110] 2a6a 012c                 movea.l    300(a2),a5
[00027114] 584d                      addq.w     #4,a5
[00027116] 2017                      move.l     (a7),d0
[00027118] 721c                      moveq.l    #28,d1
[0002711a] e2a0                      asr.l      d1,d0
[0002711c] c07c 0007                 and.w      #$0007,d0
[00027120] b07c 0007                 cmp.w      #$0007,d0
[00027124] 6238                      bhi.s      object_tree_10
[00027126] d040                      add.w      d0,d0
[00027128] 303b 0006                 move.w     $00027130(pc,d0.w),d0
[0002712c] 4efb 0002                 jmp        $00027130(pc,d0.w)
J12:
[00027130] 0010                      dc.w $0010   ; object_tree_11-J12
[00027132] 0018                      dc.w $0018   ; object_tree_12-J12
[00027134] 0020                      dc.w $0020   ; object_tree_13-J12
[00027136] 0028                      dc.w $0028   ; object_tree_14-J12
[00027138] 0010                      dc.w $0010   ; object_tree_11-J12
[0002713a] 0018                      dc.w $0018   ; object_tree_12-J12
[0002713c] 0020                      dc.w $0020   ; object_tree_13-J12
[0002713e] 0028                      dc.w $0028   ; object_tree_14-J12
object_tree_11:
[00027140] 2abc 0041 0001            move.l     #$00410001,(a5)
[00027146] 6016                      bra.s      object_tree_10
object_tree_12:
[00027148] 2abc 1141 0001            move.l     #$11410001,(a5)
[0002714e] 600e                      bra.s      object_tree_10
object_tree_13:
[00027150] 2abc 2241 0001            move.l     #$22410001,(a5)
[00027156] 6006                      bra.s      object_tree_10
object_tree_14:
[00027158] 2abc 3341 0001            move.l     #$33410001,(a5)
object_tree_10:
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
[0002719a] 6708                      beq.s      object_tree_15
[0002719c] 006a 0001 036a            ori.w      #$0001,874(a2)
[000271a2] 6006                      bra.s      object_tree_16
object_tree_15:
[000271a4] 026a fffe 036a            andi.w     #$FFFE,874(a2)
object_tree_16:
[000271aa] 2017                      move.l     (a7),d0
[000271ac] c0bc 8000 0000            and.l      #$80000000,d0
[000271b2] 6708                      beq.s      object_tree_17
[000271b4] 006a 0001 039a            ori.w      #$0001,922(a2)
[000271ba] 6006                      bra.s      object_tree_18
object_tree_17:
[000271bc] 026a fffe 039a            andi.w     #$FFFE,922(a2)
object_tree_18:
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
[00027222] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00027228] 4a40                      tst.w      d0
[0002722a] 6712                      beq.s      object_tree_19
[0002722c] 43f9 000b 3f6b            lea.l      $000B3F6B,a1
[00027232] 702b                      moveq.l    #43,d0
[00027234] 204a                      movea.l    a2,a0
[00027236] 4eb9 0004 afe0            jsr        Aob_puttext
[0002723c] 6012                      bra.s      object_tree_20
object_tree_19:
[0002723e] 206f 0004                 movea.l    4(a7),a0
[00027242] 2268 0026                 movea.l    38(a0),a1
[00027246] 702b                      moveq.l    #43,d0
[00027248] 204a                      movea.l    a2,a0
[0002724a] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_20:
[00027250] 206a 042c                 movea.l    1068(a2),a0
[00027254] 2768 000c 001c            move.l     12(a0),28(a3)
[0002725a] 206f 0004                 movea.l    4(a7),a0
[0002725e] 2068 002a                 movea.l    42(a0),a0
[00027262] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00027268] 4a40                      tst.w      d0
[0002726a] 6712                      beq.s      object_tree_21
[0002726c] 43f9 000b 3f6b            lea.l      $000B3F6B,a1
[00027272] 702c                      moveq.l    #44,d0
[00027274] 204a                      movea.l    a2,a0
[00027276] 4eb9 0004 afe0            jsr        Aob_puttext
[0002727c] 6012                      bra.s      object_tree_22
object_tree_21:
[0002727e] 206f 0004                 movea.l    4(a7),a0
[00027282] 2268 002a                 movea.l    42(a0),a1
[00027286] 702c                      moveq.l    #44,d0
[00027288] 204a                      movea.l    a2,a0
[0002728a] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_22:
[00027290] 204a                      movea.l    a2,a0
object_tree_2:
[00027292] 504f                      addq.w     #8,a7
[00027294] 4cdf 2c00                 movem.l    (a7)+,a2-a3/a5
[00027298] 4e75                      rts

test_it:
[0002729a] 2f0a                      move.l     a2,-(a7)
[0002729c] 2f0b                      move.l     a3,-(a7)
[0002729e] 2648                      movea.l    a0,a3
[000272a0] 2449                      movea.l    a1,a2
[000272a2] 22bc 0005 b212            move.l     #A_arrows,(a1)
[000272a8] 486a 0004                 pea.l      4(a2)
[000272ac] 43f9 000b 3f78            lea.l      $000B3F78,a1
[000272b2] 2050                      movea.l    (a0),a0
[000272b4] 4eb9 0007 594a            jsr        sscanf
[000272ba] 584f                      addq.w     #4,a7
[000272bc] 7000                      moveq.l    #0,d0
[000272be] 2540 0014                 move.l     d0,20(a2)
[000272c2] 2540 0010                 move.l     d0,16(a2)
[000272c6] 2540 000c                 move.l     d0,12(a2)
[000272ca] 2540 0008                 move.l     d0,8(a2)
[000272ce] 206b 0026                 movea.l    38(a3),a0
[000272d2] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000272d8] 4a40                      tst.w      d0
[000272da] 6704                      beq.s      test_it_1
[000272dc] 91c8                      suba.l     a0,a0
[000272de] 6004                      bra.s      test_it_2
test_it_1:
[000272e0] 206b 0026                 movea.l    38(a3),a0
test_it_2:
[000272e4] 2548 0018                 move.l     a0,24(a2)
[000272e8] 206b 002a                 movea.l    42(a3),a0
[000272ec] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000272f2] 4a40                      tst.w      d0
[000272f4] 6704                      beq.s      test_it_3
[000272f6] 91c8                      suba.l     a0,a0
[000272f8] 6004                      bra.s      test_it_4
test_it_3:
[000272fa] 206b 002a                 movea.l    42(a3),a0
test_it_4:
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
[00027348] 47f9 000f f566            lea.l      parm,a3
[0002734e] 2f2c 0004                 move.l     4(a4),-(a7)
[00027352] 43f9 000b 3f78            lea.l      $000B3F78,a1
[00027358] 204b                      movea.l    a3,a0
[0002735a] 4eb9 0007 5680            jsr        sprintf
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
[000273a0] 4eb9 0005 e010            jsr        Auo_boxed
[000273a6] 206f 0026                 movea.l    38(a7),a0
[000273aa] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000273b0] 4a40                      tst.w      d0
[000273b2] 6704                      beq.s      ok_1
[000273b4] 42af 0026                 clr.l      38(a7)
ok_1:
[000273b8] 43ef 002a                 lea.l      42(a7),a1
[000273bc] 7003                      moveq.l    #3,d0
[000273be] 41ea 0420                 lea.l      1056(a2),a0
[000273c2] 4eb9 0005 e010            jsr        Auo_boxed
[000273c8] 206f 002a                 movea.l    42(a7),a0
[000273cc] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000273d2] 4a40                      tst.w      d0
[000273d4] 6704                      beq.s      ok_2
[000273d6] 42af 002a                 clr.l      42(a7)
ok_2:
[000273da] 2079 0010 1f12            movea.l    ACSblk,a0
[000273e0] 3228 0014                 move.w     20(a0),d1
[000273e4] 3028 0012                 move.w     18(a0),d0
[000273e8] d040                      add.w      d0,d0
[000273ea] 41d7                      lea.l      (a7),a0
[000273ec] 2279 000b 3f00            movea.l    $000B3F00,a1
[000273f2] 2269 0004                 movea.l    4(a1),a1
[000273f6] 4e91                      jsr        (a1)
[000273f8] 6100 ff0e                 bsr        abort
[000273fc] 4fef 002e                 lea.l      46(a7),a7
[00027400] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00027404] 4e75                      rts

	.data

BUBBLE_01:
[000b312a]                           dc.b 'Hier wird angegeben, ob eine 3D-Darstellung verwendet werden soll.',0
BUBBLE_02:
[000b316d]                           dc.b 'Hier wird angegeben, ob die Linie breit sein soll oder normal.',0
BUBBLE_03:
[000b31ac]                           dc.b 'Hier kann der String, der fÅr BubbleGEM verwendet werden soll, eingegeben werden.',0
BUBBLE_05:
[000b31fe]                           dc.b 'Hier kann der String eingegeben werden, der das aufzurufende Context-Popup beschreibt (siehe in der Dokumentation zu Ame_strpopup).',0
TEXT_005:
[000b3282]                           dc.w $4f4b
[000b3284]                           dc.b $00
TEXT_009:
[000b3285]                           dc.b 'Abbruch',0
TEXT_05:
[000b328d]                           dc.b 'Sonstiges',0
TEXT_06:
[000b3297]                           dc.b '3D-Modus',0
TEXT_07:
[000b32a0]                           dc.b 'Richtung:',0
TEXT_08:
[000b32aa]                           dc.b 'breit',0
TEXT_09:
[000b32b0]                           dc.b 'LÑngen:',0
TEXT_10:
[000b32b8]                           dc.b 'Enden:',0
TEXT_11:
[000b32bf]                           dc.b 'Farbe:',0
TEXT_12:
[000b32c6]                           dc.b 'Stil:',0
TEXT_13:
[000b32cc]                           dc.b 'BubbleGEM-Text',0
TEXT_14:
[000b32db]                           dc.b 'Context-Popup',0
help_title:
[000b32e9]                           dc.b 'Der Arrows-Editor',0
title:
[000b32fb]                           dc.b 'PFEILE -',0
ARROW001:
[000b3304] 0005b212                  dc.l A_arrows
[000b3308]                           dc.w $2251
[000b330a]                           dc.b $00
[000b330b]                           dc.b $01
[000b330c]                           dc.b $00
[000b330d]                           dc.b $00
[000b330e]                           dc.b $00
[000b330f]                           dc.b $00
[000b3310]                           dc.b $00
[000b3311]                           dc.b $00
[000b3312]                           dc.b $00
[000b3313]                           dc.b $00
[000b3314]                           dc.b $00
[000b3315]                           dc.b $00
[000b3316]                           dc.b $00
[000b3317]                           dc.b $00
[000b3318]                           dc.b $00
[000b3319]                           dc.b $00
[000b331a]                           dc.b $00
[000b331b]                           dc.b $00
[000b331c]                           dc.b $00
[000b331d]                           dc.b $00
[000b331e]                           dc.b $00
[000b331f]                           dc.b $00
[000b3320]                           dc.b $00
[000b3321]                           dc.b $00
[000b3322]                           dc.b $00
[000b3323]                           dc.b $00
ARROW002:
[000b3324] 0005b212                  dc.l A_arrows
[000b3328]                           dc.w $2211
[000b332a]                           dc.b $00
[000b332b]                           dc.b $01
[000b332c]                           dc.b $00
[000b332d]                           dc.b $00
[000b332e]                           dc.b $00
[000b332f]                           dc.b $00
[000b3330]                           dc.b $00
[000b3331]                           dc.b $00
[000b3332]                           dc.b $00
[000b3333]                           dc.b $00
[000b3334]                           dc.b $00
[000b3335]                           dc.b $00
[000b3336]                           dc.b $00
[000b3337]                           dc.b $00
[000b3338]                           dc.b $00
[000b3339]                           dc.b $00
[000b333a]                           dc.b $00
[000b333b]                           dc.b $00
[000b333c]                           dc.b $00
[000b333d]                           dc.b $00
[000b333e]                           dc.b $00
[000b333f]                           dc.b $00
[000b3340]                           dc.b $00
[000b3341]                           dc.b $00
[000b3342]                           dc.b $00
[000b3343]                           dc.b $00
ARROW003:
[000b3344] 0005b212                  dc.l A_arrows
[000b3348]                           dc.w $2201
[000b334a]                           dc.b $00
[000b334b]                           dc.b $01
[000b334c]                           dc.b $00
[000b334d]                           dc.b $00
[000b334e]                           dc.b $00
[000b334f]                           dc.b $00
[000b3350]                           dc.b $00
[000b3351]                           dc.b $00
[000b3352]                           dc.b $00
[000b3353]                           dc.b $00
[000b3354]                           dc.b $00
[000b3355]                           dc.b $00
[000b3356]                           dc.b $00
[000b3357]                           dc.b $00
[000b3358]                           dc.b $00
[000b3359]                           dc.b $00
[000b335a]                           dc.b $00
[000b335b]                           dc.b $00
[000b335c]                           dc.b $00
[000b335d]                           dc.b $00
[000b335e]                           dc.b $00
[000b335f]                           dc.b $00
[000b3360]                           dc.b $00
[000b3361]                           dc.b $00
[000b3362]                           dc.b $00
[000b3363]                           dc.b $00
ARROW004:
[000b3364] 0005b212                  dc.l A_arrows
[000b3368]                           dc.w $2601
[000b336a]                           dc.b $00
[000b336b]                           dc.b $01
[000b336c]                           dc.b $00
[000b336d]                           dc.b $00
[000b336e]                           dc.b $00
[000b336f]                           dc.b $00
[000b3370]                           dc.b $00
[000b3371]                           dc.b $00
[000b3372]                           dc.b $00
[000b3373]                           dc.b $00
[000b3374]                           dc.b $00
[000b3375]                           dc.b $00
[000b3376]                           dc.b $00
[000b3377]                           dc.b $00
[000b3378]                           dc.b $00
[000b3379]                           dc.b $00
[000b337a]                           dc.b $00
[000b337b]                           dc.b $00
[000b337c]                           dc.b $00
[000b337d]                           dc.b $00
[000b337e]                           dc.b $00
[000b337f]                           dc.b $00
[000b3380]                           dc.b $00
[000b3381]                           dc.b $00
[000b3382]                           dc.b $00
[000b3383]                           dc.b $00
ARROW005:
[000b3384] 0005b212                  dc.l A_arrows
[000b3388]                           dc.w $2241
[000b338a]                           dc.b $00
[000b338b]                           dc.b $01
[000b338c]                           dc.b $00
[000b338d]                           dc.b $00
[000b338e]                           dc.b $00
[000b338f]                           dc.b $00
[000b3390]                           dc.b $00
[000b3391]                           dc.b $00
[000b3392]                           dc.b $00
[000b3393]                           dc.b $00
[000b3394]                           dc.b $00
[000b3395]                           dc.b $00
[000b3396]                           dc.b $00
[000b3397]                           dc.b $00
[000b3398]                           dc.b $00
[000b3399]                           dc.b $00
[000b339a]                           dc.b $00
[000b339b]                           dc.b $00
[000b339c]                           dc.b $00
[000b339d]                           dc.b $00
[000b339e]                           dc.b $00
[000b339f]                           dc.b $00
[000b33a0]                           dc.b $00
[000b33a1]                           dc.b $00
[000b33a2]                           dc.b $00
[000b33a3]                           dc.b $00
ARROW006:
[000b33a4] 0005b212                  dc.l A_arrows
[000b33a8]                           dc.w $6201
[000b33aa]                           dc.b $00
[000b33ab]                           dc.b $01
[000b33ac]                           dc.b $00
[000b33ad]                           dc.b $00
[000b33ae]                           dc.b $00
[000b33af]                           dc.b $00
[000b33b0]                           dc.b $00
[000b33b1]                           dc.b $00
[000b33b2]                           dc.b $00
[000b33b3]                           dc.b $00
[000b33b4]                           dc.b $00
[000b33b5]                           dc.b $00
[000b33b6]                           dc.b $00
[000b33b7]                           dc.b $00
[000b33b8]                           dc.b $00
[000b33b9]                           dc.b $00
[000b33ba]                           dc.b $00
[000b33bb]                           dc.b $00
[000b33bc]                           dc.b $00
[000b33bd]                           dc.b $00
[000b33be]                           dc.b $00
[000b33bf]                           dc.b $00
[000b33c0]                           dc.b $00
[000b33c1]                           dc.b $00
[000b33c2]                           dc.b $00
[000b33c3]                           dc.b $00
ARROW007:
[000b33c4] 0005b212                  dc.l A_arrows
[000b33c8]                           dc.w $6601
[000b33ca]                           dc.b $00
[000b33cb]                           dc.b $01
[000b33cc]                           dc.b $00
[000b33cd]                           dc.b $00
[000b33ce]                           dc.b $00
[000b33cf]                           dc.b $00
[000b33d0]                           dc.b $00
[000b33d1]                           dc.b $00
[000b33d2]                           dc.b $00
[000b33d3]                           dc.b $00
[000b33d4]                           dc.b $00
[000b33d5]                           dc.b $00
[000b33d6]                           dc.b $00
[000b33d7]                           dc.b $00
[000b33d8]                           dc.b $00
[000b33d9]                           dc.b $00
[000b33da]                           dc.b $00
[000b33db]                           dc.b $00
[000b33dc]                           dc.b $00
[000b33dd]                           dc.b $00
[000b33de]                           dc.b $00
[000b33df]                           dc.b $00
[000b33e0]                           dc.b $00
[000b33e1]                           dc.b $00
[000b33e2]                           dc.b $00
[000b33e3]                           dc.b $00
ARROW008:
[000b33e4] 0005b212                  dc.l A_arrows
[000b33e8]                           dc.b $00
[000b33e9]                           dc.b $11
[000b33ea]                           dc.b $00
[000b33eb]                           dc.b $01
[000b33ec]                           dc.b $00
[000b33ed]                           dc.b $00
[000b33ee]                           dc.b $00
[000b33ef]                           dc.b $00
[000b33f0]                           dc.b $00
[000b33f1]                           dc.b $00
[000b33f2]                           dc.b $00
[000b33f3]                           dc.b $00
[000b33f4]                           dc.b $00
[000b33f5]                           dc.b $00
[000b33f6]                           dc.b $00
[000b33f7]                           dc.b $00
[000b33f8]                           dc.b $00
[000b33f9]                           dc.b $00
[000b33fa]                           dc.b $00
[000b33fb]                           dc.b $00
[000b33fc]                           dc.b $00
[000b33fd]                           dc.b $00
[000b33fe]                           dc.b $00
[000b33ff]                           dc.b $00
[000b3400]                           dc.b $00
[000b3401]                           dc.b $00
[000b3402]                           dc.b $00
[000b3403]                           dc.b $00
ARROW009:
[000b3404] 0005b212                  dc.l A_arrows
[000b3408]                           dc.w $1111
[000b340a]                           dc.b $00
[000b340b]                           dc.b $01
[000b340c]                           dc.b $00
[000b340d]                           dc.b $00
[000b340e]                           dc.b $00
[000b340f]                           dc.b $00
[000b3410]                           dc.b $00
[000b3411]                           dc.b $00
[000b3412]                           dc.b $00
[000b3413]                           dc.b $00
[000b3414]                           dc.b $00
[000b3415]                           dc.b $00
[000b3416]                           dc.b $00
[000b3417]                           dc.b $00
[000b3418]                           dc.b $00
[000b3419]                           dc.b $00
[000b341a]                           dc.b $00
[000b341b]                           dc.b $00
[000b341c]                           dc.b $00
[000b341d]                           dc.b $00
[000b341e]                           dc.b $00
[000b341f]                           dc.b $00
[000b3420]                           dc.b $00
[000b3421]                           dc.b $00
[000b3422]                           dc.b $00
[000b3423]                           dc.b $00
ARROW010:
[000b3424] 0005b212                  dc.l A_arrows
[000b3428]                           dc.w $3311
[000b342a]                           dc.b $00
[000b342b]                           dc.b $01
[000b342c]                           dc.b $00
[000b342d]                           dc.b $00
[000b342e]                           dc.b $00
[000b342f]                           dc.b $00
[000b3430]                           dc.b $00
[000b3431]                           dc.b $00
[000b3432]                           dc.b $00
[000b3433]                           dc.b $00
[000b3434]                           dc.b $00
[000b3435]                           dc.b $00
[000b3436]                           dc.b $00
[000b3437]                           dc.b $00
[000b3438]                           dc.b $00
[000b3439]                           dc.b $00
[000b343a]                           dc.b $00
[000b343b]                           dc.b $00
[000b343c]                           dc.b $00
[000b343d]                           dc.b $00
[000b343e]                           dc.b $00
[000b343f]                           dc.b $00
[000b3440]                           dc.b $00
[000b3441]                           dc.b $00
[000b3442]                           dc.b $00
[000b3443]                           dc.b $00
ARROW011:
[000b3444] 0005b212                  dc.l A_arrows
[000b3448]                           dc.b $00
[000b3449]                           dc.b $41
[000b344a]                           dc.b $00
[000b344b]                           dc.b $01
[000b344c]                           dc.b $00
[000b344d]                           dc.b $00
[000b344e]                           dc.b $00
[000b344f]                           dc.b $00
[000b3450]                           dc.b $00
[000b3451]                           dc.b $00
[000b3452]                           dc.b $00
[000b3453]                           dc.b $00
[000b3454]                           dc.b $00
[000b3455]                           dc.b $00
[000b3456]                           dc.b $00
[000b3457]                           dc.b $00
[000b3458]                           dc.b $00
[000b3459]                           dc.b $00
[000b345a]                           dc.b $00
[000b345b]                           dc.b $00
[000b345c]                           dc.b $00
[000b345d]                           dc.b $00
[000b345e]                           dc.b $00
[000b345f]                           dc.b $00
[000b3460]                           dc.b $00
[000b3461]                           dc.b $00
[000b3462]                           dc.b $00
[000b3463]                           dc.b $00
ARROW012:
[000b3464] 0005b212                  dc.l A_arrows
[000b3468]                           dc.w $1141
[000b346a]                           dc.b $00
[000b346b]                           dc.b $01
[000b346c]                           dc.b $00
[000b346d]                           dc.b $00
[000b346e]                           dc.b $00
[000b346f]                           dc.b $00
[000b3470]                           dc.b $00
[000b3471]                           dc.b $00
[000b3472]                           dc.b $00
[000b3473]                           dc.b $00
[000b3474]                           dc.b $00
[000b3475]                           dc.b $00
[000b3476]                           dc.b $00
[000b3477]                           dc.b $00
[000b3478]                           dc.b $00
[000b3479]                           dc.b $00
[000b347a]                           dc.b $00
[000b347b]                           dc.b $00
[000b347c]                           dc.b $00
[000b347d]                           dc.b $00
[000b347e]                           dc.b $00
[000b347f]                           dc.b $00
[000b3480]                           dc.b $00
[000b3481]                           dc.b $00
[000b3482]                           dc.b $00
[000b3483]                           dc.b $00
ARROW013:
[000b3484] 0005b212                  dc.l A_arrows
[000b3488]                           dc.w $3341
[000b348a]                           dc.b $00
[000b348b]                           dc.b $01
[000b348c]                           dc.b $00
[000b348d]                           dc.b $00
[000b348e]                           dc.b $00
[000b348f]                           dc.b $00
[000b3490]                           dc.b $00
[000b3491]                           dc.b $00
[000b3492]                           dc.b $00
[000b3493]                           dc.b $00
[000b3494]                           dc.b $00
[000b3495]                           dc.b $00
[000b3496]                           dc.b $00
[000b3497]                           dc.b $00
[000b3498]                           dc.b $00
[000b3499]                           dc.b $00
[000b349a]                           dc.b $00
[000b349b]                           dc.b $00
[000b349c]                           dc.b $00
[000b349d]                           dc.b $00
[000b349e]                           dc.b $00
[000b349f]                           dc.b $00
[000b34a0]                           dc.b $00
[000b34a1]                           dc.b $00
[000b34a2]                           dc.b $00
[000b34a3]                           dc.b $00
A_3DBUTTON02:
[000b34a4] 0005a4e2                  dc.l A_3Dbutton
[000b34a8]                           dc.w $29f1
[000b34aa]                           dc.w $0178
[000b34ac] 00059318                  dc.l Auo_string
[000b34b0]                           dc.b $00
[000b34b1]                           dc.b $00
[000b34b2]                           dc.b $00
[000b34b3]                           dc.b $00
[000b34b4]                           dc.b $00
[000b34b5]                           dc.b $00
[000b34b6]                           dc.b $00
[000b34b7]                           dc.b $00
[000b34b8]                           dc.b $00
[000b34b9]                           dc.b $00
[000b34ba]                           dc.b $00
[000b34bb]                           dc.b $00
[000b34bc]                           dc.b $00
[000b34bd]                           dc.b $00
[000b34be]                           dc.b $00
[000b34bf]                           dc.b $00
[000b34c0]                           dc.b $00
[000b34c1]                           dc.b $00
[000b34c2]                           dc.b $00
[000b34c3]                           dc.b $00
A_3DBUTTON03:
[000b34c4] 0005a4e2                  dc.l A_3Dbutton
[000b34c8]                           dc.w $29c1
[000b34ca]                           dc.w $0178
[000b34cc] 00059318                  dc.l Auo_string
[000b34d0] 000b3282                  dc.l TEXT_005
[000b34d4]                           dc.b $00
[000b34d5]                           dc.b $00
[000b34d6]                           dc.b $00
[000b34d7]                           dc.b $00
[000b34d8]                           dc.b $00
[000b34d9]                           dc.b $00
[000b34da]                           dc.b $00
[000b34db]                           dc.b $00
[000b34dc]                           dc.b $00
[000b34dd]                           dc.b $00
[000b34de]                           dc.b $00
[000b34df]                           dc.b $00
[000b34e0]                           dc.b $00
[000b34e1]                           dc.b $00
[000b34e2]                           dc.b $00
[000b34e3]                           dc.b $00
A_3DBUTTON05:
[000b34e4] 0005a4e2                  dc.l A_3Dbutton
[000b34e8]                           dc.w $29c1
[000b34ea]                           dc.w $0178
[000b34ec] 00059318                  dc.l Auo_string
[000b34f0] 000b3285                  dc.l TEXT_009
[000b34f4]                           dc.b $00
[000b34f5]                           dc.b $00
[000b34f6]                           dc.b $00
[000b34f7]                           dc.b $00
[000b34f8]                           dc.b $00
[000b34f9]                           dc.b $00
[000b34fa]                           dc.b $00
[000b34fb]                           dc.b $00
[000b34fc]                           dc.b $00
[000b34fd]                           dc.b $00
[000b34fe]                           dc.b $00
[000b34ff]                           dc.b $00
[000b3500]                           dc.b $00
[000b3501]                           dc.b $00
[000b3502]                           dc.b $00
[000b3503]                           dc.b $00
A_3DBUTTON06:
[000b3504] 0005a4e2                  dc.l A_3Dbutton
[000b3508]                           dc.w $21f1
[000b350a]                           dc.w $01f8
[000b350c] 00059318                  dc.l Auo_string
[000b3510]                           dc.b $00
[000b3511]                           dc.b $00
[000b3512]                           dc.b $00
[000b3513]                           dc.b $00
[000b3514]                           dc.b $00
[000b3515]                           dc.b $00
[000b3516]                           dc.b $00
[000b3517]                           dc.b $00
[000b3518]                           dc.b $00
[000b3519]                           dc.b $00
[000b351a]                           dc.b $00
[000b351b]                           dc.b $00
[000b351c]                           dc.b $00
[000b351d]                           dc.b $00
[000b351e]                           dc.b $00
[000b351f]                           dc.b $00
[000b3520]                           dc.b $00
[000b3521]                           dc.b $00
[000b3522]                           dc.b $00
[000b3523]                           dc.b $00
A_3DBUTTON23:
[000b3524] 0005a4e2                  dc.l A_3Dbutton
[000b3528]                           dc.w $09f1
[000b352a]                           dc.w $0178
[000b352c] 00059318                  dc.l Auo_string
[000b3530]                           dc.b $00
[000b3531]                           dc.b $00
[000b3532]                           dc.b $00
[000b3533]                           dc.b $00
[000b3534]                           dc.b $00
[000b3535]                           dc.b $00
[000b3536]                           dc.b $00
[000b3537]                           dc.b $00
[000b3538]                           dc.b $00
[000b3539]                           dc.b $00
[000b353a]                           dc.b $00
[000b353b]                           dc.b $00
[000b353c]                           dc.b $00
[000b353d]                           dc.b $00
[000b353e]                           dc.b $00
[000b353f]                           dc.b $00
[000b3540]                           dc.b $00
[000b3541]                           dc.b $00
[000b3542]                           dc.b $00
[000b3543]                           dc.b $00
A_ARROWS01:
[000b3544] 0005b212                  dc.l A_arrows
[000b3548]                           dc.w $1301
[000b354a]                           dc.b $00
[000b354b]                           dc.b $01
[000b354c]                           dc.b $00
[000b354d]                           dc.b $00
[000b354e]                           dc.b $00
[000b354f]                           dc.b $00
[000b3550]                           dc.b $00
[000b3551]                           dc.b $00
[000b3552]                           dc.b $00
[000b3553]                           dc.b $00
[000b3554]                           dc.b $00
[000b3555]                           dc.b $00
[000b3556]                           dc.b $00
[000b3557]                           dc.b $00
[000b3558]                           dc.b $00
[000b3559]                           dc.b $00
[000b355a]                           dc.b $00
[000b355b]                           dc.b $00
[000b355c]                           dc.b $00
[000b355d]                           dc.b $00
[000b355e]                           dc.b $00
[000b355f]                           dc.b $00
[000b3560]                           dc.b $00
[000b3561]                           dc.b $00
[000b3562]                           dc.b $00
[000b3563]                           dc.b $00
A_ARROWS02:
[000b3564] 0005b212                  dc.l A_arrows
[000b3568]                           dc.w $6602
[000b356a]                           dc.b $00
[000b356b]                           dc.b $01
[000b356c]                           dc.b $00
[000b356d]                           dc.b $00
[000b356e]                           dc.b $00
[000b356f]                           dc.b $00
[000b3570]                           dc.b $00
[000b3571]                           dc.b $00
[000b3572]                           dc.b $00
[000b3573]                           dc.b $00
[000b3574]                           dc.b $00
[000b3575]                           dc.b $00
[000b3576]                           dc.b $00
[000b3577]                           dc.b $00
[000b3578]                           dc.b $00
[000b3579]                           dc.b $00
[000b357a]                           dc.b $00
[000b357b]                           dc.b $00
[000b357c]                           dc.b $00
[000b357d]                           dc.b $00
[000b357e]                           dc.b $00
[000b357f]                           dc.b $00
[000b3580]                           dc.b $00
[000b3581]                           dc.b $00
[000b3582]                           dc.b $00
[000b3583]                           dc.b $00
A_ARROWS03:
[000b3584] 0005b212                  dc.l A_arrows
[000b3588]                           dc.w $6603
[000b358a]                           dc.b $00
[000b358b]                           dc.b $01
[000b358c]                           dc.b $00
[000b358d]                           dc.b $00
[000b358e]                           dc.b $00
[000b358f]                           dc.b $00
[000b3590]                           dc.b $00
[000b3591]                           dc.b $00
[000b3592]                           dc.b $00
[000b3593]                           dc.b $00
[000b3594]                           dc.b $00
[000b3595]                           dc.b $00
[000b3596]                           dc.b $00
[000b3597]                           dc.b $00
[000b3598]                           dc.b $00
[000b3599]                           dc.b $00
[000b359a]                           dc.b $00
[000b359b]                           dc.b $00
[000b359c]                           dc.b $00
[000b359d]                           dc.b $00
[000b359e]                           dc.b $00
[000b359f]                           dc.b $00
[000b35a0]                           dc.b $00
[000b35a1]                           dc.b $00
[000b35a2]                           dc.b $00
[000b35a3]                           dc.b $00
A_ARROWS04:
[000b35a4] 0005b212                  dc.l A_arrows
[000b35a8]                           dc.w $6604
[000b35aa]                           dc.b $00
[000b35ab]                           dc.b $01
[000b35ac]                           dc.b $00
[000b35ad]                           dc.b $00
[000b35ae]                           dc.b $00
[000b35af]                           dc.b $00
[000b35b0]                           dc.b $00
[000b35b1]                           dc.b $00
[000b35b2]                           dc.b $00
[000b35b3]                           dc.b $00
[000b35b4]                           dc.b $00
[000b35b5]                           dc.b $00
[000b35b6]                           dc.b $00
[000b35b7]                           dc.b $00
[000b35b8]                           dc.b $00
[000b35b9]                           dc.b $00
[000b35ba]                           dc.b $00
[000b35bb]                           dc.b $00
[000b35bc]                           dc.b $00
[000b35bd]                           dc.b $00
[000b35be]                           dc.b $00
[000b35bf]                           dc.b $00
[000b35c0]                           dc.b $00
[000b35c1]                           dc.b $00
[000b35c2]                           dc.b $00
[000b35c3]                           dc.b $00
A_ARROWS05:
[000b35c4] 0005b212                  dc.l A_arrows
[000b35c8]                           dc.w $6605
[000b35ca]                           dc.b $00
[000b35cb]                           dc.b $01
[000b35cc]                           dc.b $00
[000b35cd]                           dc.b $00
[000b35ce]                           dc.b $00
[000b35cf]                           dc.b $00
[000b35d0]                           dc.b $00
[000b35d1]                           dc.b $00
[000b35d2]                           dc.b $00
[000b35d3]                           dc.b $00
[000b35d4]                           dc.b $00
[000b35d5]                           dc.b $00
[000b35d6]                           dc.b $00
[000b35d7]                           dc.b $00
[000b35d8]                           dc.b $00
[000b35d9]                           dc.b $00
[000b35da]                           dc.b $00
[000b35db]                           dc.b $00
[000b35dc]                           dc.b $00
[000b35dd]                           dc.b $00
[000b35de]                           dc.b $00
[000b35df]                           dc.b $00
[000b35e0]                           dc.b $00
[000b35e1]                           dc.b $00
[000b35e2]                           dc.b $00
[000b35e3]                           dc.b $00
A_ARROWS06:
[000b35e4] 0005b212                  dc.l A_arrows
[000b35e8]                           dc.w $6606
[000b35ea]                           dc.b $00
[000b35eb]                           dc.b $01
[000b35ec]                           dc.b $00
[000b35ed]                           dc.b $00
[000b35ee]                           dc.b $00
[000b35ef]                           dc.b $00
[000b35f0]                           dc.b $00
[000b35f1]                           dc.b $00
[000b35f2]                           dc.b $00
[000b35f3]                           dc.b $00
[000b35f4]                           dc.b $00
[000b35f5]                           dc.b $00
[000b35f6]                           dc.b $00
[000b35f7]                           dc.b $00
[000b35f8]                           dc.b $00
[000b35f9]                           dc.b $00
[000b35fa]                           dc.b $00
[000b35fb]                           dc.b $00
[000b35fc]                           dc.b $00
[000b35fd]                           dc.b $00
[000b35fe]                           dc.b $00
[000b35ff]                           dc.b $00
[000b3600]                           dc.b $00
[000b3601]                           dc.b $00
[000b3602]                           dc.b $00
[000b3603]                           dc.b $00
A_ARROWS07:
[000b3604] 0005b212                  dc.l A_arrows
[000b3608]                           dc.w $6607
[000b360a]                           dc.b $00
[000b360b]                           dc.b $01
[000b360c]                           dc.b $00
[000b360d]                           dc.b $00
[000b360e]                           dc.b $00
[000b360f]                           dc.b $00
[000b3610]                           dc.b $00
[000b3611]                           dc.b $00
[000b3612]                           dc.b $00
[000b3613]                           dc.b $00
[000b3614]                           dc.b $00
[000b3615]                           dc.b $00
[000b3616]                           dc.b $00
[000b3617]                           dc.b $00
[000b3618]                           dc.b $00
[000b3619]                           dc.b $00
[000b361a]                           dc.b $00
[000b361b]                           dc.b $00
[000b361c]                           dc.b $00
[000b361d]                           dc.b $00
[000b361e]                           dc.b $00
[000b361f]                           dc.b $00
[000b3620]                           dc.b $00
[000b3621]                           dc.b $00
[000b3622]                           dc.b $00
[000b3623]                           dc.b $00
A_ARROWS08:
[000b3624] 0005b212                  dc.l A_arrows
[000b3628]                           dc.w $2611
[000b362a]                           dc.b $00
[000b362b]                           dc.b $01
[000b362c]                           dc.b $00
[000b362d]                           dc.b $00
[000b362e]                           dc.b $00
[000b362f]                           dc.b $00
[000b3630]                           dc.b $00
[000b3631]                           dc.b $00
[000b3632]                           dc.b $00
[000b3633]                           dc.b $00
[000b3634]                           dc.b $00
[000b3635]                           dc.b $00
[000b3636]                           dc.b $00
[000b3637]                           dc.b $00
[000b3638]                           dc.b $00
[000b3639]                           dc.b $00
[000b363a]                           dc.b $00
[000b363b]                           dc.b $00
[000b363c]                           dc.b $00
[000b363d]                           dc.b $00
[000b363e]                           dc.b $00
[000b363f]                           dc.b $00
[000b3640]                           dc.b $00
[000b3641]                           dc.b $00
[000b3642]                           dc.b $00
[000b3643]                           dc.b $00
A_ARROWS09:
[000b3644] 0005b212                  dc.l A_arrows
[000b3648]                           dc.w $6241
[000b364a]                           dc.b $00
[000b364b]                           dc.b $01
[000b364c]                           dc.b $00
[000b364d]                           dc.b $00
[000b364e]                           dc.b $00
[000b364f]                           dc.b $00
[000b3650]                           dc.b $00
[000b3651]                           dc.b $00
[000b3652]                           dc.b $00
[000b3653]                           dc.b $00
[000b3654]                           dc.b $00
[000b3655]                           dc.b $00
[000b3656]                           dc.b $00
[000b3657]                           dc.b $00
[000b3658]                           dc.b $00
[000b3659]                           dc.b $00
[000b365a]                           dc.b $00
[000b365b]                           dc.b $00
[000b365c]                           dc.b $00
[000b365d]                           dc.b $00
[000b365e]                           dc.b $00
[000b365f]                           dc.b $00
[000b3660]                           dc.b $00
[000b3661]                           dc.b $00
[000b3662]                           dc.b $00
[000b3663]                           dc.b $00
A_BOXED03:
[000b3664] 0005e9d2                  dc.l A_boxed
[000b3668]                           dc.w $9038
[000b366a]                           dc.w $ff12
[000b366c] 0005e010                  dc.l Auo_boxed
[000b3670]                           dc.b $00
[000b3671]                           dc.b $00
[000b3672]                           dc.b $00
[000b3673]                           dc.b $00
[000b3674]                           dc.b $00
[000b3675]                           dc.b $00
[000b3676]                           dc.b $00
[000b3677]                           dc.b $00
[000b3678]                           dc.b $00
[000b3679]                           dc.b $00
[000b367a]                           dc.b $00
[000b367b]                           dc.b $00
[000b367c] 000b31ac                  dc.l BUBBLE_03
[000b3680]                           dc.b $00
[000b3681]                           dc.b $00
[000b3682]                           dc.b $00
[000b3683]                           dc.b $00
A_BOXED04:
[000b3684] 0005e9d2                  dc.l A_boxed
[000b3688]                           dc.w $9038
[000b368a]                           dc.w $ff12
[000b368c] 0005e010                  dc.l Auo_boxed
[000b3690]                           dc.b $00
[000b3691]                           dc.b $00
[000b3692]                           dc.b $00
[000b3693]                           dc.b $00
[000b3694]                           dc.b $00
[000b3695]                           dc.b $00
[000b3696]                           dc.b $00
[000b3697]                           dc.b $00
[000b3698]                           dc.b $00
[000b3699]                           dc.b $00
[000b369a]                           dc.b $00
[000b369b]                           dc.b $00
[000b369c] 000b31fe                  dc.l BUBBLE_05
[000b36a0]                           dc.b $00
[000b36a1]                           dc.b $00
[000b36a2]                           dc.b $00
[000b36a3]                           dc.b $00
A_CHECKBOX02:
[000b36a4] 000593fc                  dc.l A_checkbox
[000b36a8]                           dc.b $00
[000b36a9]                           dc.b $00
[000b36aa]                           dc.b $00
[000b36ab]                           dc.b $01
[000b36ac] 00059318                  dc.l Auo_string
[000b36b0] 000b3297                  dc.l TEXT_06
[000b36b4]                           dc.b $00
[000b36b5]                           dc.b $00
[000b36b6]                           dc.b $00
[000b36b7]                           dc.b $00
[000b36b8]                           dc.b $00
[000b36b9]                           dc.b $00
[000b36ba]                           dc.b $00
[000b36bb]                           dc.b $00
[000b36bc] 000b312a                  dc.l BUBBLE_01
[000b36c0]                           dc.b $00
[000b36c1]                           dc.b $00
[000b36c2]                           dc.b $00
[000b36c3]                           dc.b $00
A_CHECKBOX03:
[000b36c4] 000593fc                  dc.l A_checkbox
[000b36c8]                           dc.b $00
[000b36c9]                           dc.b $00
[000b36ca]                           dc.b $00
[000b36cb]                           dc.b $01
[000b36cc] 00059318                  dc.l Auo_string
[000b36d0] 000b32aa                  dc.l TEXT_08
[000b36d4]                           dc.b $00
[000b36d5]                           dc.b $00
[000b36d6]                           dc.b $00
[000b36d7]                           dc.b $00
[000b36d8]                           dc.b $00
[000b36d9]                           dc.b $00
[000b36da]                           dc.b $00
[000b36db]                           dc.b $00
[000b36dc] 000b316d                  dc.l BUBBLE_02
[000b36e0]                           dc.b $00
[000b36e1]                           dc.b $00
[000b36e2]                           dc.b $00
[000b36e3]                           dc.b $00
A_INNERFRAME03:
[000b36e4] 00059f9c                  dc.l A_innerframe
[000b36e8]                           dc.w $1800
[000b36ea]                           dc.w $8f19
[000b36ec] 00059318                  dc.l Auo_string
[000b36f0] 000b328d                  dc.l TEXT_05
[000b36f4]                           dc.b $00
[000b36f5]                           dc.b $00
[000b36f6]                           dc.b $00
[000b36f7]                           dc.b $00
[000b36f8]                           dc.b $00
[000b36f9]                           dc.b $00
[000b36fa]                           dc.b $00
[000b36fb]                           dc.b $00
[000b36fc]                           dc.b $00
[000b36fd]                           dc.b $00
[000b36fe]                           dc.b $00
[000b36ff]                           dc.b $00
[000b3700]                           dc.b $00
[000b3701]                           dc.b $00
[000b3702]                           dc.b $00
[000b3703]                           dc.b $00
POP_ARR:
[000b3704]                           dc.w $ffff
[000b3706]                           dc.b $00
[000b3707]                           dc.b $01
[000b3708]                           dc.b $00
[000b3709]                           dc.b $08
[000b370a]                           dc.b $00
[000b370b]                           dc.b $14
[000b370c]                           dc.b $00
[000b370d]                           dc.b $00
[000b370e]                           dc.b $00
[000b370f]                           dc.b $20
[000b3710]                           dc.b $00
[000b3711]                           dc.b $ff
[000b3712]                           dc.w $1100
[000b3714]                           dc.b $00
[000b3715]                           dc.b $00
[000b3716]                           dc.b $00
[000b3717]                           dc.b $00
[000b3718]                           dc.b $00
[000b3719]                           dc.b $06
[000b371a]                           dc.b $00
[000b371b]                           dc.b $04
_01_POP_ARR:
[000b371c]                           dc.b $00
[000b371d]                           dc.b $02
[000b371e]                           dc.w $ffff
[000b3720]                           dc.w $ffff
[000b3722]                           dc.b $00
[000b3723]                           dc.b $18
[000b3724]                           dc.b $00
[000b3725]                           dc.b $01
[000b3726]                           dc.b $00
[000b3727]                           dc.b $00
[000b3728] 000b33e4                  dc.l ARROW008
[000b372c]                           dc.b $00
[000b372d]                           dc.b $00
[000b372e]                           dc.b $00
[000b372f]                           dc.b $00
[000b3730]                           dc.b $00
[000b3731]                           dc.b $03
[000b3732]                           dc.b $00
[000b3733]                           dc.b $01
_02_POP_ARR:
[000b3734]                           dc.b $00
[000b3735]                           dc.b $03
[000b3736]                           dc.w $ffff
[000b3738]                           dc.w $ffff
[000b373a]                           dc.b $00
[000b373b]                           dc.b $18
[000b373c]                           dc.b $00
[000b373d]                           dc.b $01
[000b373e]                           dc.b $00
[000b373f]                           dc.b $00
[000b3740] 000b3444                  dc.l ARROW011
[000b3744]                           dc.b $00
[000b3745]                           dc.b $03
[000b3746]                           dc.b $00
[000b3747]                           dc.b $00
[000b3748]                           dc.b $00
[000b3749]                           dc.b $03
[000b374a]                           dc.b $00
[000b374b]                           dc.b $01
_03_POP_ARR:
[000b374c]                           dc.b $00
[000b374d]                           dc.b $04
[000b374e]                           dc.w $ffff
[000b3750]                           dc.w $ffff
[000b3752]                           dc.b $00
[000b3753]                           dc.b $18
[000b3754]                           dc.b $00
[000b3755]                           dc.b $01
[000b3756]                           dc.b $00
[000b3757]                           dc.b $00
[000b3758] 000b3404                  dc.l ARROW009
[000b375c]                           dc.b $00
[000b375d]                           dc.b $00
[000b375e]                           dc.b $00
[000b375f]                           dc.b $01
[000b3760]                           dc.b $00
[000b3761]                           dc.b $03
[000b3762]                           dc.b $00
[000b3763]                           dc.b $01
_04_POP_ARR:
[000b3764]                           dc.b $00
[000b3765]                           dc.b $05
[000b3766]                           dc.w $ffff
[000b3768]                           dc.w $ffff
[000b376a]                           dc.b $00
[000b376b]                           dc.b $18
[000b376c]                           dc.b $00
[000b376d]                           dc.b $01
[000b376e]                           dc.b $00
[000b376f]                           dc.b $00
[000b3770] 000b3464                  dc.l ARROW012
[000b3774]                           dc.b $00
[000b3775]                           dc.b $03
[000b3776]                           dc.b $00
[000b3777]                           dc.b $01
[000b3778]                           dc.b $00
[000b3779]                           dc.b $03
[000b377a]                           dc.b $00
[000b377b]                           dc.b $01
_05_POP_ARR:
[000b377c]                           dc.b $00
[000b377d]                           dc.b $06
[000b377e]                           dc.w $ffff
[000b3780]                           dc.w $ffff
[000b3782]                           dc.b $00
[000b3783]                           dc.b $18
[000b3784]                           dc.b $00
[000b3785]                           dc.b $01
[000b3786]                           dc.b $00
[000b3787]                           dc.b $00
[000b3788] 000b3324                  dc.l ARROW002
[000b378c]                           dc.b $00
[000b378d]                           dc.b $00
[000b378e]                           dc.b $00
[000b378f]                           dc.b $02
[000b3790]                           dc.b $00
[000b3791]                           dc.b $03
[000b3792]                           dc.b $00
[000b3793]                           dc.b $01
_06_POP_ARR:
[000b3794]                           dc.b $00
[000b3795]                           dc.b $07
[000b3796]                           dc.w $ffff
[000b3798]                           dc.w $ffff
[000b379a]                           dc.b $00
[000b379b]                           dc.b $18
[000b379c]                           dc.b $00
[000b379d]                           dc.b $01
[000b379e]                           dc.b $00
[000b379f]                           dc.b $00
[000b37a0] 000b3384                  dc.l ARROW005
[000b37a4]                           dc.b $00
[000b37a5]                           dc.b $03
[000b37a6]                           dc.b $00
[000b37a7]                           dc.b $02
[000b37a8]                           dc.b $00
[000b37a9]                           dc.b $03
[000b37aa]                           dc.b $00
[000b37ab]                           dc.b $01
_07_POP_ARR:
[000b37ac]                           dc.b $00
[000b37ad]                           dc.b $08
[000b37ae]                           dc.w $ffff
[000b37b0]                           dc.w $ffff
[000b37b2]                           dc.b $00
[000b37b3]                           dc.b $18
[000b37b4]                           dc.b $00
[000b37b5]                           dc.b $01
[000b37b6]                           dc.b $00
[000b37b7]                           dc.b $00
[000b37b8] 000b3424                  dc.l ARROW010
[000b37bc]                           dc.b $00
[000b37bd]                           dc.b $00
[000b37be]                           dc.b $00
[000b37bf]                           dc.b $03
[000b37c0]                           dc.b $00
[000b37c1]                           dc.b $03
[000b37c2]                           dc.b $00
[000b37c3]                           dc.b $01
_08_POP_ARR:
[000b37c4]                           dc.b $00
[000b37c5]                           dc.b $00
[000b37c6]                           dc.w $ffff
[000b37c8]                           dc.w $ffff
[000b37ca]                           dc.b $00
[000b37cb]                           dc.b $18
[000b37cc]                           dc.b $00
[000b37cd]                           dc.b $21
[000b37ce]                           dc.b $00
[000b37cf]                           dc.b $00
[000b37d0] 000b3484                  dc.l ARROW013
[000b37d4]                           dc.b $00
[000b37d5]                           dc.b $03
[000b37d6]                           dc.b $00
[000b37d7]                           dc.b $03
[000b37d8]                           dc.b $00
[000b37d9]                           dc.b $03
[000b37da]                           dc.b $00
[000b37db]                           dc.b $01
POP_END:
[000b37dc]                           dc.w $ffff
[000b37de]                           dc.b $00
[000b37df]                           dc.b $01
[000b37e0]                           dc.b $00
[000b37e1]                           dc.b $04
[000b37e2]                           dc.b $00
[000b37e3]                           dc.b $14
[000b37e4]                           dc.b $00
[000b37e5]                           dc.b $00
[000b37e6]                           dc.b $00
[000b37e7]                           dc.b $20
[000b37e8]                           dc.b $00
[000b37e9]                           dc.b $ff
[000b37ea]                           dc.w $1100
[000b37ec]                           dc.b $00
[000b37ed]                           dc.b $00
[000b37ee]                           dc.b $00
[000b37ef]                           dc.b $00
[000b37f0]                           dc.b $00
[000b37f1]                           dc.b $06
[000b37f2]                           dc.b $00
[000b37f3]                           dc.b $02
_01_POP_END:
[000b37f4]                           dc.b $00
[000b37f5]                           dc.b $02
[000b37f6]                           dc.w $ffff
[000b37f8]                           dc.w $ffff
[000b37fa]                           dc.b $00
[000b37fb]                           dc.b $18
[000b37fc]                           dc.b $00
[000b37fd]                           dc.b $01
[000b37fe]                           dc.b $00
[000b37ff]                           dc.b $00
[000b3800] 000b3364                  dc.l ARROW004
[000b3804]                           dc.b $00
[000b3805]                           dc.b $00
[000b3806]                           dc.b $00
[000b3807]                           dc.b $00
[000b3808]                           dc.b $00
[000b3809]                           dc.b $03
[000b380a]                           dc.b $00
[000b380b]                           dc.b $01
_02_POP_END:
[000b380c]                           dc.b $00
[000b380d]                           dc.b $03
[000b380e]                           dc.w $ffff
[000b3810]                           dc.w $ffff
[000b3812]                           dc.b $00
[000b3813]                           dc.b $18
[000b3814]                           dc.b $00
[000b3815]                           dc.b $01
[000b3816]                           dc.b $00
[000b3817]                           dc.b $00
[000b3818] 000b33a4                  dc.l ARROW006
[000b381c]                           dc.b $00
[000b381d]                           dc.b $03
[000b381e]                           dc.b $00
[000b381f]                           dc.b $00
[000b3820]                           dc.b $00
[000b3821]                           dc.b $03
[000b3822]                           dc.b $00
[000b3823]                           dc.b $01
_03_POP_END:
[000b3824]                           dc.b $00
[000b3825]                           dc.b $04
[000b3826]                           dc.w $ffff
[000b3828]                           dc.w $ffff
[000b382a]                           dc.b $00
[000b382b]                           dc.b $18
[000b382c]                           dc.b $00
[000b382d]                           dc.b $01
[000b382e]                           dc.b $00
[000b382f]                           dc.b $00
[000b3830] 000b3624                  dc.l A_ARROWS08
[000b3834]                           dc.b $00
[000b3835]                           dc.b $00
[000b3836]                           dc.b $00
[000b3837]                           dc.b $01
[000b3838]                           dc.b $00
[000b3839]                           dc.b $03
[000b383a]                           dc.b $00
[000b383b]                           dc.b $01
_04_POP_END:
[000b383c]                           dc.b $00
[000b383d]                           dc.b $00
[000b383e]                           dc.w $ffff
[000b3840]                           dc.w $ffff
[000b3842]                           dc.b $00
[000b3843]                           dc.b $18
[000b3844]                           dc.b $00
[000b3845]                           dc.b $21
[000b3846]                           dc.b $00
[000b3847]                           dc.b $00
[000b3848] 000b3644                  dc.l A_ARROWS09
[000b384c]                           dc.b $00
[000b384d]                           dc.b $03
[000b384e]                           dc.b $00
[000b384f]                           dc.b $01
[000b3850]                           dc.b $00
[000b3851]                           dc.b $03
[000b3852]                           dc.b $00
[000b3853]                           dc.b $01
POP_LEN:
[000b3854]                           dc.w $ffff
[000b3856]                           dc.b $00
[000b3857]                           dc.b $01
[000b3858]                           dc.b $00
[000b3859]                           dc.b $04
[000b385a]                           dc.b $00
[000b385b]                           dc.b $14
[000b385c]                           dc.b $00
[000b385d]                           dc.b $00
[000b385e]                           dc.b $00
[000b385f]                           dc.b $20
[000b3860]                           dc.b $00
[000b3861]                           dc.b $ff
[000b3862]                           dc.w $1100
[000b3864]                           dc.b $00
[000b3865]                           dc.b $00
[000b3866]                           dc.b $00
[000b3867]                           dc.b $00
[000b3868]                           dc.b $00
[000b3869]                           dc.b $06
[000b386a]                           dc.b $00
[000b386b]                           dc.b $02
_01_POP_LEN:
[000b386c]                           dc.b $00
[000b386d]                           dc.b $02
[000b386e]                           dc.w $ffff
[000b3870]                           dc.w $ffff
[000b3872]                           dc.b $00
[000b3873]                           dc.b $18
[000b3874]                           dc.b $00
[000b3875]                           dc.b $01
[000b3876]                           dc.b $00
[000b3877]                           dc.b $00
[000b3878] 000b3344                  dc.l ARROW003
[000b387c]                           dc.b $00
[000b387d]                           dc.b $00
[000b387e]                           dc.b $00
[000b387f]                           dc.b $00
[000b3880]                           dc.b $00
[000b3881]                           dc.b $03
[000b3882]                           dc.b $00
[000b3883]                           dc.b $01
_02_POP_LEN:
[000b3884]                           dc.b $00
[000b3885]                           dc.b $03
[000b3886]                           dc.w $ffff
[000b3888]                           dc.w $ffff
[000b388a]                           dc.b $00
[000b388b]                           dc.b $18
[000b388c]                           dc.b $00
[000b388d]                           dc.b $01
[000b388e]                           dc.b $00
[000b388f]                           dc.b $00
[000b3890] 000b3344                  dc.l ARROW003
[000b3894]                           dc.b $00
[000b3895]                           dc.b $03
[000b3896]                           dc.b $00
[000b3897]                           dc.b $00
[000b3898]                           dc.b $00
[000b3899]                           dc.b $03
[000b389a]                           dc.b $00
[000b389b]                           dc.b $01
_03_POP_LEN:
[000b389c]                           dc.b $00
[000b389d]                           dc.b $04
[000b389e]                           dc.w $ffff
[000b38a0]                           dc.w $ffff
[000b38a2]                           dc.b $00
[000b38a3]                           dc.b $18
[000b38a4]                           dc.b $00
[000b38a5]                           dc.b $01
[000b38a6]                           dc.b $00
[000b38a7]                           dc.b $00
[000b38a8] 000b3364                  dc.l ARROW004
[000b38ac]                           dc.b $00
[000b38ad]                           dc.b $00
[000b38ae]                           dc.b $00
[000b38af]                           dc.b $01
[000b38b0]                           dc.b $00
[000b38b1]                           dc.b $03
[000b38b2]                           dc.b $00
[000b38b3]                           dc.b $01
_04_POP_LEN:
[000b38b4]                           dc.b $00
[000b38b5]                           dc.b $00
[000b38b6]                           dc.w $ffff
[000b38b8]                           dc.w $ffff
[000b38ba]                           dc.b $00
[000b38bb]                           dc.b $18
[000b38bc]                           dc.b $00
[000b38bd]                           dc.b $21
[000b38be]                           dc.b $00
[000b38bf]                           dc.b $00
[000b38c0] 000b33a4                  dc.l ARROW006
[000b38c4]                           dc.b $00
[000b38c5]                           dc.b $03
[000b38c6]                           dc.b $00
[000b38c7]                           dc.b $01
[000b38c8]                           dc.b $00
[000b38c9]                           dc.b $03
[000b38ca]                           dc.b $00
[000b38cb]                           dc.b $01
POP_STYLESEL:
[000b38cc]                           dc.w $ffff
[000b38ce]                           dc.b $00
[000b38cf]                           dc.b $01
[000b38d0]                           dc.b $00
[000b38d1]                           dc.b $07
[000b38d2]                           dc.b $00
[000b38d3]                           dc.b $14
[000b38d4]                           dc.b $00
[000b38d5]                           dc.b $00
[000b38d6]                           dc.b $00
[000b38d7]                           dc.b $20
[000b38d8]                           dc.b $00
[000b38d9]                           dc.b $ff
[000b38da]                           dc.w $1100
[000b38dc]                           dc.b $00
[000b38dd]                           dc.b $00
[000b38de]                           dc.b $00
[000b38df]                           dc.b $00
[000b38e0]                           dc.b $00
[000b38e1]                           dc.b $06
[000b38e2]                           dc.b $00
[000b38e3]                           dc.b $07
_01_POP_STYLESEL:
[000b38e4]                           dc.b $00
[000b38e5]                           dc.b $02
[000b38e6]                           dc.w $ffff
[000b38e8]                           dc.w $ffff
[000b38ea]                           dc.b $00
[000b38eb]                           dc.b $18
[000b38ec]                           dc.b $00
[000b38ed]                           dc.b $01
[000b38ee]                           dc.b $00
[000b38ef]                           dc.b $00
[000b38f0] 000b33c4                  dc.l ARROW007
[000b38f4]                           dc.b $00
[000b38f5]                           dc.b $00
[000b38f6]                           dc.b $00
[000b38f7]                           dc.b $00
[000b38f8]                           dc.b $00
[000b38f9]                           dc.b $06
[000b38fa]                           dc.b $00
[000b38fb]                           dc.b $01
_02_POP_STYLESEL:
[000b38fc]                           dc.b $00
[000b38fd]                           dc.b $03
[000b38fe]                           dc.w $ffff
[000b3900]                           dc.w $ffff
[000b3902]                           dc.b $00
[000b3903]                           dc.b $18
[000b3904]                           dc.b $00
[000b3905]                           dc.b $01
[000b3906]                           dc.b $00
[000b3907]                           dc.b $00
[000b3908] 000b3564                  dc.l A_ARROWS02
[000b390c]                           dc.b $00
[000b390d]                           dc.b $00
[000b390e]                           dc.b $00
[000b390f]                           dc.b $01
[000b3910]                           dc.b $00
[000b3911]                           dc.b $06
[000b3912]                           dc.b $00
[000b3913]                           dc.b $01
_03_POP_STYLESEL:
[000b3914]                           dc.b $00
[000b3915]                           dc.b $04
[000b3916]                           dc.w $ffff
[000b3918]                           dc.w $ffff
[000b391a]                           dc.b $00
[000b391b]                           dc.b $18
[000b391c]                           dc.b $00
[000b391d]                           dc.b $01
[000b391e]                           dc.b $00
[000b391f]                           dc.b $00
[000b3920] 000b3584                  dc.l A_ARROWS03
[000b3924]                           dc.b $00
[000b3925]                           dc.b $00
[000b3926]                           dc.b $00
[000b3927]                           dc.b $02
[000b3928]                           dc.b $00
[000b3929]                           dc.b $06
[000b392a]                           dc.b $00
[000b392b]                           dc.b $01
_04_POP_STYLESEL:
[000b392c]                           dc.b $00
[000b392d]                           dc.b $05
[000b392e]                           dc.w $ffff
[000b3930]                           dc.w $ffff
[000b3932]                           dc.b $00
[000b3933]                           dc.b $18
[000b3934]                           dc.b $00
[000b3935]                           dc.b $01
[000b3936]                           dc.b $00
[000b3937]                           dc.b $00
[000b3938] 000b35a4                  dc.l A_ARROWS04
[000b393c]                           dc.b $00
[000b393d]                           dc.b $00
[000b393e]                           dc.b $00
[000b393f]                           dc.b $03
[000b3940]                           dc.b $00
[000b3941]                           dc.b $06
[000b3942]                           dc.b $00
[000b3943]                           dc.b $01
_05_POP_STYLESEL:
[000b3944]                           dc.b $00
[000b3945]                           dc.b $06
[000b3946]                           dc.w $ffff
[000b3948]                           dc.w $ffff
[000b394a]                           dc.b $00
[000b394b]                           dc.b $18
[000b394c]                           dc.b $00
[000b394d]                           dc.b $01
[000b394e]                           dc.b $00
[000b394f]                           dc.b $00
[000b3950] 000b35c4                  dc.l A_ARROWS05
[000b3954]                           dc.b $00
[000b3955]                           dc.b $00
[000b3956]                           dc.b $00
[000b3957]                           dc.b $04
[000b3958]                           dc.b $00
[000b3959]                           dc.b $06
[000b395a]                           dc.b $00
[000b395b]                           dc.b $01
_06_POP_STYLESEL:
[000b395c]                           dc.b $00
[000b395d]                           dc.b $07
[000b395e]                           dc.w $ffff
[000b3960]                           dc.w $ffff
[000b3962]                           dc.b $00
[000b3963]                           dc.b $18
[000b3964]                           dc.b $00
[000b3965]                           dc.b $01
[000b3966]                           dc.b $00
[000b3967]                           dc.b $00
[000b3968] 000b35e4                  dc.l A_ARROWS06
[000b396c]                           dc.b $00
[000b396d]                           dc.b $00
[000b396e]                           dc.b $00
[000b396f]                           dc.b $05
[000b3970]                           dc.b $00
[000b3971]                           dc.b $06
[000b3972]                           dc.b $00
[000b3973]                           dc.b $01
_07_POP_STYLESEL:
[000b3974]                           dc.b $00
[000b3975]                           dc.b $00
[000b3976]                           dc.w $ffff
[000b3978]                           dc.w $ffff
[000b397a]                           dc.b $00
[000b397b]                           dc.b $18
[000b397c]                           dc.b $00
[000b397d]                           dc.b $21
[000b397e]                           dc.b $00
[000b397f]                           dc.b $00
[000b3980] 000b3604                  dc.l A_ARROWS07
[000b3984]                           dc.b $00
[000b3985]                           dc.b $00
[000b3986]                           dc.b $00
[000b3987]                           dc.b $06
[000b3988]                           dc.b $00
[000b3989]                           dc.b $06
[000b398a]                           dc.b $00
[000b398b]                           dc.b $01
ED_ARROW:
[000b398c]                           dc.w $ffff
[000b398e]                           dc.b $00
[000b398f]                           dc.b $01
[000b3990]                           dc.b $00
[000b3991]                           dc.b $28
[000b3992]                           dc.b $00
[000b3993]                           dc.b $18
[000b3994]                           dc.b $00
[000b3995]                           dc.b $40
[000b3996]                           dc.b $00
[000b3997]                           dc.b $10
[000b3998] 000b3504                  dc.l A_3DBUTTON06
[000b399c]                           dc.b $00
[000b399d]                           dc.b $00
[000b399e]                           dc.b $00
[000b399f]                           dc.b $00
[000b39a0]                           dc.b $00
[000b39a1]                           dc.b $2e
[000b39a2]                           dc.b $00
[000b39a3]                           dc.b $10
_01_ED_ARROW:
[000b39a4]                           dc.b $00
[000b39a5]                           dc.b $03
[000b39a6]                           dc.b $00
[000b39a7]                           dc.b $02
[000b39a8]                           dc.b $00
[000b39a9]                           dc.b $02
[000b39aa]                           dc.b $00
[000b39ab]                           dc.b $18
[000b39ac]                           dc.b $00
[000b39ad]                           dc.b $40
[000b39ae]                           dc.b $00
[000b39af]                           dc.b $00
[000b39b0] 000b34a4                  dc.l A_3DBUTTON02
[000b39b4]                           dc.b $00
[000b39b5]                           dc.b $00
[000b39b6]                           dc.b $00
[000b39b7]                           dc.b $00
[000b39b8]                           dc.b $00
[000b39b9]                           dc.b $0c
[000b39ba]                           dc.b $00
[000b39bb]                           dc.b $04
_02_ED_ARROW:
[000b39bc]                           dc.b $00
[000b39bd]                           dc.b $01
[000b39be]                           dc.w $ffff
[000b39c0]                           dc.w $ffff
[000b39c2]                           dc.b $00
[000b39c3]                           dc.b $18
[000b39c4]                           dc.b $00
[000b39c5]                           dc.b $00
[000b39c6]                           dc.b $00
[000b39c7]                           dc.b $00
[000b39c8] 000b3304                  dc.l ARROW001
[000b39cc]                           dc.b $00
[000b39cd]                           dc.b $02
[000b39ce]                           dc.b $00
[000b39cf]                           dc.b $01
[000b39d0]                           dc.b $00
[000b39d1]                           dc.b $08
[000b39d2]                           dc.b $00
[000b39d3]                           dc.b $02
_03_ED_ARROW:
[000b39d4]                           dc.b $00
[000b39d5]                           dc.b $05
[000b39d6]                           dc.w $ffff
[000b39d8]                           dc.w $ffff
[000b39da]                           dc.b $00
[000b39db]                           dc.b $18
[000b39dc]                           dc.w $4007
[000b39de]                           dc.b $00
[000b39df]                           dc.b $10
[000b39e0] 000b34c4                  dc.l A_3DBUTTON03
[000b39e4]                           dc.b $00
[000b39e5]                           dc.b $13
[000b39e6]                           dc.b $00
[000b39e7]                           dc.b $01
[000b39e8]                           dc.b $00
[000b39e9]                           dc.b $0c
[000b39ea]                           dc.b $00
[000b39eb]                           dc.b $02
_03aED_ARROW:
[000b39ec] 0002732e                  dc.l ok
[000b39f0]                           dc.b $00
[000b39f1]                           dc.b $00
[000b39f2]                           dc.b $00
[000b39f3]                           dc.b $00
[000b39f4]                           dc.w $8000
[000b39f6]                           dc.w $884f
[000b39f8]                           dc.b $00
[000b39f9]                           dc.b $00
[000b39fa]                           dc.b $00
[000b39fb]                           dc.b $00
[000b39fc]                           dc.b $00
[000b39fd]                           dc.b $00
[000b39fe]                           dc.b $00
[000b39ff]                           dc.b $00
[000b3a00]                           dc.b $00
[000b3a01]                           dc.b $00
[000b3a02]                           dc.b $00
[000b3a03]                           dc.b $00
_05_ED_ARROW:
[000b3a04]                           dc.b $00
[000b3a05]                           dc.b $07
[000b3a06]                           dc.w $ffff
[000b3a08]                           dc.w $ffff
[000b3a0a]                           dc.b $00
[000b3a0b]                           dc.b $18
[000b3a0c]                           dc.w $4005
[000b3a0e]                           dc.b $00
[000b3a0f]                           dc.b $10
[000b3a10] 000b34e4                  dc.l A_3DBUTTON05
[000b3a14]                           dc.b $00
[000b3a15]                           dc.b $21
[000b3a16]                           dc.b $00
[000b3a17]                           dc.b $01
[000b3a18]                           dc.b $00
[000b3a19]                           dc.b $0c
[000b3a1a]                           dc.b $00
[000b3a1b]                           dc.b $02
_05aED_ARROW:
[000b3a1c] 00027308                  dc.l abort
[000b3a20]                           dc.b $00
[000b3a21]                           dc.b $00
[000b3a22]                           dc.b $00
[000b3a23]                           dc.b $00
[000b3a24]                           dc.w $8000
[000b3a26]                           dc.w $8841
[000b3a28]                           dc.b $00
[000b3a29]                           dc.b $00
[000b3a2a]                           dc.b $00
[000b3a2b]                           dc.b $00
[000b3a2c]                           dc.b $00
[000b3a2d]                           dc.b $00
[000b3a2e]                           dc.b $00
[000b3a2f]                           dc.b $00
[000b3a30]                           dc.b $00
[000b3a31]                           dc.b $00
[000b3a32]                           dc.b $00
[000b3a33]                           dc.b $00
_07_ED_ARROW:
[000b3a34]                           dc.b $00
[000b3a35]                           dc.b $09
[000b3a36]                           dc.b $00
[000b3a37]                           dc.b $08
[000b3a38]                           dc.b $00
[000b3a39]                           dc.b $08
[000b3a3a]                           dc.b $00
[000b3a3b]                           dc.b $1c
[000b3a3c]                           dc.b $00
[000b3a3d]                           dc.b $40
[000b3a3e]                           dc.b $00
[000b3a3f]                           dc.b $00
[000b3a40] 000b32a0                  dc.l TEXT_07
[000b3a44]                           dc.b $00
[000b3a45]                           dc.b $01
[000b3a46]                           dc.b $00
[000b3a47]                           dc.b $05
[000b3a48]                           dc.b $00
[000b3a49]                           dc.b $0a
[000b3a4a]                           dc.b $00
[000b3a4b]                           dc.b $01
_08_ED_ARROW:
[000b3a4c]                           dc.b $00
[000b3a4d]                           dc.b $07
[000b3a4e]                           dc.w $ffff
[000b3a50]                           dc.w $ffff
[000b3a52]                           dc.b $00
[000b3a53]                           dc.b $18
[000b3a54]                           dc.b $00
[000b3a55]                           dc.b $40
[000b3a56]                           dc.b $00
[000b3a57]                           dc.b $00
[000b3a58] 000b3544                  dc.l A_ARROWS01
[000b3a5c]                           dc.b $00
[000b3a5d]                           dc.b $00
[000b3a5e]                           dc.b $00
[000b3a5f]                           dc.b $00
[000b3a60]                           dc.b $00
[000b3a61]                           dc.b $01
[000b3a62]                           dc.b $00
[000b3a63]                           dc.b $01
_09_ED_ARROW:
[000b3a64]                           dc.b $00
[000b3a65]                           dc.b $0d
[000b3a66]                           dc.b $00
[000b3a67]                           dc.b $0b
[000b3a68]                           dc.b $00
[000b3a69]                           dc.b $0c
[000b3a6a]                           dc.b $00
[000b3a6b]                           dc.b $14
[000b3a6c]                           dc.b $00
[000b3a6d]                           dc.b $40
[000b3a6e]                           dc.b $00
[000b3a6f]                           dc.b $20
[000b3a70]                           dc.b $00
[000b3a71]                           dc.b $ff
[000b3a72]                           dc.w $1101
[000b3a74]                           dc.b $00
[000b3a75]                           dc.b $0b
[000b3a76]                           dc.b $00
[000b3a77]                           dc.b $05
[000b3a78]                           dc.b $00
[000b3a79]                           dc.b $06
[000b3a7a]                           dc.b $00
[000b3a7b]                           dc.b $01
_09aED_ARROW:
[000b3a7c] 00026a94                  dc.l edar_arr
[000b3a80]                           dc.b $00
[000b3a81]                           dc.b $00
[000b3a82]                           dc.b $00
[000b3a83]                           dc.b $00
[000b3a84]                           dc.w $8000
[000b3a86]                           dc.w $8852
[000b3a88]                           dc.b $00
[000b3a89]                           dc.b $00
[000b3a8a]                           dc.b $00
[000b3a8b]                           dc.b $00
[000b3a8c]                           dc.b $00
[000b3a8d]                           dc.b $00
[000b3a8e]                           dc.b $00
[000b3a8f]                           dc.b $00
[000b3a90]                           dc.b $00
[000b3a91]                           dc.b $00
[000b3a92]                           dc.b $00
[000b3a93]                           dc.b $00
_11_ED_ARROW:
[000b3a94]                           dc.b $00
[000b3a95]                           dc.b $0c
[000b3a96]                           dc.w $ffff
[000b3a98]                           dc.w $ffff
[000b3a9a]                           dc.b $00
[000b3a9b]                           dc.b $18
[000b3a9c]                           dc.b $00
[000b3a9d]                           dc.b $00
[000b3a9e]                           dc.b $00
[000b3a9f]                           dc.b $00
[000b3aa0] 000b33e4                  dc.l ARROW008
[000b3aa4]                           dc.b $00
[000b3aa5]                           dc.b $00
[000b3aa6]                           dc.b $00
[000b3aa7]                           dc.b $00
[000b3aa8]                           dc.b $00
[000b3aa9]                           dc.b $03
[000b3aaa]                           dc.b $00
[000b3aab]                           dc.b $01
_12_ED_ARROW:
[000b3aac]                           dc.b $00
[000b3aad]                           dc.b $09
[000b3aae]                           dc.w $ffff
[000b3ab0]                           dc.w $ffff
[000b3ab2]                           dc.b $00
[000b3ab3]                           dc.b $18
[000b3ab4]                           dc.b $00
[000b3ab5]                           dc.b $00
[000b3ab6]                           dc.b $00
[000b3ab7]                           dc.b $00
[000b3ab8] 000b3444                  dc.l ARROW011
[000b3abc]                           dc.b $00
[000b3abd]                           dc.b $03
[000b3abe]                           dc.b $00
[000b3abf]                           dc.b $00
[000b3ac0]                           dc.b $00
[000b3ac1]                           dc.b $03
[000b3ac2]                           dc.b $00
[000b3ac3]                           dc.b $01
_13_ED_ARROW:
[000b3ac4]                           dc.b $00
[000b3ac5]                           dc.b $0f
[000b3ac6]                           dc.b $00
[000b3ac7]                           dc.b $0e
[000b3ac8]                           dc.b $00
[000b3ac9]                           dc.b $0e
[000b3aca]                           dc.b $00
[000b3acb]                           dc.b $1c
[000b3acc]                           dc.b $00
[000b3acd]                           dc.b $40
[000b3ace]                           dc.b $00
[000b3acf]                           dc.b $00
[000b3ad0] 000b32bf                  dc.l TEXT_11
[000b3ad4]                           dc.b $00
[000b3ad5]                           dc.b $13
[000b3ad6]                           dc.b $00
[000b3ad7]                           dc.b $05
[000b3ad8]                           dc.b $00
[000b3ad9]                           dc.b $06
[000b3ada]                           dc.b $00
[000b3adb]                           dc.b $01
_14_ED_ARROW:
[000b3adc]                           dc.b $00
[000b3add]                           dc.b $0d
[000b3ade]                           dc.w $ffff
[000b3ae0]                           dc.w $ffff
[000b3ae2]                           dc.b $00
[000b3ae3]                           dc.b $18
[000b3ae4]                           dc.b $00
[000b3ae5]                           dc.b $40
[000b3ae6]                           dc.b $00
[000b3ae7]                           dc.b $00
[000b3ae8] 000b3544                  dc.l A_ARROWS01
[000b3aec]                           dc.b $00
[000b3aed]                           dc.b $00
[000b3aee]                           dc.b $00
[000b3aef]                           dc.b $00
[000b3af0]                           dc.b $00
[000b3af1]                           dc.b $01
[000b3af2]                           dc.b $00
[000b3af3]                           dc.b $01
_15_ED_ARROW:
[000b3af4]                           dc.b $00
[000b3af5]                           dc.b $13
[000b3af6]                           dc.b $00
[000b3af7]                           dc.b $11
[000b3af8]                           dc.b $00
[000b3af9]                           dc.b $12
[000b3afa]                           dc.b $00
[000b3afb]                           dc.b $14
[000b3afc]                           dc.b $00
[000b3afd]                           dc.b $40
[000b3afe]                           dc.b $00
[000b3aff]                           dc.b $20
[000b3b00]                           dc.b $00
[000b3b01]                           dc.b $ff
[000b3b02]                           dc.w $1101
[000b3b04]                           dc.b $00
[000b3b05]                           dc.b $1a
[000b3b06]                           dc.b $00
[000b3b07]                           dc.b $05
[000b3b08]                           dc.b $00
[000b3b09]                           dc.b $12
[000b3b0a]                           dc.b $00
[000b3b0b]                           dc.b $01
_15aED_ARROW:
[000b3b0c] 00026bba                  dc.l edar_col
[000b3b10]                           dc.b $00
[000b3b11]                           dc.b $00
[000b3b12]                           dc.b $00
[000b3b13]                           dc.b $00
[000b3b14]                           dc.w $8000
[000b3b16]                           dc.w $8846
[000b3b18]                           dc.b $00
[000b3b19]                           dc.b $00
[000b3b1a]                           dc.b $00
[000b3b1b]                           dc.b $00
[000b3b1c]                           dc.b $00
[000b3b1d]                           dc.b $00
[000b3b1e]                           dc.b $00
[000b3b1f]                           dc.b $00
[000b3b20]                           dc.b $00
[000b3b21]                           dc.b $00
[000b3b22]                           dc.b $00
[000b3b23]                           dc.b $00
_17_ED_ARROW:
[000b3b24]                           dc.b $00
[000b3b25]                           dc.b $12
[000b3b26]                           dc.w $ffff
[000b3b28]                           dc.w $ffff
[000b3b2a]                           dc.b $00
[000b3b2b]                           dc.b $14
[000b3b2c]                           dc.b $00
[000b3b2d]                           dc.b $00
[000b3b2e]                           dc.b $00
[000b3b2f]                           dc.b $00
[000b3b30]                           dc.b $00
[000b3b31]                           dc.b $01
[000b3b32]                           dc.w $1171
[000b3b34]                           dc.b $00
[000b3b35]                           dc.b $10
[000b3b36]                           dc.b $00
[000b3b37]                           dc.b $00
[000b3b38]                           dc.b $00
[000b3b39]                           dc.b $02
[000b3b3a]                           dc.b $00
[000b3b3b]                           dc.b $01
_18_ED_ARROW:
[000b3b3c]                           dc.b $00
[000b3b3d]                           dc.b $0f
[000b3b3e]                           dc.w $ffff
[000b3b40]                           dc.w $ffff
[000b3b42]                           dc.b $00
[000b3b43]                           dc.b $18
[000b3b44]                           dc.b $00
[000b3b45]                           dc.b $00
[000b3b46]                           dc.b $00
[000b3b47]                           dc.b $00
[000b3b48] 000b3524                  dc.l A_3DBUTTON23
[000b3b4c]                           dc.b $00
[000b3b4d]                           dc.b $00
[000b3b4e]                           dc.b $00
[000b3b4f]                           dc.b $00
[000b3b50]                           dc.b $00
[000b3b51]                           dc.b $10
[000b3b52]                           dc.b $00
[000b3b53]                           dc.b $01
_19_ED_ARROW:
[000b3b54]                           dc.b $00
[000b3b55]                           dc.b $15
[000b3b56]                           dc.b $00
[000b3b57]                           dc.b $14
[000b3b58]                           dc.b $00
[000b3b59]                           dc.b $14
[000b3b5a]                           dc.b $00
[000b3b5b]                           dc.b $1c
[000b3b5c]                           dc.b $00
[000b3b5d]                           dc.b $40
[000b3b5e]                           dc.b $00
[000b3b5f]                           dc.b $00
[000b3b60] 000b32b0                  dc.l TEXT_09
[000b3b64]                           dc.b $00
[000b3b65]                           dc.b $03
[000b3b66]                           dc.b $00
[000b3b67]                           dc.b $07
[000b3b68]                           dc.b $00
[000b3b69]                           dc.b $07
[000b3b6a]                           dc.b $00
[000b3b6b]                           dc.b $01
_20_ED_ARROW:
[000b3b6c]                           dc.b $00
[000b3b6d]                           dc.b $13
[000b3b6e]                           dc.w $ffff
[000b3b70]                           dc.w $ffff
[000b3b72]                           dc.b $00
[000b3b73]                           dc.b $18
[000b3b74]                           dc.b $00
[000b3b75]                           dc.b $40
[000b3b76]                           dc.b $00
[000b3b77]                           dc.b $00
[000b3b78] 000b3544                  dc.l A_ARROWS01
[000b3b7c]                           dc.b $00
[000b3b7d]                           dc.b $00
[000b3b7e]                           dc.b $00
[000b3b7f]                           dc.b $00
[000b3b80]                           dc.b $00
[000b3b81]                           dc.b $01
[000b3b82]                           dc.b $00
[000b3b83]                           dc.b $01
_21_ED_ARROW:
[000b3b84]                           dc.b $00
[000b3b85]                           dc.b $19
[000b3b86]                           dc.b $00
[000b3b87]                           dc.b $17
[000b3b88]                           dc.b $00
[000b3b89]                           dc.b $18
[000b3b8a]                           dc.b $00
[000b3b8b]                           dc.b $14
[000b3b8c]                           dc.b $00
[000b3b8d]                           dc.b $40
[000b3b8e]                           dc.b $00
[000b3b8f]                           dc.b $20
[000b3b90]                           dc.b $00
[000b3b91]                           dc.b $ff
[000b3b92]                           dc.w $1101
[000b3b94]                           dc.b $00
[000b3b95]                           dc.b $0b
[000b3b96]                           dc.b $00
[000b3b97]                           dc.b $07
[000b3b98]                           dc.b $00
[000b3b99]                           dc.b $06
[000b3b9a]                           dc.b $00
[000b3b9b]                           dc.b $01
_21aED_ARROW:
[000b3b9c] 00026d9a                  dc.l edar_len
[000b3ba0]                           dc.b $00
[000b3ba1]                           dc.b $00
[000b3ba2]                           dc.b $00
[000b3ba3]                           dc.b $00
[000b3ba4]                           dc.w $8000
[000b3ba6]                           dc.w $884c
[000b3ba8]                           dc.b $00
[000b3ba9]                           dc.b $00
[000b3baa]                           dc.b $00
[000b3bab]                           dc.b $00
[000b3bac]                           dc.b $00
[000b3bad]                           dc.b $00
[000b3bae]                           dc.b $00
[000b3baf]                           dc.b $00
[000b3bb0]                           dc.b $00
[000b3bb1]                           dc.b $00
[000b3bb2]                           dc.b $00
[000b3bb3]                           dc.b $00
_23_ED_ARROW:
[000b3bb4]                           dc.b $00
[000b3bb5]                           dc.b $18
[000b3bb6]                           dc.w $ffff
[000b3bb8]                           dc.w $ffff
[000b3bba]                           dc.b $00
[000b3bbb]                           dc.b $18
[000b3bbc]                           dc.b $00
[000b3bbd]                           dc.b $00
[000b3bbe]                           dc.b $00
[000b3bbf]                           dc.b $00
[000b3bc0] 000b3344                  dc.l ARROW003
[000b3bc4]                           dc.b $00
[000b3bc5]                           dc.b $00
[000b3bc6]                           dc.b $00
[000b3bc7]                           dc.b $00
[000b3bc8]                           dc.b $00
[000b3bc9]                           dc.b $03
[000b3bca]                           dc.b $00
[000b3bcb]                           dc.b $01
_24_ED_ARROW:
[000b3bcc]                           dc.b $00
[000b3bcd]                           dc.b $15
[000b3bce]                           dc.w $ffff
[000b3bd0]                           dc.w $ffff
[000b3bd2]                           dc.b $00
[000b3bd3]                           dc.b $18
[000b3bd4]                           dc.b $00
[000b3bd5]                           dc.b $00
[000b3bd6]                           dc.b $00
[000b3bd7]                           dc.b $00
[000b3bd8] 000b3344                  dc.l ARROW003
[000b3bdc]                           dc.b $00
[000b3bdd]                           dc.b $03
[000b3bde]                           dc.b $00
[000b3bdf]                           dc.b $00
[000b3be0]                           dc.b $00
[000b3be1]                           dc.b $03
[000b3be2]                           dc.b $00
[000b3be3]                           dc.b $01
_25_ED_ARROW:
[000b3be4]                           dc.b $00
[000b3be5]                           dc.b $1b
[000b3be6]                           dc.b $00
[000b3be7]                           dc.b $1a
[000b3be8]                           dc.b $00
[000b3be9]                           dc.b $1a
[000b3bea]                           dc.b $00
[000b3beb]                           dc.b $1c
[000b3bec]                           dc.b $00
[000b3bed]                           dc.b $40
[000b3bee]                           dc.b $00
[000b3bef]                           dc.b $00
[000b3bf0] 000b32c6                  dc.l TEXT_12
[000b3bf4]                           dc.b $00
[000b3bf5]                           dc.b $14
[000b3bf6]                           dc.b $00
[000b3bf7]                           dc.b $07
[000b3bf8]                           dc.b $00
[000b3bf9]                           dc.b $06
[000b3bfa]                           dc.b $00
[000b3bfb]                           dc.b $01
_26_ED_ARROW:
[000b3bfc]                           dc.b $00
[000b3bfd]                           dc.b $19
[000b3bfe]                           dc.w $ffff
[000b3c00]                           dc.w $ffff
[000b3c02]                           dc.b $00
[000b3c03]                           dc.b $18
[000b3c04]                           dc.b $00
[000b3c05]                           dc.b $40
[000b3c06]                           dc.b $00
[000b3c07]                           dc.b $00
[000b3c08] 000b3544                  dc.l A_ARROWS01
[000b3c0c]                           dc.b $00
[000b3c0d]                           dc.b $00
[000b3c0e]                           dc.b $00
[000b3c0f]                           dc.b $00
[000b3c10]                           dc.b $00
[000b3c11]                           dc.b $01
[000b3c12]                           dc.b $00
[000b3c13]                           dc.b $01
_27_ED_ARROW:
[000b3c14]                           dc.b $00
[000b3c15]                           dc.b $1e
[000b3c16]                           dc.b $00
[000b3c17]                           dc.b $1d
[000b3c18]                           dc.b $00
[000b3c19]                           dc.b $1d
[000b3c1a]                           dc.b $00
[000b3c1b]                           dc.b $14
[000b3c1c]                           dc.b $00
[000b3c1d]                           dc.b $40
[000b3c1e]                           dc.b $00
[000b3c1f]                           dc.b $20
[000b3c20]                           dc.b $00
[000b3c21]                           dc.b $ff
[000b3c22]                           dc.w $1101
[000b3c24]                           dc.b $00
[000b3c25]                           dc.b $1a
[000b3c26]                           dc.b $00
[000b3c27]                           dc.b $07
[000b3c28]                           dc.b $00
[000b3c29]                           dc.b $06
[000b3c2a]                           dc.b $00
[000b3c2b]                           dc.b $01
_27aED_ARROW:
[000b3c2c] 00026ecc                  dc.l edar_stil
[000b3c30]                           dc.b $00
[000b3c31]                           dc.b $00
[000b3c32]                           dc.b $00
[000b3c33]                           dc.b $00
[000b3c34]                           dc.w $8000
[000b3c36]                           dc.w $8853
[000b3c38]                           dc.b $00
[000b3c39]                           dc.b $00
[000b3c3a]                           dc.b $00
[000b3c3b]                           dc.b $00
[000b3c3c]                           dc.b $00
[000b3c3d]                           dc.b $00
[000b3c3e]                           dc.b $00
[000b3c3f]                           dc.b $00
[000b3c40]                           dc.b $00
[000b3c41]                           dc.b $00
[000b3c42]                           dc.b $00
[000b3c43]                           dc.b $00
_29_ED_ARROW:
[000b3c44]                           dc.b $00
[000b3c45]                           dc.b $1b
[000b3c46]                           dc.w $ffff
[000b3c48]                           dc.w $ffff
[000b3c4a]                           dc.b $00
[000b3c4b]                           dc.b $18
[000b3c4c]                           dc.b $00
[000b3c4d]                           dc.b $00
[000b3c4e]                           dc.b $00
[000b3c4f]                           dc.b $00
[000b3c50] 000b33c4                  dc.l ARROW007
[000b3c54]                           dc.b $00
[000b3c55]                           dc.b $00
[000b3c56]                           dc.b $00
[000b3c57]                           dc.b $00
[000b3c58]                           dc.b $00
[000b3c59]                           dc.b $06
[000b3c5a]                           dc.b $00
[000b3c5b]                           dc.b $01
_30_ED_ARROW:
[000b3c5c]                           dc.b $00
[000b3c5d]                           dc.b $20
[000b3c5e]                           dc.b $00
[000b3c5f]                           dc.b $1f
[000b3c60]                           dc.b $00
[000b3c61]                           dc.b $1f
[000b3c62]                           dc.b $00
[000b3c63]                           dc.b $1c
[000b3c64]                           dc.b $00
[000b3c65]                           dc.b $40
[000b3c66]                           dc.b $00
[000b3c67]                           dc.b $00
[000b3c68] 000b32b8                  dc.l TEXT_10
[000b3c6c]                           dc.b $00
[000b3c6d]                           dc.b $04
[000b3c6e]                           dc.b $00
[000b3c6f]                           dc.b $09
[000b3c70]                           dc.b $00
[000b3c71]                           dc.b $06
[000b3c72]                           dc.b $00
[000b3c73]                           dc.b $01
_31_ED_ARROW:
[000b3c74]                           dc.b $00
[000b3c75]                           dc.b $1e
[000b3c76]                           dc.w $ffff
[000b3c78]                           dc.w $ffff
[000b3c7a]                           dc.b $00
[000b3c7b]                           dc.b $18
[000b3c7c]                           dc.b $00
[000b3c7d]                           dc.b $40
[000b3c7e]                           dc.b $00
[000b3c7f]                           dc.b $00
[000b3c80] 000b3544                  dc.l A_ARROWS01
[000b3c84]                           dc.b $00
[000b3c85]                           dc.b $00
[000b3c86]                           dc.b $00
[000b3c87]                           dc.b $00
[000b3c88]                           dc.b $00
[000b3c89]                           dc.b $01
[000b3c8a]                           dc.b $00
[000b3c8b]                           dc.b $01
_32_ED_ARROW:
[000b3c8c]                           dc.b $00
[000b3c8d]                           dc.b $24
[000b3c8e]                           dc.b $00
[000b3c8f]                           dc.b $22
[000b3c90]                           dc.b $00
[000b3c91]                           dc.b $23
[000b3c92]                           dc.b $00
[000b3c93]                           dc.b $14
[000b3c94]                           dc.b $00
[000b3c95]                           dc.b $40
[000b3c96]                           dc.b $00
[000b3c97]                           dc.b $20
[000b3c98]                           dc.b $00
[000b3c99]                           dc.b $ff
[000b3c9a]                           dc.w $1101
[000b3c9c]                           dc.b $00
[000b3c9d]                           dc.b $0b
[000b3c9e]                           dc.b $00
[000b3c9f]                           dc.b $09
[000b3ca0]                           dc.b $00
[000b3ca1]                           dc.b $06
[000b3ca2]                           dc.b $00
[000b3ca3]                           dc.b $01
_32aED_ARROW:
[000b3ca4] 00026c16                  dc.l edar_ends
[000b3ca8]                           dc.b $00
[000b3ca9]                           dc.b $00
[000b3caa]                           dc.b $00
[000b3cab]                           dc.b $00
[000b3cac]                           dc.w $8000
[000b3cae]                           dc.w $8845
[000b3cb0]                           dc.b $00
[000b3cb1]                           dc.b $00
[000b3cb2]                           dc.b $00
[000b3cb3]                           dc.b $00
[000b3cb4]                           dc.b $00
[000b3cb5]                           dc.b $00
[000b3cb6]                           dc.b $00
[000b3cb7]                           dc.b $00
[000b3cb8]                           dc.b $00
[000b3cb9]                           dc.b $00
[000b3cba]                           dc.b $00
[000b3cbb]                           dc.b $00
_34_ED_ARROW:
[000b3cbc]                           dc.b $00
[000b3cbd]                           dc.b $23
[000b3cbe]                           dc.w $ffff
[000b3cc0]                           dc.w $ffff
[000b3cc2]                           dc.b $00
[000b3cc3]                           dc.b $18
[000b3cc4]                           dc.b $00
[000b3cc5]                           dc.b $00
[000b3cc6]                           dc.b $00
[000b3cc7]                           dc.b $00
[000b3cc8] 000b3344                  dc.l ARROW003
[000b3ccc]                           dc.b $00
[000b3ccd]                           dc.b $00
[000b3cce]                           dc.b $00
[000b3ccf]                           dc.b $00
[000b3cd0]                           dc.b $00
[000b3cd1]                           dc.b $03
[000b3cd2]                           dc.b $00
[000b3cd3]                           dc.b $01
_35_ED_ARROW:
[000b3cd4]                           dc.b $00
[000b3cd5]                           dc.b $20
[000b3cd6]                           dc.w $ffff
[000b3cd8]                           dc.w $ffff
[000b3cda]                           dc.b $00
[000b3cdb]                           dc.b $18
[000b3cdc]                           dc.b $00
[000b3cdd]                           dc.b $00
[000b3cde]                           dc.b $00
[000b3cdf]                           dc.b $00
[000b3ce0] 000b3344                  dc.l ARROW003
[000b3ce4]                           dc.b $00
[000b3ce5]                           dc.b $03
[000b3ce6]                           dc.b $00
[000b3ce7]                           dc.b $00
[000b3ce8]                           dc.b $00
[000b3ce9]                           dc.b $03
[000b3cea]                           dc.b $00
[000b3ceb]                           dc.b $01
_36_ED_ARROW:
[000b3cec]                           dc.b $00
[000b3ced]                           dc.b $26
[000b3cee]                           dc.w $ffff
[000b3cf0]                           dc.w $ffff
[000b3cf2]                           dc.b $00
[000b3cf3]                           dc.b $18
[000b3cf4]                           dc.b $00
[000b3cf5]                           dc.b $41
[000b3cf6]                           dc.b $00
[000b3cf7]                           dc.b $01
[000b3cf8] 000b36c4                  dc.l A_CHECKBOX03
[000b3cfc]                           dc.b $00
[000b3cfd]                           dc.b $17
[000b3cfe]                           dc.b $00
[000b3cff]                           dc.b $09
[000b3d00]                           dc.b $00
[000b3d01]                           dc.b $08
[000b3d02]                           dc.b $00
[000b3d03]                           dc.b $01
_36aED_ARROW:
[000b3d04] 00026d64                  dc.l edar_fat
[000b3d08]                           dc.b $00
[000b3d09]                           dc.b $00
[000b3d0a]                           dc.b $00
[000b3d0b]                           dc.b $00
[000b3d0c]                           dc.w $8000
[000b3d0e]                           dc.w $8842
[000b3d10]                           dc.b $00
[000b3d11]                           dc.b $00
[000b3d12]                           dc.b $00
[000b3d13]                           dc.b $00
[000b3d14]                           dc.b $00
[000b3d15]                           dc.b $00
[000b3d16]                           dc.b $00
[000b3d17]                           dc.b $00
[000b3d18]                           dc.b $00
[000b3d19]                           dc.b $00
[000b3d1a]                           dc.b $00
[000b3d1b]                           dc.b $00
_38_ED_ARROW:
[000b3d1c]                           dc.b $00
[000b3d1d]                           dc.b $28
[000b3d1e]                           dc.w $ffff
[000b3d20]                           dc.w $ffff
[000b3d22]                           dc.b $00
[000b3d23]                           dc.b $18
[000b3d24]                           dc.b $00
[000b3d25]                           dc.b $41
[000b3d26]                           dc.b $00
[000b3d27]                           dc.b $01
[000b3d28] 000b36a4                  dc.l A_CHECKBOX02
[000b3d2c]                           dc.b $00
[000b3d2d]                           dc.b $21
[000b3d2e]                           dc.b $00
[000b3d2f]                           dc.b $09
[000b3d30]                           dc.b $00
[000b3d31]                           dc.b $0b
[000b3d32]                           dc.b $00
[000b3d33]                           dc.b $01
_38aED_ARROW:
[000b3d34] 00026a5e                  dc.l edar_3d
[000b3d38]                           dc.b $00
[000b3d39]                           dc.b $00
[000b3d3a]                           dc.b $00
[000b3d3b]                           dc.b $00
[000b3d3c]                           dc.w $8000
[000b3d3e]                           dc.w $8844
[000b3d40]                           dc.b $00
[000b3d41]                           dc.b $00
[000b3d42]                           dc.b $00
[000b3d43]                           dc.b $00
[000b3d44]                           dc.b $00
[000b3d45]                           dc.b $00
[000b3d46]                           dc.b $00
[000b3d47]                           dc.b $00
[000b3d48]                           dc.b $00
[000b3d49]                           dc.b $00
[000b3d4a]                           dc.b $00
[000b3d4b]                           dc.b $00
_40_ED_ARROW:
[000b3d4c]                           dc.b $00
[000b3d4d]                           dc.b $00
[000b3d4e]                           dc.b $00
[000b3d4f]                           dc.b $29
[000b3d50]                           dc.b $00
[000b3d51]                           dc.b $2c
[000b3d52]                           dc.b $00
[000b3d53]                           dc.b $18
[000b3d54]                           dc.b $00
[000b3d55]                           dc.b $40
[000b3d56]                           dc.b $00
[000b3d57]                           dc.b $00
[000b3d58] 000b36e4                  dc.l A_INNERFRAME03
[000b3d5c]                           dc.b $00
[000b3d5d]                           dc.b $01
[000b3d5e]                           dc.b $00
[000b3d5f]                           dc.b $0b
[000b3d60]                           dc.b $00
[000b3d61]                           dc.b $2c
[000b3d62]                           dc.b $00
[000b3d63]                           dc.b $05
_41_ED_ARROW:
[000b3d64]                           dc.b $00
[000b3d65]                           dc.b $2a
[000b3d66]                           dc.w $ffff
[000b3d68]                           dc.w $ffff
[000b3d6a]                           dc.b $00
[000b3d6b]                           dc.b $1c
[000b3d6c]                           dc.b $00
[000b3d6d]                           dc.b $00
[000b3d6e]                           dc.b $00
[000b3d6f]                           dc.b $00
[000b3d70] 000b32cc                  dc.l TEXT_13
[000b3d74]                           dc.b $00
[000b3d75]                           dc.b $01
[000b3d76]                           dc.b $00
[000b3d77]                           dc.b $01
[000b3d78]                           dc.b $00
[000b3d79]                           dc.b $0e
[000b3d7a]                           dc.b $00
[000b3d7b]                           dc.b $01
_42_ED_ARROW:
[000b3d7c]                           dc.b $00
[000b3d7d]                           dc.b $2b
[000b3d7e]                           dc.w $ffff
[000b3d80]                           dc.w $ffff
[000b3d82]                           dc.b $00
[000b3d83]                           dc.b $1c
[000b3d84]                           dc.b $00
[000b3d85]                           dc.b $00
[000b3d86]                           dc.b $00
[000b3d87]                           dc.b $00
[000b3d88] 000b32db                  dc.l TEXT_14
[000b3d8c]                           dc.b $00
[000b3d8d]                           dc.b $01
[000b3d8e]                           dc.b $00
[000b3d8f]                           dc.b $03
[000b3d90]                           dc.b $00
[000b3d91]                           dc.b $0d
[000b3d92]                           dc.b $00
[000b3d93]                           dc.b $01
_43_ED_ARROW:
[000b3d94]                           dc.b $00
[000b3d95]                           dc.b $2c
[000b3d96]                           dc.w $ffff
[000b3d98]                           dc.w $ffff
[000b3d9a]                           dc.b $00
[000b3d9b]                           dc.b $18
[000b3d9c]                           dc.b $00
[000b3d9d]                           dc.b $08
[000b3d9e]                           dc.b $00
[000b3d9f]                           dc.b $10
[000b3da0] 000b3664                  dc.l A_BOXED03
[000b3da4]                           dc.b $00
[000b3da5]                           dc.b $10
[000b3da6]                           dc.b $00
[000b3da7]                           dc.b $01
[000b3da8]                           dc.b $00
[000b3da9]                           dc.b $1b
[000b3daa]                           dc.b $00
[000b3dab]                           dc.b $01
_44_ED_ARROW:
[000b3dac]                           dc.b $00
[000b3dad]                           dc.b $28
[000b3dae]                           dc.w $ffff
[000b3db0]                           dc.w $ffff
[000b3db2]                           dc.b $00
[000b3db3]                           dc.b $18
[000b3db4]                           dc.b $00
[000b3db5]                           dc.b $28
[000b3db6]                           dc.b $00
[000b3db7]                           dc.b $10
[000b3db8] 000b3684                  dc.l A_BOXED04
[000b3dbc]                           dc.b $00
[000b3dbd]                           dc.b $10
[000b3dbe]                           dc.b $00
[000b3dbf]                           dc.b $03
[000b3dc0]                           dc.b $00
[000b3dc1]                           dc.b $1b
[000b3dc2]                           dc.b $00
[000b3dc3]                           dc.b $01
arrow:
[000b3dc4] 0005b212                  dc.l A_arrows
[000b3dc8]                           dc.w $2251
[000b3dca]                           dc.b $00
[000b3dcb]                           dc.b $01
[000b3dcc]                           dc.b $00
[000b3dcd]                           dc.b $00
[000b3dce]                           dc.b $00
[000b3dcf]                           dc.b $00
[000b3dd0]                           dc.b $00
[000b3dd1]                           dc.b $00
[000b3dd2]                           dc.b $00
[000b3dd3]                           dc.b $00
[000b3dd4]                           dc.b $00
[000b3dd5]                           dc.b $00
[000b3dd6]                           dc.b $00
[000b3dd7]                           dc.b $00
[000b3dd8]                           dc.b $00
[000b3dd9]                           dc.b $00
[000b3dda]                           dc.b $00
[000b3ddb]                           dc.b $00
[000b3ddc]                           dc.b $00
[000b3ddd]                           dc.b $00
[000b3dde]                           dc.b $00
[000b3ddf]                           dc.b $00
[000b3de0]                           dc.b $00
[000b3de1]                           dc.b $00
[000b3de2]                           dc.b $00
[000b3de3]                           dc.b $00
disline:
[000b3de4] 0005b212                  dc.l A_arrows
[000b3de8]                           dc.w $2209
[000b3dea]                           dc.b $00
[000b3deb]                           dc.b $01
[000b3dec]                           dc.b $00
[000b3ded]                           dc.b $00
[000b3dee]                           dc.b $00
[000b3def]                           dc.b $00
[000b3df0]                           dc.b $00
[000b3df1]                           dc.b $00
[000b3df2]                           dc.b $00
[000b3df3]                           dc.b $00
[000b3df4]                           dc.b $00
[000b3df5]                           dc.b $00
[000b3df6]                           dc.b $00
[000b3df7]                           dc.b $00
[000b3df8]                           dc.b $00
[000b3df9]                           dc.b $00
[000b3dfa]                           dc.b $00
[000b3dfb]                           dc.b $00
[000b3dfc]                           dc.b $00
[000b3dfd]                           dc.b $00
[000b3dfe]                           dc.b $00
[000b3dff]                           dc.b $00
[000b3e00]                           dc.b $00
[000b3e01]                           dc.b $00
[000b3e02]                           dc.b $00
[000b3e03]                           dc.b $00
visual:
[000b3e04]                           dc.w $ffff
[000b3e06]                           dc.w $ffff
[000b3e08]                           dc.w $ffff
[000b3e0a]                           dc.b $00
[000b3e0b]                           dc.b $18
[000b3e0c]                           dc.w $2001
[000b3e0e]                           dc.b $00
[000b3e0f]                           dc.b $00
[000b3e10] 000b3dc4                  dc.l arrow
[000b3e14]                           dc.b $00
[000b3e15]                           dc.b $00
[000b3e16]                           dc.b $00
[000b3e17]                           dc.b $00
[000b3e18]                           dc.b $00
[000b3e19]                           dc.b $0a
[000b3e1a]                           dc.b $00
[000b3e1b]                           dc.b $01
logical:
[000b3e1c]                           dc.w $ffff
[000b3e1e]                           dc.w $ffff
[000b3e20]                           dc.w $ffff
[000b3e22]                           dc.b $00
[000b3e23]                           dc.b $18
[000b3e24]                           dc.b $00
[000b3e25]                           dc.b $00
[000b3e26]                           dc.b $00
[000b3e27]                           dc.b $00
[000b3e28] 000b3dc4                  dc.l arrow
[000b3e2c]                           dc.b $00
[000b3e2d]                           dc.b $00
[000b3e2e]                           dc.b $00
[000b3e2f]                           dc.b $00
[000b3e30]                           dc.b $00
[000b3e31]                           dc.b $04
[000b3e32]                           dc.b $00
[000b3e33]                           dc.b $01
disvisual:
[000b3e34]                           dc.w $ffff
[000b3e36]                           dc.w $ffff
[000b3e38]                           dc.w $ffff
[000b3e3a]                           dc.b $00
[000b3e3b]                           dc.b $18
[000b3e3c]                           dc.w $2001
[000b3e3e]                           dc.b $00
[000b3e3f]                           dc.b $00
[000b3e40] 000b3de4                  dc.l disline
[000b3e44]                           dc.b $00
[000b3e45]                           dc.b $00
[000b3e46]                           dc.b $00
[000b3e47]                           dc.b $00
[000b3e48]                           dc.b $00
[000b3e49]                           dc.b $0a
[000b3e4a]                           dc.b $00
[000b3e4b]                           dc.b $01
dislogical:
[000b3e4c]                           dc.w $ffff
[000b3e4e]                           dc.w $ffff
[000b3e50]                           dc.w $ffff
[000b3e52]                           dc.b $00
[000b3e53]                           dc.b $18
[000b3e54]                           dc.b $00
[000b3e55]                           dc.b $00
[000b3e56]                           dc.w $0108
[000b3e58] 000b3de4                  dc.l disline
[000b3e5c]                           dc.b $00
[000b3e5d]                           dc.b $00
[000b3e5e]                           dc.b $00
[000b3e5f]                           dc.b $00
[000b3e60]                           dc.b $00
[000b3e61]                           dc.b $04
[000b3e62]                           dc.b $00
[000b3e63]                           dc.b $01
aud:
[000b3e64] 000b3f60                  dc.l $000b3f60 ; no symbol found
[000b3e68]                           dc.b $00
[000b3e69]                           dc.b $00
[000b3e6a]                           dc.b $00
[000b3e6b]                           dc.b $00
[000b3e6c]                           dc.b $00
[000b3e6d]                           dc.b $00
[000b3e6e]                           dc.b $00
[000b3e6f]                           dc.b $00
[000b3e70]                           dc.b $00
[000b3e71]                           dc.b $00
[000b3e72]                           dc.b $00
[000b3e73]                           dc.b $00
[000b3e74]                           dc.b $00
[000b3e75]                           dc.b $00
[000b3e76]                           dc.b $00
[000b3e77]                           dc.b $00
[000b3e78]                           dc.b $00
[000b3e79]                           dc.b $00
[000b3e7a]                           dc.b $00
[000b3e7b]                           dc.b $00
[000b3e7c]                           dc.b $00
[000b3e7d]                           dc.b $00
[000b3e7e]                           dc.b $00
[000b3e7f]                           dc.b $00
[000b3e80]                           dc.b $00
[000b3e81]                           dc.b $00
[000b3e82]                           dc.b $00
[000b3e83]                           dc.b $00
[000b3e84]                           dc.b $00
[000b3e85]                           dc.b $00
[000b3e86]                           dc.b $00
[000b3e87]                           dc.b $00
[000b3e88]                           dc.b $00
[000b3e89]                           dc.b $00
[000b3e8a]                           dc.b $00
[000b3e8b]                           dc.b $00
[000b3e8c]                           dc.b $00
[000b3e8d]                           dc.b $00
[000b3e8e]                           dc.b $00
[000b3e8f]                           dc.b $00
[000b3e90]                           dc.b $00
[000b3e91]                           dc.b $00
disaud:
[000b3e92] 000b3f6c                  dc.l $000b3f6c ; no symbol found
[000b3e96]                           dc.b $00
[000b3e97]                           dc.b $00
[000b3e98]                           dc.b $00
[000b3e99]                           dc.b $00
[000b3e9a]                           dc.b $00
[000b3e9b]                           dc.b $00
[000b3e9c]                           dc.b $00
[000b3e9d]                           dc.b $00
[000b3e9e]                           dc.b $00
[000b3e9f]                           dc.b $00
[000b3ea0]                           dc.b $00
[000b3ea1]                           dc.b $00
[000b3ea2]                           dc.b $00
[000b3ea3]                           dc.b $00
[000b3ea4]                           dc.b $00
[000b3ea5]                           dc.b $00
[000b3ea6]                           dc.b $00
[000b3ea7]                           dc.b $00
[000b3ea8]                           dc.b $00
[000b3ea9]                           dc.b $00
[000b3eaa]                           dc.b $00
[000b3eab]                           dc.b $00
[000b3eac]                           dc.b $00
[000b3ead]                           dc.b $00
[000b3eae]                           dc.b $00
[000b3eaf]                           dc.b $00
[000b3eb0]                           dc.b $00
[000b3eb1]                           dc.b $00
[000b3eb2]                           dc.b $00
[000b3eb3]                           dc.b $00
[000b3eb4]                           dc.b $00
[000b3eb5]                           dc.b $00
[000b3eb6]                           dc.b $00
[000b3eb7]                           dc.b $00
[000b3eb8]                           dc.b $00
[000b3eb9]                           dc.b $00
[000b3eba]                           dc.b $00
[000b3ebb]                           dc.b $00
[000b3ebc]                           dc.b $00
[000b3ebd]                           dc.b $00
[000b3ebe]                           dc.b $00
[000b3ebf]                           dc.b $00
data:
[000b3ec0]                           dc.b 'A_arrows',0
[000b3ec9]                           dc.b $00
[000b3eca]                           dc.b $00
[000b3ecb]                           dc.b $00
[000b3ecc]                           dc.b $00
[000b3ecd]                           dc.b $00
[000b3ece]                           dc.b $00
[000b3ecf]                           dc.b $00
[000b3ed0]                           dc.b $00
[000b3ed1]                           dc.b $00
[000b3ed2]                           dc.b $00
[000b3ed3]                           dc.b $00
[000b3ed4]                           dc.b $00
[000b3ed5]                           dc.b $00
[000b3ed6]                           dc.b $00
[000b3ed7]                           dc.b $00
[000b3ed8]                           dc.b $00
[000b3ed9]                           dc.b $00
[000b3eda]                           dc.b $00
[000b3edb]                           dc.b $00
[000b3edc]                           dc.b $00
[000b3edd]                           dc.b $00
[000b3ede]                           dc.b $00
[000b3edf]                           dc.b $00
[000b3ee0] 00026fec                  dc.l object_tree
[000b3ee4] 0002729a                  dc.l test_it
[000b3ee8] 0002732e                  dc.l ok
[000b3eec] 00049b7c                  dc.l Aob_delete
[000b3ef0] 000b3e04                  dc.l visual
[000b3ef4] 000b3e1c                  dc.l logical
[000b3ef8] 000b3e64                  dc.l aud
[000b3efc] 00026fce                  dc.l minsize
[000b3f00]                           dc.b $00
[000b3f01]                           dc.b $00
[000b3f02]                           dc.b $00
[000b3f03]                           dc.b $00
[000b3f04] 000b32fb                  dc.l title
[000b3f08] 000b32e9                  dc.l help_title
[000b3f0c]                           dc.b $00
[000b3f0d]                           dc.b $00
[000b3f0e]                           dc.b $00
[000b3f0f]                           dc.b $00
disdata:
[000b3f10]                           dc.b 'A_arrows',0
[000b3f19]                           dc.b $00
[000b3f1a]                           dc.b $00
[000b3f1b]                           dc.b $00
[000b3f1c]                           dc.b $00
[000b3f1d]                           dc.b $00
[000b3f1e]                           dc.b $00
[000b3f1f]                           dc.b $00
[000b3f20]                           dc.b $00
[000b3f21]                           dc.b $00
[000b3f22]                           dc.b $00
[000b3f23]                           dc.b $00
[000b3f24]                           dc.b $00
[000b3f25]                           dc.b $00
[000b3f26]                           dc.b $00
[000b3f27]                           dc.b $00
[000b3f28]                           dc.b $00
[000b3f29]                           dc.b $00
[000b3f2a]                           dc.b $00
[000b3f2b]                           dc.b $00
[000b3f2c]                           dc.b $00
[000b3f2d]                           dc.b $00
[000b3f2e]                           dc.b $00
[000b3f2f]                           dc.b $00
[000b3f30] 00026fec                  dc.l object_tree
[000b3f34] 0002729a                  dc.l test_it
[000b3f38] 0002732e                  dc.l ok
[000b3f3c] 00049b7c                  dc.l Aob_delete
[000b3f40] 000b3e34                  dc.l disvisual
[000b3f44] 000b3e4c                  dc.l dislogical
[000b3f48] 000b3e92                  dc.l disaud
[000b3f4c] 00026fce                  dc.l minsize
[000b3f50]                           dc.b $00
[000b3f51]                           dc.b $00
[000b3f52]                           dc.b $00
[000b3f53]                           dc.b $00
[000b3f54] 000b32fb                  dc.l title
[000b3f58] 000b32e9                  dc.l help_title
[000b3f5c]                           dc.b $00
[000b3f5d]                           dc.b $00
[000b3f5e]                           dc.b $00
[000b3f5f]                           dc.b $00
[000b3f60]                           dc.b '0x22510001L',0
[000b3f6c]                           dc.b '0x22090001L',0
[000b3f78]                           dc.b '0x%lxL',0
	.even

	.bss

parm: ds.b 32
