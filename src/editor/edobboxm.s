
edbo_framecol:
[0002f702] 2f03                      move.l     d3,-(a7)
[0002f704] 702b                      moveq.l    #43,d0
[0002f706] 3f00                      move.w     d0,-(a7)
[0002f708] 742c                      moveq.l    #44,d2
[0002f70a] 7229                      moveq.l    #41,d1
[0002f70c] 2079 0010 1f12            movea.l    ACSblk,a0
[0002f712] 2268 025c                 movea.l    604(a0),a1
[0002f716] 3029 003e                 move.w     62(a1),d0
[0002f71a] 760c                      moveq.l    #12,d3
[0002f71c] e668                      lsr.w      d3,d0
[0002f71e] c07c 000f                 and.w      #$000F,d0
[0002f722] 4eb9 0002 f280            jsr        oe_colsel
[0002f728] 544f                      addq.w     #2,a7
[0002f72a] 3600                      move.w     d0,d3
[0002f72c] 6b24                      bmi.s      edbo_framecol_1
[0002f72e] 2079 0010 1f12            movea.l    ACSblk,a0
[0002f734] 2268 025c                 movea.l    604(a0),a1
[0002f738] 3203                      move.w     d3,d1
[0002f73a] 0269 0fff 003e            andi.w     #$0FFF,62(a1)
[0002f740] c27c 000f                 and.w      #$000F,d1
[0002f744] e149                      lsl.w      #8,d1
[0002f746] e949                      lsl.w      #4,d1
[0002f748] 8369 003e                 or.w       d1,62(a1)
[0002f74c] 4eb9 0002 fc5e            jsr        edbo_update
edbo_framecol_1:
[0002f752] 261f                      move.l     (a7)+,d3
[0002f754] 4e75                      rts

edbo_intercol:
[0002f756] 3f03                      move.w     d3,-(a7)
[0002f758] 7035                      moveq.l    #53,d0
[0002f75a] 3f00                      move.w     d0,-(a7)
[0002f75c] 7436                      moveq.l    #54,d2
[0002f75e] 7233                      moveq.l    #51,d1
[0002f760] 700f                      moveq.l    #15,d0
[0002f762] 2079 0010 1f12            movea.l    ACSblk,a0
[0002f768] 2268 025c                 movea.l    604(a0),a1
[0002f76c] c069 003e                 and.w      62(a1),d0
[0002f770] 4eb9 0002 f280            jsr        oe_colsel
[0002f776] 544f                      addq.w     #2,a7
[0002f778] 3600                      move.w     d0,d3
[0002f77a] 6b20                      bmi.s      edbo_intercol_1
[0002f77c] 2079 0010 1f12            movea.l    ACSblk,a0
[0002f782] 2268 025c                 movea.l    604(a0),a1
[0002f786] 3203                      move.w     d3,d1
[0002f788] 0269 fff0 003e            andi.w     #$FFF0,62(a1)
[0002f78e] c27c 000f                 and.w      #$000F,d1
[0002f792] 8369 003e                 or.w       d1,62(a1)
[0002f796] 4eb9 0002 fc5e            jsr        edbo_update
edbo_intercol_1:
[0002f79c] 361f                      move.w     (a7)+,d3
[0002f79e] 4e75                      rts

edbo_pattern:
[0002f7a0] 2f0a                      move.l     a2,-(a7)
[0002f7a2] 2f0b                      move.l     a3,-(a7)
[0002f7a4] 514f                      subq.w     #8,a7
[0002f7a6] 41f9 000b db68            lea.l      POP_PATSEL,a0
[0002f7ac] 4eb9 0004 9a5c            jsr        Aob_create
[0002f7b2] 2448                      movea.l    a0,a2
[0002f7b4] 200a                      move.l     a2,d0
[0002f7b6] 6700 00c6                 beq        edbo_pattern_1
[0002f7ba] 47f9 0010 1f12            lea.l      ACSblk,a3
[0002f7c0] 7031                      moveq.l    #49,d0
[0002f7c2] 2053                      movea.l    (a3),a0
[0002f7c4] 2268 0258                 movea.l    600(a0),a1
[0002f7c8] 2269 0014                 movea.l    20(a1),a1
[0002f7cc] 41d7                      lea.l      (a7),a0
[0002f7ce] 4eb9 0004 a3be            jsr        Aob_offset
[0002f7d4] 7001                      moveq.l    #1,d0
[0002f7d6] 2053                      movea.l    (a3),a0
[0002f7d8] 2268 0258                 movea.l    600(a0),a1
[0002f7dc] d069 0034                 add.w      52(a1),d0
[0002f7e0] d157                      add.w      d0,(a7)
[0002f7e2] 7201                      moveq.l    #1,d1
[0002f7e4] d269 0036                 add.w      54(a1),d1
[0002f7e8] d36f 0002                 add.w      d1,2(a7)
[0002f7ec] 2268 025c                 movea.l    604(a0),a1
[0002f7f0] 3029 003e                 move.w     62(a1),d0
[0002f7f4] e848                      lsr.w      #4,d0
[0002f7f6] c07c 0007                 and.w      #$0007,d0
[0002f7fa] 5240                      addq.w     #1,d0
[0002f7fc] 7200                      moveq.l    #0,d1
[0002f7fe] 3200                      move.w     d0,d1
[0002f800] 2401                      move.l     d1,d2
[0002f802] d482                      add.l      d2,d2
[0002f804] d481                      add.l      d1,d2
[0002f806] e78a                      lsl.l      #3,d2
[0002f808] 0072 0004 280a            ori.w      #$0004,10(a2,d2.l)
[0002f80e] 322f 0002                 move.w     2(a7),d1
[0002f812] 3017                      move.w     (a7),d0
[0002f814] 224a                      movea.l    a2,a1
[0002f816] 2053                      movea.l    (a3),a0
[0002f818] 2068 0258                 movea.l    600(a0),a0
[0002f81c] 4eb9 0004 948a            jsr        Ame_popup
[0002f822] 4a40                      tst.w      d0
[0002f824] 6f50                      ble.s      edbo_pattern_2
[0002f826] 2053                      movea.l    (a3),a0
[0002f828] 2268 025c                 movea.l    604(a0),a1
[0002f82c] 72ff                      moveq.l    #-1,d1
[0002f82e] d240                      add.w      d0,d1
[0002f830] 0269 ff8f 003e            andi.w     #$FF8F,62(a1)
[0002f836] c27c 0007                 and.w      #$0007,d1
[0002f83a] e949                      lsl.w      #4,d1
[0002f83c] 8369 003e                 or.w       d1,62(a1)
[0002f840] 2053                      movea.l    (a3),a0
[0002f842] 2268 025c                 movea.l    604(a0),a1
[0002f846] 72ff                      moveq.l    #-1,d1
[0002f848] d240                      add.w      d0,d1
[0002f84a] 0269 ff8f 04a6            andi.w     #$FF8F,1190(a1)
[0002f850] c27c 0007                 and.w      #$0007,d1
[0002f854] e949                      lsl.w      #4,d1
[0002f856] 8369 04a6                 or.w       d1,1190(a1)
[0002f85a] 72ff                      moveq.l    #-1,d1
[0002f85c] 7031                      moveq.l    #49,d0
[0002f85e] 2053                      movea.l    (a3),a0
[0002f860] 2068 0258                 movea.l    600(a0),a0
[0002f864] 2253                      movea.l    (a3),a1
[0002f866] 2269 0258                 movea.l    600(a1),a1
[0002f86a] 2269 0066                 movea.l    102(a1),a1
[0002f86e] 4e91                      jsr        (a1)
[0002f870] 4eb9 0002 fc5e            jsr        edbo_update
edbo_pattern_2:
[0002f876] 204a                      movea.l    a2,a0
[0002f878] 4eb9 0004 9b7c            jsr        Aob_delete
edbo_pattern_1:
[0002f87e] 504f                      addq.w     #8,a7
[0002f880] 265f                      movea.l    (a7)+,a3
[0002f882] 245f                      movea.l    (a7)+,a2
[0002f884] 4e75                      rts

edbo_replace:
[0002f886] 2079 0010 1f12            movea.l    ACSblk,a0
[0002f88c] 2268 025c                 movea.l    604(a0),a1
[0002f890] 0269 ff7f 003e            andi.w     #$FF7F,62(a1)
[0002f896] 0069 0080 003e            ori.w      #$0080,62(a1)
[0002f89c] 4eb9 0002 fc5e            jsr        edbo_update
[0002f8a2] 4e75                      rts

edbo_textcol:
[0002f8a4] 3f03                      move.w     d3,-(a7)
[0002f8a6] 700f                      moveq.l    #15,d0
[0002f8a8] 3f00                      move.w     d0,-(a7)
[0002f8aa] 7410                      moveq.l    #16,d2
[0002f8ac] 720d                      moveq.l    #13,d1
[0002f8ae] 2079 0010 1f12            movea.l    ACSblk,a0
[0002f8b4] 2268 025c                 movea.l    604(a0),a1
[0002f8b8] 3029 003e                 move.w     62(a1),d0
[0002f8bc] e048                      lsr.w      #8,d0
[0002f8be] c07c 000f                 and.w      #$000F,d0
[0002f8c2] 4eb9 0002 f280            jsr        oe_colsel
[0002f8c8] 544f                      addq.w     #2,a7
[0002f8ca] 3600                      move.w     d0,d3
[0002f8cc] 6b22                      bmi.s      edbo_textcol_1
[0002f8ce] 2079 0010 1f12            movea.l    ACSblk,a0
[0002f8d4] 2268 025c                 movea.l    604(a0),a1
[0002f8d8] 3203                      move.w     d3,d1
[0002f8da] 0269 f0ff 003e            andi.w     #$F0FF,62(a1)
[0002f8e0] c27c 000f                 and.w      #$000F,d1
[0002f8e4] e149                      lsl.w      #8,d1
[0002f8e6] 8369 003e                 or.w       d1,62(a1)
[0002f8ea] 4eb9 0002 fc5e            jsr        edbo_update
edbo_textcol_1:
[0002f8f0] 361f                      move.w     (a7)+,d3
[0002f8f2] 4e75                      rts

edbo_trans:
[0002f8f4] 2079 0010 1f12            movea.l    ACSblk,a0
[0002f8fa] 2268 025c                 movea.l    604(a0),a1
[0002f8fe] 0269 ff7f 003e            andi.w     #$FF7F,62(a1)
[0002f904] 4eb9 0002 fc5e            jsr        edbo_update
[0002f90a] 4e75                      rts

edbo_type:
[0002f90c] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0002f910] 514f                      subq.w     #8,a7
[0002f912] 45f9 000b dc88            lea.l      POP_TYPESEL,a2
[0002f918] 204a                      movea.l    a2,a0
[0002f91a] 4eb9 0004 9a5c            jsr        Aob_create
[0002f920] 2648                      movea.l    a0,a3
[0002f922] 200b                      move.l     a3,d0
[0002f924] 6700 010c                 beq        edbo_type_1
[0002f928] 49f9 0010 1f12            lea.l      ACSblk,a4
[0002f92e] 7005                      moveq.l    #5,d0
[0002f930] 2054                      movea.l    (a4),a0
[0002f932] 2268 0258                 movea.l    600(a0),a1
[0002f936] 2269 0014                 movea.l    20(a1),a1
[0002f93a] 41d7                      lea.l      (a7),a0
[0002f93c] 4eb9 0004 a3be            jsr        Aob_offset
[0002f942] 7001                      moveq.l    #1,d0
[0002f944] 2054                      movea.l    (a4),a0
[0002f946] 2268 0258                 movea.l    600(a0),a1
[0002f94a] d069 0034                 add.w      52(a1),d0
[0002f94e] d157                      add.w      d0,(a7)
[0002f950] 7201                      moveq.l    #1,d1
[0002f952] d269 0036                 add.w      54(a1),d1
[0002f956] d36f 0002                 add.w      d1,2(a7)
[0002f95a] 2268 025c                 movea.l    604(a0),a1
[0002f95e] 3429 0036                 move.w     54(a1),d2
[0002f962] 947c 0014                 sub.w      #$0014,d2
[0002f966] 670a                      beq.s      edbo_type_2
[0002f968] 5b42                      subq.w     #5,d2
[0002f96a] 670e                      beq.s      edbo_type_3
[0002f96c] 5542                      subq.w     #2,d2
[0002f96e] 6712                      beq.s      edbo_type_4
[0002f970] 6016                      bra.s      edbo_type_5
edbo_type_2:
[0002f972] 006b 0004 0022            ori.w      #$0004,34(a3)
[0002f978] 600e                      bra.s      edbo_type_5
edbo_type_3:
[0002f97a] 006b 0004 003a            ori.w      #$0004,58(a3)
[0002f980] 6006                      bra.s      edbo_type_5
edbo_type_4:
[0002f982] 006b 0004 0052            ori.w      #$0004,82(a3)
edbo_type_5:
[0002f988] 322f 0002                 move.w     2(a7),d1
[0002f98c] 3017                      move.w     (a7),d0
[0002f98e] 224b                      movea.l    a3,a1
[0002f990] 2054                      movea.l    (a4),a0
[0002f992] 2068 0258                 movea.l    600(a0),a0
[0002f996] 4eb9 0004 948a            jsr        Ame_popup
[0002f99c] 3600                      move.w     d0,d3
[0002f99e] 5340                      subq.w     #1,d0
[0002f9a0] 670a                      beq.s      edbo_type_6
[0002f9a2] 5340                      subq.w     #1,d0
[0002f9a4] 6726                      beq.s      edbo_type_7
[0002f9a6] 5340                      subq.w     #1,d0
[0002f9a8] 6742                      beq.s      edbo_type_8
[0002f9aa] 605e                      bra.s      edbo_type_9
edbo_type_6:
[0002f9ac] 2054                      movea.l    (a4),a0
[0002f9ae] 2268 025c                 movea.l    604(a0),a1
[0002f9b2] 337c 0014 0036            move.w     #$0014,54(a1)
[0002f9b8] 43ea f6f5                 lea.l      -2315(a2),a1
[0002f9bc] 7007                      moveq.l    #7,d0
[0002f9be] 2054                      movea.l    (a4),a0
[0002f9c0] 2068 025c                 movea.l    604(a0),a0
[0002f9c4] 4eb9 0004 afe0            jsr        Aob_puttext
[0002f9ca] 603e                      bra.s      edbo_type_9
edbo_type_7:
[0002f9cc] 2054                      movea.l    (a4),a0
[0002f9ce] 2268 025c                 movea.l    604(a0),a1
[0002f9d2] 337c 0019 0036            move.w     #$0019,54(a1)
[0002f9d8] 43ea f6fb                 lea.l      -2309(a2),a1
[0002f9dc] 7007                      moveq.l    #7,d0
[0002f9de] 2054                      movea.l    (a4),a0
[0002f9e0] 2068 025c                 movea.l    604(a0),a0
[0002f9e4] 4eb9 0004 afe0            jsr        Aob_puttext
[0002f9ea] 601e                      bra.s      edbo_type_9
edbo_type_8:
[0002f9ec] 2054                      movea.l    (a4),a0
[0002f9ee] 2268 025c                 movea.l    604(a0),a1
[0002f9f2] 337c 001b 0036            move.w     #$001B,54(a1)
[0002f9f8] 43ea f703                 lea.l      -2301(a2),a1
[0002f9fc] 7007                      moveq.l    #7,d0
[0002f9fe] 2054                      movea.l    (a4),a0
[0002fa00] 2068 025c                 movea.l    604(a0),a0
[0002fa04] 4eb9 0004 afe0            jsr        Aob_puttext
edbo_type_9:
[0002fa0a] 4a43                      tst.w      d3
[0002fa0c] 6f1c                      ble.s      edbo_type_10
[0002fa0e] 72ff                      moveq.l    #-1,d1
[0002fa10] 7005                      moveq.l    #5,d0
[0002fa12] 2054                      movea.l    (a4),a0
[0002fa14] 2068 0258                 movea.l    600(a0),a0
[0002fa18] 2254                      movea.l    (a4),a1
[0002fa1a] 2469 0258                 movea.l    600(a1),a2
[0002fa1e] 226a 0066                 movea.l    102(a2),a1
[0002fa22] 4e91                      jsr        (a1)
[0002fa24] 4eb9 0002 fc5e            jsr        edbo_update
edbo_type_10:
[0002fa2a] 204b                      movea.l    a3,a0
[0002fa2c] 4eb9 0004 9b7c            jsr        Aob_delete
edbo_type_1:
[0002fa32] 504f                      addq.w     #8,a7
[0002fa34] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0002fa38] 4e75                      rts

edbo_ok:
[0002fa3a] 48e7 0038                 movem.l    a2-a4,-(a7)
[0002fa3e] 594f                      subq.w     #4,a7
[0002fa40] 2079 0010 1f12            movea.l    ACSblk,a0
[0002fa46] 2268 0258                 movea.l    600(a0),a1
[0002fa4a] 2451                      movea.l    (a1),a2
[0002fa4c] 2669 0014                 movea.l    20(a1),a3
[0002fa50] 2052                      movea.l    (a2),a0
[0002fa52] 0068 0001 0006            ori.w      #$0001,6(a0)
[0002fa58] 206a 0004                 movea.l    4(a2),a0
[0002fa5c] 2868 0004                 movea.l    4(a0),a4
[0002fa60] 322a 000a                 move.w     10(a2),d1
[0002fa64] 48c1                      ext.l      d1
[0002fa66] 2001                      move.l     d1,d0
[0002fa68] e788                      lsl.l      #3,d0
[0002fa6a] 9081                      sub.l      d1,d0
[0002fa6c] e788                      lsl.l      #3,d0
[0002fa6e] d9c0                      adda.l     d0,a4
[0002fa70] 396b 0036 000e            move.w     54(a3),14(a4)
[0002fa76] 296b 003c 0014            move.l     60(a3),20(a4)
[0002fa7c] 43d7                      lea.l      (a7),a1
[0002fa7e] 7003                      moveq.l    #3,d0
[0002fa80] 41eb 01f8                 lea.l      504(a3),a0
[0002fa84] 4eb9 0005 e010            jsr        Auo_boxed
[0002fa8a] 2057                      movea.l    (a7),a0
[0002fa8c] 1010                      move.b     (a0),d0
[0002fa8e] 4880                      ext.w      d0
[0002fa90] 026c 00ff 0014            andi.w     #$00FF,20(a4)
[0002fa96] c07c 00ff                 and.w      #$00FF,d0
[0002fa9a] e148                      lsl.w      #8,d0
[0002fa9c] 816c 0014                 or.w       d0,20(a4)
[0002faa0] 4eb9 0002 d91e            jsr        ed_abort
[0002faa6] 584f                      addq.w     #4,a7
[0002faa8] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0002faac] 4e75                      rts

