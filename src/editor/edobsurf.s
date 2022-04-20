
char_x:
[0002bf2a] 4a40                      tst.w      d0
[0002bf2c] 6a08                      bpl.s      char_x_1
[0002bf2e] 3200                      move.w     d0,d1
[0002bf30] e149                      lsl.w      #8,d1
[0002bf32] 3001                      move.w     d1,d0
[0002bf34] 4e75                      rts
char_x_1:
[0002bf36] 41f9 0010 1f12            lea.l      ACSblk,a0
[0002bf3c] 3239 0007 824a            move.w     snapping,d1
[0002bf42] 6714                      beq.s      char_x_2
[0002bf44] 2250                      movea.l    (a0),a1
[0002bf46] 3429 0012                 move.w     18(a1),d2
[0002bf4a] e242                      asr.w      #1,d2
[0002bf4c] d440                      add.w      d0,d2
[0002bf4e] 48c2                      ext.l      d2
[0002bf50] 85e9 0012                 divs.w     18(a1),d2
[0002bf54] 3002                      move.w     d2,d0
[0002bf56] 4e75                      rts
char_x_2:
[0002bf58] 3200                      move.w     d0,d1
[0002bf5a] 48c1                      ext.l      d1
[0002bf5c] 2250                      movea.l    (a0),a1
[0002bf5e] 83e9 0012                 divs.w     18(a1),d1
[0002bf62] 3400                      move.w     d0,d2
[0002bf64] 48c2                      ext.l      d2
[0002bf66] 85e9 0012                 divs.w     18(a1),d2
[0002bf6a] 4842                      swap       d2
[0002bf6c] e14a                      lsl.w      #8,d2
[0002bf6e] 8242                      or.w       d2,d1
[0002bf70] 3001                      move.w     d1,d0
[0002bf72] 4e75                      rts

char_y:
[0002bf74] 4a40                      tst.w      d0
[0002bf76] 6a08                      bpl.s      char_y_1
[0002bf78] 3200                      move.w     d0,d1
[0002bf7a] e149                      lsl.w      #8,d1
[0002bf7c] 3001                      move.w     d1,d0
[0002bf7e] 4e75                      rts
char_y_1:
[0002bf80] 41f9 0010 1f12            lea.l      ACSblk,a0
[0002bf86] 3239 0007 824a            move.w     snapping,d1
[0002bf8c] 6714                      beq.s      char_y_2
[0002bf8e] 2250                      movea.l    (a0),a1
[0002bf90] 3429 0014                 move.w     20(a1),d2
[0002bf94] e242                      asr.w      #1,d2
[0002bf96] d440                      add.w      d0,d2
[0002bf98] 48c2                      ext.l      d2
[0002bf9a] 85e9 0014                 divs.w     20(a1),d2
[0002bf9e] 3002                      move.w     d2,d0
[0002bfa0] 4e75                      rts
char_y_2:
[0002bfa2] 3200                      move.w     d0,d1
[0002bfa4] 48c1                      ext.l      d1
[0002bfa6] 2250                      movea.l    (a0),a1
[0002bfa8] 83e9 0014                 divs.w     20(a1),d1
[0002bfac] 3400                      move.w     d0,d2
[0002bfae] 48c2                      ext.l      d2
[0002bfb0] 85e9 0014                 divs.w     20(a1),d2
[0002bfb4] 4842                      swap       d2
[0002bfb6] e14a                      lsl.w      #8,d2
[0002bfb8] 8242                      or.w       d2,d1
[0002bfba] 3001                      move.w     d1,d0
[0002bfbc] 4e75                      rts

pixel_x:
[0002bfbe] 3200                      move.w     d0,d1
[0002bfc0] e041                      asr.w      #8,d1
[0002bfc2] c27c 00ff                 and.w      #$00FF,d1
[0002bfc6] b27c 007f                 cmp.w      #$007F,d1
[0002bfca] 6f04                      ble.s      pixel_x_1
[0002bfcc] 927c 0100                 sub.w      #$0100,d1
pixel_x_1:
[0002bfd0] 3400                      move.w     d0,d2
[0002bfd2] c47c 00ff                 and.w      #$00FF,d2
[0002bfd6] 2079 0010 1f12            movea.l    ACSblk,a0
[0002bfdc] c5e8 0012                 muls.w     18(a0),d2
[0002bfe0] d441                      add.w      d1,d2
[0002bfe2] 3002                      move.w     d2,d0
[0002bfe4] 4e75                      rts

pixel_y:
[0002bfe6] 3200                      move.w     d0,d1
[0002bfe8] e041                      asr.w      #8,d1
[0002bfea] c27c 00ff                 and.w      #$00FF,d1
[0002bfee] b27c 007f                 cmp.w      #$007F,d1
[0002bff2] 6f04                      ble.s      pixel_y_1
[0002bff4] 927c 0100                 sub.w      #$0100,d1
pixel_y_1:
[0002bff8] 3400                      move.w     d0,d2
[0002bffa] c47c 00ff                 and.w      #$00FF,d2
[0002bffe] 2079 0010 1f12            movea.l    ACSblk,a0
[0002c004] c5e8 0014                 muls.w     20(a0),d2
[0002c008] d441                      add.w      d1,d2
[0002c00a] 3002                      move.w     d2,d0
[0002c00c] 4e75                      rts

del_obentry:
[0002c00e] 48e7 1e3c                 movem.l    d3-d6/a2-a5,-(a7)
[0002c012] 594f                      subq.w     #4,a7
[0002c014] 2e88                      move.l     a0,(a7)
[0002c016] 3600                      move.w     d0,d3
[0002c018] 3c01                      move.w     d1,d6
[0002c01a] 2668 0014                 movea.l    20(a0),a3
[0002c01e] 2050                      movea.l    (a0),a0
[0002c020] 2850                      movea.l    (a0),a4
[0002c022] 2a68 0004                 movea.l    4(a0),a5
[0002c026] 78fe                      moveq.l    #-2,d4
[0002c028] d840                      add.w      d0,d4
[0002c02a] 48c4                      ext.l      d4
[0002c02c] 89fc 0003                 divs.w     #$0003,d4
[0002c030] 246d 0004                 movea.l    4(a5),a2
[0002c034] b068 0018                 cmp.w      24(a0),d0
[0002c038] 664e                      bne.s      del_obentry_1
[0002c03a] 3204                      move.w     d4,d1
[0002c03c] 48c1                      ext.l      d1
[0002c03e] 2401                      move.l     d1,d2
[0002c040] e78a                      lsl.l      #3,d2
[0002c042] 9481                      sub.l      d1,d2
[0002c044] e78a                      lsl.l      #3,d2
[0002c046] 3a32 280a                 move.w     10(a2,d2.l),d5
[0002c04a] 4a45                      tst.w      d5
[0002c04c] 6b00 00a2                 bmi        del_obentry_2
[0002c050] ba72 280c                 cmp.w      12(a2,d2.l),d5
[0002c054] 6600 009a                 bne        del_obentry_2
[0002c058] 3205                      move.w     d5,d1
[0002c05a] 48c1                      ext.l      d1
[0002c05c] 2001                      move.l     d1,d0
[0002c05e] e788                      lsl.l      #3,d0
[0002c060] 9081                      sub.l      d1,d0
[0002c062] e788                      lsl.l      #3,d0
[0002c064] 35b2 2818 0818            move.w     24(a2,d2.l),24(a2,d0.l)
[0002c06a] 35b2 281a 081a            move.w     26(a2,d2.l),26(a2,d0.l)
[0002c070] 43f2 2800                 lea.l      0(a2,d2.l),a1
[0002c074] 204c                      movea.l    a4,a0
[0002c076] 4eb9 0002 b8b6            jsr        del_ob
[0002c07c] 3004                      move.w     d4,d0
[0002c07e] 204a                      movea.l    a2,a0
[0002c080] 4eb9 0002 bbf8            jsr        unlink_ob
[0002c086] 6068                      bra.s      del_obentry_2
del_obentry_1:
[0002c088] 4a46                      tst.w      d6
[0002c08a] 6724                      beq.s      del_obentry_3
[0002c08c] 3204                      move.w     d4,d1
[0002c08e] 48c1                      ext.l      d1
[0002c090] 2001                      move.l     d1,d0
[0002c092] e788                      lsl.l      #3,d0
[0002c094] 9081                      sub.l      d1,d0
[0002c096] e788                      lsl.l      #3,d0
[0002c098] 43f2 0800                 lea.l      0(a2,d0.l),a1
[0002c09c] 204c                      movea.l    a4,a0
[0002c09e] 4eb9 0002 b8b6            jsr        del_ob
[0002c0a4] 3004                      move.w     d4,d0
[0002c0a6] 204a                      movea.l    a2,a0
[0002c0a8] 4eb9 0002 bbf8            jsr        unlink_ob
[0002c0ae] 6022                      bra.s      del_obentry_4
del_obentry_3:
[0002c0b0] 3004                      move.w     d4,d0
[0002c0b2] 224d                      movea.l    a5,a1
[0002c0b4] 204c                      movea.l    a4,a0
[0002c0b6] 4eb9 0002 b9a6            jsr        delsub_ob
[0002c0bc] 70ff                      moveq.l    #-1,d0
[0002c0be] 3403                      move.w     d3,d2
[0002c0c0] 48c2                      ext.l      d2
[0002c0c2] 2202                      move.l     d2,d1
[0002c0c4] d281                      add.l      d1,d1
[0002c0c6] d282                      add.l      d2,d1
[0002c0c8] e789                      lsl.l      #3,d1
[0002c0ca] 3780 1804                 move.w     d0,4(a3,d1.l)
[0002c0ce] 3780 1802                 move.w     d0,2(a3,d1.l)
del_obentry_4:
[0002c0d2] 3203                      move.w     d3,d1
[0002c0d4] 48c1                      ext.l      d1
[0002c0d6] 2001                      move.l     d1,d0
[0002c0d8] d080                      add.l      d0,d0
[0002c0da] d081                      add.l      d1,d0
[0002c0dc] e788                      lsl.l      #3,d0
[0002c0de] 0073 0080 08f0            ori.w      #$0080,-16(a3,d0.l)
[0002c0e4] 70ff                      moveq.l    #-1,d0
[0002c0e6] d043                      add.w      d3,d0
[0002c0e8] 2057                      movea.l    (a7),a0
[0002c0ea] 4eb9 0004 b846            jsr        Awi_obredraw
del_obentry_2:
[0002c0f0] 584f                      addq.w     #4,a7
[0002c0f2] 4cdf 3c78                 movem.l    (a7)+,d3-d6/a2-a5
[0002c0f6] 4e75                      rts

ed_delete:
[0002c0f8] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[0002c0fc] 594f                      subq.w     #4,a7
[0002c0fe] 2448                      movea.l    a0,a2
[0002c100] 2650                      movea.l    (a0),a3
[0002c102] 0c6b 0001 0008            cmpi.w     #$0001,8(a3)
[0002c108] 6600 00ba                 bne        ed_delete_1
[0002c10c] 2279 0010 1f12            movea.l    ACSblk,a1
[0002c112] b1e9 0240                 cmpa.l     576(a1),a0
[0002c116] 6600 00ac                 bne        ed_delete_1
[0002c11a] 2f39 000d 99d6            move.l     _globl,-(a7)
[0002c120] 486f 0006                 pea.l      6(a7)
[0002c124] 486f 0008                 pea.l      8(a7)
[0002c128] 43ef 000c                 lea.l      12(a7),a1
[0002c12c] 41ef 000c                 lea.l      12(a7),a0
[0002c130] 4eb9 0006 c978            jsr        mt_graf_mkstate
[0002c136] 4fef 000c                 lea.l      12(a7),a7
[0002c13a] 026f 0004 0002            andi.w     #$0004,2(a7)
[0002c140] 4243                      clr.w      d3
[0002c142] 4eb9 0004 4840            jsr        Adr_start
[0002c148] 6042                      bra.s      ed_delete_2
ed_delete_6:
[0002c14a] 3204                      move.w     d4,d1
[0002c14c] 48c1                      ext.l      d1
[0002c14e] 2001                      move.l     d1,d0
[0002c150] d080                      add.l      d0,d0
[0002c152] d081                      add.l      d1,d0
[0002c154] e788                      lsl.l      #3,d0
[0002c156] 286a 0014                 movea.l    20(a2),a4
[0002c15a] 49f4 0818                 lea.l      24(a4,d0.l),a4
[0002c15e] 0c6c 2af8 0016            cmpi.w     #$2AF8,22(a4)
[0002c164] 6626                      bne.s      ed_delete_2
[0002c166] 204a                      movea.l    a2,a0
[0002c168] 3004                      move.w     d4,d0
[0002c16a] 4eb9 0004 492a            jsr        Adr_del
[0002c170] b86b 0018                 cmp.w      24(a3),d4
[0002c174] 6602                      bne.s      ed_delete_3
[0002c176] 7601                      moveq.l    #1,d3
ed_delete_3:
[0002c178] 302f 0002                 move.w     2(a7),d0
[0002c17c] 6704                      beq.s      ed_delete_4
[0002c17e] 7201                      moveq.l    #1,d1
[0002c180] 6002                      bra.s      ed_delete_5
ed_delete_4:
[0002c182] 4241                      clr.w      d1
ed_delete_5:
[0002c184] 3004                      move.w     d4,d0
[0002c186] 204a                      movea.l    a2,a0
[0002c188] 6100 fe84                 bsr        del_obentry
ed_delete_2:
[0002c18c] 4eb9 0004 484c            jsr        Adr_next
[0002c192] 3800                      move.w     d0,d4
[0002c194] 6ab4                      bpl.s      ed_delete_6
[0002c196] 206b 0004                 movea.l    4(a3),a0
[0002c19a] 4eb9 0002 bb90            jsr        pack_ob
[0002c1a0] 204a                      movea.l    a2,a0
[0002c1a2] 226a 0010                 movea.l    16(a2),a1
[0002c1a6] 4e91                      jsr        (a1)
[0002c1a8] 4a43                      tst.w      d3
[0002c1aa] 6712                      beq.s      ed_delete_7
[0002c1ac] 006a 0010 0056            ori.w      #$0010,86(a2)
[0002c1b2] 43ea 0024                 lea.l      36(a2),a1
[0002c1b6] 204a                      movea.l    a2,a0
[0002c1b8] 286a 0086                 movea.l    134(a2),a4
[0002c1bc] 4e94                      jsr        (a4)
ed_delete_7:
[0002c1be] 377c ffff 000a            move.w     #$FFFF,10(a3)
ed_delete_1:
[0002c1c4] 584f                      addq.w     #4,a7
[0002c1c6] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[0002c1ca] 4e75                      rts

