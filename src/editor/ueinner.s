
edin_dither:
[000276b0] 2f0a                      move.l     a2,-(a7)
[000276b2] 2f0b                      move.l     a3,-(a7)
[000276b4] 45f9 0010 1f12            lea.l      ACSblk,a2
[000276ba] 2052                      movea.l    (a2),a0
[000276bc] 2268 025c                 movea.l    604(a0),a1
[000276c0] 2669 003c                 movea.l    60(a1),a3
[000276c4] 584b                      addq.w     #4,a3
[000276c6] 0293 efff ffff            andi.l     #$EFFFFFFF,(a3)
[000276cc] 7001                      moveq.l    #1,d0
[000276ce] 2052                      movea.l    (a2),a0
[000276d0] 3428 0260                 move.w     608(a0),d2
[000276d4] 48c2                      ext.l      d2
[000276d6] 2202                      move.l     d2,d1
[000276d8] d281                      add.l      d1,d1
[000276da] d282                      add.l      d2,d1
[000276dc] e789                      lsl.l      #3,d1
[000276de] 2268 025c                 movea.l    604(a0),a1
[000276e2] c071 180a                 and.w      10(a1,d1.l),d0
[000276e6] 6706                      beq.s      edin_dither_1
[000276e8] 0093 1000 0000            ori.l      #$10000000,(a3)
edin_dither_1:
[000276ee] 72ff                      moveq.l    #-1,d1
[000276f0] 2052                      movea.l    (a2),a0
[000276f2] 3028 0260                 move.w     608(a0),d0
[000276f6] 2068 0258                 movea.l    600(a0),a0
[000276fa] 2252                      movea.l    (a2),a1
[000276fc] 2669 0258                 movea.l    600(a1),a3
[00027700] 226b 0066                 movea.l    102(a3),a1
[00027704] 4e91                      jsr        (a1)
[00027706] 72ff                      moveq.l    #-1,d1
[00027708] 7001                      moveq.l    #1,d0
[0002770a] 2052                      movea.l    (a2),a0
[0002770c] 2068 0258                 movea.l    600(a0),a0
[00027710] 2252                      movea.l    (a2),a1
[00027712] 2669 0258                 movea.l    600(a1),a3
[00027716] 226b 0066                 movea.l    102(a3),a1
[0002771a] 4e91                      jsr        (a1)
[0002771c] 265f                      movea.l    (a7)+,a3
[0002771e] 245f                      movea.l    (a7)+,a2
[00027720] 4e75                      rts

edin_incol:
[00027722] 2f03                      move.l     d3,-(a7)
[00027724] 2f0a                      move.l     a2,-(a7)
[00027726] 2079 0010 1f12            movea.l    ACSblk,a0
[0002772c] 2268 025c                 movea.l    604(a0),a1
[00027730] 2469 003c                 movea.l    60(a1),a2
[00027734] 584a                      addq.w     #4,a2
[00027736] 7026                      moveq.l    #38,d0
[00027738] 3f00                      move.w     d0,-(a7)
[0002773a] 7427                      moveq.l    #39,d2
[0002773c] 7224                      moveq.l    #36,d1
[0002773e] 2012                      move.l     (a2),d0
[00027740] 7610                      moveq.l    #16,d3
[00027742] e6a0                      asr.l      d3,d0
[00027744] c07c 000f                 and.w      #$000F,d0
[00027748] 4eb9 0002 f280            jsr        oe_colsel
[0002774e] 544f                      addq.w     #2,a7
[00027750] 3600                      move.w     d0,d3
[00027752] 6b30                      bmi.s      edin_incol_1
[00027754] 2212                      move.l     (a2),d1
[00027756] c2bc fff0 ffff            and.l      #$FFF0FFFF,d1
[0002775c] 48c0                      ext.l      d0
[0002775e] 7410                      moveq.l    #16,d2
[00027760] e5a8                      lsl.l      d2,d0
[00027762] 8280                      or.l       d0,d1
[00027764] 2481                      move.l     d1,(a2)
[00027766] 2079 0010 1f12            movea.l    ACSblk,a0
[0002776c] 2068 0258                 movea.l    600(a0),a0
[00027770] 2279 0010 1f12            movea.l    ACSblk,a1
[00027776] 2469 0258                 movea.l    600(a1),a2
[0002777a] 226a 0066                 movea.l    102(a2),a1
[0002777e] 7001                      moveq.l    #1,d0
[00027780] 72ff                      moveq.l    #-1,d1
[00027782] 4e91                      jsr        (a1)
edin_incol_1:
[00027784] 245f                      movea.l    (a7)+,a2
[00027786] 261f                      move.l     (a7)+,d3
[00027788] 4e75                      rts

edin_intercol:
[0002778a] 2f03                      move.l     d3,-(a7)
[0002778c] 2f0a                      move.l     a2,-(a7)
[0002778e] 2079 0010 1f12            movea.l    ACSblk,a0
[00027794] 2268 025c                 movea.l    604(a0),a1
[00027798] 2469 003c                 movea.l    60(a1),a2
[0002779c] 584a                      addq.w     #4,a2
[0002779e] 7033                      moveq.l    #51,d0
[000277a0] 3f00                      move.w     d0,-(a7)
[000277a2] 7434                      moveq.l    #52,d2
[000277a4] 7231                      moveq.l    #49,d1
[000277a6] 2012                      move.l     (a2),d0
[000277a8] 760c                      moveq.l    #12,d3
[000277aa] e6a0                      asr.l      d3,d0
[000277ac] c07c 000f                 and.w      #$000F,d0
[000277b0] 4eb9 0002 f280            jsr        oe_colsel
[000277b6] 544f                      addq.w     #2,a7
[000277b8] 3600                      move.w     d0,d3
[000277ba] 6b30                      bmi.s      edin_intercol_1
[000277bc] 2212                      move.l     (a2),d1
[000277be] c2bc ffff 0fff            and.l      #$FFFF0FFF,d1
[000277c4] 48c0                      ext.l      d0
[000277c6] 740c                      moveq.l    #12,d2
[000277c8] e5a8                      lsl.l      d2,d0
[000277ca] 8280                      or.l       d0,d1
[000277cc] 2481                      move.l     d1,(a2)
[000277ce] 2079 0010 1f12            movea.l    ACSblk,a0
[000277d4] 2068 0258                 movea.l    600(a0),a0
[000277d8] 2279 0010 1f12            movea.l    ACSblk,a1
[000277de] 2469 0258                 movea.l    600(a1),a2
[000277e2] 226a 0066                 movea.l    102(a2),a1
[000277e6] 7001                      moveq.l    #1,d0
[000277e8] 72ff                      moveq.l    #-1,d1
[000277ea] 4e91                      jsr        (a1)
edin_intercol_1:
[000277ec] 245f                      movea.l    (a7)+,a2
[000277ee] 261f                      move.l     (a7)+,d3
[000277f0] 4e75                      rts

edin_outcol:
[000277f2] 3f03                      move.w     d3,-(a7)
[000277f4] 2f0a                      move.l     a2,-(a7)
[000277f6] 2079 0010 1f12            movea.l    ACSblk,a0
[000277fc] 2268 025c                 movea.l    604(a0),a1
[00027800] 2469 003c                 movea.l    60(a1),a2
[00027804] 584a                      addq.w     #4,a2
[00027806] 701e                      moveq.l    #30,d0
[00027808] 3f00                      move.w     d0,-(a7)
[0002780a] 741f                      moveq.l    #31,d2
[0002780c] 721c                      moveq.l    #28,d1
[0002780e] 700f                      moveq.l    #15,d0
[00027810] c06a 0002                 and.w      2(a2),d0
[00027814] 4eb9 0002 f280            jsr        oe_colsel
[0002781a] 544f                      addq.w     #2,a7
[0002781c] 3600                      move.w     d0,d3
[0002781e] 6b28                      bmi.s      edin_outcol_1
[00027820] 72f0                      moveq.l    #-16,d1
[00027822] c292                      and.l      (a2),d1
[00027824] 48c0                      ext.l      d0
[00027826] 8280                      or.l       d0,d1
[00027828] 2481                      move.l     d1,(a2)
[0002782a] 2079 0010 1f12            movea.l    ACSblk,a0
[00027830] 2068 0258                 movea.l    600(a0),a0
[00027834] 2279 0010 1f12            movea.l    ACSblk,a1
[0002783a] 2469 0258                 movea.l    600(a1),a2
[0002783e] 226a 0066                 movea.l    102(a2),a1
[00027842] 7001                      moveq.l    #1,d0
[00027844] 72ff                      moveq.l    #-1,d1
[00027846] 4e91                      jsr        (a1)
edin_outcol_1:
[00027848] 245f                      movea.l    (a7)+,a2
[0002784a] 361f                      move.w     (a7)+,d3
[0002784c] 4e75                      rts

edin_pattern:
[0002784e] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00027852] 514f                      subq.w     #8,a7
[00027854] 41f9 000b db68            lea.l      POP_PATSEL,a0
[0002785a] 4eb9 0004 9a5c            jsr        Aob_create
[00027860] 2448                      movea.l    a0,a2
[00027862] 200a                      move.l     a2,d0
[00027864] 6700 00de                 beq        edin_pattern_1
[00027868] 47f9 0010 1f12            lea.l      ACSblk,a3
[0002786e] 702b                      moveq.l    #43,d0
[00027870] 2053                      movea.l    (a3),a0
[00027872] 2268 0258                 movea.l    600(a0),a1
[00027876] 2269 0014                 movea.l    20(a1),a1
[0002787a] 41d7                      lea.l      (a7),a0
[0002787c] 4eb9 0004 a3be            jsr        Aob_offset
[00027882] 7001                      moveq.l    #1,d0
[00027884] 2053                      movea.l    (a3),a0
[00027886] 2268 0258                 movea.l    600(a0),a1
[0002788a] d069 0034                 add.w      52(a1),d0
[0002788e] d157                      add.w      d0,(a7)
[00027890] 7201                      moveq.l    #1,d1
[00027892] d269 0036                 add.w      54(a1),d1
[00027896] d36f 0002                 add.w      d1,2(a7)
[0002789a] 2268 025c                 movea.l    604(a0),a1
[0002789e] 2069 003c                 movea.l    60(a1),a0
[000278a2] 2028 0004                 move.l     4(a0),d0
[000278a6] 7209                      moveq.l    #9,d1
[000278a8] e2a0                      asr.l      d1,d0
[000278aa] c07c 0007                 and.w      #$0007,d0
[000278ae] 48c0                      ext.l      d0
[000278b0] 2400                      move.l     d0,d2
[000278b2] d482                      add.l      d2,d2
[000278b4] d480                      add.l      d0,d2
[000278b6] e78a                      lsl.l      #3,d2
[000278b8] 0072 0004 2822            ori.w      #$0004,34(a2,d2.l)
[000278be] 3017                      move.w     (a7),d0
[000278c0] 224a                      movea.l    a2,a1
[000278c2] 2053                      movea.l    (a3),a0
[000278c4] 2068 0258                 movea.l    600(a0),a0
[000278c8] 322f 0002                 move.w     2(a7),d1
[000278cc] 4eb9 0004 948a            jsr        Ame_popup
[000278d2] 4a40                      tst.w      d0
[000278d4] 6f66                      ble.s      edin_pattern_2
[000278d6] 5340                      subq.w     #1,d0
[000278d8] 2053                      movea.l    (a3),a0
[000278da] 2268 025c                 movea.l    604(a0),a1
[000278de] 2069 003c                 movea.l    60(a1),a0
[000278e2] 5848                      addq.w     #4,a0
[000278e4] 2210                      move.l     (a0),d1
[000278e6] c2bc ffff f1ff            and.l      #$FFFFF1FF,d1
[000278ec] 3400                      move.w     d0,d2
[000278ee] 48c2                      ext.l      d2
[000278f0] 7609                      moveq.l    #9,d3
[000278f2] e7aa                      lsl.l      d3,d2
[000278f4] 8282                      or.l       d2,d1
[000278f6] 2081                      move.l     d1,(a0)
[000278f8] 2053                      movea.l    (a3),a0
[000278fa] 2268 025c                 movea.l    604(a0),a1
[000278fe] 3200                      move.w     d0,d1
[00027900] 0269 ff8f 0416            andi.w     #$FF8F,1046(a1)
[00027906] c27c 0007                 and.w      #$0007,d1
[0002790a] e949                      lsl.w      #4,d1
[0002790c] 8369 0416                 or.w       d1,1046(a1)
[00027910] 72ff                      moveq.l    #-1,d1
[00027912] 2053                      movea.l    (a3),a0
[00027914] 2068 0258                 movea.l    600(a0),a0
[00027918] 2253                      movea.l    (a3),a1
[0002791a] 2269 0258                 movea.l    600(a1),a1
[0002791e] 2269 0066                 movea.l    102(a1),a1
[00027922] 702b                      moveq.l    #43,d0
[00027924] 4e91                      jsr        (a1)
[00027926] 72ff                      moveq.l    #-1,d1
[00027928] 7001                      moveq.l    #1,d0
[0002792a] 2053                      movea.l    (a3),a0
[0002792c] 2068 0258                 movea.l    600(a0),a0
[00027930] 2253                      movea.l    (a3),a1
[00027932] 2269 0258                 movea.l    600(a1),a1
[00027936] 2269 0066                 movea.l    102(a1),a1
[0002793a] 4e91                      jsr        (a1)
edin_pattern_2:
[0002793c] 204a                      movea.l    a2,a0
[0002793e] 4eb9 0004 9b7c            jsr        Aob_delete
edin_pattern_1:
[00027944] 504f                      addq.w     #8,a7
[00027946] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0002794a] 4e75                      rts

