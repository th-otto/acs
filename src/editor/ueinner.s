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
[000276e6] 6706                      beq.s      $000276EE
[000276e8] 0093 1000 0000            ori.l      #$10000000,(a3)
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
[00027748] 4eb9 0002 f280            jsr        $0002F280
[0002774e] 544f                      addq.w     #2,a7
[00027750] 3600                      move.w     d0,d3
[00027752] 6b30                      bmi.s      $00027784
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
[000277b0] 4eb9 0002 f280            jsr        $0002F280
[000277b6] 544f                      addq.w     #2,a7
[000277b8] 3600                      move.w     d0,d3
[000277ba] 6b30                      bmi.s      $000277EC
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
[00027814] 4eb9 0002 f280            jsr        $0002F280
[0002781a] 544f                      addq.w     #2,a7
[0002781c] 3600                      move.w     d0,d3
[0002781e] 6b28                      bmi.s      $00027848
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
[00027848] 245f                      movea.l    (a7)+,a2
[0002784a] 361f                      move.w     (a7)+,d3
[0002784c] 4e75                      rts
edin_pattern:
[0002784e] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00027852] 514f                      subq.w     #8,a7
[00027854] 41f9 000b db68            lea.l      $000BDB68,a0
[0002785a] 4eb9 0004 9a5c            jsr        $00049A5C
[00027860] 2448                      movea.l    a0,a2
[00027862] 200a                      move.l     a2,d0
[00027864] 6700 00de                 beq        $00027944
[00027868] 47f9 0010 1f12            lea.l      ACSblk,a3
[0002786e] 702b                      moveq.l    #43,d0
[00027870] 2053                      movea.l    (a3),a0
[00027872] 2268 0258                 movea.l    600(a0),a1
[00027876] 2269 0014                 movea.l    20(a1),a1
[0002787a] 41d7                      lea.l      (a7),a0
[0002787c] 4eb9 0004 a3be            jsr        $0004A3BE
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
[000278cc] 4eb9 0004 948a            jsr        $0004948A
[000278d2] 4a40                      tst.w      d0
[000278d4] 6f66                      ble.s      $0002793C
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
[0002793c] 204a                      movea.l    a2,a0
[0002793e] 4eb9 0004 9b7c            jsr        $00049B7C
[00027944] 504f                      addq.w     #8,a7
[00027946] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0002794a] 4e75                      rts
edin_pos:
[0002794c] 48e7 003c                 movem.l    a2-a5,-(a7)
[00027950] 514f                      subq.w     #8,a7
[00027952] 45f9 000b 54c8            lea.l      $000B54C8,a2
[00027958] 204a                      movea.l    a2,a0
[0002795a] 4eb9 0004 9a5c            jsr        $00049A5C
[00027960] 2648                      movea.l    a0,a3
[00027962] 200b                      move.l     a3,d0
[00027964] 6700 0148                 beq        $00027AAE
[00027968] 49f9 0010 1f12            lea.l      ACSblk,a4
[0002796e] 7011                      moveq.l    #17,d0
[00027970] 2054                      movea.l    (a4),a0
[00027972] 2268 0258                 movea.l    600(a0),a1
[00027976] 2269 0014                 movea.l    20(a1),a1
[0002797a] 41d7                      lea.l      (a7),a0
[0002797c] 4eb9 0004 a3be            jsr        $0004A3BE
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
[000279a4] 4eb9 0004 948a            jsr        $0004948A
[000279aa] 4a40                      tst.w      d0
[000279ac] 6f00 00f8                 ble        $00027AA6
[000279b0] 5540                      subq.w     #2,d0
[000279b2] 2054                      movea.l    (a4),a0
[000279b4] 2268 025c                 movea.l    604(a0),a1
[000279b8] 2a69 003c                 movea.l    60(a1),a5
[000279bc] 584d                      addq.w     #4,a5
[000279be] 0295 f8ff ffff            andi.l     #$F8FFFFFF,(a5)
[000279c4] 3200                      move.w     d0,d1
[000279c6] b27c 0005                 cmp.w      #$0005,d1
[000279ca] 6200 00ae                 bhi        $00027A7A
[000279ce] d241                      add.w      d1,d1
[000279d0] 323b 1006                 move.w     $000279D8(pc,d1.w),d1
[000279d4] 4efb 1002                 jmp        $000279D8(pc,d1.w)
J13:
[000279d8] 000c                      dc.w $000c   ; $000279e4-$000279d8
[000279da] 0022                      dc.w $0022   ; $000279fa-$000279d8
[000279dc] 003c                      dc.w $003c   ; $00027a14-$000279d8
[000279de] 0056                      dc.w $0056   ; $00027a2e-$000279d8
[000279e0] 0070                      dc.w $0070   ; $00027a48-$000279d8
[000279e2] 008a                      dc.w $008a   ; $00027a62-$000279d8
[000279e4] 43ea fd23                 lea.l      -733(a2),a1
[000279e8] 7013                      moveq.l    #19,d0
[000279ea] 2054                      movea.l    (a4),a0
[000279ec] 2068 025c                 movea.l    604(a0),a0
[000279f0] 4eb9 0004 afe0            jsr        $0004AFE0
[000279f6] 6000 0082                 bra        $00027A7A
[000279fa] 0095 0100 0000            ori.l      #$01000000,(a5)
[00027a00] 43ea fd27                 lea.l      -729(a2),a1
[00027a04] 7013                      moveq.l    #19,d0
[00027a06] 2054                      movea.l    (a4),a0
[00027a08] 2068 025c                 movea.l    604(a0),a0
[00027a0c] 4eb9 0004 afe0            jsr        $0004AFE0
[00027a12] 6066                      bra.s      $00027A7A
[00027a14] 0095 0200 0000            ori.l      #$02000000,(a5)
[00027a1a] 43ea fd2b                 lea.l      -725(a2),a1
[00027a1e] 7013                      moveq.l    #19,d0
[00027a20] 2054                      movea.l    (a4),a0
[00027a22] 2068 025c                 movea.l    604(a0),a0
[00027a26] 4eb9 0004 afe0            jsr        $0004AFE0
[00027a2c] 604c                      bra.s      $00027A7A
[00027a2e] 0095 0400 0000            ori.l      #$04000000,(a5)
[00027a34] 43ea fd2f                 lea.l      -721(a2),a1
[00027a38] 7013                      moveq.l    #19,d0
[00027a3a] 2054                      movea.l    (a4),a0
[00027a3c] 2068 025c                 movea.l    604(a0),a0
[00027a40] 4eb9 0004 afe0            jsr        $0004AFE0
[00027a46] 6032                      bra.s      $00027A7A
[00027a48] 0095 0500 0000            ori.l      #$05000000,(a5)
[00027a4e] 43ea fd33                 lea.l      -717(a2),a1
[00027a52] 7013                      moveq.l    #19,d0
[00027a54] 2054                      movea.l    (a4),a0
[00027a56] 2068 025c                 movea.l    604(a0),a0
[00027a5a] 4eb9 0004 afe0            jsr        $0004AFE0
[00027a60] 6018                      bra.s      $00027A7A
[00027a62] 0095 0600 0000            ori.l      #$06000000,(a5)
[00027a68] 43ea fd37                 lea.l      -713(a2),a1
[00027a6c] 7013                      moveq.l    #19,d0
[00027a6e] 2054                      movea.l    (a4),a0
[00027a70] 2068 025c                 movea.l    604(a0),a0
[00027a74] 4eb9 0004 afe0            jsr        $0004AFE0
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
[00027aa6] 204b                      movea.l    a3,a0
[00027aa8] 4eb9 0004 9b7c            jsr        $00049B7C
[00027aae] 504f                      addq.w     #8,a7
[00027ab0] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00027ab4] 4e75                      rts
edin_size:
[00027ab6] 48e7 0038                 movem.l    a2-a4,-(a7)
[00027aba] 514f                      subq.w     #8,a7
[00027abc] 41f9 000b dc40            lea.l      $000BDC40,a0
[00027ac2] 4eb9 0004 9a5c            jsr        $00049A5C
[00027ac8] 2448                      movea.l    a0,a2
[00027aca] 200a                      move.l     a2,d0
[00027acc] 6700 00ec                 beq        $00027BBA
[00027ad0] 47f9 0010 1f12            lea.l      ACSblk,a3
[00027ad6] 7016                      moveq.l    #22,d0
[00027ad8] 2053                      movea.l    (a3),a0
[00027ada] 2268 0258                 movea.l    600(a0),a1
[00027ade] 2269 0014                 movea.l    20(a1),a1
[00027ae2] 41d7                      lea.l      (a7),a0
[00027ae4] 4eb9 0004 a3be            jsr        $0004A3BE
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
[00027b34] 4eb9 0004 948a            jsr        $0004948A
[00027b3a] 4a40                      tst.w      d0
[00027b3c] 6f74                      ble.s      $00027BB2
[00027b3e] 2053                      movea.l    (a3),a0
[00027b40] 2268 025c                 movea.l    604(a0),a1
[00027b44] 2869 003c                 movea.l    60(a1),a4
[00027b48] 584c                      addq.w     #4,a4
[00027b4a] b07c 0001                 cmp.w      #$0001,d0
[00027b4e] 661c                      bne.s      $00027B6C
[00027b50] 0294 f7ff ffff            andi.l     #$F7FFFFFF,(a4)
[00027b56] 43f9 000b d322            lea.l      $000BD322,a1
[00027b5c] 7018                      moveq.l    #24,d0
[00027b5e] 2053                      movea.l    (a3),a0
[00027b60] 2068 025c                 movea.l    604(a0),a0
[00027b64] 4eb9 0004 afe0            jsr        $0004AFE0
[00027b6a] 601a                      bra.s      $00027B86
[00027b6c] 0094 0800 0000            ori.l      #$08000000,(a4)
[00027b72] 43f9 000b d327            lea.l      $000BD327,a1
[00027b78] 7018                      moveq.l    #24,d0
[00027b7a] 2053                      movea.l    (a3),a0
[00027b7c] 2068 025c                 movea.l    604(a0),a0
[00027b80] 4eb9 0004 afe0            jsr        $0004AFE0
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
[00027bb2] 204a                      movea.l    a2,a0
[00027bb4] 4eb9 0004 9b7c            jsr        $00049B7C
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
[00027be6] 4eb9 0002 f280            jsr        $0002F280
[00027bec] 544f                      addq.w     #2,a7
[00027bee] 3600                      move.w     d0,d3
[00027bf0] 6b2e                      bmi.s      $00027C20
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
[00027c20] 245f                      movea.l    (a7)+,a2
[00027c22] 361f                      move.w     (a7)+,d3
[00027c24] 4e75                      rts
init_inner:
[00027c26] 2f0a                      move.l     a2,-(a7)
[00027c28] 2f0b                      move.l     a3,-(a7)
[00027c2a] 2448                      movea.l    a0,a2
[00027c2c] 43f9 000b 5b96            lea.l      $000B5B96,a1
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
[00027c4e] 6718                      beq.s      $00027C68
[00027c50] 2040                      movea.l    d0,a0
[00027c52] 4eb9 0007 69b0            jsr        $000769B0
[00027c58] 2600                      move.l     d0,d3
[00027c5a] 5443                      addq.w     #2,d3
[00027c5c] 2079 0010 1f12            movea.l    ACSblk,a0
[00027c62] c7e8 0012                 muls.w     18(a0),d3
[00027c66] 600c                      bra.s      $00027C74
[00027c68] 2079 0010 1f12            movea.l    ACSblk,a0
[00027c6e] 3628 0012                 move.w     18(a0),d3
[00027c72] d643                      add.w      d3,d3
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
[00027c94] 41f9 000b 5588            lea.l      $000B5588,a0
[00027c9a] 4eb9 0004 9a5c            jsr        $00049A5C
[00027ca0] 2648                      movea.l    a0,a3
[00027ca2] 200b                      move.l     a3,d0
[00027ca4] 6606                      bne.s      $00027CAC
[00027ca6] 91c8                      suba.l     a0,a0
[00027ca8] 6000 02cc                 bra        $00027F76
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
[00027cd2] 4eb9 0002 f23c            jsr        $0002F23C
[00027cd8] 7038                      moveq.l    #56,d0
[00027cda] 224b                      movea.l    a3,a1
[00027cdc] 2079 0010 1f12            movea.l    ACSblk,a0
[00027ce2] 2068 0258                 movea.l    600(a0),a0
[00027ce6] 4eb9 0002 f23c            jsr        $0002F23C
[00027cec] 7039                      moveq.l    #57,d0
[00027cee] 224b                      movea.l    a3,a1
[00027cf0] 2079 0010 1f12            movea.l    ACSblk,a0
[00027cf6] 2068 0258                 movea.l    600(a0),a0
[00027cfa] 4eb9 0002 f23c            jsr        $0002F23C
[00027d00] 286d 000c                 movea.l    12(a5),a4
[00027d04] 4857                      pea.l      (a7)
[00027d06] 43f9 000b 5c03            lea.l      $000B5C03,a1
[00027d0c] 2052                      movea.l    (a2),a0
[00027d0e] 4eb9 0007 594a            jsr        $0007594A
[00027d14] 584f                      addq.w     #4,a7
[00027d16] 2957 0004                 move.l     (a7),4(a4)
[00027d1a] 0c6a 0002 0008            cmpi.w     #$0002,8(a2)
[00027d20] 6610                      bne.s      $00027D32
[00027d22] 226a 000a                 movea.l    10(a2),a1
[00027d26] 700e                      moveq.l    #14,d0
[00027d28] 204b                      movea.l    a3,a0
[00027d2a] 4eb9 0004 afe0            jsr        $0004AFE0
[00027d30] 6020                      bra.s      $00027D52
[00027d32] 43f9 000b 5beb            lea.l      $000B5BEB,a1
[00027d38] 7004                      moveq.l    #4,d0
[00027d3a] 204d                      movea.l    a5,a0
[00027d3c] 2c6c 0008                 movea.l    8(a4),a6
[00027d40] 4e96                      jsr        (a6)
[00027d42] 43f9 000b 5beb            lea.l      $000B5BEB,a1
[00027d48] 700e                      moveq.l    #14,d0
[00027d4a] 204b                      movea.l    a3,a0
[00027d4c] 4eb9 0004 afe0            jsr        $0004AFE0
[00027d52] 2017                      move.l     (a7),d0
[00027d54] 721c                      moveq.l    #28,d1
[00027d56] e2a0                      asr.l      d1,d0
[00027d58] c0bc 0000 0001            and.l      #$00000001,d0
[00027d5e] 6708                      beq.s      $00027D68
[00027d60] 006b 0001 03e2            ori.w      #$0001,994(a3)
[00027d66] 6006                      bra.s      $00027D6E
[00027d68] 026b fffe 03e2            andi.w     #$FFFE,994(a3)
[00027d6e] 2617                      move.l     (a7),d3
[00027d70] 7010                      moveq.l    #16,d0
[00027d72] e0a3                      asr.l      d0,d3
[00027d74] c67c 000f                 and.w      #$000F,d3
[00027d78] 4bf9 000b e270            lea.l      $000BE270,a5
[00027d7e] 3003                      move.w     d3,d0
[00027d80] 48c0                      ext.l      d0
[00027d82] e588                      lsl.l      #2,d0
[00027d84] 2275 0800                 movea.l    0(a5,d0.l),a1
[00027d88] 204b                      movea.l    a3,a0
[00027d8a] 7027                      moveq.l    #39,d0
[00027d8c] 4eb9 0004 afe0            jsr        $0004AFE0
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
[00027db6] 4eb9 0004 afe0            jsr        $0004AFE0
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
[00027de4] 4eb9 0004 afe0            jsr        $0004AFE0
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
[00027e26] 6200 0084                 bhi        $00027EAC
[00027e2a] d442                      add.w      d2,d2
[00027e2c] 343b 2006                 move.w     $00027E34(pc,d2.w),d2
[00027e30] 4efb 2002                 jmp        $00027E34(pc,d2.w)
J14:
[00027e34] 000e                      dc.w $000e   ; $00027e42-$00027e34
[00027e36] 0020                      dc.w $0020   ; $00027e54-$00027e34
[00027e38] 0032                      dc.w $0032   ; $00027e66-$00027e34
[00027e3a] 0078                      dc.w $0078   ; $00027eac-$00027e34
[00027e3c] 0044                      dc.w $0044   ; $00027e78-$00027e34
[00027e3e] 0056                      dc.w $0056   ; $00027e8a-$00027e34
[00027e40] 0068                      dc.w $0068   ; $00027e9c-$00027e34
[00027e42] 43f9 000b 51eb            lea.l      $000B51EB,a1
[00027e48] 7013                      moveq.l    #19,d0
[00027e4a] 204b                      movea.l    a3,a0
[00027e4c] 4eb9 0004 afe0            jsr        $0004AFE0
[00027e52] 6058                      bra.s      $00027EAC
[00027e54] 43f9 000b 51ef            lea.l      $000B51EF,a1
[00027e5a] 7013                      moveq.l    #19,d0
[00027e5c] 204b                      movea.l    a3,a0
[00027e5e] 4eb9 0004 afe0            jsr        $0004AFE0
[00027e64] 6046                      bra.s      $00027EAC
[00027e66] 43f9 000b 51f3            lea.l      $000B51F3,a1
[00027e6c] 7013                      moveq.l    #19,d0
[00027e6e] 204b                      movea.l    a3,a0
[00027e70] 4eb9 0004 afe0            jsr        $0004AFE0
[00027e76] 6034                      bra.s      $00027EAC
[00027e78] 43f9 000b 51f7            lea.l      $000B51F7,a1
[00027e7e] 7013                      moveq.l    #19,d0
[00027e80] 204b                      movea.l    a3,a0
[00027e82] 4eb9 0004 afe0            jsr        $0004AFE0
[00027e88] 6022                      bra.s      $00027EAC
[00027e8a] 43f9 000b 51fb            lea.l      $000B51FB,a1
[00027e90] 7013                      moveq.l    #19,d0
[00027e92] 204b                      movea.l    a3,a0
[00027e94] 4eb9 0004 afe0            jsr        $0004AFE0
[00027e9a] 6010                      bra.s      $00027EAC
[00027e9c] 43f9 000b 51ff            lea.l      $000B51FF,a1
[00027ea2] 7013                      moveq.l    #19,d0
[00027ea4] 204b                      movea.l    a3,a0
[00027ea6] 4eb9 0004 afe0            jsr        $0004AFE0
[00027eac] 2017                      move.l     (a7),d0
[00027eae] c0bc 0800 0000            and.l      #$08000000,d0
[00027eb4] 6712                      beq.s      $00027EC8
[00027eb6] 43f9 000b d327            lea.l      $000BD327,a1
[00027ebc] 204b                      movea.l    a3,a0
[00027ebe] 7018                      moveq.l    #24,d0
[00027ec0] 4eb9 0004 afe0            jsr        $0004AFE0
[00027ec6] 6010                      bra.s      $00027ED8
[00027ec8] 43f9 000b d322            lea.l      $000BD322,a1
[00027ece] 7018                      moveq.l    #24,d0
[00027ed0] 204b                      movea.l    a3,a0
[00027ed2] 4eb9 0004 afe0            jsr        $0004AFE0
[00027ed8] 2617                      move.l     (a7),d3
[00027eda] e883                      asr.l      #4,d3
[00027edc] c67c 000f                 and.w      #$000F,d3
[00027ee0] 3003                      move.w     d3,d0
[00027ee2] 48c0                      ext.l      d0
[00027ee4] e588                      lsl.l      #2,d0
[00027ee6] 2275 0800                 movea.l    0(a5,d0.l),a1
[00027eea] 204b                      movea.l    a3,a0
[00027eec] 700d                      moveq.l    #13,d0
[00027eee] 4eb9 0004 afe0            jsr        $0004AFE0
[00027ef4] 3003                      move.w     d3,d0
[00027ef6] 026b fff0 012e            andi.w     #$FFF0,302(a3)
[00027efc] c07c 000f                 and.w      #$000F,d0
[00027f00] 816b 012e                 or.w       d0,302(a3)
[00027f04] 206b 054c                 movea.l    1356(a3),a0
[00027f08] 2968 000c 0018            move.l     12(a0),24(a4)
[00027f0e] 206a 0026                 movea.l    38(a2),a0
[00027f12] 4eb9 0004 3a92            jsr        $00043A92
[00027f18] 4a40                      tst.w      d0
[00027f1a] 6712                      beq.s      $00027F2E
[00027f1c] 43f9 000b 5beb            lea.l      $000B5BEB,a1
[00027f22] 7038                      moveq.l    #56,d0
[00027f24] 204b                      movea.l    a3,a0
[00027f26] 4eb9 0004 afe0            jsr        $0004AFE0
[00027f2c] 600e                      bra.s      $00027F3C
[00027f2e] 226a 0026                 movea.l    38(a2),a1
[00027f32] 7038                      moveq.l    #56,d0
[00027f34] 204b                      movea.l    a3,a0
[00027f36] 4eb9 0004 afe0            jsr        $0004AFE0
[00027f3c] 206b 0564                 movea.l    1380(a3),a0
[00027f40] 2968 000c 001c            move.l     12(a0),28(a4)
[00027f46] 206a 002a                 movea.l    42(a2),a0
[00027f4a] 4eb9 0004 3a92            jsr        $00043A92
[00027f50] 4a40                      tst.w      d0
[00027f52] 6712                      beq.s      $00027F66
[00027f54] 43f9 000b 5beb            lea.l      $000B5BEB,a1
[00027f5a] 7039                      moveq.l    #57,d0
[00027f5c] 204b                      movea.l    a3,a0
[00027f5e] 4eb9 0004 afe0            jsr        $0004AFE0
[00027f64] 600e                      bra.s      $00027F74
[00027f66] 226a 002a                 movea.l    42(a2),a1
[00027f6a] 7039                      moveq.l    #57,d0
[00027f6c] 204b                      movea.l    a3,a0
[00027f6e] 4eb9 0004 afe0            jsr        $0004AFE0
[00027f74] 204b                      movea.l    a3,a0
[00027f76] 584f                      addq.w     #4,a7
[00027f78] 4cdf 7c08                 movem.l    (a7)+,d3/a2-a6
[00027f7c] 4e75                      rts
test_it:
[00027f7e] 2f0a                      move.l     a2,-(a7)
[00027f80] 2f0b                      move.l     a3,-(a7)
[00027f82] 2648                      movea.l    a0,a3
[00027f84] 2449                      movea.l    a1,a2
[00027f86] 22bc 0005 9f9c            move.l     #$00059F9C,(a1)
[00027f8c] 486a 0004                 pea.l      4(a2)
[00027f90] 43f9 000b 5c03            lea.l      $000B5C03,a1
[00027f96] 2050                      movea.l    (a0),a0
[00027f98] 4eb9 0007 594a            jsr        $0007594A
[00027f9e] 584f                      addq.w     #4,a7
[00027fa0] 257c 0005 9318 0008       move.l     #$00059318,8(a2)
[00027fa8] 0c6b 0002 0008            cmpi.w     #$0002,8(a3)
[00027fae] 6608                      bne.s      $00027FB8
[00027fb0] 256b 000a 000c            move.l     10(a3),12(a2)
[00027fb6] 6004                      bra.s      $00027FBC
[00027fb8] 42aa 000c                 clr.l      12(a2)
[00027fbc] 7000                      moveq.l    #0,d0
[00027fbe] 2540 0014                 move.l     d0,20(a2)
[00027fc2] 2540 0010                 move.l     d0,16(a2)
[00027fc6] 206b 0026                 movea.l    38(a3),a0
[00027fca] 4eb9 0004 3a92            jsr        $00043A92
[00027fd0] 4a40                      tst.w      d0
[00027fd2] 6704                      beq.s      $00027FD8
[00027fd4] 91c8                      suba.l     a0,a0
[00027fd6] 6004                      bra.s      $00027FDC
[00027fd8] 206b 0026                 movea.l    38(a3),a0
[00027fdc] 2548 0018                 move.l     a0,24(a2)
[00027fe0] 206b 002a                 movea.l    42(a3),a0
[00027fe4] 4eb9 0004 3a92            jsr        $00043A92
[00027fea] 4a40                      tst.w      d0
[00027fec] 6704                      beq.s      $00027FF2
[00027fee] 91c8                      suba.l     a0,a0
[00027ff0] 6004                      bra.s      $00027FF6
[00027ff2] 206b 002a                 movea.l    42(a3),a0
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
[00028042] 49f9 000f f5a6            lea.l      $000FF5A6,a4
[00028048] 2f2d 0004                 move.l     4(a5),-(a7)
[0002804c] 43f9 000b 5c03            lea.l      $000B5C03,a1
[00028052] 204c                      movea.l    a4,a0
[00028054] 4eb9 0007 5680            jsr        $00075680
[0002805a] 584f                      addq.w     #4,a7
[0002805c] 4bef 0004                 lea.l      4(a7),a5
[00028060] 2a8c                      move.l     a4,(a5)
[00028062] 2b7c 000b 5bf8 0004       move.l     #$000B5BF8,4(a5)
[0002806a] 43d7                      lea.l      (a7),a1
[0002806c] 7003                      moveq.l    #3,d0
[0002806e] 41eb 0150                 lea.l      336(a3),a0
[00028072] 4eb9 0005 e010            jsr        $0005E010
[00028078] 2057                      movea.l    (a7),a0
[0002807a] 1010                      move.b     (a0),d0
[0002807c] 671c                      beq.s      $0002809A
[0002807e] 4eb9 0007 69b0            jsr        $000769B0
[00028084] 2600                      move.l     d0,d3
[00028086] 5443                      addq.w     #2,d3
[00028088] 2052                      movea.l    (a2),a0
[0002808a] c7e8 0012                 muls.w     18(a0),d3
[0002808e] 3b7c 0002 0008            move.w     #$0002,8(a5)
[00028094] 2b57 000a                 move.l     (a7),10(a5)
[00028098] 6010                      bra.s      $000280AA
[0002809a] 2052                      movea.l    (a2),a0
[0002809c] 3628 0012                 move.w     18(a0),d3
[000280a0] d643                      add.w      d3,d3
[000280a2] 426d 0008                 clr.w      8(a5)
[000280a6] 42ad 000a                 clr.l      10(a5)
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
[000280d6] 4eb9 0005 e010            jsr        $0005E010
[000280dc] 206d 0026                 movea.l    38(a5),a0
[000280e0] 4eb9 0004 3a92            jsr        $00043A92
[000280e6] 4a40                      tst.w      d0
[000280e8] 6704                      beq.s      $000280EE
[000280ea] 42ad 0026                 clr.l      38(a5)
[000280ee] 43ed 002a                 lea.l      42(a5),a1
[000280f2] 7003                      moveq.l    #3,d0
[000280f4] 41eb 0558                 lea.l      1368(a3),a0
[000280f8] 4eb9 0005 e010            jsr        $0005E010
[000280fe] 206d 002a                 movea.l    42(a5),a0
[00028102] 4eb9 0004 3a92            jsr        $00043A92
[00028108] 4a40                      tst.w      d0
[0002810a] 6704                      beq.s      $00028110
[0002810c] 42ad 002a                 clr.l      42(a5)
[00028110] 2052                      movea.l    (a2),a0
[00028112] 3228 0014                 move.w     20(a0),d1
[00028116] 3003                      move.w     d3,d0
[00028118] 204d                      movea.l    a5,a0
[0002811a] 2279 000b 5bd6            movea.l    $000B5BD6,a1
[00028120] 2269 0004                 movea.l    4(a1),a1
[00028124] 4e91                      jsr        (a1)
[00028126] 6100 fed8                 bsr        $00028000
[0002812a] 4fef 0032                 lea.l      50(a7),a7
[0002812e] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00028132] 4e75                      rts