ed_dragged:
[0002c1cc] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0002c1d0] 4fef fff4                 lea.l      -12(a7),a7
[0002c1d4] 2079 0010 1f12            movea.l    ACSblk,a0
[0002c1da] 3028 0250                 move.w     592(a0),d0
[0002c1de] 6608                      bne.s      ed_dragged_1
[0002c1e0] 3228 0252                 move.w     594(a0),d1
[0002c1e4] 6700 019e                 beq        ed_dragged_2
ed_dragged_1:
[0002c1e8] 2079 0010 1f12            movea.l    ACSblk,a0
[0002c1ee] 2668 0240                 movea.l    576(a0),a3
[0002c1f2] 2868 0258                 movea.l    600(a0),a4
[0002c1f6] 45ef 000a                 lea.l      10(a7),a2
[0002c1fa] 2f39 000d 99d6            move.l     _globl,-(a7)
[0002c200] 2079 0010 1f12            movea.l    ACSblk,a0
[0002c206] 4868 0266                 pea.l      614(a0)
[0002c20a] 4852                      pea.l      (a2)
[0002c20c] 224a                      movea.l    a2,a1
[0002c20e] 204a                      movea.l    a2,a0
[0002c210] 4eb9 0006 c978            jsr        mt_graf_mkstate
[0002c216] 4fef 000c                 lea.l      12(a7),a7
[0002c21a] 7001                      moveq.l    #1,d0
[0002c21c] 2079 0010 1f12            movea.l    ACSblk,a0
[0002c222] c068 0266                 and.w      614(a0),d0
[0002c226] 6706                      beq.s      ed_dragged_3
[0002c228] 0068 0002 0266            ori.w      #$0002,614(a0)
ed_dragged_3:
[0002c22e] b9cb                      cmpa.l     a3,a4
[0002c230] 670c                      beq.s      ed_dragged_4
[0002c232] 2079 0010 1f12            movea.l    ACSblk,a0
[0002c238] 0068 0004 0266            ori.w      #$0004,614(a0)
ed_dragged_4:
[0002c23e] 7006                      moveq.l    #6,d0
[0002c240] 2079 0010 1f12            movea.l    ACSblk,a0
[0002c246] c068 0266                 and.w      614(a0),d0
[0002c24a] 3480                      move.w     d0,(a2)
[0002c24c] b9cb                      cmpa.l     a3,a4
[0002c24e] 660e                      bne.s      ed_dragged_5
[0002c250] 5540                      subq.w     #2,d0
[0002c252] 670a                      beq.s      ed_dragged_5
[0002c254] 0c52 0006                 cmpi.w     #$0006,(a2)
[0002c258] 6704                      beq.s      ed_dragged_5
[0002c25a] 7801                      moveq.l    #1,d4
[0002c25c] 6002                      bra.s      ed_dragged_6
ed_dragged_5:
[0002c25e] 4244                      clr.w      d4
ed_dragged_6:
[0002c260] 4a44                      tst.w      d4
[0002c262] 6770                      beq.s      ed_dragged_7
[0002c264] 2454                      movea.l    (a4),a2
[0002c266] 2079 0010 1f12            movea.l    ACSblk,a0
[0002c26c] 4268 0248                 clr.w      584(a0)
[0002c270] 6058                      bra.s      ed_dragged_8
ed_dragged_10:
[0002c272] 3203                      move.w     d3,d1
[0002c274] 48c1                      ext.l      d1
[0002c276] 2001                      move.l     d1,d0
[0002c278] d080                      add.l      d0,d0
[0002c27a] d081                      add.l      d1,d0
[0002c27c] e788                      lsl.l      #3,d0
[0002c27e] 2a6b 0014                 movea.l    20(a3),a5
[0002c282] 4bf5 0818                 lea.l      24(a5,d0.l),a5
[0002c286] 0c6d 2af8 0016            cmpi.w     #$2AF8,22(a5)
[0002c28c] 663c                      bne.s      ed_dragged_8
[0002c28e] b66a 0018                 cmp.w      24(a2),d3
[0002c292] 672c                      beq.s      ed_dragged_9
[0002c294] 206c 0014                 movea.l    20(a4),a0
[0002c298] 0070 0080 08f0            ori.w      #$0080,-16(a0,d0.l)
[0002c29e] 206c 0014                 movea.l    20(a4),a0
[0002c2a2] 0070 0080 0808            ori.w      #$0080,8(a0,d0.l)
[0002c2a8] 206c 0014                 movea.l    20(a4),a0
[0002c2ac] 0270 fffe 080a            andi.w     #$FFFE,10(a0,d0.l)
[0002c2b2] 70ff                      moveq.l    #-1,d0
[0002c2b4] d043                      add.w      d3,d0
[0002c2b6] 204c                      movea.l    a4,a0
[0002c2b8] 4eb9 0004 b846            jsr        Awi_obredraw
[0002c2be] 600a                      bra.s      ed_dragged_8
ed_dragged_9:
[0002c2c0] 3003                      move.w     d3,d0
[0002c2c2] 204b                      movea.l    a3,a0
[0002c2c4] 4eb9 0004 492a            jsr        Adr_del
ed_dragged_8:
[0002c2ca] 4eb9 0004 484c            jsr        Adr_next
[0002c2d0] 3600                      move.w     d0,d3
[0002c2d2] 6a9e                      bpl.s      ed_dragged_10
ed_dragged_7:
[0002c2d4] 4257                      clr.w      (a7)
[0002c2d6] 2079 0010 1f12            movea.l    ACSblk,a0
[0002c2dc] 4268 0248                 clr.w      584(a0)
[0002c2e0] 602a                      bra.s      ed_dragged_11
ed_dragged_12:
[0002c2e2] 3203                      move.w     d3,d1
[0002c2e4] 48c1                      ext.l      d1
[0002c2e6] 2001                      move.l     d1,d0
[0002c2e8] d080                      add.l      d0,d0
[0002c2ea] d081                      add.l      d1,d0
[0002c2ec] e788                      lsl.l      #3,d0
[0002c2ee] 2a6b 0014                 movea.l    20(a3),a5
[0002c2f2] 4bf5 0818                 lea.l      24(a5,d0.l),a5
[0002c2f6] 0c6d 2af8 0016            cmpi.w     #$2AF8,22(a5)
[0002c2fc] 660e                      bne.s      ed_dragged_11
[0002c2fe] 43d7                      lea.l      (a7),a1
[0002c300] 204c                      movea.l    a4,a0
[0002c302] 3003                      move.w     d3,d0
[0002c304] 3204                      move.w     d4,d1
[0002c306] 4eb9 0002 c7b0            jsr        new_ob
ed_dragged_11:
[0002c30c] 4eb9 0004 484c            jsr        Adr_next
[0002c312] 3600                      move.w     d0,d3
[0002c314] 6acc                      bpl.s      ed_dragged_12
[0002c316] 3217                      move.w     (a7),d1
[0002c318] 6f6a                      ble.s      ed_dragged_2
[0002c31a] 204c                      movea.l    a4,a0
[0002c31c] 226c 0010                 movea.l    16(a4),a1
[0002c320] 4e91                      jsr        (a1)
[0002c322] 0c57 0005                 cmpi.w     #$0005,(a7)
[0002c326] 6d0c                      blt.s      ed_dragged_13
[0002c328] 4240                      clr.w      d0
[0002c32a] 204c                      movea.l    a4,a0
[0002c32c] 4eb9 0004 b846            jsr        Awi_obredraw
[0002c332] 6050                      bra.s      ed_dragged_2
ed_dragged_13:
[0002c334] 3817                      move.w     (a7),d4
[0002c336] 6048                      bra.s      ed_dragged_14
ed_dragged_15:
[0002c338] 3004                      move.w     d4,d0
[0002c33a] d040                      add.w      d0,d0
[0002c33c] 3637 0000                 move.w     0(a7,d0.w),d3
[0002c340] 3203                      move.w     d3,d1
[0002c342] 48c1                      ext.l      d1
[0002c344] 2401                      move.l     d1,d2
[0002c346] d482                      add.l      d2,d2
[0002c348] d481                      add.l      d1,d2
[0002c34a] e78a                      lsl.l      #3,d2
[0002c34c] 206c 0014                 movea.l    20(a4),a0
[0002c350] 3230 280a                 move.w     10(a0,d2.l),d1
[0002c354] 226c 0066                 movea.l    102(a4),a1
[0002c358] 204c                      movea.l    a4,a0
[0002c35a] 3003                      move.w     d3,d0
[0002c35c] 4e91                      jsr        (a1)
[0002c35e] 5243                      addq.w     #1,d3
[0002c360] 3403                      move.w     d3,d2
[0002c362] 48c2                      ext.l      d2
[0002c364] 2002                      move.l     d2,d0
[0002c366] d080                      add.l      d0,d0
[0002c368] d082                      add.l      d2,d0
[0002c36a] e788                      lsl.l      #3,d0
[0002c36c] 206c 0014                 movea.l    20(a4),a0
[0002c370] 3230 080a                 move.w     10(a0,d0.l),d1
[0002c374] 226c 0066                 movea.l    102(a4),a1
[0002c378] 204c                      movea.l    a4,a0
[0002c37a] 3003                      move.w     d3,d0
[0002c37c] 4e91                      jsr        (a1)
[0002c37e] 5344                      subq.w     #1,d4
ed_dragged_14:
[0002c380] 4a44                      tst.w      d4
[0002c382] 6eb4                      bgt.s      ed_dragged_15
ed_dragged_2:
[0002c384] 4fef 000c                 lea.l      12(a7),a7
[0002c388] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0002c38c] 4e75                      rts

ob_find:
[0002c38e] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[0002c392] 514f                      subq.w     #8,a7
[0002c394] 2448                      movea.l    a0,a2
[0002c396] 3600                      move.w     d0,d3
[0002c398] 2849                      movea.l    a1,a4
[0002c39a] 48c0                      ext.l      d0
[0002c39c] 2200                      move.l     d0,d1
[0002c39e] d281                      add.l      d1,d1
[0002c3a0] d280                      add.l      d0,d1
[0002c3a2] e789                      lsl.l      #3,d1
[0002c3a4] 266a 0014                 movea.l    20(a2),a3
[0002c3a8] d7c1                      adda.l     d1,a3
[0002c3aa] 342b 0012                 move.w     18(a3),d2
[0002c3ae] 322c 0002                 move.w     2(a4),d1
[0002c3b2] d26c 0006                 add.w      6(a4),d1
[0002c3b6] b441                      cmp.w      d1,d2
[0002c3b8] 6c00 00b0                 bge        ob_find_1
[0002c3bc] d46b 0016                 add.w      22(a3),d2
[0002c3c0] b46c 0002                 cmp.w      2(a4),d2
[0002c3c4] 6f00 00a4                 ble        ob_find_1
[0002c3c8] 302b 0010                 move.w     16(a3),d0
[0002c3cc] 3211                      move.w     (a1),d1
[0002c3ce] d26c 0004                 add.w      4(a4),d1
[0002c3d2] b041                      cmp.w      d1,d0
[0002c3d4] 6c00 0094                 bge        ob_find_1
[0002c3d8] d06b 0014                 add.w      20(a3),d0
[0002c3dc] b051                      cmp.w      (a1),d0
[0002c3de] 6f00 008a                 ble        ob_find_1
[0002c3e2] 342b 0012                 move.w     18(a3),d2
[0002c3e6] b46c 0002                 cmp.w      2(a4),d2
[0002c3ea] 6d30                      blt.s      ob_find_2
[0002c3ec] 322b 0010                 move.w     16(a3),d1
[0002c3f0] b251                      cmp.w      (a1),d1
[0002c3f2] 6d28                      blt.s      ob_find_2
[0002c3f4] d46b 0016                 add.w      22(a3),d2
[0002c3f8] 302c 0002                 move.w     2(a4),d0
[0002c3fc] d06c 0006                 add.w      6(a4),d0
[0002c400] b440                      cmp.w      d0,d2
[0002c402] 6e18                      bgt.s      ob_find_2
[0002c404] d26b 0014                 add.w      20(a3),d1
[0002c408] 3411                      move.w     (a1),d2
[0002c40a] d46c 0004                 add.w      4(a4),d2
[0002c40e] b242                      cmp.w      d2,d1
[0002c410] 6e0a                      bgt.s      ob_find_2
[0002c412] 3003                      move.w     d3,d0
[0002c414] 4eb9 0002 cbe2            jsr        ob_addselect
[0002c41a] 604e                      bra.s      ob_find_1
ob_find_2:
[0002c41c] 382b 0002                 move.w     2(a3),d4
[0002c420] 4a44                      tst.w      d4
[0002c422] 6b46                      bmi.s      ob_find_1
[0002c424] 3014                      move.w     (a4),d0
[0002c426] 906b 0010                 sub.w      16(a3),d0
[0002c42a] 3e80                      move.w     d0,(a7)
[0002c42c] 322c 0002                 move.w     2(a4),d1
[0002c430] 926b 0012                 sub.w      18(a3),d1
[0002c434] 3f41 0002                 move.w     d1,2(a7)
[0002c438] 3f6c 0004 0004            move.w     4(a4),4(a7)
[0002c43e] 3f6c 0006 0006            move.w     6(a4),6(a7)
[0002c444] 6020                      bra.s      ob_find_3
ob_find_4:
[0002c446] 43d7                      lea.l      (a7),a1
[0002c448] 5244                      addq.w     #1,d4
[0002c44a] 3004                      move.w     d4,d0
[0002c44c] 204a                      movea.l    a2,a0
[0002c44e] 6100 ff3e                 bsr        ob_find
[0002c452] 3204                      move.w     d4,d1
[0002c454] 48c1                      ext.l      d1
[0002c456] 2001                      move.l     d1,d0
[0002c458] d080                      add.l      d0,d0
[0002c45a] d081                      add.l      d1,d0
[0002c45c] e788                      lsl.l      #3,d0
[0002c45e] 206a 0014                 movea.l    20(a2),a0
[0002c462] 3830 0800                 move.w     0(a0,d0.l),d4
ob_find_3:
[0002c466] b644                      cmp.w      d4,d3
[0002c468] 66dc                      bne.s      ob_find_4
ob_find_1:
[0002c46a] 504f                      addq.w     #8,a7
[0002c46c] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[0002c470] 4e75                      rts

draw_box:
[0002c472] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0002c476] 514f                      subq.w     #8,a7
[0002c478] 2448                      movea.l    a0,a2
[0002c47a] 266a 0014                 movea.l    20(a2),a3
[0002c47e] 49f9 0010 1f12            lea.l      ACSblk,a4
[0002c484] 7003                      moveq.l    #3,d0
[0002c486] 2054                      movea.l    (a4),a0
[0002c488] c068 0266                 and.w      614(a0),d0
[0002c48c] 6606                      bne.s      draw_box_1
[0002c48e] 4eb9 0004 4a26            jsr        Adr_unselect
draw_box_1:
[0002c494] 2054                      movea.l    (a4),a0
[0002c496] 2068 023c                 movea.l    572(a0),a0
[0002c49a] 41e8 0044                 lea.l      68(a0),a0
[0002c49e] 4eb9 0004 9898            jsr        Amo_new
[0002c4a4] 2054                      movea.l    (a4),a0
[0002c4a6] 3ea8 0262                 move.w     610(a0),(a7)
[0002c4aa] 3f68 0264 0002            move.w     612(a0),2(a7)
[0002c4b0] 7003                      moveq.l    #3,d0
[0002c4b2] 4eb9 0005 1e1c            jsr        Awi_update
[0002c4b8] 2f39 000d 99d6            move.l     _globl,-(a7)
[0002c4be] 3f3c f060                 move.w     #$F060,-(a7)
[0002c4c2] 43ef 000c                 lea.l      12(a7),a1
[0002c4c6] 41ef 000a                 lea.l      10(a7),a0
[0002c4ca] 343c f060                 move.w     #$F060,d2
[0002c4ce] 2a54                      movea.l    (a4),a5
[0002c4d0] 322d 0264                 move.w     612(a5),d1
[0002c4d4] 302d 0262                 move.w     610(a5),d0
[0002c4d8] 4eb9 0006 c2ee            jsr        mt_graf_rubbox
[0002c4de] 5c4f                      addq.w     #6,a7
[0002c4e0] 302f 0004                 move.w     4(a7),d0
[0002c4e4] 6a0c                      bpl.s      draw_box_2
[0002c4e6] d157                      add.w      d0,(a7)
[0002c4e8] 302f 0004                 move.w     4(a7),d0
[0002c4ec] 4440                      neg.w      d0
[0002c4ee] 3f40 0004                 move.w     d0,4(a7)
draw_box_2:
[0002c4f2] 302f 0006                 move.w     6(a7),d0
[0002c4f6] 6a0e                      bpl.s      draw_box_3
[0002c4f8] d16f 0002                 add.w      d0,2(a7)
[0002c4fc] 302f 0006                 move.w     6(a7),d0
[0002c500] 4440                      neg.w      d0
[0002c502] 3f40 0006                 move.w     d0,6(a7)
draw_box_3:
[0002c506] 7002                      moveq.l    #2,d0
[0002c508] 4eb9 0005 1e1c            jsr        Awi_update
[0002c50e] 7602                      moveq.l    #2,d3
[0002c510] 2054                      movea.l    (a4),a0
[0002c512] 214a 0240                 move.l     a2,576(a0)
[0002c516] 302a 0034                 move.w     52(a2),d0
[0002c51a] d06b 0010                 add.w      16(a3),d0
[0002c51e] d043                      add.w      d3,d0
[0002c520] 9157                      sub.w      d0,(a7)
[0002c522] 322a 0036                 move.w     54(a2),d1
[0002c526] d26b 0012                 add.w      18(a3),d1
[0002c52a] d243                      add.w      d3,d1
[0002c52c] 936f 0002                 sub.w      d1,2(a7)
[0002c530] 586f 0004                 addq.w     #4,4(a7)
[0002c534] 586f 0006                 addq.w     #4,6(a7)
[0002c538] 43d7                      lea.l      (a7),a1
[0002c53a] 204a                      movea.l    a2,a0
[0002c53c] 3003                      move.w     d3,d0
[0002c53e] 6100 fe4e                 bsr        ob_find
[0002c542] 2054                      movea.l    (a4),a0
[0002c544] 2068 023c                 movea.l    572(a0),a0
[0002c548] 41e8 0038                 lea.l      56(a0),a0
[0002c54c] 4eb9 0004 9898            jsr        Amo_new
[0002c552] 504f                      addq.w     #8,a7
[0002c554] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0002c558] 4e75                      rts