edin_pos:
[0002794c] 48e7 003c                 movem.l    a2-a5,-(a7)
[00027950] 514f                      subq.w     #8,a7
[00027952] 45f9 000b 54c8            lea.l      POP_POSSEL,a2
[00027958] 204a                      movea.l    a2,a0
[0002795a] 4eb9 0004 9a5c            jsr        Aob_create
[00027960] 2648                      movea.l    a0,a3
[00027962] 200b                      move.l     a3,d0
[00027964] 6700 0148                 beq        edin_pos_1
[00027968] 49f9 0010 1f12            lea.l      ACSblk,a4
[0002796e] 7011                      moveq.l    #17,d0
[00027970] 2054                      movea.l    (a4),a0
[00027972] 2268 0258                 movea.l    600(a0),a1
[00027976] 2269 0014                 movea.l    20(a1),a1
[0002797a] 41d7                      lea.l      (a7),a0
[0002797c] 4eb9 0004 a3be            jsr        Aob_offset
[00027982] 7001                      moveq.l    #1,d0
[00027984] 2054                      movea.l    (a4),a0
[00027986] 2268 0258                 movea.l    600(a0),a1
[0002798a] d069 0034                 add.w      52(a1),d0
[0002798e] d157                      add.w      d0,(a7)
[00027990] 7201                      moveq.l    #1,d1
[00027992] d269 0036                 add.w      54(a1),d1
[00027996] d36f 0002                 add.w      d1,2(a7)
[0002799a] 2049                      movea.l    a1,a0
[0002799c] 224b                      movea.l    a3,a1
[0002799e] 3017                      move.w     (a7),d0
[000279a0] 322f 0002                 move.w     2(a7),d1
[000279a4] 4eb9 0004 948a            jsr        Ame_popup
[000279aa] 4a40                      tst.w      d0
[000279ac] 6f00 00f8                 ble        edin_pos_2
[000279b0] 5540                      subq.w     #2,d0
[000279b2] 2054                      movea.l    (a4),a0
[000279b4] 2268 025c                 movea.l    604(a0),a1
[000279b8] 2a69 003c                 movea.l    60(a1),a5
[000279bc] 584d                      addq.w     #4,a5
[000279be] 0295 f8ff ffff            andi.l     #$F8FFFFFF,(a5)
[000279c4] 3200                      move.w     d0,d1
[000279c6] b27c 0005                 cmp.w      #$0005,d1
[000279ca] 6200 00ae                 bhi        edin_pos_3
[000279ce] d241                      add.w      d1,d1
[000279d0] 323b 1006                 move.w     $000279D8(pc,d1.w),d1
[000279d4] 4efb 1002                 jmp        $000279D8(pc,d1.w)
J13:
[000279d8] 000c                      dc.w $000c   ; edin_pos_4-J13
[000279da] 0022                      dc.w $0022   ; edin_pos_5-J13
[000279dc] 003c                      dc.w $003c   ; edin_pos_6-J13
[000279de] 0056                      dc.w $0056   ; edin_pos_7-J13
[000279e0] 0070                      dc.w $0070   ; edin_pos_8-J13
[000279e2] 008a                      dc.w $008a   ; edin_pos_9-J13
edin_pos_4:
[000279e4] 43ea fd23                 lea.l      -733(a2),a1
[000279e8] 7013                      moveq.l    #19,d0
[000279ea] 2054                      movea.l    (a4),a0
[000279ec] 2068 025c                 movea.l    604(a0),a0
[000279f0] 4eb9 0004 afe0            jsr        Aob_puttext
[000279f6] 6000 0082                 bra        edin_pos_3
edin_pos_5:
[000279fa] 0095 0100 0000            ori.l      #$01000000,(a5)
[00027a00] 43ea fd27                 lea.l      -729(a2),a1
[00027a04] 7013                      moveq.l    #19,d0
[00027a06] 2054                      movea.l    (a4),a0
[00027a08] 2068 025c                 movea.l    604(a0),a0
[00027a0c] 4eb9 0004 afe0            jsr        Aob_puttext
[00027a12] 6066                      bra.s      edin_pos_3
edin_pos_6:
[00027a14] 0095 0200 0000            ori.l      #$02000000,(a5)
[00027a1a] 43ea fd2b                 lea.l      -725(a2),a1
[00027a1e] 7013                      moveq.l    #19,d0
[00027a20] 2054                      movea.l    (a4),a0
[00027a22] 2068 025c                 movea.l    604(a0),a0
[00027a26] 4eb9 0004 afe0            jsr        Aob_puttext
[00027a2c] 604c                      bra.s      edin_pos_3
edin_pos_7:
[00027a2e] 0095 0400 0000            ori.l      #$04000000,(a5)
[00027a34] 43ea fd2f                 lea.l      -721(a2),a1
[00027a38] 7013                      moveq.l    #19,d0
[00027a3a] 2054                      movea.l    (a4),a0
[00027a3c] 2068 025c                 movea.l    604(a0),a0
[00027a40] 4eb9 0004 afe0            jsr        Aob_puttext
[00027a46] 6032                      bra.s      edin_pos_3
edin_pos_8:
[00027a48] 0095 0500 0000            ori.l      #$05000000,(a5)
[00027a4e] 43ea fd33                 lea.l      -717(a2),a1
[00027a52] 7013                      moveq.l    #19,d0
[00027a54] 2054                      movea.l    (a4),a0
[00027a56] 2068 025c                 movea.l    604(a0),a0
[00027a5a] 4eb9 0004 afe0            jsr        Aob_puttext
[00027a60] 6018                      bra.s      edin_pos_3
edin_pos_9:
[00027a62] 0095 0600 0000            ori.l      #$06000000,(a5)
[00027a68] 43ea fd37                 lea.l      -713(a2),a1
[00027a6c] 7013                      moveq.l    #19,d0
[00027a6e] 2054                      movea.l    (a4),a0
[00027a70] 2068 025c                 movea.l    604(a0),a0
[00027a74] 4eb9 0004 afe0            jsr        Aob_puttext
edin_pos_3:
[00027a7a] 72ff                      moveq.l    #-1,d1
[00027a7c] 7013                      moveq.l    #19,d0
[00027a7e] 2054                      movea.l    (a4),a0
[00027a80] 2068 0258                 movea.l    600(a0),a0
[00027a84] 2254                      movea.l    (a4),a1
[00027a86] 2469 0258                 movea.l    600(a1),a2
[00027a8a] 226a 0066                 movea.l    102(a2),a1
[00027a8e] 4e91                      jsr        (a1)
[00027a90] 72ff                      moveq.l    #-1,d1
[00027a92] 7001                      moveq.l    #1,d0
[00027a94] 2054                      movea.l    (a4),a0
[00027a96] 2068 0258                 movea.l    600(a0),a0
[00027a9a] 2254                      movea.l    (a4),a1
[00027a9c] 2469 0258                 movea.l    600(a1),a2
[00027aa0] 226a 0066                 movea.l    102(a2),a1
[00027aa4] 4e91                      jsr        (a1)
edin_pos_2:
[00027aa6] 204b                      movea.l    a3,a0
[00027aa8] 4eb9 0004 9b7c            jsr        Aob_delete
edin_pos_1:
[00027aae] 504f                      addq.w     #8,a7
[00027ab0] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00027ab4] 4e75                      rts

edin_size:
[00027ab6] 48e7 0038                 movem.l    a2-a4,-(a7)
[00027aba] 514f                      subq.w     #8,a7
[00027abc] 41f9 000b dc40            lea.l      POP_SIZESEL,a0
[00027ac2] 4eb9 0004 9a5c            jsr        Aob_create
[00027ac8] 2448                      movea.l    a0,a2
[00027aca] 200a                      move.l     a2,d0
[00027acc] 6700 00ec                 beq        edin_size_1
[00027ad0] 47f9 0010 1f12            lea.l      ACSblk,a3
[00027ad6] 7016                      moveq.l    #22,d0
[00027ad8] 2053                      movea.l    (a3),a0
[00027ada] 2268 0258                 movea.l    600(a0),a1
[00027ade] 2269 0014                 movea.l    20(a1),a1
[00027ae2] 41d7                      lea.l      (a7),a0
[00027ae4] 4eb9 0004 a3be            jsr        Aob_offset
[00027aea] 7001                      moveq.l    #1,d0
[00027aec] 2053                      movea.l    (a3),a0
[00027aee] 2268 0258                 movea.l    600(a0),a1
[00027af2] d069 0034                 add.w      52(a1),d0
[00027af6] d157                      add.w      d0,(a7)
[00027af8] 7201                      moveq.l    #1,d1
[00027afa] d269 0036                 add.w      54(a1),d1
[00027afe] d36f 0002                 add.w      d1,2(a7)
[00027b02] 2268 025c                 movea.l    604(a0),a1
[00027b06] 2069 003c                 movea.l    60(a1),a0
[00027b0a] 2028 0004                 move.l     4(a0),d0
[00027b0e] 721b                      moveq.l    #27,d1
[00027b10] e2a0                      asr.l      d1,d0
[00027b12] c07c 0001                 and.w      #$0001,d0
[00027b16] 48c0                      ext.l      d0
[00027b18] 2400                      move.l     d0,d2
[00027b1a] d482                      add.l      d2,d2
[00027b1c] d480                      add.l      d0,d2
[00027b1e] e78a                      lsl.l      #3,d2
[00027b20] 0072 0004 2822            ori.w      #$0004,34(a2,d2.l)
[00027b26] 3017                      move.w     (a7),d0
[00027b28] 224a                      movea.l    a2,a1
[00027b2a] 2053                      movea.l    (a3),a0
[00027b2c] 2068 0258                 movea.l    600(a0),a0
[00027b30] 322f 0002                 move.w     2(a7),d1
[00027b34] 4eb9 0004 948a            jsr        Ame_popup
[00027b3a] 4a40                      tst.w      d0
[00027b3c] 6f74                      ble.s      edin_size_2
[00027b3e] 2053                      movea.l    (a3),a0
[00027b40] 2268 025c                 movea.l    604(a0),a1
[00027b44] 2869 003c                 movea.l    60(a1),a4
[00027b48] 584c                      addq.w     #4,a4
[00027b4a] b07c 0001                 cmp.w      #$0001,d0
[00027b4e] 661c                      bne.s      edin_size_3
[00027b50] 0294 f7ff ffff            andi.l     #$F7FFFFFF,(a4)
[00027b56] 43f9 000b d322            lea.l      SIZE_TEXT0,a1
[00027b5c] 7018                      moveq.l    #24,d0
[00027b5e] 2053                      movea.l    (a3),a0
[00027b60] 2068 025c                 movea.l    604(a0),a0
[00027b64] 4eb9 0004 afe0            jsr        Aob_puttext
[00027b6a] 601a                      bra.s      edin_size_4
edin_size_3:
[00027b6c] 0094 0800 0000            ori.l      #$08000000,(a4)
[00027b72] 43f9 000b d327            lea.l      SIZE_TEXT1,a1
[00027b78] 7018                      moveq.l    #24,d0
[00027b7a] 2053                      movea.l    (a3),a0
[00027b7c] 2068 025c                 movea.l    604(a0),a0
[00027b80] 4eb9 0004 afe0            jsr        Aob_puttext
edin_size_4:
[00027b86] 72ff                      moveq.l    #-1,d1
[00027b88] 7018                      moveq.l    #24,d0
[00027b8a] 2053                      movea.l    (a3),a0
[00027b8c] 2068 0258                 movea.l    600(a0),a0
[00027b90] 2253                      movea.l    (a3),a1
[00027b92] 2869 0258                 movea.l    600(a1),a4
[00027b96] 226c 0066                 movea.l    102(a4),a1
[00027b9a] 4e91                      jsr        (a1)
[00027b9c] 72ff                      moveq.l    #-1,d1
[00027b9e] 7001                      moveq.l    #1,d0
[00027ba0] 2053                      movea.l    (a3),a0
[00027ba2] 2068 0258                 movea.l    600(a0),a0
[00027ba6] 2253                      movea.l    (a3),a1
[00027ba8] 2869 0258                 movea.l    600(a1),a4
[00027bac] 226c 0066                 movea.l    102(a4),a1
[00027bb0] 4e91                      jsr        (a1)
edin_size_2:
[00027bb2] 204a                      movea.l    a2,a0
[00027bb4] 4eb9 0004 9b7c            jsr        Aob_delete
edin_size_1:
[00027bba] 504f                      addq.w     #8,a7
[00027bbc] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00027bc0] 4e75                      rts

edin_textcol:
[00027bc2] 3f03                      move.w     d3,-(a7)
[00027bc4] 2f0a                      move.l     a2,-(a7)
[00027bc6] 2079 0010 1f12            movea.l    ACSblk,a0
[00027bcc] 2268 025c                 movea.l    604(a0),a1
[00027bd0] 2469 003c                 movea.l    60(a1),a2
[00027bd4] 584a                      addq.w     #4,a2
[00027bd6] 700c                      moveq.l    #12,d0
[00027bd8] 3f00                      move.w     d0,-(a7)
[00027bda] 740d                      moveq.l    #13,d2
[00027bdc] 720a                      moveq.l    #10,d1
[00027bde] 2012                      move.l     (a2),d0
[00027be0] e880                      asr.l      #4,d0
[00027be2] c07c 000f                 and.w      #$000F,d0
[00027be6] 4eb9 0002 f280            jsr        oe_colsel
[00027bec] 544f                      addq.w     #2,a7
[00027bee] 3600                      move.w     d0,d3
[00027bf0] 6b2e                      bmi.s      edin_textcol_1
[00027bf2] 2212                      move.l     (a2),d1
[00027bf4] c2bc ffff ff0f            and.l      #$FFFFFF0F,d1
[00027bfa] 48c0                      ext.l      d0
[00027bfc] e988                      lsl.l      #4,d0
[00027bfe] 8280                      or.l       d0,d1
[00027c00] 2481                      move.l     d1,(a2)
[00027c02] 2079 0010 1f12            movea.l    ACSblk,a0
[00027c08] 2068 0258                 movea.l    600(a0),a0
[00027c0c] 2279 0010 1f12            movea.l    ACSblk,a1
[00027c12] 2469 0258                 movea.l    600(a1),a2
[00027c16] 226a 0066                 movea.l    102(a2),a1
[00027c1a] 7001                      moveq.l    #1,d0
[00027c1c] 72ff                      moveq.l    #-1,d1
[00027c1e] 4e91                      jsr        (a1)
edin_textcol_1:
[00027c20] 245f                      movea.l    (a7)+,a2
[00027c22] 361f                      move.w     (a7)+,d3
[00027c24] 4e75                      rts

init_inner:
[00027c26] 2f0a                      move.l     a2,-(a7)
[00027c28] 2f0b                      move.l     a3,-(a7)
[00027c2a] 2448                      movea.l    a0,a2
[00027c2c] 43f9 000b 5b96            lea.l      data,a1
[00027c32] 303c 2329                 move.w     #$2329,d0
[00027c36] 266a 0004                 movea.l    4(a2),a3
[00027c3a] 4e93                      jsr        (a3)
[00027c3c] 265f                      movea.l    (a7)+,a3
[00027c3e] 245f                      movea.l    (a7)+,a2
[00027c40] 4e75                      rts

minsize:
[00027c42] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00027c46] 2448                      movea.l    a0,a2
[00027c48] 2649                      movea.l    a1,a3
[00027c4a] 202a 000c                 move.l     12(a2),d0
[00027c4e] 6718                      beq.s      minsize_1
[00027c50] 2040                      movea.l    d0,a0
[00027c52] 4eb9 0007 69b0            jsr        strlen
[00027c58] 2600                      move.l     d0,d3
[00027c5a] 5443                      addq.w     #2,d3
[00027c5c] 2079 0010 1f12            movea.l    ACSblk,a0
[00027c62] c7e8 0012                 muls.w     18(a0),d3
[00027c66] 600c                      bra.s      minsize_2
minsize_1:
[00027c68] 2079 0010 1f12            movea.l    ACSblk,a0
[00027c6e] 3628 0012                 move.w     18(a0),d3
[00027c72] d643                      add.w      d3,d3
minsize_2:
[00027c74] 3683                      move.w     d3,(a3)
[00027c76] 2079 0010 1f12            movea.l    ACSblk,a0
[00027c7c] 226f 0010                 movea.l    16(a7),a1
[00027c80] 32a8 0014                 move.w     20(a0),(a1)
[00027c84] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00027c88] 4e75                      rts