set_box:
[0002faae] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0002fab2] 554f                      subq.w     #2,a7
[0002fab4] 2648                      movea.l    a0,a3
[0002fab6] 49f9 000b e270            lea.l      colour_text,a4
[0002fabc] 41ec 0040                 lea.l      64(a4),a0
[0002fac0] 43d7                      lea.l      (a7),a1
[0002fac2] 12d8                      move.b     (a0)+,(a1)+
[0002fac4] 12d8                      move.b     (a0)+,(a1)+
[0002fac6] 41ec fa78                 lea.l      -1416(a4),a0
[0002faca] 4eb9 0004 9a5c            jsr        Aob_create
[0002fad0] 2448                      movea.l    a0,a2
[0002fad2] 200a                      move.l     a2,d0
[0002fad4] 6606                      bne.s      set_box_1
[0002fad6] 91c8                      suba.l     a0,a0
[0002fad8] 6000 0142                 bra        set_box_2
set_box_1:
[0002fadc] 356b 000e 0036            move.w     14(a3),54(a2)
[0002fae2] 256b 0014 003c            move.l     20(a3),60(a2)
[0002fae8] 356b 0012 003a            move.w     18(a3),58(a2)
[0002faee] 7015                      moveq.l    #21,d0
[0002faf0] 224a                      movea.l    a2,a1
[0002faf2] 2079 0010 1f12            movea.l    ACSblk,a0
[0002faf8] 2068 0258                 movea.l    600(a0),a0
[0002fafc] 4eb9 0002 f23c            jsr        oe_beself
[0002fb02] 302b 0014                 move.w     20(a3),d0
[0002fb06] e048                      lsr.w      #8,d0
[0002fb08] c07c 00ff                 and.w      #$00FF,d0
[0002fb0c] 1e80                      move.b     d0,(a7)
[0002fb0e] 43d7                      lea.l      (a7),a1
[0002fb10] 204a                      movea.l    a2,a0
[0002fb12] 7015                      moveq.l    #21,d0
[0002fb14] 4eb9 0004 afe0            jsr        Aob_puttext
[0002fb1a] 102b 000f                 move.b     15(a3),d0
[0002fb1e] 4880                      ext.w      d0
[0002fb20] 907c 0014                 sub.w      #$0014,d0
[0002fb24] 670a                      beq.s      set_box_3
[0002fb26] 5b40                      subq.w     #5,d0
[0002fb28] 6716                      beq.s      set_box_4
[0002fb2a] 5540                      subq.w     #2,d0
[0002fb2c] 6722                      beq.s      set_box_5
[0002fb2e] 602e                      bra.s      set_box_6
set_box_3:
[0002fb30] 43ec f10d                 lea.l      -3827(a4),a1
[0002fb34] 7007                      moveq.l    #7,d0
[0002fb36] 204a                      movea.l    a2,a0
[0002fb38] 4eb9 0004 afe0            jsr        Aob_puttext
[0002fb3e] 601e                      bra.s      set_box_6
set_box_4:
[0002fb40] 43ec f113                 lea.l      -3821(a4),a1
[0002fb44] 7007                      moveq.l    #7,d0
[0002fb46] 204a                      movea.l    a2,a0
[0002fb48] 4eb9 0004 afe0            jsr        Aob_puttext
[0002fb4e] 600e                      bra.s      set_box_6
set_box_5:
[0002fb50] 43ec f11b                 lea.l      -3813(a4),a1
[0002fb54] 7007                      moveq.l    #7,d0
[0002fb56] 204a                      movea.l    a2,a0
[0002fb58] 4eb9 0004 afe0            jsr        Aob_puttext
set_box_6:
[0002fb5e] 362b 0016                 move.w     22(a3),d3
[0002fb62] 700c                      moveq.l    #12,d0
[0002fb64] e06b                      lsr.w      d0,d3
[0002fb66] c67c 000f                 and.w      #$000F,d3
[0002fb6a] 3203                      move.w     d3,d1
[0002fb6c] e549                      lsl.w      #2,d1
[0002fb6e] 2274 1000                 movea.l    0(a4,d1.w),a1
[0002fb72] 204a                      movea.l    a2,a0
[0002fb74] 702c                      moveq.l    #44,d0
[0002fb76] 4eb9 0004 afe0            jsr        Aob_puttext
[0002fb7c] 3003                      move.w     d3,d0
[0002fb7e] 026a fff0 0416            andi.w     #$FFF0,1046(a2)
[0002fb84] c07c 000f                 and.w      #$000F,d0
[0002fb88] 816a 0416                 or.w       d0,1046(a2)
[0002fb8c] 760f                      moveq.l    #15,d3
[0002fb8e] c66b 0016                 and.w      22(a3),d3
[0002fb92] 3003                      move.w     d3,d0
[0002fb94] e548                      lsl.w      #2,d0
[0002fb96] 2274 0000                 movea.l    0(a4,d0.w),a1
[0002fb9a] 204a                      movea.l    a2,a0
[0002fb9c] 7036                      moveq.l    #54,d0
[0002fb9e] 4eb9 0004 afe0            jsr        Aob_puttext
[0002fba4] 3003                      move.w     d3,d0
[0002fba6] 026a fff0 0506            andi.w     #$FFF0,1286(a2)
[0002fbac] c07c 000f                 and.w      #$000F,d0
[0002fbb0] 816a 0506                 or.w       d0,1286(a2)
[0002fbb4] 302b 0016                 move.w     22(a3),d0
[0002fbb8] e848                      lsr.w      #4,d0
[0002fbba] c07c 0007                 and.w      #$0007,d0
[0002fbbe] 026a ff8f 04a6            andi.w     #$FF8F,1190(a2)
[0002fbc4] c07c 0007                 and.w      #$0007,d0
[0002fbc8] e948                      lsl.w      #4,d0
[0002fbca] 816a 04a6                 or.w       d0,1190(a2)
[0002fbce] 362b 0016                 move.w     22(a3),d3
[0002fbd2] e04b                      lsr.w      #8,d3
[0002fbd4] c67c 000f                 and.w      #$000F,d3
[0002fbd8] 3003                      move.w     d3,d0
[0002fbda] e548                      lsl.w      #2,d0
[0002fbdc] 2274 0000                 movea.l    0(a4,d0.w),a1
[0002fbe0] 204a                      movea.l    a2,a0
[0002fbe2] 7010                      moveq.l    #16,d0
[0002fbe4] 4eb9 0004 afe0            jsr        Aob_puttext
[0002fbea] 3003                      move.w     d3,d0
[0002fbec] 026a fff0 0176            andi.w     #$FFF0,374(a2)
[0002fbf2] c07c 000f                 and.w      #$000F,d0
[0002fbf6] 816a 0176                 or.w       d0,374(a2)
[0002fbfa] 302b 0016                 move.w     22(a3),d0
[0002fbfe] ee48                      lsr.w      #7,d0
[0002fc00] c07c 0001                 and.w      #$0001,d0
[0002fc04] 026a ff7f 003e            andi.w     #$FF7F,62(a2)
[0002fc0a] c07c 0001                 and.w      #$0001,d0
[0002fc0e] ef48                      lsl.w      #7,d0
[0002fc10] 816a 003e                 or.w       d0,62(a2)
[0002fc14] 294a 0042                 move.l     a2,66(a4)
[0002fc18] 41ec 0042                 lea.l      66(a4),a0
set_box_2:
[0002fc1c] 544f                      addq.w     #2,a7
[0002fc1e] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0002fc22] 4e75                      rts

edbo_th:
[0002fc24] 2079 0010 1f12            movea.l    ACSblk,a0
[0002fc2a] 2268 025c                 movea.l    604(a0),a1
[0002fc2e] 3228 0260                 move.w     608(a0),d1
[0002fc32] 48c1                      ext.l      d1
[0002fc34] 2001                      move.l     d1,d0
[0002fc36] d080                      add.l      d0,d0
[0002fc38] d081                      add.l      d1,d0
[0002fc3a] e788                      lsl.l      #3,d0
[0002fc3c] 2068 025c                 movea.l    604(a0),a0
[0002fc40] 3430 080c                 move.w     12(a0,d0.l),d2
[0002fc44] e14a                      lsl.w      #8,d2
[0002fc46] e042                      asr.w      #8,d2
[0002fc48] 0269 ff00 003c            andi.w     #$FF00,60(a1)
[0002fc4e] c47c 00ff                 and.w      #$00FF,d2
[0002fc52] 8569 003c                 or.w       d2,60(a1)
[0002fc56] 4eb9 0002 fc5e            jsr        edbo_update
[0002fc5c] 4e75                      rts

edbo_update:
[0002fc5e] 2f0a                      move.l     a2,-(a7)
[0002fc60] 2f0b                      move.l     a3,-(a7)
[0002fc62] 594f                      subq.w     #4,a7
[0002fc64] 2079 0010 1f12            movea.l    ACSblk,a0
[0002fc6a] 2468 0258                 movea.l    600(a0),a2
[0002fc6e] 266a 0014                 movea.l    20(a2),a3
[0002fc72] 43d7                      lea.l      (a7),a1
[0002fc74] 7003                      moveq.l    #3,d0
[0002fc76] 41eb 01f8                 lea.l      504(a3),a0
[0002fc7a] 4eb9 0005 e010            jsr        Auo_boxed
[0002fc80] 2057                      movea.l    (a7),a0
[0002fc82] 1010                      move.b     (a0),d0
[0002fc84] 4880                      ext.w      d0
[0002fc86] 026b 00ff 003c            andi.w     #$00FF,60(a3)
[0002fc8c] c07c 00ff                 and.w      #$00FF,d0
[0002fc90] e148                      lsl.w      #8,d0
[0002fc92] 816b 003c                 or.w       d0,60(a3)
[0002fc96] 322b 0022                 move.w     34(a3),d1
[0002fc9a] 7001                      moveq.l    #1,d0
[0002fc9c] 204a                      movea.l    a2,a0
[0002fc9e] 226a 0066                 movea.l    102(a2),a1
[0002fca2] 4e91                      jsr        (a1)
[0002fca4] 584f                      addq.w     #4,a7
[0002fca6] 265f                      movea.l    (a7)+,a3
[0002fca8] 245f                      movea.l    (a7)+,a2
[0002fcaa] 4e75                      rts

	.data