ed_edit:
[0002c55a] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[0002c55e] 594f                      subq.w     #4,a7
[0002c560] 4bf9 0010 1f12            lea.l      ACSblk,a5
[0002c566] 2055                      movea.l    (a5),a0
[0002c568] 2468 0258                 movea.l    600(a0),a2
[0002c56c] 286a 0014                 movea.l    20(a2),a4
[0002c570] 3628 0262                 move.w     610(a0),d3
[0002c574] 3828 0264                 move.w     612(a0),d4
[0002c578] 3a28 0266                 move.w     614(a0),d5
[0002c57c] 2652                      movea.l    (a2),a3
[0002c57e] 3c28 0260                 move.w     608(a0),d6
[0002c582] 3e06                      move.w     d6,d7
ed_edit_3:
[0002c584] 3207                      move.w     d7,d1
[0002c586] 48c1                      ext.l      d1
[0002c588] 2001                      move.l     d1,d0
[0002c58a] d080                      add.l      d0,d0
[0002c58c] d081                      add.l      d1,d0
[0002c58e] e788                      lsl.l      #3,d0
[0002c590] 3434 080a                 move.w     10(a4,d0.l),d2
[0002c594] c47c 1000                 and.w      #$1000,d2
[0002c598] 6702                      beq.s      ed_edit_1
[0002c59a] 3c07                      move.w     d7,d6
ed_edit_1:
[0002c59c] be6b 0018                 cmp.w      24(a3),d7
[0002c5a0] 6710                      beq.s      ed_edit_2
[0002c5a2] 3007                      move.w     d7,d0
[0002c5a4] 204c                      movea.l    a4,a0
[0002c5a6] 4eb9 0004 af6c            jsr        Aob_up
[0002c5ac] 3e00                      move.w     d0,d7
[0002c5ae] 4a40                      tst.w      d0
[0002c5b0] 6ad2                      bpl.s      ed_edit_3
ed_edit_2:
[0002c5b2] 7004                      moveq.l    #4,d0
[0002c5b4] c045                      and.w      d5,d0
[0002c5b6] 6712                      beq.s      ed_edit_4
[0002c5b8] bc6b 0018                 cmp.w      24(a3),d6
[0002c5bc] 670c                      beq.s      ed_edit_4
[0002c5be] 204c                      movea.l    a4,a0
[0002c5c0] 3006                      move.w     d6,d0
[0002c5c2] 4eb9 0004 af6c            jsr        Aob_up
[0002c5c8] 3c00                      move.w     d0,d6
ed_edit_4:
[0002c5ca] 2055                      movea.l    (a5),a0
[0002c5cc] 3228 0260                 move.w     608(a0),d1
[0002c5d0] 48c1                      ext.l      d1
[0002c5d2] 2001                      move.l     d1,d0
[0002c5d4] d080                      add.l      d0,d0
[0002c5d6] d081                      add.l      d1,d0
[0002c5d8] e788                      lsl.l      #3,d0
[0002c5da] 3434 080a                 move.w     10(a4,d0.l),d2
[0002c5de] c47c 4000                 and.w      #$4000,d2
[0002c5e2] 670e                      beq.s      ed_edit_5
[0002c5e4] 3146 0260                 move.w     d6,608(a0)
[0002c5e8] 4eb9 0002 e082            jsr        open_it
[0002c5ee] 6000 00b2                 bra        ed_edit_6
ed_edit_5:
[0002c5f2] 7008                      moveq.l    #8,d0
[0002c5f4] c045                      and.w      d5,d0
[0002c5f6] 670a                      beq.s      ed_edit_7
[0002c5f8] 204a                      movea.l    a2,a0
[0002c5fa] 6100 fe76                 bsr        draw_box
[0002c5fe] 6000 00a2                 bra        ed_edit_6
ed_edit_7:
[0002c602] 7001                      moveq.l    #1,d0
[0002c604] 3406                      move.w     d6,d2
[0002c606] 48c2                      ext.l      d2
[0002c608] 2202                      move.l     d2,d1
[0002c60a] d281                      add.l      d1,d1
[0002c60c] d282                      add.l      d2,d1
[0002c60e] e789                      lsl.l      #3,d1
[0002c610] c074 180a                 and.w      10(a4,d1.l),d0
[0002c614] 6718                      beq.s      ed_edit_8
[0002c616] 7e03                      moveq.l    #3,d7
[0002c618] ce45                      and.w      d5,d7
[0002c61a] 676a                      beq.s      ed_edit_9
[0002c61c] 204a                      movea.l    a2,a0
[0002c61e] 3006                      move.w     d6,d0
[0002c620] 4eb9 0004 492a            jsr        Adr_del
[0002c626] 4eb9 0004 ad60            jsr        Aev_release
[0002c62c] 6074                      bra.s      ed_edit_6
ed_edit_8:
[0002c62e] 7003                      moveq.l    #3,d0
[0002c630] c045                      and.w      d5,d0
[0002c632] 6606                      bne.s      ed_edit_10
[0002c634] 4eb9 0004 4a26            jsr        Adr_unselect
ed_edit_10:
[0002c63a] 3006                      move.w     d6,d0
[0002c63c] 204a                      movea.l    a2,a0
[0002c63e] 4eb9 0002 cbe2            jsr        ob_addselect
[0002c644] 7e02                      moveq.l    #2,d7
ed_edit_12:
[0002c646] 4bef 0002                 lea.l      2(a7),a5
[0002c64a] 47f9 000d 99d6            lea.l      _globl,a3
[0002c650] 5347                      subq.w     #1,d7
[0002c652] 2053                      movea.l    (a3),a0
[0002c654] 700a                      moveq.l    #10,d0
[0002c656] 4eb9 0006 af04            jsr        mt_evnt_timer
[0002c65c] 2f13                      move.l     (a3),-(a7)
[0002c65e] 486f 0004                 pea.l      4(a7)
[0002c662] 4855                      pea.l      (a5)
[0002c664] 43ef 000c                 lea.l      12(a7),a1
[0002c668] 41ef 000c                 lea.l      12(a7),a0
[0002c66c] 4eb9 0006 c978            jsr        mt_graf_mkstate
[0002c672] 4fef 000c                 lea.l      12(a7),a7
[0002c676] 7001                      moveq.l    #1,d0
[0002c678] c055                      and.w      (a5),d0
[0002c67a] 5340                      subq.w     #1,d0
[0002c67c] 6604                      bne.s      ed_edit_11
[0002c67e] 4a47                      tst.w      d7
[0002c680] 6ec4                      bgt.s      ed_edit_12
ed_edit_11:
[0002c682] 4a47                      tst.w      d7
[0002c684] 6e1c                      bgt.s      ed_edit_6
ed_edit_9:
[0002c686] 3404                      move.w     d4,d2
[0002c688] 3203                      move.w     d3,d1
[0002c68a] 3006                      move.w     d6,d0
[0002c68c] 204a                      movea.l    a2,a0
[0002c68e] 4eb9 0002 d6f0            jsr        sizing
[0002c694] 4a40                      tst.w      d0
[0002c696] 670a                      beq.s      ed_edit_6
[0002c698] 3204                      move.w     d4,d1
[0002c69a] 3003                      move.w     d3,d0
[0002c69c] 4eb9 0004 557a            jsr        Adr_drag
ed_edit_6:
[0002c6a2] 584f                      addq.w     #4,a7
[0002c6a4] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[0002c6a8] 4e75                      rts

find_parent:
[0002c6aa] 48e7 003e                 movem.l    a2-a6,-(a7)
[0002c6ae] 4fef fff4                 lea.l      -12(a7),a7
[0002c6b2] 2448                      movea.l    a0,a2
[0002c6b4] 2c49                      movea.l    a1,a6
[0002c6b6] 286f 0024                 movea.l    36(a7),a4
[0002c6ba] 2a6f 0028                 movea.l    40(a7),a5
[0002c6be] 2f50 0008                 move.l     (a0),8(a7)
[0002c6c2] 2279 0010 1f12            movea.l    ACSblk,a1
[0002c6c8] 2669 0240                 movea.l    576(a1),a3
[0002c6cc] 2f39 000d 99d6            move.l     _globl,-(a7)
[0002c6d2] 486f 0004                 pea.l      4(a7)
[0002c6d6] 43ef 000a                 lea.l      10(a7),a1
[0002c6da] 206b 0014                 movea.l    20(a3),a0
[0002c6de] 4eb9 0006 ba44            jsr        mt_objc_offset
[0002c6e4] 504f                      addq.w     #8,a7
[0002c6e6] 302f 0002                 move.w     2(a7),d0
[0002c6ea] d06b 0034                 add.w      52(a3),d0
[0002c6ee] 2079 0010 1f12            movea.l    ACSblk,a0
[0002c6f4] d068 0250                 add.w      592(a0),d0
[0002c6f8] 906a 0034                 sub.w      52(a2),d0
[0002c6fc] 3880                      move.w     d0,(a4)
[0002c6fe] 3217                      move.w     (a7),d1
[0002c700] d26b 0036                 add.w      54(a3),d1
[0002c704] 2079 0010 1f12            movea.l    ACSblk,a0
[0002c70a] d268 0252                 add.w      594(a0),d1
[0002c70e] 926a 0036                 sub.w      54(a2),d1
[0002c712] 3a81                      move.w     d1,(a5)
[0002c714] 3f01                      move.w     d1,-(a7)
[0002c716] 3414                      move.w     (a4),d2
[0002c718] 206f 000a                 movea.l    10(a7),a0
[0002c71c] 3028 0018                 move.w     24(a0),d0
[0002c720] 206a 0014                 movea.l    20(a2),a0
[0002c724] 7264                      moveq.l    #100,d1
[0002c726] 4eb9 0004 5468            jsr        Adr_find
[0002c72c] 544f                      addq.w     #2,a7
[0002c72e] 3c80                      move.w     d0,(a6)
[0002c730] 47ef 0004                 lea.l      4(a7),a3
[0002c734] 3016                      move.w     (a6),d0
[0002c736] 6a4a                      bpl.s      find_parent_1
[0002c738] 2f39 000d 99d6            move.l     _globl,-(a7)
[0002c73e] 4853                      pea.l      (a3)
[0002c740] 43ef 000e                 lea.l      14(a7),a1
[0002c744] 206f 0010                 movea.l    16(a7),a0
[0002c748] 3028 0018                 move.w     24(a0),d0
[0002c74c] 206a 0014                 movea.l    20(a2),a0
[0002c750] 4eb9 0006 ba44            jsr        mt_objc_offset
[0002c756] 504f                      addq.w     #8,a7
[0002c758] 3014                      move.w     (a4),d0
[0002c75a] b06f 0006                 cmp.w      6(a7),d0
[0002c75e] 6c04                      bge.s      find_parent_2
[0002c760] 4254                      clr.w      (a4)
[0002c762] 6006                      bra.s      find_parent_3
find_parent_2:
[0002c764] 302f 0006                 move.w     6(a7),d0
[0002c768] 9154                      sub.w      d0,(a4)
find_parent_3:
[0002c76a] 3015                      move.w     (a5),d0
[0002c76c] b053                      cmp.w      (a3),d0
[0002c76e] 6c04                      bge.s      find_parent_4
[0002c770] 4255                      clr.w      (a5)
[0002c772] 6004                      bra.s      find_parent_5
find_parent_4:
[0002c774] 3013                      move.w     (a3),d0
[0002c776] 9155                      sub.w      d0,(a5)
find_parent_5:
[0002c778] 206f 0008                 movea.l    8(a7),a0
[0002c77c] 3ca8 0018                 move.w     24(a0),(a6)
[0002c780] 6024                      bra.s      find_parent_6
find_parent_1:
[0002c782] 2f39 000d 99d6            move.l     _globl,-(a7)
[0002c788] 4853                      pea.l      (a3)
[0002c78a] 43ef 000e                 lea.l      14(a7),a1
[0002c78e] 3016                      move.w     (a6),d0
[0002c790] 206a 0014                 movea.l    20(a2),a0
[0002c794] 4eb9 0006 ba44            jsr        mt_objc_offset
[0002c79a] 504f                      addq.w     #8,a7
[0002c79c] 302f 0006                 move.w     6(a7),d0
[0002c7a0] 9154                      sub.w      d0,(a4)
[0002c7a2] 3013                      move.w     (a3),d0
[0002c7a4] 9155                      sub.w      d0,(a5)
find_parent_6:
[0002c7a6] 4fef 000c                 lea.l      12(a7),a7
[0002c7aa] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[0002c7ae] 4e75                      rts