object_tree:
[00027c8a] 48e7 103e                 movem.l    d3/a2-a6,-(a7)
[00027c8e] 594f                      subq.w     #4,a7
[00027c90] 2448                      movea.l    a0,a2
[00027c92] 2849                      movea.l    a1,a4
[00027c94] 41f9 000b 5588            lea.l      ED_INNER,a0
[00027c9a] 4eb9 0004 9a5c            jsr        Aob_create
[00027ca0] 2648                      movea.l    a0,a3
[00027ca2] 200b                      move.l     a3,d0
[00027ca4] 6606                      bne.s      object_tree_1
[00027ca6] 91c8                      suba.l     a0,a0
[00027ca8] 6000 02cc                 bra        object_tree_2
object_tree_1:
[00027cac] 4beb 0030                 lea.l      48(a3),a5
[00027cb0] 7016                      moveq.l    #22,d0
[00027cb2] c06c 0008                 and.w      8(a4),d0
[00027cb6] 816d 0008                 or.w       d0,8(a5)
[00027cba] 703f                      moveq.l    #63,d0
[00027cbc] c06c 000a                 and.w      10(a4),d0
[00027cc0] 816d 000a                 or.w       d0,10(a5)
[00027cc4] 700e                      moveq.l    #14,d0
[00027cc6] 224b                      movea.l    a3,a1
[00027cc8] 2079 0010 1f12            movea.l    ACSblk,a0
[00027cce] 2068 0258                 movea.l    600(a0),a0
[00027cd2] 4eb9 0002 f23c            jsr        oe_beself
[00027cd8] 7038                      moveq.l    #56,d0
[00027cda] 224b                      movea.l    a3,a1
[00027cdc] 2079 0010 1f12            movea.l    ACSblk,a0
[00027ce2] 2068 0258                 movea.l    600(a0),a0
[00027ce6] 4eb9 0002 f23c            jsr        oe_beself
[00027cec] 7039                      moveq.l    #57,d0
[00027cee] 224b                      movea.l    a3,a1
[00027cf0] 2079 0010 1f12            movea.l    ACSblk,a0
[00027cf6] 2068 0258                 movea.l    600(a0),a0
[00027cfa] 4eb9 0002 f23c            jsr        oe_beself
[00027d00] 286d 000c                 movea.l    12(a5),a4
[00027d04] 4857                      pea.l      (a7)
[00027d06] 43f9 000b 5c03            lea.l      $000B5C03,a1
[00027d0c] 2052                      movea.l    (a2),a0
[00027d0e] 4eb9 0007 594a            jsr        sscanf
[00027d14] 584f                      addq.w     #4,a7
[00027d16] 2957 0004                 move.l     (a7),4(a4)
[00027d1a] 0c6a 0002 0008            cmpi.w     #$0002,8(a2)
[00027d20] 6610                      bne.s      object_tree_3
[00027d22] 226a 000a                 movea.l    10(a2),a1
[00027d26] 700e                      moveq.l    #14,d0
[00027d28] 204b                      movea.l    a3,a0
[00027d2a] 4eb9 0004 afe0            jsr        Aob_puttext
[00027d30] 6020                      bra.s      object_tree_4
object_tree_3:
[00027d32] 43f9 000b 5beb            lea.l      $000B5BEB,a1
[00027d38] 7004                      moveq.l    #4,d0
[00027d3a] 204d                      movea.l    a5,a0
[00027d3c] 2c6c 0008                 movea.l    8(a4),a6
[00027d40] 4e96                      jsr        (a6)
[00027d42] 43f9 000b 5beb            lea.l      $000B5BEB,a1
[00027d48] 700e                      moveq.l    #14,d0
[00027d4a] 204b                      movea.l    a3,a0
[00027d4c] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_4:
[00027d52] 2017                      move.l     (a7),d0
[00027d54] 721c                      moveq.l    #28,d1
[00027d56] e2a0                      asr.l      d1,d0
[00027d58] c0bc 0000 0001            and.l      #$00000001,d0
[00027d5e] 6708                      beq.s      object_tree_5
[00027d60] 006b 0001 03e2            ori.w      #$0001,994(a3)
[00027d66] 6006                      bra.s      object_tree_6
object_tree_5:
[00027d68] 026b fffe 03e2            andi.w     #$FFFE,994(a3)
object_tree_6:
[00027d6e] 2617                      move.l     (a7),d3
[00027d70] 7010                      moveq.l    #16,d0
[00027d72] e0a3                      asr.l      d0,d3
[00027d74] c67c 000f                 and.w      #$000F,d3
[00027d78] 4bf9 000b e270            lea.l      colour_text,a5
[00027d7e] 3003                      move.w     d3,d0
[00027d80] 48c0                      ext.l      d0
[00027d82] e588                      lsl.l      #2,d0
[00027d84] 2275 0800                 movea.l    0(a5,d0.l),a1
[00027d88] 204b                      movea.l    a3,a0
[00027d8a] 7027                      moveq.l    #39,d0
[00027d8c] 4eb9 0004 afe0            jsr        Aob_puttext
[00027d92] 3003                      move.w     d3,d0
[00027d94] 026b fff0 039e            andi.w     #$FFF0,926(a3)
[00027d9a] c07c 000f                 and.w      #$000F,d0
[00027d9e] 816b 039e                 or.w       d0,926(a3)
[00027da2] 760f                      moveq.l    #15,d3
[00027da4] c66f 0002                 and.w      2(a7),d3
[00027da8] 3003                      move.w     d3,d0
[00027daa] 48c0                      ext.l      d0
[00027dac] e588                      lsl.l      #2,d0
[00027dae] 2275 0800                 movea.l    0(a5,d0.l),a1
[00027db2] 204b                      movea.l    a3,a0
[00027db4] 701f                      moveq.l    #31,d0
[00027db6] 4eb9 0004 afe0            jsr        Aob_puttext
[00027dbc] 3003                      move.w     d3,d0
[00027dbe] 026b fff0 02de            andi.w     #$FFF0,734(a3)
[00027dc4] c07c 000f                 and.w      #$000F,d0
[00027dc8] 816b 02de                 or.w       d0,734(a3)
[00027dcc] 2617                      move.l     (a7),d3
[00027dce] 700c                      moveq.l    #12,d0
[00027dd0] e0a3                      asr.l      d0,d3
[00027dd2] c67c 000f                 and.w      #$000F,d3
[00027dd6] 3203                      move.w     d3,d1
[00027dd8] 48c1                      ext.l      d1
[00027dda] e589                      lsl.l      #2,d1
[00027ddc] 2275 1800                 movea.l    0(a5,d1.l),a1
[00027de0] 204b                      movea.l    a3,a0
[00027de2] 7034                      moveq.l    #52,d0
[00027de4] 4eb9 0004 afe0            jsr        Aob_puttext
[00027dea] 3003                      move.w     d3,d0
[00027dec] 026b fff0 04d6            andi.w     #$FFF0,1238(a3)
[00027df2] c07c 000f                 and.w      #$000F,d0
[00027df6] 816b 04d6                 or.w       d0,1238(a3)
[00027dfa] 2617                      move.l     (a7),d3
[00027dfc] 7009                      moveq.l    #9,d0
[00027dfe] e0a3                      asr.l      d0,d3
[00027e00] c67c 0007                 and.w      #$0007,d3
[00027e04] 3203                      move.w     d3,d1
[00027e06] 026b ff8f 0416            andi.w     #$FF8F,1046(a3)
[00027e0c] c27c 0007                 and.w      #$0007,d1
[00027e10] e949                      lsl.w      #4,d1
[00027e12] 836b 0416                 or.w       d1,1046(a3)
[00027e16] 2617                      move.l     (a7),d3
[00027e18] 7218                      moveq.l    #24,d1
[00027e1a] e2a3                      asr.l      d1,d3
[00027e1c] c67c 0007                 and.w      #$0007,d3
[00027e20] 3403                      move.w     d3,d2
[00027e22] b47c 0006                 cmp.w      #$0006,d2
[00027e26] 6200 0084                 bhi        object_tree_7
[00027e2a] d442                      add.w      d2,d2
[00027e2c] 343b 2006                 move.w     $00027E34(pc,d2.w),d2
[00027e30] 4efb 2002                 jmp        $00027E34(pc,d2.w)
J14:
[00027e34] 000e                      dc.w $000e   ; object_tree_8-J14
[00027e36] 0020                      dc.w $0020   ; object_tree_9-J14
[00027e38] 0032                      dc.w $0032   ; object_tree_10-J14
[00027e3a] 0078                      dc.w $0078   ; object_tree_7-J14
[00027e3c] 0044                      dc.w $0044   ; object_tree_11-J14
[00027e3e] 0056                      dc.w $0056   ; object_tree_12-J14
[00027e40] 0068                      dc.w $0068   ; object_tree_13-J14
object_tree_8:
[00027e42] 43f9 000b 51eb            lea.l      POS_TEXT0,a1
[00027e48] 7013                      moveq.l    #19,d0
[00027e4a] 204b                      movea.l    a3,a0
[00027e4c] 4eb9 0004 afe0            jsr        Aob_puttext
[00027e52] 6058                      bra.s      object_tree_7
object_tree_9:
[00027e54] 43f9 000b 51ef            lea.l      POS_TEXT1,a1
[00027e5a] 7013                      moveq.l    #19,d0
[00027e5c] 204b                      movea.l    a3,a0
[00027e5e] 4eb9 0004 afe0            jsr        Aob_puttext
[00027e64] 6046                      bra.s      object_tree_7
object_tree_10:
[00027e66] 43f9 000b 51f3            lea.l      POS_TEXT2,a1
[00027e6c] 7013                      moveq.l    #19,d0
[00027e6e] 204b                      movea.l    a3,a0
[00027e70] 4eb9 0004 afe0            jsr        Aob_puttext
[00027e76] 6034                      bra.s      object_tree_7
object_tree_11:
[00027e78] 43f9 000b 51f7            lea.l      POS_TEXT3,a1
[00027e7e] 7013                      moveq.l    #19,d0
[00027e80] 204b                      movea.l    a3,a0
[00027e82] 4eb9 0004 afe0            jsr        Aob_puttext
[00027e88] 6022                      bra.s      object_tree_7
object_tree_12:
[00027e8a] 43f9 000b 51fb            lea.l      POS_TEXT4,a1
[00027e90] 7013                      moveq.l    #19,d0
[00027e92] 204b                      movea.l    a3,a0
[00027e94] 4eb9 0004 afe0            jsr        Aob_puttext
[00027e9a] 6010                      bra.s      object_tree_7
object_tree_13:
[00027e9c] 43f9 000b 51ff            lea.l      POS_TEXT5,a1
[00027ea2] 7013                      moveq.l    #19,d0
[00027ea4] 204b                      movea.l    a3,a0
[00027ea6] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_7:
[00027eac] 2017                      move.l     (a7),d0
[00027eae] c0bc 0800 0000            and.l      #$08000000,d0
[00027eb4] 6712                      beq.s      object_tree_14
[00027eb6] 43f9 000b d327            lea.l      SIZE_TEXT1,a1
[00027ebc] 204b                      movea.l    a3,a0
[00027ebe] 7018                      moveq.l    #24,d0
[00027ec0] 4eb9 0004 afe0            jsr        Aob_puttext
[00027ec6] 6010                      bra.s      object_tree_15
object_tree_14:
[00027ec8] 43f9 000b d322            lea.l      SIZE_TEXT0,a1
[00027ece] 7018                      moveq.l    #24,d0
[00027ed0] 204b                      movea.l    a3,a0
[00027ed2] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_15:
[00027ed8] 2617                      move.l     (a7),d3
[00027eda] e883                      asr.l      #4,d3
[00027edc] c67c 000f                 and.w      #$000F,d3
[00027ee0] 3003                      move.w     d3,d0
[00027ee2] 48c0                      ext.l      d0
[00027ee4] e588                      lsl.l      #2,d0
[00027ee6] 2275 0800                 movea.l    0(a5,d0.l),a1
[00027eea] 204b                      movea.l    a3,a0
[00027eec] 700d                      moveq.l    #13,d0
[00027eee] 4eb9 0004 afe0            jsr        Aob_puttext
[00027ef4] 3003                      move.w     d3,d0
[00027ef6] 026b fff0 012e            andi.w     #$FFF0,302(a3)
[00027efc] c07c 000f                 and.w      #$000F,d0
[00027f00] 816b 012e                 or.w       d0,302(a3)
[00027f04] 206b 054c                 movea.l    1356(a3),a0
[00027f08] 2968 000c 0018            move.l     12(a0),24(a4)
[00027f0e] 206a 0026                 movea.l    38(a2),a0
[00027f12] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00027f18] 4a40                      tst.w      d0
[00027f1a] 6712                      beq.s      object_tree_16
[00027f1c] 43f9 000b 5beb            lea.l      $000B5BEB,a1
[00027f22] 7038                      moveq.l    #56,d0
[00027f24] 204b                      movea.l    a3,a0
[00027f26] 4eb9 0004 afe0            jsr        Aob_puttext
[00027f2c] 600e                      bra.s      object_tree_17
object_tree_16:
[00027f2e] 226a 0026                 movea.l    38(a2),a1
[00027f32] 7038                      moveq.l    #56,d0
[00027f34] 204b                      movea.l    a3,a0
[00027f36] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_17:
[00027f3c] 206b 0564                 movea.l    1380(a3),a0
[00027f40] 2968 000c 001c            move.l     12(a0),28(a4)
[00027f46] 206a 002a                 movea.l    42(a2),a0
[00027f4a] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00027f50] 4a40                      tst.w      d0
[00027f52] 6712                      beq.s      object_tree_18
[00027f54] 43f9 000b 5beb            lea.l      $000B5BEB,a1
[00027f5a] 7039                      moveq.l    #57,d0
[00027f5c] 204b                      movea.l    a3,a0
[00027f5e] 4eb9 0004 afe0            jsr        Aob_puttext
[00027f64] 600e                      bra.s      object_tree_19
object_tree_18:
[00027f66] 226a 002a                 movea.l    42(a2),a1
[00027f6a] 7039                      moveq.l    #57,d0
[00027f6c] 204b                      movea.l    a3,a0
[00027f6e] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_19:
[00027f74] 204b                      movea.l    a3,a0
object_tree_2:
[00027f76] 584f                      addq.w     #4,a7
[00027f78] 4cdf 7c08                 movem.l    (a7)+,d3/a2-a6
[00027f7c] 4e75                      rts

test_it:
[00027f7e] 2f0a                      move.l     a2,-(a7)
[00027f80] 2f0b                      move.l     a3,-(a7)
[00027f82] 2648                      movea.l    a0,a3
[00027f84] 2449                      movea.l    a1,a2
[00027f86] 22bc 0005 9f9c            move.l     #A_innerframe,(a1)
[00027f8c] 486a 0004                 pea.l      4(a2)
[00027f90] 43f9 000b 5c03            lea.l      $000B5C03,a1
[00027f96] 2050                      movea.l    (a0),a0
[00027f98] 4eb9 0007 594a            jsr        sscanf
[00027f9e] 584f                      addq.w     #4,a7
[00027fa0] 257c 0005 9318 0008       move.l     #Auo_string,8(a2)
[00027fa8] 0c6b 0002 0008            cmpi.w     #$0002,8(a3)
[00027fae] 6608                      bne.s      test_it_1
[00027fb0] 256b 000a 000c            move.l     10(a3),12(a2)
[00027fb6] 6004                      bra.s      test_it_2
test_it_1:
[00027fb8] 42aa 000c                 clr.l      12(a2)
test_it_2:
[00027fbc] 7000                      moveq.l    #0,d0
[00027fbe] 2540 0014                 move.l     d0,20(a2)
[00027fc2] 2540 0010                 move.l     d0,16(a2)
[00027fc6] 206b 0026                 movea.l    38(a3),a0
[00027fca] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00027fd0] 4a40                      tst.w      d0
[00027fd2] 6704                      beq.s      test_it_3
[00027fd4] 91c8                      suba.l     a0,a0
[00027fd6] 6004                      bra.s      test_it_4
test_it_3:
[00027fd8] 206b 0026                 movea.l    38(a3),a0
test_it_4:
[00027fdc] 2548 0018                 move.l     a0,24(a2)
[00027fe0] 206b 002a                 movea.l    42(a3),a0
[00027fe4] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00027fea] 4a40                      tst.w      d0
[00027fec] 6704                      beq.s      test_it_5
[00027fee] 91c8                      suba.l     a0,a0
[00027ff0] 6004                      bra.s      test_it_6
test_it_5:
[00027ff2] 206b 002a                 movea.l    42(a3),a0
test_it_6:
[00027ff6] 2548 001c                 move.l     a0,28(a2)
[00027ffa] 265f                      movea.l    (a7)+,a3
[00027ffc] 245f                      movea.l    (a7)+,a2
[00027ffe] 4e75                      rts

abort:
[00028000] 2079 0010 1f12            movea.l    ACSblk,a0
[00028006] 2268 0258                 movea.l    600(a0),a1
[0002800a] 2069 0014                 movea.l    20(a1),a0
[0002800e] 2068 003c                 movea.l    60(a0),a0
[00028012] 42a8 0018                 clr.l      24(a0)
[00028016] 42a8 001c                 clr.l      28(a0)
[0002801a] 2079 000b 5bd6            movea.l    $000B5BD6,a0
[00028020] 2050                      movea.l    (a0),a0
[00028022] 4e90                      jsr        (a0)
[00028024] 4e75                      rts