COLOUR00:
[000bd260]                           dc.b '  Weiû',0
COLOUR01:
[000bd267]                           dc.b '  Schwarz',0
COLOUR02:
[000bd271]                           dc.b '  Rot',0
COLOUR03:
[000bd277]                           dc.b '  GrÅn',0
COLOUR04:
[000bd27e]                           dc.b '  Blau',0
COLOUR05:
[000bd285]                           dc.b '  Cyan',0
COLOUR06:
[000bd28c]                           dc.b '  Gelb',0
[000bd293]                           dc.b $00
[000bd294]                           dc.b $00
COLOUR07:
[000bd295]                           dc.b '  Magenta',0
COLOUR08:
[000bd29f]                           dc.b '  Hellgrau',0
[000bd2aa]                           dc.b $00
[000bd2ab]                           dc.b $00
COLOUR09:
[000bd2ac]                           dc.b '  Dunkelgrau',0
COLOUR10:
[000bd2b9]                           dc.b '  Dunkelrot',0
COLOUR11:
[000bd2c5]                           dc.b '  DunkelgrÅn',0
COLOUR12:
[000bd2d2]                           dc.b '  Dunkelblau',0
COLOUR13:
[000bd2df]                           dc.b '  Dunkelcyan',0
COLOUR14:
[000bd2ec]                           dc.b '  Dunkelgelb',0
COLOUR15:
[000bd2f9]                           dc.b '  Dunkelmagenta',0
HPOS_TEXT1:
[000bd309]                           dc.b '  Links',0
HPOS_TEXT2:
[000bd311]                           dc.b '  Mitte',0
HPOS_TEXT3:
[000bd319]                           dc.b '  Rechts',0
SIZE_TEXT0:
[000bd322]                           dc.b 'groû',0
SIZE_TEXT1:
[000bd327]                           dc.b 'klein',0
TEXT_003:
[000bd32d]                           dc.b $4f
[000bd32e]                           dc.w $4b00
TEXT_004:
[000bd330]                           dc.b 'Abbruch',0
TEXT_01:
[000bd338]                           dc.b 'Muster:',0
TEXT_02:
[000bd340]                           dc.b 'Modus:',0
TEXT_03:
[000bd347]                           dc.b 'Zeichen:',0
TEXT_04:
[000bd350]                           dc.b 'Typ:',0
TEXT_05:
[000bd355]                           dc.b 'Rand:',0
TEXT_08:
[000bd35b]                           dc.b 'Rahmen:',0
TEXT_11:
[000bd363]                           dc.b 'Text:',0
TEXT_13:
[000bd369]                           dc.b 'Farbe:',0
TEXT_16:
[000bd370]                           dc.b 'InnenflÑche:',0
TYPE0:
[000bd37d]                           dc.b '  Box',0
TYPE1:
[000bd383]                           dc.b '  I-Box',0
TYPE2:
[000bd38b]                           dc.b '  BoxChar',0
help_title:
[000bd395]                           dc.b 'Der Boxen-Editor',0
title:
[000bd3a6]                           dc.b ' BOXEN -',0
[000bd3af]                           dc.b $00
A_3DBUTTON01:
[000bd3b0] 0005a4e2                  dc.l A_3Dbutton
[000bd3b4]                           dc.w $09f1
[000bd3b6]                           dc.w $0178
[000bd3b8] 00059318                  dc.l Auo_string
[000bd3bc] 000bd37d                  dc.l TYPE0
[000bd3c0]                           dc.b $00
[000bd3c1]                           dc.b $00
[000bd3c2]                           dc.b $00
[000bd3c3]                           dc.b $00
[000bd3c4]                           dc.b $00
[000bd3c5]                           dc.b $00
[000bd3c6]                           dc.b $00
[000bd3c7]                           dc.b $00
[000bd3c8]                           dc.b $00
[000bd3c9]                           dc.b $00
[000bd3ca]                           dc.b $00
[000bd3cb]                           dc.b $00
[000bd3cc]                           dc.b $00
[000bd3cd]                           dc.b $00
[000bd3ce]                           dc.b $00
[000bd3cf]                           dc.b $00
A_3DBUTTON02:
[000bd3d0] 0005a4e2                  dc.l A_3Dbutton
[000bd3d4]                           dc.w $29c1
[000bd3d6]                           dc.w $0178
[000bd3d8] 00059318                  dc.l Auo_string
[000bd3dc] 000bd32d                  dc.l TEXT_003
[000bd3e0]                           dc.b $00
[000bd3e1]                           dc.b $00
[000bd3e2]                           dc.b $00
[000bd3e3]                           dc.b $00
[000bd3e4]                           dc.b $00
[000bd3e5]                           dc.b $00
[000bd3e6]                           dc.b $00
[000bd3e7]                           dc.b $00
[000bd3e8]                           dc.b $00
[000bd3e9]                           dc.b $00
[000bd3ea]                           dc.b $00
[000bd3eb]                           dc.b $00
[000bd3ec]                           dc.b $00
[000bd3ed]                           dc.b $00
[000bd3ee]                           dc.b $00
[000bd3ef]                           dc.b $00
A_3DBUTTON03:
[000bd3f0] 0005a4e2                  dc.l A_3Dbutton
[000bd3f4]                           dc.w $09f1
[000bd3f6]                           dc.w $0178
[000bd3f8] 00059318                  dc.l Auo_string
[000bd3fc] 000bd267                  dc.l COLOUR01
[000bd400]                           dc.b $00
[000bd401]                           dc.b $00
[000bd402]                           dc.b $00
[000bd403]                           dc.b $00
[000bd404]                           dc.b $00
[000bd405]                           dc.b $00
[000bd406]                           dc.b $00
[000bd407]                           dc.b $00
[000bd408]                           dc.b $00
[000bd409]                           dc.b $00
[000bd40a]                           dc.b $00
[000bd40b]                           dc.b $00
[000bd40c]                           dc.b $00
[000bd40d]                           dc.b $00
[000bd40e]                           dc.b $00
[000bd40f]                           dc.b $00
A_3DBUTTON04:
[000bd410] 0005a4e2                  dc.l A_3Dbutton
[000bd414]                           dc.w $09f1
[000bd416]                           dc.w $0178
[000bd418] 00059318                  dc.l Auo_string
[000bd41c] 000bd383                  dc.l TYPE1
[000bd420]                           dc.b $00
[000bd421]                           dc.b $00
[000bd422]                           dc.b $00
[000bd423]                           dc.b $00
[000bd424]                           dc.b $00
[000bd425]                           dc.b $00
[000bd426]                           dc.b $00
[000bd427]                           dc.b $00
[000bd428]                           dc.b $00
[000bd429]                           dc.b $00
[000bd42a]                           dc.b $00
[000bd42b]                           dc.b $00
[000bd42c]                           dc.b $00
[000bd42d]                           dc.b $00
[000bd42e]                           dc.b $00
[000bd42f]                           dc.b $00
A_3DBUTTON05:
[000bd430] 0005a4e2                  dc.l A_3Dbutton
[000bd434]                           dc.w $21f1
[000bd436]                           dc.w $0178
[000bd438] 00059318                  dc.l Auo_string
[000bd43c]                           dc.b $00
[000bd43d]                           dc.b $00
[000bd43e]                           dc.b $00
[000bd43f]                           dc.b $00
[000bd440]                           dc.b $00
[000bd441]                           dc.b $00
[000bd442]                           dc.b $00
[000bd443]                           dc.b $00
[000bd444]                           dc.b $00
[000bd445]                           dc.b $00
[000bd446]                           dc.b $00
[000bd447]                           dc.b $00
[000bd448]                           dc.b $00
[000bd449]                           dc.b $00
[000bd44a]                           dc.b $00
[000bd44b]                           dc.b $00
[000bd44c]                           dc.b $00
[000bd44d]                           dc.b $00
[000bd44e]                           dc.b $00
[000bd44f]                           dc.b $00
A_3DBUTTON06:
[000bd450] 0005a4e2                  dc.l A_3Dbutton
[000bd454]                           dc.w $29c1
[000bd456]                           dc.w $0178
[000bd458] 00059318                  dc.l Auo_string
[000bd45c] 000bd330                  dc.l TEXT_004
[000bd460]                           dc.b $00
[000bd461]                           dc.b $00
[000bd462]                           dc.b $00
[000bd463]                           dc.b $00
[000bd464]                           dc.b $00
[000bd465]                           dc.b $00
[000bd466]                           dc.b $00
[000bd467]                           dc.b $00
[000bd468]                           dc.b $00
[000bd469]                           dc.b $00
[000bd46a]                           dc.b $00
[000bd46b]                           dc.b $00
[000bd46c]                           dc.b $00
[000bd46d]                           dc.b $00
[000bd46e]                           dc.b $00
[000bd46f]                           dc.b $00
A_3DBUTTON07:
[000bd470] 0005a4e2                  dc.l A_3Dbutton
[000bd474]                           dc.w $09f1
[000bd476]                           dc.w $0178
[000bd478] 00059318                  dc.l Auo_string
[000bd47c] 000bd271                  dc.l COLOUR02
[000bd480]                           dc.b $00
[000bd481]                           dc.b $00
[000bd482]                           dc.b $00
[000bd483]                           dc.b $00
[000bd484]                           dc.b $00
[000bd485]                           dc.b $00
[000bd486]                           dc.b $00
[000bd487]                           dc.b $00
[000bd488]                           dc.b $00
[000bd489]                           dc.b $00
[000bd48a]                           dc.b $00
[000bd48b]                           dc.b $00
[000bd48c]                           dc.b $00
[000bd48d]                           dc.b $00
[000bd48e]                           dc.b $00
[000bd48f]                           dc.b $00
A_3DBUTTON08:
[000bd490] 0005a4e2                  dc.l A_3Dbutton
[000bd494]                           dc.w $09f1
[000bd496]                           dc.w $0178
[000bd498] 00059318                  dc.l Auo_string
[000bd49c] 000bd38b                  dc.l TYPE2
[000bd4a0]                           dc.b $00
[000bd4a1]                           dc.b $00
[000bd4a2]                           dc.b $00
[000bd4a3]                           dc.b $00
[000bd4a4]                           dc.b $00
[000bd4a5]                           dc.b $00
[000bd4a6]                           dc.b $00
[000bd4a7]                           dc.b $00
[000bd4a8]                           dc.b $00
[000bd4a9]                           dc.b $00
[000bd4aa]                           dc.b $00
[000bd4ab]                           dc.b $00
[000bd4ac]                           dc.b $00
[000bd4ad]                           dc.b $00
[000bd4ae]                           dc.b $00
[000bd4af]                           dc.b $00
A_3DBUTTON09:
[000bd4b0] 0005a4e2                  dc.l A_3Dbutton
[000bd4b4]                           dc.w $09f1
[000bd4b6]                           dc.w $0178
[000bd4b8] 00059318                  dc.l Auo_string
[000bd4bc] 000bd260                  dc.l COLOUR00
[000bd4c0]                           dc.b $00
[000bd4c1]                           dc.b $00
[000bd4c2]                           dc.b $00
[000bd4c3]                           dc.b $00
[000bd4c4]                           dc.b $00
[000bd4c5]                           dc.b $00
[000bd4c6]                           dc.b $00
[000bd4c7]                           dc.b $00
[000bd4c8]                           dc.b $00
[000bd4c9]                           dc.b $00
[000bd4ca]                           dc.b $00
[000bd4cb]                           dc.b $00
[000bd4cc]                           dc.b $00
[000bd4cd]                           dc.b $00
[000bd4ce]                           dc.b $00
[000bd4cf]                           dc.b $00
A_3DBUTTON10:
[000bd4d0] 0005a4e2                  dc.l A_3Dbutton
[000bd4d4]                           dc.w $09f1
[000bd4d6]                           dc.w $0178
[000bd4d8] 00059318                  dc.l Auo_string
[000bd4dc] 000bd277                  dc.l COLOUR03
[000bd4e0]                           dc.b $00
[000bd4e1]                           dc.b $00
[000bd4e2]                           dc.b $00
[000bd4e3]                           dc.b $00
[000bd4e4]                           dc.b $00
[000bd4e5]                           dc.b $00
[000bd4e6]                           dc.b $00
[000bd4e7]                           dc.b $00
[000bd4e8]                           dc.b $00
[000bd4e9]                           dc.b $00
[000bd4ea]                           dc.b $00
[000bd4eb]                           dc.b $00
[000bd4ec]                           dc.b $00
[000bd4ed]                           dc.b $00
[000bd4ee]                           dc.b $00
[000bd4ef]                           dc.b $00
A_3DBUTTON11:
[000bd4f0] 0005a4e2                  dc.l A_3Dbutton
[000bd4f4]                           dc.w $09f1
[000bd4f6]                           dc.w $0178
[000bd4f8] 00059318                  dc.l Auo_string
[000bd4fc] 000bd27e                  dc.l COLOUR04
[000bd500]                           dc.b $00
[000bd501]                           dc.b $00
[000bd502]                           dc.b $00
[000bd503]                           dc.b $00
[000bd504]                           dc.b $00
[000bd505]                           dc.b $00
[000bd506]                           dc.b $00
[000bd507]                           dc.b $00
[000bd508]                           dc.b $00
[000bd509]                           dc.b $00
[000bd50a]                           dc.b $00
[000bd50b]                           dc.b $00
[000bd50c]                           dc.b $00
[000bd50d]                           dc.b $00
[000bd50e]                           dc.b $00
[000bd50f]                           dc.b $00
A_3DBUTTON12:
[000bd510] 0005a4e2                  dc.l A_3Dbutton
[000bd514]                           dc.w $09f1
[000bd516]                           dc.w $0178
[000bd518] 00059318                  dc.l Auo_string
[000bd51c] 000bd285                  dc.l COLOUR05
[000bd520]                           dc.b $00
[000bd521]                           dc.b $00
[000bd522]                           dc.b $00
[000bd523]                           dc.b $00
[000bd524]                           dc.b $00
[000bd525]                           dc.b $00
[000bd526]                           dc.b $00
[000bd527]                           dc.b $00
[000bd528]                           dc.b $00
[000bd529]                           dc.b $00
[000bd52a]                           dc.b $00
[000bd52b]                           dc.b $00
[000bd52c]                           dc.b $00
[000bd52d]                           dc.b $00
[000bd52e]                           dc.b $00
[000bd52f]                           dc.b $00
A_3DBUTTON13:
[000bd530] 0005a4e2                  dc.l A_3Dbutton
[000bd534]                           dc.w $09f1
[000bd536]                           dc.w $0178
[000bd538] 00059318                  dc.l Auo_string
[000bd53c] 000bd28c                  dc.l COLOUR06
[000bd540]                           dc.b $00
[000bd541]                           dc.b $00
[000bd542]                           dc.b $00
[000bd543]                           dc.b $00
[000bd544]                           dc.b $00
[000bd545]                           dc.b $00
[000bd546]                           dc.b $00
[000bd547]                           dc.b $00
[000bd548]                           dc.b $00
[000bd549]                           dc.b $00
[000bd54a]                           dc.b $00
[000bd54b]                           dc.b $00
[000bd54c]                           dc.b $00
[000bd54d]                           dc.b $00
[000bd54e]                           dc.b $00
[000bd54f]                           dc.b $00
A_3DBUTTON14:
[000bd550] 0005a4e2                  dc.l A_3Dbutton
[000bd554]                           dc.w $09f1
[000bd556]                           dc.w $0178
[000bd558] 00059318                  dc.l Auo_string
[000bd55c] 000bd295                  dc.l COLOUR07
[000bd560]                           dc.b $00
[000bd561]                           dc.b $00
[000bd562]                           dc.b $00
[000bd563]                           dc.b $00
[000bd564]                           dc.b $00
[000bd565]                           dc.b $00
[000bd566]                           dc.b $00
[000bd567]                           dc.b $00
[000bd568]                           dc.b $00
[000bd569]                           dc.b $00
[000bd56a]                           dc.b $00
[000bd56b]                           dc.b $00
[000bd56c]                           dc.b $00
[000bd56d]                           dc.b $00
[000bd56e]                           dc.b $00
[000bd56f]                           dc.b $00
A_3DBUTTON15:
[000bd570] 0005a4e2                  dc.l A_3Dbutton
[000bd574]                           dc.w $09f1
[000bd576]                           dc.w $0178
[000bd578] 00059318                  dc.l Auo_string
[000bd57c] 000bd29f                  dc.l COLOUR08
[000bd580]                           dc.b $00
[000bd581]                           dc.b $00
[000bd582]                           dc.b $00
[000bd583]                           dc.b $00
[000bd584]                           dc.b $00
[000bd585]                           dc.b $00
[000bd586]                           dc.b $00
[000bd587]                           dc.b $00
[000bd588]                           dc.b $00
[000bd589]                           dc.b $00
[000bd58a]                           dc.b $00
[000bd58b]                           dc.b $00
[000bd58c]                           dc.b $00
[000bd58d]                           dc.b $00
[000bd58e]                           dc.b $00
[000bd58f]                           dc.b $00
A_3DBUTTON16:
[000bd590] 0005a4e2                  dc.l A_3Dbutton
[000bd594]                           dc.w $09f1
[000bd596]                           dc.w $0178
[000bd598] 00059318                  dc.l Auo_string
[000bd59c] 000bd2ac                  dc.l COLOUR09
[000bd5a0]                           dc.b $00
[000bd5a1]                           dc.b $00
[000bd5a2]                           dc.b $00
[000bd5a3]                           dc.b $00
[000bd5a4]                           dc.b $00
[000bd5a5]                           dc.b $00
[000bd5a6]                           dc.b $00
[000bd5a7]                           dc.b $00
[000bd5a8]                           dc.b $00
[000bd5a9]                           dc.b $00
[000bd5aa]                           dc.b $00
[000bd5ab]                           dc.b $00
[000bd5ac]                           dc.b $00
[000bd5ad]                           dc.b $00
[000bd5ae]                           dc.b $00
[000bd5af]                           dc.b $00
A_3DBUTTON17:
[000bd5b0] 0005a4e2                  dc.l A_3Dbutton
[000bd5b4]                           dc.w $09f1
[000bd5b6]                           dc.w $0178
[000bd5b8] 00059318                  dc.l Auo_string
[000bd5bc] 000bd2b9                  dc.l COLOUR10
[000bd5c0]                           dc.b $00
[000bd5c1]                           dc.b $00
[000bd5c2]                           dc.b $00
[000bd5c3]                           dc.b $00
[000bd5c4]                           dc.b $00
[000bd5c5]                           dc.b $00
[000bd5c6]                           dc.b $00
[000bd5c7]                           dc.b $00
[000bd5c8]                           dc.b $00
[000bd5c9]                           dc.b $00
[000bd5ca]                           dc.b $00
[000bd5cb]                           dc.b $00
[000bd5cc]                           dc.b $00
[000bd5cd]                           dc.b $00
[000bd5ce]                           dc.b $00
[000bd5cf]                           dc.b $00
A_3DBUTTON18:
[000bd5d0] 0005a4e2                  dc.l A_3Dbutton
[000bd5d4]                           dc.w $09f1
[000bd5d6]                           dc.w $0178
[000bd5d8] 00059318                  dc.l Auo_string
[000bd5dc] 000bd2c5                  dc.l COLOUR11
[000bd5e0]                           dc.b $00
[000bd5e1]                           dc.b $00
[000bd5e2]                           dc.b $00
[000bd5e3]                           dc.b $00
[000bd5e4]                           dc.b $00
[000bd5e5]                           dc.b $00
[000bd5e6]                           dc.b $00
[000bd5e7]                           dc.b $00
[000bd5e8]                           dc.b $00
[000bd5e9]                           dc.b $00
[000bd5ea]                           dc.b $00
[000bd5eb]                           dc.b $00
[000bd5ec]                           dc.b $00
[000bd5ed]                           dc.b $00
[000bd5ee]                           dc.b $00
[000bd5ef]                           dc.b $00
A_3DBUTTON19:
[000bd5f0] 0005a4e2                  dc.l A_3Dbutton
[000bd5f4]                           dc.w $09f1
[000bd5f6]                           dc.w $0178
[000bd5f8] 00059318                  dc.l Auo_string
[000bd5fc] 000bd2df                  dc.l COLOUR13
[000bd600]                           dc.b $00
[000bd601]                           dc.b $00
[000bd602]                           dc.b $00
[000bd603]                           dc.b $00
[000bd604]                           dc.b $00
[000bd605]                           dc.b $00
[000bd606]                           dc.b $00
[000bd607]                           dc.b $00
[000bd608]                           dc.b $00
[000bd609]                           dc.b $00
[000bd60a]                           dc.b $00
[000bd60b]                           dc.b $00
[000bd60c]                           dc.b $00
[000bd60d]                           dc.b $00
[000bd60e]                           dc.b $00
[000bd60f]                           dc.b $00
A_3DBUTTON20:
[000bd610] 0005a4e2                  dc.l A_3Dbutton
[000bd614]                           dc.w $09f1
[000bd616]                           dc.w $0178
[000bd618] 00059318                  dc.l Auo_string
[000bd61c] 000bd2d2                  dc.l COLOUR12
[000bd620]                           dc.b $00
[000bd621]                           dc.b $00
[000bd622]                           dc.b $00
[000bd623]                           dc.b $00
[000bd624]                           dc.b $00
[000bd625]                           dc.b $00
[000bd626]                           dc.b $00
[000bd627]                           dc.b $00
[000bd628]                           dc.b $00
[000bd629]                           dc.b $00
[000bd62a]                           dc.b $00
[000bd62b]                           dc.b $00
[000bd62c]                           dc.b $00
[000bd62d]                           dc.b $00
[000bd62e]                           dc.b $00
[000bd62f]                           dc.b $00
A_3DBUTTON21:
[000bd630] 0005a4e2                  dc.l A_3Dbutton
[000bd634]                           dc.w $09f1
[000bd636]                           dc.w $0178
[000bd638] 00059318                  dc.l Auo_string
[000bd63c] 000bd2ec                  dc.l COLOUR14
[000bd640]                           dc.b $00
[000bd641]                           dc.b $00
[000bd642]                           dc.b $00
[000bd643]                           dc.b $00
[000bd644]                           dc.b $00
[000bd645]                           dc.b $00
[000bd646]                           dc.b $00
[000bd647]                           dc.b $00
[000bd648]                           dc.b $00
[000bd649]                           dc.b $00
[000bd64a]                           dc.b $00
[000bd64b]                           dc.b $00
[000bd64c]                           dc.b $00
[000bd64d]                           dc.b $00
[000bd64e]                           dc.b $00
[000bd64f]                           dc.b $00
A_3DBUTTON22:
[000bd650] 0005a4e2                  dc.l A_3Dbutton
[000bd654]                           dc.w $09f1
[000bd656]                           dc.w $0178
[000bd658] 00059318                  dc.l Auo_string
[000bd65c] 000bd2f9                  dc.l COLOUR15
[000bd660]                           dc.b $00
[000bd661]                           dc.b $00
[000bd662]                           dc.b $00
[000bd663]                           dc.b $00
[000bd664]                           dc.b $00
[000bd665]                           dc.b $00
[000bd666]                           dc.b $00
[000bd667]                           dc.b $00
[000bd668]                           dc.b $00
[000bd669]                           dc.b $00
[000bd66a]                           dc.b $00
[000bd66b]                           dc.b $00
[000bd66c]                           dc.b $00
[000bd66d]                           dc.b $00
[000bd66e]                           dc.b $00
[000bd66f]                           dc.b $00
A_3DBUTTON23:
[000bd670] 0005a4e2                  dc.l A_3Dbutton
[000bd674]                           dc.w $09f1
[000bd676]                           dc.w $0178
[000bd678] 00059318                  dc.l Auo_string
[000bd67c]                           dc.b $00
[000bd67d]                           dc.b $00
[000bd67e]                           dc.b $00
[000bd67f]                           dc.b $00
[000bd680]                           dc.b $00
[000bd681]                           dc.b $00
[000bd682]                           dc.b $00
[000bd683]                           dc.b $00
[000bd684]                           dc.b $00
[000bd685]                           dc.b $00
[000bd686]                           dc.b $00
[000bd687]                           dc.b $00
[000bd688]                           dc.b $00
[000bd689]                           dc.b $00
[000bd68a]                           dc.b $00
[000bd68b]                           dc.b $00
[000bd68c]                           dc.b $00
[000bd68d]                           dc.b $00
[000bd68e]                           dc.b $00
[000bd68f]                           dc.b $00
A_3DBUTTON25:
[000bd690] 0005a4e2                  dc.l A_3Dbutton
[000bd694]                           dc.w $29f1
[000bd696]                           dc.w $0178
[000bd698] 00059318                  dc.l Auo_string
[000bd69c] 000bd322                  dc.l SIZE_TEXT0
[000bd6a0]                           dc.b $00
[000bd6a1]                           dc.b $00
[000bd6a2]                           dc.b $00
[000bd6a3]                           dc.b $00
[000bd6a4]                           dc.b $00
[000bd6a5]                           dc.b $00
[000bd6a6]                           dc.b $00
[000bd6a7]                           dc.b $00
[000bd6a8]                           dc.b $00
[000bd6a9]                           dc.b $00
[000bd6aa]                           dc.b $00
[000bd6ab]                           dc.b $00
[000bd6ac]                           dc.b $00
[000bd6ad]                           dc.b $00
[000bd6ae]                           dc.b $00
[000bd6af]                           dc.b $00
A_3DBUTTON27:
[000bd6b0] 0005a4e2                  dc.l A_3Dbutton
[000bd6b4]                           dc.w $09f1
[000bd6b6]                           dc.w $0178
[000bd6b8] 00059318                  dc.l Auo_string
[000bd6bc] 000bd309                  dc.l HPOS_TEXT1
[000bd6c0]                           dc.b $00
[000bd6c1]                           dc.b $00
[000bd6c2]                           dc.b $00
[000bd6c3]                           dc.b $00
[000bd6c4]                           dc.b $00
[000bd6c5]                           dc.b $00
[000bd6c6]                           dc.b $00
[000bd6c7]                           dc.b $00
[000bd6c8]                           dc.b $00
[000bd6c9]                           dc.b $00
[000bd6ca]                           dc.b $00
[000bd6cb]                           dc.b $00
[000bd6cc]                           dc.b $00
[000bd6cd]                           dc.b $00
[000bd6ce]                           dc.b $00
[000bd6cf]                           dc.b $00
A_3DBUTTON28:
[000bd6d0] 0005a4e2                  dc.l A_3Dbutton
[000bd6d4]                           dc.w $09f1
[000bd6d6]                           dc.w $0178
[000bd6d8] 00059318                  dc.l Auo_string
[000bd6dc] 000bd311                  dc.l HPOS_TEXT2
[000bd6e0]                           dc.b $00
[000bd6e1]                           dc.b $00
[000bd6e2]                           dc.b $00
[000bd6e3]                           dc.b $00
[000bd6e4]                           dc.b $00
[000bd6e5]                           dc.b $00
[000bd6e6]                           dc.b $00
[000bd6e7]                           dc.b $00
[000bd6e8]                           dc.b $00
[000bd6e9]                           dc.b $00
[000bd6ea]                           dc.b $00
[000bd6eb]                           dc.b $00
[000bd6ec]                           dc.b $00
[000bd6ed]                           dc.b $00
[000bd6ee]                           dc.b $00
[000bd6ef]                           dc.b $00
A_3DBUTTON29:
[000bd6f0] 0005a4e2                  dc.l A_3Dbutton
[000bd6f4]                           dc.w $09f1
[000bd6f6]                           dc.w $0178
[000bd6f8] 00059318                  dc.l Auo_string
[000bd6fc] 000bd319                  dc.l HPOS_TEXT3
[000bd700]                           dc.b $00
[000bd701]                           dc.b $00
[000bd702]                           dc.b $00
[000bd703]                           dc.b $00
[000bd704]                           dc.b $00
[000bd705]                           dc.b $00
[000bd706]                           dc.b $00
[000bd707]                           dc.b $00
[000bd708]                           dc.b $00
[000bd709]                           dc.b $00
[000bd70a]                           dc.b $00
[000bd70b]                           dc.b $00
[000bd70c]                           dc.b $00
[000bd70d]                           dc.b $00
[000bd70e]                           dc.b $00
[000bd70f]                           dc.b $00
A_3DBUTTON30:
[000bd710] 0005a4e2                  dc.l A_3Dbutton
[000bd714]                           dc.w $29f1
[000bd716]                           dc.w $0178
[000bd718] 00059318                  dc.l Auo_string
[000bd71c]                           dc.b $00
[000bd71d]                           dc.b $00
[000bd71e]                           dc.b $00
[000bd71f]                           dc.b $00
[000bd720]                           dc.b $00
[000bd721]                           dc.b $00
[000bd722]                           dc.b $00
[000bd723]                           dc.b $00
[000bd724]                           dc.b $00
[000bd725]                           dc.b $00
[000bd726]                           dc.b $00
[000bd727]                           dc.b $00
[000bd728]                           dc.b $00
[000bd729]                           dc.b $00
[000bd72a]                           dc.b $00
[000bd72b]                           dc.b $00
[000bd72c]                           dc.b $00
[000bd72d]                           dc.b $00
[000bd72e]                           dc.b $00
[000bd72f]                           dc.b $00
A_3DBUTTON31:
[000bd730] 0005a4e2                  dc.l A_3Dbutton
[000bd734]                           dc.w $29f1
[000bd736]                           dc.w $0178
[000bd738] 00059318                  dc.l Auo_string
[000bd73c] 000bd327                  dc.l SIZE_TEXT1
[000bd740]                           dc.b $00
[000bd741]                           dc.b $00
[000bd742]                           dc.b $00
[000bd743]                           dc.b $00
[000bd744]                           dc.b $00
[000bd745]                           dc.b $00
[000bd746]                           dc.b $00
[000bd747]                           dc.b $00
[000bd748]                           dc.b $00
[000bd749]                           dc.b $00
[000bd74a]                           dc.b $00
[000bd74b]                           dc.b $00
[000bd74c]                           dc.b $00
[000bd74d]                           dc.b $00
[000bd74e]                           dc.b $00
[000bd74f]                           dc.b $00
A_ARROWS02:
[000bd750] 0005b212                  dc.l A_arrows
[000bd754]                           dc.w $1301
[000bd756]                           dc.b $00
[000bd757]                           dc.b $01
[000bd758]                           dc.b $00
[000bd759]                           dc.b $00
[000bd75a]                           dc.b $00
[000bd75b]                           dc.b $00
[000bd75c]                           dc.b $00
[000bd75d]                           dc.b $00
[000bd75e]                           dc.b $00
[000bd75f]                           dc.b $00
[000bd760]                           dc.b $00
[000bd761]                           dc.b $00
[000bd762]                           dc.b $00
[000bd763]                           dc.b $00
[000bd764]                           dc.b $00
[000bd765]                           dc.b $00
[000bd766]                           dc.b $00
[000bd767]                           dc.b $00
[000bd768]                           dc.b $00
[000bd769]                           dc.b $00
[000bd76a]                           dc.b $00
[000bd76b]                           dc.b $00
[000bd76c]                           dc.b $00
[000bd76d]                           dc.b $00
[000bd76e]                           dc.b $00
[000bd76f]                           dc.b $00
A_BOXED01:
[000bd770] 0005e9d2                  dc.l A_boxed
[000bd774]                           dc.w $9000
[000bd776]                           dc.w $0112
[000bd778] 0005e010                  dc.l Auo_boxed
[000bd77c]                           dc.b $00
[000bd77d]                           dc.b $00
[000bd77e]                           dc.b $00
[000bd77f]                           dc.b $00
[000bd780]                           dc.b $00
[000bd781]                           dc.b $00
[000bd782]                           dc.b $00
[000bd783]                           dc.b $00
[000bd784]                           dc.b $00
[000bd785]                           dc.b $00
[000bd786]                           dc.b $00
[000bd787]                           dc.b $00
[000bd788]                           dc.b $00
[000bd789]                           dc.b $00
[000bd78a]                           dc.b $00
[000bd78b]                           dc.b $00
[000bd78c]                           dc.b $00
[000bd78d]                           dc.b $00
[000bd78e]                           dc.b $00
[000bd78f]                           dc.b $00
A_INNERFRAME01:
[000bd790] 00059f9c                  dc.l A_innerframe
[000bd794]                           dc.w $1000
[000bd796]                           dc.w $8f19
[000bd798] 00059318                  dc.l Auo_string
[000bd79c] 000bd370                  dc.l TEXT_16
[000bd7a0]                           dc.b $00
[000bd7a1]                           dc.b $00
[000bd7a2]                           dc.b $00
[000bd7a3]                           dc.b $00
[000bd7a4]                           dc.b $00
[000bd7a5]                           dc.b $00
[000bd7a6]                           dc.b $00
[000bd7a7]                           dc.b $00
[000bd7a8]                           dc.b $00
[000bd7a9]                           dc.b $00
[000bd7aa]                           dc.b $00
[000bd7ab]                           dc.b $00
[000bd7ac]                           dc.b $00
[000bd7ad]                           dc.b $00
[000bd7ae]                           dc.b $00
[000bd7af]                           dc.b $00
A_INNERFRAME04:
[000bd7b0] 00059f9c                  dc.l A_innerframe
[000bd7b4]                           dc.w $1000
[000bd7b6]                           dc.w $8f19
[000bd7b8] 00059318                  dc.l Auo_string
[000bd7bc] 000bd35b                  dc.l TEXT_08
[000bd7c0]                           dc.b $00
[000bd7c1]                           dc.b $00
[000bd7c2]                           dc.b $00
[000bd7c3]                           dc.b $00
[000bd7c4]                           dc.b $00
[000bd7c5]                           dc.b $00
[000bd7c6]                           dc.b $00
[000bd7c7]                           dc.b $00
[000bd7c8]                           dc.b $00
[000bd7c9]                           dc.b $00
[000bd7ca]                           dc.b $00
[000bd7cb]                           dc.b $00
[000bd7cc]                           dc.b $00
[000bd7cd]                           dc.b $00
[000bd7ce]                           dc.b $00
[000bd7cf]                           dc.b $00
A_INNERFRAME05:
[000bd7d0] 00059f9c                  dc.l A_innerframe
[000bd7d4]                           dc.w $1000
[000bd7d6]                           dc.w $8f19
[000bd7d8] 00059318                  dc.l Auo_string
[000bd7dc] 000bd363                  dc.l TEXT_11
[000bd7e0]                           dc.b $00
[000bd7e1]                           dc.b $00
[000bd7e2]                           dc.b $00
[000bd7e3]                           dc.b $00
[000bd7e4]                           dc.b $00
[000bd7e5]                           dc.b $00
[000bd7e6]                           dc.b $00
[000bd7e7]                           dc.b $00
[000bd7e8]                           dc.b $00
[000bd7e9]                           dc.b $00
[000bd7ea]                           dc.b $00
[000bd7eb]                           dc.b $00
[000bd7ec]                           dc.b $00
[000bd7ed]                           dc.b $00
[000bd7ee]                           dc.b $00
[000bd7ef]                           dc.b $00
POP_COLSEL:
[000bd7f0]                           dc.w $ffff
[000bd7f2]                           dc.b $00
[000bd7f3]                           dc.b $01
[000bd7f4]                           dc.b $00
[000bd7f5]                           dc.b $20
[000bd7f6]                           dc.b $00
[000bd7f7]                           dc.b $14
[000bd7f8]                           dc.b $00
[000bd7f9]                           dc.b $00
[000bd7fa]                           dc.b $00
[000bd7fb]                           dc.b $20
[000bd7fc]                           dc.b $00
[000bd7fd]                           dc.b $ff
[000bd7fe]                           dc.w $1100
[000bd800]                           dc.b $00
[000bd801]                           dc.b $00
[000bd802]                           dc.b $00
[000bd803]                           dc.b $00
[000bd804]                           dc.b $00
[000bd805]                           dc.b $12
[000bd806]                           dc.b $00
[000bd807]                           dc.b $10
_01_POP_COLSEL:
[000bd808]                           dc.b $00
[000bd809]                           dc.b $02
[000bd80a]                           dc.w $ffff
[000bd80c]                           dc.w $ffff
[000bd80e]                           dc.b $00
[000bd80f]                           dc.b $18
[000bd810]                           dc.b $00
[000bd811]                           dc.b $41
[000bd812]                           dc.b $00
[000bd813]                           dc.b $00
[000bd814] 000bd4b0                  dc.l A_3DBUTTON09
[000bd818]                           dc.b $00
[000bd819]                           dc.b $00
[000bd81a]                           dc.b $00
[000bd81b]                           dc.b $00
[000bd81c]                           dc.b $00
[000bd81d]                           dc.b $10
[000bd81e]                           dc.b $00
[000bd81f]                           dc.b $01
_02_POP_COLSEL:
[000bd820]                           dc.b $00
[000bd821]                           dc.b $03
[000bd822]                           dc.w $ffff
[000bd824]                           dc.w $ffff
[000bd826]                           dc.b $00
[000bd827]                           dc.b $14
[000bd828]                           dc.b $00
[000bd829]                           dc.b $00
[000bd82a]                           dc.b $00
[000bd82b]                           dc.b $00
[000bd82c]                           dc.b $00
[000bd82d]                           dc.b $01
[000bd82e]                           dc.w $1170
[000bd830]                           dc.b $00
[000bd831]                           dc.b $10
[000bd832]                           dc.b $00
[000bd833]                           dc.b $00
[000bd834]                           dc.b $00
[000bd835]                           dc.b $02
[000bd836]                           dc.b $00
[000bd837]                           dc.b $01
_03_POP_COLSEL:
[000bd838]                           dc.b $00
[000bd839]                           dc.b $04
[000bd83a]                           dc.w $ffff
[000bd83c]                           dc.w $ffff
[000bd83e]                           dc.b $00
[000bd83f]                           dc.b $18
[000bd840]                           dc.b $00
[000bd841]                           dc.b $41
[000bd842]                           dc.b $00
[000bd843]                           dc.b $00
[000bd844] 000bd3f0                  dc.l A_3DBUTTON03
[000bd848]                           dc.b $00
[000bd849]                           dc.b $00
[000bd84a]                           dc.b $00
[000bd84b]                           dc.b $01
[000bd84c]                           dc.b $00
[000bd84d]                           dc.b $10
[000bd84e]                           dc.b $00
[000bd84f]                           dc.b $01
_04_POP_COLSEL:
[000bd850]                           dc.b $00
[000bd851]                           dc.b $05
[000bd852]                           dc.w $ffff
[000bd854]                           dc.w $ffff
[000bd856]                           dc.b $00
[000bd857]                           dc.b $14
[000bd858]                           dc.b $00
[000bd859]                           dc.b $00
[000bd85a]                           dc.b $00
[000bd85b]                           dc.b $00
[000bd85c]                           dc.b $00
[000bd85d]                           dc.b $01
[000bd85e]                           dc.w $1171
[000bd860]                           dc.b $00
[000bd861]                           dc.b $10
[000bd862]                           dc.b $00
[000bd863]                           dc.b $01
[000bd864]                           dc.b $00
[000bd865]                           dc.b $02
[000bd866]                           dc.b $00
[000bd867]                           dc.b $01
_05_POP_COLSEL:
[000bd868]                           dc.b $00
[000bd869]                           dc.b $06
[000bd86a]                           dc.w $ffff
[000bd86c]                           dc.w $ffff
[000bd86e]                           dc.b $00
[000bd86f]                           dc.b $18
[000bd870]                           dc.b $00
[000bd871]                           dc.b $41
[000bd872]                           dc.b $00
[000bd873]                           dc.b $00
[000bd874] 000bd470                  dc.l A_3DBUTTON07
[000bd878]                           dc.b $00
[000bd879]                           dc.b $00
[000bd87a]                           dc.b $00
[000bd87b]                           dc.b $02
[000bd87c]                           dc.b $00
[000bd87d]                           dc.b $10
[000bd87e]                           dc.b $00
[000bd87f]                           dc.b $01
_06_POP_COLSEL:
[000bd880]                           dc.b $00
[000bd881]                           dc.b $07
[000bd882]                           dc.w $ffff
[000bd884]                           dc.w $ffff
[000bd886]                           dc.b $00
[000bd887]                           dc.b $14
[000bd888]                           dc.b $00
[000bd889]                           dc.b $00
[000bd88a]                           dc.b $00
[000bd88b]                           dc.b $00
[000bd88c]                           dc.b $00
[000bd88d]                           dc.b $01
[000bd88e]                           dc.w $1172
[000bd890]                           dc.b $00
[000bd891]                           dc.b $10
[000bd892]                           dc.b $00
[000bd893]                           dc.b $02
[000bd894]                           dc.b $00
[000bd895]                           dc.b $02
[000bd896]                           dc.b $00
[000bd897]                           dc.b $01
_07_POP_COLSEL:
[000bd898]                           dc.b $00
[000bd899]                           dc.b $08
[000bd89a]                           dc.w $ffff
[000bd89c]                           dc.w $ffff
[000bd89e]                           dc.b $00
[000bd89f]                           dc.b $18
[000bd8a0]                           dc.b $00
[000bd8a1]                           dc.b $41
[000bd8a2]                           dc.b $00
[000bd8a3]                           dc.b $00
[000bd8a4] 000bd4d0                  dc.l A_3DBUTTON10
[000bd8a8]                           dc.b $00
[000bd8a9]                           dc.b $00
[000bd8aa]                           dc.b $00
[000bd8ab]                           dc.b $03
[000bd8ac]                           dc.b $00
[000bd8ad]                           dc.b $10
[000bd8ae]                           dc.b $00
[000bd8af]                           dc.b $01
_08_POP_COLSEL:
[000bd8b0]                           dc.b $00
[000bd8b1]                           dc.b $09
[000bd8b2]                           dc.w $ffff
[000bd8b4]                           dc.w $ffff
[000bd8b6]                           dc.b $00
[000bd8b7]                           dc.b $14
[000bd8b8]                           dc.b $00
[000bd8b9]                           dc.b $00
[000bd8ba]                           dc.b $00
[000bd8bb]                           dc.b $00
[000bd8bc]                           dc.b $00
[000bd8bd]                           dc.b $01
[000bd8be]                           dc.w $1173
[000bd8c0]                           dc.b $00
[000bd8c1]                           dc.b $10
[000bd8c2]                           dc.b $00
[000bd8c3]                           dc.b $03
[000bd8c4]                           dc.b $00
[000bd8c5]                           dc.b $02
[000bd8c6]                           dc.b $00
[000bd8c7]                           dc.b $01
_09_POP_COLSEL:
[000bd8c8]                           dc.b $00
[000bd8c9]                           dc.b $0a
[000bd8ca]                           dc.w $ffff
[000bd8cc]                           dc.w $ffff
[000bd8ce]                           dc.b $00
[000bd8cf]                           dc.b $18
[000bd8d0]                           dc.b $00
[000bd8d1]                           dc.b $41
[000bd8d2]                           dc.b $00
[000bd8d3]                           dc.b $00
[000bd8d4] 000bd4f0                  dc.l A_3DBUTTON11
[000bd8d8]                           dc.b $00
[000bd8d9]                           dc.b $00
[000bd8da]                           dc.b $00
[000bd8db]                           dc.b $04
[000bd8dc]                           dc.b $00
[000bd8dd]                           dc.b $10
[000bd8de]                           dc.b $00
[000bd8df]                           dc.b $01
_10_POP_COLSEL:
[000bd8e0]                           dc.b $00
[000bd8e1]                           dc.b $0b
[000bd8e2]                           dc.w $ffff
[000bd8e4]                           dc.w $ffff
[000bd8e6]                           dc.b $00
[000bd8e7]                           dc.b $14
[000bd8e8]                           dc.b $00
[000bd8e9]                           dc.b $00
[000bd8ea]                           dc.b $00
[000bd8eb]                           dc.b $00
[000bd8ec]                           dc.b $00
[000bd8ed]                           dc.b $01
[000bd8ee]                           dc.w $1174
[000bd8f0]                           dc.b $00
[000bd8f1]                           dc.b $10
[000bd8f2]                           dc.b $00
[000bd8f3]                           dc.b $04
[000bd8f4]                           dc.b $00
[000bd8f5]                           dc.b $02
[000bd8f6]                           dc.b $00
[000bd8f7]                           dc.b $01
_11_POP_COLSEL:
[000bd8f8]                           dc.b $00
[000bd8f9]                           dc.b $0c
[000bd8fa]                           dc.w $ffff
[000bd8fc]                           dc.w $ffff
[000bd8fe]                           dc.b $00
[000bd8ff]                           dc.b $18
[000bd900]                           dc.b $00
[000bd901]                           dc.b $41
[000bd902]                           dc.b $00
[000bd903]                           dc.b $00
[000bd904] 000bd510                  dc.l A_3DBUTTON12
[000bd908]                           dc.b $00
[000bd909]                           dc.b $00
[000bd90a]                           dc.b $00
[000bd90b]                           dc.b $05
[000bd90c]                           dc.b $00
[000bd90d]                           dc.b $10
[000bd90e]                           dc.b $00
[000bd90f]                           dc.b $01
_12_POP_COLSEL:
[000bd910]                           dc.b $00
[000bd911]                           dc.b $0d
[000bd912]                           dc.w $ffff
[000bd914]                           dc.w $ffff
[000bd916]                           dc.b $00
[000bd917]                           dc.b $14
[000bd918]                           dc.b $00
[000bd919]                           dc.b $00
[000bd91a]                           dc.b $00
[000bd91b]                           dc.b $00
[000bd91c]                           dc.b $00
[000bd91d]                           dc.b $01
[000bd91e]                           dc.w $1175
[000bd920]                           dc.b $00
[000bd921]                           dc.b $10
[000bd922]                           dc.b $00
[000bd923]                           dc.b $05
[000bd924]                           dc.b $00
[000bd925]                           dc.b $02
[000bd926]                           dc.b $00
[000bd927]                           dc.b $01
_13_POP_COLSEL:
[000bd928]                           dc.b $00
[000bd929]                           dc.b $0e
[000bd92a]                           dc.w $ffff
[000bd92c]                           dc.w $ffff
[000bd92e]                           dc.b $00
[000bd92f]                           dc.b $18
[000bd930]                           dc.b $00
[000bd931]                           dc.b $41
[000bd932]                           dc.b $00
[000bd933]                           dc.b $00
[000bd934] 000bd530                  dc.l A_3DBUTTON13
[000bd938]                           dc.b $00
[000bd939]                           dc.b $00
[000bd93a]                           dc.b $00
[000bd93b]                           dc.b $06
[000bd93c]                           dc.b $00
[000bd93d]                           dc.b $10
[000bd93e]                           dc.b $00
[000bd93f]                           dc.b $01
_14_POP_COLSEL:
[000bd940]                           dc.b $00
[000bd941]                           dc.b $0f
[000bd942]                           dc.w $ffff
[000bd944]                           dc.w $ffff
[000bd946]                           dc.b $00
[000bd947]                           dc.b $14
[000bd948]                           dc.b $00
[000bd949]                           dc.b $00
[000bd94a]                           dc.b $00
[000bd94b]                           dc.b $00
[000bd94c]                           dc.b $00
[000bd94d]                           dc.b $01
[000bd94e]                           dc.w $1176
[000bd950]                           dc.b $00
[000bd951]                           dc.b $10
[000bd952]                           dc.b $00
[000bd953]                           dc.b $06
[000bd954]                           dc.b $00
[000bd955]                           dc.b $02
[000bd956]                           dc.b $00
[000bd957]                           dc.b $01
_15_POP_COLSEL:
[000bd958]                           dc.b $00
[000bd959]                           dc.b $10
[000bd95a]                           dc.w $ffff
[000bd95c]                           dc.w $ffff
[000bd95e]                           dc.b $00
[000bd95f]                           dc.b $18
[000bd960]                           dc.b $00
[000bd961]                           dc.b $41
[000bd962]                           dc.b $00
[000bd963]                           dc.b $00
[000bd964] 000bd550                  dc.l A_3DBUTTON14
[000bd968]                           dc.b $00
[000bd969]                           dc.b $00
[000bd96a]                           dc.b $00
[000bd96b]                           dc.b $07
[000bd96c]                           dc.b $00
[000bd96d]                           dc.b $10
[000bd96e]                           dc.b $00
[000bd96f]                           dc.b $01
_16_POP_COLSEL:
[000bd970]                           dc.b $00
[000bd971]                           dc.b $11
[000bd972]                           dc.w $ffff
[000bd974]                           dc.w $ffff
[000bd976]                           dc.b $00
[000bd977]                           dc.b $14
[000bd978]                           dc.b $00
[000bd979]                           dc.b $00
[000bd97a]                           dc.b $00
[000bd97b]                           dc.b $00
[000bd97c]                           dc.b $00
[000bd97d]                           dc.b $01
[000bd97e]                           dc.w $1177
[000bd980]                           dc.b $00
[000bd981]                           dc.b $10
[000bd982]                           dc.b $00
[000bd983]                           dc.b $07
[000bd984]                           dc.b $00
[000bd985]                           dc.b $02
[000bd986]                           dc.b $00
[000bd987]                           dc.b $01
_17_POP_COLSEL:
[000bd988]                           dc.b $00
[000bd989]                           dc.b $12
[000bd98a]                           dc.w $ffff
[000bd98c]                           dc.w $ffff
[000bd98e]                           dc.b $00
[000bd98f]                           dc.b $18
[000bd990]                           dc.b $00
[000bd991]                           dc.b $41
[000bd992]                           dc.b $00
[000bd993]                           dc.b $00
[000bd994] 000bd570                  dc.l A_3DBUTTON15
[000bd998]                           dc.b $00
[000bd999]                           dc.b $00
[000bd99a]                           dc.b $00
[000bd99b]                           dc.b $08
[000bd99c]                           dc.b $00
[000bd99d]                           dc.b $10
[000bd99e]                           dc.b $00
[000bd99f]                           dc.b $01
_18_POP_COLSEL:
[000bd9a0]                           dc.b $00
[000bd9a1]                           dc.b $13
[000bd9a2]                           dc.w $ffff
[000bd9a4]                           dc.w $ffff
[000bd9a6]                           dc.b $00
[000bd9a7]                           dc.b $14
[000bd9a8]                           dc.b $00
[000bd9a9]                           dc.b $00
[000bd9aa]                           dc.b $00
[000bd9ab]                           dc.b $00
[000bd9ac]                           dc.b $00
[000bd9ad]                           dc.b $01
[000bd9ae]                           dc.w $1178
[000bd9b0]                           dc.b $00
[000bd9b1]                           dc.b $10
[000bd9b2]                           dc.b $00
[000bd9b3]                           dc.b $08
[000bd9b4]                           dc.b $00
[000bd9b5]                           dc.b $02
[000bd9b6]                           dc.b $00
[000bd9b7]                           dc.b $01
_19_POP_COLSEL:
[000bd9b8]                           dc.b $00
[000bd9b9]                           dc.b $14
[000bd9ba]                           dc.w $ffff
[000bd9bc]                           dc.w $ffff
[000bd9be]                           dc.b $00
[000bd9bf]                           dc.b $18
[000bd9c0]                           dc.b $00
[000bd9c1]                           dc.b $41
[000bd9c2]                           dc.b $00
[000bd9c3]                           dc.b $00
[000bd9c4] 000bd590                  dc.l A_3DBUTTON16
[000bd9c8]                           dc.b $00
[000bd9c9]                           dc.b $00
[000bd9ca]                           dc.b $00
[000bd9cb]                           dc.b $09
[000bd9cc]                           dc.b $00
[000bd9cd]                           dc.b $10
[000bd9ce]                           dc.b $00
[000bd9cf]                           dc.b $01
_20_POP_COLSEL:
[000bd9d0]                           dc.b $00
[000bd9d1]                           dc.b $15
[000bd9d2]                           dc.w $ffff
[000bd9d4]                           dc.w $ffff
[000bd9d6]                           dc.b $00
[000bd9d7]                           dc.b $14
[000bd9d8]                           dc.b $00
[000bd9d9]                           dc.b $00
[000bd9da]                           dc.b $00
[000bd9db]                           dc.b $00
[000bd9dc]                           dc.b $00
[000bd9dd]                           dc.b $01
[000bd9de]                           dc.w $1179
[000bd9e0]                           dc.b $00
[000bd9e1]                           dc.b $10
[000bd9e2]                           dc.b $00
[000bd9e3]                           dc.b $09
[000bd9e4]                           dc.b $00
[000bd9e5]                           dc.b $02
[000bd9e6]                           dc.b $00
[000bd9e7]                           dc.b $01
_21_POP_COLSEL:
[000bd9e8]                           dc.b $00
[000bd9e9]                           dc.b $16
[000bd9ea]                           dc.w $ffff
[000bd9ec]                           dc.w $ffff
[000bd9ee]                           dc.b $00
[000bd9ef]                           dc.b $18
[000bd9f0]                           dc.b $00
[000bd9f1]                           dc.b $41
[000bd9f2]                           dc.b $00
[000bd9f3]                           dc.b $00
[000bd9f4] 000bd5b0                  dc.l A_3DBUTTON17
[000bd9f8]                           dc.b $00
[000bd9f9]                           dc.b $00
[000bd9fa]                           dc.b $00
[000bd9fb]                           dc.b $0a
[000bd9fc]                           dc.b $00
[000bd9fd]                           dc.b $10
[000bd9fe]                           dc.b $00
[000bd9ff]                           dc.b $01
_22_POP_COLSEL:
[000bda00]                           dc.b $00
[000bda01]                           dc.b $17
[000bda02]                           dc.w $ffff
[000bda04]                           dc.w $ffff
[000bda06]                           dc.b $00
[000bda07]                           dc.b $14
[000bda08]                           dc.b $00
[000bda09]                           dc.b $00
[000bda0a]                           dc.b $00
[000bda0b]                           dc.b $00
[000bda0c]                           dc.b $00
[000bda0d]                           dc.b $01
[000bda0e]                           dc.w $117a
[000bda10]                           dc.b $00
[000bda11]                           dc.b $10
[000bda12]                           dc.b $00
[000bda13]                           dc.b $0a
[000bda14]                           dc.b $00
[000bda15]                           dc.b $02
[000bda16]                           dc.b $00
[000bda17]                           dc.b $01
_23_POP_COLSEL:
[000bda18]                           dc.b $00
[000bda19]                           dc.b $18
[000bda1a]                           dc.w $ffff
[000bda1c]                           dc.w $ffff
[000bda1e]                           dc.b $00
[000bda1f]                           dc.b $18
[000bda20]                           dc.b $00
[000bda21]                           dc.b $41
[000bda22]                           dc.b $00
[000bda23]                           dc.b $00
[000bda24] 000bd5d0                  dc.l A_3DBUTTON18
[000bda28]                           dc.b $00
[000bda29]                           dc.b $00
[000bda2a]                           dc.b $00
[000bda2b]                           dc.b $0b
[000bda2c]                           dc.b $00
[000bda2d]                           dc.b $10
[000bda2e]                           dc.b $00
[000bda2f]                           dc.b $01
_24_POP_COLSEL:
[000bda30]                           dc.b $00
[000bda31]                           dc.b $19
[000bda32]                           dc.w $ffff
[000bda34]                           dc.w $ffff
[000bda36]                           dc.b $00
[000bda37]                           dc.b $14
[000bda38]                           dc.b $00
[000bda39]                           dc.b $00
[000bda3a]                           dc.b $00
[000bda3b]                           dc.b $00
[000bda3c]                           dc.b $00
[000bda3d]                           dc.b $01
[000bda3e]                           dc.w $117b
[000bda40]                           dc.b $00
[000bda41]                           dc.b $10
[000bda42]                           dc.b $00
[000bda43]                           dc.b $0b
[000bda44]                           dc.b $00
[000bda45]                           dc.b $02
[000bda46]                           dc.b $00
[000bda47]                           dc.b $01
_25_POP_COLSEL:
[000bda48]                           dc.b $00
[000bda49]                           dc.b $1a
[000bda4a]                           dc.w $ffff
[000bda4c]                           dc.w $ffff
[000bda4e]                           dc.b $00
[000bda4f]                           dc.b $18
[000bda50]                           dc.b $00
[000bda51]                           dc.b $41
[000bda52]                           dc.b $00
[000bda53]                           dc.b $00
[000bda54] 000bd610                  dc.l A_3DBUTTON20
[000bda58]                           dc.b $00
[000bda59]                           dc.b $00
[000bda5a]                           dc.b $00
[000bda5b]                           dc.b $0c
[000bda5c]                           dc.b $00
[000bda5d]                           dc.b $10
[000bda5e]                           dc.b $00
[000bda5f]                           dc.b $01
_26_POP_COLSEL:
[000bda60]                           dc.b $00
[000bda61]                           dc.b $1b
[000bda62]                           dc.w $ffff
[000bda64]                           dc.w $ffff
[000bda66]                           dc.b $00
[000bda67]                           dc.b $14
[000bda68]                           dc.b $00
[000bda69]                           dc.b $00
[000bda6a]                           dc.b $00
[000bda6b]                           dc.b $00
[000bda6c]                           dc.b $00
[000bda6d]                           dc.b $01
[000bda6e]                           dc.w $117c
[000bda70]                           dc.b $00
[000bda71]                           dc.b $10
[000bda72]                           dc.b $00
[000bda73]                           dc.b $0c
[000bda74]                           dc.b $00
[000bda75]                           dc.b $02
[000bda76]                           dc.b $00
[000bda77]                           dc.b $01
_27_POP_COLSEL:
[000bda78]                           dc.b $00
[000bda79]                           dc.b $1c
[000bda7a]                           dc.w $ffff
[000bda7c]                           dc.w $ffff
[000bda7e]                           dc.b $00
[000bda7f]                           dc.b $18
[000bda80]                           dc.b $00
[000bda81]                           dc.b $41
[000bda82]                           dc.b $00
[000bda83]                           dc.b $00
[000bda84] 000bd5f0                  dc.l A_3DBUTTON19
[000bda88]                           dc.b $00
[000bda89]                           dc.b $00
[000bda8a]                           dc.b $00
[000bda8b]                           dc.b $0d
[000bda8c]                           dc.b $00
[000bda8d]                           dc.b $10
[000bda8e]                           dc.b $00
[000bda8f]                           dc.b $01
_28_POP_COLSEL:
[000bda90]                           dc.b $00
[000bda91]                           dc.b $1d
[000bda92]                           dc.w $ffff
[000bda94]                           dc.w $ffff
[000bda96]                           dc.b $00
[000bda97]                           dc.b $14
[000bda98]                           dc.b $00
[000bda99]                           dc.b $00
[000bda9a]                           dc.b $00
[000bda9b]                           dc.b $00
[000bda9c]                           dc.b $00
[000bda9d]                           dc.b $01
[000bda9e]                           dc.w $117d
[000bdaa0]                           dc.b $00
[000bdaa1]                           dc.b $10
[000bdaa2]                           dc.b $00
[000bdaa3]                           dc.b $0d
[000bdaa4]                           dc.b $00
[000bdaa5]                           dc.b $02
[000bdaa6]                           dc.b $00
[000bdaa7]                           dc.b $01
_29_POP_COLSEL:
[000bdaa8]                           dc.b $00
[000bdaa9]                           dc.b $1e
[000bdaaa]                           dc.w $ffff
[000bdaac]                           dc.w $ffff
[000bdaae]                           dc.b $00
[000bdaaf]                           dc.b $18
[000bdab0]                           dc.b $00
[000bdab1]                           dc.b $41
[000bdab2]                           dc.b $00
[000bdab3]                           dc.b $00
[000bdab4] 000bd630                  dc.l A_3DBUTTON21
[000bdab8]                           dc.b $00
[000bdab9]                           dc.b $00
[000bdaba]                           dc.b $00
[000bdabb]                           dc.b $0e
[000bdabc]                           dc.b $00
[000bdabd]                           dc.b $10
[000bdabe]                           dc.b $00
[000bdabf]                           dc.b $01
_30_POP_COLSEL:
[000bdac0]                           dc.b $00
[000bdac1]                           dc.b $1f
[000bdac2]                           dc.w $ffff
[000bdac4]                           dc.w $ffff
[000bdac6]                           dc.b $00
[000bdac7]                           dc.b $14
[000bdac8]                           dc.b $00
[000bdac9]                           dc.b $00
[000bdaca]                           dc.b $00
[000bdacb]                           dc.b $00
[000bdacc]                           dc.b $00
[000bdacd]                           dc.b $01
[000bdace]                           dc.w $117e
[000bdad0]                           dc.b $00
[000bdad1]                           dc.b $10
[000bdad2]                           dc.b $00
[000bdad3]                           dc.b $0e
[000bdad4]                           dc.b $00
[000bdad5]                           dc.b $02
[000bdad6]                           dc.b $00
[000bdad7]                           dc.b $01
_31_POP_COLSEL:
[000bdad8]                           dc.b $00
[000bdad9]                           dc.b $20
[000bdada]                           dc.w $ffff
[000bdadc]                           dc.w $ffff
[000bdade]                           dc.b $00
[000bdadf]                           dc.b $18
[000bdae0]                           dc.b $00
[000bdae1]                           dc.b $41
[000bdae2]                           dc.b $00
[000bdae3]                           dc.b $00
[000bdae4] 000bd650                  dc.l A_3DBUTTON22
[000bdae8]                           dc.b $00
[000bdae9]                           dc.b $00
[000bdaea]                           dc.b $00
[000bdaeb]                           dc.b $0f
[000bdaec]                           dc.b $00
[000bdaed]                           dc.b $10
[000bdaee]                           dc.b $00
[000bdaef]                           dc.b $01
_32_POP_COLSEL:
[000bdaf0]                           dc.b $00
[000bdaf1]                           dc.b $00
[000bdaf2]                           dc.w $ffff
[000bdaf4]                           dc.w $ffff
[000bdaf6]                           dc.b $00
[000bdaf7]                           dc.b $14
[000bdaf8]                           dc.b $00
[000bdaf9]                           dc.b $20
[000bdafa]                           dc.b $00
[000bdafb]                           dc.b $00
[000bdafc]                           dc.b $00
[000bdafd]                           dc.b $01
[000bdafe]                           dc.w $117f
[000bdb00]                           dc.b $00
[000bdb01]                           dc.b $10
[000bdb02]                           dc.b $00
[000bdb03]                           dc.b $0f
[000bdb04]                           dc.b $00
[000bdb05]                           dc.b $02
[000bdb06]                           dc.b $00
[000bdb07]                           dc.b $01
POP_HORPOSSEL:
[000bdb08]                           dc.w $ffff
[000bdb0a]                           dc.b $00
[000bdb0b]                           dc.b $01
[000bdb0c]                           dc.b $00
[000bdb0d]                           dc.b $03
[000bdb0e]                           dc.b $00
[000bdb0f]                           dc.b $14
[000bdb10]                           dc.b $00
[000bdb11]                           dc.b $00
[000bdb12]                           dc.b $00
[000bdb13]                           dc.b $20
[000bdb14]                           dc.b $00
[000bdb15]                           dc.b $ff
[000bdb16]                           dc.w $1100
[000bdb18]                           dc.b $00
[000bdb19]                           dc.b $00
[000bdb1a]                           dc.b $00
[000bdb1b]                           dc.b $00
[000bdb1c]                           dc.b $00
[000bdb1d]                           dc.b $0a
[000bdb1e]                           dc.b $00
[000bdb1f]                           dc.b $03
_01_POP_HORPOSSEL:
[000bdb20]                           dc.b $00
[000bdb21]                           dc.b $02
[000bdb22]                           dc.w $ffff
[000bdb24]                           dc.w $ffff
[000bdb26]                           dc.b $00
[000bdb27]                           dc.b $18
[000bdb28]                           dc.b $00
[000bdb29]                           dc.b $01
[000bdb2a]                           dc.b $00
[000bdb2b]                           dc.b $00
[000bdb2c] 000bd6b0                  dc.l A_3DBUTTON27
[000bdb30]                           dc.b $00
[000bdb31]                           dc.b $00
[000bdb32]                           dc.b $00
[000bdb33]                           dc.b $00
[000bdb34]                           dc.b $00
[000bdb35]                           dc.b $0a
[000bdb36]                           dc.b $00
[000bdb37]                           dc.b $01
_02_POP_HORPOSSEL:
[000bdb38]                           dc.b $00
[000bdb39]                           dc.b $03
[000bdb3a]                           dc.w $ffff
[000bdb3c]                           dc.w $ffff
[000bdb3e]                           dc.b $00
[000bdb3f]                           dc.b $18
[000bdb40]                           dc.b $00
[000bdb41]                           dc.b $01
[000bdb42]                           dc.b $00
[000bdb43]                           dc.b $00
[000bdb44] 000bd6d0                  dc.l A_3DBUTTON28
[000bdb48]                           dc.b $00
[000bdb49]                           dc.b $00
[000bdb4a]                           dc.b $00
[000bdb4b]                           dc.b $01
[000bdb4c]                           dc.b $00
[000bdb4d]                           dc.b $0a
[000bdb4e]                           dc.b $00
[000bdb4f]                           dc.b $01
_03_POP_HORPOSSEL:
[000bdb50]                           dc.b $00
[000bdb51]                           dc.b $00
[000bdb52]                           dc.w $ffff
[000bdb54]                           dc.w $ffff
[000bdb56]                           dc.b $00
[000bdb57]                           dc.b $18
[000bdb58]                           dc.b $00
[000bdb59]                           dc.b $21
[000bdb5a]                           dc.b $00
[000bdb5b]                           dc.b $00
[000bdb5c] 000bd6f0                  dc.l A_3DBUTTON29
[000bdb60]                           dc.b $00
[000bdb61]                           dc.b $00
[000bdb62]                           dc.b $00
[000bdb63]                           dc.b $02
[000bdb64]                           dc.b $00
[000bdb65]                           dc.b $0a
[000bdb66]                           dc.b $00
[000bdb67]                           dc.b $01
POP_PATSEL:
[000bdb68]                           dc.w $ffff
[000bdb6a]                           dc.b $00
[000bdb6b]                           dc.b $01
[000bdb6c]                           dc.b $00
[000bdb6d]                           dc.b $08
[000bdb6e]                           dc.b $00
[000bdb6f]                           dc.b $14
[000bdb70]                           dc.b $00
[000bdb71]                           dc.b $00
[000bdb72]                           dc.b $00
[000bdb73]                           dc.b $20
[000bdb74]                           dc.b $00
[000bdb75]                           dc.b $ff
[000bdb76]                           dc.w $1100
[000bdb78]                           dc.b $00
[000bdb79]                           dc.b $00
[000bdb7a]                           dc.b $00
[000bdb7b]                           dc.b $00
[000bdb7c]                           dc.b $00
[000bdb7d]                           dc.b $12
[000bdb7e]                           dc.b $00
[000bdb7f]                           dc.b $08
_01_POP_PATSEL:
[000bdb80]                           dc.b $00
[000bdb81]                           dc.b $02
[000bdb82]                           dc.w $ffff
[000bdb84]                           dc.w $ffff
[000bdb86]                           dc.b $00
[000bdb87]                           dc.b $14
[000bdb88]                           dc.b $00
[000bdb89]                           dc.b $01
[000bdb8a]                           dc.b $00
[000bdb8b]                           dc.b $00
[000bdb8c]                           dc.b $00
[000bdb8d]                           dc.b $01
[000bdb8e]                           dc.w $1101
[000bdb90]                           dc.b $00
[000bdb91]                           dc.b $00
[000bdb92]                           dc.b $00
[000bdb93]                           dc.b $00
[000bdb94]                           dc.b $00
[000bdb95]                           dc.b $12
[000bdb96]                           dc.b $00
[000bdb97]                           dc.b $01
_02_POP_PATSEL:
[000bdb98]                           dc.b $00
[000bdb99]                           dc.b $03
[000bdb9a]                           dc.w $ffff
[000bdb9c]                           dc.w $ffff
[000bdb9e]                           dc.b $00
[000bdb9f]                           dc.b $14
[000bdba0]                           dc.b $00
[000bdba1]                           dc.b $01
[000bdba2]                           dc.b $00
[000bdba3]                           dc.b $00
[000bdba4]                           dc.b $00
[000bdba5]                           dc.b $01
[000bdba6]                           dc.w $1111
[000bdba8]                           dc.b $00
[000bdba9]                           dc.b $00
[000bdbaa]                           dc.b $00
[000bdbab]                           dc.b $01
[000bdbac]                           dc.b $00
[000bdbad]                           dc.b $12
[000bdbae]                           dc.b $00
[000bdbaf]                           dc.b $01
_03_POP_PATSEL:
[000bdbb0]                           dc.b $00
[000bdbb1]                           dc.b $04
[000bdbb2]                           dc.w $ffff
[000bdbb4]                           dc.w $ffff
[000bdbb6]                           dc.b $00
[000bdbb7]                           dc.b $14
[000bdbb8]                           dc.b $00
[000bdbb9]                           dc.b $01
[000bdbba]                           dc.b $00
[000bdbbb]                           dc.b $00
[000bdbbc]                           dc.b $00
[000bdbbd]                           dc.b $01
[000bdbbe]                           dc.w $1121
[000bdbc0]                           dc.b $00
[000bdbc1]                           dc.b $00
[000bdbc2]                           dc.b $00
[000bdbc3]                           dc.b $02
[000bdbc4]                           dc.b $00
[000bdbc5]                           dc.b $12
[000bdbc6]                           dc.b $00
[000bdbc7]                           dc.b $01
_04_POP_PATSEL:
[000bdbc8]                           dc.b $00
[000bdbc9]                           dc.b $05
[000bdbca]                           dc.w $ffff
[000bdbcc]                           dc.w $ffff
[000bdbce]                           dc.b $00
[000bdbcf]                           dc.b $14
[000bdbd0]                           dc.b $00
[000bdbd1]                           dc.b $01
[000bdbd2]                           dc.b $00
[000bdbd3]                           dc.b $00
[000bdbd4]                           dc.b $00
[000bdbd5]                           dc.b $01
[000bdbd6]                           dc.w $1131
[000bdbd8]                           dc.b $00
[000bdbd9]                           dc.b $00
[000bdbda]                           dc.b $00
[000bdbdb]                           dc.b $03
[000bdbdc]                           dc.b $00
[000bdbdd]                           dc.b $12
[000bdbde]                           dc.b $00
[000bdbdf]                           dc.b $01
_05_POP_PATSEL:
[000bdbe0]                           dc.b $00
[000bdbe1]                           dc.b $06
[000bdbe2]                           dc.w $ffff
[000bdbe4]                           dc.w $ffff
[000bdbe6]                           dc.b $00
[000bdbe7]                           dc.b $14
[000bdbe8]                           dc.b $00
[000bdbe9]                           dc.b $01
[000bdbea]                           dc.b $00
[000bdbeb]                           dc.b $00
[000bdbec]                           dc.b $00
[000bdbed]                           dc.b $01
[000bdbee]                           dc.w $1141
[000bdbf0]                           dc.b $00
[000bdbf1]                           dc.b $00
[000bdbf2]                           dc.b $00
[000bdbf3]                           dc.b $04
[000bdbf4]                           dc.b $00
[000bdbf5]                           dc.b $12
[000bdbf6]                           dc.b $00
[000bdbf7]                           dc.b $01
_06_POP_PATSEL:
[000bdbf8]                           dc.b $00
[000bdbf9]                           dc.b $07
[000bdbfa]                           dc.w $ffff
[000bdbfc]                           dc.w $ffff
[000bdbfe]                           dc.b $00
[000bdbff]                           dc.b $14
[000bdc00]                           dc.b $00
[000bdc01]                           dc.b $01
[000bdc02]                           dc.b $00
[000bdc03]                           dc.b $00
[000bdc04]                           dc.b $00
[000bdc05]                           dc.b $01
[000bdc06]                           dc.w $1151
[000bdc08]                           dc.b $00
[000bdc09]                           dc.b $00
[000bdc0a]                           dc.b $00
[000bdc0b]                           dc.b $05
[000bdc0c]                           dc.b $00
[000bdc0d]                           dc.b $12
[000bdc0e]                           dc.b $00
[000bdc0f]                           dc.b $01
_07_POP_PATSEL:
[000bdc10]                           dc.b $00
[000bdc11]                           dc.b $08
[000bdc12]                           dc.w $ffff
[000bdc14]                           dc.w $ffff
[000bdc16]                           dc.b $00
[000bdc17]                           dc.b $14
[000bdc18]                           dc.b $00
[000bdc19]                           dc.b $01
[000bdc1a]                           dc.b $00
[000bdc1b]                           dc.b $00
[000bdc1c]                           dc.b $00
[000bdc1d]                           dc.b $01
[000bdc1e]                           dc.w $1161
[000bdc20]                           dc.b $00
[000bdc21]                           dc.b $00
[000bdc22]                           dc.b $00
[000bdc23]                           dc.b $06
[000bdc24]                           dc.b $00
[000bdc25]                           dc.b $12
[000bdc26]                           dc.b $00
[000bdc27]                           dc.b $01
_08_POP_PATSEL:
[000bdc28]                           dc.b $00
[000bdc29]                           dc.b $00
[000bdc2a]                           dc.w $ffff
[000bdc2c]                           dc.w $ffff
[000bdc2e]                           dc.b $00
[000bdc2f]                           dc.b $14
[000bdc30]                           dc.b $00
[000bdc31]                           dc.b $21
[000bdc32]                           dc.b $00
[000bdc33]                           dc.b $00
[000bdc34]                           dc.b $00
[000bdc35]                           dc.b $01
[000bdc36]                           dc.w $1171
[000bdc38]                           dc.b $00
[000bdc39]                           dc.b $00
[000bdc3a]                           dc.b $00
[000bdc3b]                           dc.b $07
[000bdc3c]                           dc.b $00
[000bdc3d]                           dc.b $12
[000bdc3e]                           dc.b $00
[000bdc3f]                           dc.b $01
POP_SIZESEL:
[000bdc40]                           dc.w $ffff
[000bdc42]                           dc.b $00
[000bdc43]                           dc.b $01
[000bdc44]                           dc.b $00
[000bdc45]                           dc.b $02
[000bdc46]                           dc.b $00
[000bdc47]                           dc.b $14
[000bdc48]                           dc.b $00
[000bdc49]                           dc.b $00
[000bdc4a]                           dc.b $00
[000bdc4b]                           dc.b $20
[000bdc4c]                           dc.b $00
[000bdc4d]                           dc.b $ff
[000bdc4e]                           dc.w $1100
[000bdc50]                           dc.b $00
[000bdc51]                           dc.b $00
[000bdc52]                           dc.b $00
[000bdc53]                           dc.b $00
[000bdc54]                           dc.b $00
[000bdc55]                           dc.b $08
[000bdc56]                           dc.b $00
[000bdc57]                           dc.b $02
_01_POP_SIZESEL:
[000bdc58]                           dc.b $00
[000bdc59]                           dc.b $02
[000bdc5a]                           dc.w $ffff
[000bdc5c]                           dc.w $ffff
[000bdc5e]                           dc.b $00
[000bdc5f]                           dc.b $18
[000bdc60]                           dc.b $00
[000bdc61]                           dc.b $01
[000bdc62]                           dc.b $00
[000bdc63]                           dc.b $00
[000bdc64] 000bd690                  dc.l A_3DBUTTON25
[000bdc68]                           dc.b $00
[000bdc69]                           dc.b $00
[000bdc6a]                           dc.b $00
[000bdc6b]                           dc.b $00
[000bdc6c]                           dc.b $00
[000bdc6d]                           dc.b $08
[000bdc6e]                           dc.b $00
[000bdc6f]                           dc.b $01
_02_POP_SIZESEL:
[000bdc70]                           dc.b $00
[000bdc71]                           dc.b $00
[000bdc72]                           dc.w $ffff
[000bdc74]                           dc.w $ffff
[000bdc76]                           dc.b $00
[000bdc77]                           dc.b $18
[000bdc78]                           dc.b $00
[000bdc79]                           dc.b $21
[000bdc7a]                           dc.b $00
[000bdc7b]                           dc.b $00
[000bdc7c] 000bd730                  dc.l A_3DBUTTON31
[000bdc80]                           dc.b $00
[000bdc81]                           dc.b $00
[000bdc82]                           dc.b $00
[000bdc83]                           dc.b $01
[000bdc84]                           dc.b $00
[000bdc85]                           dc.b $08
[000bdc86]                           dc.b $00
[000bdc87]                           dc.b $01
POP_TYPESEL:
[000bdc88]                           dc.w $ffff
[000bdc8a]                           dc.b $00
[000bdc8b]                           dc.b $01
[000bdc8c]                           dc.b $00
[000bdc8d]                           dc.b $03
[000bdc8e]                           dc.b $00
[000bdc8f]                           dc.b $14
[000bdc90]                           dc.b $00
[000bdc91]                           dc.b $00
[000bdc92]                           dc.b $00
[000bdc93]                           dc.b $20
[000bdc94]                           dc.b $00
[000bdc95]                           dc.b $ff
[000bdc96]                           dc.w $1100
[000bdc98]                           dc.b $00
[000bdc99]                           dc.b $00
[000bdc9a]                           dc.b $00
[000bdc9b]                           dc.b $00
[000bdc9c]                           dc.b $00
[000bdc9d]                           dc.b $0b
[000bdc9e]                           dc.b $00
[000bdc9f]                           dc.b $03
_01_POP_TYPESEL:
[000bdca0]                           dc.b $00
[000bdca1]                           dc.b $02
[000bdca2]                           dc.w $ffff
[000bdca4]                           dc.w $ffff
[000bdca6]                           dc.b $00
[000bdca7]                           dc.b $18
[000bdca8]                           dc.b $00
[000bdca9]                           dc.b $41
[000bdcaa]                           dc.b $00
[000bdcab]                           dc.b $00
[000bdcac] 000bd3b0                  dc.l A_3DBUTTON01
[000bdcb0]                           dc.b $00
[000bdcb1]                           dc.b $00
[000bdcb2]                           dc.b $00
[000bdcb3]                           dc.b $00
[000bdcb4]                           dc.b $00
[000bdcb5]                           dc.b $0b
[000bdcb6]                           dc.b $00
[000bdcb7]                           dc.b $01
_02_POP_TYPESEL:
[000bdcb8]                           dc.b $00
[000bdcb9]                           dc.b $03
[000bdcba]                           dc.w $ffff
[000bdcbc]                           dc.w $ffff
[000bdcbe]                           dc.b $00
[000bdcbf]                           dc.b $18
[000bdcc0]                           dc.b $00
[000bdcc1]                           dc.b $41
[000bdcc2]                           dc.b $00
[000bdcc3]                           dc.b $00
[000bdcc4] 000bd410                  dc.l A_3DBUTTON04
[000bdcc8]                           dc.b $00
[000bdcc9]                           dc.b $00
[000bdcca]                           dc.b $00
[000bdccb]                           dc.b $01
[000bdccc]                           dc.b $00
[000bdccd]                           dc.b $0b
[000bdcce]                           dc.b $00
[000bdccf]                           dc.b $01
_03_POP_TYPESEL:
[000bdcd0]                           dc.b $00
[000bdcd1]                           dc.b $00
[000bdcd2]                           dc.w $ffff
[000bdcd4]                           dc.w $ffff
[000bdcd6]                           dc.b $00
[000bdcd7]                           dc.b $18
[000bdcd8]                           dc.b $00
[000bdcd9]                           dc.b $61
[000bdcda]                           dc.b $00
[000bdcdb]                           dc.b $00
[000bdcdc] 000bd490                  dc.l A_3DBUTTON08
[000bdce0]                           dc.b $00
[000bdce1]                           dc.b $00
[000bdce2]                           dc.b $00
[000bdce3]                           dc.b $02
[000bdce4]                           dc.b $00
[000bdce5]                           dc.b $0b
[000bdce6]                           dc.b $00
[000bdce7]                           dc.b $01
ED_BOX:
[000bdce8]                           dc.w $ffff
[000bdcea]                           dc.b $00
[000bdceb]                           dc.b $01
[000bdcec]                           dc.b $00
[000bdced]                           dc.b $30
[000bdcee]                           dc.b $00
[000bdcef]                           dc.b $18
[000bdcf0]                           dc.b $00
[000bdcf1]                           dc.b $40
[000bdcf2]                           dc.b $00
[000bdcf3]                           dc.b $10
[000bdcf4] 000bd430                  dc.l A_3DBUTTON05
[000bdcf8]                           dc.b $00
[000bdcf9]                           dc.b $00
[000bdcfa]                           dc.b $00
[000bdcfb]                           dc.b $00
[000bdcfc]                           dc.b $00
[000bdcfd]                           dc.b $3c
[000bdcfe]                           dc.b $00
[000bdcff]                           dc.b $0c
_01_ED_BOX:
[000bdd00]                           dc.b $00
[000bdd01]                           dc.b $03
[000bdd02]                           dc.b $00
[000bdd03]                           dc.b $02
[000bdd04]                           dc.b $00
[000bdd05]                           dc.b $02
[000bdd06]                           dc.b $00
[000bdd07]                           dc.b $18
[000bdd08]                           dc.b $00
[000bdd09]                           dc.b $40
[000bdd0a]                           dc.b $00
[000bdd0b]                           dc.b $00
[000bdd0c] 000bd710                  dc.l A_3DBUTTON30
[000bdd10]                           dc.b $00
[000bdd11]                           dc.b $00
[000bdd12]                           dc.b $00
[000bdd13]                           dc.b $00
[000bdd14]                           dc.b $00
[000bdd15]                           dc.b $09
[000bdd16]                           dc.b $00
[000bdd17]                           dc.b $04
_02_ED_BOX:
[000bdd18]                           dc.b $00
[000bdd19]                           dc.b $01
[000bdd1a]                           dc.w $ffff
[000bdd1c]                           dc.w $ffff
[000bdd1e]                           dc.b $00
[000bdd1f]                           dc.b $1b
[000bdd20]                           dc.b $00
[000bdd21]                           dc.b $40
[000bdd22]                           dc.b $00
[000bdd23]                           dc.b $00
[000bdd24]                           dc.w $43ff
[000bdd26]                           dc.w $1101
[000bdd28]                           dc.b $00
[000bdd29]                           dc.b $01
[000bdd2a]                           dc.b $00
[000bdd2b]                           dc.b $01
[000bdd2c]                           dc.b $00
[000bdd2d]                           dc.b $07
[000bdd2e]                           dc.b $00
[000bdd2f]                           dc.b $02
_03_ED_BOX:
[000bdd30]                           dc.b $00
[000bdd31]                           dc.b $05
[000bdd32]                           dc.b $00
[000bdd33]                           dc.b $04
[000bdd34]                           dc.b $00
[000bdd35]                           dc.b $04
[000bdd36]                           dc.b $00
[000bdd37]                           dc.b $1c
[000bdd38]                           dc.b $00
[000bdd39]                           dc.b $40
[000bdd3a]                           dc.b $00
[000bdd3b]                           dc.b $00
[000bdd3c] 000bd350                  dc.l TEXT_04
[000bdd40]                           dc.b $00
[000bdd41]                           dc.b $0b
[000bdd42]                           dc.b $00
[000bdd43]                           dc.b $01
[000bdd44]                           dc.b $00
[000bdd45]                           dc.b $05
[000bdd46]                           dc.b $00
[000bdd47]                           dc.b $01
_04_ED_BOX:
[000bdd48]                           dc.b $00
[000bdd49]                           dc.b $03
[000bdd4a]                           dc.w $ffff
[000bdd4c]                           dc.w $ffff
[000bdd4e]                           dc.b $00
[000bdd4f]                           dc.b $18
[000bdd50]                           dc.b $00
[000bdd51]                           dc.b $40
[000bdd52]                           dc.b $00
[000bdd53]                           dc.b $00
[000bdd54] 000bd750                  dc.l A_ARROWS02
[000bdd58]                           dc.b $00
[000bdd59]                           dc.b $00
[000bdd5a]                           dc.b $00
[000bdd5b]                           dc.b $00
[000bdd5c]                           dc.b $00
[000bdd5d]                           dc.b $01
[000bdd5e]                           dc.b $00
[000bdd5f]                           dc.b $01
_05_ED_BOX:
[000bdd60]                           dc.b $00
[000bdd61]                           dc.b $08
[000bdd62]                           dc.b $00
[000bdd63]                           dc.b $07
[000bdd64]                           dc.b $00
[000bdd65]                           dc.b $07
[000bdd66]                           dc.b $00
[000bdd67]                           dc.b $14
[000bdd68]                           dc.b $00
[000bdd69]                           dc.b $40
[000bdd6a]                           dc.b $00
[000bdd6b]                           dc.b $20
[000bdd6c]                           dc.b $00
[000bdd6d]                           dc.b $ff
[000bdd6e]                           dc.w $1101
[000bdd70]                           dc.b $00
[000bdd71]                           dc.b $10
[000bdd72]                           dc.b $00
[000bdd73]                           dc.b $01
[000bdd74]                           dc.b $00
[000bdd75]                           dc.b $0b
[000bdd76]                           dc.b $00
[000bdd77]                           dc.b $01
_05aED_BOX:
[000bdd78] 0002f90c                  dc.l edbo_type
[000bdd7c]                           dc.b $00
[000bdd7d]                           dc.b $00
[000bdd7e]                           dc.b $00
[000bdd7f]                           dc.b $00
[000bdd80]                           dc.w $8000
[000bdd82]                           dc.w $8854
[000bdd84]                           dc.b $00
[000bdd85]                           dc.b $00
[000bdd86]                           dc.b $00
[000bdd87]                           dc.b $00
[000bdd88]                           dc.b $00
[000bdd89]                           dc.b $00
[000bdd8a]                           dc.b $00
[000bdd8b]                           dc.b $00
[000bdd8c]                           dc.b $00
[000bdd8d]                           dc.b $00
[000bdd8e]                           dc.b $00
[000bdd8f]                           dc.b $00
_07_ED_BOX:
[000bdd90]                           dc.b $00
[000bdd91]                           dc.b $05
[000bdd92]                           dc.w $ffff
[000bdd94]                           dc.w $ffff
[000bdd96]                           dc.b $00
[000bdd97]                           dc.b $18
[000bdd98]                           dc.b $00
[000bdd99]                           dc.b $00
[000bdd9a]                           dc.b $00
[000bdd9b]                           dc.b $00
[000bdd9c] 000bd670                  dc.l A_3DBUTTON23
[000bdda0]                           dc.b $00
[000bdda1]                           dc.b $00
[000bdda2]                           dc.b $00
[000bdda3]                           dc.b $00
[000bdda4]                           dc.b $00
[000bdda5]                           dc.b $0b
[000bdda6]                           dc.b $00
[000bdda7]                           dc.b $01
_08_ED_BOX:
[000bdda8]                           dc.b $00
[000bdda9]                           dc.b $0a
[000bddaa]                           dc.w $ffff
[000bddac]                           dc.w $ffff
[000bddae]                           dc.b $00
[000bddaf]                           dc.b $18
[000bddb0]                           dc.w $4007
[000bddb2]                           dc.b $00
[000bddb3]                           dc.b $10
[000bddb4] 000bd3d0                  dc.l A_3DBUTTON02
[000bddb8]                           dc.b $00
[000bddb9]                           dc.b $21
[000bddba]                           dc.b $00
[000bddbb]                           dc.b $01
[000bddbc]                           dc.b $00
[000bddbd]                           dc.b $0c
[000bddbe]                           dc.b $00
[000bddbf]                           dc.b $02
_08aED_BOX:
[000bddc0] 0002fa3a                  dc.l edbo_ok
[000bddc4]                           dc.b $00
[000bddc5]                           dc.b $00
[000bddc6]                           dc.b $00
[000bddc7]                           dc.b $00
[000bddc8]                           dc.w $8000
[000bddca]                           dc.w $884f
[000bddcc]                           dc.b $00
[000bddcd]                           dc.b $00
[000bddce]                           dc.b $00
[000bddcf]                           dc.b $00
[000bddd0]                           dc.b $00
[000bddd1]                           dc.b $00
[000bddd2]                           dc.b $00
[000bddd3]                           dc.b $00
[000bddd4]                           dc.b $00
[000bddd5]                           dc.b $00
[000bddd6]                           dc.b $00
[000bddd7]                           dc.b $00
_10_ED_BOX:
[000bddd8]                           dc.b $00
[000bddd9]                           dc.b $0c
[000bddda]                           dc.w $ffff
[000bdddc]                           dc.w $ffff
[000bddde]                           dc.b $00
[000bdddf]                           dc.b $18
[000bdde0]                           dc.w $4005
[000bdde2]                           dc.b $00
[000bdde3]                           dc.b $10
[000bdde4] 000bd450                  dc.l A_3DBUTTON06
[000bdde8]                           dc.b $00
[000bdde9]                           dc.b $2f
[000bddea]                           dc.b $00
[000bddeb]                           dc.b $01
[000bddec]                           dc.b $00
[000bdded]                           dc.b $0c
[000bddee]                           dc.b $00
[000bddef]                           dc.b $02
_10aED_BOX:
[000bddf0] 0002d91e                  dc.l ed_abort
[000bddf4]                           dc.b $00
[000bddf5]                           dc.b $00
[000bddf6]                           dc.b $00
[000bddf7]                           dc.b $00
[000bddf8]                           dc.w $8000
[000bddfa]                           dc.w $8841
[000bddfc]                           dc.b $00
[000bddfd]                           dc.b $00
[000bddfe]                           dc.b $00
[000bddff]                           dc.b $00
[000bde00]                           dc.b $00
[000bde01]                           dc.b $00
[000bde02]                           dc.b $00
[000bde03]                           dc.b $00
[000bde04]                           dc.b $00
[000bde05]                           dc.b $00
[000bde06]                           dc.b $00
[000bde07]                           dc.b $00
_12_ED_BOX:
[000bde08]                           dc.b $00
[000bde09]                           dc.b $1a
[000bde0a]                           dc.b $00
[000bde0b]                           dc.b $0d
[000bde0c]                           dc.b $00
[000bde0d]                           dc.b $19
[000bde0e]                           dc.b $00
[000bde0f]                           dc.b $18
[000bde10]                           dc.b $00
[000bde11]                           dc.b $40
[000bde12]                           dc.b $00
[000bde13]                           dc.b $00
[000bde14] 000bd7d0                  dc.l A_INNERFRAME05
[000bde18]                           dc.b $00
[000bde19]                           dc.b $01
[000bde1a]                           dc.b $00
[000bde1b]                           dc.b $04
[000bde1c]                           dc.b $00
[000bde1d]                           dc.b $3a
[000bde1e]                           dc.b $00
[000bde1f]                           dc.b $03
_13_ED_BOX:
[000bde20]                           dc.b $00
[000bde21]                           dc.b $11
[000bde22]                           dc.b $00
[000bde23]                           dc.b $0f
[000bde24]                           dc.b $00
[000bde25]                           dc.b $10
[000bde26]                           dc.b $00
[000bde27]                           dc.b $14
[000bde28]                           dc.b $00
[000bde29]                           dc.b $40
[000bde2a]                           dc.b $00
[000bde2b]                           dc.b $20
[000bde2c]                           dc.b $00
[000bde2d]                           dc.b $ff
[000bde2e]                           dc.w $1101
[000bde30]                           dc.b $00
[000bde31]                           dc.b $08
[000bde32]                           dc.b $00
[000bde33]                           dc.b $01
[000bde34]                           dc.b $00
[000bde35]                           dc.b $12
[000bde36]                           dc.b $00
[000bde37]                           dc.b $01
_13aED_BOX:
[000bde38] 0002f8a4                  dc.l edbo_textcol
[000bde3c]                           dc.b $00
[000bde3d]                           dc.b $00
[000bde3e]                           dc.b $00
[000bde3f]                           dc.b $00
[000bde40]                           dc.w $8000
[000bde42]                           dc.w $8846
[000bde44]                           dc.b $00
[000bde45]                           dc.b $00
[000bde46]                           dc.b $00
[000bde47]                           dc.b $00
[000bde48]                           dc.b $00
[000bde49]                           dc.b $00
[000bde4a]                           dc.b $00
[000bde4b]                           dc.b $00
[000bde4c]                           dc.b $00
[000bde4d]                           dc.b $00
[000bde4e]                           dc.b $00
[000bde4f]                           dc.b $00
_15_ED_BOX:
[000bde50]                           dc.b $00
[000bde51]                           dc.b $10
[000bde52]                           dc.w $ffff
[000bde54]                           dc.w $ffff
[000bde56]                           dc.b $00
[000bde57]                           dc.b $14
[000bde58]                           dc.b $00
[000bde59]                           dc.b $00
[000bde5a]                           dc.b $00
[000bde5b]                           dc.b $00
[000bde5c]                           dc.b $00
[000bde5d]                           dc.b $01
[000bde5e]                           dc.w $1171
[000bde60]                           dc.b $00
[000bde61]                           dc.b $10
[000bde62]                           dc.b $00
[000bde63]                           dc.b $00
[000bde64]                           dc.b $00
[000bde65]                           dc.b $02
[000bde66]                           dc.b $00
[000bde67]                           dc.b $01
_16_ED_BOX:
[000bde68]                           dc.b $00
[000bde69]                           dc.b $0d
[000bde6a]                           dc.w $ffff
[000bde6c]                           dc.w $ffff
[000bde6e]                           dc.b $00
[000bde6f]                           dc.b $18
[000bde70]                           dc.b $00
[000bde71]                           dc.b $00
[000bde72]                           dc.b $00
[000bde73]                           dc.b $00
[000bde74] 000bd670                  dc.l A_3DBUTTON23
[000bde78]                           dc.b $00
[000bde79]                           dc.b $00
[000bde7a]                           dc.b $00
[000bde7b]                           dc.b $00
[000bde7c]                           dc.b $00
[000bde7d]                           dc.b $10
[000bde7e]                           dc.b $00
[000bde7f]                           dc.b $01
_17_ED_BOX:
[000bde80]                           dc.b $00
[000bde81]                           dc.b $13
[000bde82]                           dc.w $ffff
[000bde84]                           dc.w $ffff
[000bde86]                           dc.b $00
[000bde87]                           dc.b $1b
[000bde88]                           dc.b $00
[000bde89]                           dc.b $05
[000bde8a]                           dc.b $00
[000bde8b]                           dc.b $00
[000bde8c]                           dc.w $43ff
[000bde8e]                           dc.w $1121
[000bde90]                           dc.b $00
[000bde91]                           dc.b $24
[000bde92]                           dc.b $00
[000bde93]                           dc.b $01
[000bde94]                           dc.b $00
[000bde95]                           dc.b $03
[000bde96]                           dc.b $00
[000bde97]                           dc.b $01
_17aED_BOX:
[000bde98] 0002f8f4                  dc.l edbo_trans
[000bde9c]                           dc.b $00
[000bde9d]                           dc.b $00
[000bde9e]                           dc.b $00
[000bde9f]                           dc.b $00
[000bdea0]                           dc.w $8000
[000bdea2]                           dc.b $00
[000bdea3]                           dc.b $00
[000bdea4]                           dc.b $00
[000bdea5]                           dc.b $00
[000bdea6]                           dc.b $00
[000bdea7]                           dc.b $00
[000bdea8]                           dc.b $00
[000bdea9]                           dc.b $00
[000bdeaa]                           dc.b $00
[000bdeab]                           dc.b $00
[000bdeac]                           dc.b $00
[000bdead]                           dc.b $00
[000bdeae]                           dc.b $00
[000bdeaf]                           dc.b $00
_19_ED_BOX:
[000bdeb0]                           dc.b $00
[000bdeb1]                           dc.b $15
[000bdeb2]                           dc.w $ffff
[000bdeb4]                           dc.w $ffff
[000bdeb6]                           dc.b $00
[000bdeb7]                           dc.b $1b
[000bdeb8]                           dc.b $00
[000bdeb9]                           dc.b $05
[000bdeba]                           dc.b $00
[000bdebb]                           dc.b $00
[000bdebc]                           dc.w $43ff
[000bdebe]                           dc.w $11a1
[000bdec0]                           dc.b $00
[000bdec1]                           dc.b $28
[000bdec2]                           dc.b $00
[000bdec3]                           dc.b $01
[000bdec4]                           dc.b $00
[000bdec5]                           dc.b $03
[000bdec6]                           dc.b $00
[000bdec7]                           dc.b $01
_19aED_BOX:
[000bdec8] 0002f886                  dc.l edbo_replace
[000bdecc]                           dc.b $00
[000bdecd]                           dc.b $00
[000bdece]                           dc.b $00
[000bdecf]                           dc.b $00
[000bded0]                           dc.w $8000
[000bded2]                           dc.b $00
[000bded3]                           dc.b $00
[000bded4]                           dc.b $00
[000bded5]                           dc.b $00
[000bded6]                           dc.b $00
[000bded7]                           dc.b $00
[000bded8]                           dc.b $00
[000bded9]                           dc.b $00
[000bdeda]                           dc.b $00
[000bdedb]                           dc.b $00
[000bdedc]                           dc.b $00
[000bdedd]                           dc.b $00
[000bdede]                           dc.b $00
[000bdedf]                           dc.b $00
_21_ED_BOX:
[000bdee0]                           dc.b $00
[000bdee1]                           dc.b $16
[000bdee2]                           dc.w $ffff
[000bdee4]                           dc.w $ffff
[000bdee6]                           dc.b $00
[000bdee7]                           dc.b $18
[000bdee8]                           dc.b $00
[000bdee9]                           dc.b $08
[000bdeea]                           dc.b $00
[000bdeeb]                           dc.b $10
[000bdeec] 000bd770                  dc.l A_BOXED01
[000bdef0]                           dc.b $00
[000bdef1]                           dc.b $37
[000bdef2]                           dc.b $00
[000bdef3]                           dc.b $01
[000bdef4]                           dc.b $00
[000bdef5]                           dc.b $01
[000bdef6]                           dc.b $00
[000bdef7]                           dc.b $01
_22_ED_BOX:
[000bdef8]                           dc.b $00
[000bdef9]                           dc.b $18
[000bdefa]                           dc.b $00
[000bdefb]                           dc.b $17
[000bdefc]                           dc.b $00
[000bdefd]                           dc.b $17
[000bdefe]                           dc.b $00
[000bdeff]                           dc.b $1c
[000bdf00]                           dc.b $00
[000bdf01]                           dc.b $40
[000bdf02]                           dc.b $00
[000bdf03]                           dc.b $00
[000bdf04] 000bd369                  dc.l TEXT_13
[000bdf08]                           dc.b $00
[000bdf09]                           dc.b $01
[000bdf0a]                           dc.b $00
[000bdf0b]                           dc.b $01
[000bdf0c]                           dc.b $00
[000bdf0d]                           dc.b $06
[000bdf0e]                           dc.b $00
[000bdf0f]                           dc.b $01
_23_ED_BOX:
[000bdf10]                           dc.b $00
[000bdf11]                           dc.b $16
[000bdf12]                           dc.w $ffff
[000bdf14]                           dc.w $ffff
[000bdf16]                           dc.b $00
[000bdf17]                           dc.b $18
[000bdf18]                           dc.b $00
[000bdf19]                           dc.b $40
[000bdf1a]                           dc.b $00
[000bdf1b]                           dc.b $00
[000bdf1c] 000bd750                  dc.l A_ARROWS02
[000bdf20]                           dc.b $00
[000bdf21]                           dc.b $00
[000bdf22]                           dc.b $00
[000bdf23]                           dc.b $00
[000bdf24]                           dc.b $00
[000bdf25]                           dc.b $01
[000bdf26]                           dc.b $00
[000bdf27]                           dc.b $01
_24_ED_BOX:
[000bdf28]                           dc.b $00
[000bdf29]                           dc.b $19
[000bdf2a]                           dc.w $ffff
[000bdf2c]                           dc.w $ffff
[000bdf2e]                           dc.b $00
[000bdf2f]                           dc.b $1c
[000bdf30]                           dc.b $00
[000bdf31]                           dc.b $40
[000bdf32]                           dc.b $00
[000bdf33]                           dc.b $00
[000bdf34] 000bd340                  dc.l TEXT_02
[000bdf38]                           dc.b $00
[000bdf39]                           dc.b $1d
[000bdf3a]                           dc.b $00
[000bdf3b]                           dc.b $01
[000bdf3c]                           dc.b $00
[000bdf3d]                           dc.b $06
[000bdf3e]                           dc.b $00
[000bdf3f]                           dc.b $01
_25_ED_BOX:
[000bdf40]                           dc.b $00
[000bdf41]                           dc.b $0c
[000bdf42]                           dc.w $ffff
[000bdf44]                           dc.w $ffff
[000bdf46]                           dc.b $00
[000bdf47]                           dc.b $1c
[000bdf48]                           dc.b $00
[000bdf49]                           dc.b $40
[000bdf4a]                           dc.b $00
[000bdf4b]                           dc.b $00
[000bdf4c] 000bd347                  dc.l TEXT_03
[000bdf50]                           dc.b $00
[000bdf51]                           dc.b $2e
[000bdf52]                           dc.b $00
[000bdf53]                           dc.b $01
[000bdf54]                           dc.b $00
[000bdf55]                           dc.b $08
[000bdf56]                           dc.b $00
[000bdf57]                           dc.b $01
_26_ED_BOX:
[000bdf58]                           dc.b $00
[000bdf59]                           dc.b $30
[000bdf5a]                           dc.b $00
[000bdf5b]                           dc.b $1b
[000bdf5c]                           dc.b $00
[000bdf5d]                           dc.b $2f
[000bdf5e]                           dc.b $00
[000bdf5f]                           dc.b $18
[000bdf60]                           dc.b $00
[000bdf61]                           dc.b $40
[000bdf62]                           dc.b $00
[000bdf63]                           dc.b $00
[000bdf64] 000bd7b0                  dc.l A_INNERFRAME04
[000bdf68]                           dc.b $00
[000bdf69]                           dc.b $01
[000bdf6a]                           dc.b $00
[000bdf6b]                           dc.b $07
[000bdf6c]                           dc.b $00
[000bdf6d]                           dc.b $1e
[000bdf6e]                           dc.b $00
[000bdf6f]                           dc.b $05
_27_ED_BOX:
[000bdf70]                           dc.b $00
[000bdf71]                           dc.b $1d
[000bdf72]                           dc.w $ffff
[000bdf74]                           dc.w $ffff
[000bdf76]                           dc.b $00
[000bdf77]                           dc.b $14
[000bdf78]                           dc.b $00
[000bdf79]                           dc.b $05
[000bdf7a]                           dc.b $00
[000bdf7b]                           dc.b $00
[000bdf7c]                           dc.b $00
[000bdf7d]                           dc.b $03
[000bdf7e]                           dc.w $1111
[000bdf80]                           dc.b $00
[000bdf81]                           dc.b $08
[000bdf82]                           dc.b $00
[000bdf83]                           dc.b $03
[000bdf84]                           dc.b $00
[000bdf85]                           dc.b $02
[000bdf86]                           dc.b $00
[000bdf87]                           dc.b $01
_27aED_BOX:
[000bdf88] 0002fc24                  dc.l edbo_th
[000bdf8c]                           dc.b $00
[000bdf8d]                           dc.b $00
[000bdf8e]                           dc.b $00
[000bdf8f]                           dc.b $00
[000bdf90]                           dc.w $8000
[000bdf92]                           dc.b $00
[000bdf93]                           dc.b $00
[000bdf94]                           dc.b $00
[000bdf95]                           dc.b $00
[000bdf96]                           dc.b $00
[000bdf97]                           dc.b $00
[000bdf98]                           dc.b $00
[000bdf99]                           dc.b $00
[000bdf9a]                           dc.b $00
[000bdf9b]                           dc.b $00
[000bdf9c]                           dc.b $00
[000bdf9d]                           dc.b $00
[000bdf9e]                           dc.b $00
[000bdf9f]                           dc.b $00
_29_ED_BOX:
[000bdfa0]                           dc.b $00
[000bdfa1]                           dc.b $1f
[000bdfa2]                           dc.w $ffff
[000bdfa4]                           dc.w $ffff
[000bdfa6]                           dc.b $00
[000bdfa7]                           dc.b $14
[000bdfa8]                           dc.b $00
[000bdfa9]                           dc.b $05
[000bdfaa]                           dc.b $00
[000bdfab]                           dc.b $00
[000bdfac]                           dc.b $00
[000bdfad]                           dc.b $02
[000bdfae]                           dc.w $1111
[000bdfb0]                           dc.b $00
[000bdfb1]                           dc.b $0b
[000bdfb2]                           dc.b $00
[000bdfb3]                           dc.b $03
[000bdfb4]                           dc.b $00
[000bdfb5]                           dc.b $02
[000bdfb6]                           dc.b $00
[000bdfb7]                           dc.b $01
_29aED_BOX:
[000bdfb8] 0002fc24                  dc.l edbo_th
[000bdfbc]                           dc.b $00
[000bdfbd]                           dc.b $00
[000bdfbe]                           dc.b $00
[000bdfbf]                           dc.b $00
[000bdfc0]                           dc.w $8000
[000bdfc2]                           dc.b $00
[000bdfc3]                           dc.b $00
[000bdfc4]                           dc.b $00
[000bdfc5]                           dc.b $00
[000bdfc6]                           dc.b $00
[000bdfc7]                           dc.b $00
[000bdfc8]                           dc.b $00
[000bdfc9]                           dc.b $00
[000bdfca]                           dc.b $00
[000bdfcb]                           dc.b $00
[000bdfcc]                           dc.b $00
[000bdfcd]                           dc.b $00
[000bdfce]                           dc.b $00
[000bdfcf]                           dc.b $00
_31_ED_BOX:
[000bdfd0]                           dc.b $00
[000bdfd1]                           dc.b $21
[000bdfd2]                           dc.w $ffff
[000bdfd4]                           dc.w $ffff
[000bdfd6]                           dc.b $00
[000bdfd7]                           dc.b $14
[000bdfd8]                           dc.b $00
[000bdfd9]                           dc.b $05
[000bdfda]                           dc.b $00
[000bdfdb]                           dc.b $00
[000bdfdc]                           dc.b $00
[000bdfdd]                           dc.b $01
[000bdfde]                           dc.w $1111
[000bdfe0]                           dc.b $00
[000bdfe1]                           dc.b $0e
[000bdfe2]                           dc.b $00
[000bdfe3]                           dc.b $03
[000bdfe4]                           dc.b $00
[000bdfe5]                           dc.b $02
[000bdfe6]                           dc.b $00
[000bdfe7]                           dc.b $01
_31aED_BOX:
[000bdfe8] 0002fc24                  dc.l edbo_th
[000bdfec]                           dc.b $00
[000bdfed]                           dc.b $00
[000bdfee]                           dc.b $00
[000bdfef]                           dc.b $00
[000bdff0]                           dc.w $8000
[000bdff2]                           dc.b $00
[000bdff3]                           dc.b $00
[000bdff4]                           dc.b $00
[000bdff5]                           dc.b $00
[000bdff6]                           dc.b $00
[000bdff7]                           dc.b $00
[000bdff8]                           dc.b $00
[000bdff9]                           dc.b $00
[000bdffa]                           dc.b $00
[000bdffb]                           dc.b $00
[000bdffc]                           dc.b $00
[000bdffd]                           dc.b $00
[000bdffe]                           dc.b $00
[000bdfff]                           dc.b $00
_33_ED_BOX:
[000be000]                           dc.b $00
[000be001]                           dc.b $23
[000be002]                           dc.w $ffff
[000be004]                           dc.w $ffff
[000be006]                           dc.b $00
[000be007]                           dc.b $14
[000be008]                           dc.b $00
[000be009]                           dc.b $05
[000be00a]                           dc.b $00
[000be00b]                           dc.b $00
[000be00c]                           dc.b $00
[000be00d]                           dc.b $00
[000be00e]                           dc.w $1111
[000be010]                           dc.b $00
[000be011]                           dc.b $11
[000be012]                           dc.b $00
[000be013]                           dc.b $03
[000be014]                           dc.b $00
[000be015]                           dc.b $02
[000be016]                           dc.b $00
[000be017]                           dc.b $01
_33aED_BOX:
[000be018] 0002fc24                  dc.l edbo_th
[000be01c]                           dc.b $00
[000be01d]                           dc.b $00
[000be01e]                           dc.b $00
[000be01f]                           dc.b $00
[000be020]                           dc.w $8000
[000be022]                           dc.b $00
[000be023]                           dc.b $00
[000be024]                           dc.b $00
[000be025]                           dc.b $00
[000be026]                           dc.b $00
[000be027]                           dc.b $00
[000be028]                           dc.b $00
[000be029]                           dc.b $00
[000be02a]                           dc.b $00
[000be02b]                           dc.b $00
[000be02c]                           dc.b $00
[000be02d]                           dc.b $00
[000be02e]                           dc.b $00
[000be02f]                           dc.b $00
_35_ED_BOX:
[000be030]                           dc.b $00
[000be031]                           dc.b $25
[000be032]                           dc.w $ffff
[000be034]                           dc.w $ffff
[000be036]                           dc.b $00
[000be037]                           dc.b $14
[000be038]                           dc.b $00
[000be039]                           dc.b $05
[000be03a]                           dc.b $00
[000be03b]                           dc.b $00
[000be03c]                           dc.b $00
[000be03d]                           dc.b $ff
[000be03e]                           dc.w $1111
[000be040]                           dc.b $00
[000be041]                           dc.b $14
[000be042]                           dc.b $00
[000be043]                           dc.b $03
[000be044]                           dc.b $00
[000be045]                           dc.b $02
[000be046]                           dc.b $00
[000be047]                           dc.b $01
_35aED_BOX:
[000be048] 0002fc24                  dc.l edbo_th
[000be04c]                           dc.b $00
[000be04d]                           dc.b $00
[000be04e]                           dc.b $00
[000be04f]                           dc.b $00
[000be050]                           dc.w $8000
[000be052]                           dc.b $00
[000be053]                           dc.b $00
[000be054]                           dc.b $00
[000be055]                           dc.b $00
[000be056]                           dc.b $00
[000be057]                           dc.b $00
[000be058]                           dc.b $00
[000be059]                           dc.b $00
[000be05a]                           dc.b $00
[000be05b]                           dc.b $00
[000be05c]                           dc.b $00
[000be05d]                           dc.b $00
[000be05e]                           dc.b $00
[000be05f]                           dc.b $00
_37_ED_BOX:
[000be060]                           dc.b $00
[000be061]                           dc.b $27
[000be062]                           dc.w $ffff
[000be064]                           dc.w $ffff
[000be066]                           dc.b $00
[000be067]                           dc.b $14
[000be068]                           dc.b $00
[000be069]                           dc.b $05
[000be06a]                           dc.b $00
[000be06b]                           dc.b $00
[000be06c]                           dc.b $00
[000be06d]                           dc.b $fe
[000be06e]                           dc.w $1111
[000be070]                           dc.b $00
[000be071]                           dc.b $17
[000be072]                           dc.b $00
[000be073]                           dc.b $03
[000be074]                           dc.b $00
[000be075]                           dc.b $02
[000be076]                           dc.b $00
[000be077]                           dc.b $01
_37aED_BOX:
[000be078] 0002fc24                  dc.l edbo_th
[000be07c]                           dc.b $00
[000be07d]                           dc.b $00
[000be07e]                           dc.b $00
[000be07f]                           dc.b $00
[000be080]                           dc.w $8000
[000be082]                           dc.b $00
[000be083]                           dc.b $00
[000be084]                           dc.b $00
[000be085]                           dc.b $00
[000be086]                           dc.b $00
[000be087]                           dc.b $00
[000be088]                           dc.b $00
[000be089]                           dc.b $00
[000be08a]                           dc.b $00
[000be08b]                           dc.b $00
[000be08c]                           dc.b $00
[000be08d]                           dc.b $00
[000be08e]                           dc.b $00
[000be08f]                           dc.b $00
_39_ED_BOX:
[000be090]                           dc.b $00
[000be091]                           dc.b $29
[000be092]                           dc.w $ffff
[000be094]                           dc.w $ffff
[000be096]                           dc.b $00
[000be097]                           dc.b $14
[000be098]                           dc.b $00
[000be099]                           dc.b $05
[000be09a]                           dc.b $00
[000be09b]                           dc.b $00
[000be09c]                           dc.b $00
[000be09d]                           dc.b $fd
[000be09e]                           dc.w $1111
[000be0a0]                           dc.b $00
[000be0a1]                           dc.b $1a
[000be0a2]                           dc.b $00
[000be0a3]                           dc.b $03
[000be0a4]                           dc.b $00
[000be0a5]                           dc.b $02
[000be0a6]                           dc.b $00
[000be0a7]                           dc.b $01
_39aED_BOX:
[000be0a8] 0002fc24                  dc.l edbo_th
[000be0ac]                           dc.b $00
[000be0ad]                           dc.b $00
[000be0ae]                           dc.b $00
[000be0af]                           dc.b $00
[000be0b0]                           dc.w $8000
[000be0b2]                           dc.b $00
[000be0b3]                           dc.b $00
[000be0b4]                           dc.b $00
[000be0b5]                           dc.b $00
[000be0b6]                           dc.b $00
[000be0b7]                           dc.b $00
[000be0b8]                           dc.b $00
[000be0b9]                           dc.b $00
[000be0ba]                           dc.b $00
[000be0bb]                           dc.b $00
[000be0bc]                           dc.b $00
[000be0bd]                           dc.b $00
[000be0be]                           dc.b $00
[000be0bf]                           dc.b $00
_41_ED_BOX:
[000be0c0]                           dc.b $00
[000be0c1]                           dc.b $2d
[000be0c2]                           dc.b $00
[000be0c3]                           dc.b $2b
[000be0c4]                           dc.b $00
[000be0c5]                           dc.b $2c
[000be0c6]                           dc.b $00
[000be0c7]                           dc.b $14
[000be0c8]                           dc.b $00
[000be0c9]                           dc.b $40
[000be0ca]                           dc.b $00
[000be0cb]                           dc.b $20
[000be0cc]                           dc.b $00
[000be0cd]                           dc.b $ff
[000be0ce]                           dc.w $1101
[000be0d0]                           dc.b $00
[000be0d1]                           dc.b $08
[000be0d2]                           dc.b $00
[000be0d3]                           dc.b $01
[000be0d4]                           dc.b $00
[000be0d5]                           dc.b $12
[000be0d6]                           dc.b $00
[000be0d7]                           dc.b $01
_41aED_BOX:
[000be0d8] 0002f702                  dc.l edbo_framecol
[000be0dc]                           dc.b $00
[000be0dd]                           dc.b $00
[000be0de]                           dc.b $00
[000be0df]                           dc.b $00
[000be0e0]                           dc.w $8000
[000be0e2]                           dc.w $8852
[000be0e4]                           dc.b $00
[000be0e5]                           dc.b $00
[000be0e6]                           dc.b $00
[000be0e7]                           dc.b $00
[000be0e8]                           dc.b $00
[000be0e9]                           dc.b $00
[000be0ea]                           dc.b $00
[000be0eb]                           dc.b $00
[000be0ec]                           dc.b $00
[000be0ed]                           dc.b $00
[000be0ee]                           dc.b $00
[000be0ef]                           dc.b $00
_43_ED_BOX:
[000be0f0]                           dc.b $00
[000be0f1]                           dc.b $2c
[000be0f2]                           dc.w $ffff
[000be0f4]                           dc.w $ffff
[000be0f6]                           dc.b $00
[000be0f7]                           dc.b $14
[000be0f8]                           dc.b $00
[000be0f9]                           dc.b $00
[000be0fa]                           dc.b $00
[000be0fb]                           dc.b $00
[000be0fc]                           dc.w $4301
[000be0fe]                           dc.w $1371
[000be100]                           dc.b $00
[000be101]                           dc.b $10
[000be102]                           dc.b $00
[000be103]                           dc.b $00
[000be104]                           dc.b $00
[000be105]                           dc.b $02
[000be106]                           dc.b $00
[000be107]                           dc.b $01
_44_ED_BOX:
[000be108]                           dc.b $00
[000be109]                           dc.b $29
[000be10a]                           dc.w $ffff
[000be10c]                           dc.w $ffff
[000be10e]                           dc.b $00
[000be10f]                           dc.b $18
[000be110]                           dc.b $00
[000be111]                           dc.b $00
[000be112]                           dc.b $00
[000be113]                           dc.b $00
[000be114] 000bd670                  dc.l A_3DBUTTON23
[000be118]                           dc.b $00
[000be119]                           dc.b $00
[000be11a]                           dc.b $00
[000be11b]                           dc.b $00
[000be11c]                           dc.b $00
[000be11d]                           dc.b $10
[000be11e]                           dc.b $00
[000be11f]                           dc.b $01
_45_ED_BOX:
[000be120]                           dc.b $00
[000be121]                           dc.b $2f
[000be122]                           dc.b $00
[000be123]                           dc.b $2e
[000be124]                           dc.b $00
[000be125]                           dc.b $2e
[000be126]                           dc.b $00
[000be127]                           dc.b $1c
[000be128]                           dc.b $00
[000be129]                           dc.b $40
[000be12a]                           dc.b $00
[000be12b]                           dc.b $00
[000be12c] 000bd369                  dc.l TEXT_13
[000be130]                           dc.b $00
[000be131]                           dc.b $01
[000be132]                           dc.b $00
[000be133]                           dc.b $01
[000be134]                           dc.b $00
[000be135]                           dc.b $06
[000be136]                           dc.b $00
[000be137]                           dc.b $01
_46_ED_BOX:
[000be138]                           dc.b $00
[000be139]                           dc.b $2d
[000be13a]                           dc.w $ffff
[000be13c]                           dc.w $ffff
[000be13e]                           dc.b $00
[000be13f]                           dc.b $18
[000be140]                           dc.b $00
[000be141]                           dc.b $40
[000be142]                           dc.b $00
[000be143]                           dc.b $00
[000be144] 000bd750                  dc.l A_ARROWS02
[000be148]                           dc.b $00
[000be149]                           dc.b $02
[000be14a]                           dc.b $00
[000be14b]                           dc.b $00
[000be14c]                           dc.b $00
[000be14d]                           dc.b $01
[000be14e]                           dc.b $00
[000be14f]                           dc.b $01
_47_ED_BOX:
[000be150]                           dc.b $00
[000be151]                           dc.b $1a
[000be152]                           dc.w $ffff
[000be154]                           dc.w $ffff
[000be156]                           dc.b $00
[000be157]                           dc.b $1c
[000be158]                           dc.b $00
[000be159]                           dc.b $40
[000be15a]                           dc.b $00
[000be15b]                           dc.b $00
[000be15c] 000bd355                  dc.l TEXT_05
[000be160]                           dc.b $00
[000be161]                           dc.b $02
[000be162]                           dc.b $00
[000be163]                           dc.b $03
[000be164]                           dc.b $00
[000be165]                           dc.b $06
[000be166]                           dc.b $00
[000be167]                           dc.b $01
_48_ED_BOX:
[000be168]                           dc.b $00
[000be169]                           dc.b $00
[000be16a]                           dc.b $00
[000be16b]                           dc.b $31
[000be16c]                           dc.b $00
[000be16d]                           dc.b $39
[000be16e]                           dc.b $00
[000be16f]                           dc.b $18
[000be170]                           dc.b $00
[000be171]                           dc.b $00
[000be172]                           dc.b $00
[000be173]                           dc.b $00
[000be174] 000bd790                  dc.l A_INNERFRAME01
[000be178]                           dc.b $00
[000be179]                           dc.b $1f
[000be17a]                           dc.b $00
[000be17b]                           dc.b $07
[000be17c]                           dc.b $00
[000be17d]                           dc.b $1c
[000be17e]                           dc.b $00
[000be17f]                           dc.b $05
_49_ED_BOX:
[000be180]                           dc.b $00
[000be181]                           dc.b $33
[000be182]                           dc.w $ffff
[000be184]                           dc.w $ffff
[000be186]                           dc.b $00
[000be187]                           dc.b $14
[000be188]                           dc.b $00
[000be189]                           dc.b $40
[000be18a]                           dc.b $00
[000be18b]                           dc.b $20
[000be18c]                           dc.b $00
[000be18d]                           dc.b $ff
[000be18e]                           dc.w $1101
[000be190]                           dc.b $00
[000be191]                           dc.b $09
[000be192]                           dc.b $00
[000be193]                           dc.b $01
[000be194]                           dc.b $00
[000be195]                           dc.b $12
[000be196]                           dc.b $00
[000be197]                           dc.b $01
_49aED_BOX:
[000be198] 0002f7a0                  dc.l edbo_pattern
[000be19c]                           dc.b $00
[000be19d]                           dc.b $00
[000be19e]                           dc.b $00
[000be19f]                           dc.b $00
[000be1a0]                           dc.w $8000
[000be1a2]                           dc.w $884d
[000be1a4]                           dc.b $00
[000be1a5]                           dc.b $00
[000be1a6]                           dc.b $00
[000be1a7]                           dc.b $00
[000be1a8]                           dc.b $00
[000be1a9]                           dc.b $00
[000be1aa]                           dc.b $00
[000be1ab]                           dc.b $00
[000be1ac]                           dc.b $00
[000be1ad]                           dc.b $00
[000be1ae]                           dc.b $00
[000be1af]                           dc.b $00
_51_ED_BOX:
[000be1b0]                           dc.b $00
[000be1b1]                           dc.b $37
[000be1b2]                           dc.b $00
[000be1b3]                           dc.b $35
[000be1b4]                           dc.b $00
[000be1b5]                           dc.b $36
[000be1b6]                           dc.b $00
[000be1b7]                           dc.b $14
[000be1b8]                           dc.b $00
[000be1b9]                           dc.b $40
[000be1ba]                           dc.b $00
[000be1bb]                           dc.b $20
[000be1bc]                           dc.b $00
[000be1bd]                           dc.b $ff
[000be1be]                           dc.w $1101
[000be1c0]                           dc.b $00
[000be1c1]                           dc.b $09
[000be1c2]                           dc.b $00
[000be1c3]                           dc.b $03
[000be1c4]                           dc.b $00
[000be1c5]                           dc.b $12
[000be1c6]                           dc.b $00
[000be1c7]                           dc.b $01
_51aED_BOX:
[000be1c8] 0002f756                  dc.l edbo_intercol
[000be1cc]                           dc.b $00
[000be1cd]                           dc.b $00
[000be1ce]                           dc.b $00
[000be1cf]                           dc.b $00
[000be1d0]                           dc.w $8000
[000be1d2]                           dc.w $8842
[000be1d4]                           dc.b $00
[000be1d5]                           dc.b $00
[000be1d6]                           dc.b $00
[000be1d7]                           dc.b $00
[000be1d8]                           dc.b $00
[000be1d9]                           dc.b $00
[000be1da]                           dc.b $00
[000be1db]                           dc.b $00
[000be1dc]                           dc.b $00
[000be1dd]                           dc.b $00
[000be1de]                           dc.b $00
[000be1df]                           dc.b $00
_53_ED_BOX:
[000be1e0]                           dc.b $00
[000be1e1]                           dc.b $36
[000be1e2]                           dc.w $ffff
[000be1e4]                           dc.w $ffff
[000be1e6]                           dc.b $00
[000be1e7]                           dc.b $14
[000be1e8]                           dc.b $00
[000be1e9]                           dc.b $00
[000be1ea]                           dc.b $00
[000be1eb]                           dc.b $00
[000be1ec]                           dc.b $00
[000be1ed]                           dc.b $01
[000be1ee]                           dc.w $1171
[000be1f0]                           dc.b $00
[000be1f1]                           dc.b $10
[000be1f2]                           dc.b $00
[000be1f3]                           dc.b $00
[000be1f4]                           dc.b $00
[000be1f5]                           dc.b $02
[000be1f6]                           dc.b $00
[000be1f7]                           dc.b $01
_54_ED_BOX:
[000be1f8]                           dc.b $00
[000be1f9]                           dc.b $33
[000be1fa]                           dc.w $ffff
[000be1fc]                           dc.w $ffff
[000be1fe]                           dc.b $00
[000be1ff]                           dc.b $18
[000be200]                           dc.b $00
[000be201]                           dc.b $00
[000be202]                           dc.b $00
[000be203]                           dc.b $00
[000be204] 000bd670                  dc.l A_3DBUTTON23
[000be208]                           dc.b $00
[000be209]                           dc.b $00
[000be20a]                           dc.b $00
[000be20b]                           dc.b $00
[000be20c]                           dc.b $00
[000be20d]                           dc.b $10
[000be20e]                           dc.b $00
[000be20f]                           dc.b $01
_55_ED_BOX:
[000be210]                           dc.b $00
[000be211]                           dc.b $39
[000be212]                           dc.b $00
[000be213]                           dc.b $38
[000be214]                           dc.b $00
[000be215]                           dc.b $38
[000be216]                           dc.b $00
[000be217]                           dc.b $1c
[000be218]                           dc.b $00
[000be219]                           dc.b $40
[000be21a]                           dc.b $00
[000be21b]                           dc.b $00
[000be21c] 000bd369                  dc.l TEXT_13
[000be220]                           dc.b $00
[000be221]                           dc.b $02
[000be222]                           dc.b $00
[000be223]                           dc.b $03
[000be224]                           dc.b $00
[000be225]                           dc.b $06
[000be226]                           dc.b $00
[000be227]                           dc.b $01
_56_ED_BOX:
[000be228]                           dc.b $00
[000be229]                           dc.b $37
[000be22a]                           dc.w $ffff
[000be22c]                           dc.w $ffff
[000be22e]                           dc.b $00
[000be22f]                           dc.b $18
[000be230]                           dc.b $00
[000be231]                           dc.b $40
[000be232]                           dc.b $00
[000be233]                           dc.b $00
[000be234] 000bd750                  dc.l A_ARROWS02
[000be238]                           dc.b $00
[000be239]                           dc.b $03
[000be23a]                           dc.b $00
[000be23b]                           dc.b $00
[000be23c]                           dc.b $00
[000be23d]                           dc.b $01
[000be23e]                           dc.b $00
[000be23f]                           dc.b $01
_57_ED_BOX:
[000be240]                           dc.b $00
[000be241]                           dc.b $30
[000be242]                           dc.b $00
[000be243]                           dc.b $3a
[000be244]                           dc.b $00
[000be245]                           dc.b $3a
[000be246]                           dc.b $00
[000be247]                           dc.b $1c
[000be248]                           dc.b $00
[000be249]                           dc.b $40
[000be24a]                           dc.b $00
[000be24b]                           dc.b $00
[000be24c] 000bd338                  dc.l TEXT_01
[000be250]                           dc.b $00
[000be251]                           dc.b $01
[000be252]                           dc.b $00
[000be253]                           dc.b $01
[000be254]                           dc.b $00
[000be255]                           dc.b $08
[000be256]                           dc.b $00
[000be257]                           dc.b $01
_58_ED_BOX:
[000be258]                           dc.b $00
[000be259]                           dc.b $39
[000be25a]                           dc.w $ffff
[000be25c]                           dc.w $ffff
[000be25e]                           dc.b $00
[000be25f]                           dc.b $18
[000be260]                           dc.b $00
[000be261]                           dc.b $60
[000be262]                           dc.b $00
[000be263]                           dc.b $00
[000be264] 000bd750                  dc.l A_ARROWS02
[000be268]                           dc.b $00
[000be269]                           dc.b $00
[000be26a]                           dc.b $00
[000be26b]                           dc.b $00
[000be26c]                           dc.b $00
[000be26d]                           dc.b $01
[000be26e]                           dc.b $00
[000be26f]                           dc.b $01
colour_text:
[000be270] 000bd260                  dc.l COLOUR00
[000be274] 000bd267                  dc.l COLOUR01
[000be278] 000bd271                  dc.l COLOUR02
[000be27c] 000bd277                  dc.l COLOUR03
[000be280] 000bd27e                  dc.l COLOUR04
[000be284] 000bd285                  dc.l COLOUR05
[000be288] 000bd28c                  dc.l COLOUR06
[000be28c] 000bd295                  dc.l COLOUR07
[000be290] 000bd29f                  dc.l COLOUR08
[000be294] 000bd2ac                  dc.l COLOUR09
[000be298] 000bd2b9                  dc.l COLOUR10
[000be29c] 000bd2c5                  dc.l COLOUR11
[000be2a0] 000bd2d2                  dc.l COLOUR12
[000be2a4] 000bd2df                  dc.l COLOUR13
[000be2a8] 000bd2ec                  dc.l COLOUR14
[000be2ac] 000bd2f9                  dc.l COLOUR15
[000be2b0]                           dc.w $2000
sm:
[000be2b2]                           dc.b $00
[000be2b3]                           dc.b $00
[000be2b4]                           dc.b $00
[000be2b5]                           dc.b $00
[000be2b6] 0002fa3a                  dc.l edbo_ok
[000be2ba] 00049b7c                  dc.l Aob_delete
[000be2be] 000bd3a6                  dc.l title
[000be2c2] 000bd395                  dc.l help_title
[000be2c6]                           dc.b $00
[000be2c7]                           dc.b $00
[000be2c8]                           dc.b $00
[000be2c9]                           dc.b $00