new_ob:
[0002c7b0] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[0002c7b4] 4fef ffe6                 lea.l      -26(a7),a7
[0002c7b8] 2848                      movea.l    a0,a4
[0002c7ba] 3c00                      move.w     d0,d6
[0002c7bc] 3801                      move.w     d1,d4
[0002c7be] 2f49 0016                 move.l     a1,22(a7)
[0002c7c2] 2079 0010 1f12            movea.l    ACSblk,a0
[0002c7c8] 2f68 0240 0012            move.l     576(a0),18(a7)
[0002c7ce] 48c0                      ext.l      d0
[0002c7d0] 2400                      move.l     d0,d2
[0002c7d2] d482                      add.l      d2,d2
[0002c7d4] d480                      add.l      d0,d2
[0002c7d6] e78a                      lsl.l      #3,d2
[0002c7d8] 226f 0012                 movea.l    18(a7),a1
[0002c7dc] 2069 0014                 movea.l    20(a1),a0
[0002c7e0] 41f0 2818                 lea.l      24(a0,d2.l),a0
[0002c7e4] 2f68 000c 0004            move.l     12(a0),4(a7)
[0002c7ea] 3a28 0012                 move.w     18(a0),d5
[0002c7ee] 2054                      movea.l    (a4),a0
[0002c7f0] 3228 0018                 move.w     24(a0),d1
[0002c7f4] 6b00 027c                 bmi        new_ob_1
[0002c7f8] 2e90                      move.l     (a0),(a7)
[0002c7fa] 2257                      movea.l    (a7),a1
[0002c7fc] 0069 0001 0006            ori.w      #$0001,6(a1)
[0002c802] 2468 0004                 movea.l    4(a0),a2
[0002c806] 2a6c 0014                 movea.l    20(a4),a5
[0002c80a] 47ef 0008                 lea.l      8(a7),a3
[0002c80e] 486f 000e                 pea.l      14(a7)
[0002c812] 486f 0014                 pea.l      20(a7)
[0002c816] 224b                      movea.l    a3,a1
[0002c818] 3006                      move.w     d6,d0
[0002c81a] 204c                      movea.l    a4,a0
[0002c81c] 6100 fe8c                 bsr        find_parent
[0002c820] 504f                      addq.w     #8,a7
[0002c822] 3613                      move.w     (a3),d3
new_ob_3:
[0002c824] 3203                      move.w     d3,d1
[0002c826] 48c1                      ext.l      d1
[0002c828] 2001                      move.l     d1,d0
[0002c82a] d080                      add.l      d0,d0
[0002c82c] d081                      add.l      d1,d0
[0002c82e] e788                      lsl.l      #3,d0
[0002c830] 3435 080a                 move.w     10(a5,d0.l),d2
[0002c834] c47c 1000                 and.w      #$1000,d2
[0002c838] 6734                      beq.s      new_ob_2
[0002c83a] 4a44                      tst.w      d4
[0002c83c] 6700 0234                 beq        new_ob_1
[0002c840] 3206                      move.w     d6,d1
[0002c842] 48c1                      ext.l      d1
[0002c844] 2001                      move.l     d1,d0
[0002c846] d080                      add.l      d0,d0
[0002c848] d081                      add.l      d1,d0
[0002c84a] e788                      lsl.l      #3,d0
[0002c84c] 0275 ff7f 0808            andi.w     #$FF7F,8(a5,d0.l)
[0002c852] 0075 0001 080a            ori.w      #$0001,10(a5,d0.l)
[0002c858] 0275 ff7f 08f0            andi.w     #$FF7F,-16(a5,d0.l)
[0002c85e] 70ff                      moveq.l    #-1,d0
[0002c860] d046                      add.w      d6,d0
[0002c862] 204c                      movea.l    a4,a0
[0002c864] 4eb9 0004 b846            jsr        Awi_obredraw
[0002c86a] 6000 0206                 bra        new_ob_1
new_ob_2:
[0002c86e] 3003                      move.w     d3,d0
[0002c870] 206c 0014                 movea.l    20(a4),a0
[0002c874] 4eb9 0004 af6c            jsr        Aob_up
[0002c87a] 3600                      move.w     d0,d3
[0002c87c] 4a40                      tst.w      d0
[0002c87e] 6aa4                      bpl.s      new_ob_3
[0002c880] 72fe                      moveq.l    #-2,d1
[0002c882] d253                      add.w      (a3),d1
[0002c884] 48c1                      ext.l      d1
[0002c886] 83fc 0003                 divs.w     #$0003,d1
[0002c88a] 3681                      move.w     d1,(a3)
[0002c88c] 4a44                      tst.w      d4
[0002c88e] 661e                      bne.s      new_ob_4
[0002c890] b5ef 0004                 cmpa.l     4(a7),a2
[0002c894] 6618                      bne.s      new_ob_4
[0002c896] ba41                      cmp.w      d1,d5
[0002c898] 6614                      bne.s      new_ob_4
[0002c89a] 41f9 000b 8559            lea.l      WARN_SAME,a0
[0002c8a0] 7001                      moveq.l    #1,d0
[0002c8a2] 4eb9 0005 17fe            jsr        Awi_alert
[0002c8a8] 5340                      subq.w     #1,d0
[0002c8aa] 6700 01c6                 beq        new_ob_1
new_ob_4:
[0002c8ae] 3006                      move.w     d6,d0
[0002c8b0] 206f 0012                 movea.l    18(a7),a0
[0002c8b4] 4eb9 0004 492a            jsr        Adr_del
[0002c8ba] 4a44                      tst.w      d4
[0002c8bc] 6718                      beq.s      new_ob_5
[0002c8be] 76fe                      moveq.l    #-2,d3
[0002c8c0] d646                      add.w      d6,d3
[0002c8c2] 48c3                      ext.l      d3
[0002c8c4] 87fc 0003                 divs.w     #$0003,d3
[0002c8c8] 3003                      move.w     d3,d0
[0002c8ca] 206a 0004                 movea.l    4(a2),a0
[0002c8ce] 4eb9 0002 ba0a            jsr        free_ob
[0002c8d4] 6016                      bra.s      new_ob_6
new_ob_5:
[0002c8d6] 2f2f 0004                 move.l     4(a7),-(a7)
[0002c8da] 3005                      move.w     d5,d0
[0002c8dc] 224a                      movea.l    a2,a1
[0002c8de] 206f 0004                 movea.l    4(a7),a0
[0002c8e2] 4eb9 0002 b77e            jsr        copysub_ob
[0002c8e8] 584f                      addq.w     #4,a7
[0002c8ea] 3600                      move.w     d0,d3
new_ob_6:
[0002c8ec] 2a6a 0004                 movea.l    4(a2),a5
[0002c8f0] 3203                      move.w     d3,d1
[0002c8f2] 48c1                      ext.l      d1
[0002c8f4] 2001                      move.l     d1,d0
[0002c8f6] e788                      lsl.l      #3,d0
[0002c8f8] 9081                      sub.l      d1,d0
[0002c8fa] e788                      lsl.l      #3,d0
[0002c8fc] 3b93 0808                 move.w     (a3),8(a5,d0.l)
[0002c900] 3813                      move.w     (a3),d4
[0002c902] 48c4                      ext.l      d4
[0002c904] 2404                      move.l     d4,d2
[0002c906] e78a                      lsl.l      #3,d2
[0002c908] 9484                      sub.l      d4,d2
[0002c90a] e78a                      lsl.l      #3,d2
[0002c90c] 3835 280c                 move.w     12(a5,d2.l),d4
[0002c910] 4a44                      tst.w      d4
[0002c912] 6b12                      bmi.s      new_ob_7
[0002c914] 3c04                      move.w     d4,d6
[0002c916] 48c6                      ext.l      d6
[0002c918] 2a06                      move.l     d6,d5
[0002c91a] e78d                      lsl.l      #3,d5
[0002c91c] 9a86                      sub.l      d6,d5
[0002c91e] e78d                      lsl.l      #3,d5
[0002c920] 3b83 5808                 move.w     d3,8(a5,d5.l)
[0002c924] 6010                      bra.s      new_ob_8
new_ob_7:
[0002c926] 3213                      move.w     (a3),d1
[0002c928] 48c1                      ext.l      d1
[0002c92a] 2001                      move.l     d1,d0
[0002c92c] e788                      lsl.l      #3,d0
[0002c92e] 9081                      sub.l      d1,d0
[0002c930] e788                      lsl.l      #3,d0
[0002c932] 3b83 080a                 move.w     d3,10(a5,d0.l)
new_ob_8:
[0002c936] 3213                      move.w     (a3),d1
[0002c938] 48c1                      ext.l      d1
[0002c93a] 2001                      move.l     d1,d0
[0002c93c] e788                      lsl.l      #3,d0
[0002c93e] 9081                      sub.l      d1,d0
[0002c940] e788                      lsl.l      #3,d0
[0002c942] 3b83 080c                 move.w     d3,12(a5,d0.l)
[0002c946] 382f 0010                 move.w     16(a7),d4
[0002c94a] 3a2f 000e                 move.w     14(a7),d5
[0002c94e] 3403                      move.w     d3,d2
[0002c950] 48c2                      ext.l      d2
[0002c952] 2202                      move.l     d2,d1
[0002c954] e789                      lsl.l      #3,d1
[0002c956] 9282                      sub.l      d2,d1
[0002c958] e789                      lsl.l      #3,d1
[0002c95a] 3035 181c                 move.w     28(a5,d1.l),d0
[0002c95e] 6100 f65e                 bsr        pixel_x
[0002c962] 3c00                      move.w     d0,d6
[0002c964] 3403                      move.w     d3,d2
[0002c966] 48c2                      ext.l      d2
[0002c968] 2202                      move.l     d2,d1
[0002c96a] e789                      lsl.l      #3,d1
[0002c96c] 9282                      sub.l      d2,d1
[0002c96e] e789                      lsl.l      #3,d1
[0002c970] 3035 181e                 move.w     30(a5,d1.l),d0
[0002c974] 6100 f670                 bsr        pixel_y
[0002c978] 3f40 000c                 move.w     d0,12(a7)
[0002c97c] 3413                      move.w     (a3),d2
[0002c97e] 48c2                      ext.l      d2
[0002c980] 2202                      move.l     d2,d1
[0002c982] e789                      lsl.l      #3,d1
[0002c984] 9282                      sub.l      d2,d1
[0002c986] e789                      lsl.l      #3,d1
[0002c988] 3035 181c                 move.w     28(a5,d1.l),d0
[0002c98c] 6100 f630                 bsr        pixel_x
[0002c990] 3e00                      move.w     d0,d7
[0002c992] 3413                      move.w     (a3),d2
[0002c994] 48c2                      ext.l      d2
[0002c996] 2202                      move.l     d2,d1
[0002c998] e789                      lsl.l      #3,d1
[0002c99a] 9282                      sub.l      d2,d1
[0002c99c] e789                      lsl.l      #3,d1
[0002c99e] 3035 181e                 move.w     30(a5,d1.l),d0
[0002c9a2] 6100 f642                 bsr        pixel_y
[0002c9a6] 3f40 000a                 move.w     d0,10(a7)
[0002c9aa] 3204                      move.w     d4,d1
[0002c9ac] d246                      add.w      d6,d1
[0002c9ae] be41                      cmp.w      d1,d7
[0002c9b0] 6c32                      bge.s      new_ob_9
[0002c9b2] 3807                      move.w     d7,d4
[0002c9b4] 9846                      sub.w      d6,d4
[0002c9b6] 4a44                      tst.w      d4
[0002c9b8] 6a2a                      bpl.s      new_ob_9
[0002c9ba] 4244                      clr.w      d4
[0002c9bc] 41f9 000b 85b4            lea.l      WARN_XSHRINK,a0
[0002c9c2] 7001                      moveq.l    #1,d0
[0002c9c4] 4eb9 0005 17fe            jsr        Awi_alert
[0002c9ca] 5340                      subq.w     #1,d0
[0002c9cc] 6616                      bne.s      new_ob_9
[0002c9ce] 3007                      move.w     d7,d0
[0002c9d0] 6100 f558                 bsr        char_x
[0002c9d4] 3403                      move.w     d3,d2
[0002c9d6] 48c2                      ext.l      d2
[0002c9d8] 2202                      move.l     d2,d1
[0002c9da] e789                      lsl.l      #3,d1
[0002c9dc] 9282                      sub.l      d2,d1
[0002c9de] e789                      lsl.l      #3,d1
[0002c9e0] 3b80 181c                 move.w     d0,28(a5,d1.l)
new_ob_9:
[0002c9e4] 3005                      move.w     d5,d0
[0002c9e6] d06f 000c                 add.w      12(a7),d0
[0002c9ea] b06f 000a                 cmp.w      10(a7),d0
[0002c9ee] 6f38                      ble.s      new_ob_10
[0002c9f0] 3a2f 000a                 move.w     10(a7),d5
[0002c9f4] 9a6f 000c                 sub.w      12(a7),d5
[0002c9f8] 4a45                      tst.w      d5
[0002c9fa] 6a2c                      bpl.s      new_ob_10
[0002c9fc] 4245                      clr.w      d5
[0002c9fe] 41f9 000b 860b            lea.l      WARN_YSHRINK,a0
[0002ca04] 7001                      moveq.l    #1,d0
[0002ca06] 4eb9 0005 17fe            jsr        Awi_alert
[0002ca0c] 5340                      subq.w     #1,d0
[0002ca0e] 6618                      bne.s      new_ob_10
[0002ca10] 302f 000a                 move.w     10(a7),d0
[0002ca14] 6100 f55e                 bsr        char_y
[0002ca18] 3403                      move.w     d3,d2
[0002ca1a] 48c2                      ext.l      d2
[0002ca1c] 2202                      move.l     d2,d1
[0002ca1e] e789                      lsl.l      #3,d1
[0002ca20] 9282                      sub.l      d2,d1
[0002ca22] e789                      lsl.l      #3,d1
[0002ca24] 3b80 181e                 move.w     d0,30(a5,d1.l)
new_ob_10:
[0002ca28] 3004                      move.w     d4,d0
[0002ca2a] 6100 f4fe                 bsr        char_x
[0002ca2e] 3403                      move.w     d3,d2
[0002ca30] 48c2                      ext.l      d2
[0002ca32] 2202                      move.l     d2,d1
[0002ca34] e789                      lsl.l      #3,d1
[0002ca36] 9282                      sub.l      d2,d1
[0002ca38] e789                      lsl.l      #3,d1
[0002ca3a] 3b80 1818                 move.w     d0,24(a5,d1.l)
[0002ca3e] 3005                      move.w     d5,d0
[0002ca40] 6100 f532                 bsr        char_y
[0002ca44] 3403                      move.w     d3,d2
[0002ca46] 48c2                      ext.l      d2
[0002ca48] 2202                      move.l     d2,d1
[0002ca4a] e789                      lsl.l      #3,d1
[0002ca4c] 9282                      sub.l      d2,d1
[0002ca4e] e789                      lsl.l      #3,d1
[0002ca50] 3b80 181a                 move.w     d0,26(a5,d1.l)
[0002ca54] 206f 0016                 movea.l    22(a7),a0
[0002ca58] 5250                      addq.w     #1,(a0)
[0002ca5a] 0c50 0005                 cmpi.w     #$0005,(a0)
[0002ca5e] 6c12                      bge.s      new_ob_1
[0002ca60] 3003                      move.w     d3,d0
[0002ca62] d040                      add.w      d0,d0
[0002ca64] d043                      add.w      d3,d0
[0002ca66] 5240                      addq.w     #1,d0
[0002ca68] 3810                      move.w     (a0),d4
[0002ca6a] 48c4                      ext.l      d4
[0002ca6c] d884                      add.l      d4,d4
[0002ca6e] 3180 4800                 move.w     d0,0(a0,d4.l)
new_ob_1:
[0002ca72] 4fef 001a                 lea.l      26(a7),a7
[0002ca76] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[0002ca7a] 4e75                      rts

min_size:
[0002ca7c] 48e7 0038                 movem.l    a2-a4,-(a7)
[0002ca80] 4fef fff0                 lea.l      -16(a7),a7
[0002ca84] 2f48 000c                 move.l     a0,12(a7)
[0002ca88] 266f 0020                 movea.l    32(a7),a3
[0002ca8c] 286f 0024                 movea.l    36(a7),a4
[0002ca90] 2079 0010 1f12            movea.l    ACSblk,a0
[0002ca96] 36a8 0012                 move.w     18(a0),(a3)
[0002ca9a] 2079 0010 1f12            movea.l    ACSblk,a0
[0002caa0] 38a8 0014                 move.w     20(a0),(a4)
[0002caa4] 2ea9 000c                 move.l     12(a1),(a7)
[0002caa8] 1029 0007                 move.b     7(a1),d0
[0002caac] 4880                      ext.w      d0
[0002caae] 907c 0015                 sub.w      #$0015,d0
[0002cab2] b07c 000c                 cmp.w      #$000C,d0
[0002cab6] 6200 0104                 bhi        min_size_1
[0002caba] d040                      add.w      d0,d0
[0002cabc] 303b 0006                 move.w     $0002CAC4(pc,d0.w),d0
[0002cac0] 4efb 0002                 jmp        $0002CAC4(pc,d0.w)
J21:
[0002cac4] 001a                      dc.w $001a   ; min_size_2-J21
[0002cac6] 001a                      dc.w $001a   ; min_size_2-J21
[0002cac8] 0050                      dc.w $0050   ; min_size_3-J21
[0002caca] 006e                      dc.w $006e   ; min_size_4-J21
[0002cacc] 00f8                      dc.w $00f8   ; min_size_1-J21
[0002cace] 00a6                      dc.w $00a6   ; min_size_5-J21
[0002cad0] 00f8                      dc.w $00f8   ; min_size_1-J21
[0002cad2] 00a6                      dc.w $00a6   ; min_size_5-J21
[0002cad4] 0034                      dc.w $0034   ; min_size_6-J21
[0002cad6] 0034                      dc.w $0034   ; min_size_6-J21
[0002cad8] 00bc                      dc.w $00bc   ; min_size_7-J21
[0002cada] 00a6                      dc.w $00a6   ; min_size_5-J21
[0002cadc] 00bc                      dc.w $00bc   ; min_size_7-J21
min_size_2:
[0002cade] 2057                      movea.l    (a7),a0
[0002cae0] 2050                      movea.l    (a0),a0
[0002cae2] 4eb9 0007 69b0            jsr        strlen
[0002cae8] 2079 0010 1f12            movea.l    ACSblk,a0
[0002caee] c1e8 0012                 muls.w     18(a0),d0
[0002caf2] 3680                      move.w     d0,(a3)
[0002caf4] 6000 00c6                 bra        min_size_1
min_size_6:
[0002caf8] 2057                      movea.l    (a7),a0
[0002cafa] 2068 0004                 movea.l    4(a0),a0
[0002cafe] 4eb9 0007 69b0            jsr        strlen
[0002cb04] 2079 0010 1f12            movea.l    ACSblk,a0
[0002cb0a] c1e8 0012                 muls.w     18(a0),d0
[0002cb0e] 3680                      move.w     d0,(a3)
[0002cb10] 6000 00aa                 bra        min_size_1
min_size_3:
[0002cb14] 2057                      movea.l    (a7),a0
[0002cb16] 3028 0004                 move.w     4(a0),d0
[0002cb1a] e748                      lsl.w      #3,d0
[0002cb1c] d068 0008                 add.w      8(a0),d0
[0002cb20] 3680                      move.w     d0,(a3)
[0002cb22] 2057                      movea.l    (a7),a0
[0002cb24] 3228 0006                 move.w     6(a0),d1
[0002cb28] d268 000a                 add.w      10(a0),d1
[0002cb2c] 3881                      move.w     d1,(a4)
[0002cb2e] 6000 008c                 bra        min_size_1
min_size_4:
[0002cb32] 206f 000c                 movea.l    12(a7),a0
[0002cb36] 2268 0014                 movea.l    20(a0),a1
[0002cb3a] 2f69 0004 0004            move.l     4(a1),4(a7)
[0002cb40] 206f 0004                 movea.l    4(a7),a0
[0002cb44] 2050                      movea.l    (a0),a0
[0002cb46] 41e8 0016                 lea.l      22(a0),a0
[0002cb4a] 4eb9 0002 34bc            jsr        part_get
[0002cb50] 2f48 0008                 move.l     a0,8(a7)
[0002cb54] 2008                      move.l     a0,d0
[0002cb56] 6764                      beq.s      min_size_1
[0002cb58] 2f0c                      move.l     a4,-(a7)
[0002cb5a] 224b                      movea.l    a3,a1
[0002cb5c] 2468 003c                 movea.l    60(a0),a2
[0002cb60] 206f 0004                 movea.l    4(a7),a0
[0002cb64] 4e92                      jsr        (a2)
[0002cb66] 584f                      addq.w     #4,a7
[0002cb68] 6052                      bra.s      min_size_1
min_size_5:
[0002cb6a] 2057                      movea.l    (a7),a0
[0002cb6c] 4eb9 0007 69b0            jsr        strlen
[0002cb72] 2079 0010 1f12            movea.l    ACSblk,a0
[0002cb78] c1e8 0012                 muls.w     18(a0),d0
[0002cb7c] 3680                      move.w     d0,(a3)
[0002cb7e] 603c                      bra.s      min_size_1
min_size_7:
[0002cb80] 2057                      movea.l    (a7),a0
[0002cb82] 3028 001a                 move.w     26(a0),d0
[0002cb86] d068 001e                 add.w      30(a0),d0
[0002cb8a] 3228 0012                 move.w     18(a0),d1
[0002cb8e] d268 0016                 add.w      22(a0),d1
[0002cb92] b240                      cmp.w      d0,d1
[0002cb94] 6c04                      bge.s      min_size_8
[0002cb96] 3400                      move.w     d0,d2
[0002cb98] 6002                      bra.s      min_size_9
min_size_8:
[0002cb9a] 3401                      move.w     d1,d2
min_size_9:
[0002cb9c] 3682                      move.w     d2,(a3)
[0002cb9e] 2057                      movea.l    (a7),a0
[0002cba0] 3028 001c                 move.w     28(a0),d0
[0002cba4] d068 0020                 add.w      32(a0),d0
[0002cba8] 3228 0014                 move.w     20(a0),d1
[0002cbac] d268 0018                 add.w      24(a0),d1
[0002cbb0] b240                      cmp.w      d0,d1
[0002cbb2] 6c04                      bge.s      min_size_10
[0002cbb4] 3400                      move.w     d0,d2
[0002cbb6] 6002                      bra.s      min_size_11
min_size_10:
[0002cbb8] 3401                      move.w     d1,d2
min_size_11:
[0002cbba] 3882                      move.w     d2,(a4)
min_size_1:
[0002cbbc] 3013                      move.w     (a3),d0
[0002cbbe] 6e0a                      bgt.s      min_size_12
[0002cbc0] 2079 0010 1f12            movea.l    ACSblk,a0
[0002cbc6] 36a8 0012                 move.w     18(a0),(a3)
min_size_12:
[0002cbca] 3014                      move.w     (a4),d0
[0002cbcc] 6e0a                      bgt.s      min_size_13
[0002cbce] 2079 0010 1f12            movea.l    ACSblk,a0
[0002cbd4] 38a8 0014                 move.w     20(a0),(a4)
min_size_13:
[0002cbd8] 4fef 0010                 lea.l      16(a7),a7
[0002cbdc] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0002cbe0] 4e75                      rts