ok:
[00028026] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0002802a] 4fef ffce                 lea.l      -50(a7),a7
[0002802e] 45f9 0010 1f12            lea.l      ACSblk,a2
[00028034] 2052                      movea.l    (a2),a0
[00028036] 2268 0258                 movea.l    600(a0),a1
[0002803a] 2669 0014                 movea.l    20(a1),a3
[0002803e] 2a6b 003c                 movea.l    60(a3),a5
[00028042] 49f9 000f f5a6            lea.l      parm,a4
[00028048] 2f2d 0004                 move.l     4(a5),-(a7)
[0002804c] 43f9 000b 5c03            lea.l      $000B5C03,a1
[00028052] 204c                      movea.l    a4,a0
[00028054] 4eb9 0007 5680            jsr        sprintf
[0002805a] 584f                      addq.w     #4,a7
[0002805c] 4bef 0004                 lea.l      4(a7),a5
[00028060] 2a8c                      move.l     a4,(a5)
[00028062] 2b7c 000b 5bf8 0004       move.l     #$000B5BF8,4(a5)
[0002806a] 43d7                      lea.l      (a7),a1
[0002806c] 7003                      moveq.l    #3,d0
[0002806e] 41eb 0150                 lea.l      336(a3),a0
[00028072] 4eb9 0005 e010            jsr        Auo_boxed
[00028078] 2057                      movea.l    (a7),a0
[0002807a] 1010                      move.b     (a0),d0
[0002807c] 671c                      beq.s      ok_1
[0002807e] 4eb9 0007 69b0            jsr        strlen
[00028084] 2600                      move.l     d0,d3
[00028086] 5443                      addq.w     #2,d3
[00028088] 2052                      movea.l    (a2),a0
[0002808a] c7e8 0012                 muls.w     18(a0),d3
[0002808e] 3b7c 0002 0008            move.w     #$0002,8(a5)
[00028094] 2b57 000a                 move.l     (a7),10(a5)
[00028098] 6010                      bra.s      ok_2
ok_1:
[0002809a] 2052                      movea.l    (a2),a0
[0002809c] 3628 0012                 move.w     18(a0),d3
[000280a0] d643                      add.w      d3,d3
[000280a2] 426d 0008                 clr.w      8(a5)
[000280a6] 42ad 000a                 clr.l      10(a5)
ok_2:
[000280aa] 42ad 000e                 clr.l      14(a5)
[000280ae] 4240                      clr.w      d0
[000280b0] 3b40 001c                 move.w     d0,28(a5)
[000280b4] 3b40 0012                 move.w     d0,18(a5)
[000280b8] 7200                      moveq.l    #0,d1
[000280ba] 2b41 001e                 move.l     d1,30(a5)
[000280be] 2b41 0014                 move.l     d1,20(a5)
[000280c2] 7000                      moveq.l    #0,d0
[000280c4] 2b40 0022                 move.l     d0,34(a5)
[000280c8] 2b40 0018                 move.l     d0,24(a5)
[000280cc] 43ed 0026                 lea.l      38(a5),a1
[000280d0] 41eb 0540                 lea.l      1344(a3),a0
[000280d4] 7003                      moveq.l    #3,d0
[000280d6] 4eb9 0005 e010            jsr        Auo_boxed
[000280dc] 206d 0026                 movea.l    38(a5),a0
[000280e0] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000280e6] 4a40                      tst.w      d0
[000280e8] 6704                      beq.s      ok_3
[000280ea] 42ad 0026                 clr.l      38(a5)
ok_3:
[000280ee] 43ed 002a                 lea.l      42(a5),a1
[000280f2] 7003                      moveq.l    #3,d0
[000280f4] 41eb 0558                 lea.l      1368(a3),a0
[000280f8] 4eb9 0005 e010            jsr        Auo_boxed
[000280fe] 206d 002a                 movea.l    42(a5),a0
[00028102] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00028108] 4a40                      tst.w      d0
[0002810a] 6704                      beq.s      ok_4
[0002810c] 42ad 002a                 clr.l      42(a5)
ok_4:
[00028110] 2052                      movea.l    (a2),a0
[00028112] 3228 0014                 move.w     20(a0),d1
[00028116] 3003                      move.w     d3,d0
[00028118] 204d                      movea.l    a5,a0
[0002811a] 2279 000b 5bd6            movea.l    $000B5BD6,a1
[00028120] 2269 0004                 movea.l    4(a1),a1
[00028124] 4e91                      jsr        (a1)
[00028126] 6100 fed8                 bsr        abort
[0002812a] 4fef 0032                 lea.l      50(a7),a7
[0002812e] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00028132] 4e75                      rts

	.data

