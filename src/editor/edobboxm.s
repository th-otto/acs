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
[0002f722] 4eb9 0002 f280            jsr        $0002F280
[0002f728] 544f                      addq.w     #2,a7
[0002f72a] 3600                      move.w     d0,d3
[0002f72c] 6b24                      bmi.s      $0002F752
[0002f72e] 2079 0010 1f12            movea.l    ACSblk,a0
[0002f734] 2268 025c                 movea.l    604(a0),a1
[0002f738] 3203                      move.w     d3,d1
[0002f73a] 0269 0fff 003e            andi.w     #$0FFF,62(a1)
[0002f740] c27c 000f                 and.w      #$000F,d1
[0002f744] e149                      lsl.w      #8,d1
[0002f746] e949                      lsl.w      #4,d1
[0002f748] 8369 003e                 or.w       d1,62(a1)
[0002f74c] 4eb9 0002 fc5e            jsr        $0002FC5E
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
[0002f770] 4eb9 0002 f280            jsr        $0002F280
[0002f776] 544f                      addq.w     #2,a7
[0002f778] 3600                      move.w     d0,d3
[0002f77a] 6b20                      bmi.s      $0002F79C
[0002f77c] 2079 0010 1f12            movea.l    ACSblk,a0
[0002f782] 2268 025c                 movea.l    604(a0),a1
[0002f786] 3203                      move.w     d3,d1
[0002f788] 0269 fff0 003e            andi.w     #$FFF0,62(a1)
[0002f78e] c27c 000f                 and.w      #$000F,d1
[0002f792] 8369 003e                 or.w       d1,62(a1)
[0002f796] 4eb9 0002 fc5e            jsr        $0002FC5E
[0002f79c] 361f                      move.w     (a7)+,d3
[0002f79e] 4e75                      rts
edbo_pattern:
[0002f7a0] 2f0a                      move.l     a2,-(a7)
[0002f7a2] 2f0b                      move.l     a3,-(a7)
[0002f7a4] 514f                      subq.w     #8,a7
[0002f7a6] 41f9 000b db68            lea.l      $000BDB68,a0
[0002f7ac] 4eb9 0004 9a5c            jsr        $00049A5C
[0002f7b2] 2448                      movea.l    a0,a2
[0002f7b4] 200a                      move.l     a2,d0
[0002f7b6] 6700 00c6                 beq        $0002F87E
[0002f7ba] 47f9 0010 1f12            lea.l      ACSblk,a3
[0002f7c0] 7031                      moveq.l    #49,d0
[0002f7c2] 2053                      movea.l    (a3),a0
[0002f7c4] 2268 0258                 movea.l    600(a0),a1
[0002f7c8] 2269 0014                 movea.l    20(a1),a1
[0002f7cc] 41d7                      lea.l      (a7),a0
[0002f7ce] 4eb9 0004 a3be            jsr        $0004A3BE
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
[0002f81c] 4eb9 0004 948a            jsr        $0004948A
[0002f822] 4a40                      tst.w      d0
[0002f824] 6f50                      ble.s      $0002F876
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
[0002f870] 4eb9 0002 fc5e            jsr        $0002FC5E
[0002f876] 204a                      movea.l    a2,a0
[0002f878] 4eb9 0004 9b7c            jsr        $00049B7C
[0002f87e] 504f                      addq.w     #8,a7
[0002f880] 265f                      movea.l    (a7)+,a3
[0002f882] 245f                      movea.l    (a7)+,a2
[0002f884] 4e75                      rts
edbo_replace:
[0002f886] 2079 0010 1f12            movea.l    ACSblk,a0
[0002f88c] 2268 025c                 movea.l    604(a0),a1
[0002f890] 0269 ff7f 003e            andi.w     #$FF7F,62(a1)
[0002f896] 0069 0080 003e            ori.w      #$0080,62(a1)
[0002f89c] 4eb9 0002 fc5e            jsr        $0002FC5E
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
[0002f8c2] 4eb9 0002 f280            jsr        $0002F280
[0002f8c8] 544f                      addq.w     #2,a7
[0002f8ca] 3600                      move.w     d0,d3
[0002f8cc] 6b22                      bmi.s      $0002F8F0
[0002f8ce] 2079 0010 1f12            movea.l    ACSblk,a0
[0002f8d4] 2268 025c                 movea.l    604(a0),a1
[0002f8d8] 3203                      move.w     d3,d1
[0002f8da] 0269 f0ff 003e            andi.w     #$F0FF,62(a1)
[0002f8e0] c27c 000f                 and.w      #$000F,d1
[0002f8e4] e149                      lsl.w      #8,d1
[0002f8e6] 8369 003e                 or.w       d1,62(a1)
[0002f8ea] 4eb9 0002 fc5e            jsr        $0002FC5E
[0002f8f0] 361f                      move.w     (a7)+,d3
[0002f8f2] 4e75                      rts
edbo_trans:
[0002f8f4] 2079 0010 1f12            movea.l    ACSblk,a0
[0002f8fa] 2268 025c                 movea.l    604(a0),a1
[0002f8fe] 0269 ff7f 003e            andi.w     #$FF7F,62(a1)
[0002f904] 4eb9 0002 fc5e            jsr        $0002FC5E
[0002f90a] 4e75                      rts
edbo_type:
[0002f90c] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0002f910] 514f                      subq.w     #8,a7
[0002f912] 45f9 000b dc88            lea.l      $000BDC88,a2
[0002f918] 204a                      movea.l    a2,a0
[0002f91a] 4eb9 0004 9a5c            jsr        $00049A5C
[0002f920] 2648                      movea.l    a0,a3
[0002f922] 200b                      move.l     a3,d0
[0002f924] 6700 010c                 beq        $0002FA32
[0002f928] 49f9 0010 1f12            lea.l      ACSblk,a4
[0002f92e] 7005                      moveq.l    #5,d0
[0002f930] 2054                      movea.l    (a4),a0
[0002f932] 2268 0258                 movea.l    600(a0),a1
[0002f936] 2269 0014                 movea.l    20(a1),a1
[0002f93a] 41d7                      lea.l      (a7),a0
[0002f93c] 4eb9 0004 a3be            jsr        $0004A3BE
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
[0002f966] 670a                      beq.s      $0002F972
[0002f968] 5b42                      subq.w     #5,d2
[0002f96a] 670e                      beq.s      $0002F97A
[0002f96c] 5542                      subq.w     #2,d2
[0002f96e] 6712                      beq.s      $0002F982
[0002f970] 6016                      bra.s      $0002F988
[0002f972] 006b 0004 0022            ori.w      #$0004,34(a3)
[0002f978] 600e                      bra.s      $0002F988
[0002f97a] 006b 0004 003a            ori.w      #$0004,58(a3)
[0002f980] 6006                      bra.s      $0002F988
[0002f982] 006b 0004 0052            ori.w      #$0004,82(a3)
[0002f988] 322f 0002                 move.w     2(a7),d1
[0002f98c] 3017                      move.w     (a7),d0
[0002f98e] 224b                      movea.l    a3,a1
[0002f990] 2054                      movea.l    (a4),a0
[0002f992] 2068 0258                 movea.l    600(a0),a0
[0002f996] 4eb9 0004 948a            jsr        $0004948A
[0002f99c] 3600                      move.w     d0,d3
[0002f99e] 5340                      subq.w     #1,d0
[0002f9a0] 670a                      beq.s      $0002F9AC
[0002f9a2] 5340                      subq.w     #1,d0
[0002f9a4] 6726                      beq.s      $0002F9CC
[0002f9a6] 5340                      subq.w     #1,d0
[0002f9a8] 6742                      beq.s      $0002F9EC
[0002f9aa] 605e                      bra.s      $0002FA0A
[0002f9ac] 2054                      movea.l    (a4),a0
[0002f9ae] 2268 025c                 movea.l    604(a0),a1
[0002f9b2] 337c 0014 0036            move.w     #$0014,54(a1)
[0002f9b8] 43ea f6f5                 lea.l      -2315(a2),a1
[0002f9bc] 7007                      moveq.l    #7,d0
[0002f9be] 2054                      movea.l    (a4),a0
[0002f9c0] 2068 025c                 movea.l    604(a0),a0
[0002f9c4] 4eb9 0004 afe0            jsr        $0004AFE0
[0002f9ca] 603e                      bra.s      $0002FA0A
[0002f9cc] 2054                      movea.l    (a4),a0
[0002f9ce] 2268 025c                 movea.l    604(a0),a1
[0002f9d2] 337c 0019 0036            move.w     #$0019,54(a1)
[0002f9d8] 43ea f6fb                 lea.l      -2309(a2),a1
[0002f9dc] 7007                      moveq.l    #7,d0
[0002f9de] 2054                      movea.l    (a4),a0
[0002f9e0] 2068 025c                 movea.l    604(a0),a0
[0002f9e4] 4eb9 0004 afe0            jsr        $0004AFE0
[0002f9ea] 601e                      bra.s      $0002FA0A
[0002f9ec] 2054                      movea.l    (a4),a0
[0002f9ee] 2268 025c                 movea.l    604(a0),a1
[0002f9f2] 337c 001b 0036            move.w     #$001B,54(a1)
[0002f9f8] 43ea f703                 lea.l      -2301(a2),a1
[0002f9fc] 7007                      moveq.l    #7,d0
[0002f9fe] 2054                      movea.l    (a4),a0
[0002fa00] 2068 025c                 movea.l    604(a0),a0
[0002fa04] 4eb9 0004 afe0            jsr        $0004AFE0
[0002fa0a] 4a43                      tst.w      d3
[0002fa0c] 6f1c                      ble.s      $0002FA2A
[0002fa0e] 72ff                      moveq.l    #-1,d1
[0002fa10] 7005                      moveq.l    #5,d0
[0002fa12] 2054                      movea.l    (a4),a0
[0002fa14] 2068 0258                 movea.l    600(a0),a0
[0002fa18] 2254                      movea.l    (a4),a1
[0002fa1a] 2469 0258                 movea.l    600(a1),a2
[0002fa1e] 226a 0066                 movea.l    102(a2),a1
[0002fa22] 4e91                      jsr        (a1)
[0002fa24] 4eb9 0002 fc5e            jsr        $0002FC5E
[0002fa2a] 204b                      movea.l    a3,a0
[0002fa2c] 4eb9 0004 9b7c            jsr        $00049B7C
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
[0002fa84] 4eb9 0005 e010            jsr        $0005E010
[0002fa8a] 2057                      movea.l    (a7),a0
[0002fa8c] 1010                      move.b     (a0),d0
[0002fa8e] 4880                      ext.w      d0
[0002fa90] 026c 00ff 0014            andi.w     #$00FF,20(a4)
[0002fa96] c07c 00ff                 and.w      #$00FF,d0
[0002fa9a] e148                      lsl.w      #8,d0
[0002fa9c] 816c 0014                 or.w       d0,20(a4)
[0002faa0] 4eb9 0002 d91e            jsr        $0002D91E
[0002faa6] 584f                      addq.w     #4,a7
[0002faa8] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0002faac] 4e75                      rts
set_box:
[0002faae] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0002fab2] 554f                      subq.w     #2,a7
[0002fab4] 2648                      movea.l    a0,a3
[0002fab6] 49f9 000b e270            lea.l      $000BE270,a4
[0002fabc] 41ec 0040                 lea.l      64(a4),a0
[0002fac0] 43d7                      lea.l      (a7),a1
[0002fac2] 12d8                      move.b     (a0)+,(a1)+
[0002fac4] 12d8                      move.b     (a0)+,(a1)+
[0002fac6] 41ec fa78                 lea.l      -1416(a4),a0
[0002faca] 4eb9 0004 9a5c            jsr        $00049A5C
[0002fad0] 2448                      movea.l    a0,a2
[0002fad2] 200a                      move.l     a2,d0
[0002fad4] 6606                      bne.s      $0002FADC
[0002fad6] 91c8                      suba.l     a0,a0
[0002fad8] 6000 0142                 bra        $0002FC1C
[0002fadc] 356b 000e 0036            move.w     14(a3),54(a2)
[0002fae2] 256b 0014 003c            move.l     20(a3),60(a2)
[0002fae8] 356b 0012 003a            move.w     18(a3),58(a2)
[0002faee] 7015                      moveq.l    #21,d0
[0002faf0] 224a                      movea.l    a2,a1
[0002faf2] 2079 0010 1f12            movea.l    ACSblk,a0
[0002faf8] 2068 0258                 movea.l    600(a0),a0
[0002fafc] 4eb9 0002 f23c            jsr        $0002F23C
[0002fb02] 302b 0014                 move.w     20(a3),d0
[0002fb06] e048                      lsr.w      #8,d0
[0002fb08] c07c 00ff                 and.w      #$00FF,d0
[0002fb0c] 1e80                      move.b     d0,(a7)
[0002fb0e] 43d7                      lea.l      (a7),a1
[0002fb10] 204a                      movea.l    a2,a0
[0002fb12] 7015                      moveq.l    #21,d0
[0002fb14] 4eb9 0004 afe0            jsr        $0004AFE0
[0002fb1a] 102b 000f                 move.b     15(a3),d0
[0002fb1e] 4880                      ext.w      d0
[0002fb20] 907c 0014                 sub.w      #$0014,d0
[0002fb24] 670a                      beq.s      $0002FB30
[0002fb26] 5b40                      subq.w     #5,d0
[0002fb28] 6716                      beq.s      $0002FB40
[0002fb2a] 5540                      subq.w     #2,d0
[0002fb2c] 6722                      beq.s      $0002FB50
[0002fb2e] 602e                      bra.s      $0002FB5E
[0002fb30] 43ec f10d                 lea.l      -3827(a4),a1
[0002fb34] 7007                      moveq.l    #7,d0
[0002fb36] 204a                      movea.l    a2,a0
[0002fb38] 4eb9 0004 afe0            jsr        $0004AFE0
[0002fb3e] 601e                      bra.s      $0002FB5E
[0002fb40] 43ec f113                 lea.l      -3821(a4),a1
[0002fb44] 7007                      moveq.l    #7,d0
[0002fb46] 204a                      movea.l    a2,a0
[0002fb48] 4eb9 0004 afe0            jsr        $0004AFE0
[0002fb4e] 600e                      bra.s      $0002FB5E
[0002fb50] 43ec f11b                 lea.l      -3813(a4),a1
[0002fb54] 7007                      moveq.l    #7,d0
[0002fb56] 204a                      movea.l    a2,a0
[0002fb58] 4eb9 0004 afe0            jsr        $0004AFE0
[0002fb5e] 362b 0016                 move.w     22(a3),d3
[0002fb62] 700c                      moveq.l    #12,d0
[0002fb64] e06b                      lsr.w      d0,d3
[0002fb66] c67c 000f                 and.w      #$000F,d3
[0002fb6a] 3203                      move.w     d3,d1
[0002fb6c] e549                      lsl.w      #2,d1
[0002fb6e] 2274 1000                 movea.l    0(a4,d1.w),a1
[0002fb72] 204a                      movea.l    a2,a0
[0002fb74] 702c                      moveq.l    #44,d0
[0002fb76] 4eb9 0004 afe0            jsr        $0004AFE0
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
[0002fb9e] 4eb9 0004 afe0            jsr        $0004AFE0
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
[0002fbe4] 4eb9 0004 afe0            jsr        $0004AFE0
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
[0002fc56] 4eb9 0002 fc5e            jsr        $0002FC5E
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
[0002fc7a] 4eb9 0005 e010            jsr        $0005E010
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