ob_addselect:
[0002cbe2] 48e7 1c38                 movem.l    d3-d5/a2-a4,-(a7)
[0002cbe6] 2448                      movea.l    a0,a2
[0002cbe8] 3600                      move.w     d0,d3
[0002cbea] 266a 0014                 movea.l    20(a2),a3
[0002cbee] 49f9 0010 1f12            lea.l      ACSblk,a4
[0002cbf4] 2054                      movea.l    (a4),a0
[0002cbf6] 3028 0246                 move.w     582(a0),d0
[0002cbfa] 6f00 00b8                 ble        ob_addselect_1
[0002cbfe] 3803                      move.w     d3,d4
ob_addselect_3:
[0002cc00] 3004                      move.w     d4,d0
[0002cc02] 204b                      movea.l    a3,a0
[0002cc04] 4eb9 0004 af6c            jsr        Aob_up
[0002cc0a] 3800                      move.w     d0,d4
[0002cc0c] 4a40                      tst.w      d0
[0002cc0e] 6f1c                      ble.s      ob_addselect_2
[0002cc10] 7201                      moveq.l    #1,d1
[0002cc12] 48c0                      ext.l      d0
[0002cc14] 2400                      move.l     d0,d2
[0002cc16] d482                      add.l      d2,d2
[0002cc18] d480                      add.l      d0,d2
[0002cc1a] e78a                      lsl.l      #3,d2
[0002cc1c] c273 280a                 and.w      10(a3,d2.l),d1
[0002cc20] 67de                      beq.s      ob_addselect_3
[0002cc22] 204a                      movea.l    a2,a0
[0002cc24] 3004                      move.w     d4,d0
[0002cc26] 4eb9 0004 492a            jsr        Adr_del
ob_addselect_2:
[0002cc2c] 7801                      moveq.l    #1,d4
[0002cc2e] 3203                      move.w     d3,d1
[0002cc30] 48c1                      ext.l      d1
[0002cc32] 2001                      move.l     d1,d0
[0002cc34] d080                      add.l      d0,d0
[0002cc36] d081                      add.l      d1,d0
[0002cc38] e788                      lsl.l      #3,d0
[0002cc3a] d873 0802                 add.w      2(a3,d0.l),d4
[0002cc3e] 4a44                      tst.w      d4
[0002cc40] 6f00 0072                 ble.w      ob_addselect_1
[0002cc44] 606a                      bra.s      ob_addselect_4
ob_addselect_9:
[0002cc46] 7001                      moveq.l    #1,d0
[0002cc48] 3404                      move.w     d4,d2
[0002cc4a] 48c2                      ext.l      d2
[0002cc4c] 2202                      move.l     d2,d1
[0002cc4e] d281                      add.l      d1,d1
[0002cc50] d282                      add.l      d2,d1
[0002cc52] e789                      lsl.l      #3,d1
[0002cc54] c073 180a                 and.w      10(a3,d1.l),d0
[0002cc58] 6712                      beq.s      ob_addselect_5
[0002cc5a] 204a                      movea.l    a2,a0
[0002cc5c] 3004                      move.w     d4,d0
[0002cc5e] 4eb9 0004 492a            jsr        Adr_del
[0002cc64] 2054                      movea.l    (a4),a0
[0002cc66] 3028 0246                 move.w     582(a0),d0
[0002cc6a] 6748                      beq.s      ob_addselect_1
ob_addselect_5:
[0002cc6c] 7a01                      moveq.l    #1,d5
[0002cc6e] 3204                      move.w     d4,d1
[0002cc70] 48c1                      ext.l      d1
[0002cc72] 2001                      move.l     d1,d0
[0002cc74] d080                      add.l      d0,d0
[0002cc76] d081                      add.l      d1,d0
[0002cc78] e788                      lsl.l      #3,d0
[0002cc7a] da73 0802                 add.w      2(a3,d0.l),d5
[0002cc7e] ba7c 0001                 cmp.w      #$0001,d5
[0002cc82] 6c2a                      bge.s      ob_addselect_6
[0002cc84] 6002                      bra.s      ob_addselect_7
ob_addselect_8:
[0002cc86] 3805                      move.w     d5,d4
ob_addselect_7:
[0002cc88] 3204                      move.w     d4,d1
[0002cc8a] 48c1                      ext.l      d1
[0002cc8c] 2001                      move.l     d1,d0
[0002cc8e] d080                      add.l      d0,d0
[0002cc90] d081                      add.l      d1,d0
[0002cc92] e788                      lsl.l      #3,d0
[0002cc94] 3a33 0800                 move.w     0(a3,d0.l),d5
[0002cc98] b645                      cmp.w      d5,d3
[0002cc9a] 6712                      beq.s      ob_addselect_6
[0002cc9c] 3005                      move.w     d5,d0
[0002cc9e] 48c0                      ext.l      d0
[0002cca0] 2400                      move.l     d0,d2
[0002cca2] d482                      add.l      d2,d2
[0002cca4] d480                      add.l      d0,d2
[0002cca6] e78a                      lsl.l      #3,d2
[0002cca8] b873 2804                 cmp.w      4(a3,d2.l),d4
[0002ccac] 67d8                      beq.s      ob_addselect_8
ob_addselect_6:
[0002ccae] 3805                      move.w     d5,d4
ob_addselect_4:
[0002ccb0] b644                      cmp.w      d4,d3
[0002ccb2] 6692                      bne.s      ob_addselect_9
ob_addselect_1:
[0002ccb4] 3003                      move.w     d3,d0
[0002ccb6] 204a                      movea.l    a2,a0
[0002ccb8] 4eb9 0004 487c            jsr        Adr_add
[0002ccbe] 2052                      movea.l    (a2),a0
[0002ccc0] 70fe                      moveq.l    #-2,d0
[0002ccc2] d043                      add.w      d3,d0
[0002ccc4] 48c0                      ext.l      d0
[0002ccc6] 81fc 0003                 divs.w     #$0003,d0
[0002ccca] 3140 000a                 move.w     d0,10(a0)
[0002ccce] 4cdf 1c38                 movem.l    (a7)+,d3-d5/a2-a4
[0002ccd2] 4e75                      rts

edob_next:
[0002ccd4] 48e7 1c38                 movem.l    d3-d5/a2-a4,-(a7)
[0002ccd8] 45f9 0010 1f12            lea.l      ACSblk,a2
[0002ccde] 2052                      movea.l    (a2),a0
[0002cce0] 2268 0258                 movea.l    600(a0),a1
[0002cce4] 2651                      movea.l    (a1),a3
[0002cce6] 362b 000a                 move.w     10(a3),d3
[0002ccea] 4a43                      tst.w      d3
[0002ccec] 6b00 00ee                 bmi        edob_next_1
[0002ccf0] 302b 0018                 move.w     24(a3),d0
[0002ccf4] 6b00 00e6                 bmi        edob_next_1
[0002ccf8] 78fe                      moveq.l    #-2,d4
[0002ccfa] d840                      add.w      d0,d4
[0002ccfc] 48c4                      ext.l      d4
[0002ccfe] 89fc 0003                 divs.w     #$0003,d4
[0002cd02] 206b 0004                 movea.l    4(a3),a0
[0002cd06] 2868 0004                 movea.l    4(a0),a4
[0002cd0a] 2252                      movea.l    (a2),a1
[0002cd0c] 0c69 0001 0246            cmpi.w     #$0001,582(a1)
[0002cd12] 6600 00aa                 bne        edob_next_2
[0002cd16] 2069 0240                 movea.l    576(a1),a0
[0002cd1a] b1e9 0258                 cmpa.l     600(a1),a0
[0002cd1e] 6600 009e                 bne        edob_next_2
edob_next_11:
[0002cd22] 3203                      move.w     d3,d1
[0002cd24] 48c1                      ext.l      d1
[0002cd26] 2001                      move.l     d1,d0
[0002cd28] e788                      lsl.l      #3,d0
[0002cd2a] 9081                      sub.l      d1,d0
[0002cd2c] e788                      lsl.l      #3,d0
[0002cd2e] 3434 0812                 move.w     18(a4,d0.l),d2
[0002cd32] c47c 1000                 and.w      #$1000,d2
[0002cd36] 661a                      bne.s      edob_next_3
[0002cd38] b843                      cmp.w      d3,d4
[0002cd3a] 671a                      beq.s      edob_next_4
[0002cd3c] 303c 0080                 move.w     #$0080,d0
[0002cd40] 3403                      move.w     d3,d2
[0002cd42] 48c2                      ext.l      d2
[0002cd44] 2202                      move.l     d2,d1
[0002cd46] e789                      lsl.l      #3,d1
[0002cd48] 9282                      sub.l      d2,d1
[0002cd4a] e789                      lsl.l      #3,d1
[0002cd4c] c074 1810                 and.w      16(a4,d1.l),d0
[0002cd50] 6704                      beq.s      edob_next_4
edob_next_3:
[0002cd52] 7aff                      moveq.l    #-1,d5
[0002cd54] 6010                      bra.s      edob_next_5
edob_next_4:
[0002cd56] 3203                      move.w     d3,d1
[0002cd58] 48c1                      ext.l      d1
[0002cd5a] 2001                      move.l     d1,d0
[0002cd5c] e788                      lsl.l      #3,d0
[0002cd5e] 9081                      sub.l      d1,d0
[0002cd60] e788                      lsl.l      #3,d0
[0002cd62] 3a34 080a                 move.w     10(a4,d0.l),d5
edob_next_5:
[0002cd66] 4a45                      tst.w      d5
[0002cd68] 6a2e                      bpl.s      edob_next_6
[0002cd6a] 6028                      bra.s      edob_next_7
edob_next_8:
[0002cd6c] 3203                      move.w     d3,d1
[0002cd6e] 48c1                      ext.l      d1
[0002cd70] 2001                      move.l     d1,d0
[0002cd72] e788                      lsl.l      #3,d0
[0002cd74] 9081                      sub.l      d1,d0
[0002cd76] e788                      lsl.l      #3,d0
[0002cd78] 3a34 0808                 move.w     8(a4,d0.l),d5
[0002cd7c] 4a45                      tst.w      d5
[0002cd7e] 6b18                      bmi.s      edob_next_6
[0002cd80] 3005                      move.w     d5,d0
[0002cd82] 48c0                      ext.l      d0
[0002cd84] 2400                      move.l     d0,d2
[0002cd86] e78a                      lsl.l      #3,d2
[0002cd88] 9480                      sub.l      d0,d2
[0002cd8a] e78a                      lsl.l      #3,d2
[0002cd8c] b674 280c                 cmp.w      12(a4,d2.l),d3
[0002cd90] 6606                      bne.s      edob_next_6
[0002cd92] 3605                      move.w     d5,d3
edob_next_7:
[0002cd94] b843                      cmp.w      d3,d4
[0002cd96] 66d4                      bne.s      edob_next_8
edob_next_6:
[0002cd98] 4a45                      tst.w      d5
[0002cd9a] 6a04                      bpl.s      edob_next_9
[0002cd9c] 3604                      move.w     d4,d3
[0002cd9e] 6002                      bra.s      edob_next_10
edob_next_9:
[0002cda0] 3605                      move.w     d5,d3
edob_next_10:
[0002cda2] b843                      cmp.w      d3,d4
[0002cda4] 6718                      beq.s      edob_next_2
[0002cda6] 303c 0080                 move.w     #$0080,d0
[0002cdaa] 3403                      move.w     d3,d2
[0002cdac] 48c2                      ext.l      d2
[0002cdae] 2202                      move.l     d2,d1
[0002cdb0] e789                      lsl.l      #3,d1
[0002cdb2] 9282                      sub.l      d2,d1
[0002cdb4] e789                      lsl.l      #3,d1
[0002cdb6] c074 1810                 and.w      16(a4,d1.l),d0
[0002cdba] 6600 ff66                 bne        edob_next_11
edob_next_2:
[0002cdbe] 3743 000a                 move.w     d3,10(a3)
[0002cdc2] 4eb9 0004 4a26            jsr        Adr_unselect
[0002cdc8] 3003                      move.w     d3,d0
[0002cdca] d040                      add.w      d0,d0
[0002cdcc] d043                      add.w      d3,d0
[0002cdce] 5440                      addq.w     #2,d0
[0002cdd0] 2052                      movea.l    (a2),a0
[0002cdd2] 2068 0258                 movea.l    600(a0),a0
[0002cdd6] 4eb9 0004 487c            jsr        Adr_add
edob_next_1:
[0002cddc] 4cdf 1c38                 movem.l    (a7)+,d3-d5/a2-a4
[0002cde0] 4e75                      rts