BUBBLE_01:
[000b50f6]                           dc.b 'Hier wird der Titel eingegeben',0
BUBBLE_03:
[000b5115]                           dc.b 'Hier kann der String, der fÅr BubbleGEM verwendet werden soll, eingegeben werden.',0
BUBBLE_05:
[000b5167]                           dc.b 'Hier kann der String eingegeben werden, der das aufzurufende Context-Popup beschreibt (siehe in der Dokumentation zu Ame_strpopup).',0
POS_TEXT0:
[000b51eb]                           dc.b 'l/o',0
POS_TEXT1:
[000b51ef]                           dc.b 'm/o',0
POS_TEXT2:
[000b51f3]                           dc.b 'r/o',0
POS_TEXT3:
[000b51f7]                           dc.b 'l/u',0
POS_TEXT4:
[000b51fb]                           dc.b 'm/u',0
POS_TEXT5:
[000b51ff]                           dc.b 'r/u',0
TEXT_001:
[000b5203]                           dc.b 'TITEL',0
TEXT_005:
[000b5209]                           dc.b $4f
[000b520a]                           dc.w $4b00
TEXT_009:
[000b520c]                           dc.b 'Abbruch',0
TEXT_05:
[000b5214]                           dc.b 'Sonstiges',0
TEXT_06:
[000b521e]                           dc.b 'BubbleGEM-Text',0
TEXT_07:
[000b522d]                           dc.b 'Context-Popup',0
TEXT_09:
[000b523b]                           dc.b 'unten:',0
TEXT_10:
[000b5242]                           dc.b 'Farbe:',0
TEXT_12:
[000b5249]                           dc.b 'Grîûe:',0
TEXT_13:
[000b5250]                           dc.b 'Muster:',0
TEXT_14:
[000b5258]                           dc.b 'Rahmen-Farbe:',0
TEXT_15:
[000b5266]                           dc.b 'InnenflÑche:',0
TEXT_16:
[000b5273]                           dc.b 'Text:',0
TEXT_18:
[000b5279]                           dc.b 'Pos:',0
TEXT_19:
[000b527e]                           dc.b 'oben:',0
TEXT_20:
[000b5284]                           dc.b 'DitherModus',0
TEXT_21:
[000b5290]                           dc.b 'links/',0
TEXT_22:
[000b5297]                           dc.b 'rechts/',0
TEXT_23:
[000b529f]                           dc.b ' XXX ',0
help_title:
[000b52a5]                           dc.b 'Der Innerframe-Editor',0
title:
[000b52bb]                           dc.b 'INNERFRAME -',0
A_3DBUTTON01:
[000b52c8] 0005a4e2                  dc.l A_3Dbutton
[000b52cc]                           dc.w $29c1
[000b52ce]                           dc.w $0178
[000b52d0] 00059318                  dc.l Auo_string
[000b52d4] 000b5209                  dc.l TEXT_005
[000b52d8]                           dc.b $00
[000b52d9]                           dc.b $00
[000b52da]                           dc.b $00
[000b52db]                           dc.b $00
[000b52dc]                           dc.b $00
[000b52dd]                           dc.b $00
[000b52de]                           dc.b $00
[000b52df]                           dc.b $00
[000b52e0]                           dc.b $00
[000b52e1]                           dc.b $00
[000b52e2]                           dc.b $00
[000b52e3]                           dc.b $00
[000b52e4]                           dc.b $00
[000b52e5]                           dc.b $00
[000b52e6]                           dc.b $00
[000b52e7]                           dc.b $00
A_3DBUTTON02:
[000b52e8] 0005a4e2                  dc.l A_3Dbutton
[000b52ec]                           dc.w $29c1
[000b52ee]                           dc.w $0178
[000b52f0] 00059318                  dc.l Auo_string
[000b52f4] 000b520c                  dc.l TEXT_009
[000b52f8]                           dc.b $00
[000b52f9]                           dc.b $00
[000b52fa]                           dc.b $00
[000b52fb]                           dc.b $00
[000b52fc]                           dc.b $00
[000b52fd]                           dc.b $00
[000b52fe]                           dc.b $00
[000b52ff]                           dc.b $00
[000b5300]                           dc.b $00
[000b5301]                           dc.b $00
[000b5302]                           dc.b $00
[000b5303]                           dc.b $00
[000b5304]                           dc.b $00
[000b5305]                           dc.b $00
[000b5306]                           dc.b $00
[000b5307]                           dc.b $00
A_3DBUTTON05:
[000b5308] 0005a4e2                  dc.l A_3Dbutton
[000b530c]                           dc.w $29f1
[000b530e]                           dc.w $0178
[000b5310] 00059318                  dc.l Auo_string
[000b5314]                           dc.b $00
[000b5315]                           dc.b $00
[000b5316]                           dc.b $00
[000b5317]                           dc.b $00
[000b5318]                           dc.b $00
[000b5319]                           dc.b $00
[000b531a]                           dc.b $00
[000b531b]                           dc.b $00
[000b531c]                           dc.b $00
[000b531d]                           dc.b $00
[000b531e]                           dc.b $00
[000b531f]                           dc.b $00
[000b5320]                           dc.b $00
[000b5321]                           dc.b $00
[000b5322]                           dc.b $00
[000b5323]                           dc.b $00
[000b5324]                           dc.b $00
[000b5325]                           dc.b $00
[000b5326]                           dc.b $00
[000b5327]                           dc.b $00
A_3DBUTTON06:
[000b5328] 0005a4e2                  dc.l A_3Dbutton
[000b532c]                           dc.w $29f1
[000b532e]                           dc.w $0178
[000b5330] 00059318                  dc.l Auo_string
[000b5334]                           dc.b $00
[000b5335]                           dc.b $00
[000b5336]                           dc.b $00
[000b5337]                           dc.b $00
[000b5338]                           dc.b $00
[000b5339]                           dc.b $00
[000b533a]                           dc.b $00
[000b533b]                           dc.b $00
[000b533c]                           dc.b $00
[000b533d]                           dc.b $00
[000b533e]                           dc.b $00
[000b533f]                           dc.b $00
[000b5340]                           dc.b $00
[000b5341]                           dc.b $00
[000b5342]                           dc.b $00
[000b5343]                           dc.b $00
[000b5344]                           dc.b $00
[000b5345]                           dc.b $00
[000b5346]                           dc.b $00
[000b5347]                           dc.b $00
A_3DBUTTON27:
[000b5348] 0005a4e2                  dc.l A_3Dbutton
[000b534c]                           dc.w $09f1
[000b534e]                           dc.w $0178
[000b5350] 00059318                  dc.l Auo_string
[000b5354]                           dc.b $00
[000b5355]                           dc.b $00
[000b5356]                           dc.b $00
[000b5357]                           dc.b $00
[000b5358]                           dc.b $00
[000b5359]                           dc.b $00
[000b535a]                           dc.b $00
[000b535b]                           dc.b $00
[000b535c]                           dc.b $00
[000b535d]                           dc.b $00
[000b535e]                           dc.b $00
[000b535f]                           dc.b $00
[000b5360]                           dc.b $00
[000b5361]                           dc.b $00
[000b5362]                           dc.b $00
[000b5363]                           dc.b $00
[000b5364]                           dc.b $00
[000b5365]                           dc.b $00
[000b5366]                           dc.b $00
[000b5367]                           dc.b $00
A_ARROWS02:
[000b5368] 0005b212                  dc.l A_arrows
[000b536c]                           dc.w $1301
[000b536e]                           dc.b $00
[000b536f]                           dc.b $01
[000b5370]                           dc.b $00
[000b5371]                           dc.b $00
[000b5372]                           dc.b $00
[000b5373]                           dc.b $00
[000b5374]                           dc.b $00
[000b5375]                           dc.b $00
[000b5376]                           dc.b $00
[000b5377]                           dc.b $00
[000b5378]                           dc.b $00
[000b5379]                           dc.b $00
[000b537a]                           dc.b $00
[000b537b]                           dc.b $00
[000b537c]                           dc.b $00
[000b537d]                           dc.b $00
[000b537e]                           dc.b $00
[000b537f]                           dc.b $00
[000b5380]                           dc.b $00
[000b5381]                           dc.b $00
[000b5382]                           dc.b $00
[000b5383]                           dc.b $00
[000b5384]                           dc.b $00
[000b5385]                           dc.b $00
[000b5386]                           dc.b $00
[000b5387]                           dc.b $00
A_BOXED02:
[000b5388] 0005e9d2                  dc.l A_boxed
[000b538c]                           dc.w $9000
[000b538e]                           dc.w $ff12
[000b5390] 0005e010                  dc.l Auo_boxed
[000b5394]                           dc.b $00
[000b5395]                           dc.b $00
[000b5396]                           dc.b $00
[000b5397]                           dc.b $00
[000b5398]                           dc.b $00
[000b5399]                           dc.b $00
[000b539a]                           dc.b $00
[000b539b]                           dc.b $00
[000b539c]                           dc.b $00
[000b539d]                           dc.b $00
[000b539e]                           dc.b $00
[000b539f]                           dc.b $00
[000b53a0] 000b50f6                  dc.l BUBBLE_01
[000b53a4]                           dc.b $00
[000b53a5]                           dc.b $00
[000b53a6]                           dc.b $00
[000b53a7]                           dc.b $00
A_BOXED03:
[000b53a8] 0005e9d2                  dc.l A_boxed
[000b53ac]                           dc.w $9038
[000b53ae]                           dc.w $ff12
[000b53b0] 0005e010                  dc.l Auo_boxed
[000b53b4]                           dc.b $00
[000b53b5]                           dc.b $00
[000b53b6]                           dc.b $00
[000b53b7]                           dc.b $00
[000b53b8]                           dc.b $00
[000b53b9]                           dc.b $00
[000b53ba]                           dc.b $00
[000b53bb]                           dc.b $00
[000b53bc]                           dc.b $00
[000b53bd]                           dc.b $00
[000b53be]                           dc.b $00
[000b53bf]                           dc.b $00
[000b53c0] 000b5115                  dc.l BUBBLE_03
[000b53c4]                           dc.b $00
[000b53c5]                           dc.b $00
[000b53c6]                           dc.b $00
[000b53c7]                           dc.b $00
A_BOXED04:
[000b53c8] 0005e9d2                  dc.l A_boxed
[000b53cc]                           dc.w $9038
[000b53ce]                           dc.w $ff12
[000b53d0] 0005e010                  dc.l Auo_boxed
[000b53d4]                           dc.b $00
[000b53d5]                           dc.b $00
[000b53d6]                           dc.b $00
[000b53d7]                           dc.b $00
[000b53d8]                           dc.b $00
[000b53d9]                           dc.b $00
[000b53da]                           dc.b $00
[000b53db]                           dc.b $00
[000b53dc]                           dc.b $00
[000b53dd]                           dc.b $00
[000b53de]                           dc.b $00
[000b53df]                           dc.b $00
[000b53e0] 000b5167                  dc.l BUBBLE_05
[000b53e4]                           dc.b $00
[000b53e5]                           dc.b $00
[000b53e6]                           dc.b $00
[000b53e7]                           dc.b $00
A_CHECKBOX01:
[000b53e8] 000593fc                  dc.l A_checkbox
[000b53ec]                           dc.b $00
[000b53ed]                           dc.b $00
[000b53ee]                           dc.b $00
[000b53ef]                           dc.b $01
[000b53f0] 00059318                  dc.l Auo_string
[000b53f4] 000b5284                  dc.l TEXT_20
[000b53f8]                           dc.b $00
[000b53f9]                           dc.b $00
[000b53fa]                           dc.b $00
[000b53fb]                           dc.b $00
[000b53fc]                           dc.b $00
[000b53fd]                           dc.b $00
[000b53fe]                           dc.b $00
[000b53ff]                           dc.b $00
[000b5400]                           dc.b $00
[000b5401]                           dc.b $00
[000b5402]                           dc.b $00
[000b5403]                           dc.b $00
[000b5404]                           dc.b $00
[000b5405]                           dc.b $00
[000b5406]                           dc.b $00
[000b5407]                           dc.b $00
A_INNERFRAME01:
[000b5408] 00059f9c                  dc.l A_innerframe
[000b540c]                           dc.w $1400
[000b540e]                           dc.w $8f11
[000b5410] 00059318                  dc.l Auo_string
[000b5414]                           dc.b $00
[000b5415]                           dc.b $00
[000b5416]                           dc.b $00
[000b5417]                           dc.b $00
[000b5418]                           dc.b $00
[000b5419]                           dc.b $00
[000b541a]                           dc.b $00
[000b541b]                           dc.b $00
[000b541c]                           dc.b $00
[000b541d]                           dc.b $00
[000b541e]                           dc.b $00
[000b541f]                           dc.b $00
[000b5420]                           dc.b $00
[000b5421]                           dc.b $00
[000b5422]                           dc.b $00
[000b5423]                           dc.b $00
[000b5424]                           dc.b $00
[000b5425]                           dc.b $00
[000b5426]                           dc.b $00
[000b5427]                           dc.b $00
A_INNERFRAME02:
[000b5428] 00059f9c                  dc.l A_innerframe
[000b542c]                           dc.w $1800
[000b542e]                           dc.w $8f19
[000b5430] 00059318                  dc.l Auo_string
[000b5434] 000b5273                  dc.l TEXT_16
[000b5438]                           dc.b $00
[000b5439]                           dc.b $00
[000b543a]                           dc.b $00
[000b543b]                           dc.b $00
[000b543c]                           dc.b $00
[000b543d]                           dc.b $00
[000b543e]                           dc.b $00
[000b543f]                           dc.b $00
[000b5440]                           dc.b $00
[000b5441]                           dc.b $00
[000b5442]                           dc.b $00
[000b5443]                           dc.b $00
[000b5444]                           dc.b $00
[000b5445]                           dc.b $00
[000b5446]                           dc.b $00
[000b5447]                           dc.b $00
A_INNERFRAME03:
[000b5448] 00059f9c                  dc.l A_innerframe
[000b544c]                           dc.w $1800
[000b544e]                           dc.w $8f19
[000b5450] 00059318                  dc.l Auo_string
[000b5454] 000b5214                  dc.l TEXT_05
[000b5458]                           dc.b $00
[000b5459]                           dc.b $00
[000b545a]                           dc.b $00
[000b545b]                           dc.b $00
[000b545c]                           dc.b $00
[000b545d]                           dc.b $00
[000b545e]                           dc.b $00
[000b545f]                           dc.b $00
[000b5460]                           dc.b $00
[000b5461]                           dc.b $00
[000b5462]                           dc.b $00
[000b5463]                           dc.b $00
[000b5464]                           dc.b $00
[000b5465]                           dc.b $00
[000b5466]                           dc.b $00
[000b5467]                           dc.b $00
A_INNERFRAME04:
[000b5468] 00059f9c                  dc.l A_innerframe
[000b546c]                           dc.w $1800
[000b546e]                           dc.w $8f19
[000b5470] 00059318                  dc.l Auo_string
[000b5474] 000b5203                  dc.l TEXT_001
[000b5478]                           dc.b $00
[000b5479]                           dc.b $00
[000b547a]                           dc.b $00
[000b547b]                           dc.b $00
[000b547c]                           dc.b $00
[000b547d]                           dc.b $00
[000b547e]                           dc.b $00
[000b547f]                           dc.b $00
[000b5480]                           dc.b $00
[000b5481]                           dc.b $00
[000b5482]                           dc.b $00
[000b5483]                           dc.b $00
[000b5484]                           dc.b $00
[000b5485]                           dc.b $00
[000b5486]                           dc.b $00
[000b5487]                           dc.b $00
A_INNERFRAME05:
[000b5488] 00059f9c                  dc.l A_innerframe
[000b548c]                           dc.w $1800
[000b548e]                           dc.w $8f19
[000b5490] 00059318                  dc.l Auo_string
[000b5494] 000b5266                  dc.l TEXT_15
[000b5498]                           dc.b $00
[000b5499]                           dc.b $00
[000b549a]                           dc.b $00
[000b549b]                           dc.b $00
[000b549c]                           dc.b $00
[000b549d]                           dc.b $00
[000b549e]                           dc.b $00
[000b549f]                           dc.b $00
[000b54a0]                           dc.b $00
[000b54a1]                           dc.b $00
[000b54a2]                           dc.b $00
[000b54a3]                           dc.b $00
[000b54a4]                           dc.b $00
[000b54a5]                           dc.b $00
[000b54a6]                           dc.b $00
[000b54a7]                           dc.b $00
A_INNERFRAME06:
[000b54a8] 00059f9c                  dc.l A_innerframe
[000b54ac]                           dc.w $1800
[000b54ae]                           dc.w $8f19
[000b54b0] 00059318                  dc.l Auo_string
[000b54b4] 000b5258                  dc.l TEXT_14
[000b54b8]                           dc.b $00
[000b54b9]                           dc.b $00
[000b54ba]                           dc.b $00
[000b54bb]                           dc.b $00
[000b54bc]                           dc.b $00
[000b54bd]                           dc.b $00
[000b54be]                           dc.b $00
[000b54bf]                           dc.b $00
[000b54c0]                           dc.b $00
[000b54c1]                           dc.b $00
[000b54c2]                           dc.b $00
[000b54c3]                           dc.b $00
[000b54c4]                           dc.b $00
[000b54c5]                           dc.b $00
[000b54c6]                           dc.b $00
[000b54c7]                           dc.b $00
POP_POSSEL:
[000b54c8]                           dc.w $ffff
[000b54ca]                           dc.b $00
[000b54cb]                           dc.b $01
[000b54cc]                           dc.b $00
[000b54cd]                           dc.b $01
[000b54ce]                           dc.b $00
[000b54cf]                           dc.b $14
[000b54d0]                           dc.b $00
[000b54d1]                           dc.b $00
[000b54d2]                           dc.b $00
[000b54d3]                           dc.b $20
[000b54d4]                           dc.b $00
[000b54d5]                           dc.b $ff
[000b54d6]                           dc.w $1100
[000b54d8]                           dc.b $00
[000b54d9]                           dc.b $00
[000b54da]                           dc.b $00
[000b54db]                           dc.b $00
[000b54dc]                           dc.b $00
[000b54dd]                           dc.b $0f
[000b54de]                           dc.b $00
[000b54df]                           dc.b $02
_01_POP_POSSEL:
[000b54e0]                           dc.b $00
[000b54e1]                           dc.b $00
[000b54e2]                           dc.b $00
[000b54e3]                           dc.b $02
[000b54e4]                           dc.b $00
[000b54e5]                           dc.b $07
[000b54e6]                           dc.b $00
[000b54e7]                           dc.b $18
[000b54e8]                           dc.b $00
[000b54e9]                           dc.b $00
[000b54ea]                           dc.b $00
[000b54eb]                           dc.b $00
[000b54ec] 000b5408                  dc.l A_INNERFRAME01
[000b54f0]                           dc.b $00
[000b54f1]                           dc.b $00
[000b54f2]                           dc.b $00
[000b54f3]                           dc.b $00
[000b54f4]                           dc.b $00
[000b54f5]                           dc.b $0f
[000b54f6]                           dc.b $00
[000b54f7]                           dc.b $02
_02_POP_POSSEL:
[000b54f8]                           dc.b $00
[000b54f9]                           dc.b $03
[000b54fa]                           dc.w $ffff
[000b54fc]                           dc.w $ffff
[000b54fe]                           dc.b $00
[000b54ff]                           dc.b $1c
[000b5500]                           dc.b $00
[000b5501]                           dc.b $01
[000b5502]                           dc.b $00
[000b5503]                           dc.b $00
[000b5504] 000b529f                  dc.l TEXT_23
[000b5508]                           dc.b $00
[000b5509]                           dc.b $00
[000b550a]                           dc.b $00
[000b550b]                           dc.b $00
[000b550c]                           dc.b $00
[000b550d]                           dc.b $05
[000b550e]                           dc.b $00
[000b550f]                           dc.b $01
_03_POP_POSSEL:
[000b5510]                           dc.b $00
[000b5511]                           dc.b $04
[000b5512]                           dc.w $ffff
[000b5514]                           dc.w $ffff
[000b5516]                           dc.b $00
[000b5517]                           dc.b $1c
[000b5518]                           dc.b $00
[000b5519]                           dc.b $01
[000b551a]                           dc.b $00
[000b551b]                           dc.b $00
[000b551c] 000b529f                  dc.l TEXT_23
[000b5520]                           dc.b $00
[000b5521]                           dc.b $05
[000b5522]                           dc.b $00
[000b5523]                           dc.b $00
[000b5524]                           dc.b $00
[000b5525]                           dc.b $05
[000b5526]                           dc.b $00
[000b5527]                           dc.b $01
_04_POP_POSSEL:
[000b5528]                           dc.b $00
[000b5529]                           dc.b $05
[000b552a]                           dc.w $ffff
[000b552c]                           dc.w $ffff
[000b552e]                           dc.b $00
[000b552f]                           dc.b $1c
[000b5530]                           dc.b $00
[000b5531]                           dc.b $01
[000b5532]                           dc.b $00
[000b5533]                           dc.b $00
[000b5534] 000b529f                  dc.l TEXT_23
[000b5538]                           dc.b $00
[000b5539]                           dc.b $0a
[000b553a]                           dc.b $00
[000b553b]                           dc.b $00
[000b553c]                           dc.b $00
[000b553d]                           dc.b $05
[000b553e]                           dc.b $00
[000b553f]                           dc.b $01
_05_POP_POSSEL:
[000b5540]                           dc.b $00
[000b5541]                           dc.b $06
[000b5542]                           dc.w $ffff
[000b5544]                           dc.w $ffff
[000b5546]                           dc.b $00
[000b5547]                           dc.b $1c
[000b5548]                           dc.b $00
[000b5549]                           dc.b $01
[000b554a]                           dc.b $00
[000b554b]                           dc.b $00
[000b554c] 000b529f                  dc.l TEXT_23
[000b5550]                           dc.b $00
[000b5551]                           dc.b $00
[000b5552]                           dc.b $00
[000b5553]                           dc.b $01
[000b5554]                           dc.b $00
[000b5555]                           dc.b $05
[000b5556]                           dc.b $00
[000b5557]                           dc.b $01
_06_POP_POSSEL:
[000b5558]                           dc.b $00
[000b5559]                           dc.b $07
[000b555a]                           dc.w $ffff
[000b555c]                           dc.w $ffff
[000b555e]                           dc.b $00
[000b555f]                           dc.b $1c
[000b5560]                           dc.b $00
[000b5561]                           dc.b $01
[000b5562]                           dc.b $00
[000b5563]                           dc.b $00
[000b5564] 000b529f                  dc.l TEXT_23
[000b5568]                           dc.b $00
[000b5569]                           dc.b $05
[000b556a]                           dc.b $00
[000b556b]                           dc.b $01
[000b556c]                           dc.b $00
[000b556d]                           dc.b $05
[000b556e]                           dc.b $00
[000b556f]                           dc.b $01
_07_POP_POSSEL:
[000b5570]                           dc.b $00
[000b5571]                           dc.b $01
[000b5572]                           dc.w $ffff
[000b5574]                           dc.w $ffff
[000b5576]                           dc.b $00
[000b5577]                           dc.b $1c
[000b5578]                           dc.b $00
[000b5579]                           dc.b $21
[000b557a]                           dc.b $00
[000b557b]                           dc.b $00
[000b557c] 000b529f                  dc.l TEXT_23
[000b5580]                           dc.b $00
[000b5581]                           dc.b $0a
[000b5582]                           dc.b $00
[000b5583]                           dc.b $01
[000b5584]                           dc.b $00
[000b5585]                           dc.b $05
[000b5586]                           dc.b $00
[000b5587]                           dc.b $01
ED_INNER:
[000b5588]                           dc.w $ffff
[000b558a]                           dc.b $00
[000b558b]                           dc.b $01
[000b558c]                           dc.b $00
[000b558d]                           dc.b $35
[000b558e]                           dc.b $00
[000b558f]                           dc.b $18
[000b5590]                           dc.b $00
[000b5591]                           dc.b $40
[000b5592]                           dc.b $00
[000b5593]                           dc.b $10
[000b5594] 000b5328                  dc.l A_3DBUTTON06
[000b5598]                           dc.b $00
[000b5599]                           dc.b $00
[000b559a]                           dc.b $00
[000b559b]                           dc.b $00
[000b559c]                           dc.b $00
[000b559d]                           dc.b $3a
[000b559e]                           dc.b $00
[000b559f]                           dc.b $14
_01_ED_INNER:
[000b55a0]                           dc.b $00
[000b55a1]                           dc.b $03
[000b55a2]                           dc.b $00
[000b55a3]                           dc.b $02
[000b55a4]                           dc.b $00
[000b55a5]                           dc.b $02
[000b55a6]                           dc.b $00
[000b55a7]                           dc.b $18
[000b55a8]                           dc.b $00
[000b55a9]                           dc.b $40
[000b55aa]                           dc.b $00
[000b55ab]                           dc.b $00
[000b55ac] 000b5308                  dc.l A_3DBUTTON05
[000b55b0]                           dc.b $00
[000b55b1]                           dc.b $00
[000b55b2]                           dc.b $00
[000b55b3]                           dc.b $00
[000b55b4]                           dc.b $00
[000b55b5]                           dc.b $16
[000b55b6]                           dc.b $00
[000b55b7]                           dc.b $04
_02_ED_INNER:
[000b55b8]                           dc.b $00
[000b55b9]                           dc.b $01
[000b55ba]                           dc.w $ffff
[000b55bc]                           dc.w $ffff
[000b55be]                           dc.b $00
[000b55bf]                           dc.b $18
[000b55c0]                           dc.b $00
[000b55c1]                           dc.b $00
[000b55c2]                           dc.b $00
[000b55c3]                           dc.b $00
[000b55c4] 000b5468                  dc.l A_INNERFRAME04
[000b55c8]                           dc.b $00
[000b55c9]                           dc.b $02
[000b55ca]                           dc.b $00
[000b55cb]                           dc.b $01
[000b55cc]                           dc.b $00
[000b55cd]                           dc.b $12
[000b55ce]                           dc.b $00
[000b55cf]                           dc.b $02
_03_ED_INNER:
[000b55d0]                           dc.b $00
[000b55d1]                           dc.b $05
[000b55d2]                           dc.w $ffff
[000b55d4]                           dc.w $ffff
[000b55d6]                           dc.b $00
[000b55d7]                           dc.b $18
[000b55d8]                           dc.w $4007
[000b55da]                           dc.b $00
[000b55db]                           dc.b $10
[000b55dc] 000b52c8                  dc.l A_3DBUTTON01
[000b55e0]                           dc.b $00
[000b55e1]                           dc.b $1f
[000b55e2]                           dc.b $00
[000b55e3]                           dc.b $01
[000b55e4]                           dc.b $00
[000b55e5]                           dc.b $0c
[000b55e6]                           dc.b $00
[000b55e7]                           dc.b $02
_03aED_INNER:
[000b55e8] 00028026                  dc.l ok
[000b55ec]                           dc.b $00
[000b55ed]                           dc.b $00
[000b55ee]                           dc.b $00
[000b55ef]                           dc.b $00
[000b55f0]                           dc.w $8000
[000b55f2]                           dc.w $884f
[000b55f4]                           dc.b $00
[000b55f5]                           dc.b $00
[000b55f6]                           dc.b $00
[000b55f7]                           dc.b $00
[000b55f8]                           dc.b $00
[000b55f9]                           dc.b $00
[000b55fa]                           dc.b $00
[000b55fb]                           dc.b $00
[000b55fc]                           dc.b $00
[000b55fd]                           dc.b $00
[000b55fe]                           dc.b $00
[000b55ff]                           dc.b $00
_05_ED_INNER:
[000b5600]                           dc.b $00
[000b5601]                           dc.b $07
[000b5602]                           dc.w $ffff
[000b5604]                           dc.w $ffff
[000b5606]                           dc.b $00
[000b5607]                           dc.b $18
[000b5608]                           dc.w $4005
[000b560a]                           dc.b $00
[000b560b]                           dc.b $10
[000b560c] 000b52e8                  dc.l A_3DBUTTON02
[000b5610]                           dc.b $00
[000b5611]                           dc.b $2d
[000b5612]                           dc.b $00
[000b5613]                           dc.b $01
[000b5614]                           dc.b $00
[000b5615]                           dc.b $0c
[000b5616]                           dc.b $00
[000b5617]                           dc.b $02
_05aED_INNER:
[000b5618] 00028000                  dc.l abort
[000b561c]                           dc.b $00
[000b561d]                           dc.b $00
[000b561e]                           dc.b $00
[000b561f]                           dc.b $00
[000b5620]                           dc.w $8000
[000b5622]                           dc.w $8841
[000b5624]                           dc.b $00
[000b5625]                           dc.b $00
[000b5626]                           dc.b $00
[000b5627]                           dc.b $00
[000b5628]                           dc.b $00
[000b5629]                           dc.b $00
[000b562a]                           dc.b $00
[000b562b]                           dc.b $00
[000b562c]                           dc.b $00
[000b562d]                           dc.b $00
[000b562e]                           dc.b $00
[000b562f]                           dc.b $00
_07_ED_INNER:
[000b5630]                           dc.b $00
[000b5631]                           dc.b $19
[000b5632]                           dc.b $00
[000b5633]                           dc.b $08
[000b5634]                           dc.b $00
[000b5635]                           dc.b $16
[000b5636]                           dc.b $00
[000b5637]                           dc.b $18
[000b5638]                           dc.b $00
[000b5639]                           dc.b $40
[000b563a]                           dc.b $00
[000b563b]                           dc.b $00
[000b563c] 000b5428                  dc.l A_INNERFRAME02
[000b5640]                           dc.b $00
[000b5641]                           dc.b $01
[000b5642]                           dc.b $00
[000b5643]                           dc.b $04
[000b5644]                           dc.b $00
[000b5645]                           dc.b $38
[000b5646]                           dc.b $00
[000b5647]                           dc.b $05
_08_ED_INNER:
[000b5648]                           dc.b $00
[000b5649]                           dc.b $0a
[000b564a]                           dc.b $00
[000b564b]                           dc.b $09
[000b564c]                           dc.b $00
[000b564d]                           dc.b $09
[000b564e]                           dc.b $00
[000b564f]                           dc.b $1c
[000b5650]                           dc.b $00
[000b5651]                           dc.b $40
[000b5652]                           dc.b $00
[000b5653]                           dc.b $00
[000b5654] 000b5242                  dc.l TEXT_10
[000b5658]                           dc.b $00
[000b5659]                           dc.b $01
[000b565a]                           dc.b $00
[000b565b]                           dc.b $01
[000b565c]                           dc.b $00
[000b565d]                           dc.b $06
[000b565e]                           dc.b $00
[000b565f]                           dc.b $01
_09_ED_INNER:
[000b5660]                           dc.b $00
[000b5661]                           dc.b $08
[000b5662]                           dc.w $ffff
[000b5664]                           dc.w $ffff
[000b5666]                           dc.b $00
[000b5667]                           dc.b $18
[000b5668]                           dc.b $00
[000b5669]                           dc.b $40
[000b566a]                           dc.b $00
[000b566b]                           dc.b $00
[000b566c] 000b5368                  dc.l A_ARROWS02
[000b5670]                           dc.b $00
[000b5671]                           dc.b $00
[000b5672]                           dc.b $00
[000b5673]                           dc.b $00
[000b5674]                           dc.b $00
[000b5675]                           dc.b $01
[000b5676]                           dc.b $00
[000b5677]                           dc.b $01
_10_ED_INNER:
[000b5678]                           dc.b $00
[000b5679]                           dc.b $0e
[000b567a]                           dc.b $00
[000b567b]                           dc.b $0c
[000b567c]                           dc.b $00
[000b567d]                           dc.b $0d
[000b567e]                           dc.b $00
[000b567f]                           dc.b $14
[000b5680]                           dc.b $00
[000b5681]                           dc.b $40
[000b5682]                           dc.b $00
[000b5683]                           dc.b $20
[000b5684]                           dc.b $00
[000b5685]                           dc.b $ff
[000b5686]                           dc.w $1101
[000b5688]                           dc.b $00
[000b5689]                           dc.b $08
[000b568a]                           dc.b $00
[000b568b]                           dc.b $01
[000b568c]                           dc.b $00
[000b568d]                           dc.b $12
[000b568e]                           dc.b $00
[000b568f]                           dc.b $01
_10aED_INNER:
[000b5690] 00027bc2                  dc.l edin_textcol
[000b5694]                           dc.b $00
[000b5695]                           dc.b $00
[000b5696]                           dc.b $00
[000b5697]                           dc.b $00
[000b5698]                           dc.w $8000
[000b569a]                           dc.w $8846
[000b569c]                           dc.b $00
[000b569d]                           dc.b $00
[000b569e]                           dc.b $00
[000b569f]                           dc.b $00
[000b56a0]                           dc.b $00
[000b56a1]                           dc.b $00
[000b56a2]                           dc.b $00
[000b56a3]                           dc.b $00
[000b56a4]                           dc.b $00
[000b56a5]                           dc.b $00
[000b56a6]                           dc.b $00
[000b56a7]                           dc.b $00
_12_ED_INNER:
[000b56a8]                           dc.b $00
[000b56a9]                           dc.b $0d
[000b56aa]                           dc.w $ffff
[000b56ac]                           dc.w $ffff
[000b56ae]                           dc.b $00
[000b56af]                           dc.b $14
[000b56b0]                           dc.b $00
[000b56b1]                           dc.b $00
[000b56b2]                           dc.b $00
[000b56b3]                           dc.b $00
[000b56b4]                           dc.b $00
[000b56b5]                           dc.b $01
[000b56b6]                           dc.w $1171
[000b56b8]                           dc.b $00
[000b56b9]                           dc.b $10
[000b56ba]                           dc.b $00
[000b56bb]                           dc.b $00
[000b56bc]                           dc.b $00
[000b56bd]                           dc.b $02
[000b56be]                           dc.b $00
[000b56bf]                           dc.b $01
_13_ED_INNER:
[000b56c0]                           dc.b $00
[000b56c1]                           dc.b $0a
[000b56c2]                           dc.w $ffff
[000b56c4]                           dc.w $ffff
[000b56c6]                           dc.b $00
[000b56c7]                           dc.b $18
[000b56c8]                           dc.b $00
[000b56c9]                           dc.b $00
[000b56ca]                           dc.b $00
[000b56cb]                           dc.b $00
[000b56cc] 000b5348                  dc.l A_3DBUTTON27
[000b56d0]                           dc.b $00
[000b56d1]                           dc.b $00
[000b56d2]                           dc.b $00
[000b56d3]                           dc.b $00
[000b56d4]                           dc.b $00
[000b56d5]                           dc.b $10
[000b56d6]                           dc.b $00
[000b56d7]                           dc.b $01
_14_ED_INNER:
[000b56d8]                           dc.b $00
[000b56d9]                           dc.b $0f
[000b56da]                           dc.w $ffff
[000b56dc]                           dc.w $ffff
[000b56de]                           dc.b $00
[000b56df]                           dc.b $18
[000b56e0]                           dc.b $00
[000b56e1]                           dc.b $08
[000b56e2]                           dc.b $00
[000b56e3]                           dc.b $10
[000b56e4] 000b5388                  dc.l A_BOXED02
[000b56e8]                           dc.b $00
[000b56e9]                           dc.b $01
[000b56ea]                           dc.b $00
[000b56eb]                           dc.b $03
[000b56ec]                           dc.b $00
[000b56ed]                           dc.b $36
[000b56ee]                           dc.b $00
[000b56ef]                           dc.b $01
_15_ED_INNER:
[000b56f0]                           dc.b $00
[000b56f1]                           dc.b $11
[000b56f2]                           dc.b $00
[000b56f3]                           dc.b $10
[000b56f4]                           dc.b $00
[000b56f5]                           dc.b $10
[000b56f6]                           dc.b $00
[000b56f7]                           dc.b $1c
[000b56f8]                           dc.b $00
[000b56f9]                           dc.b $40
[000b56fa]                           dc.b $00
[000b56fb]                           dc.b $00
[000b56fc] 000b5279                  dc.l TEXT_18
[000b5700]                           dc.b $00
[000b5701]                           dc.b $2d
[000b5702]                           dc.b $00
[000b5703]                           dc.b $01
[000b5704]                           dc.b $00
[000b5705]                           dc.b $04
[000b5706]                           dc.b $00
[000b5707]                           dc.b $01
_16_ED_INNER:
[000b5708]                           dc.b $00
[000b5709]                           dc.b $0f
[000b570a]                           dc.w $ffff
[000b570c]                           dc.w $ffff
[000b570e]                           dc.b $00
[000b570f]                           dc.b $18
[000b5710]                           dc.b $00
[000b5711]                           dc.b $40
[000b5712]                           dc.b $00
[000b5713]                           dc.b $00
[000b5714] 000b5368                  dc.l A_ARROWS02
[000b5718]                           dc.b $00
[000b5719]                           dc.b $00
[000b571a]                           dc.b $00
[000b571b]                           dc.b $00
[000b571c]                           dc.b $00
[000b571d]                           dc.b $01
[000b571e]                           dc.b $00
[000b571f]                           dc.b $01
_17_ED_INNER:
[000b5720]                           dc.b $00
[000b5721]                           dc.b $14
[000b5722]                           dc.b $00
[000b5723]                           dc.b $13
[000b5724]                           dc.b $00
[000b5725]                           dc.b $13
[000b5726]                           dc.b $00
[000b5727]                           dc.b $14
[000b5728]                           dc.b $00
[000b5729]                           dc.b $40
[000b572a]                           dc.b $00
[000b572b]                           dc.b $20
[000b572c]                           dc.b $00
[000b572d]                           dc.b $ff
[000b572e]                           dc.w $1101
[000b5730]                           dc.b $00
[000b5731]                           dc.b $32
[000b5732]                           dc.b $00
[000b5733]                           dc.b $01
[000b5734]                           dc.b $00
[000b5735]                           dc.b $05
[000b5736]                           dc.b $00
[000b5737]                           dc.b $01
_17aED_INNER:
[000b5738] 0002794c                  dc.l edin_pos
[000b573c]                           dc.b $00
[000b573d]                           dc.b $00
[000b573e]                           dc.b $00
[000b573f]                           dc.b $00
[000b5740]                           dc.w $8000
[000b5742]                           dc.w $8850
[000b5744]                           dc.b $00
[000b5745]                           dc.b $00
[000b5746]                           dc.b $00
[000b5747]                           dc.b $00
[000b5748]                           dc.b $00
[000b5749]                           dc.b $00
[000b574a]                           dc.b $00
[000b574b]                           dc.b $00
[000b574c]                           dc.b $00
[000b574d]                           dc.b $00
[000b574e]                           dc.b $00
[000b574f]                           dc.b $00
_19_ED_INNER:
[000b5750]                           dc.b $00
[000b5751]                           dc.b $11
[000b5752]                           dc.w $ffff
[000b5754]                           dc.w $ffff
[000b5756]                           dc.b $00
[000b5757]                           dc.b $18
[000b5758]                           dc.b $00
[000b5759]                           dc.b $00
[000b575a]                           dc.b $00
[000b575b]                           dc.b $00
[000b575c] 000b5348                  dc.l A_3DBUTTON27
[000b5760]                           dc.b $00
[000b5761]                           dc.b $00
[000b5762]                           dc.b $00
[000b5763]                           dc.b $00
[000b5764]                           dc.b $00
[000b5765]                           dc.b $05
[000b5766]                           dc.b $00
[000b5767]                           dc.b $01
_20_ED_INNER:
[000b5768]                           dc.b $00
[000b5769]                           dc.b $16
[000b576a]                           dc.b $00
[000b576b]                           dc.b $15
[000b576c]                           dc.b $00
[000b576d]                           dc.b $15
[000b576e]                           dc.b $00
[000b576f]                           dc.b $1c
[000b5770]                           dc.b $00
[000b5771]                           dc.b $40
[000b5772]                           dc.b $00
[000b5773]                           dc.b $00
[000b5774] 000b5249                  dc.l TEXT_12
[000b5778]                           dc.b $00
[000b5779]                           dc.b $1c
[000b577a]                           dc.b $00
[000b577b]                           dc.b $01
[000b577c]                           dc.b $00
[000b577d]                           dc.b $06
[000b577e]                           dc.b $00
[000b577f]                           dc.b $01
_21_ED_INNER:
[000b5780]                           dc.b $00
[000b5781]                           dc.b $14
[000b5782]                           dc.w $ffff
[000b5784]                           dc.w $ffff
[000b5786]                           dc.b $00
[000b5787]                           dc.b $18
[000b5788]                           dc.b $00
[000b5789]                           dc.b $40
[000b578a]                           dc.b $00
[000b578b]                           dc.b $00
[000b578c] 000b5368                  dc.l A_ARROWS02
[000b5790]                           dc.b $00
[000b5791]                           dc.b $00
[000b5792]                           dc.b $00
[000b5793]                           dc.b $00
[000b5794]                           dc.b $00
[000b5795]                           dc.b $01
[000b5796]                           dc.b $00
[000b5797]                           dc.b $01
_22_ED_INNER:
[000b5798]                           dc.b $00
[000b5799]                           dc.b $07
[000b579a]                           dc.b $00
[000b579b]                           dc.b $18
[000b579c]                           dc.b $00
[000b579d]                           dc.b $18
[000b579e]                           dc.b $00
[000b579f]                           dc.b $14
[000b57a0]                           dc.b $00
[000b57a1]                           dc.b $40
[000b57a2]                           dc.b $00
[000b57a3]                           dc.b $20
[000b57a4]                           dc.b $00
[000b57a5]                           dc.b $ff
[000b57a6]                           dc.w $1101
[000b57a8]                           dc.b $00
[000b57a9]                           dc.b $23
[000b57aa]                           dc.b $00
[000b57ab]                           dc.b $01
[000b57ac]                           dc.b $00
[000b57ad]                           dc.b $08
[000b57ae]                           dc.b $00
[000b57af]                           dc.b $01
_22aED_INNER:
[000b57b0] 00027ab6                  dc.l edin_size
[000b57b4]                           dc.b $00
[000b57b5]                           dc.b $00
[000b57b6]                           dc.b $00
[000b57b7]                           dc.b $00
[000b57b8]                           dc.w $8000
[000b57ba]                           dc.w $8847
[000b57bc]                           dc.b $00
[000b57bd]                           dc.b $00
[000b57be]                           dc.b $00
[000b57bf]                           dc.b $00
[000b57c0]                           dc.b $00
[000b57c1]                           dc.b $00
[000b57c2]                           dc.b $00
[000b57c3]                           dc.b $00
[000b57c4]                           dc.b $00
[000b57c5]                           dc.b $00
[000b57c6]                           dc.b $00
[000b57c7]                           dc.b $00
_24_ED_INNER:
[000b57c8]                           dc.b $00
[000b57c9]                           dc.b $16
[000b57ca]                           dc.w $ffff
[000b57cc]                           dc.w $ffff
[000b57ce]                           dc.b $00
[000b57cf]                           dc.b $18
[000b57d0]                           dc.b $00
[000b57d1]                           dc.b $00
[000b57d2]                           dc.b $00
[000b57d3]                           dc.b $00
[000b57d4] 000b5308                  dc.l A_3DBUTTON05
[000b57d8]                           dc.b $00
[000b57d9]                           dc.b $00
[000b57da]                           dc.b $00
[000b57db]                           dc.b $00
[000b57dc]                           dc.b $00
[000b57dd]                           dc.b $08
[000b57de]                           dc.b $00
[000b57df]                           dc.b $01
_25_ED_INNER:
[000b57e0]                           dc.b $00
[000b57e1]                           dc.b $28
[000b57e2]                           dc.b $00
[000b57e3]                           dc.b $1a
[000b57e4]                           dc.b $00
[000b57e5]                           dc.b $24
[000b57e6]                           dc.b $00
[000b57e7]                           dc.b $18
[000b57e8]                           dc.b $00
[000b57e9]                           dc.b $40
[000b57ea]                           dc.b $00
[000b57eb]                           dc.b $00
[000b57ec] 000b54a8                  dc.l A_INNERFRAME06
[000b57f0]                           dc.b $00
[000b57f1]                           dc.b $01
[000b57f2]                           dc.b $00
[000b57f3]                           dc.b $09
[000b57f4]                           dc.b $00
[000b57f5]                           dc.b $1c
[000b57f6]                           dc.b $00
[000b57f7]                           dc.b $06
_26_ED_INNER:
[000b57f8]                           dc.b $00
[000b57f9]                           dc.b $1c
[000b57fa]                           dc.b $00
[000b57fb]                           dc.b $1b
[000b57fc]                           dc.b $00
[000b57fd]                           dc.b $1b
[000b57fe]                           dc.b $00
[000b57ff]                           dc.b $1c
[000b5800]                           dc.b $00
[000b5801]                           dc.b $40
[000b5802]                           dc.b $00
[000b5803]                           dc.b $00
[000b5804] 000b5290                  dc.l TEXT_21
[000b5808]                           dc.b $00
[000b5809]                           dc.b $02
[000b580a]                           dc.b $00
[000b580b]                           dc.b $01
[000b580c]                           dc.b $00
[000b580d]                           dc.b $06
[000b580e]                           dc.b $00
[000b580f]                           dc.b $01
_27_ED_INNER:
[000b5810]                           dc.b $00
[000b5811]                           dc.b $1a
[000b5812]                           dc.w $ffff
[000b5814]                           dc.w $ffff
[000b5816]                           dc.b $00
[000b5817]                           dc.b $18
[000b5818]                           dc.b $00
[000b5819]                           dc.b $40
[000b581a]                           dc.b $00
[000b581b]                           dc.b $00
[000b581c] 000b5368                  dc.l A_ARROWS02
[000b5820]                           dc.b $00
[000b5821]                           dc.b $00
[000b5822]                           dc.b $00
[000b5823]                           dc.b $00
[000b5824]                           dc.b $00
[000b5825]                           dc.b $01
[000b5826]                           dc.b $00
[000b5827]                           dc.b $01
_28_ED_INNER:
[000b5828]                           dc.b $00
[000b5829]                           dc.b $20
[000b582a]                           dc.b $00
[000b582b]                           dc.b $1e
[000b582c]                           dc.b $00
[000b582d]                           dc.b $1f
[000b582e]                           dc.b $00
[000b582f]                           dc.b $14
[000b5830]                           dc.b $00
[000b5831]                           dc.b $40
[000b5832]                           dc.b $00
[000b5833]                           dc.b $20
[000b5834]                           dc.b $00
[000b5835]                           dc.b $ff
[000b5836]                           dc.w $1101
[000b5838]                           dc.b $00
[000b5839]                           dc.b $09
[000b583a]                           dc.b $00
[000b583b]                           dc.b $02
[000b583c]                           dc.b $00
[000b583d]                           dc.b $12
[000b583e]                           dc.b $00
[000b583f]                           dc.b $01
_28aED_INNER:
[000b5840] 000277f2                  dc.l edin_outcol
[000b5844]                           dc.b $00
[000b5845]                           dc.b $00
[000b5846]                           dc.b $00
[000b5847]                           dc.b $00
[000b5848]                           dc.w $8000
[000b584a]                           dc.w $884c
[000b584c]                           dc.b $00
[000b584d]                           dc.b $00
[000b584e]                           dc.b $00
[000b584f]                           dc.b $00
[000b5850]                           dc.b $00
[000b5851]                           dc.b $00
[000b5852]                           dc.b $00
[000b5853]                           dc.b $00
[000b5854]                           dc.b $00
[000b5855]                           dc.b $00
[000b5856]                           dc.b $00
[000b5857]                           dc.b $00
_30_ED_INNER:
[000b5858]                           dc.b $00
[000b5859]                           dc.b $1f
[000b585a]                           dc.w $ffff
[000b585c]                           dc.w $ffff
[000b585e]                           dc.b $00
[000b585f]                           dc.b $14
[000b5860]                           dc.b $00
[000b5861]                           dc.b $00
[000b5862]                           dc.b $00
[000b5863]                           dc.b $00
[000b5864]                           dc.w $4301
[000b5866]                           dc.w $1371
[000b5868]                           dc.b $00
[000b5869]                           dc.b $10
[000b586a]                           dc.b $00
[000b586b]                           dc.b $00
[000b586c]                           dc.b $00
[000b586d]                           dc.b $02
[000b586e]                           dc.b $00
[000b586f]                           dc.b $01
_31_ED_INNER:
[000b5870]                           dc.b $00
[000b5871]                           dc.b $1c
[000b5872]                           dc.w $ffff
[000b5874]                           dc.w $ffff
[000b5876]                           dc.b $00
[000b5877]                           dc.b $18
[000b5878]                           dc.b $00
[000b5879]                           dc.b $00
[000b587a]                           dc.b $00
[000b587b]                           dc.b $00
[000b587c] 000b5348                  dc.l A_3DBUTTON27
[000b5880]                           dc.b $00
[000b5881]                           dc.b $00
[000b5882]                           dc.b $00
[000b5883]                           dc.b $00
[000b5884]                           dc.b $00
[000b5885]                           dc.b $10
[000b5886]                           dc.b $00
[000b5887]                           dc.b $01
_32_ED_INNER:
[000b5888]                           dc.b $00
[000b5889]                           dc.b $21
[000b588a]                           dc.w $ffff
[000b588c]                           dc.w $ffff
[000b588e]                           dc.b $00
[000b588f]                           dc.b $1c
[000b5890]                           dc.b $00
[000b5891]                           dc.b $40
[000b5892]                           dc.b $00
[000b5893]                           dc.b $00
[000b5894] 000b527e                  dc.l TEXT_19
[000b5898]                           dc.b $00
[000b5899]                           dc.b $03
[000b589a]                           dc.b $00
[000b589b]                           dc.b $02
[000b589c]                           dc.b $00
[000b589d]                           dc.b $05
[000b589e]                           dc.b $00
[000b589f]                           dc.b $01
_33_ED_INNER:
[000b58a0]                           dc.b $00
[000b58a1]                           dc.b $23
[000b58a2]                           dc.b $00
[000b58a3]                           dc.b $22
[000b58a4]                           dc.b $00
[000b58a5]                           dc.b $22
[000b58a6]                           dc.b $00
[000b58a7]                           dc.b $1c
[000b58a8]                           dc.b $00
[000b58a9]                           dc.b $40
[000b58aa]                           dc.b $00
[000b58ab]                           dc.b $00
[000b58ac] 000b5297                  dc.l TEXT_22
[000b58b0]                           dc.b $00
[000b58b1]                           dc.b $01
[000b58b2]                           dc.b $00
[000b58b3]                           dc.b $03
[000b58b4]                           dc.b $00
[000b58b5]                           dc.b $07
[000b58b6]                           dc.b $00
[000b58b7]                           dc.b $01
_34_ED_INNER:
[000b58b8]                           dc.b $00
[000b58b9]                           dc.b $21
[000b58ba]                           dc.w $ffff
[000b58bc]                           dc.w $ffff
[000b58be]                           dc.b $00
[000b58bf]                           dc.b $18
[000b58c0]                           dc.b $00
[000b58c1]                           dc.b $40
[000b58c2]                           dc.b $00
[000b58c3]                           dc.b $00
[000b58c4] 000b5368                  dc.l A_ARROWS02
[000b58c8]                           dc.b $00
[000b58c9]                           dc.b $00
[000b58ca]                           dc.b $00
[000b58cb]                           dc.b $00
[000b58cc]                           dc.b $00
[000b58cd]                           dc.b $01
[000b58ce]                           dc.b $00
[000b58cf]                           dc.b $01
_35_ED_INNER:
[000b58d0]                           dc.b $00
[000b58d1]                           dc.b $24
[000b58d2]                           dc.w $ffff
[000b58d4]                           dc.w $ffff
[000b58d6]                           dc.b $00
[000b58d7]                           dc.b $1c
[000b58d8]                           dc.b $00
[000b58d9]                           dc.b $40
[000b58da]                           dc.b $00
[000b58db]                           dc.b $00
[000b58dc] 000b523b                  dc.l TEXT_09
[000b58e0]                           dc.b $00
[000b58e1]                           dc.b $02
[000b58e2]                           dc.b $00
[000b58e3]                           dc.b $04
[000b58e4]                           dc.b $00
[000b58e5]                           dc.b $06
[000b58e6]                           dc.b $00
[000b58e7]                           dc.b $01
_36_ED_INNER:
[000b58e8]                           dc.b $00
[000b58e9]                           dc.b $19
[000b58ea]                           dc.b $00
[000b58eb]                           dc.b $26
[000b58ec]                           dc.b $00
[000b58ed]                           dc.b $27
[000b58ee]                           dc.b $00
[000b58ef]                           dc.b $14
[000b58f0]                           dc.b $00
[000b58f1]                           dc.b $40
[000b58f2]                           dc.b $00
[000b58f3]                           dc.b $20
[000b58f4]                           dc.b $00
[000b58f5]                           dc.b $ff
[000b58f6]                           dc.w $1101
[000b58f8]                           dc.b $00
[000b58f9]                           dc.b $09
[000b58fa]                           dc.b $00
[000b58fb]                           dc.b $04
[000b58fc]                           dc.b $00
[000b58fd]                           dc.b $12
[000b58fe]                           dc.b $00
[000b58ff]                           dc.b $01
_36aED_INNER:
[000b5900] 00027722                  dc.l edin_incol
[000b5904]                           dc.b $00
[000b5905]                           dc.b $00
[000b5906]                           dc.b $00
[000b5907]                           dc.b $00
[000b5908]                           dc.w $8000
[000b590a]                           dc.w $8852
[000b590c]                           dc.b $00
[000b590d]                           dc.b $00
[000b590e]                           dc.b $00
[000b590f]                           dc.b $00
[000b5910]                           dc.b $00
[000b5911]                           dc.b $00
[000b5912]                           dc.b $00
[000b5913]                           dc.b $00
[000b5914]                           dc.b $00
[000b5915]                           dc.b $00
[000b5916]                           dc.b $00
[000b5917]                           dc.b $00
_38_ED_INNER:
[000b5918]                           dc.b $00
[000b5919]                           dc.b $27
[000b591a]                           dc.w $ffff
[000b591c]                           dc.w $ffff
[000b591e]                           dc.b $00
[000b591f]                           dc.b $14
[000b5920]                           dc.b $00
[000b5921]                           dc.b $00
[000b5922]                           dc.b $00
[000b5923]                           dc.b $00
[000b5924]                           dc.w $4301
[000b5926]                           dc.w $1371
[000b5928]                           dc.b $00
[000b5929]                           dc.b $10
[000b592a]                           dc.b $00
[000b592b]                           dc.b $00
[000b592c]                           dc.b $00
[000b592d]                           dc.b $02
[000b592e]                           dc.b $00
[000b592f]                           dc.b $01
_39_ED_INNER:
[000b5930]                           dc.b $00
[000b5931]                           dc.b $24
[000b5932]                           dc.w $ffff
[000b5934]                           dc.w $ffff
[000b5936]                           dc.b $00
[000b5937]                           dc.b $18
[000b5938]                           dc.b $00
[000b5939]                           dc.b $00
[000b593a]                           dc.b $00
[000b593b]                           dc.b $00
[000b593c] 000b5348                  dc.l A_3DBUTTON27
[000b5940]                           dc.b $00
[000b5941]                           dc.b $00
[000b5942]                           dc.b $00
[000b5943]                           dc.b $00
[000b5944]                           dc.b $00
[000b5945]                           dc.b $10
[000b5946]                           dc.b $00
[000b5947]                           dc.b $01
_40_ED_INNER:
[000b5948]                           dc.b $00
[000b5949]                           dc.b $35
[000b594a]                           dc.b $00
[000b594b]                           dc.b $29
[000b594c]                           dc.b $00
[000b594d]                           dc.b $31
[000b594e]                           dc.b $00
[000b594f]                           dc.b $18
[000b5950]                           dc.b $00
[000b5951]                           dc.b $40
[000b5952]                           dc.b $00
[000b5953]                           dc.b $00
[000b5954] 000b5488                  dc.l A_INNERFRAME05
[000b5958]                           dc.b $00
[000b5959]                           dc.b $1d
[000b595a]                           dc.b $00
[000b595b]                           dc.b $09
[000b595c]                           dc.b $00
[000b595d]                           dc.b $1c
[000b595e]                           dc.b $00
[000b595f]                           dc.b $06
_41_ED_INNER:
[000b5960]                           dc.b $00
[000b5961]                           dc.b $2b
[000b5962]                           dc.w $ffff
[000b5964]                           dc.w $ffff
[000b5966]                           dc.b $00
[000b5967]                           dc.b $18
[000b5968]                           dc.b $00
[000b5969]                           dc.b $41
[000b596a]                           dc.b $00
[000b596b]                           dc.b $01
[000b596c] 000b53e8                  dc.l A_CHECKBOX01
[000b5970]                           dc.b $00
[000b5971]                           dc.b $01
[000b5972]                           dc.b $00
[000b5973]                           dc.b $01
[000b5974]                           dc.b $00
[000b5975]                           dc.b $0e
[000b5976]                           dc.b $00
[000b5977]                           dc.b $01
_41aED_INNER:
[000b5978] 000276b0                  dc.l edin_dither
[000b597c]                           dc.b $00
[000b597d]                           dc.b $00
[000b597e]                           dc.b $00
[000b597f]                           dc.b $00
[000b5980]                           dc.w $8000
[000b5982]                           dc.w $8844
[000b5984]                           dc.b $00
[000b5985]                           dc.b $00
[000b5986]                           dc.b $00
[000b5987]                           dc.b $00
[000b5988]                           dc.b $00
[000b5989]                           dc.b $00
[000b598a]                           dc.b $00
[000b598b]                           dc.b $00
[000b598c]                           dc.b $00
[000b598d]                           dc.b $00
[000b598e]                           dc.b $00
[000b598f]                           dc.b $00
_43_ED_INNER:
[000b5990]                           dc.b $00
[000b5991]                           dc.b $2d
[000b5992]                           dc.w $ffff
[000b5994]                           dc.w $ffff
[000b5996]                           dc.b $00
[000b5997]                           dc.b $14
[000b5998]                           dc.b $00
[000b5999]                           dc.b $40
[000b599a]                           dc.b $00
[000b599b]                           dc.b $20
[000b599c]                           dc.b $00
[000b599d]                           dc.b $ff
[000b599e]                           dc.w $1101
[000b59a0]                           dc.b $00
[000b59a1]                           dc.b $09
[000b59a2]                           dc.b $00
[000b59a3]                           dc.b $02
[000b59a4]                           dc.b $00
[000b59a5]                           dc.b $12
[000b59a6]                           dc.b $00
[000b59a7]                           dc.b $01
_43aED_INNER:
[000b59a8] 0002784e                  dc.l edin_pattern
[000b59ac]                           dc.b $00
[000b59ad]                           dc.b $00
[000b59ae]                           dc.b $00
[000b59af]                           dc.b $00
[000b59b0]                           dc.w $8000
[000b59b2]                           dc.w $884d
[000b59b4]                           dc.b $00
[000b59b5]                           dc.b $00
[000b59b6]                           dc.b $00
[000b59b7]                           dc.b $00
[000b59b8]                           dc.b $00
[000b59b9]                           dc.b $00
[000b59ba]                           dc.b $00
[000b59bb]                           dc.b $00
[000b59bc]                           dc.b $00
[000b59bd]                           dc.b $00
[000b59be]                           dc.b $00
[000b59bf]                           dc.b $00
_45_ED_INNER:
[000b59c0]                           dc.b $00
[000b59c1]                           dc.b $2f
[000b59c2]                           dc.b $00
[000b59c3]                           dc.b $2e
[000b59c4]                           dc.b $00
[000b59c5]                           dc.b $2e
[000b59c6]                           dc.b $00
[000b59c7]                           dc.b $1c
[000b59c8]                           dc.b $00
[000b59c9]                           dc.b $40
[000b59ca]                           dc.b $00
[000b59cb]                           dc.b $00
[000b59cc] 000b5250                  dc.l TEXT_13
[000b59d0]                           dc.b $00
[000b59d1]                           dc.b $01
[000b59d2]                           dc.b $00
[000b59d3]                           dc.b $02
[000b59d4]                           dc.b $00
[000b59d5]                           dc.b $08
[000b59d6]                           dc.b $00
[000b59d7]                           dc.b $01
_46_ED_INNER:
[000b59d8]                           dc.b $00
[000b59d9]                           dc.b $2d
[000b59da]                           dc.w $ffff
[000b59dc]                           dc.w $ffff
[000b59de]                           dc.b $00
[000b59df]                           dc.b $18
[000b59e0]                           dc.b $00
[000b59e1]                           dc.b $40
[000b59e2]                           dc.b $00
[000b59e3]                           dc.b $00
[000b59e4] 000b5368                  dc.l A_ARROWS02
[000b59e8]                           dc.b $00
[000b59e9]                           dc.b $00
[000b59ea]                           dc.b $00
[000b59eb]                           dc.b $00
[000b59ec]                           dc.b $00
[000b59ed]                           dc.b $01
[000b59ee]                           dc.b $00
[000b59ef]                           dc.b $01
_47_ED_INNER:
[000b59f0]                           dc.b $00
[000b59f1]                           dc.b $31
[000b59f2]                           dc.b $00
[000b59f3]                           dc.b $30
[000b59f4]                           dc.b $00
[000b59f5]                           dc.b $30
[000b59f6]                           dc.b $00
[000b59f7]                           dc.b $1c
[000b59f8]                           dc.b $00
[000b59f9]                           dc.b $40
[000b59fa]                           dc.b $00
[000b59fb]                           dc.b $00
[000b59fc] 000b5242                  dc.l TEXT_10
[000b5a00]                           dc.b $00
[000b5a01]                           dc.b $02
[000b5a02]                           dc.b $00
[000b5a03]                           dc.b $04
[000b5a04]                           dc.b $00
[000b5a05]                           dc.b $06
[000b5a06]                           dc.b $00
[000b5a07]                           dc.b $01
_48_ED_INNER:
[000b5a08]                           dc.b $00
[000b5a09]                           dc.b $2f
[000b5a0a]                           dc.w $ffff
[000b5a0c]                           dc.w $ffff
[000b5a0e]                           dc.b $00
[000b5a0f]                           dc.b $18
[000b5a10]                           dc.b $00
[000b5a11]                           dc.b $40
[000b5a12]                           dc.b $00
[000b5a13]                           dc.b $00
[000b5a14] 000b5368                  dc.l A_ARROWS02
[000b5a18]                           dc.b $00
[000b5a19]                           dc.b $03
[000b5a1a]                           dc.b $00
[000b5a1b]                           dc.b $00
[000b5a1c]                           dc.b $00
[000b5a1d]                           dc.b $01
[000b5a1e]                           dc.b $00
[000b5a1f]                           dc.b $01
_49_ED_INNER:
[000b5a20]                           dc.b $00
[000b5a21]                           dc.b $28
[000b5a22]                           dc.b $00
[000b5a23]                           dc.b $33
[000b5a24]                           dc.b $00
[000b5a25]                           dc.b $34
[000b5a26]                           dc.b $00
[000b5a27]                           dc.b $14
[000b5a28]                           dc.b $00
[000b5a29]                           dc.b $40
[000b5a2a]                           dc.b $00
[000b5a2b]                           dc.b $20
[000b5a2c]                           dc.b $00
[000b5a2d]                           dc.b $ff
[000b5a2e]                           dc.w $1101
[000b5a30]                           dc.b $00
[000b5a31]                           dc.b $09
[000b5a32]                           dc.b $00
[000b5a33]                           dc.b $04
[000b5a34]                           dc.b $00
[000b5a35]                           dc.b $12
[000b5a36]                           dc.b $00
[000b5a37]                           dc.b $01
_49aED_INNER:
[000b5a38] 0002778a                  dc.l edin_intercol
[000b5a3c]                           dc.b $00
[000b5a3d]                           dc.b $00
[000b5a3e]                           dc.b $00
[000b5a3f]                           dc.b $00
[000b5a40]                           dc.w $8000
[000b5a42]                           dc.w $8842
[000b5a44]                           dc.b $00
[000b5a45]                           dc.b $00
[000b5a46]                           dc.b $00
[000b5a47]                           dc.b $00
[000b5a48]                           dc.b $00
[000b5a49]                           dc.b $00
[000b5a4a]                           dc.b $00
[000b5a4b]                           dc.b $00
[000b5a4c]                           dc.b $00
[000b5a4d]                           dc.b $00
[000b5a4e]                           dc.b $00
[000b5a4f]                           dc.b $00
_51_ED_INNER:
[000b5a50]                           dc.b $00
[000b5a51]                           dc.b $34
[000b5a52]                           dc.w $ffff
[000b5a54]                           dc.w $ffff
[000b5a56]                           dc.b $00
[000b5a57]                           dc.b $14
[000b5a58]                           dc.b $00
[000b5a59]                           dc.b $00
[000b5a5a]                           dc.b $00
[000b5a5b]                           dc.b $00
[000b5a5c]                           dc.b $00
[000b5a5d]                           dc.b $01
[000b5a5e]                           dc.w $1171
[000b5a60]                           dc.b $00
[000b5a61]                           dc.b $10
[000b5a62]                           dc.b $00
[000b5a63]                           dc.b $00
[000b5a64]                           dc.b $00
[000b5a65]                           dc.b $02
[000b5a66]                           dc.b $00
[000b5a67]                           dc.b $01
_52_ED_INNER:
[000b5a68]                           dc.b $00
[000b5a69]                           dc.b $31
[000b5a6a]                           dc.w $ffff
[000b5a6c]                           dc.w $ffff
[000b5a6e]                           dc.b $00
[000b5a6f]                           dc.b $18
[000b5a70]                           dc.b $00
[000b5a71]                           dc.b $00
[000b5a72]                           dc.b $00
[000b5a73]                           dc.b $00
[000b5a74] 000b5348                  dc.l A_3DBUTTON27
[000b5a78]                           dc.b $00
[000b5a79]                           dc.b $00
[000b5a7a]                           dc.b $00
[000b5a7b]                           dc.b $00
[000b5a7c]                           dc.b $00
[000b5a7d]                           dc.b $10
[000b5a7e]                           dc.b $00
[000b5a7f]                           dc.b $01
_53_ED_INNER:
[000b5a80]                           dc.b $00
[000b5a81]                           dc.b $00
[000b5a82]                           dc.b $00
[000b5a83]                           dc.b $36
[000b5a84]                           dc.b $00
[000b5a85]                           dc.b $39
[000b5a86]                           dc.b $00
[000b5a87]                           dc.b $18
[000b5a88]                           dc.b $00
[000b5a89]                           dc.b $40
[000b5a8a]                           dc.b $00
[000b5a8b]                           dc.b $00
[000b5a8c] 000b5448                  dc.l A_INNERFRAME03
[000b5a90]                           dc.b $00
[000b5a91]                           dc.b $01
[000b5a92]                           dc.b $00
[000b5a93]                           dc.b $0f
[000b5a94]                           dc.b $00
[000b5a95]                           dc.b $38
[000b5a96]                           dc.b $00
[000b5a97]                           dc.b $05
_54_ED_INNER:
[000b5a98]                           dc.b $00
[000b5a99]                           dc.b $37
[000b5a9a]                           dc.w $ffff
[000b5a9c]                           dc.w $ffff
[000b5a9e]                           dc.b $00
[000b5a9f]                           dc.b $1c
[000b5aa0]                           dc.b $00
[000b5aa1]                           dc.b $00
[000b5aa2]                           dc.b $00
[000b5aa3]                           dc.b $00
[000b5aa4] 000b521e                  dc.l TEXT_06
[000b5aa8]                           dc.b $00
[000b5aa9]                           dc.b $01
[000b5aaa]                           dc.b $00
[000b5aab]                           dc.b $01
[000b5aac]                           dc.b $00
[000b5aad]                           dc.b $0e
[000b5aae]                           dc.b $00
[000b5aaf]                           dc.b $01
_55_ED_INNER:
[000b5ab0]                           dc.b $00
[000b5ab1]                           dc.b $38
[000b5ab2]                           dc.w $ffff
[000b5ab4]                           dc.w $ffff
[000b5ab6]                           dc.b $00
[000b5ab7]                           dc.b $1c
[000b5ab8]                           dc.b $00
[000b5ab9]                           dc.b $00
[000b5aba]                           dc.b $00
[000b5abb]                           dc.b $00
[000b5abc] 000b522d                  dc.l TEXT_07
[000b5ac0]                           dc.b $00
[000b5ac1]                           dc.b $01
[000b5ac2]                           dc.b $00
[000b5ac3]                           dc.b $03
[000b5ac4]                           dc.b $00
[000b5ac5]                           dc.b $0d
[000b5ac6]                           dc.b $00
[000b5ac7]                           dc.b $01
_56_ED_INNER:
[000b5ac8]                           dc.b $00
[000b5ac9]                           dc.b $39
[000b5aca]                           dc.w $ffff
[000b5acc]                           dc.w $ffff
[000b5ace]                           dc.b $00
[000b5acf]                           dc.b $18
[000b5ad0]                           dc.b $00
[000b5ad1]                           dc.b $08
[000b5ad2]                           dc.b $00
[000b5ad3]                           dc.b $10
[000b5ad4] 000b53a8                  dc.l A_BOXED03
[000b5ad8]                           dc.b $00
[000b5ad9]                           dc.b $10
[000b5ada]                           dc.b $00
[000b5adb]                           dc.b $01
[000b5adc]                           dc.b $00
[000b5add]                           dc.b $27
[000b5ade]                           dc.b $00
[000b5adf]                           dc.b $01
_57_ED_INNER:
[000b5ae0]                           dc.b $00
[000b5ae1]                           dc.b $35
[000b5ae2]                           dc.w $ffff
[000b5ae4]                           dc.w $ffff
[000b5ae6]                           dc.b $00
[000b5ae7]                           dc.b $18
[000b5ae8]                           dc.b $00
[000b5ae9]                           dc.b $28
[000b5aea]                           dc.b $00
[000b5aeb]                           dc.b $10
[000b5aec] 000b53c8                  dc.l A_BOXED04
[000b5af0]                           dc.b $00
[000b5af1]                           dc.b $10
[000b5af2]                           dc.b $00
[000b5af3]                           dc.b $03
[000b5af4]                           dc.b $00
[000b5af5]                           dc.b $27
[000b5af6]                           dc.b $00
[000b5af7]                           dc.b $01
INNER1:
[000b5af8] 00059f9c                  dc.l A_innerframe
[000b5afc]                           dc.w $1800
[000b5afe]                           dc.w $8f19
[000b5b00] 00059318                  dc.l Auo_string
[000b5b04] 000b5be6                  dc.l $000b5be6 ; no symbol found
[000b5b08]                           dc.b $00
[000b5b09]                           dc.b $00
[000b5b0a]                           dc.b $00
[000b5b0b]                           dc.b $00
[000b5b0c]                           dc.b $00
[000b5b0d]                           dc.b $00
[000b5b0e]                           dc.b $00
[000b5b0f]                           dc.b $00
[000b5b10]                           dc.b $00
[000b5b11]                           dc.b $00
[000b5b12]                           dc.b $00
[000b5b13]                           dc.b $00
[000b5b14]                           dc.b $00
[000b5b15]                           dc.b $00
[000b5b16]                           dc.b $00
[000b5b17]                           dc.b $00
INNER2:
[000b5b18] 00059f9c                  dc.l A_innerframe
[000b5b1c]                           dc.w $1000
[000b5b1e]                           dc.w $8f19
[000b5b20] 00059318                  dc.l Auo_string
[000b5b24] 000b5be6                  dc.l $000b5be6 ; no symbol found
[000b5b28]                           dc.b $00
[000b5b29]                           dc.b $00
[000b5b2a]                           dc.b $00
[000b5b2b]                           dc.b $00
[000b5b2c]                           dc.b $00
[000b5b2d]                           dc.b $00
[000b5b2e]                           dc.b $00
[000b5b2f]                           dc.b $00
[000b5b30]                           dc.b $00
[000b5b31]                           dc.b $00
[000b5b32]                           dc.b $00
[000b5b33]                           dc.b $00
[000b5b34]                           dc.b $00
[000b5b35]                           dc.b $00
[000b5b36]                           dc.b $00
[000b5b37]                           dc.b $00
visual:
[000b5b38]                           dc.w $ffff
[000b5b3a]                           dc.w $ffff
[000b5b3c]                           dc.w $ffff
[000b5b3e]                           dc.b $00
[000b5b3f]                           dc.b $18
[000b5b40]                           dc.w $2001
[000b5b42]                           dc.b $00
[000b5b43]                           dc.b $10
[000b5b44] 000b5af8                  dc.l INNER1
[000b5b48]                           dc.b $00
[000b5b49]                           dc.b $00
[000b5b4a]                           dc.b $00
[000b5b4b]                           dc.b $00
[000b5b4c]                           dc.b $00
[000b5b4d]                           dc.b $0a
[000b5b4e]                           dc.b $00
[000b5b4f]                           dc.b $02
logical:
[000b5b50]                           dc.w $ffff
[000b5b52]                           dc.w $ffff
[000b5b54]                           dc.w $ffff
[000b5b56]                           dc.b $00
[000b5b57]                           dc.b $18
[000b5b58]                           dc.b $00
[000b5b59]                           dc.b $40
[000b5b5a]                           dc.b $00
[000b5b5b]                           dc.b $00
[000b5b5c] 000b5b18                  dc.l INNER2
[000b5b60]                           dc.b $00
[000b5b61]                           dc.b $00
[000b5b62]                           dc.b $00
[000b5b63]                           dc.b $00
[000b5b64]                           dc.b $00
[000b5b65]                           dc.b $07
[000b5b66]                           dc.b $00
[000b5b67]                           dc.b $02
aud:
[000b5b68] 000b5bec                  dc.l $000b5bec ; no symbol found
[000b5b6c] 000b5bf8                  dc.l $000b5bf8 ; no symbol found
[000b5b70]                           dc.b $00
[000b5b71]                           dc.b $02
[000b5b72] 000b5be6                  dc.l $000b5be6 ; no symbol found
[000b5b76]                           dc.b $00
[000b5b77]                           dc.b $00
[000b5b78]                           dc.b $00
[000b5b79]                           dc.b $00
[000b5b7a]                           dc.b $00
[000b5b7b]                           dc.b $00
[000b5b7c]                           dc.b $00
[000b5b7d]                           dc.b $00
[000b5b7e]                           dc.b $00
[000b5b7f]                           dc.b $00
[000b5b80]                           dc.b $00
[000b5b81]                           dc.b $00
[000b5b82]                           dc.b $00
[000b5b83]                           dc.b $00
[000b5b84]                           dc.b $00
[000b5b85]                           dc.b $00
[000b5b86]                           dc.b $00
[000b5b87]                           dc.b $00
[000b5b88]                           dc.b $00
[000b5b89]                           dc.b $00
[000b5b8a]                           dc.b $00
[000b5b8b]                           dc.b $00
[000b5b8c]                           dc.b $00
[000b5b8d]                           dc.b $00
[000b5b8e]                           dc.b $00
[000b5b8f]                           dc.b $00
[000b5b90]                           dc.b $00
[000b5b91]                           dc.b $00
[000b5b92]                           dc.b $00
[000b5b93]                           dc.b $00
[000b5b94]                           dc.b $00
[000b5b95]                           dc.b $00
data:
[000b5b96]                           dc.b 'A_innerframe',0
[000b5ba3]                           dc.b $00
[000b5ba4]                           dc.b $00
[000b5ba5]                           dc.b $00
[000b5ba6]                           dc.b $00
[000b5ba7]                           dc.b $00
[000b5ba8]                           dc.b $00
[000b5ba9]                           dc.b $00
[000b5baa]                           dc.b $00
[000b5bab]                           dc.b $00
[000b5bac]                           dc.b $00
[000b5bad]                           dc.b $00
[000b5bae]                           dc.b $00
[000b5baf]                           dc.b $00
[000b5bb0]                           dc.b $00
[000b5bb1]                           dc.b $00
[000b5bb2]                           dc.b $00
[000b5bb3]                           dc.b $00
[000b5bb4]                           dc.b $00
[000b5bb5]                           dc.b $00
[000b5bb6] 00027c8a                  dc.l object_tree
[000b5bba] 00027f7e                  dc.l test_it
[000b5bbe] 00028026                  dc.l ok
[000b5bc2] 00049b7c                  dc.l Aob_delete
[000b5bc6] 000b5b38                  dc.l visual
[000b5bca] 000b5b50                  dc.l logical
[000b5bce] 000b5b68                  dc.l aud
[000b5bd2] 00027c42                  dc.l minsize
[000b5bd6]                           dc.b $00
[000b5bd7]                           dc.b $00
[000b5bd8]                           dc.b $00
[000b5bd9]                           dc.b $00
[000b5bda] 000b52bb                  dc.l title
[000b5bde] 000b52a5                  dc.l help_title
[000b5be2]                           dc.b $00
[000b5be3]                           dc.b $00
[000b5be4]                           dc.b $00
[000b5be5]                           dc.b $00
[000b5be6]                           dc.b 'Titel',0
[000b5bec]                           dc.b '0x10008f19L',0
[000b5bf8]                           dc.b 'Auo_string',0
[000b5c03]                           dc.b '0x%lxL',0
	.even

	.bss

parm: ds.b 32