rubberbox:
[0002cde2] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[0002cde6] 4fef ffaa                 lea.l      -86(a7),a7
[0002cdea] 3f40 0054                 move.w     d0,84(a7)
[0002cdee] 3a01                      move.w     d1,d5
[0002cdf0] 3c02                      move.w     d2,d6
[0002cdf2] 2649                      movea.l    a1,a3
[0002cdf4] 246f 0082                 movea.l    130(a7),a2
[0002cdf8] 2279 0010 1f12            movea.l    ACSblk,a1
[0002cdfe] 3229 0012                 move.w     18(a1),d1
[0002ce02] e241                      asr.w      #1,d1
[0002ce04] 3f41 0038                 move.w     d1,56(a7)
[0002ce08] 3429 0014                 move.w     20(a1),d2
[0002ce0c] e242                      asr.w      #1,d2
[0002ce0e] 3f42 0036                 move.w     d2,54(a7)
[0002ce12] 2f50 0008                 move.l     (a0),8(a7)
[0002ce16] 2868 0014                 movea.l    20(a0),a4
[0002ce1a] 41f9 0009 b8be            lea.l      INFO_OB_WH,a0
[0002ce20] 4eb9 0004 9a5c            jsr        Aob_create
[0002ce26] 2a48                      movea.l    a0,a5
[0002ce28] 200d                      move.l     a5,d0
[0002ce2a] 6700 00b4                 beq        rubberbox_1
[0002ce2e] 4eb9 0004 a25e            jsr        Aob_fix
[0002ce34] 3005                      move.w     d5,d0
[0002ce36] 906d 0014                 sub.w      20(a5),d0
[0002ce3a] 3b40 0010                 move.w     d0,16(a5)
[0002ce3e] 3206                      move.w     d6,d1
[0002ce40] 926d 0016                 sub.w      22(a5),d1
[0002ce44] 3b41 0012                 move.w     d1,18(a5)
[0002ce48] 302d 0010                 move.w     16(a5),d0
[0002ce4c] 6b04                      bmi.s      rubberbox_2
[0002ce4e] 4a41                      tst.w      d1
[0002ce50] 6a0e                      bpl.s      rubberbox_3
rubberbox_2:
[0002ce52] 204d                      movea.l    a5,a0
[0002ce54] 4eb9 0004 9b7c            jsr        Aob_delete
[0002ce5a] 9bcd                      suba.l     a5,a5
[0002ce5c] 6000 0082                 bra        rubberbox_1
rubberbox_3:
[0002ce60] 322d 0016                 move.w     22(a5),d1
[0002ce64] 302d 0014                 move.w     20(a5),d0
[0002ce68] 4eb9 0004 d928            jsr        Abp_create
[0002ce6e] 2f48 0018                 move.l     a0,24(a7)
[0002ce72] 676c                      beq.s      rubberbox_1
[0002ce74] 302d 0010                 move.w     16(a5),d0
[0002ce78] 3f40 001c                 move.w     d0,28(a7)
[0002ce7c] 72ff                      moveq.l    #-1,d1
[0002ce7e] d26d 0014                 add.w      20(a5),d1
[0002ce82] 3f41 0028                 move.w     d1,40(a7)
[0002ce86] d041                      add.w      d1,d0
[0002ce88] 3f40 0020                 move.w     d0,32(a7)
[0002ce8c] 322d 0012                 move.w     18(a5),d1
[0002ce90] 3f41 001e                 move.w     d1,30(a7)
[0002ce94] 70ff                      moveq.l    #-1,d0
[0002ce96] d06d 0016                 add.w      22(a5),d0
[0002ce9a] 3f40 002a                 move.w     d0,42(a7)
[0002ce9e] d240                      add.w      d0,d1
[0002cea0] 3f41 0022                 move.w     d1,34(a7)
[0002cea4] 4240                      clr.w      d0
[0002cea6] 3f40 0026                 move.w     d0,38(a7)
[0002ceaa] 3f40 0024                 move.w     d0,36(a7)
[0002ceae] 4eb9 0004 9970            jsr        Amo_hide
[0002ceb4] 2f2f 0018                 move.l     24(a7),-(a7)
[0002ceb8] 2279 0010 1f12            movea.l    ACSblk,a1
[0002cebe] 43e9 026a                 lea.l      618(a1),a1
[0002cec2] 41ef 0020                 lea.l      32(a7),a0
[0002cec6] 7203                      moveq.l    #3,d1
[0002cec8] 2c79 0010 1f12            movea.l    ACSblk,a6
[0002cece] 302e 0010                 move.w     16(a6),d0
[0002ced2] 4eb9 0006 65ce            jsr        vro_cpyfm
[0002ced8] 584f                      addq.w     #4,a7
[0002ceda] 4eb9 0004 9994            jsr        Amo_show
rubberbox_1:
[0002cee0] 206f 0008                 movea.l    8(a7),a0
[0002cee4] 2268 0004                 movea.l    4(a0),a1
[0002cee8] 2f69 0004 0004            move.l     4(a1),4(a7)
[0002ceee] 72fe                      moveq.l    #-2,d1
[0002cef0] d26f 0054                 add.w      84(a7),d1
[0002cef4] 48c1                      ext.l      d1
[0002cef6] 83fc 0003                 divs.w     #$0003,d1
[0002cefa] 48c1                      ext.l      d1
[0002cefc] 2001                      move.l     d1,d0
[0002cefe] e788                      lsl.l      #3,d0
[0002cf00] 9081                      sub.l      d1,d0
[0002cf02] e788                      lsl.l      #3,d0
[0002cf04] 2c6f 0004                 movea.l    4(a7),a6
[0002cf08] ddc0                      adda.l     d0,a6
[0002cf0a] 2e8e                      move.l     a6,(a7)
[0002cf0c] 2079 0010 1f12            movea.l    ACSblk,a0
[0002cf12] 2068 023c                 movea.l    572(a0),a0
[0002cf16] 41e8 0044                 lea.l      68(a0),a0
[0002cf1a] 4eb9 0004 9898            jsr        Amo_new
[0002cf20] 486f 0050                 pea.l      80(a7)
[0002cf24] 486f 0056                 pea.l      86(a7)
[0002cf28] 322f 005c                 move.w     92(a7),d1
[0002cf2c] 48c1                      ext.l      d1
[0002cf2e] 2001                      move.l     d1,d0
[0002cf30] d080                      add.l      d0,d0
[0002cf32] d081                      add.l      d1,d0
[0002cf34] e788                      lsl.l      #3,d0
[0002cf36] 43f4 08e8                 lea.l      -24(a4,d0.l),a1
[0002cf3a] 206f 0008                 movea.l    8(a7),a0
[0002cf3e] 6100 fb3c                 bsr        min_size
[0002cf42] 504f                      addq.w     #8,a7
[0002cf44] 322f 0054                 move.w     84(a7),d1
[0002cf48] 48c1                      ext.l      d1
[0002cf4a] 2001                      move.l     d1,d0
[0002cf4c] d080                      add.l      d0,d0
[0002cf4e] d081                      add.l      d1,d0
[0002cf50] e788                      lsl.l      #3,d0
[0002cf52] 3634 0802                 move.w     2(a4,d0.l),d3
[0002cf56] 4a43                      tst.w      d3
[0002cf58] 6f00 01d4                 ble        rubberbox_4
[0002cf5c] 7440                      moveq.l    #64,d2
[0002cf5e] c474 080a                 and.w      10(a4,d0.l),d2
[0002cf62] 6600 01ca                 bne        rubberbox_4
rubberbox_17:
[0002cf66] 3203                      move.w     d3,d1
[0002cf68] 48c1                      ext.l      d1
[0002cf6a] 2001                      move.l     d1,d0
[0002cf6c] d080                      add.l      d0,d0
[0002cf6e] d081                      add.l      d1,d0
[0002cf70] e788                      lsl.l      #3,d0
[0002cf72] 3434 080a                 move.w     10(a4,d0.l),d2
[0002cf76] c47c 0300                 and.w      #$0300,d2
[0002cf7a] 4a42                      tst.w      d2
[0002cf7c] 6718                      beq.s      rubberbox_5
[0002cf7e] 947c 0100                 sub.w      #$0100,d2
[0002cf82] 6700 0084                 beq        rubberbox_6
[0002cf86] 947c 0100                 sub.w      #$0100,d2
[0002cf8a] 6722                      beq.s      rubberbox_7
[0002cf8c] 947c 0100                 sub.w      #$0100,d2
[0002cf90] 6752                      beq.s      rubberbox_8
[0002cf92] 6000 00a0                 bra        rubberbox_9
rubberbox_5:
[0002cf96] 3203                      move.w     d3,d1
[0002cf98] 48c1                      ext.l      d1
[0002cf9a] 2001                      move.l     d1,d0
[0002cf9c] d080                      add.l      d0,d0
[0002cf9e] d081                      add.l      d1,d0
[0002cfa0] e788                      lsl.l      #3,d0
[0002cfa2] 3834 0810                 move.w     16(a4,d0.l),d4
[0002cfa6] d874 0814                 add.w      20(a4,d0.l),d4
[0002cfaa] 6000 0088                 bra        rubberbox_9
rubberbox_7:
[0002cfae] 322f 0054                 move.w     84(a7),d1
[0002cfb2] 48c1                      ext.l      d1
[0002cfb4] 2001                      move.l     d1,d0
[0002cfb6] d080                      add.l      d0,d0
[0002cfb8] d081                      add.l      d1,d0
[0002cfba] e788                      lsl.l      #3,d0
[0002cfbc] 3834 0814                 move.w     20(a4,d0.l),d4
[0002cfc0] 3003                      move.w     d3,d0
[0002cfc2] 48c0                      ext.l      d0
[0002cfc4] 2400                      move.l     d0,d2
[0002cfc6] d482                      add.l      d2,d2
[0002cfc8] d480                      add.l      d0,d2
[0002cfca] e78a                      lsl.l      #3,d2
[0002cfcc] 9874 2810                 sub.w      16(a4,d2.l),d4
[0002cfd0] 3234 2810                 move.w     16(a4,d2.l),d1
[0002cfd4] d274 2814                 add.w      20(a4,d2.l),d1
[0002cfd8] 3f41 004a                 move.w     d1,74(a7)
[0002cfdc] b841                      cmp.w      d1,d4
[0002cfde] 6c54                      bge.s      rubberbox_9
[0002cfe0] 3801                      move.w     d1,d4
[0002cfe2] 6050                      bra.s      rubberbox_9
rubberbox_8:
[0002cfe4] 322f 0054                 move.w     84(a7),d1
[0002cfe8] 48c1                      ext.l      d1
[0002cfea] 2001                      move.l     d1,d0
[0002cfec] d080                      add.l      d0,d0
[0002cfee] d081                      add.l      d1,d0
[0002cff0] e788                      lsl.l      #3,d0
[0002cff2] 3834 0814                 move.w     20(a4,d0.l),d4
[0002cff6] 3003                      move.w     d3,d0
[0002cff8] 48c0                      ext.l      d0
[0002cffa] 2400                      move.l     d0,d2
[0002cffc] d482                      add.l      d2,d2
[0002cffe] d480                      add.l      d0,d2
[0002d000] e78a                      lsl.l      #3,d2
[0002d002] 9874 2810                 sub.w      16(a4,d2.l),d4
[0002d006] 602c                      bra.s      rubberbox_9
rubberbox_6:
[0002d008] 322f 0054                 move.w     84(a7),d1
[0002d00c] 48c1                      ext.l      d1
[0002d00e] 2001                      move.l     d1,d0
[0002d010] d080                      add.l      d0,d0
[0002d012] d081                      add.l      d1,d0
[0002d014] e788                      lsl.l      #3,d0
[0002d016] 3834 0814                 move.w     20(a4,d0.l),d4
[0002d01a] 3003                      move.w     d3,d0
[0002d01c] 48c0                      ext.l      d0
[0002d01e] 2400                      move.l     d0,d2
[0002d020] d482                      add.l      d2,d2
[0002d022] d480                      add.l      d0,d2
[0002d024] e78a                      lsl.l      #3,d2
[0002d026] 9874 2814                 sub.w      20(a4,d2.l),d4
[0002d02a] 2079 0010 1f12            movea.l    ACSblk,a0
[0002d030] d868 0012                 add.w      18(a0),d4
rubberbox_9:
[0002d034] b86f 0052                 cmp.w      82(a7),d4
[0002d038] 6f04                      ble.s      rubberbox_10
[0002d03a] 3f44 0052                 move.w     d4,82(a7)
rubberbox_10:
[0002d03e] 3203                      move.w     d3,d1
[0002d040] 48c1                      ext.l      d1
[0002d042] 2001                      move.l     d1,d0
[0002d044] d080                      add.l      d0,d0
[0002d046] d081                      add.l      d1,d0
[0002d048] e788                      lsl.l      #3,d0
[0002d04a] 3434 080a                 move.w     10(a4,d0.l),d2
[0002d04e] c47c 0c00                 and.w      #$0C00,d2
[0002d052] 4a42                      tst.w      d2
[0002d054] 6718                      beq.s      rubberbox_11
[0002d056] 947c 0400                 sub.w      #$0400,d2
[0002d05a] 6700 0084                 beq        rubberbox_12
[0002d05e] 947c 0400                 sub.w      #$0400,d2
[0002d062] 6722                      beq.s      rubberbox_13
[0002d064] 947c 0400                 sub.w      #$0400,d2
[0002d068] 6752                      beq.s      rubberbox_14
[0002d06a] 6000 00a0                 bra        rubberbox_15
rubberbox_11:
[0002d06e] 3203                      move.w     d3,d1
[0002d070] 48c1                      ext.l      d1
[0002d072] 2001                      move.l     d1,d0
[0002d074] d080                      add.l      d0,d0
[0002d076] d081                      add.l      d1,d0
[0002d078] e788                      lsl.l      #3,d0
[0002d07a] 3e34 0812                 move.w     18(a4,d0.l),d7
[0002d07e] de74 0816                 add.w      22(a4,d0.l),d7
[0002d082] 6000 0088                 bra        rubberbox_15
rubberbox_13:
[0002d086] 322f 0054                 move.w     84(a7),d1
[0002d08a] 48c1                      ext.l      d1
[0002d08c] 2001                      move.l     d1,d0
[0002d08e] d080                      add.l      d0,d0
[0002d090] d081                      add.l      d1,d0
[0002d092] e788                      lsl.l      #3,d0
[0002d094] 3e34 0816                 move.w     22(a4,d0.l),d7
[0002d098] 3003                      move.w     d3,d0
[0002d09a] 48c0                      ext.l      d0
[0002d09c] 2400                      move.l     d0,d2
[0002d09e] d482                      add.l      d2,d2
[0002d0a0] d480                      add.l      d0,d2
[0002d0a2] e78a                      lsl.l      #3,d2
[0002d0a4] 9e74 2812                 sub.w      18(a4,d2.l),d7
[0002d0a8] 3234 2812                 move.w     18(a4,d2.l),d1
[0002d0ac] d274 2816                 add.w      22(a4,d2.l),d1
[0002d0b0] 3f41 004a                 move.w     d1,74(a7)
[0002d0b4] be41                      cmp.w      d1,d7
[0002d0b6] 6c54                      bge.s      rubberbox_15
[0002d0b8] 3e01                      move.w     d1,d7
[0002d0ba] 6050                      bra.s      rubberbox_15
rubberbox_14:
[0002d0bc] 322f 0054                 move.w     84(a7),d1
[0002d0c0] 48c1                      ext.l      d1
[0002d0c2] 2001                      move.l     d1,d0
[0002d0c4] d080                      add.l      d0,d0
[0002d0c6] d081                      add.l      d1,d0
[0002d0c8] e788                      lsl.l      #3,d0
[0002d0ca] 3e34 0816                 move.w     22(a4,d0.l),d7
[0002d0ce] 3003                      move.w     d3,d0
[0002d0d0] 48c0                      ext.l      d0
[0002d0d2] 2400                      move.l     d0,d2
[0002d0d4] d482                      add.l      d2,d2
[0002d0d6] d480                      add.l      d0,d2
[0002d0d8] e78a                      lsl.l      #3,d2
[0002d0da] 9e74 2812                 sub.w      18(a4,d2.l),d7
[0002d0de] 602c                      bra.s      rubberbox_15
rubberbox_12:
[0002d0e0] 322f 0054                 move.w     84(a7),d1
[0002d0e4] 48c1                      ext.l      d1
[0002d0e6] 2001                      move.l     d1,d0
[0002d0e8] d080                      add.l      d0,d0
[0002d0ea] d081                      add.l      d1,d0
[0002d0ec] e788                      lsl.l      #3,d0
[0002d0ee] 3e34 0816                 move.w     22(a4,d0.l),d7
[0002d0f2] 3003                      move.w     d3,d0
[0002d0f4] 48c0                      ext.l      d0
[0002d0f6] 2400                      move.l     d0,d2
[0002d0f8] d482                      add.l      d2,d2
[0002d0fa] d480                      add.l      d0,d2
[0002d0fc] e78a                      lsl.l      #3,d2
[0002d0fe] 9e74 2816                 sub.w      22(a4,d2.l),d7
[0002d102] 2079 0010 1f12            movea.l    ACSblk,a0
[0002d108] de68 0014                 add.w      20(a0),d7
rubberbox_15:
[0002d10c] be6f 0050                 cmp.w      80(a7),d7
[0002d110] 6f04                      ble.s      rubberbox_16
[0002d112] 3f47 0050                 move.w     d7,80(a7)
rubberbox_16:
[0002d116] 3203                      move.w     d3,d1
[0002d118] 48c1                      ext.l      d1
[0002d11a] 2001                      move.l     d1,d0
[0002d11c] d080                      add.l      d0,d0
[0002d11e] d081                      add.l      d1,d0
[0002d120] e788                      lsl.l      #3,d0
[0002d122] 3634 0818                 move.w     24(a4,d0.l),d3
[0002d126] b66f 0054                 cmp.w      84(a7),d3
[0002d12a] 6600 fe3a                 bne        rubberbox_17
rubberbox_4:
[0002d12e] db6f 0052                 add.w      d5,82(a7)
[0002d132] dd6f 0050                 add.w      d6,80(a7)
[0002d136] 4240                      clr.w      d0
[0002d138] 3f40 002e                 move.w     d0,46(a7)
[0002d13c] 3f40 002c                 move.w     d0,44(a7)
[0002d140] 2079 0010 1f12            movea.l    ACSblk,a0
[0002d146] 3228 0008                 move.w     8(a0),d1
[0002d14a] d268 000c                 add.w      12(a0),d1
[0002d14e] 3f41 0030                 move.w     d1,48(a7)
[0002d152] 3028 000a                 move.w     10(a0),d0
[0002d156] d068 000e                 add.w      14(a0),d0
[0002d15a] 3f40 0032                 move.w     d0,50(a7)
[0002d15e] 41ef 002c                 lea.l      44(a7),a0
[0002d162] 2279 0010 1f12            movea.l    ACSblk,a1
[0002d168] 3029 0010                 move.w     16(a1),d0
[0002d16c] 7201                      moveq.l    #1,d1
[0002d16e] 4eb9 0006 3f60            jsr        vs_clip
[0002d174] 206f 0008                 movea.l    8(a7),a0
[0002d178] 302f 0054                 move.w     84(a7),d0
[0002d17c] b068 0018                 cmp.w      24(a0),d0
[0002d180] 6752                      beq.s      rubberbox_18
[0002d182] 204c                      movea.l    a4,a0
[0002d184] 4eb9 0004 af6c            jsr        Aob_up
[0002d18a] 3f40 0034                 move.w     d0,52(a7)
[0002d18e] 342f 0054                 move.w     84(a7),d2
[0002d192] 48c2                      ext.l      d2
[0002d194] 2202                      move.l     d2,d1
[0002d196] d281                      add.l      d1,d1
[0002d198] d282                      add.l      d2,d1
[0002d19a] e789                      lsl.l      #3,d1
[0002d19c] 3f74 1810 0048            move.w     16(a4,d1.l),72(a7)
[0002d1a2] 3f74 1812 0046            move.w     18(a4,d1.l),70(a7)
[0002d1a8] 3005                      move.w     d5,d0
[0002d1aa] 322f 0034                 move.w     52(a7),d1
[0002d1ae] 48c1                      ext.l      d1
[0002d1b0] 2401                      move.l     d1,d2
[0002d1b2] d482                      add.l      d2,d2
[0002d1b4] d481                      add.l      d1,d2
[0002d1b6] e78a                      lsl.l      #3,d2
[0002d1b8] d074 2814                 add.w      20(a4,d2.l),d0
[0002d1bc] 906f 0048                 sub.w      72(a7),d0
[0002d1c0] 3f40 004e                 move.w     d0,78(a7)
[0002d1c4] 3006                      move.w     d6,d0
[0002d1c6] d074 2816                 add.w      22(a4,d2.l),d0
[0002d1ca] 906f 0046                 sub.w      70(a7),d0
[0002d1ce] 3f40 004c                 move.w     d0,76(a7)
[0002d1d2] 600c                      bra.s      rubberbox_19
rubberbox_18:
[0002d1d4] 303c 7530                 move.w     #$7530,d0
[0002d1d8] 3f40 004c                 move.w     d0,76(a7)
[0002d1dc] 3f40 004e                 move.w     d0,78(a7)
rubberbox_19:
[0002d1e0] 2f39 000d 99d6            move.l     _globl,-(a7)
[0002d1e6] 486f 0046                 pea.l      70(a7)
[0002d1ea] 486f 004c                 pea.l      76(a7)
[0002d1ee] 43ef 0046                 lea.l      70(a7),a1
[0002d1f2] 41ef 0048                 lea.l      72(a7),a0
[0002d1f6] 4eb9 0006 c978            jsr        mt_graf_mkstate
[0002d1fc] 4fef 000c                 lea.l      12(a7),a7
rubberbox_45:
[0002d200] 3039 0007 824a            move.w     snapping,d0
[0002d206] 673a                      beq.s      rubberbox_20
[0002d208] 322f 003c                 move.w     60(a7),d1
[0002d20c] 9245                      sub.w      d5,d1
[0002d20e] d26f 0038                 add.w      56(a7),d1
[0002d212] 48c1                      ext.l      d1
[0002d214] 2079 0010 1f12            movea.l    ACSblk,a0
[0002d21a] 83e8 0012                 divs.w     18(a0),d1
[0002d21e] c3e8 0012                 muls.w     18(a0),d1
[0002d222] d245                      add.w      d5,d1
[0002d224] 3f41 003c                 move.w     d1,60(a7)
[0002d228] 342f 003a                 move.w     58(a7),d2
[0002d22c] 9446                      sub.w      d6,d2
[0002d22e] d46f 0036                 add.w      54(a7),d2
[0002d232] 48c2                      ext.l      d2
[0002d234] 85e8 0014                 divs.w     20(a0),d2
[0002d238] c5e8 0014                 muls.w     20(a0),d2
[0002d23c] d446                      add.w      d6,d2
[0002d23e] 3f42 003a                 move.w     d2,58(a7)
rubberbox_20:
[0002d242] 36af 003c                 move.w     60(a7),(a3)
[0002d246] 34af 003a                 move.w     58(a7),(a2)
[0002d24a] 7004                      moveq.l    #4,d0
[0002d24c] c06f 0042                 and.w      66(a7),d0
[0002d250] 6600 0110                 bne        rubberbox_21
[0002d254] 3213                      move.w     (a3),d1
[0002d256] b26f 004e                 cmp.w      78(a7),d1
[0002d25a] 6f04                      ble.s      rubberbox_22
[0002d25c] 36af 004e                 move.w     78(a7),(a3)
rubberbox_22:
[0002d260] 3012                      move.w     (a2),d0
[0002d262] b06f 004c                 cmp.w      76(a7),d0
[0002d266] 6f04                      ble.s      rubberbox_23
[0002d268] 34af 004c                 move.w     76(a7),(a2)
rubberbox_23:
[0002d26c] 3013                      move.w     (a3),d0
[0002d26e] b06f 0052                 cmp.w      82(a7),d0
[0002d272] 6c04                      bge.s      rubberbox_24
[0002d274] 36af 0052                 move.w     82(a7),(a3)
rubberbox_24:
[0002d278] 3012                      move.w     (a2),d0
[0002d27a] b06f 0050                 cmp.w      80(a7),d0
[0002d27e] 6c04                      bge.s      rubberbox_25
[0002d280] 34af 0050                 move.w     80(a7),(a2)
rubberbox_25:
[0002d284] 206f 0008                 movea.l    8(a7),a0
[0002d288] 302f 0054                 move.w     84(a7),d0
[0002d28c] b068 0018                 cmp.w      24(a0),d0
[0002d290] 6700 00f8                 beq        rubberbox_26
[0002d294] 342f 0034                 move.w     52(a7),d2
[0002d298] 48c2                      ext.l      d2
[0002d29a] 2202                      move.l     d2,d1
[0002d29c] d281                      add.l      d1,d1
[0002d29e] d282                      add.l      d2,d1
[0002d2a0] e789                      lsl.l      #3,d1
[0002d2a2] 3634 1802                 move.w     2(a4,d1.l),d3
rubberbox_32:
[0002d2a6] b66f 0054                 cmp.w      84(a7),d3
[0002d2aa] 6700 009c                 beq        rubberbox_27
[0002d2ae] 3203                      move.w     d3,d1
[0002d2b0] 48c1                      ext.l      d1
[0002d2b2] 2001                      move.l     d1,d0
[0002d2b4] d080                      add.l      d0,d0
[0002d2b6] d081                      add.l      d1,d0
[0002d2b8] e788                      lsl.l      #3,d0
[0002d2ba] 3834 0810                 move.w     16(a4,d0.l),d4
[0002d2be] d874 0814                 add.w      20(a4,d0.l),d4
[0002d2c2] 3e34 0812                 move.w     18(a4,d0.l),d7
[0002d2c6] de74 0816                 add.w      22(a4,d0.l),d7
[0002d2ca] b86f 0048                 cmp.w      72(a7),d4
[0002d2ce] 6f00 0078                 ble.w      rubberbox_27
[0002d2d2] be6f 0046                 cmp.w      70(a7),d7
[0002d2d6] 6f00 0070                 ble.w      rubberbox_27
[0002d2da] 3805                      move.w     d5,d4
[0002d2dc] 986f 0048                 sub.w      72(a7),d4
[0002d2e0] d874 0810                 add.w      16(a4,d0.l),d4
[0002d2e4] 3e06                      move.w     d6,d7
[0002d2e6] 9e6f 0046                 sub.w      70(a7),d7
[0002d2ea] de74 0812                 add.w      18(a4,d0.l),d7
[0002d2ee] b853                      cmp.w      (a3),d4
[0002d2f0] 6c34                      bge.s      rubberbox_28
[0002d2f2] bc47                      cmp.w      d7,d6
[0002d2f4] 6c24                      bge.s      rubberbox_29
[0002d2f6] be52                      cmp.w      (a2),d7
[0002d2f8] 6c2c                      bge.s      rubberbox_28
[0002d2fa] be6f 0050                 cmp.w      80(a7),d7
[0002d2fe] 6d26                      blt.s      rubberbox_28
[0002d300] 342f 003c                 move.w     60(a7),d2
[0002d304] 9444                      sub.w      d4,d2
[0002d306] 306f 003a                 movea.w    58(a7),a0
[0002d30a] 90c7                      suba.w     d7,a0
[0002d30c] b448                      cmp.w      a0,d2
[0002d30e] 6c06                      bge.s      rubberbox_30
[0002d310] b86f 0052                 cmp.w      82(a7),d4
[0002d314] 6c10                      bge.s      rubberbox_28
rubberbox_30:
[0002d316] 3487                      move.w     d7,(a2)
[0002d318] 600c                      bra.s      rubberbox_28
rubberbox_29:
[0002d31a] b853                      cmp.w      (a3),d4
[0002d31c] 6c08                      bge.s      rubberbox_28
[0002d31e] b86f 0052                 cmp.w      82(a7),d4
[0002d322] 6d02                      blt.s      rubberbox_28
[0002d324] 3684                      move.w     d4,(a3)
rubberbox_28:
[0002d326] be52                      cmp.w      (a2),d7
[0002d328] 6c1e                      bge.s      rubberbox_27
[0002d32a] ba44                      cmp.w      d4,d5
[0002d32c] 6c0e                      bge.s      rubberbox_31
[0002d32e] b853                      cmp.w      (a3),d4
[0002d330] 6c16                      bge.s      rubberbox_27
[0002d332] b86f 0052                 cmp.w      82(a7),d4
[0002d336] 6d10                      blt.s      rubberbox_27
[0002d338] 3684                      move.w     d4,(a3)
[0002d33a] 600c                      bra.s      rubberbox_27
rubberbox_31:
[0002d33c] be52                      cmp.w      (a2),d7
[0002d33e] 6c08                      bge.s      rubberbox_27
[0002d340] be6f 0050                 cmp.w      80(a7),d7
[0002d344] 6d02                      blt.s      rubberbox_27
[0002d346] 3487                      move.w     d7,(a2)
rubberbox_27:
[0002d348] 3203                      move.w     d3,d1
[0002d34a] 48c1                      ext.l      d1
[0002d34c] 2001                      move.l     d1,d0
[0002d34e] d080                      add.l      d0,d0
[0002d350] d081                      add.l      d1,d0
[0002d352] e788                      lsl.l      #3,d0
[0002d354] 3634 0818                 move.w     24(a4,d0.l),d3
[0002d358] b66f 0034                 cmp.w      52(a7),d3
[0002d35c] 6600 ff48                 bne        rubberbox_32
[0002d360] 6028                      bra.s      rubberbox_26
rubberbox_21:
[0002d362] 3013                      move.w     (a3),d0
[0002d364] 3205                      move.w     d5,d1
[0002d366] 2079 0010 1f12            movea.l    ACSblk,a0
[0002d36c] d268 0012                 add.w      18(a0),d1
[0002d370] b041                      cmp.w      d1,d0
[0002d372] 6c02                      bge.s      rubberbox_33
[0002d374] 3681                      move.w     d1,(a3)
rubberbox_33:
[0002d376] 3012                      move.w     (a2),d0
[0002d378] 3206                      move.w     d6,d1
[0002d37a] 2079 0010 1f12            movea.l    ACSblk,a0
[0002d380] d268 0014                 add.w      20(a0),d1
[0002d384] b041                      cmp.w      d1,d0
[0002d386] 6c02                      bge.s      rubberbox_26
[0002d388] 3481                      move.w     d1,(a2)
rubberbox_26:
[0002d38a] 5353                      subq.w     #1,(a3)
[0002d38c] 5352                      subq.w     #1,(a2)
[0002d38e] 7001                      moveq.l    #1,d0
[0002d390] c06f 0044                 and.w      68(a7),d0
[0002d394] 670a                      beq.s      rubberbox_34
[0002d396] 7202                      moveq.l    #2,d1
[0002d398] c26f 0044                 and.w      68(a7),d1
[0002d39c] 6700 0114                 beq        rubberbox_35
rubberbox_34:
[0002d3a0] 41ef 002c                 lea.l      44(a7),a0
[0002d3a4] 4241                      clr.w      d1
[0002d3a6] 2279 0010 1f12            movea.l    ACSblk,a1
[0002d3ac] 3029 0010                 move.w     16(a1),d0
[0002d3b0] 4eb9 0006 3f60            jsr        vs_clip
[0002d3b6] 9b53                      sub.w      d5,(a3)
[0002d3b8] 9d52                      sub.w      d6,(a2)
[0002d3ba] 2079 0010 1f12            movea.l    ACSblk,a0
[0002d3c0] 2068 023c                 movea.l    572(a0),a0
[0002d3c4] 41e8 0038                 lea.l      56(a0),a0
[0002d3c8] 4eb9 0004 9898            jsr        Amo_new
[0002d3ce] 200d                      move.l     a5,d0
[0002d3d0] 6700 00c6                 beq        rubberbox_36
[0002d3d4] 222f 0018                 move.l     24(a7),d1
[0002d3d8] 6778                      beq.s      rubberbox_37
[0002d3da] 342d 0010                 move.w     16(a5),d2
[0002d3de] 3f42 0024                 move.w     d2,36(a7)
[0002d3e2] 70ff                      moveq.l    #-1,d0
[0002d3e4] d06d 0014                 add.w      20(a5),d0
[0002d3e8] 3f40 0020                 move.w     d0,32(a7)
[0002d3ec] d440                      add.w      d0,d2
[0002d3ee] 3f42 0028                 move.w     d2,40(a7)
[0002d3f2] 302d 0012                 move.w     18(a5),d0
[0002d3f6] 3f40 0026                 move.w     d0,38(a7)
[0002d3fa] 74ff                      moveq.l    #-1,d2
[0002d3fc] d46d 0016                 add.w      22(a5),d2
[0002d400] 3f42 0022                 move.w     d2,34(a7)
[0002d404] d042                      add.w      d2,d0
[0002d406] 3f40 002a                 move.w     d0,42(a7)
[0002d40a] 4242                      clr.w      d2
[0002d40c] 3f42 001e                 move.w     d2,30(a7)
[0002d410] 3f42 001c                 move.w     d2,28(a7)
[0002d414] 4eb9 0004 9970            jsr        Amo_hide
[0002d41a] 2079 0010 1f12            movea.l    ACSblk,a0
[0002d420] 4868 026a                 pea.l      618(a0)
[0002d424] 226f 001c                 movea.l    28(a7),a1
[0002d428] 41ef 0020                 lea.l      32(a7),a0
[0002d42c] 7203                      moveq.l    #3,d1
[0002d42e] 2c79 0010 1f12            movea.l    ACSblk,a6
[0002d434] 302e 0010                 move.w     16(a6),d0
[0002d438] 4eb9 0006 65ce            jsr        vro_cpyfm
[0002d43e] 584f                      addq.w     #4,a7
[0002d440] 4eb9 0004 9994            jsr        Amo_show
[0002d446] 206f 0018                 movea.l    24(a7),a0
[0002d44a] 4eb9 0004 d996            jsr        Abp_delete
[0002d450] 603e                      bra.s      rubberbox_38
rubberbox_37:
[0002d452] 302d 0012                 move.w     18(a5),d0
[0002d456] d06d 0016                 add.w      22(a5),d0
[0002d45a] 5340                      subq.w     #1,d0
[0002d45c] 3f00                      move.w     d0,-(a7)
[0002d45e] 322d 0010                 move.w     16(a5),d1
[0002d462] d26d 0014                 add.w      20(a5),d1
[0002d466] 5341                      subq.w     #1,d1
[0002d468] 3f01                      move.w     d1,-(a7)
[0002d46a] 3f2d 0012                 move.w     18(a5),-(a7)
[0002d46e] 3f2d 0010                 move.w     16(a5),-(a7)
[0002d472] 3f00                      move.w     d0,-(a7)
[0002d474] 3f01                      move.w     d1,-(a7)
[0002d476] 2079 000d 99d6            movea.l    _globl,a0
[0002d47c] 342d 0012                 move.w     18(a5),d2
[0002d480] 322d 0010                 move.w     16(a5),d1
[0002d484] 7003                      moveq.l    #3,d0
[0002d486] 4eb9 0006 bde4            jsr        mt_form_dial
[0002d48c] 4fef 000c                 lea.l      12(a7),a7
rubberbox_38:
[0002d490] 204d                      movea.l    a5,a0
[0002d492] 4eb9 0004 9b7c            jsr        Aob_delete
rubberbox_36:
[0002d498] 4eb9 0004 ad60            jsr        Aev_release
[0002d49e] 7002                      moveq.l    #2,d0
[0002d4a0] c06f 0044                 and.w      68(a7),d0
[0002d4a4] 6706                      beq.s      rubberbox_39
[0002d4a6] 4240                      clr.w      d0
[0002d4a8] 6000 023c                 bra        rubberbox_40
rubberbox_39:
[0002d4ac] 7001                      moveq.l    #1,d0
[0002d4ae] 6000 0236                 bra        rubberbox_40
rubberbox_35:
[0002d4b2] 2279 000d 99d6            movea.l    _globl,a1
[0002d4b8] 91c8                      suba.l     a0,a0
[0002d4ba] 303c 0100                 move.w     #$0100,d0
[0002d4be] 4eb9 0006 c914            jsr        mt_graf_mouse
[0002d4c4] 7203                      moveq.l    #3,d1
[0002d4c6] 2079 0010 1f12            movea.l    ACSblk,a0
[0002d4cc] 3028 0010                 move.w     16(a0),d0
[0002d4d0] 4eb9 0006 4da0            jsr        vswr_mode
[0002d4d6] 7201                      moveq.l    #1,d1
[0002d4d8] 2079 0010 1f12            movea.l    ACSblk,a0
[0002d4de] 3028 0010                 move.w     16(a0),d0
[0002d4e2] 4eb9 0006 4ef0            jsr        vsl_color
[0002d4e8] 3406                      move.w     d6,d2
[0002d4ea] 3213                      move.w     (a3),d1
[0002d4ec] 3005                      move.w     d5,d0
[0002d4ee] 4eb9 0004 4242            jsr        dotted_xline
[0002d4f4] 3412                      move.w     (a2),d2
[0002d4f6] 3213                      move.w     (a3),d1
[0002d4f8] 3005                      move.w     d5,d0
[0002d4fa] 4eb9 0004 4242            jsr        dotted_xline
[0002d500] 3405                      move.w     d5,d2
[0002d502] 3212                      move.w     (a2),d1
[0002d504] 3006                      move.w     d6,d0
[0002d506] 4eb9 0004 42e2            jsr        dotted_yline
[0002d50c] 3413                      move.w     (a3),d2
[0002d50e] 3212                      move.w     (a2),d1
[0002d510] 3006                      move.w     d6,d0
[0002d512] 4eb9 0004 42e2            jsr        dotted_yline
[0002d518] 200d                      move.l     a5,d0
[0002d51a] 6700 00a8                 beq        rubberbox_41
[0002d51e] 3212                      move.w     (a2),d1
[0002d520] 9246                      sub.w      d6,d1
[0002d522] 5241                      addq.w     #1,d1
[0002d524] 48c1                      ext.l      d1
[0002d526] 2079 0010 1f12            movea.l    ACSblk,a0
[0002d52c] 83e8 0014                 divs.w     20(a0),d1
[0002d530] 3f01                      move.w     d1,-(a7)
[0002d532] 3413                      move.w     (a3),d2
[0002d534] 9445                      sub.w      d5,d2
[0002d536] 5242                      addq.w     #1,d2
[0002d538] 48c2                      ext.l      d2
[0002d53a] 85e8 0012                 divs.w     18(a0),d2
[0002d53e] 3f02                      move.w     d2,-(a7)
[0002d540] 43f9 000b cd64            lea.l      xbcd64,a1
[0002d546] 41ef 0010                 lea.l      16(a7),a0
[0002d54a] 4eb9 0007 5680            jsr        sprintf
[0002d550] 584f                      addq.w     #4,a7
[0002d552] 43ef 000c                 lea.l      12(a7),a1
[0002d556] 7001                      moveq.l    #1,d0
[0002d558] 204d                      movea.l    a5,a0
[0002d55a] 4eb9 0004 afe0            jsr        Aob_puttext
[0002d560] 3012                      move.w     (a2),d0
[0002d562] 9046                      sub.w      d6,d0
[0002d564] 5240                      addq.w     #1,d0
[0002d566] 3f00                      move.w     d0,-(a7)
[0002d568] 3213                      move.w     (a3),d1
[0002d56a] 9245                      sub.w      d5,d1
[0002d56c] 5241                      addq.w     #1,d1
[0002d56e] 3f01                      move.w     d1,-(a7)
[0002d570] 43f9 000b cd64            lea.l      xbcd64,a1
[0002d576] 41ef 0010                 lea.l      16(a7),a0
[0002d57a] 4eb9 0007 5680            jsr        sprintf
[0002d580] 584f                      addq.w     #4,a7
[0002d582] 43ef 000c                 lea.l      12(a7),a1
[0002d586] 7002                      moveq.l    #2,d0
[0002d588] 204d                      movea.l    a5,a0
[0002d58a] 4eb9 0004 afe0            jsr        Aob_puttext
[0002d590] 302d 0012                 move.w     18(a5),d0
[0002d594] d06d 0016                 add.w      22(a5),d0
[0002d598] 5340                      subq.w     #1,d0
[0002d59a] 3f00                      move.w     d0,-(a7)
[0002d59c] 322d 0010                 move.w     16(a5),d1
[0002d5a0] d26d 0014                 add.w      20(a5),d1
[0002d5a4] 5341                      subq.w     #1,d1
[0002d5a6] 3f01                      move.w     d1,-(a7)
[0002d5a8] 3f2d 0012                 move.w     18(a5),-(a7)
[0002d5ac] 2279 000d 99d6            movea.l    _globl,a1
[0002d5b2] 342d 0010                 move.w     16(a5),d2
[0002d5b6] 204d                      movea.l    a5,a0
[0002d5b8] 4240                      clr.w      d0
[0002d5ba] 7202                      moveq.l    #2,d1
[0002d5bc] 4eb9 0006 b93c            jsr        mt_objc_draw
[0002d5c2] 5c4f                      addq.w     #6,a7
rubberbox_41:
[0002d5c4] 2279 000d 99d6            movea.l    _globl,a1
[0002d5ca] 91c8                      suba.l     a0,a0
[0002d5cc] 303c 0101                 move.w     #$0101,d0
[0002d5d0] 4eb9 0006 c914            jsr        mt_graf_mouse
rubberbox_44:
[0002d5d6] 2f39 000d 99d6            move.l     _globl,-(a7)
[0002d5dc] 486f 0046                 pea.l      70(a7)
[0002d5e0] 486f 004c                 pea.l      76(a7)
[0002d5e4] 43ef 004a                 lea.l      74(a7),a1
[0002d5e8] 41ef 004c                 lea.l      76(a7),a0
[0002d5ec] 4eb9 0006 c978            jsr        mt_graf_mkstate
[0002d5f2] 4fef 000c                 lea.l      12(a7),a7
[0002d5f6] 7001                      moveq.l    #1,d0
[0002d5f8] c06f 0044                 and.w      68(a7),d0
[0002d5fc] 6760                      beq.s      rubberbox_42
[0002d5fe] 7202                      moveq.l    #2,d1
[0002d600] c26f 0044                 and.w      68(a7),d1
[0002d604] 6658                      bne.s      rubberbox_42
[0002d606] 3439 0007 824a            move.w     snapping,d2
[0002d60c] 673a                      beq.s      rubberbox_43
[0002d60e] 306f 0040                 movea.w    64(a7),a0
[0002d612] 90ef 003c                 suba.w     60(a7),a0
[0002d616] b0ef 0038                 cmpa.w     56(a7),a0
[0002d61a] 6e42                      bgt.s      rubberbox_42
[0002d61c] 326f 003c                 movea.w    60(a7),a1
[0002d620] 92ef 0040                 suba.w     64(a7),a1
[0002d624] b2ef 0038                 cmpa.w     56(a7),a1
[0002d628] 6e34                      bgt.s      rubberbox_42
[0002d62a] 3c6f 003e                 movea.w    62(a7),a6
[0002d62e] 9cef 003a                 suba.w     58(a7),a6
[0002d632] bcef 0036                 cmpa.w     54(a7),a6
[0002d636] 6e26                      bgt.s      rubberbox_42
[0002d638] 302f 003a                 move.w     58(a7),d0
[0002d63c] 906f 003e                 sub.w      62(a7),d0
[0002d640] b06f 0036                 cmp.w      54(a7),d0
[0002d644] 6f90                      ble.s      rubberbox_44
[0002d646] 6016                      bra.s      rubberbox_42
rubberbox_43:
[0002d648] 302f 0040                 move.w     64(a7),d0
[0002d64c] b06f 003c                 cmp.w      60(a7),d0
[0002d650] 660c                      bne.s      rubberbox_42
[0002d652] 322f 003e                 move.w     62(a7),d1
[0002d656] b26f 003a                 cmp.w      58(a7),d1
[0002d65a] 6700 ff7a                 beq        rubberbox_44
rubberbox_42:
[0002d65e] 2279 000d 99d6            movea.l    _globl,a1
[0002d664] 91c8                      suba.l     a0,a0
[0002d666] 303c 0100                 move.w     #$0100,d0
[0002d66a] 4eb9 0006 c914            jsr        mt_graf_mouse
[0002d670] 7203                      moveq.l    #3,d1
[0002d672] 2079 0010 1f12            movea.l    ACSblk,a0
[0002d678] 3028 0010                 move.w     16(a0),d0
[0002d67c] 4eb9 0006 4da0            jsr        vswr_mode
[0002d682] 7201                      moveq.l    #1,d1
[0002d684] 2079 0010 1f12            movea.l    ACSblk,a0
[0002d68a] 3028 0010                 move.w     16(a0),d0
[0002d68e] 4eb9 0006 4ef0            jsr        vsl_color
[0002d694] 3406                      move.w     d6,d2
[0002d696] 3213                      move.w     (a3),d1
[0002d698] 3005                      move.w     d5,d0
[0002d69a] 4eb9 0004 4242            jsr        dotted_xline
[0002d6a0] 3412                      move.w     (a2),d2
[0002d6a2] 3213                      move.w     (a3),d1
[0002d6a4] 3005                      move.w     d5,d0
[0002d6a6] 4eb9 0004 4242            jsr        dotted_xline
[0002d6ac] 3405                      move.w     d5,d2
[0002d6ae] 3212                      move.w     (a2),d1
[0002d6b0] 3006                      move.w     d6,d0
[0002d6b2] 4eb9 0004 42e2            jsr        dotted_yline
[0002d6b8] 3413                      move.w     (a3),d2
[0002d6ba] 3212                      move.w     (a2),d1
[0002d6bc] 3006                      move.w     d6,d0
[0002d6be] 4eb9 0004 42e2            jsr        dotted_yline
[0002d6c4] 2279 000d 99d6            movea.l    _globl,a1
[0002d6ca] 91c8                      suba.l     a0,a0
[0002d6cc] 303c 0101                 move.w     #$0101,d0
[0002d6d0] 4eb9 0006 c914            jsr        mt_graf_mouse
[0002d6d6] 3f6f 0040 003c            move.w     64(a7),60(a7)
[0002d6dc] 3f6f 003e 003a            move.w     62(a7),58(a7)
[0002d6e2] 6000 fb1c                 bra        rubberbox_45
rubberbox_40:
[0002d6e6] 4fef 0056                 lea.l      86(a7),a7
[0002d6ea] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[0002d6ee] 4e75                      rts

sizing:
[0002d6f0] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[0002d6f4] 4fef ffec                 lea.l      -20(a7),a7
[0002d6f8] 2448                      movea.l    a0,a2
[0002d6fa] 3600                      move.w     d0,d3
[0002d6fc] 3c01                      move.w     d1,d6
[0002d6fe] 3a02                      move.w     d2,d5
[0002d700] 266a 0014                 movea.l    20(a2),a3
[0002d704] 2f39 000d 99d6            move.l     _globl,-(a7)
[0002d70a] 486f 0014                 pea.l      20(a7)
[0002d70e] 43ef 001a                 lea.l      26(a7),a1
[0002d712] 204b                      movea.l    a3,a0
[0002d714] 4eb9 0006 ba44            jsr        mt_objc_offset
[0002d71a] 504f                      addq.w     #8,a7
[0002d71c] 3203                      move.w     d3,d1
[0002d71e] 48c1                      ext.l      d1
[0002d720] 2001                      move.l     d1,d0
[0002d722] d080                      add.l      d0,d0
[0002d724] d081                      add.l      d1,d0
[0002d726] e788                      lsl.l      #3,d0
[0002d728] 3833 0814                 move.w     20(a3,d0.l),d4
[0002d72c] 3e33 0816                 move.w     22(a3,d0.l),d7
[0002d730] 49ef 000e                 lea.l      14(a7),a4
[0002d734] 302a 0034                 move.w     52(a2),d0
[0002d738] d06f 0012                 add.w      18(a7),d0
[0002d73c] d044                      add.w      d4,d0
[0002d73e] 9046                      sub.w      d6,d0
[0002d740] 3880                      move.w     d0,(a4)
[0002d742] 4bef 000c                 lea.l      12(a7),a5
[0002d746] 302a 0036                 move.w     54(a2),d0
[0002d74a] d06f 0010                 add.w      16(a7),d0
[0002d74e] d047                      add.w      d7,d0
[0002d750] 9045                      sub.w      d5,d0
[0002d752] 3a80                      move.w     d0,(a5)
[0002d754] 0c54 0008                 cmpi.w     #$0008,(a4)
[0002d758] 6f0a                      ble.s      sizing_1
[0002d75a] 3204                      move.w     d4,d1
[0002d75c] e641                      asr.w      #3,d1
[0002d75e] 3414                      move.w     (a4),d2
[0002d760] b441                      cmp.w      d1,d2
[0002d762] 6e10                      bgt.s      sizing_2
sizing_1:
[0002d764] 0c55 0008                 cmpi.w     #$0008,(a5)
[0002d768] 6f10                      ble.s      sizing_3
[0002d76a] 3007                      move.w     d7,d0
[0002d76c] e640                      asr.w      #3,d0
[0002d76e] 3215                      move.w     (a5),d1
[0002d770] b240                      cmp.w      d0,d1
[0002d772] 6f06                      ble.s      sizing_3
sizing_2:
[0002d774] 70ff                      moveq.l    #-1,d0
[0002d776] 6000 0164                 bra        sizing_4
sizing_3:
[0002d77a] 4855                      pea.l      (a5)
[0002d77c] 224c                      movea.l    a4,a1
[0002d77e] 342a 0036                 move.w     54(a2),d2
[0002d782] d46f 0014                 add.w      20(a7),d2
[0002d786] 322a 0034                 move.w     52(a2),d1
[0002d78a] d26f 0016                 add.w      22(a7),d1
[0002d78e] 3003                      move.w     d3,d0
[0002d790] 204a                      movea.l    a2,a0
[0002d792] 6100 f64e                 bsr        rubberbox
[0002d796] 584f                      addq.w     #4,a7
[0002d798] 4a40                      tst.w      d0
[0002d79a] 6700 013e                 beq        sizing_5
[0002d79e] 2f52 0008                 move.l     (a2),8(a7)
[0002d7a2] 206f 0008                 movea.l    8(a7),a0
[0002d7a6] 2250                      movea.l    (a0),a1
[0002d7a8] 0069 0001 0006            ori.w      #$0001,6(a1)
[0002d7ae] 2f68 0004 0004            move.l     4(a0),4(a7)
[0002d7b4] 226f 0004                 movea.l    4(a7),a1
[0002d7b8] 2ea9 0004                 move.l     4(a1),(a7)
[0002d7bc] 7afe                      moveq.l    #-2,d5
[0002d7be] da43                      add.w      d3,d5
[0002d7c0] 48c5                      ext.l      d5
[0002d7c2] 8bfc 0003                 divs.w     #$0003,d5
[0002d7c6] 3c14                      move.w     (a4),d6
[0002d7c8] 9c44                      sub.w      d4,d6
[0002d7ca] 3015                      move.w     (a5),d0
[0002d7cc] 9047                      sub.w      d7,d0
[0002d7ce] 3e00                      move.w     d0,d7
[0002d7d0] 3407                      move.w     d7,d2
[0002d7d2] 3206                      move.w     d6,d1
[0002d7d4] 2057                      movea.l    (a7),a0
[0002d7d6] 3005                      move.w     d5,d0
[0002d7d8] 224b                      movea.l    a3,a1
[0002d7da] 4eb9 0002 bed6            jsr        resize_ob
[0002d7e0] 3039 0007 824a            move.w     snapping,d0
[0002d7e6] 671a                      beq.s      sizing_6
[0002d7e8] 2079 0010 1f12            movea.l    ACSblk,a0
[0002d7ee] 3228 0012                 move.w     18(a0),d1
[0002d7f2] e241                      asr.w      #1,d1
[0002d7f4] 5341                      subq.w     #1,d1
[0002d7f6] d354                      add.w      d1,(a4)
[0002d7f8] 3428 0014                 move.w     20(a0),d2
[0002d7fc] e242                      asr.w      #1,d2
[0002d7fe] 5342                      subq.w     #1,d2
[0002d800] d555                      add.w      d2,(a5)
sizing_6:
[0002d802] 3014                      move.w     (a4),d0
[0002d804] 6100 e724                 bsr        char_x
[0002d808] 3880                      move.w     d0,(a4)
[0002d80a] 3015                      move.w     (a5),d0
[0002d80c] 6100 e766                 bsr        char_y
[0002d810] 3a80                      move.w     d0,(a5)
[0002d812] 3405                      move.w     d5,d2
[0002d814] 48c2                      ext.l      d2
[0002d816] 2202                      move.l     d2,d1
[0002d818] e789                      lsl.l      #3,d1
[0002d81a] 9282                      sub.l      d2,d1
[0002d81c] e789                      lsl.l      #3,d1
[0002d81e] 2057                      movea.l    (a7),a0
[0002d820] 3194 181c                 move.w     (a4),28(a0,d1.l)
[0002d824] 3195 181e                 move.w     (a5),30(a0,d1.l)
[0002d828] 4a45                      tst.w      d5
[0002d82a] 6628                      bne.s      sizing_7
[0002d82c] 226a 0010                 movea.l    16(a2),a1
[0002d830] 204a                      movea.l    a2,a0
[0002d832] 4e91                      jsr        (a1)
[0002d834] 006a 0010 0056            ori.w      #$0010,86(a2)
[0002d83a] 43ea 0024                 lea.l      36(a2),a1
[0002d83e] 204a                      movea.l    a2,a0
[0002d840] 2c6a 0086                 movea.l    134(a2),a6
[0002d844] 4e96                      jsr        (a6)
[0002d846] 3003                      move.w     d3,d0
[0002d848] 204a                      movea.l    a2,a0
[0002d84a] 4eb9 0004 487c            jsr        Adr_add
[0002d850] 6000 0088                 bra        sizing_5
sizing_7:
[0002d854] 3003                      move.w     d3,d0
[0002d856] 204a                      movea.l    a2,a0
[0002d858] 4eb9 0002 d8e6            jsr        undraw
[0002d85e] 3203                      move.w     d3,d1
[0002d860] 48c1                      ext.l      d1
[0002d862] 2001                      move.l     d1,d0
[0002d864] d080                      add.l      d0,d0
[0002d866] d081                      add.l      d1,d0
[0002d868] e788                      lsl.l      #3,d0
[0002d86a] 206a 0014                 movea.l    20(a2),a0
[0002d86e] 0270 ff7f 08f0            andi.w     #$FF7F,-16(a0,d0.l)
[0002d874] 206a 0014                 movea.l    20(a2),a0
[0002d878] 0270 ff7f 0808            andi.w     #$FF7F,8(a0,d0.l)
[0002d87e] 3014                      move.w     (a4),d0
[0002d880] 6100 e73c                 bsr        pixel_x
[0002d884] 3403                      move.w     d3,d2
[0002d886] 48c2                      ext.l      d2
[0002d888] 2202                      move.l     d2,d1
[0002d88a] d281                      add.l      d1,d1
[0002d88c] d282                      add.l      d2,d1
[0002d88e] e789                      lsl.l      #3,d1
[0002d890] 3780 18fc                 move.w     d0,-4(a3,d1.l)
[0002d894] 3780 1814                 move.w     d0,20(a3,d1.l)
[0002d898] 3015                      move.w     (a5),d0
[0002d89a] 6100 e74a                 bsr        pixel_y
[0002d89e] 3403                      move.w     d3,d2
[0002d8a0] 48c2                      ext.l      d2
[0002d8a2] 2202                      move.l     d2,d1
[0002d8a4] d281                      add.l      d1,d1
[0002d8a6] d282                      add.l      d2,d1
[0002d8a8] e789                      lsl.l      #3,d1
[0002d8aa] 3780 18fe                 move.w     d0,-2(a3,d1.l)
[0002d8ae] 3780 1816                 move.w     d0,22(a3,d1.l)
[0002d8b2] 70ff                      moveq.l    #-1,d0
[0002d8b4] d043                      add.w      d3,d0
[0002d8b6] 204a                      movea.l    a2,a0
[0002d8b8] 4eb9 0004 b846            jsr        Awi_obredraw
[0002d8be] 7201                      moveq.l    #1,d1
[0002d8c0] 3403                      move.w     d3,d2
[0002d8c2] 48c2                      ext.l      d2
[0002d8c4] 2002                      move.l     d2,d0
[0002d8c6] d080                      add.l      d0,d0
[0002d8c8] d082                      add.l      d2,d0
[0002d8ca] e788                      lsl.l      #3,d0
[0002d8cc] 8273 080a                 or.w       10(a3,d0.l),d1
[0002d8d0] 204a                      movea.l    a2,a0
[0002d8d2] 226a 0066                 movea.l    102(a2),a1
[0002d8d6] 3003                      move.w     d3,d0
[0002d8d8] 4e91                      jsr        (a1)
sizing_5:
[0002d8da] 4240                      clr.w      d0
sizing_4:
[0002d8dc] 4fef 0014                 lea.l      20(a7),a7
[0002d8e0] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[0002d8e4] 4e75                      rts

undraw:
[0002d8e6] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0002d8ea] 2448                      movea.l    a0,a2
[0002d8ec] 3600                      move.w     d0,d3
[0002d8ee] 266a 0014                 movea.l    20(a2),a3
[0002d8f2] 48c0                      ext.l      d0
[0002d8f4] 2200                      move.l     d0,d1
[0002d8f6] d281                      add.l      d1,d1
[0002d8f8] d280                      add.l      d0,d1
[0002d8fa] e789                      lsl.l      #3,d1
[0002d8fc] 0073 0080 1808            ori.w      #$0080,8(a3,d1.l)
[0002d902] 0273 fffe 180a            andi.w     #$FFFE,10(a3,d1.l)
[0002d908] 0073 0080 18f0            ori.w      #$0080,-16(a3,d1.l)
[0002d90e] 70ff                      moveq.l    #-1,d0
[0002d910] d043                      add.w      d3,d0
[0002d912] 4eb9 0004 b846            jsr        Awi_obredraw
[0002d918] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0002d91c] 4e75                      rts

	.data
xbcd64:                        dc.b '%d*%d',0
	.even
