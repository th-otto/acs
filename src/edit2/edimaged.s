
edim_col:
[0001fa96] 3f03                      move.w     d3,-(a7)
[0001fa98] 2f0a                      move.l     a2,-(a7)
[0001fa9a] 45f9 0010 1f12            lea.l      ACSblk,a2
[0001faa0] 700a                      moveq.l    #10,d0
[0001faa2] 3f00                      move.w     d0,-(a7)
[0001faa4] 740b                      moveq.l    #11,d2
[0001faa6] 7208                      moveq.l    #8,d1
[0001faa8] 2052                      movea.l    (a2),a0
[0001faaa] 2268 025c                 movea.l    604(a0),a1
[0001faae] 2069 0054                 movea.l    84(a1),a0
[0001fab2] 3028 000c                 move.w     12(a0),d0
[0001fab6] 4eb9 0002 f280            jsr        oe_colsel
[0001fabc] 544f                      addq.w     #2,a7
[0001fabe] 3600                      move.w     d0,d3
[0001fac0] 6b24                      bmi.s      edim_col_1
[0001fac2] 2052                      movea.l    (a2),a0
[0001fac4] 2268 025c                 movea.l    604(a0),a1
[0001fac8] 2069 0054                 movea.l    84(a1),a0
[0001facc] 3140 000c                 move.w     d0,12(a0)
[0001fad0] 72ff                      moveq.l    #-1,d1
[0001fad2] 2052                      movea.l    (a2),a0
[0001fad4] 2068 0258                 movea.l    600(a0),a0
[0001fad8] 2252                      movea.l    (a2),a1
[0001fada] 2269 0258                 movea.l    600(a1),a1
[0001fade] 2269 0066                 movea.l    102(a1),a1
[0001fae2] 7001                      moveq.l    #1,d0
[0001fae4] 4e91                      jsr        (a1)
edim_col_1:
[0001fae6] 245f                      movea.l    (a7)+,a2
[0001fae8] 361f                      move.w     (a7)+,d3
[0001faea] 4e75                      rts

edim_thin:
[0001faec] 2079 0010 1f12            movea.l    ACSblk,a0
[0001faf2] 2068 025c                 movea.l    604(a0),a0
[0001faf6] 41e8 0030                 lea.l      48(a0),a0
[0001fafa] 7008                      moveq.l    #8,d0
[0001fafc] 3140 0016                 move.w     d0,22(a0)
[0001fb00] 3140 0014                 move.w     d0,20(a0)
[0001fb04] 72ff                      moveq.l    #-1,d1
[0001fb06] 2079 0010 1f12            movea.l    ACSblk,a0
[0001fb0c] 2068 0258                 movea.l    600(a0),a0
[0001fb10] 2279 0010 1f12            movea.l    ACSblk,a1
[0001fb16] 2269 0258                 movea.l    600(a1),a1
[0001fb1a] 2269 0066                 movea.l    102(a1),a1
[0001fb1e] 7001                      moveq.l    #1,d0
[0001fb20] 4e91                      jsr        (a1)
[0001fb22] 4e75                      rts

edim_thick:
[0001fb24] 2079 0010 1f12            movea.l    ACSblk,a0
[0001fb2a] 2068 025c                 movea.l    604(a0),a0
[0001fb2e] 41e8 0030                 lea.l      48(a0),a0
[0001fb32] 7018                      moveq.l    #24,d0
[0001fb34] 3140 0016                 move.w     d0,22(a0)
[0001fb38] 3140 0014                 move.w     d0,20(a0)
[0001fb3c] 72ff                      moveq.l    #-1,d1
[0001fb3e] 2079 0010 1f12            movea.l    ACSblk,a0
[0001fb44] 2068 0258                 movea.l    600(a0),a0
[0001fb48] 2279 0010 1f12            movea.l    ACSblk,a1
[0001fb4e] 2269 0258                 movea.l    600(a1),a1
[0001fb52] 2269 0066                 movea.l    102(a1),a1
[0001fb56] 7001                      moveq.l    #1,d0
[0001fb58] 4e91                      jsr        (a1)
[0001fb5a] 4e75                      rts

edim_black:
[0001fb5c] 2079 0010 1f12            movea.l    ACSblk,a0
[0001fb62] 2068 025c                 movea.l    604(a0),a0
[0001fb66] 317c 0008 0284            move.w     #$0008,644(a0)
[0001fb6c] 0268 ff8f 003e            andi.w     #$FF8F,62(a0)
[0001fb72] 0068 0070 003e            ori.w      #$0070,62(a0)
[0001fb78] 72ff                      moveq.l    #-1,d1
[0001fb7a] 7001                      moveq.l    #1,d0
[0001fb7c] 2079 0010 1f12            movea.l    ACSblk,a0
[0001fb82] 2068 0258                 movea.l    600(a0),a0
[0001fb86] 2279 0010 1f12            movea.l    ACSblk,a1
[0001fb8c] 2269 0258                 movea.l    600(a1),a1
[0001fb90] 2269 0066                 movea.l    102(a1),a1
[0001fb94] 4e91                      jsr        (a1)
[0001fb96] 4e75                      rts

edim_white:
[0001fb98] 2079 0010 1f12            movea.l    ACSblk,a0
[0001fb9e] 2068 025c                 movea.l    604(a0),a0
[0001fba2] 317c 0009 0284            move.w     #$0009,644(a0)
[0001fba8] 0268 ff8f 003e            andi.w     #$FF8F,62(a0)
[0001fbae] 72ff                      moveq.l    #-1,d1
[0001fbb0] 7001                      moveq.l    #1,d0
[0001fbb2] 2079 0010 1f12            movea.l    ACSblk,a0
[0001fbb8] 2068 0258                 movea.l    600(a0),a0
[0001fbbc] 2279 0010 1f12            movea.l    ACSblk,a1
[0001fbc2] 2269 0258                 movea.l    600(a1),a1
[0001fbc6] 2269 0066                 movea.l    102(a1),a1
[0001fbca] 4e91                      jsr        (a1)
[0001fbcc] 4e75                      rts

edim_nextpattern:
[0001fbce] 2079 0010 1f12            movea.l    ACSblk,a0
[0001fbd4] 2268 025c                 movea.l    604(a0),a1
[0001fbd8] 2069 0024                 movea.l    36(a1),a0
[0001fbdc] 5848                      addq.w     #4,a0
[0001fbde] 3028 0002                 move.w     2(a0),d0
[0001fbe2] d07c 0010                 add.w      #$0010,d0
[0001fbe6] c07c 0070                 and.w      #$0070,d0
[0001fbea] 0268 ff8f 0002            andi.w     #$FF8F,2(a0)
[0001fbf0] 8168 0002                 or.w       d0,2(a0)
[0001fbf4] 72ff                      moveq.l    #-1,d1
[0001fbf6] 7001                      moveq.l    #1,d0
[0001fbf8] 2079 0010 1f12            movea.l    ACSblk,a0
[0001fbfe] 2068 0258                 movea.l    600(a0),a0
[0001fc02] 2279 0010 1f12            movea.l    ACSblk,a1
[0001fc08] 2269 0258                 movea.l    600(a1),a1
[0001fc0c] 2269 0066                 movea.l    102(a1),a1
[0001fc10] 4e91                      jsr        (a1)
[0001fc12] 4e75                      rts

edim_up:
[0001fc14] 2f03                      move.l     d3,-(a7)
[0001fc16] 2f0a                      move.l     a2,-(a7)
[0001fc18] 2079 0010 1f12            movea.l    ACSblk,a0
[0001fc1e] 2268 0258                 movea.l    600(a0),a1
[0001fc22] 2051                      movea.l    (a1),a0
[0001fc24] 2268 0008                 movea.l    8(a0),a1
[0001fc28] 2269 0054                 movea.l    84(a1),a1
[0001fc2c] 3029 0004                 move.w     4(a1),d0
[0001fc30] e240                      asr.w      #1,d0
[0001fc32] 3200                      move.w     d0,d1
[0001fc34] c3e9 0006                 muls.w     6(a1),d1
[0001fc38] 2268 0010                 movea.l    16(a0),a1
[0001fc3c] 3400                      move.w     d0,d2
[0001fc3e] 48c2                      ext.l      d2
[0001fc40] d482                      add.l      d2,d2
[0001fc42] 45f1 2800                 lea.l      0(a1,d2.l),a2
[0001fc46] 3401                      move.w     d1,d2
[0001fc48] 9440                      sub.w      d0,d2
[0001fc4a] 6004                      bra.s      edim_up_1
edim_up_2:
[0001fc4c] 32da                      move.w     (a2)+,(a1)+
[0001fc4e] 5342                      subq.w     #1,d2
edim_up_1:
[0001fc50] 4a42                      tst.w      d2
[0001fc52] 6ef8                      bgt.s      edim_up_2
[0001fc54] 3601                      move.w     d1,d3
[0001fc56] 48c3                      ext.l      d3
[0001fc58] d683                      add.l      d3,d3
[0001fc5a] 2268 0010                 movea.l    16(a0),a1
[0001fc5e] 43f1 38fe                 lea.l      -2(a1,d3.l),a1
[0001fc62] 3400                      move.w     d0,d2
[0001fc64] 6006                      bra.s      edim_up_3
edim_up_4:
[0001fc66] 4251                      clr.w      (a1)
[0001fc68] 5549                      subq.w     #2,a1
[0001fc6a] 5342                      subq.w     #1,d2
edim_up_3:
[0001fc6c] 4a42                      tst.w      d2
[0001fc6e] 6ef6                      bgt.s      edim_up_4
[0001fc70] 72ff                      moveq.l    #-1,d1
[0001fc72] 7019                      moveq.l    #25,d0
[0001fc74] 2079 0010 1f12            movea.l    ACSblk,a0
[0001fc7a] 2068 0258                 movea.l    600(a0),a0
[0001fc7e] 2279 0010 1f12            movea.l    ACSblk,a1
[0001fc84] 2469 0258                 movea.l    600(a1),a2
[0001fc88] 226a 0066                 movea.l    102(a2),a1
[0001fc8c] 4e91                      jsr        (a1)
[0001fc8e] 245f                      movea.l    (a7)+,a2
[0001fc90] 261f                      move.l     (a7)+,d3
[0001fc92] 4e75                      rts

edim_down:
[0001fc94] 2f0a                      move.l     a2,-(a7)
[0001fc96] 2079 0010 1f12            movea.l    ACSblk,a0
[0001fc9c] 2268 0258                 movea.l    600(a0),a1
[0001fca0] 2051                      movea.l    (a1),a0
[0001fca2] 2268 0008                 movea.l    8(a0),a1
[0001fca6] 2269 0054                 movea.l    84(a1),a1
[0001fcaa] 3029 0004                 move.w     4(a1),d0
[0001fcae] e240                      asr.w      #1,d0
[0001fcb0] 3200                      move.w     d0,d1
[0001fcb2] c3e9 0006                 muls.w     6(a1),d1
[0001fcb6] 3401                      move.w     d1,d2
[0001fcb8] 48c2                      ext.l      d2
[0001fcba] d482                      add.l      d2,d2
[0001fcbc] 2268 0010                 movea.l    16(a0),a1
[0001fcc0] 43f1 28fe                 lea.l      -2(a1,d2.l),a1
[0001fcc4] 2449                      movea.l    a1,a2
[0001fcc6] 3400                      move.w     d0,d2
[0001fcc8] 48c2                      ext.l      d2
[0001fcca] d482                      add.l      d2,d2
[0001fccc] 95c2                      suba.l     d2,a2
[0001fcce] 9240                      sub.w      d0,d1
[0001fcd0] 6008                      bra.s      edim_down_1
edim_down_2:
[0001fcd2] 3292                      move.w     (a2),(a1)
[0001fcd4] 554a                      subq.w     #2,a2
[0001fcd6] 5549                      subq.w     #2,a1
[0001fcd8] 5341                      subq.w     #1,d1
edim_down_1:
[0001fcda] 4a41                      tst.w      d1
[0001fcdc] 6ef4                      bgt.s      edim_down_2
[0001fcde] 2268 0010                 movea.l    16(a0),a1
[0001fce2] 3200                      move.w     d0,d1
[0001fce4] 6004                      bra.s      edim_down_3
edim_down_4:
[0001fce6] 4259                      clr.w      (a1)+
[0001fce8] 5341                      subq.w     #1,d1
edim_down_3:
[0001fcea] 4a41                      tst.w      d1
[0001fcec] 6ef8                      bgt.s      edim_down_4
[0001fcee] 72ff                      moveq.l    #-1,d1
[0001fcf0] 7019                      moveq.l    #25,d0
[0001fcf2] 2079 0010 1f12            movea.l    ACSblk,a0
[0001fcf8] 2068 0258                 movea.l    600(a0),a0
[0001fcfc] 2279 0010 1f12            movea.l    ACSblk,a1
[0001fd02] 2469 0258                 movea.l    600(a1),a2
[0001fd06] 226a 0066                 movea.l    102(a2),a1
[0001fd0a] 4e91                      jsr        (a1)
[0001fd0c] 245f                      movea.l    (a7)+,a2
[0001fd0e] 4e75                      rts

edim_right:
[0001fd10] 2079 0010 1f12            movea.l    ACSblk,a0
[0001fd16] 2268 0258                 movea.l    600(a0),a1
[0001fd1a] 2051                      movea.l    (a1),a0
[0001fd1c] 2268 0008                 movea.l    8(a0),a1
[0001fd20] 2269 0054                 movea.l    84(a1),a1
[0001fd24] 3229 0004                 move.w     4(a1),d1
[0001fd28] e241                      asr.w      #1,d1
[0001fd2a] 3001                      move.w     d1,d0
[0001fd2c] c1e9 0006                 muls.w     6(a1),d0
[0001fd30] 3200                      move.w     d0,d1
[0001fd32] 2268 0010                 movea.l    16(a0),a1
[0001fd36] 4240                      clr.w      d0
[0001fd38] 601e                      bra.s      edim_right_1
edim_right_4:
[0001fd3a] 7401                      moveq.l    #1,d2
[0001fd3c] c440                      and.w      d0,d2
[0001fd3e] 670e                      beq.s      edim_right_2
[0001fd40] 3011                      move.w     (a1),d0
[0001fd42] 3400                      move.w     d0,d2
[0001fd44] e24a                      lsr.w      #1,d2
[0001fd46] 847c 8000                 or.w       #$8000,d2
[0001fd4a] 32c2                      move.w     d2,(a1)+
[0001fd4c] 6008                      bra.s      edim_right_3
edim_right_2:
[0001fd4e] 3011                      move.w     (a1),d0
[0001fd50] 3400                      move.w     d0,d2
[0001fd52] e24a                      lsr.w      #1,d2
[0001fd54] 32c2                      move.w     d2,(a1)+
edim_right_3:
[0001fd56] 5341                      subq.w     #1,d1
edim_right_1:
[0001fd58] 4a41                      tst.w      d1
[0001fd5a] 6ede                      bgt.s      edim_right_4
[0001fd5c] 72ff                      moveq.l    #-1,d1
[0001fd5e] 7019                      moveq.l    #25,d0
[0001fd60] 2079 0010 1f12            movea.l    ACSblk,a0
[0001fd66] 2068 0258                 movea.l    600(a0),a0
[0001fd6a] 2279 0010 1f12            movea.l    ACSblk,a1
[0001fd70] 2269 0258                 movea.l    600(a1),a1
[0001fd74] 2269 0066                 movea.l    102(a1),a1
[0001fd78] 4e91                      jsr        (a1)
[0001fd7a] 4e75                      rts

edim_left:
[0001fd7c] 2079 0010 1f12            movea.l    ACSblk,a0
[0001fd82] 2268 0258                 movea.l    600(a0),a1
[0001fd86] 2051                      movea.l    (a1),a0
[0001fd88] 2268 0008                 movea.l    8(a0),a1
[0001fd8c] 2269 0054                 movea.l    84(a1),a1
[0001fd90] 3229 0004                 move.w     4(a1),d1
[0001fd94] e241                      asr.w      #1,d1
[0001fd96] 3001                      move.w     d1,d0
[0001fd98] c1e9 0006                 muls.w     6(a1),d0
[0001fd9c] 3200                      move.w     d0,d1
[0001fd9e] 48c0                      ext.l      d0
[0001fda0] d080                      add.l      d0,d0
[0001fda2] 2268 0010                 movea.l    16(a0),a1
[0001fda6] 43f1 08fe                 lea.l      -2(a1,d0.l),a1
[0001fdaa] 4240                      clr.w      d0
[0001fdac] 6024                      bra.s      edim_left_1
edim_left_4:
[0001fdae] 343c 8000                 move.w     #$8000,d2
[0001fdb2] c440                      and.w      d0,d2
[0001fdb4] 6710                      beq.s      edim_left_2
[0001fdb6] 3011                      move.w     (a1),d0
[0001fdb8] 3400                      move.w     d0,d2
[0001fdba] d442                      add.w      d2,d2
[0001fdbc] 847c 0001                 or.w       #$0001,d2
[0001fdc0] 3282                      move.w     d2,(a1)
[0001fdc2] 5549                      subq.w     #2,a1
[0001fdc4] 600a                      bra.s      edim_left_3
edim_left_2:
[0001fdc6] 3011                      move.w     (a1),d0
[0001fdc8] 3400                      move.w     d0,d2
[0001fdca] d442                      add.w      d2,d2
[0001fdcc] 3282                      move.w     d2,(a1)
[0001fdce] 5549                      subq.w     #2,a1
edim_left_3:
[0001fdd0] 5341                      subq.w     #1,d1
edim_left_1:
[0001fdd2] 4a41                      tst.w      d1
[0001fdd4] 6ed8                      bgt.s      edim_left_4
[0001fdd6] 72ff                      moveq.l    #-1,d1
[0001fdd8] 7019                      moveq.l    #25,d0
[0001fdda] 2079 0010 1f12            movea.l    ACSblk,a0
[0001fde0] 2068 0258                 movea.l    600(a0),a0
[0001fde4] 2279 0010 1f12            movea.l    ACSblk,a1
[0001fdea] 2269 0258                 movea.l    600(a1),a1
[0001fdee] 2269 0066                 movea.l    102(a1),a1
[0001fdf2] 4e91                      jsr        (a1)
[0001fdf4] 4e75                      rts

edim_resize:
[0001fdf6] 48e7 1f30                 movem.l    d3-d7/a2-a3,-(a7)
[0001fdfa] 594f                      subq.w     #4,a7
[0001fdfc] 3f40 0002                 move.w     d0,2(a7)
[0001fe00] 3e81                      move.w     d1,(a7)
[0001fe02] 740f                      moveq.l    #15,d2
[0001fe04] d440                      add.w      d0,d2
[0001fe06] c47c fff0                 and.w      #$FFF0,d2
[0001fe0a] 3f42 0002                 move.w     d2,2(a7)
[0001fe0e] 3429 0004                 move.w     4(a1),d2
[0001fe12] e242                      asr.w      #1,d2
[0001fe14] 362f 0002                 move.w     2(a7),d3
[0001fe18] e843                      asr.w      #4,d3
[0001fe1a] b443                      cmp.w      d3,d2
[0001fe1c] 6c54                      bge.s      edim_resize_1
[0001fe1e] 78ff                      moveq.l    #-1,d4
[0001fe20] d869 0006                 add.w      6(a1),d4
[0001fe24] 6048                      bra.s      edim_resize_2
edim_resize_7:
[0001fe26] 3a04                      move.w     d4,d5
[0001fe28] cbc2                      muls.w     d2,d5
[0001fe2a] 3204                      move.w     d4,d1
[0001fe2c] c3c3                      muls.w     d3,d1
[0001fe2e] 70ff                      moveq.l    #-1,d0
[0001fe30] d042                      add.w      d2,d0
[0001fe32] 601c                      bra.s      edim_resize_3
edim_resize_4:
[0001fe34] 3c05                      move.w     d5,d6
[0001fe36] dc40                      add.w      d0,d6
[0001fe38] 48c6                      ext.l      d6
[0001fe3a] dc86                      add.l      d6,d6
[0001fe3c] 2451                      movea.l    (a1),a2
[0001fe3e] 3e01                      move.w     d1,d7
[0001fe40] de40                      add.w      d0,d7
[0001fe42] 48c7                      ext.l      d7
[0001fe44] de87                      add.l      d7,d7
[0001fe46] 2651                      movea.l    (a1),a3
[0001fe48] 37b2 6800 7800            move.w     0(a2,d6.l),0(a3,d7.l)
[0001fe4e] 5340                      subq.w     #1,d0
edim_resize_3:
[0001fe50] 4a40                      tst.w      d0
[0001fe52] 6ae0                      bpl.s      edim_resize_4
[0001fe54] 3002                      move.w     d2,d0
[0001fe56] 6010                      bra.s      edim_resize_5
edim_resize_6:
[0001fe58] 3c01                      move.w     d1,d6
[0001fe5a] dc40                      add.w      d0,d6
[0001fe5c] 48c6                      ext.l      d6
[0001fe5e] dc86                      add.l      d6,d6
[0001fe60] 2451                      movea.l    (a1),a2
[0001fe62] 4272 6800                 clr.w      0(a2,d6.l)
[0001fe66] 5240                      addq.w     #1,d0
edim_resize_5:
[0001fe68] b640                      cmp.w      d0,d3
[0001fe6a] 6eec                      bgt.s      edim_resize_6
[0001fe6c] 5344                      subq.w     #1,d4
edim_resize_2:
[0001fe6e] 4a44                      tst.w      d4
[0001fe70] 6ab4                      bpl.s      edim_resize_7
edim_resize_1:
[0001fe72] b443                      cmp.w      d3,d2
[0001fe74] 6f38                      ble.s      edim_resize_8
[0001fe76] 4244                      clr.w      d4
[0001fe78] 602e                      bra.s      edim_resize_9
edim_resize_12:
[0001fe7a] 3a04                      move.w     d4,d5
[0001fe7c] cbc2                      muls.w     d2,d5
[0001fe7e] 3204                      move.w     d4,d1
[0001fe80] c3c3                      muls.w     d3,d1
[0001fe82] 4240                      clr.w      d0
[0001fe84] 601c                      bra.s      edim_resize_10
edim_resize_11:
[0001fe86] 3c05                      move.w     d5,d6
[0001fe88] dc40                      add.w      d0,d6
[0001fe8a] 48c6                      ext.l      d6
[0001fe8c] dc86                      add.l      d6,d6
[0001fe8e] 2451                      movea.l    (a1),a2
[0001fe90] 3e01                      move.w     d1,d7
[0001fe92] de40                      add.w      d0,d7
[0001fe94] 48c7                      ext.l      d7
[0001fe96] de87                      add.l      d7,d7
[0001fe98] 2651                      movea.l    (a1),a3
[0001fe9a] 37b2 6800 7800            move.w     0(a2,d6.l),0(a3,d7.l)
[0001fea0] 5240                      addq.w     #1,d0
edim_resize_10:
[0001fea2] b640                      cmp.w      d0,d3
[0001fea4] 6ee0                      bgt.s      edim_resize_11
[0001fea6] 5244                      addq.w     #1,d4
edim_resize_9:
[0001fea8] b869 0006                 cmp.w      6(a1),d4
[0001feac] 6dcc                      blt.s      edim_resize_12
edim_resize_8:
[0001feae] 78ff                      moveq.l    #-1,d4
[0001feb0] d857                      add.w      (a7),d4
[0001feb2] 6020                      bra.s      edim_resize_13
edim_resize_16:
[0001feb4] 3204                      move.w     d4,d1
[0001feb6] c3c3                      muls.w     d3,d1
[0001feb8] 70ff                      moveq.l    #-1,d0
[0001feba] d043                      add.w      d3,d0
[0001febc] 6010                      bra.s      edim_resize_14
edim_resize_15:
[0001febe] 3401                      move.w     d1,d2
[0001fec0] d440                      add.w      d0,d2
[0001fec2] 48c2                      ext.l      d2
[0001fec4] d482                      add.l      d2,d2
[0001fec6] 2451                      movea.l    (a1),a2
[0001fec8] 4272 2800                 clr.w      0(a2,d2.l)
[0001fecc] 5340                      subq.w     #1,d0
edim_resize_14:
[0001fece] 4a40                      tst.w      d0
[0001fed0] 6aec                      bpl.s      edim_resize_15
[0001fed2] 5344                      subq.w     #1,d4
edim_resize_13:
[0001fed4] b869 0006                 cmp.w      6(a1),d4
[0001fed8] 6cda                      bge.s      edim_resize_16
[0001feda] 316f 0002 008c            move.w     2(a7),140(a0)
[0001fee0] 302f 0002                 move.w     2(a7),d0
[0001fee4] e640                      asr.w      #3,d0
[0001fee6] 3340 0004                 move.w     d0,4(a1)
[0001feea] 3217                      move.w     (a7),d1
[0001feec] 3341 0006                 move.w     d1,6(a1)
[0001fef0] 3141 008e                 move.w     d1,142(a0)
[0001fef4] 584f                      addq.w     #4,a7
[0001fef6] 4cdf 0cf8                 movem.l    (a7)+,d3-d7/a2-a3
[0001fefa] 4e75                      rts

edim_direct:
[0001fefc] 48e7 002c                 movem.l    a2/a4-a5,-(a7)
[0001ff00] 594f                      subq.w     #4,a7
[0001ff02] 41f9 000a 599c            lea.l      WI_IMPOS,a0
[0001ff08] 2279 000a 59a4            movea.l    $000A59A4,a1
[0001ff0e] 4e91                      jsr        (a1)
[0001ff10] 2448                      movea.l    a0,a2
[0001ff12] 200a                      move.l     a2,d0
[0001ff14] 6700 00fe                 beq        edim_direct_1
[0001ff18] 2279 0010 1f12            movea.l    ACSblk,a1
[0001ff1e] 2069 025c                 movea.l    604(a1),a0
[0001ff22] 2868 0054                 movea.l    84(a0),a4
[0001ff26] 322c 0004                 move.w     4(a4),d1
[0001ff2a] e749                      lsl.w      #3,d1
[0001ff2c] 3f01                      move.w     d1,-(a7)
[0001ff2e] 43f9 000a 5c96            lea.l      $000A5C96,a1
[0001ff34] 206a 0014                 movea.l    20(a2),a0
[0001ff38] 7009                      moveq.l    #9,d0
[0001ff3a] 4eb9 0004 afac            jsr        Aob_printf
[0001ff40] 544f                      addq.w     #2,a7
[0001ff42] 3f2c 0006                 move.w     6(a4),-(a7)
[0001ff46] 43f9 000a 5c96            lea.l      $000A5C96,a1
[0001ff4c] 7003                      moveq.l    #3,d0
[0001ff4e] 206a 0014                 movea.l    20(a2),a0
[0001ff52] 4eb9 0004 afac            jsr        Aob_printf
[0001ff58] 544f                      addq.w     #2,a7
[0001ff5a] 204a                      movea.l    a2,a0
[0001ff5c] 4eb9 0005 1292            jsr        Awi_dialog
[0001ff62] 5940                      subq.w     #4,d0
[0001ff64] 6600 00a6                 bne        edim_direct_2
[0001ff68] 4bef 0002                 lea.l      2(a7),a5
[0001ff6c] 4855                      pea.l      (a5)
[0001ff6e] 43f9 000a 5c96            lea.l      $000A5C96,a1
[0001ff74] 7009                      moveq.l    #9,d0
[0001ff76] 206a 0014                 movea.l    20(a2),a0
[0001ff7a] 4eb9 0004 b0b2            jsr        Aob_scanf
[0001ff80] 584f                      addq.w     #4,a7
[0001ff82] 4857                      pea.l      (a7)
[0001ff84] 43f9 000a 5c96            lea.l      $000A5C96,a1
[0001ff8a] 7003                      moveq.l    #3,d0
[0001ff8c] 206a 0014                 movea.l    20(a2),a0
[0001ff90] 4eb9 0004 b0b2            jsr        Aob_scanf
[0001ff96] 584f                      addq.w     #4,a7
[0001ff98] 0c55 00c0                 cmpi.w     #$00C0,(a5)
[0001ff9c] 6f04                      ble.s      edim_direct_3
[0001ff9e] 3abc 00c0                 move.w     #$00C0,(a5)
edim_direct_3:
[0001ffa2] 0c57 00c0                 cmpi.w     #$00C0,(a7)
[0001ffa6] 6f04                      ble.s      edim_direct_4
[0001ffa8] 3ebc 00c0                 move.w     #$00C0,(a7)
edim_direct_4:
[0001ffac] 700f                      moveq.l    #15,d0
[0001ffae] d055                      add.w      (a5),d0
[0001ffb0] c07c fff0                 and.w      #$FFF0,d0
[0001ffb4] 3a80                      move.w     d0,(a5)
[0001ffb6] 72ff                      moveq.l    #-1,d1
[0001ffb8] d279 0007 824c            add.w      imagesnap,d1
[0001ffbe] e241                      asr.w      #1,d1
[0001ffc0] d257                      add.w      (a7),d1
[0001ffc2] 3439 0007 824c            move.w     imagesnap,d2
[0001ffc8] 4442                      neg.w      d2
[0001ffca] c242                      and.w      d2,d1
[0001ffcc] 3e81                      move.w     d1,(a7)
[0001ffce] 224c                      movea.l    a4,a1
[0001ffd0] 2079 0010 1f12            movea.l    ACSblk,a0
[0001ffd6] 2068 025c                 movea.l    604(a0),a0
[0001ffda] 6100 fe1a                 bsr        edim_resize
[0001ffde] 2079 0010 1f12            movea.l    ACSblk,a0
[0001ffe4] 2268 025c                 movea.l    604(a0),a1
[0001ffe8] 0069 0080 0080            ori.w      #$0080,128(a1)
[0001ffee] 72ff                      moveq.l    #-1,d1
[0001fff0] 7001                      moveq.l    #1,d0
[0001fff2] 2079 0010 1f12            movea.l    ACSblk,a0
[0001fff8] 2068 0258                 movea.l    600(a0),a0
[0001fffc] 2279 0010 1f12            movea.l    ACSblk,a1
[00020002] 2869 0258                 movea.l    600(a1),a4
[00020006] 226c 0066                 movea.l    102(a4),a1
[0002000a] 4e91                      jsr        (a1)
edim_direct_2:
[0002000c] 204a                      movea.l    a2,a0
[0002000e] 4eb9 0005 0330            jsr        Awi_delete
edim_direct_1:
[00020014] 584f                      addq.w     #4,a7
[00020016] 4cdf 3400                 movem.l    (a7)+,a2/a4-a5
[0002001a] 4e75                      rts

control:
[0002001c] 343c 0080                 move.w     #$0080,d2
[00020020] c468 0080                 and.w      128(a0),d2
[00020024] 6626                      bne.s      control_1
[00020026] 3428 0088                 move.w     136(a0),d2
[0002002a] b451                      cmp.w      (a1),d2
[0002002c] 661e                      bne.s      control_1
[0002002e] 3428 008a                 move.w     138(a0),d2
[00020032] b469 0002                 cmp.w      2(a1),d2
[00020036] 6614                      bne.s      control_1
[00020038] 3428 008c                 move.w     140(a0),d2
[0002003c] b469 0004                 cmp.w      4(a1),d2
[00020040] 660a                      bne.s      control_1
[00020042] 3428 008e                 move.w     142(a0),d2
[00020046] b469 0006                 cmp.w      6(a1),d2
[0002004a] 6720                      beq.s      control_2
control_1:
[0002004c] 0268 ff7f 0080            andi.w     #$FF7F,128(a0)
[00020052] 3151 0088                 move.w     (a1),136(a0)
[00020056] 3169 0002 008a            move.w     2(a1),138(a0)
[0002005c] 3169 0004 008c            move.w     4(a1),140(a0)
[00020062] 3169 0006 008e            move.w     6(a1),142(a0)
[00020068] 4240                      clr.w      d0
[0002006a] 4e75                      rts
control_2:
[0002006c] 3411                      move.w     (a1),d2
[0002006e] d469 0004                 add.w      4(a1),d2
[00020072] 5342                      subq.w     #1,d2
[00020074] 9440                      sub.w      d0,d2
[00020076] 3002                      move.w     d2,d0
[00020078] 3429 0002                 move.w     2(a1),d2
[0002007c] d469 0006                 add.w      6(a1),d2
[00020080] 5342                      subq.w     #1,d2
[00020082] 9441                      sub.w      d1,d2
[00020084] 3202                      move.w     d2,d1
[00020086] b07c 0008                 cmp.w      #$0008,d0
[0002008a] 6f0a                      ble.s      control_3
[0002008c] 3429 0004                 move.w     4(a1),d2
[00020090] e642                      asr.w      #3,d2
[00020092] b042                      cmp.w      d2,d0
[00020094] 6e10                      bgt.s      control_4
control_3:
[00020096] b27c 0008                 cmp.w      #$0008,d1
[0002009a] 6f0e                      ble.s      control_5
[0002009c] 3029 0006                 move.w     6(a1),d0
[000200a0] e640                      asr.w      #3,d0
[000200a2] b240                      cmp.w      d0,d1
[000200a4] 6f04                      ble.s      control_5
control_4:
[000200a6] 7001                      moveq.l    #1,d0
[000200a8] 4e75                      rts
control_5:
[000200aa] 7002                      moveq.l    #2,d0
[000200ac] 4e75                      rts

edim_control:
[000200ae] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[000200b2] 4fef fff0                 lea.l      -16(a7),a7
[000200b6] 45f9 0010 1f12            lea.l      ACSblk,a2
[000200bc] 2052                      movea.l    (a2),a0
[000200be] 2868 0258                 movea.l    600(a0),a4
[000200c2] 266c 0014                 movea.l    20(a4),a3
[000200c6] 3628 0260                 move.w     608(a0),d3
[000200ca] 3203                      move.w     d3,d1
[000200cc] 48c1                      ext.l      d1
[000200ce] 2001                      move.l     d1,d0
[000200d0] d080                      add.l      d0,d0
[000200d2] d081                      add.l      d1,d0
[000200d4] e788                      lsl.l      #3,d0
[000200d6] 3433 080a                 move.w     10(a3,d0.l),d2
[000200da] c47c 4000                 and.w      #$4000,d2
[000200de] 670a                      beq.s      edim_control_1
[000200e0] 4eb9 0002 08b6            jsr        edim_edit
[000200e6] 6000 012a                 bra        edim_control_2
edim_control_1:
[000200ea] 2052                      movea.l    (a2),a0
[000200ec] 3c28 0262                 move.w     610(a0),d6
[000200f0] 3e28 0264                 move.w     612(a0),d7
[000200f4] 2f39 000d 99d6            move.l     _globl,-(a7)
[000200fa] 486f 0004                 pea.l      4(a7)
[000200fe] 43ef 000a                 lea.l      10(a7),a1
[00020102] 3003                      move.w     d3,d0
[00020104] 204b                      movea.l    a3,a0
[00020106] 4eb9 0006 ba44            jsr        mt_objc_offset
[0002010c] 504f                      addq.w     #8,a7
[0002010e] 302c 0034                 move.w     52(a4),d0
[00020112] d16f 0002                 add.w      d0,2(a7)
[00020116] 322c 0036                 move.w     54(a4),d1
[0002011a] d357                      add.w      d1,(a7)
[0002011c] 3003                      move.w     d3,d0
[0002011e] 48c0                      ext.l      d0
[00020120] 2400                      move.l     d0,d2
[00020122] d482                      add.l      d2,d2
[00020124] d480                      add.l      d0,d2
[00020126] e78a                      lsl.l      #3,d2
[00020128] 3833 2814                 move.w     20(a3,d2.l),d4
[0002012c] 3a33 2816                 move.w     22(a3,d2.l),d5
[00020130] b87c 00c0                 cmp.w      #$00C0,d4
[00020134] 6f04                      ble.s      edim_control_3
[00020136] 383c 00c0                 move.w     #$00C0,d4
edim_control_3:
[0002013a] ba7c 00c0                 cmp.w      #$00C0,d5
[0002013e] 6f04                      ble.s      edim_control_4
[00020140] 3a3c 00c0                 move.w     #$00C0,d5
edim_control_4:
[00020144] 9c6f 0002                 sub.w      2(a7),d6
[00020148] 9e57                      sub.w      (a7),d7
[0002014a] 3203                      move.w     d3,d1
[0002014c] 48c1                      ext.l      d1
[0002014e] 2001                      move.l     d1,d0
[00020150] d080                      add.l      d0,d0
[00020152] d081                      add.l      d1,d0
[00020154] e788                      lsl.l      #3,d0
[00020156] 2873 080c                 movea.l    12(a3,d0.l),a4
[0002015a] 4bef 0008                 lea.l      8(a7),a5
[0002015e] 3aac 0008                 move.w     8(a4),(a5)
[00020162] 3b6c 000a 0002            move.w     10(a4),2(a5)
[00020168] 302c 0004                 move.w     4(a4),d0
[0002016c] e748                      lsl.w      #3,d0
[0002016e] 3b40 0004                 move.w     d0,4(a5)
[00020172] 3b6c 0006 0006            move.w     6(a4),6(a5)
[00020178] 3207                      move.w     d7,d1
[0002017a] 204d                      movea.l    a5,a0
[0002017c] 3006                      move.w     d6,d0
[0002017e] 4eb9 0005 ef64            jsr        Aob_within
[00020184] 4a40                      tst.w      d0
[00020186] 6764                      beq.s      edim_control_5
[00020188] 3207                      move.w     d7,d1
[0002018a] 3006                      move.w     d6,d0
[0002018c] 224d                      movea.l    a5,a1
[0002018e] 204b                      movea.l    a3,a0
[00020190] 6100 fe8a                 bsr        control
[00020194] 5340                      subq.w     #1,d0
[00020196] 6700 007a                 beq.w      edim_control_2
[0002019a] 5340                      subq.w     #1,d0
[0002019c] 6702                      beq.s      edim_control_6
[0002019e] 605c                      bra.s      edim_control_7
edim_control_6:
[000201a0] 3005                      move.w     d5,d0
[000201a2] 906c 000a                 sub.w      10(a4),d0
[000201a6] 3f00                      move.w     d0,-(a7)
[000201a8] 3204                      move.w     d4,d1
[000201aa] 926c 0008                 sub.w      8(a4),d1
[000201ae] 3f01                      move.w     d1,-(a7)
[000201b0] 7408                      moveq.l    #8,d2
[000201b2] 3f02                      move.w     d2,-(a7)
[000201b4] 43ef 000a                 lea.l      10(a7),a1
[000201b8] 41ef 000c                 lea.l      12(a7),a0
[000201bc] 322f 0006                 move.w     6(a7),d1
[000201c0] d26c 000a                 add.w      10(a4),d1
[000201c4] 302f 0008                 move.w     8(a7),d0
[000201c8] d06c 0008                 add.w      8(a4),d0
[000201cc] 7410                      moveq.l    #16,d2
[000201ce] 4eb9 0001 3ffa            jsr        A_rubberbox
[000201d4] 5c4f                      addq.w     #6,a7
[000201d6] 4a40                      tst.w      d0
[000201d8] 6722                      beq.s      edim_control_7
[000201da] 322f 0004                 move.w     4(a7),d1
[000201de] 302f 0006                 move.w     6(a7),d0
[000201e2] 224c                      movea.l    a4,a1
[000201e4] 204b                      movea.l    a3,a0
[000201e6] 6100 fc0e                 bsr        edim_resize
[000201ea] 6010                      bra.s      edim_control_7
edim_control_5:
[000201ec] 303c 0080                 move.w     #$0080,d0
[000201f0] c06b 0080                 and.w      128(a3),d0
[000201f4] 661c                      bne.s      edim_control_2
[000201f6] 006b 0080 0080            ori.w      #$0080,128(a3)
edim_control_7:
[000201fc] 72ff                      moveq.l    #-1,d1
[000201fe] 7001                      moveq.l    #1,d0
[00020200] 2052                      movea.l    (a2),a0
[00020202] 2068 0258                 movea.l    600(a0),a0
[00020206] 2252                      movea.l    (a2),a1
[00020208] 2669 0258                 movea.l    600(a1),a3
[0002020c] 226b 0066                 movea.l    102(a3),a1
[00020210] 4e91                      jsr        (a1)
edim_control_2:
[00020212] 4fef 0010                 lea.l      16(a7),a7
[00020216] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[0002021a] 4e75                      rts

edim_set:
[0002021c] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[00020220] 4fef ffe4                 lea.l      -28(a7),a7
[00020224] 47f9 0010 1f12            lea.l      ACSblk,a3
[0002022a] 2053                      movea.l    (a3),a0
[0002022c] 2468 0258                 movea.l    600(a0),a2
[00020230] 2eaa 0014                 move.l     20(a2),(a7)
[00020234] 3f68 0262 0016            move.w     610(a0),22(a7)
[0002023a] 49ef 0014                 lea.l      20(a7),a4
[0002023e] 2053                      movea.l    (a3),a0
[00020240] 38a8 0264                 move.w     612(a0),(a4)
[00020244] 3628 0260                 move.w     608(a0),d3
[00020248] 3203                      move.w     d3,d1
[0002024a] 48c1                      ext.l      d1
[0002024c] 2001                      move.l     d1,d0
[0002024e] d080                      add.l      d0,d0
[00020250] d081                      add.l      d1,d0
[00020252] e788                      lsl.l      #3,d0
[00020254] 2257                      movea.l    (a7),a1
[00020256] 3431 080a                 move.w     10(a1,d0.l),d2
[0002025a] c47c 4000                 and.w      #$4000,d2
[0002025e] 6720                      beq.s      edim_set_1
[00020260] 3029 0284                 move.w     644(a1),d0
[00020264] 5140                      subq.w     #8,d0
[00020266] 6708                      beq.s      edim_set_2
[00020268] 5340                      subq.w     #1,d0
[0002026a] 670c                      beq.s      edim_set_3
[0002026c] 6000 0258                 bra        edim_set_4
edim_set_2:
[00020270] 6100 f926                 bsr        edim_white
[00020274] 6000 0250                 bra        edim_set_4
edim_set_3:
[00020278] 6100 f8e2                 bsr        edim_black
[0002027c] 6000 0248                 bra        edim_set_4
edim_set_1:
[00020280] 2f39 000d 99d6            move.l     _globl,-(a7)
[00020286] 486f 0014                 pea.l      20(a7)
[0002028a] 43ef 001a                 lea.l      26(a7),a1
[0002028e] 3003                      move.w     d3,d0
[00020290] 206a 0014                 movea.l    20(a2),a0
[00020294] 4eb9 0006 ba44            jsr        mt_objc_offset
[0002029a] 504f                      addq.w     #8,a7
edim_set_28:
[0002029c] 302f 0016                 move.w     22(a7),d0
[000202a0] 906a 0034                 sub.w      52(a2),d0
[000202a4] 906f 0012                 sub.w      18(a7),d0
[000202a8] 48c0                      ext.l      d0
[000202aa] 81fc 0008                 divs.w     #$0008,d0
[000202ae] 3f40 0016                 move.w     d0,22(a7)
[000202b2] 3214                      move.w     (a4),d1
[000202b4] 926a 0036                 sub.w      54(a2),d1
[000202b8] 926f 0010                 sub.w      16(a7),d1
[000202bc] 48c1                      ext.l      d1
[000202be] 83fc 0008                 divs.w     #$0008,d1
[000202c2] 3881                      move.w     d1,(a4)
[000202c4] e748                      lsl.w      #3,d0
[000202c6] d06a 0034                 add.w      52(a2),d0
[000202ca] d06f 0012                 add.w      18(a7),d0
[000202ce] 3f40 0008                 move.w     d0,8(a7)
[000202d2] e749                      lsl.w      #3,d1
[000202d4] d26a 0036                 add.w      54(a2),d1
[000202d8] d26f 0010                 add.w      16(a7),d1
[000202dc] 3f41 000a                 move.w     d1,10(a7)
[000202e0] 7408                      moveq.l    #8,d2
[000202e2] 3f42 000e                 move.w     d2,14(a7)
[000202e6] 3f42 000c                 move.w     d2,12(a7)
[000202ea] 2652                      movea.l    (a2),a3
[000202ec] 206b 0008                 movea.l    8(a3),a0
[000202f0] 2f68 0054 0018            move.l     84(a0),24(a7)
[000202f6] 226f 0018                 movea.l    24(a7),a1
[000202fa] 3029 0004                 move.w     4(a1),d0
[000202fe] e240                      asr.w      #1,d0
[00020300] 72ff                      moveq.l    #-1,d1
[00020302] d269 0006                 add.w      6(a1),d1
[00020306] 3400                      move.w     d0,d2
[00020308] c5d4                      muls.w     (a4),d2
[0002030a] 382f 0016                 move.w     22(a7),d4
[0002030e] e844                      asr.w      #4,d4
[00020310] d444                      add.w      d4,d2
[00020312] 3802                      move.w     d2,d4
[00020314] 48c4                      ext.l      d4
[00020316] d884                      add.l      d4,d4
[00020318] 2a6b 0010                 movea.l    16(a3),a5
[0002031c] dbc4                      adda.l     d4,a5
[0002031e] 740f                      moveq.l    #15,d2
[00020320] 780f                      moveq.l    #15,d4
[00020322] c86f 0016                 and.w      22(a7),d4
[00020326] 9444                      sub.w      d4,d2
[00020328] 206b 000c                 movea.l    12(a3),a0
[0002032c] 0c68 0008 0044            cmpi.w     #$0008,68(a0)
[00020332] 663a                      bne.s      edim_set_5
[00020334] 7601                      moveq.l    #1,d3
[00020336] e56b                      lsl.w      d2,d3
[00020338] 3828 003e                 move.w     62(a0),d4
[0002033c] e84c                      lsr.w      #4,d4
[0002033e] c87c 0007                 and.w      #$0007,d4
[00020342] 4a44                      tst.w      d4
[00020344] 6716                      beq.s      edim_set_6
[00020346] 5f44                      subq.w     #7,d4
[00020348] 6704                      beq.s      edim_set_7
[0002034a] 6000 0146                 bra        edim_set_8
edim_set_7:
[0002034e] 3815                      move.w     (a5),d4
[00020350] c843                      and.w      d3,d4
[00020352] 6600 014a                 bne        edim_set_9
[00020356] 8755                      or.w       d3,(a5)
[00020358] 6000 0138                 bra        edim_set_8
edim_set_6:
[0002035c] 3815                      move.w     (a5),d4
[0002035e] c843                      and.w      d3,d4
[00020360] 6700 013c                 beq        edim_set_9
[00020364] 3803                      move.w     d3,d4
[00020366] 4644                      not.w      d4
[00020368] c955                      and.w      d4,(a5)
[0002036a] 6000 0126                 bra        edim_set_8
edim_set_5:
[0002036e] 4a42                      tst.w      d2
[00020370] 6f0a                      ble.s      edim_set_10
[00020372] 7607                      moveq.l    #7,d3
[00020374] 78ff                      moveq.l    #-1,d4
[00020376] d802                      add.b      d2,d4
[00020378] e96b                      lsl.w      d4,d3
[0002037a] 6002                      bra.s      edim_set_11
edim_set_10:
[0002037c] 7603                      moveq.l    #3,d3
edim_set_11:
[0002037e] 206b 000c                 movea.l    12(a3),a0
[00020382] 3828 003e                 move.w     62(a0),d4
[00020386] e84c                      lsr.w      #4,d4
[00020388] c87c 0007                 and.w      #$0007,d4
[0002038c] 4a44                      tst.w      d4
[0002038e] 6728                      beq.s      edim_set_12
[00020390] 5f44                      subq.w     #7,d4
[00020392] 6702                      beq.s      edim_set_13
[00020394] 604e                      bra.s      edim_set_14
edim_set_13:
[00020396] 3814                      move.w     (a4),d4
[00020398] 670c                      beq.s      edim_set_15
[0002039a] 204d                      movea.l    a5,a0
[0002039c] 3800                      move.w     d0,d4
[0002039e] 48c4                      ext.l      d4
[000203a0] d884                      add.l      d4,d4
[000203a2] 91c4                      suba.l     d4,a0
[000203a4] 8750                      or.w       d3,(a0)
edim_set_15:
[000203a6] b254                      cmp.w      (a4),d1
[000203a8] 670a                      beq.s      edim_set_16
[000203aa] 3800                      move.w     d0,d4
[000203ac] 48c4                      ext.l      d4
[000203ae] d884                      add.l      d4,d4
[000203b0] 8775 4800                 or.w       d3,0(a5,d4.l)
edim_set_16:
[000203b4] 8755                      or.w       d3,(a5)
[000203b6] 602c                      bra.s      edim_set_14
edim_set_12:
[000203b8] 3814                      move.w     (a4),d4
[000203ba] 6710                      beq.s      edim_set_17
[000203bc] 3803                      move.w     d3,d4
[000203be] 4644                      not.w      d4
[000203c0] 204d                      movea.l    a5,a0
[000203c2] 3a00                      move.w     d0,d5
[000203c4] 48c5                      ext.l      d5
[000203c6] da85                      add.l      d5,d5
[000203c8] 91c5                      suba.l     d5,a0
[000203ca] c950                      and.w      d4,(a0)
edim_set_17:
[000203cc] b254                      cmp.w      (a4),d1
[000203ce] 670e                      beq.s      edim_set_18
[000203d0] 3803                      move.w     d3,d4
[000203d2] 4644                      not.w      d4
[000203d4] 3a00                      move.w     d0,d5
[000203d6] 48c5                      ext.l      d5
[000203d8] da85                      add.l      d5,d5
[000203da] c975 5800                 and.w      d4,0(a5,d5.l)
edim_set_18:
[000203de] 3803                      move.w     d3,d4
[000203e0] 4644                      not.w      d4
[000203e2] c955                      and.w      d4,(a5)
edim_set_14:
[000203e4] 4243                      clr.w      d3
[000203e6] 4a42                      tst.w      d2
[000203e8] 661a                      bne.s      edim_set_19
[000203ea] 206f 0018                 movea.l    24(a7),a0
[000203ee] 3828 0004                 move.w     4(a0),d4
[000203f2] e74c                      lsl.w      #3,d4
[000203f4] 5344                      subq.w     #1,d4
[000203f6] 3a2f 0016                 move.w     22(a7),d5
[000203fa] ba44                      cmp.w      d4,d5
[000203fc] 6706                      beq.s      edim_set_19
[000203fe] 363c 8000                 move.w     #$8000,d3
[00020402] 544d                      addq.w     #2,a5
edim_set_19:
[00020404] b47c 000f                 cmp.w      #$000F,d2
[00020408] 660a                      bne.s      edim_set_20
[0002040a] 342f 0016                 move.w     22(a7),d2
[0002040e] 6704                      beq.s      edim_set_20
[00020410] 7601                      moveq.l    #1,d3
[00020412] 554d                      subq.w     #2,a5
edim_set_20:
[00020414] 4a43                      tst.w      d3
[00020416] 6766                      beq.s      edim_set_21
[00020418] 206b 000c                 movea.l    12(a3),a0
[0002041c] 3428 003e                 move.w     62(a0),d2
[00020420] e84a                      lsr.w      #4,d2
[00020422] c47c 0007                 and.w      #$0007,d2
[00020426] 4a42                      tst.w      d2
[00020428] 6728                      beq.s      edim_set_22
[0002042a] 5f42                      subq.w     #7,d2
[0002042c] 6702                      beq.s      edim_set_23
[0002042e] 604e                      bra.s      edim_set_21
edim_set_23:
[00020430] 3414                      move.w     (a4),d2
[00020432] 670c                      beq.s      edim_set_24
[00020434] 204d                      movea.l    a5,a0
[00020436] 3800                      move.w     d0,d4
[00020438] 48c4                      ext.l      d4
[0002043a] d884                      add.l      d4,d4
[0002043c] 91c4                      suba.l     d4,a0
[0002043e] 8750                      or.w       d3,(a0)
edim_set_24:
[00020440] b254                      cmp.w      (a4),d1
[00020442] 670a                      beq.s      edim_set_25
[00020444] 3400                      move.w     d0,d2
[00020446] 48c2                      ext.l      d2
[00020448] d482                      add.l      d2,d2
[0002044a] 8775 2800                 or.w       d3,0(a5,d2.l)
edim_set_25:
[0002044e] 8755                      or.w       d3,(a5)
[00020450] 602c                      bra.s      edim_set_21
edim_set_22:
[00020452] 3414                      move.w     (a4),d2
[00020454] 6710                      beq.s      edim_set_26
[00020456] 3803                      move.w     d3,d4
[00020458] 4644                      not.w      d4
[0002045a] 204d                      movea.l    a5,a0
[0002045c] 3a00                      move.w     d0,d5
[0002045e] 48c5                      ext.l      d5
[00020460] da85                      add.l      d5,d5
[00020462] 91c5                      suba.l     d5,a0
[00020464] c950                      and.w      d4,(a0)
edim_set_26:
[00020466] b254                      cmp.w      (a4),d1
[00020468] 670e                      beq.s      edim_set_27
[0002046a] 3203                      move.w     d3,d1
[0002046c] 4641                      not.w      d1
[0002046e] 3400                      move.w     d0,d2
[00020470] 48c2                      ext.l      d2
[00020472] d482                      add.l      d2,d2
[00020474] c375 2800                 and.w      d1,0(a5,d2.l)
edim_set_27:
[00020478] 3003                      move.w     d3,d0
[0002047a] 4640                      not.w      d0
[0002047c] c155                      and.w      d0,(a5)
edim_set_21:
[0002047e] 516f 0008                 subq.w     #8,8(a7)
[00020482] 516f 000a                 subq.w     #8,10(a7)
[00020486] 066f 0010 000c            addi.w     #$0010,12(a7)
[0002048c] 066f 0010 000e            addi.w     #$0010,14(a7)
edim_set_8:
[00020492] 43ef 0008                 lea.l      8(a7),a1
[00020496] 204a                      movea.l    a2,a0
[00020498] 266a 006a                 movea.l    106(a2),a3
[0002049c] 4e93                      jsr        (a3)
edim_set_9:
[0002049e] 2f39 000d 99d6            move.l     _globl,-(a7)
[000204a4] 486f 0008                 pea.l      8(a7)
[000204a8] 486f 000e                 pea.l      14(a7)
[000204ac] 224c                      movea.l    a4,a1
[000204ae] 41ef 0022                 lea.l      34(a7),a0
[000204b2] 4eb9 0006 c978            jsr        mt_graf_mkstate
[000204b8] 4fef 000c                 lea.l      12(a7),a7
[000204bc] 7001                      moveq.l    #1,d0
[000204be] c06f 0006                 and.w      6(a7),d0
[000204c2] 6600 fdd8                 bne        edim_set_28
edim_set_4:
[000204c6] 4fef 001c                 lea.l      28(a7),a7
[000204ca] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[000204ce] 4e75                      rts

edim_abort:
[000204d0] 2079 0010 1f12            movea.l    ACSblk,a0
[000204d6] 2068 0258                 movea.l    600(a0),a0
[000204da] 4eb9 0002 0c38            jsr        term
[000204e0] 4e75                      rts

edim_ok:
[000204e2] 2079 0010 1f12            movea.l    ACSblk,a0
[000204e8] 2068 0258                 movea.l    600(a0),a0
[000204ec] 4eb9 0002 0a24            jsr        acc_image
[000204f2] 2079 0010 1f12            movea.l    ACSblk,a0
[000204f8] 2068 0258                 movea.l    600(a0),a0
[000204fc] 4eb9 0002 0c38            jsr        term
[00020502] 4e75                      rts

edim_acc:
[00020504] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[00020508] 514f                      subq.w     #8,a7
[0002050a] 2079 0010 1f12            movea.l    ACSblk,a0
[00020510] 2468 0258                 movea.l    600(a0),a2
[00020514] 2eaa 0014                 move.l     20(a2),(a7)
[00020518] 2868 0240                 movea.l    576(a0),a4
[0002051c] 4eb9 0004 4840            jsr        Adr_start
[00020522] 4eb9 0004 484c            jsr        Adr_next
[00020528] 3600                      move.w     d0,d3
[0002052a] 6b00 00ba                 bmi        edim_acc_1
[0002052e] 48c0                      ext.l      d0
[00020530] 2200                      move.l     d0,d1
[00020532] d281                      add.l      d1,d1
[00020534] d280                      add.l      d0,d1
[00020536] e789                      lsl.l      #3,d1
[00020538] 266c 0014                 movea.l    20(a4),a3
[0002053c] 47f3 1818                 lea.l      24(a3,d1.l),a3
[00020540] 0c6b 000a 0016            cmpi.w     #$000A,22(a3)
[00020546] 6600 009e                 bne        edim_acc_1
[0002054a] 2a6b 000c                 movea.l    12(a3),a5
[0002054e] 0c6d 00c0 0004            cmpi.w     #$00C0,4(a5)
[00020554] 6e10                      bgt.s      edim_acc_2
[00020556] 0c6d 00c0 0006            cmpi.w     #$00C0,6(a5)
[0002055c] 6e08                      bgt.s      edim_acc_2
[0002055e] 0c6d 0001 000a            cmpi.w     #$0001,10(a5)
[00020564] 6710                      beq.s      edim_acc_3
edim_acc_2:
[00020566] 41f9 000a 4a0c            lea.l      ERR_LARGE,a0
[0002056c] 7001                      moveq.l    #1,d0
[0002056e] 4eb9 0005 17fe            jsr        Awi_alert
[00020574] 6070                      bra.s      edim_acc_1
edim_acc_3:
[00020576] 302d 0006                 move.w     6(a5),d0
[0002057a] 48c0                      ext.l      d0
[0002057c] d080                      add.l      d0,d0
[0002057e] 322d 0008                 move.w     8(a5),d1
[00020582] 48c1                      ext.l      d1
[00020584] 4eb9 0007 76f0            jsr        _lmul
[0002058a] 2800                      move.l     d0,d4
[0002058c] 2f52 0004                 move.l     (a2),4(a7)
[00020590] 2255                      movea.l    (a5),a1
[00020592] 206f 0004                 movea.l    4(a7),a0
[00020596] 2068 0010                 movea.l    16(a0),a0
[0002059a] 2004                      move.l     d4,d0
[0002059c] 4eb9 0007 6f44            jsr        memcpy
[000205a2] 206f 0004                 movea.l    4(a7),a0
[000205a6] 2268 0008                 movea.l    8(a0),a1
[000205aa] 2669 0054                 movea.l    84(a1),a3
[000205ae] 302d 0008                 move.w     8(a5),d0
[000205b2] e948                      lsl.w      #4,d0
[000205b4] 2057                      movea.l    (a7),a0
[000205b6] 3140 008c                 move.w     d0,140(a0)
[000205ba] 322d 0008                 move.w     8(a5),d1
[000205be] d241                      add.w      d1,d1
[000205c0] 3741 0004                 move.w     d1,4(a3)
[000205c4] 302d 0006                 move.w     6(a5),d0
[000205c8] 3740 0006                 move.w     d0,6(a3)
[000205cc] 3140 008e                 move.w     d0,142(a0)
[000205d0] 72ff                      moveq.l    #-1,d1
[000205d2] 226a 0066                 movea.l    102(a2),a1
[000205d6] 204a                      movea.l    a2,a0
[000205d8] 7001                      moveq.l    #1,d0
[000205da] 4e91                      jsr        (a1)
[000205dc] 3003                      move.w     d3,d0
[000205de] 204c                      movea.l    a4,a0
[000205e0] 4eb9 0004 492a            jsr        Adr_del
edim_acc_1:
[000205e6] 504f                      addq.w     #8,a7
[000205e8] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[000205ec] 4e75                      rts

edim_bitmap:
[000205ee] 48e7 3f3c                 movem.l    d2-d7/a2-a5,-(a7)
[000205f2] 4fef ffe0                 lea.l      -32(a7),a7
[000205f6] 206f 004c                 movea.l    76(a7),a0
[000205fa] 3f68 0016 0004            move.w     22(a0),4(a7)
[00020600] 3f68 0018 0006            move.w     24(a0),6(a7)
[00020606] 49f9 0010 1f12            lea.l      ACSblk,a4
[0002060c] 302f 0004                 move.w     4(a7),d0
[00020610] 6606                      bne.s      edim_bitmap_1
[00020612] 322f 0006                 move.w     6(a7),d1
[00020616] 6730                      beq.s      edim_bitmap_2
edim_bitmap_1:
[00020618] 206f 004c                 movea.l    76(a7),a0
[0002061c] 3ea8 0012                 move.w     18(a0),(a7)
[00020620] 3f68 0014 0002            move.w     20(a0),2(a7)
[00020626] 70ff                      moveq.l    #-1,d0
[00020628] d057                      add.w      (a7),d0
[0002062a] d16f 0004                 add.w      d0,4(a7)
[0002062e] 70ff                      moveq.l    #-1,d0
[00020630] d06f 0002                 add.w      2(a7),d0
[00020634] d16f 0006                 add.w      d0,6(a7)
[00020638] 41d7                      lea.l      (a7),a0
[0002063a] 7201                      moveq.l    #1,d1
[0002063c] 2254                      movea.l    (a4),a1
[0002063e] 3029 0010                 move.w     16(a1),d0
[00020642] 4eb9 0006 3f60            jsr        vs_clip
edim_bitmap_2:
[00020648] 206f 004c                 movea.l    76(a7),a0
[0002064c] 2068 001a                 movea.l    26(a0),a0
[00020650] 2050                      movea.l    (a0),a0
[00020652] 2268 0008                 movea.l    8(a0),a1
[00020656] 2f69 0054 001c            move.l     84(a1),28(a7)
[0002065c] 206f 001c                 movea.l    28(a7),a0
[00020660] 2f50 0018                 move.l     (a0),24(a7)
[00020664] 3628 0004                 move.w     4(a0),d3
[00020668] e243                      asr.w      #1,d3
[0002066a] 4bef 0008                 lea.l      8(a7),a5
[0002066e] 4255                      clr.w      (a5)
[00020670] 426d 0002                 clr.w      2(a5)
[00020674] 3b7c 001f 0004            move.w     #$001F,4(a5)
[0002067a] 3b7c 0007 0006            move.w     #$0007,6(a5)
[00020680] 206f 004c                 movea.l    76(a7),a0
[00020684] 3b68 000c 000a            move.w     12(a0),10(a5)
[0002068a] 7007                      moveq.l    #7,d0
[0002068c] d068 000c                 add.w      12(a0),d0
[00020690] 3b40 000e                 move.w     d0,14(a5)
[00020694] 4244                      clr.w      d4
[00020696] 45f9 000a 5c3e            lea.l      the_mfdb,a2
[0002069c] 6000 00d8                 bra        edim_bitmap_3
edim_bitmap_13:
[000206a0] 302d 000e                 move.w     14(a5),d0
[000206a4] b06f 0002                 cmp.w      2(a7),d0
[000206a8] 6d00 00b8                 blt        edim_bitmap_4
[000206ac] 322d 000a                 move.w     10(a5),d1
[000206b0] b26f 0006                 cmp.w      6(a7),d1
[000206b4] 6e00 00ac                 bgt        edim_bitmap_4
[000206b8] 206f 004c                 movea.l    76(a7),a0
[000206bc] 3b68 000a 0008            move.w     10(a0),8(a5)
[000206c2] 701f                      moveq.l    #31,d0
[000206c4] d068 000a                 add.w      10(a0),d0
[000206c8] 3b40 000c                 move.w     d0,12(a5)
[000206cc] 4245                      clr.w      d5
[000206ce] 6000 008a                 bra        edim_bitmap_5
edim_bitmap_11:
[000206d2] 206f 0018                 movea.l    24(a7),a0
[000206d6] 54af 0018                 addq.l     #2,24(a7)
[000206da] 3c10                      move.w     (a0),d6
[000206dc] 303c 0080                 move.w     #$0080,d0
[000206e0] d06d 000c                 add.w      12(a5),d0
[000206e4] b057                      cmp.w      (a7),d0
[000206e6] 6d64                      blt.s      edim_bitmap_6
[000206e8] 322d 0008                 move.w     8(a5),d1
[000206ec] b26f 0004                 cmp.w      4(a7),d1
[000206f0] 6e5a                      bgt.s      edim_bitmap_6
[000206f2] 7e03                      moveq.l    #3,d7
[000206f4] 6050                      bra.s      edim_bitmap_7
edim_bitmap_9:
[000206f6] 302d 000c                 move.w     12(a5),d0
[000206fa] b057                      cmp.w      (a7),d0
[000206fc] 6d38                      blt.s      edim_bitmap_8
[000206fe] 322d 0008                 move.w     8(a5),d1
[00020702] b26f 0004                 cmp.w      4(a7),d1
[00020706] 6e2e                      bgt.s      edim_bitmap_8
[00020708] 3406                      move.w     d6,d2
[0002070a] 700c                      moveq.l    #12,d0
[0002070c] e062                      asr.w      d0,d2
[0002070e] c47c 000f                 and.w      #$000F,d2
[00020712] e54a                      lsl.w      #2,d2
[00020714] 24b2 2018                 move.l     24(a2,d2.w),(a2)
[00020718] 486a 0014                 pea.l      20(a2)
[0002071c] 2054                      movea.l    (a4),a0
[0002071e] 4868 026a                 pea.l      618(a0)
[00020722] 224a                      movea.l    a2,a1
[00020724] 204d                      movea.l    a5,a0
[00020726] 2654                      movea.l    (a4),a3
[00020728] 302b 0010                 move.w     16(a3),d0
[0002072c] 7201                      moveq.l    #1,d1
[0002072e] 4eb9 0006 6632            jsr        vrt_cpyfm
[00020734] 504f                      addq.w     #8,a7
edim_bitmap_8:
[00020736] e94e                      lsl.w      #4,d6
[00020738] 066d 0020 0008            addi.w     #$0020,8(a5)
[0002073e] 066d 0020 000c            addi.w     #$0020,12(a5)
[00020744] 5347                      subq.w     #1,d7
edim_bitmap_7:
[00020746] 4a47                      tst.w      d7
[00020748] 6aac                      bpl.s      edim_bitmap_9
[0002074a] 600c                      bra.s      edim_bitmap_10
edim_bitmap_6:
[0002074c] 066d 0080 0008            addi.w     #$0080,8(a5)
[00020752] 066d 0080 000c            addi.w     #$0080,12(a5)
edim_bitmap_10:
[00020758] 5245                      addq.w     #1,d5
edim_bitmap_5:
[0002075a] b645                      cmp.w      d5,d3
[0002075c] 6e00 ff74                 bgt        edim_bitmap_11
[00020760] 600a                      bra.s      edim_bitmap_12
edim_bitmap_4:
[00020762] 3003                      move.w     d3,d0
[00020764] 48c0                      ext.l      d0
[00020766] d080                      add.l      d0,d0
[00020768] d1af 0018                 add.l      d0,24(a7)
edim_bitmap_12:
[0002076c] 506d 000a                 addq.w     #8,10(a5)
[00020770] 506d 000e                 addq.w     #8,14(a5)
[00020774] 5244                      addq.w     #1,d4
edim_bitmap_3:
[00020776] 206f 001c                 movea.l    28(a7),a0
[0002077a] b868 0006                 cmp.w      6(a0),d4
[0002077e] 6d00 ff20                 blt        edim_bitmap_13
[00020782] 41d7                      lea.l      (a7),a0
[00020784] 4241                      clr.w      d1
[00020786] 2254                      movea.l    (a4),a1
[00020788] 3029 0010                 move.w     16(a1),d0
[0002078c] 4eb9 0006 3f60            jsr        vs_clip
[00020792] 206f 004c                 movea.l    76(a7),a0
[00020796] 3028 0008                 move.w     8(a0),d0
[0002079a] 4fef 0020                 lea.l      32(a7),a7
[0002079e] 4cdf 3cfc                 movem.l    (a7)+,d2-d7/a2-a5
[000207a2] 4e75                      rts

edim_struct:
[000207a4] 48e7 0038                 movem.l    a2-a4,-(a7)
[000207a8] 514f                      subq.w     #8,a7
[000207aa] 45f9 0010 1f12            lea.l      ACSblk,a2
[000207b0] 2052                      movea.l    (a2),a0
[000207b2] 3228 0260                 move.w     608(a0),d1
[000207b6] 48c1                      ext.l      d1
[000207b8] 2001                      move.l     d1,d0
[000207ba] d080                      add.l      d0,d0
[000207bc] d081                      add.l      d1,d0
[000207be] e788                      lsl.l      #3,d0
[000207c0] 2268 025c                 movea.l    604(a0),a1
[000207c4] 0271 fffe 080a            andi.w     #$FFFE,10(a1,d0.l)
[000207ca] 2052                      movea.l    (a2),a0
[000207cc] 2668 0258                 movea.l    600(a0),a3
[000207d0] 2853                      movea.l    (a3),a4
[000207d2] 4eb9 0004 b286            jsr        Awi_diaend
[000207d8] 377c ffff 001c            move.w     #$FFFF,28(a3)
[000207de] 276c 0008 0014            move.l     8(a4),20(a3)
[000207e4] 2052                      movea.l    (a2),a0
[000207e6] 3028 0004                 move.w     4(a0),d0
[000207ea] d040                      add.w      d0,d0
[000207ec] 226b 0014                 movea.l    20(a3),a1
[000207f0] d069 0014                 add.w      20(a1),d0
[000207f4] 3740 0028                 move.w     d0,40(a3)
[000207f8] 2052                      movea.l    (a2),a0
[000207fa] 3228 0006                 move.w     6(a0),d1
[000207fe] e549                      lsl.w      #2,d1
[00020800] 226b 0014                 movea.l    20(a3),a1
[00020804] d269 0016                 add.w      22(a1),d1
[00020808] 3741 002a                 move.w     d1,42(a3)
[0002080c] 2f39 000d 99d6            move.l     _globl,-(a7)
[00020812] 486f 000a                 pea.l      10(a7)
[00020816] 486f 000c                 pea.l      12(a7)
[0002081a] 206b 0014                 movea.l    20(a3),a0
[0002081e] 3f28 0016                 move.w     22(a0),-(a7)
[00020822] 3f28 0014                 move.w     20(a0),-(a7)
[00020826] 3f28 0012                 move.w     18(a0),-(a7)
[0002082a] 43ef 0014                 lea.l      20(a7),a1
[0002082e] 41ef 0012                 lea.l      18(a7),a0
[00020832] 286b 0014                 movea.l    20(a3),a4
[00020836] 342c 0010                 move.w     16(a4),d2
[0002083a] 322b 0022                 move.w     34(a3),d1
[0002083e] c27c f01f                 and.w      #$F01F,d1
[00020842] 4240                      clr.w      d0
[00020844] 4eb9 0006 d60a            jsr        mt_wind_calc
[0002084a] 4fef 0012                 lea.l      18(a7),a7
[0002084e] 302b 0022                 move.w     34(a3),d0
[00020852] 2052                      movea.l    (a2),a0
[00020854] 322f 0004                 move.w     4(a7),d1
[00020858] b268 000c                 cmp.w      12(a0),d1
[0002085c] 6c04                      bge.s      edim_struct_1
[0002085e] c07c f1ff                 and.w      #$F1FF,d0
edim_struct_1:
[00020862] 2052                      movea.l    (a2),a0
[00020864] 322f 0006                 move.w     6(a7),d1
[00020868] b268 000e                 cmp.w      14(a0),d1
[0002086c] 6c04                      bge.s      edim_struct_2
[0002086e] c07c fe3f                 and.w      #$FE3F,d0
edim_struct_2:
[00020872] 3200                      move.w     d0,d1
[00020874] c27c 0900                 and.w      #$0900,d1
[00020878] 6604                      bne.s      edim_struct_3
[0002087a] c07c ffdf                 and.w      #$FFDF,d0
edim_struct_3:
[0002087e] b06b 0022                 cmp.w      34(a3),d0
[00020882] 6722                      beq.s      edim_struct_4
[00020884] 3740 0022                 move.w     d0,34(a3)
[00020888] 006b 0100 0056            ori.w      #$0100,86(a3)
[0002088e] 204b                      movea.l    a3,a0
[00020890] 4eb9 0005 013e            jsr        Awi_closed
[00020896] 204b                      movea.l    a3,a0
[00020898] 4eb9 0004 f69e            jsr        Awi_open
[0002089e] 026b feff 0056            andi.w     #$FEFF,86(a3)
[000208a4] 6008                      bra.s      edim_struct_5
edim_struct_4:
[000208a6] 204b                      movea.l    a3,a0
[000208a8] 4eb9 0001 454a            jsr        view_shrink
edim_struct_5:
[000208ae] 504f                      addq.w     #8,a7
[000208b0] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[000208b4] 4e75                      rts

edim_edit:
[000208b6] 48e7 0038                 movem.l    a2-a4,-(a7)
[000208ba] 594f                      subq.w     #4,a7
[000208bc] 45f9 0010 1f12            lea.l      ACSblk,a2
[000208c2] 2052                      movea.l    (a2),a0
[000208c4] 2668 0258                 movea.l    600(a0),a3
[000208c8] 3228 0260                 move.w     608(a0),d1
[000208cc] 48c1                      ext.l      d1
[000208ce] 2001                      move.l     d1,d0
[000208d0] d080                      add.l      d0,d0
[000208d2] d081                      add.l      d1,d0
[000208d4] e788                      lsl.l      #3,d0
[000208d6] 2268 025c                 movea.l    604(a0),a1
[000208da] 0271 fffe 080a            andi.w     #$FFFE,10(a1,d0.l)
[000208e0] 2853                      movea.l    (a3),a4
[000208e2] 4eb9 0004 b286            jsr        Awi_diaend
[000208e8] 377c ffff 001c            move.w     #$FFFF,28(a3)
[000208ee] 206c 000c                 movea.l    12(a4),a0
[000208f2] 2748 0014                 move.l     a0,20(a3)
[000208f6] 226c 0008                 movea.l    8(a4),a1
[000208fa] 2ea9 0054                 move.l     84(a1),(a7)
[000208fe] 2857                      movea.l    (a7),a4
[00020900] 302c 0004                 move.w     4(a4),d0
[00020904] e748                      lsl.w      #3,d0
[00020906] e748                      lsl.w      #3,d0
[00020908] 322c 0006                 move.w     6(a4),d1
[0002090c] e749                      lsl.w      #3,d1
[0002090e] 2868 0264                 movea.l    612(a0),a4
[00020912] 294b 0004                 move.l     a3,4(a4)
[00020916] 3140 026c                 move.w     d0,620(a0)
[0002091a] 3140 0254                 move.w     d0,596(a0)
[0002091e] 3141 026e                 move.w     d1,622(a0)
[00020922] 3141 0256                 move.w     d1,598(a0)
[00020926] 317c 0008 0284            move.w     #$0008,644(a0)
[0002092c] 2852                      movea.l    (a2),a4
[0002092e] 342c 0012                 move.w     18(a4),d2
[00020932] d442                      add.w      d2,d2
[00020934] d468 0250                 add.w      592(a0),d2
[00020938] d042                      add.w      d2,d0
[0002093a] 342c 0014                 move.w     20(a4),d2
[0002093e] d442                      add.w      d2,d2
[00020940] d468 0252                 add.w      594(a0),d2
[00020944] d242                      add.w      d2,d1
[00020946] b069 0014                 cmp.w      20(a1),d0
[0002094a] 6c08                      bge.s      edim_edit_1
[0002094c] 3169 0014 0014            move.w     20(a1),20(a0)
[00020952] 6004                      bra.s      edim_edit_2
edim_edit_1:
[00020954] 3140 0014                 move.w     d0,20(a0)
edim_edit_2:
[00020958] b269 0016                 cmp.w      22(a1),d1
[0002095c] 6c08                      bge.s      edim_edit_3
[0002095e] 3169 0016 0016            move.w     22(a1),22(a0)
[00020964] 6004                      bra.s      edim_edit_4
edim_edit_3:
[00020966] 3141 0016                 move.w     d1,22(a0)
edim_edit_4:
[0002096a] 7008                      moveq.l    #8,d0
[0002096c] 3140 0046                 move.w     d0,70(a0)
[00020970] 3140 0044                 move.w     d0,68(a0)
[00020974] 0268 ff8f 003e            andi.w     #$FF8F,62(a0)
[0002097a] 0068 0070 003e            ori.w      #$0070,62(a0)
[00020980] 2052                      movea.l    (a2),a0
[00020982] 3028 000c                 move.w     12(a0),d0
[00020986] 3228 0004                 move.w     4(a0),d1
[0002098a] d241                      add.w      d1,d1
[0002098c] 226b 0014                 movea.l    20(a3),a1
[00020990] d269 0014                 add.w      20(a1),d1
[00020994] b041                      cmp.w      d1,d0
[00020996] 6c02                      bge.s      edim_edit_5
[00020998] 6010                      bra.s      edim_edit_6
edim_edit_5:
[0002099a] 2052                      movea.l    (a2),a0
[0002099c] 3028 0004                 move.w     4(a0),d0
[000209a0] d040                      add.w      d0,d0
[000209a2] 226b 0014                 movea.l    20(a3),a1
[000209a6] d069 0014                 add.w      20(a1),d0
edim_edit_6:
[000209aa] 3740 0028                 move.w     d0,40(a3)
[000209ae] 2052                      movea.l    (a2),a0
[000209b0] 3228 000e                 move.w     14(a0),d1
[000209b4] 3428 0006                 move.w     6(a0),d2
[000209b8] e54a                      lsl.w      #2,d2
[000209ba] 226b 0014                 movea.l    20(a3),a1
[000209be] d469 0016                 add.w      22(a1),d2
[000209c2] b242                      cmp.w      d2,d1
[000209c4] 6c02                      bge.s      edim_edit_7
[000209c6] 6010                      bra.s      edim_edit_8
edim_edit_7:
[000209c8] 2052                      movea.l    (a2),a0
[000209ca] 3228 0006                 move.w     6(a0),d1
[000209ce] e549                      lsl.w      #2,d1
[000209d0] 226b 0014                 movea.l    20(a3),a1
[000209d4] d269 0016                 add.w      22(a1),d1
edim_edit_8:
[000209d8] 3741 002a                 move.w     d1,42(a3)
[000209dc] 302b 0022                 move.w     34(a3),d0
[000209e0] c07c 0100                 and.w      #$0100,d0
[000209e4] 670a                      beq.s      edim_edit_9
[000209e6] 342b 0022                 move.w     34(a3),d2
[000209ea] c47c 0800                 and.w      #$0800,d2
[000209ee] 6624                      bne.s      edim_edit_10
edim_edit_9:
[000209f0] 006b 0100 0056            ori.w      #$0100,86(a3)
[000209f6] 204b                      movea.l    a3,a0
[000209f8] 4eb9 0005 013e            jsr        Awi_closed
[000209fe] 006b 0fe0 0022            ori.w      #$0FE0,34(a3)
[00020a04] 204b                      movea.l    a3,a0
[00020a06] 4eb9 0004 f69e            jsr        Awi_open
[00020a0c] 026b feff 0056            andi.w     #$FEFF,86(a3)
[00020a12] 6008                      bra.s      edim_edit_11
edim_edit_10:
[00020a14] 204b                      movea.l    a3,a0
[00020a16] 4eb9 0001 44f2            jsr        view_grow
edim_edit_11:
[00020a1c] 584f                      addq.w     #4,a7
[00020a1e] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00020a22] 4e75                      rts

acc_image:
[00020a24] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[00020a28] 2050                      movea.l    (a0),a0
[00020a2a] 2250                      movea.l    (a0),a1
[00020a2c] 0069 0001 0006            ori.w      #$0001,6(a1)
[00020a32] 2468 0004                 movea.l    4(a0),a2
[00020a36] 2068 0008                 movea.l    8(a0),a0
[00020a3a] 266a 0004                 movea.l    4(a2),a3
[00020a3e] 2868 0054                 movea.l    84(a0),a4
[00020a42] 362c 0004                 move.w     4(a4),d3
[00020a46] c7ec 0006                 muls.w     6(a4),d3
[00020a4a] 48c3                      ext.l      d3
[00020a4c] 780e                      moveq.l    #14,d4
[00020a4e] d883                      add.l      d3,d4
[00020a50] 2004                      move.l     d4,d0
[00020a52] 4eb9 0004 7cc8            jsr        Ax_malloc
[00020a58] 2a48                      movea.l    a0,a5
[00020a5a] 200d                      move.l     a5,d0
[00020a5c] 6734                      beq.s      acc_image_1
[00020a5e] 224c                      movea.l    a4,a1
[00020a60] 700e                      moveq.l    #14,d0
[00020a62] 4eb9 0007 6f44            jsr        memcpy
[00020a68] 2abc 0000 000e            move.l     #$0000000E,(a5)
[00020a6e] 254d 0004                 move.l     a5,4(a2)
[00020a72] 2003                      move.l     d3,d0
[00020a74] 2254                      movea.l    (a4),a1
[00020a76] 4bed 000e                 lea.l      14(a5),a5
[00020a7a] 204d                      movea.l    a5,a0
[00020a7c] 4eb9 0007 6f44            jsr        memcpy
[00020a82] 2544 000a                 move.l     d4,10(a2)
[00020a86] 2544 000e                 move.l     d4,14(a2)
[00020a8a] 204b                      movea.l    a3,a0
[00020a8c] 4eb9 0004 7e26            jsr        Ax_free
acc_image_1:
[00020a92] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[00020a96] 4e75                      rts

im_make:
[00020a98] 48e7 0038                 movem.l    a2-a4,-(a7)
[00020a9c] 594f                      subq.w     #4,a7
[00020a9e] 2e88                      move.l     a0,(a7)
[00020aa0] 2668 0004                 movea.l    4(a0),a3
[00020aa4] 286b 0012                 movea.l    18(a3),a4
[00020aa8] 200c                      move.l     a4,d0
[00020aaa] 670c                      beq.s      im_make_1
[00020aac] 204c                      movea.l    a4,a0
[00020aae] 4eb9 0004 f0ca            jsr        Awi_show
[00020ab4] 6000 009e                 bra        im_make_2
im_make_1:
[00020ab8] 7014                      moveq.l    #20,d0
[00020aba] 4eb9 0004 7cc8            jsr        Ax_malloc
[00020ac0] 2448                      movea.l    a0,a2
[00020ac2] 200a                      move.l     a2,d0
[00020ac4] 6700 008a                 beq        im_make_3
[00020ac8] 2257                      movea.l    (a7),a1
[00020aca] 2091                      move.l     (a1),(a0)
[00020acc] 2569 0004 0004            move.l     4(a1),4(a2)
[00020ad2] 41eb 0016                 lea.l      22(a3),a0
[00020ad6] 23c8 000a 5948            move.l     a0,$000A5948
[00020adc] 2279 000a 5954            movea.l    $000A5954,a1
[00020ae2] 2348 0008                 move.l     a0,8(a1)
[00020ae6] 41f9 000a 58fa            lea.l      WI_IMAGE,a0
[00020aec] 4eb9 0004 f41a            jsr        Awi_create
[00020af2] 2848                      movea.l    a0,a4
[00020af4] 200c                      move.l     a4,d0
[00020af6] 6758                      beq.s      im_make_3
[00020af8] 2257                      movea.l    (a7),a1
[00020afa] 2051                      movea.l    (a1),a0
[00020afc] 4868 0168                 pea.l      360(a0)
[00020b00] 43eb 003a                 lea.l      58(a3),a1
[00020b04] 204c                      movea.l    a4,a0
[00020b06] 4eb9 0001 47a8            jsr        wi_pos
[00020b0c] 584f                      addq.w     #4,a7
[00020b0e] 288a                      move.l     a2,(a4)
[00020b10] 256c 0014 0008            move.l     20(a4),8(a2)
[00020b16] 41f9 000a 5582            lea.l      EDIT_IMAGE2,a0
[00020b1c] 4eb9 0004 9a5c            jsr        Aob_create
[00020b22] 2548 000c                 move.l     a0,12(a2)
[00020b26] 2008                      move.l     a0,d0
[00020b28] 6726                      beq.s      im_make_3
[00020b2a] 4eb9 0004 a25e            jsr        Aob_fix
[00020b30] 274c 0012                 move.l     a4,18(a3)
[00020b34] 204c                      movea.l    a4,a0
[00020b36] 4eb9 0002 0baa            jsr        set_image
[00020b3c] 204c                      movea.l    a4,a0
[00020b3e] 226c 000c                 movea.l    12(a4),a1
[00020b42] 4e91                      jsr        (a1)
[00020b44] 4a40                      tst.w      d0
[00020b46] 670c                      beq.s      im_make_2
[00020b48] 204c                      movea.l    a4,a0
[00020b4a] 4eb9 0002 0c38            jsr        term
im_make_3:
[00020b50] 91c8                      suba.l     a0,a0
[00020b52] 6002                      bra.s      im_make_4
im_make_2:
[00020b54] 204c                      movea.l    a4,a0
im_make_4:
[00020b56] 584f                      addq.w     #4,a7
[00020b58] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00020b5c] 4e75                      rts

im_service:
[00020b5e] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00020b62] 2448                      movea.l    a0,a2
[00020b64] 3600                      move.w     d0,d3
[00020b66] 2849                      movea.l    a1,a4
[00020b68] 2650                      movea.l    (a0),a3
[00020b6a] 5540                      subq.w     #2,d0
[00020b6c] 6708                      beq.s      im_service_1
[00020b6e] 907c 270e                 sub.w      #$270E,d0
[00020b72] 6712                      beq.s      im_service_2
[00020b74] 601e                      bra.s      im_service_3
im_service_1:
[00020b76] 204a                      movea.l    a2,a0
[00020b78] 6100 feaa                 bsr        acc_image
[00020b7c] 204a                      movea.l    a2,a0
[00020b7e] 4eb9 0002 0c38            jsr        term
[00020b84] 601c                      bra.s      im_service_4
im_service_2:
[00020b86] 226b 0004                 movea.l    4(a3),a1
[00020b8a] 204a                      movea.l    a2,a0
[00020b8c] 4eb9 0001 45a2            jsr        new_name
[00020b92] 600e                      bra.s      im_service_4
im_service_3:
[00020b94] 224c                      movea.l    a4,a1
[00020b96] 3003                      move.w     d3,d0
[00020b98] 204a                      movea.l    a2,a0
[00020b9a] 4eb9 0005 1276            jsr        Awi_service
[00020ba0] 6002                      bra.s      im_service_5
im_service_4:
[00020ba2] 7001                      moveq.l    #1,d0
im_service_5:
[00020ba4] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00020ba8] 4e75                      rts

set_image:
[00020baa] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00020bae] 2448                      movea.l    a0,a2
[00020bb0] 2650                      movea.l    (a0),a3
[00020bb2] 206b 0008                 movea.l    8(a3),a0
[00020bb6] 2868 0054                 movea.l    84(a0),a4
[00020bba] 206b 0004                 movea.l    4(a3),a0
[00020bbe] 2a68 0004                 movea.l    4(a0),a5
[00020bc2] 4240                      clr.w      d0
[00020bc4] 3b40 000a                 move.w     d0,10(a5)
[00020bc8] 3b40 0008                 move.w     d0,8(a5)
[00020bcc] 224d                      movea.l    a5,a1
[00020bce] 204c                      movea.l    a4,a0
[00020bd0] 700e                      moveq.l    #14,d0
[00020bd2] 4eb9 0007 6f44            jsr        memcpy
[00020bd8] 263c 0000 1200            move.l     #$00001200,d3
[00020bde] 2003                      move.l     d3,d0
[00020be0] 4eb9 0004 7cc8            jsr        Ax_malloc
[00020be6] 2888                      move.l     a0,(a4)
[00020be8] 2748 0010                 move.l     a0,16(a3)
[00020bec] 2008                      move.l     a0,d0
[00020bee] 670e                      beq.s      set_image_1
[00020bf0] 2215                      move.l     (a5),d1
[00020bf2] 43f5 1800                 lea.l      0(a5,d1.l),a1
[00020bf6] 2003                      move.l     d3,d0
[00020bf8] 4eb9 0007 6f44            jsr        memcpy
set_image_1:
[00020bfe] 302c 000c                 move.w     12(a4),d0
[00020c02] 48c0                      ext.l      d0
[00020c04] e588                      lsl.l      #2,d0
[00020c06] 41f9 000b e270            lea.l      colour_text,a0
[00020c0c] 2270 0800                 movea.l    0(a0,d0.l),a1
[00020c10] 206a 0014                 movea.l    20(a2),a0
[00020c14] 700b                      moveq.l    #11,d0
[00020c16] 4eb9 0004 afe0            jsr        Aob_puttext
[00020c1c] 206a 0014                 movea.l    20(a2),a0
[00020c20] 302c 000c                 move.w     12(a4),d0
[00020c24] 0268 fff0 00fe            andi.w     #$FFF0,254(a0)
[00020c2a] c07c 000f                 and.w      #$000F,d0
[00020c2e] 8168 00fe                 or.w       d0,254(a0)
[00020c32] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00020c36] 4e75                      rts

term:
[00020c38] 2f0a                      move.l     a2,-(a7)
[00020c3a] 2f0b                      move.l     a3,-(a7)
[00020c3c] 2448                      movea.l    a0,a2
[00020c3e] 006a 0100 0056            ori.w      #$0100,86(a2)
[00020c44] 2650                      movea.l    (a0),a3
[00020c46] 226b 0004                 movea.l    4(a3),a1
[00020c4a] 42a9 0012                 clr.l      18(a1)
[00020c4e] 226a 0014                 movea.l    20(a2),a1
[00020c52] b3eb 0008                 cmpa.l     8(a3),a1
[00020c56] 660c                      bne.s      term_1
[00020c58] 206b 000c                 movea.l    12(a3),a0
[00020c5c] 4eb9 0004 9b7c            jsr        Aob_delete
[00020c62] 600a                      bra.s      term_2
term_1:
[00020c64] 206b 0008                 movea.l    8(a3),a0
[00020c68] 4eb9 0004 9b7c            jsr        Aob_delete
term_2:
[00020c6e] 302a 0056                 move.w     86(a2),d0
[00020c72] c07c 0800                 and.w      #$0800,d0
[00020c76] 6716                      beq.s      term_3
[00020c78] 43ea 002c                 lea.l      44(a2),a1
[00020c7c] 206b 0004                 movea.l    4(a3),a0
[00020c80] 41e8 003a                 lea.l      58(a0),a0
[00020c84] 7008                      moveq.l    #8,d0
[00020c86] 4eb9 0007 6f44            jsr        memcpy
[00020c8c] 6014                      bra.s      term_4
term_3:
[00020c8e] 7008                      moveq.l    #8,d0
[00020c90] 43ea 0024                 lea.l      36(a2),a1
[00020c94] 206b 0004                 movea.l    4(a3),a0
[00020c98] 41e8 003a                 lea.l      58(a0),a0
[00020c9c] 4eb9 0007 6f44            jsr        memcpy
term_4:
[00020ca2] 206b 0010                 movea.l    16(a3),a0
[00020ca6] 4eb9 0004 7e26            jsr        Ax_free
[00020cac] 204b                      movea.l    a3,a0
[00020cae] 4eb9 0004 7e26            jsr        Ax_free
[00020cb4] 204a                      movea.l    a2,a0
[00020cb6] 4eb9 0005 013e            jsr        Awi_closed
[00020cbc] 204a                      movea.l    a2,a0
[00020cbe] 4eb9 0005 0330            jsr        Awi_delete
[00020cc4] 265f                      movea.l    (a7)+,a3
[00020cc6] 245f                      movea.l    (a7)+,a2
[00020cc8] 4e75                      rts

	.data

ERR_LARGE:
[000a4a0c]                           dc.b '[3][ Die Bilddaten umspannen| einen zu grossen Bereich | (Limit 196 x 196), oder| liegen nicht im| Standardformat vor.][ OK ]',0
TEXT_002:
[000a4a8a]                           dc.b $00
TEXT_003:
[000a4a8b]                           dc.b $4f
[000a4a8c]                           dc.w $4b00
TEXT_004:
[000a4a8e]                           dc.b 'Abbruch',0
TEXT_01:
[000a4a96]                           dc.b 'Farbe:',0
TEXT_019:
[000a4a9d]                           dc.b 'Struktur',0
TEXT_02:
[000a4aa6]                           dc.b 'Pinsel:',0
TEXT_03:
[000a4aae]                           dc.b 'Schiebe:',0
TEXT_04:
[000a4ab7]                           dc.b 'St„rke:',0
TEXT_05:
[000a4abf]                           dc.b 'Breite:',0
TEXT_06:
[000a4ac7]                           dc.b '  H”he:',0
TEXT_07:
[000a4acf]                           dc.b ' Bild-Editor ',0
TEXT_08:
[000a4add]                           dc.b 'neues Muster',0
TEXT_09:
[000a4aea]                           dc.b 'Edit...',0
TEXT_10:
[000a4af2]                           dc.b 'Ausmaže...',0
TEXT_11:
[000a4afd]                           dc.b ' Ausmaže ',0
TEXT_12:
[000a4b07]                           dc.b 'THINN',0
TEXT_13:
[000a4b0d]                           dc.b 'FAT',0
TEXT_208:
[000a4b11]                           dc.b 'BILDER',0
DATAS_13:
[000a4b18]                           dc.b $00
[000a4b19]                           dc.b $00
[000a4b1a]                           dc.b $00
[000a4b1b]                           dc.b $00
[000a4b1c]                           dc.w $02c0
[000a4b1e]                           dc.b $00
[000a4b1f]                           dc.b $00
[000a4b20]                           dc.b $00
[000a4b21]                           dc.b $00
[000a4b22]                           dc.b $00
[000a4b23]                           dc.b $00
[000a4b24]                           dc.w $7fff
[000a4b26]                           dc.w $ffff
[000a4b28]                           dc.w $fffe
[000a4b2a]                           dc.w $4000
[000a4b2c]                           dc.b $00
[000a4b2d]                           dc.b $00
[000a4b2e]                           dc.b $00
[000a4b2f]                           dc.b $02
[000a4b30]                           dc.w $4000
[000a4b32]                           dc.b $00
[000a4b33]                           dc.b $00
[000a4b34]                           dc.b $00
[000a4b35]                           dc.b $02
[000a4b36]                           dc.w $4000
[000a4b38]                           dc.b $00
[000a4b39]                           dc.b $00
[000a4b3a]                           dc.w $3802
[000a4b3c]                           dc.w $4000
[000a4b3e]                           dc.b $00
[000a4b3f]                           dc.b $00
[000a4b40]                           dc.w $7c02
[000a4b42]                           dc.w $4000
[000a4b44]                           dc.b $00
[000a4b45]                           dc.b $00
[000a4b46]                           dc.w $7c02
[000a4b48]                           dc.w $4000
[000a4b4a]                           dc.b $00
[000a4b4b]                           dc.b $00
[000a4b4c]                           dc.w $7c02
[000a4b4e]                           dc.w $4000
[000a4b50]                           dc.b $00
[000a4b51]                           dc.b $00
[000a4b52]                           dc.w $3802
[000a4b54]                           dc.w $4000
[000a4b56]                           dc.b $00
[000a4b57]                           dc.b $00
[000a4b58]                           dc.b $00
[000a4b59]                           dc.b $02
[000a4b5a]                           dc.w $4000
[000a4b5c]                           dc.b $00
[000a4b5d]                           dc.b $00
[000a4b5e]                           dc.b $00
[000a4b5f]                           dc.b $02
[000a4b60]                           dc.w $4000
[000a4b62]                           dc.b $00
[000a4b63]                           dc.b $00
[000a4b64]                           dc.b $00
[000a4b65]                           dc.b $02
[000a4b66]                           dc.w $4000
[000a4b68]                           dc.b $00
[000a4b69]                           dc.b $00
[000a4b6a]                           dc.b $00
[000a4b6b]                           dc.b $02
[000a4b6c]                           dc.w $4000
[000a4b6e]                           dc.b $00
[000a4b6f]                           dc.b $00
[000a4b70]                           dc.b $00
[000a4b71]                           dc.b $02
[000a4b72]                           dc.w $4000
[000a4b74]                           dc.b $00
[000a4b75]                           dc.b $00
[000a4b76]                           dc.w $7f02
[000a4b78]                           dc.w $7cc0
[000a4b7a]                           dc.b $00
[000a4b7b]                           dc.b $0f
[000a4b7c]                           dc.w $ff82
[000a4b7e]                           dc.w $7fc0
[000a4b80]                           dc.w $f83f
[000a4b82]                           dc.w $ffe2
[000a4b84]                           dc.w $7fe3
[000a4b86]                           dc.w $ffff
[000a4b88]                           dc.w $fffe
[000a4b8a]                           dc.w $7fe3
[000a4b8c]                           dc.w $ffff
[000a4b8e]                           dc.w $fffe
[000a4b90]                           dc.w $7fe3
[000a4b92]                           dc.w $ffff
[000a4b94]                           dc.w $fffe
[000a4b96]                           dc.w $7fe3
[000a4b98]                           dc.w $ffff
[000a4b9a]                           dc.w $fffe
[000a4b9c]                           dc.w $7fff
[000a4b9e]                           dc.w $ffff
[000a4ba0]                           dc.w $fffe
[000a4ba2]                           dc.w $7fff
[000a4ba4]                           dc.w $ff7f
[000a4ba6]                           dc.w $fffe
[000a4ba8]                           dc.w $7fff
[000a4baa]                           dc.w $ff5f
[000a4bac]                           dc.w $fffe
[000a4bae]                           dc.w $7fff
[000a4bb0]                           dc.w $ff1f
[000a4bb2]                           dc.w $fffe
[000a4bb4]                           dc.w $7fff
[000a4bb6]                           dc.w $ffbf
[000a4bb8]                           dc.w $fffe
[000a4bba]                           dc.w $7fff
[000a4bbc]                           dc.w $ffff
[000a4bbe]                           dc.w $fffe
[000a4bc0]                           dc.w $7fff
[000a4bc2]                           dc.w $ffff
[000a4bc4]                           dc.w $fffe
[000a4bc6]                           dc.b $00
[000a4bc7]                           dc.b $00
[000a4bc8]                           dc.b $00
[000a4bc9]                           dc.b $00
[000a4bca]                           dc.b $00
[000a4bcb]                           dc.b $00
[000a4bcc]                           dc.b $00
[000a4bcd]                           dc.b $00
[000a4bce]                           dc.b $00
[000a4bcf]                           dc.b $00
[000a4bd0]                           dc.b $00
[000a4bd1]                           dc.b $00
[000a4bd2]                           dc.w $7fff
[000a4bd4]                           dc.w $ffff
[000a4bd6]                           dc.w $fffe
[000a4bd8]                           dc.w $4000
[000a4bda]                           dc.b $00
[000a4bdb]                           dc.b $00
[000a4bdc]                           dc.b $00
[000a4bdd]                           dc.b $02
[000a4bde]                           dc.w $4000
[000a4be0]                           dc.b $00
[000a4be1]                           dc.b $00
[000a4be2]                           dc.b $00
[000a4be3]                           dc.b $02
[000a4be4]                           dc.w $4000
[000a4be6]                           dc.b $00
[000a4be7]                           dc.b $00
[000a4be8]                           dc.b $00
[000a4be9]                           dc.b $02
[000a4bea]                           dc.w $4000
[000a4bec]                           dc.b $00
[000a4bed]                           dc.b $00
[000a4bee]                           dc.b $00
[000a4bef]                           dc.b $02
[000a4bf0]                           dc.w $4000
[000a4bf2]                           dc.b $00
[000a4bf3]                           dc.b $00
[000a4bf4]                           dc.b $00
[000a4bf5]                           dc.b $02
[000a4bf6]                           dc.w $4000
[000a4bf8]                           dc.b $00
[000a4bf9]                           dc.b $00
[000a4bfa]                           dc.b $00
[000a4bfb]                           dc.b $02
[000a4bfc]                           dc.w $4000
[000a4bfe]                           dc.b $00
[000a4bff]                           dc.b $00
[000a4c00]                           dc.b $00
[000a4c01]                           dc.b $02
[000a4c02]                           dc.w $4018
[000a4c04]                           dc.b $00
[000a4c05]                           dc.b $00
[000a4c06]                           dc.b $00
[000a4c07]                           dc.b $02
[000a4c08]                           dc.w $403c
[000a4c0a]                           dc.b $00
[000a4c0b]                           dc.b $00
[000a4c0c]                           dc.b $00
[000a4c0d]                           dc.b $02
[000a4c0e]                           dc.w $403c
[000a4c10]                           dc.w $8000
[000a4c12]                           dc.b $00
[000a4c13]                           dc.b $02
[000a4c14]                           dc.w $403d
[000a4c16]                           dc.w $c000
[000a4c18]                           dc.b $00
[000a4c19]                           dc.b $02
[000a4c1a]                           dc.w $403f
[000a4c1c]                           dc.w $c000
[000a4c1e]                           dc.b $00
[000a4c1f]                           dc.b $02
[000a4c20]                           dc.w $403f
[000a4c22]                           dc.w $c000
[000a4c24]                           dc.w $7f02
[000a4c26]                           dc.w $7cff
[000a4c28]                           dc.w $800f
[000a4c2a]                           dc.w $ff82
[000a4c2c]                           dc.w $7fff
[000a4c2e]                           dc.w $f83f
[000a4c30]                           dc.w $ffe2
[000a4c32]                           dc.w $7fff
[000a4c34]                           dc.w $ffff
[000a4c36]                           dc.w $fffe
[000a4c38]                           dc.w $7fff
[000a4c3a]                           dc.w $ffff
[000a4c3c]                           dc.w $fffe
[000a4c3e]                           dc.w $7fff
[000a4c40]                           dc.w $ffff
[000a4c42]                           dc.w $fffe
[000a4c44]                           dc.w $7fff
[000a4c46]                           dc.w $ffff
[000a4c48]                           dc.w $fffe
[000a4c4a]                           dc.w $7fff
[000a4c4c]                           dc.w $ffff
[000a4c4e]                           dc.w $fffe
[000a4c50]                           dc.w $7fff
[000a4c52]                           dc.w $ffff
[000a4c54]                           dc.w $fffe
[000a4c56]                           dc.w $7fff
[000a4c58]                           dc.w $ffff
[000a4c5a]                           dc.w $fffe
[000a4c5c]                           dc.w $7fff
[000a4c5e]                           dc.w $ffff
[000a4c60]                           dc.w $fffe
[000a4c62]                           dc.w $7fff
[000a4c64]                           dc.w $ffff
[000a4c66]                           dc.w $fffe
[000a4c68]                           dc.w $7fff
[000a4c6a]                           dc.w $ffff
[000a4c6c]                           dc.w $fffe
[000a4c6e]                           dc.w $7fff
[000a4c70]                           dc.w $ffff
[000a4c72]                           dc.w $fffe
[000a4c74]                           dc.b $00
[000a4c75]                           dc.b $00
[000a4c76]                           dc.b $00
[000a4c77]                           dc.b $00
[000a4c78]                           dc.b $00
[000a4c79]                           dc.b $00
[000a4c7a]                           dc.b $00
[000a4c7b]                           dc.b $00
[000a4c7c]                           dc.b $00
[000a4c7d]                           dc.b $00
[000a4c7e]                           dc.b $00
[000a4c7f]                           dc.b $00
[000a4c80]                           dc.w $7fff
[000a4c82]                           dc.w $ffff
[000a4c84]                           dc.w $fffe
[000a4c86]                           dc.w $7fff
[000a4c88]                           dc.w $ffff
[000a4c8a]                           dc.w $fffe
[000a4c8c]                           dc.w $7fff
[000a4c8e]                           dc.w $ffff
[000a4c90]                           dc.w $fffe
[000a4c92]                           dc.w $7fff
[000a4c94]                           dc.w $ffff
[000a4c96]                           dc.w $c7fe
[000a4c98]                           dc.w $7fd0
[000a4c9a]                           dc.w $3fff
[000a4c9c]                           dc.w $83fe
[000a4c9e]                           dc.w $7fff
[000a4ca0]                           dc.w $cbff
[000a4ca2]                           dc.w $83fe
[000a4ca4]                           dc.w $7fff
[000a4ca6]                           dc.w $fc3f
[000a4ca8]                           dc.w $83fe
[000a4caa]                           dc.w $7fff
[000a4cac]                           dc.w $ffff
[000a4cae]                           dc.w $c7fe
[000a4cb0]                           dc.w $7fe7
[000a4cb2]                           dc.w $ffff
[000a4cb4]                           dc.w $fffe
[000a4cb6]                           dc.w $7fc3
[000a4cb8]                           dc.w $ffff
[000a4cba]                           dc.w $fffe
[000a4cbc]                           dc.w $7fc3
[000a4cbe]                           dc.w $7fff
[000a4cc0]                           dc.w $fffe
[000a4cc2]                           dc.w $7fc2
[000a4cc4]                           dc.w $3fff
[000a4cc6]                           dc.w $fffe
[000a4cc8]                           dc.w $7fc0
[000a4cca]                           dc.w $3fff
[000a4ccc]                           dc.w $fffe
[000a4cce]                           dc.w $7fc0
[000a4cd0]                           dc.w $3fff
[000a4cd2]                           dc.w $80fe
[000a4cd4]                           dc.w $4300
[000a4cd6]                           dc.w $7ff0
[000a4cd8]                           dc.b $00
[000a4cd9]                           dc.b $7e
[000a4cda]                           dc.w $4000
[000a4cdc]                           dc.w $07c0
[000a4cde]                           dc.b $00
[000a4cdf]                           dc.b $1e
[000a4ce0]                           dc.w $4000
[000a4ce2]                           dc.b $00
[000a4ce3]                           dc.b $00
[000a4ce4]                           dc.b $00
[000a4ce5]                           dc.b $02
[000a4ce6]                           dc.w $4000
[000a4ce8]                           dc.b $00
[000a4ce9]                           dc.b $00
[000a4cea]                           dc.b $00
[000a4ceb]                           dc.b $02
[000a4cec]                           dc.w $4000
[000a4cee]                           dc.b $00
[000a4cef]                           dc.b $00
[000a4cf0]                           dc.b $00
[000a4cf1]                           dc.b $02
[000a4cf2]                           dc.w $4000
[000a4cf4]                           dc.b $00
[000a4cf5]                           dc.b $00
[000a4cf6]                           dc.b $00
[000a4cf7]                           dc.b $02
[000a4cf8]                           dc.w $4000
[000a4cfa]                           dc.b $00
[000a4cfb]                           dc.b $00
[000a4cfc]                           dc.b $00
[000a4cfd]                           dc.b $02
[000a4cfe]                           dc.w $4000
[000a4d00]                           dc.b $00
[000a4d01]                           dc.b $00
[000a4d02]                           dc.b $00
[000a4d03]                           dc.b $02
[000a4d04]                           dc.w $4000
[000a4d06]                           dc.b $00
[000a4d07]                           dc.b $00
[000a4d08]                           dc.b $00
[000a4d09]                           dc.b $02
[000a4d0a]                           dc.w $4000
[000a4d0c]                           dc.b $00
[000a4d0d]                           dc.b $00
[000a4d0e]                           dc.b $00
[000a4d0f]                           dc.b $02
[000a4d10]                           dc.w $4000
[000a4d12]                           dc.b $00
[000a4d13]                           dc.b $00
[000a4d14]                           dc.b $00
[000a4d15]                           dc.b $02
[000a4d16]                           dc.w $4000
[000a4d18]                           dc.b $00
[000a4d19]                           dc.b $00
[000a4d1a]                           dc.b $00
[000a4d1b]                           dc.b $02
[000a4d1c]                           dc.w $7fff
[000a4d1e]                           dc.w $ffff
[000a4d20]                           dc.w $fffe
[000a4d22]                           dc.b $00
[000a4d23]                           dc.b $00
[000a4d24]                           dc.b $00
[000a4d25]                           dc.b $00
[000a4d26]                           dc.b $00
[000a4d27]                           dc.b $00
[000a4d28]                           dc.b $00
[000a4d29]                           dc.b $00
[000a4d2a]                           dc.b $00
[000a4d2b]                           dc.b $00
[000a4d2c]                           dc.b $00
[000a4d2d]                           dc.b $00
[000a4d2e]                           dc.w $7fff
[000a4d30]                           dc.w $ffff
[000a4d32]                           dc.w $fffe
[000a4d34]                           dc.w $4000
[000a4d36]                           dc.b $00
[000a4d37]                           dc.b $00
[000a4d38]                           dc.b $00
[000a4d39]                           dc.b $02
[000a4d3a]                           dc.w $4000
[000a4d3c]                           dc.b $00
[000a4d3d]                           dc.b $00
[000a4d3e]                           dc.b $00
[000a4d3f]                           dc.b $02
[000a4d40]                           dc.w $4000
[000a4d42]                           dc.b $00
[000a4d43]                           dc.b $00
[000a4d44]                           dc.b $00
[000a4d45]                           dc.b $02
[000a4d46]                           dc.w $4000
[000a4d48]                           dc.b $00
[000a4d49]                           dc.b $00
[000a4d4a]                           dc.b $00
[000a4d4b]                           dc.b $02
[000a4d4c]                           dc.w $4000
[000a4d4e]                           dc.b $00
[000a4d4f]                           dc.b $00
[000a4d50]                           dc.b $00
[000a4d51]                           dc.b $02
[000a4d52]                           dc.w $4000
[000a4d54]                           dc.b $00
[000a4d55]                           dc.b $00
[000a4d56]                           dc.b $00
[000a4d57]                           dc.b $02
[000a4d58]                           dc.w $4000
[000a4d5a]                           dc.b $00
[000a4d5b]                           dc.b $00
[000a4d5c]                           dc.b $00
[000a4d5d]                           dc.b $02
[000a4d5e]                           dc.w $4000
[000a4d60]                           dc.b $00
[000a4d61]                           dc.b $00
[000a4d62]                           dc.b $00
[000a4d63]                           dc.b $02
[000a4d64]                           dc.w $4000
[000a4d66]                           dc.b $00
[000a4d67]                           dc.b $00
[000a4d68]                           dc.b $00
[000a4d69]                           dc.b $02
[000a4d6a]                           dc.w $4004
[000a4d6c]                           dc.b $00
[000a4d6d]                           dc.b $00
[000a4d6e]                           dc.b $00
[000a4d6f]                           dc.b $02
[000a4d70]                           dc.w $4004
[000a4d72]                           dc.b $00
[000a4d73]                           dc.b $00
[000a4d74]                           dc.b $00
[000a4d75]                           dc.b $02
[000a4d76]                           dc.b '@$@',0
[000a4d7a]                           dc.b $00
[000a4d7b]                           dc.b $02
[000a4d7c]                           dc.b '@$@',0
[000a4d80]                           dc.b $00
[000a4d81]                           dc.b $02
[000a4d82]                           dc.w $5cc0
[000a4d84]                           dc.w $8000
[000a4d86]                           dc.b $00
[000a4d87]                           dc.b $02
[000a4d88]                           dc.w $4323
[000a4d8a]                           dc.b $00
[000a4d8b]                           dc.b $00
[000a4d8c]                           dc.b $00
[000a4d8d]                           dc.b $02
[000a4d8e]                           dc.w $4004
[000a4d90]                           dc.b $00
[000a4d91]                           dc.b $80
[000a4d92]                           dc.b $00
[000a4d93]                           dc.b $1e
[000a4d94]                           dc.w $4004
[000a4d96]                           dc.b $00
[000a4d97]                           dc.b $7c
[000a4d98]                           dc.w $01fe
[000a4d9a]                           dc.w $4004
[000a4d9c]                           dc.b $00
[000a4d9d]                           dc.b $03
[000a4d9e]                           dc.w $fff2
[000a4da0]                           dc.w $4004
[000a4da2]                           dc.b $00
[000a4da3]                           dc.b $02
[000a4da4]                           dc.w $ffc2
[000a4da6]                           dc.w $4000
[000a4da8]                           dc.b $00
[000a4da9]                           dc.b $00
[000a4daa]                           dc.b $00
[000a4dab]                           dc.b $02
[000a4dac]                           dc.w $4000
[000a4dae]                           dc.b $00
[000a4daf]                           dc.b $80
[000a4db0]                           dc.b $00
[000a4db1]                           dc.b $02
[000a4db2]                           dc.w $4000
[000a4db4]                           dc.b $00
[000a4db5]                           dc.b $a0
[000a4db6]                           dc.b $00
[000a4db7]                           dc.b $02
[000a4db8]                           dc.w $4000
[000a4dba]                           dc.b $00
[000a4dbb]                           dc.b $60
[000a4dbc]                           dc.b $00
[000a4dbd]                           dc.b $02
[000a4dbe]                           dc.w $4000
[000a4dc0]                           dc.b $00
[000a4dc1]                           dc.b $40
[000a4dc2]                           dc.b $00
[000a4dc3]                           dc.b $02
[000a4dc4]                           dc.w $4000
[000a4dc6]                           dc.b $00
[000a4dc7]                           dc.b $00
[000a4dc8]                           dc.b $00
[000a4dc9]                           dc.b $02
[000a4dca]                           dc.w $7fff
[000a4dcc]                           dc.w $ffff
[000a4dce]                           dc.w $fffe
[000a4dd0]                           dc.b $00
[000a4dd1]                           dc.b $00
[000a4dd2]                           dc.b $00
[000a4dd3]                           dc.b $00
[000a4dd4]                           dc.b $00
[000a4dd5]                           dc.b $00
DATAS_14:
[000a4dd6]                           dc.b $00
[000a4dd7]                           dc.b $00
[000a4dd8]                           dc.b $00
[000a4dd9]                           dc.b $00
[000a4dda]                           dc.b $00
[000a4ddb]                           dc.b $00
[000a4ddc]                           dc.w $7fff
[000a4dde]                           dc.w $ffff
[000a4de0]                           dc.w $fffe
[000a4de2]                           dc.w $7fff
[000a4de4]                           dc.w $ffff
[000a4de6]                           dc.w $fffe
[000a4de8]                           dc.w $7fff
[000a4dea]                           dc.w $ffff
[000a4dec]                           dc.w $fffe
[000a4dee]                           dc.w $7fff
[000a4df0]                           dc.w $ffff
[000a4df2]                           dc.w $fffe
[000a4df4]                           dc.w $7fff
[000a4df6]                           dc.w $ffff
[000a4df8]                           dc.w $fffe
[000a4dfa]                           dc.w $7fff
[000a4dfc]                           dc.w $ffff
[000a4dfe]                           dc.w $fffe
[000a4e00]                           dc.w $7fff
[000a4e02]                           dc.w $ffff
[000a4e04]                           dc.w $fffe
[000a4e06]                           dc.w $7fff
[000a4e08]                           dc.w $ffff
[000a4e0a]                           dc.w $fffe
[000a4e0c]                           dc.w $7fff
[000a4e0e]                           dc.w $ffff
[000a4e10]                           dc.w $fffe
[000a4e12]                           dc.w $7fff
[000a4e14]                           dc.w $ffff
[000a4e16]                           dc.w $fffe
[000a4e18]                           dc.w $7fff
[000a4e1a]                           dc.w $ffff
[000a4e1c]                           dc.w $fffe
[000a4e1e]                           dc.w $7fff
[000a4e20]                           dc.w $ffff
[000a4e22]                           dc.w $fffe
[000a4e24]                           dc.w $7fff
[000a4e26]                           dc.w $ffff
[000a4e28]                           dc.w $fffe
[000a4e2a]                           dc.w $7fff
[000a4e2c]                           dc.w $ffff
[000a4e2e]                           dc.w $fffe
[000a4e30]                           dc.w $7fff
[000a4e32]                           dc.w $ffff
[000a4e34]                           dc.w $fffe
[000a4e36]                           dc.w $7fff
[000a4e38]                           dc.w $ffff
[000a4e3a]                           dc.w $fffe
[000a4e3c]                           dc.w $7fff
[000a4e3e]                           dc.w $ffff
[000a4e40]                           dc.w $fffe
[000a4e42]                           dc.w $7fff
[000a4e44]                           dc.w $ffff
[000a4e46]                           dc.w $fffe
[000a4e48]                           dc.w $7fff
[000a4e4a]                           dc.w $ffff
[000a4e4c]                           dc.w $fffe
[000a4e4e]                           dc.w $7fff
[000a4e50]                           dc.w $ffff
[000a4e52]                           dc.w $fffe
[000a4e54]                           dc.w $7fff
[000a4e56]                           dc.w $ffff
[000a4e58]                           dc.w $fffe
[000a4e5a]                           dc.w $7fff
[000a4e5c]                           dc.w $ffff
[000a4e5e]                           dc.w $fffe
[000a4e60]                           dc.w $7fff
[000a4e62]                           dc.w $ffff
[000a4e64]                           dc.w $fffe
[000a4e66]                           dc.w $7fff
[000a4e68]                           dc.w $ffff
[000a4e6a]                           dc.w $fffe
[000a4e6c]                           dc.w $7fff
[000a4e6e]                           dc.w $ffff
[000a4e70]                           dc.w $fffe
[000a4e72]                           dc.w $7fff
[000a4e74]                           dc.w $ffff
[000a4e76]                           dc.w $fffe
[000a4e78]                           dc.w $7fff
[000a4e7a]                           dc.w $ffff
[000a4e7c]                           dc.w $fffe
[000a4e7e]                           dc.b $00
[000a4e7f]                           dc.b $00
[000a4e80]                           dc.b $00
[000a4e81]                           dc.b $00
[000a4e82]                           dc.b $00
[000a4e83]                           dc.b $00
TEDINFO_01:
[000a4e84] 000a4b07                  dc.l TEXT_12
[000a4e88] 000a4a8a                  dc.l TEXT_002
[000a4e8c] 000a4a8a                  dc.l TEXT_002
[000a4e90]                           dc.b $00
[000a4e91]                           dc.b $05
[000a4e92]                           dc.b $00
[000a4e93]                           dc.b $06
[000a4e94]                           dc.b $00
[000a4e95]                           dc.b $02
[000a4e96]                           dc.w $1180
[000a4e98]                           dc.b $00
[000a4e99]                           dc.b $00
[000a4e9a]                           dc.w $ffff
[000a4e9c]                           dc.b $00
[000a4e9d]                           dc.b $06
[000a4e9e]                           dc.b $00
[000a4e9f]                           dc.b $01
TEDINFO_02:
[000a4ea0] 000a4b0d                  dc.l TEXT_13
[000a4ea4] 000a4a8a                  dc.l TEXT_002
[000a4ea8] 000a4a8a                  dc.l TEXT_002
[000a4eac]                           dc.b $00
[000a4ead]                           dc.b $05
[000a4eae]                           dc.b $00
[000a4eaf]                           dc.b $06
[000a4eb0]                           dc.b $00
[000a4eb1]                           dc.b $02
[000a4eb2]                           dc.w $1180
[000a4eb4]                           dc.b $00
[000a4eb5]                           dc.b $00
[000a4eb6]                           dc.w $ffff
[000a4eb8]                           dc.b $00
[000a4eb9]                           dc.b $04
[000a4eba]                           dc.b $00
[000a4ebb]                           dc.b $01
A_3DBUTTON01:
[000a4ebc] 0005a4e2                  dc.l A_3Dbutton
[000a4ec0]                           dc.w $29f1
[000a4ec2]                           dc.w $0178
[000a4ec4] 00059318                  dc.l Auo_string
[000a4ec8]                           dc.b $00
[000a4ec9]                           dc.b $00
[000a4eca]                           dc.b $00
[000a4ecb]                           dc.b $00
[000a4ecc]                           dc.b $00
[000a4ecd]                           dc.b $00
[000a4ece]                           dc.b $00
[000a4ecf]                           dc.b $00
[000a4ed0]                           dc.b $00
[000a4ed1]                           dc.b $00
[000a4ed2]                           dc.b $00
[000a4ed3]                           dc.b $00
[000a4ed4]                           dc.b $00
[000a4ed5]                           dc.b $00
[000a4ed6]                           dc.b $00
[000a4ed7]                           dc.b $00
[000a4ed8]                           dc.b $00
[000a4ed9]                           dc.b $00
[000a4eda]                           dc.b $00
[000a4edb]                           dc.b $00
A_3DBUTTON02:
[000a4edc] 0005a4e2                  dc.l A_3Dbutton
[000a4ee0]                           dc.w $29c1
[000a4ee2]                           dc.w $0178
[000a4ee4] 00059318                  dc.l Auo_string
[000a4ee8] 000a4add                  dc.l TEXT_08
[000a4eec]                           dc.b $00
[000a4eed]                           dc.b $00
[000a4eee]                           dc.b $00
[000a4eef]                           dc.b $00
[000a4ef0]                           dc.b $00
[000a4ef1]                           dc.b $00
[000a4ef2]                           dc.b $00
[000a4ef3]                           dc.b $00
[000a4ef4]                           dc.b $00
[000a4ef5]                           dc.b $00
[000a4ef6]                           dc.b $00
[000a4ef7]                           dc.b $00
[000a4ef8]                           dc.b $00
[000a4ef9]                           dc.b $00
[000a4efa]                           dc.b $00
[000a4efb]                           dc.b $00
A_3DBUTTON03:
[000a4efc] 0005a4e2                  dc.l A_3Dbutton
[000a4f00]                           dc.w $29c1
[000a4f02]                           dc.w $0178
[000a4f04] 00059318                  dc.l Auo_string
[000a4f08] 000a4aea                  dc.l TEXT_09
[000a4f0c]                           dc.b $00
[000a4f0d]                           dc.b $00
[000a4f0e]                           dc.b $00
[000a4f0f]                           dc.b $00
[000a4f10]                           dc.b $00
[000a4f11]                           dc.b $00
[000a4f12]                           dc.b $00
[000a4f13]                           dc.b $00
[000a4f14]                           dc.b $00
[000a4f15]                           dc.b $00
[000a4f16]                           dc.b $00
[000a4f17]                           dc.b $00
[000a4f18]                           dc.b $00
[000a4f19]                           dc.b $00
[000a4f1a]                           dc.b $00
[000a4f1b]                           dc.b $00
A_3DBUTTON04:
[000a4f1c] 0005a4e2                  dc.l A_3Dbutton
[000a4f20]                           dc.w $21f1
[000a4f22]                           dc.w $01f8
[000a4f24] 00059318                  dc.l Auo_string
[000a4f28]                           dc.b $00
[000a4f29]                           dc.b $00
[000a4f2a]                           dc.b $00
[000a4f2b]                           dc.b $00
[000a4f2c]                           dc.b $00
[000a4f2d]                           dc.b $00
[000a4f2e]                           dc.b $00
[000a4f2f]                           dc.b $00
[000a4f30]                           dc.b $00
[000a4f31]                           dc.b $00
[000a4f32]                           dc.b $00
[000a4f33]                           dc.b $00
[000a4f34]                           dc.b $00
[000a4f35]                           dc.b $00
[000a4f36]                           dc.b $00
[000a4f37]                           dc.b $00
[000a4f38]                           dc.b $00
[000a4f39]                           dc.b $00
[000a4f3a]                           dc.b $00
[000a4f3b]                           dc.b $00
A_3DBUTTON05:
[000a4f3c] 0005a4e2                  dc.l A_3Dbutton
[000a4f40]                           dc.w $29c1
[000a4f42]                           dc.w $0178
[000a4f44] 00059318                  dc.l Auo_string
[000a4f48] 000a4a9d                  dc.l TEXT_019
[000a4f4c]                           dc.b $00
[000a4f4d]                           dc.b $00
[000a4f4e]                           dc.b $00
[000a4f4f]                           dc.b $00
[000a4f50]                           dc.b $00
[000a4f51]                           dc.b $00
[000a4f52]                           dc.b $00
[000a4f53]                           dc.b $00
[000a4f54]                           dc.b $00
[000a4f55]                           dc.b $00
[000a4f56]                           dc.b $00
[000a4f57]                           dc.b $00
[000a4f58]                           dc.b $00
[000a4f59]                           dc.b $00
[000a4f5a]                           dc.b $00
[000a4f5b]                           dc.b $00
A_3DBUTTON06:
[000a4f5c] 0005a4e2                  dc.l A_3Dbutton
[000a4f60]                           dc.w $29c1
[000a4f62]                           dc.w $0178
[000a4f64] 00059318                  dc.l Auo_string
[000a4f68] 000a4a8e                  dc.l TEXT_004
[000a4f6c]                           dc.b $00
[000a4f6d]                           dc.b $00
[000a4f6e]                           dc.b $00
[000a4f6f]                           dc.b $00
[000a4f70]                           dc.b $00
[000a4f71]                           dc.b $00
[000a4f72]                           dc.b $00
[000a4f73]                           dc.b $00
[000a4f74]                           dc.b $00
[000a4f75]                           dc.b $00
[000a4f76]                           dc.b $00
[000a4f77]                           dc.b $00
[000a4f78]                           dc.b $00
[000a4f79]                           dc.b $00
[000a4f7a]                           dc.b $00
[000a4f7b]                           dc.b $00
A_3DBUTTON07:
[000a4f7c] 0005a4e2                  dc.l A_3Dbutton
[000a4f80]                           dc.w $29c1
[000a4f82]                           dc.w $0178
[000a4f84] 00059318                  dc.l Auo_string
[000a4f88] 000a4a8b                  dc.l TEXT_003
[000a4f8c]                           dc.b $00
[000a4f8d]                           dc.b $00
[000a4f8e]                           dc.b $00
[000a4f8f]                           dc.b $00
[000a4f90]                           dc.b $00
[000a4f91]                           dc.b $00
[000a4f92]                           dc.b $00
[000a4f93]                           dc.b $00
[000a4f94]                           dc.b $00
[000a4f95]                           dc.b $00
[000a4f96]                           dc.b $00
[000a4f97]                           dc.b $00
[000a4f98]                           dc.b $00
[000a4f99]                           dc.b $00
[000a4f9a]                           dc.b $00
[000a4f9b]                           dc.b $00
A_3DBUTTON08:
[000a4f9c] 0005a4e2                  dc.l A_3Dbutton
[000a4fa0]                           dc.w $2100
[000a4fa2]                           dc.w $0178
[000a4fa4] 00059318                  dc.l Auo_string
[000a4fa8]                           dc.b $00
[000a4fa9]                           dc.b $00
[000a4faa]                           dc.b $00
[000a4fab]                           dc.b $00
[000a4fac]                           dc.b $00
[000a4fad]                           dc.b $00
[000a4fae]                           dc.b $00
[000a4faf]                           dc.b $00
[000a4fb0]                           dc.b $00
[000a4fb1]                           dc.b $00
[000a4fb2]                           dc.b $00
[000a4fb3]                           dc.b $00
[000a4fb4]                           dc.b $00
[000a4fb5]                           dc.b $00
[000a4fb6]                           dc.b $00
[000a4fb7]                           dc.b $00
[000a4fb8]                           dc.b $00
[000a4fb9]                           dc.b $00
[000a4fba]                           dc.b $00
[000a4fbb]                           dc.b $00
A_3DBUTTON09:
[000a4fbc] 0005a4e2                  dc.l A_3Dbutton
[000a4fc0]                           dc.w $29c1
[000a4fc2]                           dc.w $0178
[000a4fc4] 00059318                  dc.l Auo_string
[000a4fc8] 000a4af2                  dc.l TEXT_10
[000a4fcc]                           dc.b $00
[000a4fcd]                           dc.b $00
[000a4fce]                           dc.b $00
[000a4fcf]                           dc.b $00
[000a4fd0]                           dc.b $00
[000a4fd1]                           dc.b $00
[000a4fd2]                           dc.b $00
[000a4fd3]                           dc.b $00
[000a4fd4]                           dc.b $00
[000a4fd5]                           dc.b $00
[000a4fd6]                           dc.b $00
[000a4fd7]                           dc.b $00
[000a4fd8]                           dc.b $00
[000a4fd9]                           dc.b $00
[000a4fda]                           dc.b $00
[000a4fdb]                           dc.b $00
A_3DBUTTON13:
[000a4fdc] 0005a4e2                  dc.l A_3Dbutton
[000a4fe0]                           dc.w $2022
[000a4fe2]                           dc.w $9198
[000a4fe4] 00059318                  dc.l Auo_string
[000a4fe8]                           dc.b $00
[000a4fe9]                           dc.b $00
[000a4fea]                           dc.b $00
[000a4feb]                           dc.b $00
[000a4fec]                           dc.b $00
[000a4fed]                           dc.b $00
[000a4fee]                           dc.b $00
[000a4fef]                           dc.b $00
[000a4ff0]                           dc.b $00
[000a4ff1]                           dc.b $00
[000a4ff2]                           dc.b $00
[000a4ff3]                           dc.b $00
[000a4ff4]                           dc.b $00
[000a4ff5]                           dc.b $00
[000a4ff6]                           dc.b $00
[000a4ff7]                           dc.b $00
[000a4ff8]                           dc.b $00
[000a4ff9]                           dc.b $00
[000a4ffa]                           dc.b $00
[000a4ffb]                           dc.b $00
A_3DBUTTON14:
[000a4ffc] 0005a4e2                  dc.l A_3Dbutton
[000a5000]                           dc.w $a021
[000a5002]                           dc.w $91f8
[000a5004] 00059318                  dc.l Auo_string
[000a5008]                           dc.b $00
[000a5009]                           dc.b $00
[000a500a]                           dc.b $00
[000a500b]                           dc.b $00
[000a500c]                           dc.b $00
[000a500d]                           dc.b $00
[000a500e]                           dc.b $00
[000a500f]                           dc.b $00
[000a5010]                           dc.b $00
[000a5011]                           dc.b $00
[000a5012]                           dc.b $00
[000a5013]                           dc.b $00
[000a5014]                           dc.b $00
[000a5015]                           dc.b $00
[000a5016]                           dc.b $00
[000a5017]                           dc.b $00
[000a5018]                           dc.b $00
[000a5019]                           dc.b $00
[000a501a]                           dc.b $00
[000a501b]                           dc.b $00
A_3DBUTTON17:
[000a501c] 0005a4e2                  dc.l A_3Dbutton
[000a5020]                           dc.w $29f1
[000a5022]                           dc.w $01f8
[000a5024] 00059318                  dc.l Auo_string
[000a5028]                           dc.b $00
[000a5029]                           dc.b $00
[000a502a]                           dc.b $00
[000a502b]                           dc.b $00
[000a502c]                           dc.b $00
[000a502d]                           dc.b $00
[000a502e]                           dc.b $00
[000a502f]                           dc.b $00
[000a5030]                           dc.b $00
[000a5031]                           dc.b $00
[000a5032]                           dc.b $00
[000a5033]                           dc.b $00
[000a5034]                           dc.b $00
[000a5035]                           dc.b $00
[000a5036]                           dc.b $00
[000a5037]                           dc.b $00
[000a5038]                           dc.b $00
[000a5039]                           dc.b $00
[000a503a]                           dc.b $00
[000a503b]                           dc.b $00
A_3DBUTTON27:
[000a503c] 0005a4e2                  dc.l A_3Dbutton
[000a5040]                           dc.w $09f1
[000a5042]                           dc.w $0178
[000a5044] 00059318                  dc.l Auo_string
[000a5048]                           dc.b $00
[000a5049]                           dc.b $00
[000a504a]                           dc.b $00
[000a504b]                           dc.b $00
[000a504c]                           dc.b $00
[000a504d]                           dc.b $00
[000a504e]                           dc.b $00
[000a504f]                           dc.b $00
[000a5050]                           dc.b $00
[000a5051]                           dc.b $00
[000a5052]                           dc.b $00
[000a5053]                           dc.b $00
[000a5054]                           dc.b $00
[000a5055]                           dc.b $00
[000a5056]                           dc.b $00
[000a5057]                           dc.b $00
[000a5058]                           dc.b $00
[000a5059]                           dc.b $00
[000a505a]                           dc.b $00
[000a505b]                           dc.b $00
A_ARROWS02:
[000a505c] 0005b212                  dc.l A_arrows
[000a5060]                           dc.w $1301
[000a5062]                           dc.b $00
[000a5063]                           dc.b $01
[000a5064]                           dc.b $00
[000a5065]                           dc.b $00
[000a5066]                           dc.b $00
[000a5067]                           dc.b $00
[000a5068]                           dc.b $00
[000a5069]                           dc.b $00
[000a506a]                           dc.b $00
[000a506b]                           dc.b $00
[000a506c]                           dc.b $00
[000a506d]                           dc.b $00
[000a506e]                           dc.b $00
[000a506f]                           dc.b $00
[000a5070]                           dc.b $00
[000a5071]                           dc.b $00
[000a5072]                           dc.b $00
[000a5073]                           dc.b $00
[000a5074]                           dc.b $00
[000a5075]                           dc.b $00
[000a5076]                           dc.b $00
[000a5077]                           dc.b $00
[000a5078]                           dc.b $00
[000a5079]                           dc.b $00
[000a507a]                           dc.b $00
[000a507b]                           dc.b $00
A_BOXED03:
[000a507c] 0005e9d2                  dc.l A_boxed
[000a5080]                           dc.w $9070
[000a5082]                           dc.w $0512
[000a5084] 0005e010                  dc.l Auo_boxed
[000a5088]                           dc.b $00
[000a5089]                           dc.b $00
[000a508a]                           dc.b $00
[000a508b]                           dc.b $00
[000a508c]                           dc.b $00
[000a508d]                           dc.b $00
[000a508e]                           dc.b $00
[000a508f]                           dc.b $00
[000a5090]                           dc.b $00
[000a5091]                           dc.b $00
[000a5092]                           dc.b $00
[000a5093]                           dc.b $00
[000a5094]                           dc.b $00
[000a5095]                           dc.b $00
[000a5096]                           dc.b $00
[000a5097]                           dc.b $00
[000a5098]                           dc.b $00
[000a5099]                           dc.b $00
[000a509a]                           dc.b $00
[000a509b]                           dc.b $00
A_INNERFRAME02:
[000a509c] 00059f9c                  dc.l A_innerframe
[000a50a0]                           dc.w $1000
[000a50a2]                           dc.w $8f19
[000a50a4] 00059318                  dc.l Auo_string
[000a50a8] 000a4aa6                  dc.l TEXT_02
[000a50ac]                           dc.b $00
[000a50ad]                           dc.b $00
[000a50ae]                           dc.b $00
[000a50af]                           dc.b $00
[000a50b0]                           dc.b $00
[000a50b1]                           dc.b $00
[000a50b2]                           dc.b $00
[000a50b3]                           dc.b $00
[000a50b4]                           dc.b $00
[000a50b5]                           dc.b $00
[000a50b6]                           dc.b $00
[000a50b7]                           dc.b $00
[000a50b8]                           dc.b $00
[000a50b9]                           dc.b $00
[000a50ba]                           dc.b $00
[000a50bb]                           dc.b $00
A_INNERFRAME03:
[000a50bc] 00059f9c                  dc.l A_innerframe
[000a50c0]                           dc.w $1000
[000a50c2]                           dc.w $8f19
[000a50c4] 00059318                  dc.l Auo_string
[000a50c8] 000a4ab7                  dc.l TEXT_04
[000a50cc]                           dc.b $00
[000a50cd]                           dc.b $00
[000a50ce]                           dc.b $00
[000a50cf]                           dc.b $00
[000a50d0]                           dc.b $00
[000a50d1]                           dc.b $00
[000a50d2]                           dc.b $00
[000a50d3]                           dc.b $00
[000a50d4]                           dc.b $00
[000a50d5]                           dc.b $00
[000a50d6]                           dc.b $00
[000a50d7]                           dc.b $00
[000a50d8]                           dc.b $00
[000a50d9]                           dc.b $00
[000a50da]                           dc.b $00
[000a50db]                           dc.b $00
A_INNERFRAME04:
[000a50dc] 00059f9c                  dc.l A_innerframe
[000a50e0]                           dc.w $1000
[000a50e2]                           dc.w $8f19
[000a50e4] 00059318                  dc.l Auo_string
[000a50e8] 000a4aae                  dc.l TEXT_03
[000a50ec]                           dc.b $00
[000a50ed]                           dc.b $00
[000a50ee]                           dc.b $00
[000a50ef]                           dc.b $00
[000a50f0]                           dc.b $00
[000a50f1]                           dc.b $00
[000a50f2]                           dc.b $00
[000a50f3]                           dc.b $00
[000a50f4]                           dc.b $00
[000a50f5]                           dc.b $00
[000a50f6]                           dc.b $00
[000a50f7]                           dc.b $00
[000a50f8]                           dc.b $00
[000a50f9]                           dc.b $00
[000a50fa]                           dc.b $00
[000a50fb]                           dc.b $00
EDIM_BITMAP01:
[000a50fc] 000205ee                  dc.l edim_bitmap
[000a5100]                           dc.b $00
[000a5101]                           dc.b $00
[000a5102]                           dc.b $00
[000a5103]                           dc.b $00
[000a5104]                           dc.b $00
[000a5105]                           dc.b $00
[000a5106]                           dc.b $00
[000a5107]                           dc.b $00
[000a5108]                           dc.b $00
[000a5109]                           dc.b $00
[000a510a]                           dc.b $00
[000a510b]                           dc.b $00
[000a510c]                           dc.b $00
[000a510d]                           dc.b $00
[000a510e]                           dc.b $00
[000a510f]                           dc.b $00
[000a5110]                           dc.b $00
[000a5111]                           dc.b $00
[000a5112]                           dc.b $00
[000a5113]                           dc.b $00
[000a5114]                           dc.b $00
[000a5115]                           dc.b $00
[000a5116]                           dc.b $00
[000a5117]                           dc.b $00
[000a5118]                           dc.b $00
[000a5119]                           dc.b $00
[000a511a]                           dc.b $00
[000a511b]                           dc.b $00
USER_001:
[000a511c] 0002b35c                  dc.l user_control
[000a5120]                           dc.b $00
[000a5121]                           dc.b $00
[000a5122]                           dc.b $00
[000a5123]                           dc.b $00
[000a5124]                           dc.b $00
[000a5125]                           dc.b $00
[000a5126]                           dc.b $00
[000a5127]                           dc.b $00
[000a5128]                           dc.b $00
[000a5129]                           dc.b $00
[000a512a]                           dc.b $00
[000a512b]                           dc.b $00
[000a512c]                           dc.b $00
[000a512d]                           dc.b $00
[000a512e]                           dc.b $00
[000a512f]                           dc.b $00
[000a5130]                           dc.b $00
[000a5131]                           dc.b $00
[000a5132]                           dc.b $00
[000a5133]                           dc.b $00
[000a5134]                           dc.b $00
[000a5135]                           dc.b $00
[000a5136]                           dc.b $00
[000a5137]                           dc.b $00
[000a5138]                           dc.b $00
[000a5139]                           dc.b $00
[000a513a]                           dc.b $00
[000a513b]                           dc.b $00
_C4_IC_IMAGE:
[000a513c]                           dc.b $00
[000a513d]                           dc.b $04
[000a513e] 000a4b1e                  dc.l $000a4b1e ; no symbol found
[000a5142] 000a4dd6                  dc.l DATAS_14
[000a5146]                           dc.b $00
[000a5147]                           dc.b $00
[000a5148]                           dc.b $00
[000a5149]                           dc.b $00
[000a514a]                           dc.b $00
[000a514b]                           dc.b $00
[000a514c]                           dc.b $00
[000a514d]                           dc.b $00
[000a514e]                           dc.b $00
[000a514f]                           dc.b $00
[000a5150]                           dc.b $00
[000a5151]                           dc.b $00
_MSK_IC_IMAGE:
[000a5152]                           dc.b $00
[000a5153]                           dc.b $00
[000a5154]                           dc.b $00
[000a5155]                           dc.b $00
[000a5156]                           dc.b $00
[000a5157]                           dc.b $00
[000a5158]                           dc.w $7fff
[000a515a]                           dc.w $ffff
[000a515c]                           dc.w $fffe
[000a515e]                           dc.w $7fff
[000a5160]                           dc.w $ffff
[000a5162]                           dc.w $fffe
[000a5164]                           dc.w $7fff
[000a5166]                           dc.w $ffff
[000a5168]                           dc.w $fffe
[000a516a]                           dc.w $7fff
[000a516c]                           dc.w $ffff
[000a516e]                           dc.w $fffe
[000a5170]                           dc.w $7fff
[000a5172]                           dc.w $ffff
[000a5174]                           dc.w $fffe
[000a5176]                           dc.w $7fff
[000a5178]                           dc.w $ffff
[000a517a]                           dc.w $fffe
[000a517c]                           dc.w $7fff
[000a517e]                           dc.w $ffff
[000a5180]                           dc.w $fffe
[000a5182]                           dc.w $7fff
[000a5184]                           dc.w $ffff
[000a5186]                           dc.w $fffe
[000a5188]                           dc.w $7fff
[000a518a]                           dc.w $ffff
[000a518c]                           dc.w $fffe
[000a518e]                           dc.w $7fff
[000a5190]                           dc.w $ffff
[000a5192]                           dc.w $fffe
[000a5194]                           dc.w $7fff
[000a5196]                           dc.w $ffff
[000a5198]                           dc.w $fffe
[000a519a]                           dc.w $7fff
[000a519c]                           dc.w $ffff
[000a519e]                           dc.w $fffe
[000a51a0]                           dc.w $7fff
[000a51a2]                           dc.w $ffff
[000a51a4]                           dc.w $fffe
[000a51a6]                           dc.w $7fff
[000a51a8]                           dc.w $ffff
[000a51aa]                           dc.w $fffe
[000a51ac]                           dc.w $7fff
[000a51ae]                           dc.w $ffff
[000a51b0]                           dc.w $fffe
[000a51b2]                           dc.w $7fff
[000a51b4]                           dc.w $ffff
[000a51b6]                           dc.w $fffe
[000a51b8]                           dc.w $7fff
[000a51ba]                           dc.w $ffff
[000a51bc]                           dc.w $fffe
[000a51be]                           dc.w $7fff
[000a51c0]                           dc.w $ffff
[000a51c2]                           dc.w $fffe
[000a51c4]                           dc.w $7fff
[000a51c6]                           dc.w $ffff
[000a51c8]                           dc.w $fffe
[000a51ca]                           dc.w $7fff
[000a51cc]                           dc.w $ffff
[000a51ce]                           dc.w $fffe
[000a51d0]                           dc.w $7fff
[000a51d2]                           dc.w $ffff
[000a51d4]                           dc.w $fffe
[000a51d6]                           dc.w $7fff
[000a51d8]                           dc.w $ffff
[000a51da]                           dc.w $fffe
[000a51dc]                           dc.w $7fff
[000a51de]                           dc.w $ffff
[000a51e0]                           dc.w $fffe
[000a51e2]                           dc.w $7fff
[000a51e4]                           dc.w $ffff
[000a51e6]                           dc.w $fffe
[000a51e8]                           dc.w $7fff
[000a51ea]                           dc.w $ffff
[000a51ec]                           dc.w $fffe
[000a51ee]                           dc.w $7fff
[000a51f0]                           dc.w $ffff
[000a51f2]                           dc.w $fffe
[000a51f4]                           dc.w $7fff
[000a51f6]                           dc.w $ffff
[000a51f8]                           dc.w $fffe
[000a51fa]                           dc.b $00
[000a51fb]                           dc.b $00
[000a51fc]                           dc.b $00
[000a51fd]                           dc.b $00
[000a51fe]                           dc.b $00
[000a51ff]                           dc.b $00
_DAT_IC_IMAGE:
[000a5200]                           dc.b $00
[000a5201]                           dc.b $00
[000a5202]                           dc.b $00
[000a5203]                           dc.b $00
[000a5204]                           dc.b $00
[000a5205]                           dc.b $00
[000a5206]                           dc.w $7fff
[000a5208]                           dc.w $ffff
[000a520a]                           dc.w $fffe
[000a520c]                           dc.w $4000
[000a520e]                           dc.b $00
[000a520f]                           dc.b $00
[000a5210]                           dc.b $00
[000a5211]                           dc.b $02
[000a5212]                           dc.w $4000
[000a5214]                           dc.b $00
[000a5215]                           dc.b $00
[000a5216]                           dc.b $00
[000a5217]                           dc.b $02
[000a5218]                           dc.w $4000
[000a521a]                           dc.b $00
[000a521b]                           dc.b $00
[000a521c]                           dc.w $3802
[000a521e]                           dc.w $400f
[000a5220]                           dc.w $c000
[000a5222]                           dc.w $4402
[000a5224]                           dc.w $4000
[000a5226]                           dc.w $2c00
[000a5228]                           dc.w $4402
[000a522a]                           dc.w $4000
[000a522c]                           dc.w $03c0
[000a522e]                           dc.w $4402
[000a5230]                           dc.w $4000
[000a5232]                           dc.b $00
[000a5233]                           dc.b $00
[000a5234]                           dc.w $3802
[000a5236]                           dc.w $4018
[000a5238]                           dc.b $00
[000a5239]                           dc.b $00
[000a523a]                           dc.b $00
[000a523b]                           dc.b $02
[000a523c]                           dc.w $4024
[000a523e]                           dc.b $00
[000a523f]                           dc.b $00
[000a5240]                           dc.b $00
[000a5241]                           dc.b $02
[000a5242]                           dc.w $4024
[000a5244]                           dc.w $8000
[000a5246]                           dc.b $00
[000a5247]                           dc.b $02
[000a5248]                           dc.b '@%@',0
[000a524c]                           dc.b $00
[000a524d]                           dc.b $02
[000a524e]                           dc.b '@&@',0
[000a5252]                           dc.b $00
[000a5253]                           dc.b $02
[000a5254]                           dc.b '@ @',0
[000a5258]                           dc.w $3f02
[000a525a]                           dc.w $5ce0
[000a525c]                           dc.w $800f
[000a525e]                           dc.w $c082
[000a5260]                           dc.w $4313
[000a5262]                           dc.w $7830
[000a5264]                           dc.b $00
[000a5265]                           dc.b $62
[000a5266]                           dc.w $4014
[000a5268]                           dc.w $07f0
[000a526a]                           dc.b $00
[000a526b]                           dc.b $1e
[000a526c]                           dc.w $4014
[000a526e]                           dc.b $00
[000a526f]                           dc.b $0e
[000a5270]                           dc.w $07e2
[000a5272]                           dc.w $4014
[000a5274]                           dc.b $00
[000a5275]                           dc.b $01
[000a5276]                           dc.w $f802
[000a5278]                           dc.w $4014
[000a527a]                           dc.b $00
[000a527b]                           dc.b $00
[000a527c]                           dc.b $00
[000a527d]                           dc.b $02
[000a527e]                           dc.w $4000
[000a5280]                           dc.b $00
[000a5281]                           dc.b $00
[000a5282]                           dc.b $00
[000a5283]                           dc.b $02
[000a5284]                           dc.w $4000
[000a5286]                           dc.b $00
[000a5287]                           dc.b $80
[000a5288]                           dc.b $00
[000a5289]                           dc.b $02
[000a528a]                           dc.w $4000
[000a528c]                           dc.b $00
[000a528d]                           dc.b $a0
[000a528e]                           dc.b $00
[000a528f]                           dc.b $02
[000a5290]                           dc.w $4000
[000a5292]                           dc.b $00
[000a5293]                           dc.b $40
[000a5294]                           dc.b $00
[000a5295]                           dc.b $02
[000a5296]                           dc.w $4000
[000a5298]                           dc.b $00
[000a5299]                           dc.b $40
[000a529a]                           dc.b $00
[000a529b]                           dc.b $02
[000a529c]                           dc.w $4000
[000a529e]                           dc.b $00
[000a529f]                           dc.b $00
[000a52a0]                           dc.b $00
[000a52a1]                           dc.b $02
[000a52a2]                           dc.w $7fff
[000a52a4]                           dc.w $ffff
[000a52a6]                           dc.w $fffe
[000a52a8]                           dc.b $00
[000a52a9]                           dc.b $00
[000a52aa]                           dc.b $00
[000a52ab]                           dc.b $00
[000a52ac]                           dc.b $00
[000a52ad]                           dc.b $00
IC_IMAGE:
[000a52ae] 000a5152                  dc.l _MSK_IC_IMAGE
[000a52b2] 000a5200                  dc.l _DAT_IC_IMAGE
[000a52b6] 000a4b11                  dc.l TEXT_208
[000a52ba]                           dc.w $1000
[000a52bc]                           dc.b $00
[000a52bd]                           dc.b $00
[000a52be]                           dc.b $00
[000a52bf]                           dc.b $00
[000a52c0]                           dc.b $00
[000a52c1]                           dc.b $0c
[000a52c2]                           dc.b $00
[000a52c3]                           dc.b $00
[000a52c4]                           dc.b $00
[000a52c5]                           dc.b $30
[000a52c6]                           dc.b $00
[000a52c7]                           dc.b $1d
[000a52c8]                           dc.b $00
[000a52c9]                           dc.b $00
[000a52ca]                           dc.b $00
[000a52cb]                           dc.b $20
[000a52cc]                           dc.b $00
[000a52cd]                           dc.b $48
[000a52ce]                           dc.b $00
[000a52cf]                           dc.b $08
[000a52d0] 000a513c                  dc.l _C4_IC_IMAGE
_IMG_IMAGE_001:
[000a52d4]                           dc.w $07ff
[000a52d6]                           dc.w $ffff
[000a52d8]                           dc.w $ff80
[000a52da]                           dc.w $0c00
[000a52dc]                           dc.b $00
[000a52dd]                           dc.b $00
[000a52de]                           dc.b $00
[000a52df]                           dc.b $c0
[000a52e0]                           dc.w $183f
[000a52e2]                           dc.w $f03f
[000a52e4]                           dc.w $f060
[000a52e6]                           dc.w $187f
[000a52e8]                           dc.w $f860
[000a52ea]                           dc.w $1860
[000a52ec]                           dc.w $187f
[000a52ee]                           dc.w $f860
[000a52f0]                           dc.w $1860
[000a52f2]                           dc.w $187f
[000a52f4]                           dc.w $f860
[000a52f6]                           dc.w $1860
[000a52f8]                           dc.w $187f
[000a52fa]                           dc.w $f860
[000a52fc]                           dc.w $1860
[000a52fe]                           dc.w $187f
[000a5300]                           dc.w $f860
[000a5302]                           dc.w $1860
[000a5304]                           dc.w $187f
[000a5306]                           dc.w $f860
[000a5308]                           dc.w $1860
[000a530a]                           dc.w $187f
[000a530c]                           dc.w $f860
[000a530e]                           dc.w $1860
[000a5310]                           dc.w $187f
[000a5312]                           dc.w $f860
[000a5314]                           dc.w $1860
[000a5316]                           dc.w $187f
[000a5318]                           dc.w $f860
[000a531a]                           dc.w $1860
[000a531c]                           dc.w $187f
[000a531e]                           dc.w $f860
[000a5320]                           dc.w $1860
[000a5322]                           dc.w $187f
[000a5324]                           dc.w $f860
[000a5326]                           dc.w $1860
[000a5328]                           dc.w $183f
[000a532a]                           dc.w $f03f
[000a532c]                           dc.w $f060
[000a532e]                           dc.w $0c00
[000a5330]                           dc.b $00
[000a5331]                           dc.b $00
[000a5332]                           dc.b $00
[000a5333]                           dc.b $c0
[000a5334]                           dc.w $07ff
[000a5336]                           dc.w $ffff
[000a5338]                           dc.w $ff80
[000a533a]                           dc.b $00
[000a533b]                           dc.b $00
[000a533c]                           dc.b $00
[000a533d]                           dc.b $00
[000a533e]                           dc.b $00
[000a533f]                           dc.b $00
[000a5340]                           dc.w $3f30
[000a5342]                           dc.w $c787
[000a5344]                           dc.w $8fe0
[000a5346]                           dc.w $0c39
[000a5348]                           dc.w $cccc
[000a534a]                           dc.w $cc00
[000a534c]                           dc.w $0c36
[000a534e]                           dc.w $cfcc
[000a5350]                           dc.w $0f80
[000a5352]                           dc.w $0c30
[000a5354]                           dc.w $cccd
[000a5356]                           dc.w $cc00
[000a5358]                           dc.w $3f30
[000a535a]                           dc.w $ccc7
[000a535c]                           dc.w $cfe0
[000a535e]                           dc.b $00
[000a535f]                           dc.b $00
[000a5360]                           dc.b $00
[000a5361]                           dc.b $00
[000a5362]                           dc.b $00
[000a5363]                           dc.b $00
IMAGE_001:
[000a5364] 000a52d4                  dc.l _IMG_IMAGE_001
[000a5368]                           dc.b $00
[000a5369]                           dc.b $06
[000a536a]                           dc.b $00
[000a536b]                           dc.b $18
[000a536c]                           dc.b $00
[000a536d]                           dc.b $00
[000a536e]                           dc.b $00
[000a536f]                           dc.b $00
[000a5370]                           dc.b $00
[000a5371]                           dc.b $01
EDIT_IMAGE:
[000a5372]                           dc.w $ffff
[000a5374]                           dc.b $00
[000a5375]                           dc.b $01
[000a5376]                           dc.b $00
[000a5377]                           dc.b $14
[000a5378]                           dc.b $00
[000a5379]                           dc.b $18
[000a537a]                           dc.b $00
[000a537b]                           dc.b $40
[000a537c]                           dc.b $00
[000a537d]                           dc.b $10
[000a537e] 000a4f1c                  dc.l A_3DBUTTON04
[000a5382]                           dc.b $00
[000a5383]                           dc.b $00
[000a5384]                           dc.b $00
[000a5385]                           dc.b $00
[000a5386]                           dc.b $00
[000a5387]                           dc.b $36
[000a5388]                           dc.b $00
[000a5389]                           dc.b $0e
_01_EDIT_IMAGE:
[000a538a]                           dc.b $00
[000a538b]                           dc.b $06
[000a538c]                           dc.b $00
[000a538d]                           dc.b $03
[000a538e]                           dc.b $00
[000a538f]                           dc.b $03
[000a5390]                           dc.b $00
[000a5391]                           dc.b $18
[000a5392]                           dc.w $1000
[000a5394]                           dc.b $00
[000a5395]                           dc.b $10
[000a5396] 000a4fdc                  dc.l A_3DBUTTON13
[000a539a]                           dc.b $00
[000a539b]                           dc.b $02
[000a539c]                           dc.b $00
[000a539d]                           dc.b $01
[000a539e]                           dc.b $00
[000a539f]                           dc.b $18
[000a53a0]                           dc.b $00
[000a53a1]                           dc.b $0c
_01aEDIT_IMAGE:
[000a53a2]                           dc.b $00
[000a53a3]                           dc.b $00
[000a53a4]                           dc.b $00
[000a53a5]                           dc.b $00
[000a53a6] 00020504                  dc.l edim_acc
[000a53aa]                           dc.w $8000
[000a53ac]                           dc.b $00
[000a53ad]                           dc.b $00
[000a53ae]                           dc.b $00
[000a53af]                           dc.b $00
[000a53b0]                           dc.b $00
[000a53b1]                           dc.b $00
[000a53b2]                           dc.b $00
[000a53b3]                           dc.b $00
[000a53b4]                           dc.b $00
[000a53b5]                           dc.b $00
[000a53b6]                           dc.b $00
[000a53b7]                           dc.b $00
[000a53b8]                           dc.b $00
[000a53b9]                           dc.b $00
_03_EDIT_IMAGE:
[000a53ba]                           dc.b $00
[000a53bb]                           dc.b $01
[000a53bc]                           dc.b $00
[000a53bd]                           dc.b $05
[000a53be]                           dc.b $00
[000a53bf]                           dc.b $05
[000a53c0]                           dc.b $00
[000a53c1]                           dc.b $17
[000a53c2]                           dc.b $00
[000a53c3]                           dc.b $40
[000a53c4]                           dc.b $00
[000a53c5]                           dc.b $00
[000a53c6] 000a5364                  dc.l IMAGE_001
[000a53ca]                           dc.b $00
[000a53cb]                           dc.b $00
[000a53cc]                           dc.b $00
[000a53cd]                           dc.b $00
[000a53ce]                           dc.b $00
[000a53cf]                           dc.b $18
[000a53d0]                           dc.b $00
[000a53d1]                           dc.b $0c
_03aEDIT_IMAGE:
[000a53d2] 000200ae                  dc.l edim_control
[000a53d6]                           dc.b $00
[000a53d7]                           dc.b $00
[000a53d8]                           dc.b $00
[000a53d9]                           dc.b $00
[000a53da]                           dc.w $8000
[000a53dc]                           dc.b $00
[000a53dd]                           dc.b $00
[000a53de]                           dc.b $00
[000a53df]                           dc.b $00
[000a53e0]                           dc.b $00
[000a53e1]                           dc.b $00
[000a53e2]                           dc.b $00
[000a53e3]                           dc.b $00
[000a53e4]                           dc.b $00
[000a53e5]                           dc.b $00
[000a53e6]                           dc.b $00
[000a53e7]                           dc.b $00
[000a53e8]                           dc.b $00
[000a53e9]                           dc.b $00
_05_EDIT_IMAGE:
[000a53ea]                           dc.b $00
[000a53eb]                           dc.b $03
[000a53ec]                           dc.w $ffff
[000a53ee]                           dc.w $ffff
[000a53f0]                           dc.b $00
[000a53f1]                           dc.b $18
[000a53f2]                           dc.b $00
[000a53f3]                           dc.b $80
[000a53f4]                           dc.b $00
[000a53f5]                           dc.b $11
[000a53f6] 000a511c                  dc.l USER_001
[000a53fa]                           dc.b $00
[000a53fb]                           dc.b $03
[000a53fc]                           dc.b $00
[000a53fd]                           dc.b $01
[000a53fe]                           dc.b $00
[000a53ff]                           dc.b $09
[000a5400]                           dc.b $00
[000a5401]                           dc.b $04
_06_EDIT_IMAGE:
[000a5402]                           dc.b $00
[000a5403]                           dc.b $08
[000a5404]                           dc.b $00
[000a5405]                           dc.b $07
[000a5406]                           dc.b $00
[000a5407]                           dc.b $07
[000a5408]                           dc.b $00
[000a5409]                           dc.b $1c
[000a540a]                           dc.b $00
[000a540b]                           dc.b $40
[000a540c]                           dc.b $00
[000a540d]                           dc.b $00
[000a540e] 000a4a96                  dc.l TEXT_01
[000a5412]                           dc.b $00
[000a5413]                           dc.b $1b
[000a5414]                           dc.b $00
[000a5415]                           dc.b $01
[000a5416]                           dc.b $00
[000a5417]                           dc.b $07
[000a5418]                           dc.b $00
[000a5419]                           dc.b $01
_07_EDIT_IMAGE:
[000a541a]                           dc.b $00
[000a541b]                           dc.b $06
[000a541c]                           dc.w $ffff
[000a541e]                           dc.w $ffff
[000a5420]                           dc.b $00
[000a5421]                           dc.b $18
[000a5422]                           dc.b $00
[000a5423]                           dc.b $40
[000a5424]                           dc.b $00
[000a5425]                           dc.b $00
[000a5426] 000a505c                  dc.l A_ARROWS02
[000a542a]                           dc.b $00
[000a542b]                           dc.b $00
[000a542c]                           dc.b $00
[000a542d]                           dc.b $00
[000a542e]                           dc.b $00
[000a542f]                           dc.b $01
[000a5430]                           dc.b $00
[000a5431]                           dc.b $01
_08_EDIT_IMAGE:
[000a5432]                           dc.b $00
[000a5433]                           dc.b $0c
[000a5434]                           dc.b $00
[000a5435]                           dc.b $0a
[000a5436]                           dc.b $00
[000a5437]                           dc.b $0b
[000a5438]                           dc.b $00
[000a5439]                           dc.b $14
[000a543a]                           dc.b $00
[000a543b]                           dc.b $40
[000a543c]                           dc.b $00
[000a543d]                           dc.b $20
[000a543e]                           dc.b $00
[000a543f]                           dc.b $ff
[000a5440]                           dc.w $1101
[000a5442]                           dc.b $00
[000a5443]                           dc.b $23
[000a5444]                           dc.b $00
[000a5445]                           dc.b $01
[000a5446]                           dc.b $00
[000a5447]                           dc.b $12
[000a5448]                           dc.b $00
[000a5449]                           dc.b $01
_08aEDIT_IMAGE:
[000a544a] 0001fa96                  dc.l edim_col
[000a544e]                           dc.b $00
[000a544f]                           dc.b $00
[000a5450]                           dc.b $00
[000a5451]                           dc.b $00
[000a5452]                           dc.w $8000
[000a5454]                           dc.w $8846
[000a5456]                           dc.b $00
[000a5457]                           dc.b $00
[000a5458]                           dc.b $00
[000a5459]                           dc.b $00
[000a545a]                           dc.b $00
[000a545b]                           dc.b $00
[000a545c]                           dc.b $00
[000a545d]                           dc.b $00
[000a545e]                           dc.b $00
[000a545f]                           dc.b $00
[000a5460]                           dc.b $00
[000a5461]                           dc.b $00
_10_EDIT_IMAGE:
[000a5462]                           dc.b $00
[000a5463]                           dc.b $0b
[000a5464]                           dc.w $ffff
[000a5466]                           dc.w $ffff
[000a5468]                           dc.b $00
[000a5469]                           dc.b $14
[000a546a]                           dc.b $00
[000a546b]                           dc.b $00
[000a546c]                           dc.b $00
[000a546d]                           dc.b $00
[000a546e]                           dc.b $00
[000a546f]                           dc.b $01
[000a5470]                           dc.w $1171
[000a5472]                           dc.b $00
[000a5473]                           dc.b $10
[000a5474]                           dc.b $00
[000a5475]                           dc.b $00
[000a5476]                           dc.b $00
[000a5477]                           dc.b $02
[000a5478]                           dc.b $00
[000a5479]                           dc.b $01
_11_EDIT_IMAGE:
[000a547a]                           dc.b $00
[000a547b]                           dc.b $08
[000a547c]                           dc.w $ffff
[000a547e]                           dc.w $ffff
[000a5480]                           dc.b $00
[000a5481]                           dc.b $18
[000a5482]                           dc.b $00
[000a5483]                           dc.b $00
[000a5484]                           dc.b $00
[000a5485]                           dc.b $00
[000a5486] 000a503c                  dc.l A_3DBUTTON27
[000a548a]                           dc.b $00
[000a548b]                           dc.b $00
[000a548c]                           dc.b $00
[000a548d]                           dc.b $00
[000a548e]                           dc.b $00
[000a548f]                           dc.b $10
[000a5490]                           dc.b $00
[000a5491]                           dc.b $01
_12_EDIT_IMAGE:
[000a5492]                           dc.b $00
[000a5493]                           dc.b $0e
[000a5494]                           dc.w $ffff
[000a5496]                           dc.w $ffff
[000a5498]                           dc.b $00
[000a5499]                           dc.b $18
[000a549a]                           dc.b $00
[000a549b]                           dc.b $40
[000a549c]                           dc.b $00
[000a549d]                           dc.b $00
[000a549e] 000a4edc                  dc.l A_3DBUTTON02
[000a54a2]                           dc.b $00
[000a54a3]                           dc.b $23
[000a54a4]                           dc.b $00
[000a54a5]                           dc.b $03
[000a54a6]                           dc.b $00
[000a54a7]                           dc.b $13
[000a54a8]                           dc.b $00
[000a54a9]                           dc.b $02
_12aEDIT_IMAGE:
[000a54aa] 0001fbce                  dc.l edim_nextpattern
[000a54ae]                           dc.b $00
[000a54af]                           dc.b $00
[000a54b0]                           dc.b $00
[000a54b1]                           dc.b $00
[000a54b2]                           dc.w $8000
[000a54b4]                           dc.b $00
[000a54b5]                           dc.b $00
[000a54b6]                           dc.b $00
[000a54b7]                           dc.b $00
[000a54b8]                           dc.b $00
[000a54b9]                           dc.b $00
[000a54ba]                           dc.b $00
[000a54bb]                           dc.b $00
[000a54bc]                           dc.b $00
[000a54bd]                           dc.b $00
[000a54be]                           dc.b $00
[000a54bf]                           dc.b $00
[000a54c0]                           dc.b $00
[000a54c1]                           dc.b $00
_14_EDIT_IMAGE:
[000a54c2]                           dc.b $00
[000a54c3]                           dc.b $10
[000a54c4]                           dc.w $ffff
[000a54c6]                           dc.w $ffff
[000a54c8]                           dc.b $00
[000a54c9]                           dc.b $18
[000a54ca]                           dc.b $00
[000a54cb]                           dc.b $05
[000a54cc]                           dc.b $00
[000a54cd]                           dc.b $10
[000a54ce] 000a4efc                  dc.l A_3DBUTTON03
[000a54d2]                           dc.b $00
[000a54d3]                           dc.b $1b
[000a54d4]                           dc.b $00
[000a54d5]                           dc.b $07
[000a54d6]                           dc.b $00
[000a54d7]                           dc.b $0c
[000a54d8]                           dc.b $00
[000a54d9]                           dc.b $02
_14aEDIT_IMAGE:
[000a54da] 000208b6                  dc.l edim_edit
[000a54de]                           dc.b $00
[000a54df]                           dc.b $00
[000a54e0]                           dc.b $00
[000a54e1]                           dc.b $00
[000a54e2]                           dc.w $8000
[000a54e4]                           dc.w $8845
[000a54e6]                           dc.b $00
[000a54e7]                           dc.b $00
[000a54e8]                           dc.b $00
[000a54e9]                           dc.b $00
[000a54ea]                           dc.b $00
[000a54eb]                           dc.b $00
[000a54ec]                           dc.b $00
[000a54ed]                           dc.b $00
[000a54ee]                           dc.b $00
[000a54ef]                           dc.b $00
[000a54f0]                           dc.b $00
[000a54f1]                           dc.b $00
_16_EDIT_IMAGE:
[000a54f2]                           dc.b $00
[000a54f3]                           dc.b $12
[000a54f4]                           dc.w $ffff
[000a54f6]                           dc.w $ffff
[000a54f8]                           dc.b $00
[000a54f9]                           dc.b $18
[000a54fa]                           dc.b $00
[000a54fb]                           dc.b $05
[000a54fc]                           dc.b $00
[000a54fd]                           dc.b $10
[000a54fe] 000a4fbc                  dc.l A_3DBUTTON09
[000a5502]                           dc.b $00
[000a5503]                           dc.b $29
[000a5504]                           dc.b $00
[000a5505]                           dc.b $07
[000a5506]                           dc.b $00
[000a5507]                           dc.b $0c
[000a5508]                           dc.b $00
[000a5509]                           dc.b $02
_16aEDIT_IMAGE:
[000a550a] 0001fefc                  dc.l edim_direct
[000a550e]                           dc.b $00
[000a550f]                           dc.b $00
[000a5510]                           dc.b $00
[000a5511]                           dc.b $00
[000a5512]                           dc.w $8000
[000a5514]                           dc.w $8844
[000a5516]                           dc.b $00
[000a5517]                           dc.b $00
[000a5518]                           dc.b $00
[000a5519]                           dc.b $00
[000a551a]                           dc.b $00
[000a551b]                           dc.b $00
[000a551c]                           dc.b $00
[000a551d]                           dc.b $00
[000a551e]                           dc.b $00
[000a551f]                           dc.b $00
[000a5520]                           dc.b $00
[000a5521]                           dc.b $00
_18_EDIT_IMAGE:
[000a5522]                           dc.b $00
[000a5523]                           dc.b $14
[000a5524]                           dc.w $ffff
[000a5526]                           dc.w $ffff
[000a5528]                           dc.b $00
[000a5529]                           dc.b $18
[000a552a]                           dc.w $4007
[000a552c]                           dc.b $00
[000a552d]                           dc.b $10
[000a552e] 000a4f7c                  dc.l A_3DBUTTON07
[000a5532]                           dc.b $00
[000a5533]                           dc.b $1b
[000a5534]                           dc.b $00
[000a5535]                           dc.b $0b
[000a5536]                           dc.b $00
[000a5537]                           dc.b $0c
[000a5538]                           dc.b $00
[000a5539]                           dc.b $02
_18aEDIT_IMAGE:
[000a553a] 000204e2                  dc.l edim_ok
[000a553e]                           dc.b $00
[000a553f]                           dc.b $00
[000a5540]                           dc.b $00
[000a5541]                           dc.b $00
[000a5542]                           dc.w $8000
[000a5544]                           dc.w $884f
[000a5546]                           dc.b $00
[000a5547]                           dc.b $00
[000a5548]                           dc.b $00
[000a5549]                           dc.b $00
[000a554a]                           dc.b $00
[000a554b]                           dc.b $00
[000a554c]                           dc.b $00
[000a554d]                           dc.b $00
[000a554e]                           dc.b $00
[000a554f]                           dc.b $00
[000a5550]                           dc.b $00
[000a5551]                           dc.b $00
_20_EDIT_IMAGE:
[000a5552]                           dc.b $00
[000a5553]                           dc.b $00
[000a5554]                           dc.w $ffff
[000a5556]                           dc.w $ffff
[000a5558]                           dc.b $00
[000a5559]                           dc.b $18
[000a555a]                           dc.w $4005
[000a555c]                           dc.b $00
[000a555d]                           dc.b $10
[000a555e] 000a4f5c                  dc.l A_3DBUTTON06
[000a5562]                           dc.b $00
[000a5563]                           dc.b $29
[000a5564]                           dc.b $00
[000a5565]                           dc.b $0b
[000a5566]                           dc.b $00
[000a5567]                           dc.b $0c
[000a5568]                           dc.b $00
[000a5569]                           dc.b $02
_20aEDIT_IMAGE:
[000a556a] 000204d0                  dc.l edim_abort
[000a556e]                           dc.b $00
[000a556f]                           dc.b $00
[000a5570]                           dc.b $00
[000a5571]                           dc.b $00
[000a5572]                           dc.w $8020
[000a5574]                           dc.w $8841
[000a5576]                           dc.b $00
[000a5577]                           dc.b $00
[000a5578]                           dc.b $00
[000a5579]                           dc.b $00
[000a557a]                           dc.b $00
[000a557b]                           dc.b $00
[000a557c]                           dc.b $00
[000a557d]                           dc.b $00
[000a557e]                           dc.b $00
[000a557f]                           dc.b $00
[000a5580]                           dc.b $00
[000a5581]                           dc.b $00
EDIT_IMAGE2:
[000a5582]                           dc.w $ffff
[000a5584]                           dc.b $00
[000a5585]                           dc.b $01
[000a5586]                           dc.b $00
[000a5587]                           dc.b $18
[000a5588]                           dc.b $00
[000a5589]                           dc.b $18
[000a558a]                           dc.b $00
[000a558b]                           dc.b $40
[000a558c]                           dc.b $00
[000a558d]                           dc.b $10
[000a558e] 000a4ebc                  dc.l A_3DBUTTON01
[000a5592]                           dc.b $00
[000a5593]                           dc.b $00
[000a5594]                           dc.b $00
[000a5595]                           dc.b $00
[000a5596]                           dc.b $00
[000a5597]                           dc.b $32
[000a5598]                           dc.b $00
[000a5599]                           dc.b $09
_01_EDIT_IMAGE2:
[000a559a]                           dc.b $00
[000a559b]                           dc.b $03
[000a559c]                           dc.b $00
[000a559d]                           dc.b $02
[000a559e]                           dc.b $00
[000a559f]                           dc.b $02
[000a55a0]                           dc.b $00
[000a55a1]                           dc.b $18
[000a55a2]                           dc.b $00
[000a55a3]                           dc.b $00
[000a55a4]                           dc.b $00
[000a55a5]                           dc.b $10
[000a55a6] 000a4f9c                  dc.l A_3DBUTTON08
[000a55aa]                           dc.b $00
[000a55ab]                           dc.b $00
[000a55ac]                           dc.b $00
[000a55ad]                           dc.b $00
[000a55ae]                           dc.b $00
[000a55af]                           dc.b $06
[000a55b0]                           dc.b $00
[000a55b1]                           dc.b $03
_02_EDIT_IMAGE2:
[000a55b2]                           dc.b $00
[000a55b3]                           dc.b $01
[000a55b4]                           dc.w $ffff
[000a55b6]                           dc.w $ffff
[000a55b8]                           dc.b $00
[000a55b9]                           dc.b $14
[000a55ba]                           dc.b $00
[000a55bb]                           dc.b $00
[000a55bc]                           dc.b $00
[000a55bd]                           dc.b $00
[000a55be]                           dc.b $00
[000a55bf]                           dc.b $01
[000a55c0]                           dc.w $1101
[000a55c2]                           dc.b $00
[000a55c3]                           dc.b $02
[000a55c4]                           dc.b $00
[000a55c5]                           dc.b $01
[000a55c6]                           dc.b $00
[000a55c7]                           dc.b $02
[000a55c8]                           dc.b $00
[000a55c9]                           dc.b $01
_03_EDIT_IMAGE2:
[000a55ca]                           dc.b $00
[000a55cb]                           dc.b $08
[000a55cc]                           dc.b $00
[000a55cd]                           dc.b $04
[000a55ce]                           dc.b $00
[000a55cf]                           dc.b $06
[000a55d0]                           dc.b $00
[000a55d1]                           dc.b $18
[000a55d2]                           dc.b $00
[000a55d3]                           dc.b $40
[000a55d4]                           dc.b $00
[000a55d5]                           dc.b $00
[000a55d6] 000a509c                  dc.l A_INNERFRAME02
[000a55da]                           dc.b $00
[000a55db]                           dc.b $06
[000a55dc]                           dc.b $00
[000a55dd]                           dc.b $00
[000a55de]                           dc.b $00
[000a55df]                           dc.b $09
[000a55e0]                           dc.b $00
[000a55e1]                           dc.b $03
_04_EDIT_IMAGE2:
[000a55e2]                           dc.b $00
[000a55e3]                           dc.b $06
[000a55e4]                           dc.w $ffff
[000a55e6]                           dc.w $ffff
[000a55e8]                           dc.b $00
[000a55e9]                           dc.b $14
[000a55ea]                           dc.b $00
[000a55eb]                           dc.b $05
[000a55ec]                           dc.b $00
[000a55ed]                           dc.b $00
[000a55ee]                           dc.b $00
[000a55ef]                           dc.b $01
[000a55f0]                           dc.w $0171
[000a55f2]                           dc.b $00
[000a55f3]                           dc.b $01
[000a55f4]                           dc.b $00
[000a55f5]                           dc.b $01
[000a55f6]                           dc.b $00
[000a55f7]                           dc.b $03
[000a55f8]                           dc.b $00
[000a55f9]                           dc.b $01
_04aEDIT_IMAGE2:
[000a55fa] 0001fb5c                  dc.l edim_black
[000a55fe]                           dc.b $00
[000a55ff]                           dc.b $00
[000a5600]                           dc.b $00
[000a5601]                           dc.b $00
[000a5602]                           dc.w $8000
[000a5604]                           dc.b $00
[000a5605]                           dc.b $53
[000a5606]                           dc.b $00
[000a5607]                           dc.b $00
[000a5608]                           dc.b $00
[000a5609]                           dc.b $00
[000a560a]                           dc.b $00
[000a560b]                           dc.b $00
[000a560c]                           dc.b $00
[000a560d]                           dc.b $00
[000a560e]                           dc.b $00
[000a560f]                           dc.b $00
[000a5610]                           dc.b $00
[000a5611]                           dc.b $00
_06_EDIT_IMAGE2:
[000a5612]                           dc.b $00
[000a5613]                           dc.b $03
[000a5614]                           dc.w $ffff
[000a5616]                           dc.w $ffff
[000a5618]                           dc.b $00
[000a5619]                           dc.b $14
[000a561a]                           dc.b $00
[000a561b]                           dc.b $05
[000a561c]                           dc.b $00
[000a561d]                           dc.b $00
[000a561e]                           dc.b $00
[000a561f]                           dc.b $01
[000a5620]                           dc.w $1170
[000a5622]                           dc.b $00
[000a5623]                           dc.b $05
[000a5624]                           dc.b $00
[000a5625]                           dc.b $01
[000a5626]                           dc.b $00
[000a5627]                           dc.b $03
[000a5628]                           dc.b $00
[000a5629]                           dc.b $01
_06aEDIT_IMAGE2:
[000a562a] 0001fb98                  dc.l edim_white
[000a562e]                           dc.b $00
[000a562f]                           dc.b $00
[000a5630]                           dc.b $00
[000a5631]                           dc.b $00
[000a5632]                           dc.w $8000
[000a5634]                           dc.b $00
[000a5635]                           dc.b $57
[000a5636]                           dc.b $00
[000a5637]                           dc.b $00
[000a5638]                           dc.b $00
[000a5639]                           dc.b $00
[000a563a]                           dc.b $00
[000a563b]                           dc.b $00
[000a563c]                           dc.b $00
[000a563d]                           dc.b $00
[000a563e]                           dc.b $00
[000a563f]                           dc.b $00
[000a5640]                           dc.b $00
[000a5641]                           dc.b $00
_08_EDIT_IMAGE2:
[000a5642]                           dc.b $00
[000a5643]                           dc.b $0d
[000a5644]                           dc.b $00
[000a5645]                           dc.b $09
[000a5646]                           dc.b $00
[000a5647]                           dc.b $0b
[000a5648]                           dc.b $00
[000a5649]                           dc.b $18
[000a564a]                           dc.b $00
[000a564b]                           dc.b $40
[000a564c]                           dc.b $00
[000a564d]                           dc.b $00
[000a564e] 000a50bc                  dc.l A_INNERFRAME03
[000a5652]                           dc.b $00
[000a5653]                           dc.b $0f
[000a5654]                           dc.b $00
[000a5655]                           dc.b $00
[000a5656]                           dc.b $00
[000a5657]                           dc.b $0a
[000a5658]                           dc.b $00
[000a5659]                           dc.b $03
_09_EDIT_IMAGE2:
[000a565a]                           dc.b $00
[000a565b]                           dc.b $0b
[000a565c]                           dc.w $ffff
[000a565e]                           dc.w $ffff
[000a5660]                           dc.b $00
[000a5661]                           dc.b $15
[000a5662]                           dc.b $00
[000a5663]                           dc.b $05
[000a5664]                           dc.b $00
[000a5665]                           dc.b $00
[000a5666] 000a4e84                  dc.l TEDINFO_01
[000a566a]                           dc.b $00
[000a566b]                           dc.b $01
[000a566c]                           dc.b $00
[000a566d]                           dc.b $01
[000a566e]                           dc.b $00
[000a566f]                           dc.b $05
[000a5670]                           dc.b $00
[000a5671]                           dc.b $01
_09aEDIT_IMAGE2:
[000a5672] 0001faec                  dc.l edim_thin
[000a5676]                           dc.b $00
[000a5677]                           dc.b $00
[000a5678]                           dc.b $00
[000a5679]                           dc.b $00
[000a567a]                           dc.w $8000
[000a567c]                           dc.b $00
[000a567d]                           dc.b $44
[000a567e]                           dc.b $00
[000a567f]                           dc.b $00
[000a5680]                           dc.b $00
[000a5681]                           dc.b $00
[000a5682]                           dc.b $00
[000a5683]                           dc.b $00
[000a5684]                           dc.b $00
[000a5685]                           dc.b $00
[000a5686]                           dc.b $00
[000a5687]                           dc.b $00
[000a5688]                           dc.b $00
[000a5689]                           dc.b $00
_11_EDIT_IMAGE2:
[000a568a]                           dc.b $00
[000a568b]                           dc.b $08
[000a568c]                           dc.w $ffff
[000a568e]                           dc.w $ffff
[000a5690]                           dc.b $00
[000a5691]                           dc.b $15
[000a5692]                           dc.b $00
[000a5693]                           dc.b $05
[000a5694]                           dc.b $00
[000a5695]                           dc.b $00
[000a5696] 000a4ea0                  dc.l TEDINFO_02
[000a569a]                           dc.b $00
[000a569b]                           dc.b $05
[000a569c]                           dc.b $00
[000a569d]                           dc.b $01
[000a569e]                           dc.b $00
[000a569f]                           dc.b $04
[000a56a0]                           dc.b $00
[000a56a1]                           dc.b $01
_11aEDIT_IMAGE2:
[000a56a2] 0001fb24                  dc.l edim_thick
[000a56a6]                           dc.b $00
[000a56a7]                           dc.b $00
[000a56a8]                           dc.b $00
[000a56a9]                           dc.b $00
[000a56aa]                           dc.w $8000
[000a56ac]                           dc.b $00
[000a56ad]                           dc.b $46
[000a56ae]                           dc.b $00
[000a56af]                           dc.b $00
[000a56b0]                           dc.b $00
[000a56b1]                           dc.b $00
[000a56b2]                           dc.b $00
[000a56b3]                           dc.b $00
[000a56b4]                           dc.b $00
[000a56b5]                           dc.b $00
[000a56b6]                           dc.b $00
[000a56b7]                           dc.b $00
[000a56b8]                           dc.b $00
[000a56b9]                           dc.b $00
_13_EDIT_IMAGE2:
[000a56ba]                           dc.b $00
[000a56bb]                           dc.b $16
[000a56bc]                           dc.b $00
[000a56bd]                           dc.b $0e
[000a56be]                           dc.b $00
[000a56bf]                           dc.b $14
[000a56c0]                           dc.b $00
[000a56c1]                           dc.b $18
[000a56c2]                           dc.b $00
[000a56c3]                           dc.b $40
[000a56c4]                           dc.b $00
[000a56c5]                           dc.b $00
[000a56c6] 000a50dc                  dc.l A_INNERFRAME04
[000a56ca]                           dc.b $00
[000a56cb]                           dc.b $19
[000a56cc]                           dc.b $00
[000a56cd]                           dc.b $00
[000a56ce]                           dc.b $00
[000a56cf]                           dc.b $0a
[000a56d0]                           dc.b $00
[000a56d1]                           dc.b $03
_14_EDIT_IMAGE2:
[000a56d2]                           dc.b $00
[000a56d3]                           dc.b $10
[000a56d4]                           dc.w $ffff
[000a56d6]                           dc.w $ffff
[000a56d8]                           dc.b $00
[000a56d9]                           dc.b $1b
[000a56da]                           dc.b $00
[000a56db]                           dc.b $05
[000a56dc]                           dc.b $00
[000a56dd]                           dc.b $00
[000a56de]                           dc.w $0400
[000a56e0]                           dc.w $1101
[000a56e2]                           dc.b $00
[000a56e3]                           dc.b $01
[000a56e4]                           dc.b $00
[000a56e5]                           dc.b $01
[000a56e6]                           dc.b $00
[000a56e7]                           dc.b $02
[000a56e8]                           dc.b $00
[000a56e9]                           dc.b $01
_14aEDIT_IMAGE2:
[000a56ea] 0001fd7c                  dc.l edim_left
[000a56ee]                           dc.b $00
[000a56ef]                           dc.b $00
[000a56f0]                           dc.b $00
[000a56f1]                           dc.b $00
[000a56f2]                           dc.w $8000
[000a56f4]                           dc.w $8004
[000a56f6]                           dc.b $00
[000a56f7]                           dc.b $00
[000a56f8]                           dc.b $00
[000a56f9]                           dc.b $00
[000a56fa]                           dc.b $00
[000a56fb]                           dc.b $00
[000a56fc]                           dc.b $00
[000a56fd]                           dc.b $00
[000a56fe]                           dc.b $00
[000a56ff]                           dc.b $00
[000a5700]                           dc.b $00
[000a5701]                           dc.b $00
_16_EDIT_IMAGE2:
[000a5702]                           dc.b $00
[000a5703]                           dc.b $12
[000a5704]                           dc.w $ffff
[000a5706]                           dc.w $ffff
[000a5708]                           dc.b $00
[000a5709]                           dc.b $1b
[000a570a]                           dc.b $00
[000a570b]                           dc.b $05
[000a570c]                           dc.b $00
[000a570d]                           dc.b $00
[000a570e]                           dc.w $0100
[000a5710]                           dc.w $1101
[000a5712]                           dc.b $00
[000a5713]                           dc.b $03
[000a5714]                           dc.b $00
[000a5715]                           dc.b $01
[000a5716]                           dc.b $00
[000a5717]                           dc.b $02
[000a5718]                           dc.b $00
[000a5719]                           dc.b $01
_16aEDIT_IMAGE2:
[000a571a] 0001fc14                  dc.l edim_up
[000a571e]                           dc.b $00
[000a571f]                           dc.b $00
[000a5720]                           dc.b $00
[000a5721]                           dc.b $00
[000a5722]                           dc.w $8000
[000a5724]                           dc.w $8001
[000a5726]                           dc.b $00
[000a5727]                           dc.b $00
[000a5728]                           dc.b $00
[000a5729]                           dc.b $00
[000a572a]                           dc.b $00
[000a572b]                           dc.b $00
[000a572c]                           dc.b $00
[000a572d]                           dc.b $00
[000a572e]                           dc.b $00
[000a572f]                           dc.b $00
[000a5730]                           dc.b $00
[000a5731]                           dc.b $00
_18_EDIT_IMAGE2:
[000a5732]                           dc.b $00
[000a5733]                           dc.b $14
[000a5734]                           dc.w $ffff
[000a5736]                           dc.w $ffff
[000a5738]                           dc.b $00
[000a5739]                           dc.b $1b
[000a573a]                           dc.b $00
[000a573b]                           dc.b $05
[000a573c]                           dc.b $00
[000a573d]                           dc.b $00
[000a573e]                           dc.w $0200
[000a5740]                           dc.w $1101
[000a5742]                           dc.b $00
[000a5743]                           dc.b $05
[000a5744]                           dc.b $00
[000a5745]                           dc.b $01
[000a5746]                           dc.b $00
[000a5747]                           dc.b $02
[000a5748]                           dc.b $00
[000a5749]                           dc.b $01
_18aEDIT_IMAGE2:
[000a574a] 0001fc94                  dc.l edim_down
[000a574e]                           dc.b $00
[000a574f]                           dc.b $00
[000a5750]                           dc.b $00
[000a5751]                           dc.b $00
[000a5752]                           dc.w $8000
[000a5754]                           dc.w $8002
[000a5756]                           dc.b $00
[000a5757]                           dc.b $00
[000a5758]                           dc.b $00
[000a5759]                           dc.b $00
[000a575a]                           dc.b $00
[000a575b]                           dc.b $00
[000a575c]                           dc.b $00
[000a575d]                           dc.b $00
[000a575e]                           dc.b $00
[000a575f]                           dc.b $00
[000a5760]                           dc.b $00
[000a5761]                           dc.b $00
_20_EDIT_IMAGE2:
[000a5762]                           dc.b $00
[000a5763]                           dc.b $0d
[000a5764]                           dc.w $ffff
[000a5766]                           dc.w $ffff
[000a5768]                           dc.b $00
[000a5769]                           dc.b $1b
[000a576a]                           dc.b $00
[000a576b]                           dc.b $05
[000a576c]                           dc.b $00
[000a576d]                           dc.b $00
[000a576e]                           dc.w $0300
[000a5770]                           dc.w $1101
[000a5772]                           dc.b $00
[000a5773]                           dc.b $07
[000a5774]                           dc.b $00
[000a5775]                           dc.b $01
[000a5776]                           dc.b $00
[000a5777]                           dc.b $02
[000a5778]                           dc.b $00
[000a5779]                           dc.b $01
_20aEDIT_IMAGE2:
[000a577a] 0001fd10                  dc.l edim_right
[000a577e]                           dc.b $00
[000a577f]                           dc.b $00
[000a5780]                           dc.b $00
[000a5781]                           dc.b $00
[000a5782]                           dc.w $8000
[000a5784]                           dc.w $8003
[000a5786]                           dc.b $00
[000a5787]                           dc.b $00
[000a5788]                           dc.b $00
[000a5789]                           dc.b $00
[000a578a]                           dc.b $00
[000a578b]                           dc.b $00
[000a578c]                           dc.b $00
[000a578d]                           dc.b $00
[000a578e]                           dc.b $00
[000a578f]                           dc.b $00
[000a5790]                           dc.b $00
[000a5791]                           dc.b $00
_22_EDIT_IMAGE2:
[000a5792]                           dc.b $00
[000a5793]                           dc.b $18
[000a5794]                           dc.w $ffff
[000a5796]                           dc.w $ffff
[000a5798]                           dc.b $00
[000a5799]                           dc.b $18
[000a579a]                           dc.b $00
[000a579b]                           dc.b $07
[000a579c]                           dc.b $00
[000a579d]                           dc.b $10
[000a579e] 000a4f3c                  dc.l A_3DBUTTON05
[000a57a2]                           dc.b $00
[000a57a3]                           dc.b $24
[000a57a4]                           dc.b $00
[000a57a5]                           dc.b $01
[000a57a6]                           dc.b $00
[000a57a7]                           dc.b $0c
[000a57a8]                           dc.b $00
[000a57a9]                           dc.b $02
_22aEDIT_IMAGE2:
[000a57aa] 000207a4                  dc.l edim_struct
[000a57ae]                           dc.b $00
[000a57af]                           dc.b $00
[000a57b0]                           dc.b $00
[000a57b1]                           dc.b $00
[000a57b2]                           dc.w $8000
[000a57b4]                           dc.w $8853
[000a57b6]                           dc.b $00
[000a57b7]                           dc.b $00
[000a57b8]                           dc.b $00
[000a57b9]                           dc.b $00
[000a57ba]                           dc.b $00
[000a57bb]                           dc.b $00
[000a57bc]                           dc.b $00
[000a57bd]                           dc.b $00
[000a57be]                           dc.b $00
[000a57bf]                           dc.b $00
[000a57c0]                           dc.b $00
[000a57c1]                           dc.b $00
_24_EDIT_IMAGE2:
[000a57c2]                           dc.b $00
[000a57c3]                           dc.b $00
[000a57c4]                           dc.b $00
[000a57c5]                           dc.b $19
[000a57c6]                           dc.b $00
[000a57c7]                           dc.b $19
[000a57c8]                           dc.b $00
[000a57c9]                           dc.b $18
[000a57ca]                           dc.b $00
[000a57cb]                           dc.b $00
[000a57cc]                           dc.b $00
[000a57cd]                           dc.b $10
[000a57ce] 000a4ffc                  dc.l A_3DBUTTON14
[000a57d2]                           dc.b $00
[000a57d3]                           dc.b $02
[000a57d4]                           dc.b $00
[000a57d5]                           dc.b $04
[000a57d6]                           dc.b $00
[000a57d7]                           dc.b $0e
[000a57d8]                           dc.b $00
[000a57d9]                           dc.b $04
_25_EDIT_IMAGE2:
[000a57da]                           dc.b $00
[000a57db]                           dc.b $18
[000a57dc]                           dc.w $ffff
[000a57de]                           dc.w $ffff
[000a57e0]                           dc.b $00
[000a57e1]                           dc.b $18
[000a57e2]                           dc.b $00
[000a57e3]                           dc.b $40
[000a57e4]                           dc.b $00
[000a57e5]                           dc.b $00
[000a57e6] 000a50fc                  dc.l EDIM_BITMAP01
[000a57ea]                           dc.b $00
[000a57eb]                           dc.b $00
[000a57ec]                           dc.b $00
[000a57ed]                           dc.b $00
[000a57ee]                           dc.b $00
[000a57ef]                           dc.b $0e
[000a57f0]                           dc.b $00
[000a57f1]                           dc.b $04
_25aEDIT_IMAGE2:
[000a57f2] 0002021c                  dc.l edim_set
[000a57f6]                           dc.b $00
[000a57f7]                           dc.b $00
[000a57f8]                           dc.b $00
[000a57f9]                           dc.b $00
[000a57fa]                           dc.w $8020
[000a57fc]                           dc.b $00
[000a57fd]                           dc.b $00
[000a57fe]                           dc.b $00
[000a57ff]                           dc.b $00
[000a5800]                           dc.b $00
[000a5801]                           dc.b $00
[000a5802]                           dc.b $00
[000a5803]                           dc.b $00
[000a5804]                           dc.b $00
[000a5805]                           dc.b $00
[000a5806]                           dc.b $00
[000a5807]                           dc.b $08
[000a5808]                           dc.b $00
[000a5809]                           dc.b $00
IM_POS:
[000a580a]                           dc.w $ffff
[000a580c]                           dc.b $00
[000a580d]                           dc.b $01
[000a580e]                           dc.b $00
[000a580f]                           dc.b $01
[000a5810]                           dc.b $00
[000a5811]                           dc.b $19
[000a5812]                           dc.b $00
[000a5813]                           dc.b $00
[000a5814]                           dc.b $00
[000a5815]                           dc.b $00
[000a5816]                           dc.b $00
[000a5817]                           dc.b $ff
[000a5818]                           dc.w $1141
[000a581a]                           dc.b $00
[000a581b]                           dc.b $00
[000a581c]                           dc.b $00
[000a581d]                           dc.b $00
[000a581e]                           dc.b $00
[000a581f]                           dc.b $1a
[000a5820]                           dc.b $00
[000a5821]                           dc.b $06
_01_IM_POS:
[000a5822]                           dc.b $00
[000a5823]                           dc.b $00
[000a5824]                           dc.b $00
[000a5825]                           dc.b $02
[000a5826]                           dc.b $00
[000a5827]                           dc.b $09
[000a5828]                           dc.b $00
[000a5829]                           dc.b $18
[000a582a]                           dc.b $00
[000a582b]                           dc.b $40
[000a582c]                           dc.b $00
[000a582d]                           dc.b $10
[000a582e] 000a501c                  dc.l A_3DBUTTON17
[000a5832]                           dc.b $00
[000a5833]                           dc.b $00
[000a5834]                           dc.b $00
[000a5835]                           dc.b $00
[000a5836]                           dc.b $00
[000a5837]                           dc.b $1a
[000a5838]                           dc.b $00
[000a5839]                           dc.b $06
_02_IM_POS:
[000a583a]                           dc.b $00
[000a583b]                           dc.b $03
[000a583c]                           dc.w $ffff
[000a583e]                           dc.w $ffff
[000a5840]                           dc.b $00
[000a5841]                           dc.b $1c
[000a5842]                           dc.b $00
[000a5843]                           dc.b $00
[000a5844]                           dc.b $00
[000a5845]                           dc.b $00
[000a5846] 000a4abf                  dc.l TEXT_05
[000a584a]                           dc.b $00
[000a584b]                           dc.b $01
[000a584c]                           dc.b $00
[000a584d]                           dc.b $01
[000a584e]                           dc.b $00
[000a584f]                           dc.b $07
[000a5850]                           dc.b $00
[000a5851]                           dc.b $01
_03_IM_POS:
[000a5852]                           dc.b $00
[000a5853]                           dc.b $04
[000a5854]                           dc.w $ffff
[000a5856]                           dc.w $ffff
[000a5858]                           dc.b $00
[000a5859]                           dc.b $18
[000a585a]                           dc.b $00
[000a585b]                           dc.b $08
[000a585c]                           dc.b $00
[000a585d]                           dc.b $10
[000a585e] 000a507c                  dc.l A_BOXED03
[000a5862]                           dc.b $00
[000a5863]                           dc.b $15
[000a5864]                           dc.b $00
[000a5865]                           dc.b $01
[000a5866]                           dc.b $00
[000a5867]                           dc.b $04
[000a5868]                           dc.b $00
[000a5869]                           dc.b $01
_04_IM_POS:
[000a586a]                           dc.b $00
[000a586b]                           dc.b $06
[000a586c]                           dc.w $ffff
[000a586e]                           dc.w $ffff
[000a5870]                           dc.b $00
[000a5871]                           dc.b $18
[000a5872]                           dc.w $4007
[000a5874]                           dc.b $00
[000a5875]                           dc.b $10
[000a5876] 000a4f7c                  dc.l A_3DBUTTON07
[000a587a]                           dc.b $00
[000a587b]                           dc.b $02
[000a587c]                           dc.b $00
[000a587d]                           dc.b $03
[000a587e]                           dc.b $00
[000a587f]                           dc.b $0a
[000a5880]                           dc.b $00
[000a5881]                           dc.b $02
_04aIM_POS:
[000a5882]                           dc.b $00
[000a5883]                           dc.b $00
[000a5884]                           dc.b $00
[000a5885]                           dc.b $00
[000a5886]                           dc.b $00
[000a5887]                           dc.b $00
[000a5888]                           dc.b $00
[000a5889]                           dc.b $00
[000a588a]                           dc.w $8000
[000a588c]                           dc.w $884f
[000a588e]                           dc.b $00
[000a588f]                           dc.b $00
[000a5890]                           dc.b $00
[000a5891]                           dc.b $00
[000a5892]                           dc.b $00
[000a5893]                           dc.b $00
[000a5894]                           dc.b $00
[000a5895]                           dc.b $00
[000a5896]                           dc.b $00
[000a5897]                           dc.b $00
[000a5898]                           dc.b $00
[000a5899]                           dc.b $00
_06_IM_POS:
[000a589a]                           dc.b $00
[000a589b]                           dc.b $08
[000a589c]                           dc.w $ffff
[000a589e]                           dc.w $ffff
[000a58a0]                           dc.b $00
[000a58a1]                           dc.b $18
[000a58a2]                           dc.w $4005
[000a58a4]                           dc.b $00
[000a58a5]                           dc.b $10
[000a58a6] 000a4f5c                  dc.l A_3DBUTTON06
[000a58aa]                           dc.b $00
[000a58ab]                           dc.b $0e
[000a58ac]                           dc.b $00
[000a58ad]                           dc.b $03
[000a58ae]                           dc.b $00
[000a58af]                           dc.b $0a
[000a58b0]                           dc.b $00
[000a58b1]                           dc.b $02
_06aIM_POS:
[000a58b2]                           dc.b $00
[000a58b3]                           dc.b $00
[000a58b4]                           dc.b $00
[000a58b5]                           dc.b $00
[000a58b6]                           dc.b $00
[000a58b7]                           dc.b $00
[000a58b8]                           dc.b $00
[000a58b9]                           dc.b $00
[000a58ba]                           dc.w $8000
[000a58bc]                           dc.w $8841
[000a58be]                           dc.b $00
[000a58bf]                           dc.b $00
[000a58c0]                           dc.b $00
[000a58c1]                           dc.b $00
[000a58c2]                           dc.b $00
[000a58c3]                           dc.b $00
[000a58c4]                           dc.b $00
[000a58c5]                           dc.b $00
[000a58c6]                           dc.b $00
[000a58c7]                           dc.b $00
[000a58c8]                           dc.b $00
[000a58c9]                           dc.b $00
_08_IM_POS:
[000a58ca]                           dc.b $00
[000a58cb]                           dc.b $09
[000a58cc]                           dc.w $ffff
[000a58ce]                           dc.w $ffff
[000a58d0]                           dc.b $00
[000a58d1]                           dc.b $1c
[000a58d2]                           dc.b $00
[000a58d3]                           dc.b $00
[000a58d4]                           dc.b $00
[000a58d5]                           dc.b $00
[000a58d6] 000a4ac7                  dc.l TEXT_06
[000a58da]                           dc.b $00
[000a58db]                           dc.b $0e
[000a58dc]                           dc.b $00
[000a58dd]                           dc.b $01
[000a58de]                           dc.b $00
[000a58df]                           dc.b $07
[000a58e0]                           dc.b $00
[000a58e1]                           dc.b $01
_09_IM_POS:
[000a58e2]                           dc.b $00
[000a58e3]                           dc.b $01
[000a58e4]                           dc.w $ffff
[000a58e6]                           dc.w $ffff
[000a58e8]                           dc.b $00
[000a58e9]                           dc.b $18
[000a58ea]                           dc.b $00
[000a58eb]                           dc.b $28
[000a58ec]                           dc.b $00
[000a58ed]                           dc.b $10
[000a58ee] 000a507c                  dc.l A_BOXED03
[000a58f2]                           dc.b $00
[000a58f3]                           dc.b $08
[000a58f4]                           dc.b $00
[000a58f5]                           dc.b $01
[000a58f6]                           dc.b $00
[000a58f7]                           dc.b $04
[000a58f8]                           dc.b $00
[000a58f9]                           dc.b $01
WI_IMAGE:
[000a58fa]                           dc.b $00
[000a58fb]                           dc.b $00
[000a58fc]                           dc.b $00
[000a58fd]                           dc.b $00
[000a58fe] 00020b5e                  dc.l im_service
[000a5902] 00020a98                  dc.l im_make
[000a5906] 0004f69e                  dc.l Awi_open
[000a590a] 0004e610                  dc.l Awi_init
[000a590e] 000a5372                  dc.l EDIT_IMAGE
[000a5912]                           dc.b $00
[000a5913]                           dc.b $00
[000a5914]                           dc.b $00
[000a5915]                           dc.b $00
[000a5916]                           dc.b $00
[000a5917]                           dc.b $00
[000a5918]                           dc.b $00
[000a5919]                           dc.b $00
[000a591a]                           dc.w $ffff
[000a591c]                           dc.w $601f
[000a591e]                           dc.b $00
[000a591f]                           dc.b $00
[000a5920]                           dc.b $00
[000a5921]                           dc.b $00
[000a5922]                           dc.b $00
[000a5923]                           dc.b $63
[000a5924]                           dc.b $00
[000a5925]                           dc.b $63
[000a5926]                           dc.b $00
[000a5927]                           dc.b $00
[000a5928]                           dc.b $00
[000a5929]                           dc.b $00
[000a592a]                           dc.b $00
[000a592b]                           dc.b $00
[000a592c]                           dc.b $00
[000a592d]                           dc.b $00
[000a592e]                           dc.b $00
[000a592f]                           dc.b $00
[000a5930]                           dc.b $00
[000a5931]                           dc.b $00
[000a5932]                           dc.b $00
[000a5933]                           dc.b $00
[000a5934]                           dc.b $00
[000a5935]                           dc.b $00
[000a5936]                           dc.w $ffff
[000a5938]                           dc.w $ffff
[000a593a]                           dc.w $ffff
[000a593c]                           dc.w $ffff
[000a593e]                           dc.b $00
[000a593f]                           dc.b $00
[000a5940]                           dc.b $00
[000a5941]                           dc.b $00
[000a5942]                           dc.w $fcf8
[000a5944] 000a4acf                  dc.l TEXT_07
[000a5948] 000a4a8a                  dc.l TEXT_002
[000a594c]                           dc.w $2710
[000a594e]                           dc.w $0100
[000a5950]                           dc.b $00
[000a5951]                           dc.b $00
[000a5952]                           dc.w $ffff
[000a5954] 000a52ae                  dc.l IC_IMAGE
[000a5958]                           dc.b $00
[000a5959]                           dc.b $00
[000a595a]                           dc.b $00
[000a595b]                           dc.b $00
[000a595c] 0005ef2c                  dc.l Awi_keys
[000a5960] 0004b600                  dc.l Awi_obchange
[000a5964] 0004b8cc                  dc.l Awi_redraw
[000a5968] 00050454                  dc.l Awi_topped
[000a596c] 0005013e                  dc.l Awi_closed
[000a5970] 00050496                  dc.l Awi_fulled
[000a5974] 0004bcc8                  dc.l Awi_arrowed
[000a5978] 0004beea                  dc.l Awi_hslid
[000a597c] 0004bf56                  dc.l Awi_vslid
[000a5980] 000506ca                  dc.l Awi_sized
[000a5984] 000507bc                  dc.l Awi_moved
[000a5988] 00050f9c                  dc.l Awi_iconify
[000a598c] 0005117c                  dc.l Awi_uniconify
[000a5990] 00052328                  dc.l Awi_gemscript
[000a5994]                           dc.b $00
[000a5995]                           dc.b $00
[000a5996]                           dc.b $00
[000a5997]                           dc.b $00
[000a5998]                           dc.b $00
[000a5999]                           dc.b $00
[000a599a]                           dc.b $00
[000a599b]                           dc.b $00
WI_IMPOS:
[000a599c]                           dc.b $00
[000a599d]                           dc.b $00
[000a599e]                           dc.b $00
[000a599f]                           dc.b $00
[000a59a0] 00051276                  dc.l Awi_service
[000a59a4] 0004f0ee                  dc.l Awi_selfcreate
[000a59a8] 0004f69e                  dc.l Awi_open
[000a59ac] 0004e610                  dc.l Awi_init
[000a59b0] 000a580a                  dc.l IM_POS
[000a59b4]                           dc.b $00
[000a59b5]                           dc.b $00
[000a59b6]                           dc.b $00
[000a59b7]                           dc.b $00
[000a59b8]                           dc.b $00
[000a59b9]                           dc.b $00
[000a59ba]                           dc.b $00
[000a59bb]                           dc.b $00
[000a59bc]                           dc.w $ffff
[000a59be]                           dc.w $200b
[000a59c0]                           dc.b $00
[000a59c1]                           dc.b $00
[000a59c2]                           dc.b $00
[000a59c3]                           dc.b $00
[000a59c4]                           dc.b $00
[000a59c5]                           dc.b $78
[000a59c6]                           dc.b $00
[000a59c7]                           dc.b $32
[000a59c8]                           dc.b $00
[000a59c9]                           dc.b $00
[000a59ca]                           dc.b $00
[000a59cb]                           dc.b $00
[000a59cc]                           dc.b $00
[000a59cd]                           dc.b $00
[000a59ce]                           dc.b $00
[000a59cf]                           dc.b $00
[000a59d0]                           dc.b $00
[000a59d1]                           dc.b $00
[000a59d2]                           dc.b $00
[000a59d3]                           dc.b $00
[000a59d4]                           dc.b $00
[000a59d5]                           dc.b $00
[000a59d6]                           dc.b $00
[000a59d7]                           dc.b $00
[000a59d8]                           dc.w $ffff
[000a59da]                           dc.w $ffff
[000a59dc]                           dc.w $ffff
[000a59de]                           dc.w $ffff
[000a59e0]                           dc.b $00
[000a59e1]                           dc.b $00
[000a59e2]                           dc.b $00
[000a59e3]                           dc.b $00
[000a59e4]                           dc.w $f8f8
[000a59e6] 000a4afd                  dc.l TEXT_11
[000a59ea] 000a4a8a                  dc.l TEXT_002
[000a59ee]                           dc.w $2710
[000a59f0]                           dc.b $00
[000a59f1]                           dc.b $00
[000a59f2]                           dc.b $00
[000a59f3]                           dc.b $00
[000a59f4]                           dc.w $ffff
[000a59f6]                           dc.b $00
[000a59f7]                           dc.b $00
[000a59f8]                           dc.b $00
[000a59f9]                           dc.b $00
[000a59fa]                           dc.b $00
[000a59fb]                           dc.b $00
[000a59fc]                           dc.b $00
[000a59fd]                           dc.b $00
[000a59fe] 0005ef2c                  dc.l Awi_keys
[000a5a02] 0004b600                  dc.l Awi_obchange
[000a5a06] 0004b8cc                  dc.l Awi_redraw
[000a5a0a] 00050454                  dc.l Awi_topped
[000a5a0e] 0005013e                  dc.l Awi_closed
[000a5a12] 00050496                  dc.l Awi_fulled
[000a5a16] 0004bcc8                  dc.l Awi_arrowed
[000a5a1a] 0004beea                  dc.l Awi_hslid
[000a5a1e] 0004bf56                  dc.l Awi_vslid
[000a5a22] 000506ca                  dc.l Awi_sized
[000a5a26] 000507bc                  dc.l Awi_moved
[000a5a2a] 00050f9c                  dc.l Awi_iconify
[000a5a2e] 0005117c                  dc.l Awi_uniconify
[000a5a32] 00052328                  dc.l Awi_gemscript
[000a5a36]                           dc.b $00
[000a5a37]                           dc.b $00
[000a5a38]                           dc.b $00
[000a5a39]                           dc.b $00
[000a5a3a]                           dc.b $00
[000a5a3b]                           dc.b $00
[000a5a3c]                           dc.b $00
[000a5a3d]                           dc.b $00
oooo:
[000a5a3e]                           dc.b $00
[000a5a3f]                           dc.b $00
[000a5a40]                           dc.b $00
[000a5a41]                           dc.b $00
[000a5a42]                           dc.b $00
[000a5a43]                           dc.b $00
[000a5a44]                           dc.b $00
[000a5a45]                           dc.b $00
[000a5a46]                           dc.b $00
[000a5a47]                           dc.b $00
[000a5a48]                           dc.b $00
[000a5a49]                           dc.b $00
[000a5a4a]                           dc.b $00
[000a5a4b]                           dc.b $00
[000a5a4c]                           dc.b $00
[000a5a4d]                           dc.b $00
[000a5a4e]                           dc.b $00
[000a5a4f]                           dc.b $00
[000a5a50]                           dc.b $00
[000a5a51]                           dc.b $00
[000a5a52]                           dc.b $00
[000a5a53]                           dc.b $00
[000a5a54]                           dc.b $00
[000a5a55]                           dc.b $00
[000a5a56]                           dc.b $00
[000a5a57]                           dc.b $00
[000a5a58]                           dc.b $00
[000a5a59]                           dc.b $00
[000a5a5a]                           dc.b $00
[000a5a5b]                           dc.b $00
[000a5a5c]                           dc.b $00
[000a5a5d]                           dc.b $00
oooi:
[000a5a5e]                           dc.b $00
[000a5a5f]                           dc.b $00
[000a5a60]                           dc.b $00
[000a5a61]                           dc.b $00
[000a5a62]                           dc.b $00
[000a5a63]                           dc.b $00
[000a5a64]                           dc.b $00
[000a5a65]                           dc.b $fe
[000a5a66]                           dc.b $00
[000a5a67]                           dc.b $00
[000a5a68]                           dc.b $00
[000a5a69]                           dc.b $fe
[000a5a6a]                           dc.b $00
[000a5a6b]                           dc.b $00
[000a5a6c]                           dc.b $00
[000a5a6d]                           dc.b $fe
[000a5a6e]                           dc.b $00
[000a5a6f]                           dc.b $00
[000a5a70]                           dc.b $00
[000a5a71]                           dc.b $fe
[000a5a72]                           dc.b $00
[000a5a73]                           dc.b $00
[000a5a74]                           dc.b $00
[000a5a75]                           dc.b $fe
[000a5a76]                           dc.b $00
[000a5a77]                           dc.b $00
[000a5a78]                           dc.b $00
[000a5a79]                           dc.b $fe
[000a5a7a]                           dc.b $00
[000a5a7b]                           dc.b $00
[000a5a7c]                           dc.b $00
[000a5a7d]                           dc.b $fe
ooio:
[000a5a7e]                           dc.b $00
[000a5a7f]                           dc.b $00
[000a5a80]                           dc.b $00
[000a5a81]                           dc.b $00
[000a5a82]                           dc.b $00
[000a5a83]                           dc.b $00
[000a5a84]                           dc.w $fe00
[000a5a86]                           dc.b $00
[000a5a87]                           dc.b $00
[000a5a88]                           dc.w $fe00
[000a5a8a]                           dc.b $00
[000a5a8b]                           dc.b $00
[000a5a8c]                           dc.w $fe00
[000a5a8e]                           dc.b $00
[000a5a8f]                           dc.b $00
[000a5a90]                           dc.w $fe00
[000a5a92]                           dc.b $00
[000a5a93]                           dc.b $00
[000a5a94]                           dc.w $fe00
[000a5a96]                           dc.b $00
[000a5a97]                           dc.b $00
[000a5a98]                           dc.w $fe00
[000a5a9a]                           dc.b $00
[000a5a9b]                           dc.b $00
[000a5a9c]                           dc.w $fe00
ooii:
[000a5a9e]                           dc.b $00
[000a5a9f]                           dc.b $00
[000a5aa0]                           dc.b $00
[000a5aa1]                           dc.b $00
[000a5aa2]                           dc.b $00
[000a5aa3]                           dc.b $00
[000a5aa4]                           dc.w $fefe
[000a5aa6]                           dc.b $00
[000a5aa7]                           dc.b $00
[000a5aa8]                           dc.w $fefe
[000a5aaa]                           dc.b $00
[000a5aab]                           dc.b $00
[000a5aac]                           dc.w $fefe
[000a5aae]                           dc.b $00
[000a5aaf]                           dc.b $00
[000a5ab0]                           dc.w $fefe
[000a5ab2]                           dc.b $00
[000a5ab3]                           dc.b $00
[000a5ab4]                           dc.w $fefe
[000a5ab6]                           dc.b $00
[000a5ab7]                           dc.b $00
[000a5ab8]                           dc.w $fefe
[000a5aba]                           dc.b $00
[000a5abb]                           dc.b $00
[000a5abc]                           dc.w $fefe
oioo:
[000a5abe]                           dc.b $00
[000a5abf]                           dc.b $00
[000a5ac0]                           dc.b $00
[000a5ac1]                           dc.b $00
[000a5ac2]                           dc.b $00
[000a5ac3]                           dc.b $fe
[000a5ac4]                           dc.b $00
[000a5ac5]                           dc.b $00
[000a5ac6]                           dc.b $00
[000a5ac7]                           dc.b $fe
[000a5ac8]                           dc.b $00
[000a5ac9]                           dc.b $00
[000a5aca]                           dc.b $00
[000a5acb]                           dc.b $fe
[000a5acc]                           dc.b $00
[000a5acd]                           dc.b $00
[000a5ace]                           dc.b $00
[000a5acf]                           dc.b $fe
[000a5ad0]                           dc.b $00
[000a5ad1]                           dc.b $00
[000a5ad2]                           dc.b $00
[000a5ad3]                           dc.b $fe
[000a5ad4]                           dc.b $00
[000a5ad5]                           dc.b $00
[000a5ad6]                           dc.b $00
[000a5ad7]                           dc.b $fe
[000a5ad8]                           dc.b $00
[000a5ad9]                           dc.b $00
[000a5ada]                           dc.b $00
[000a5adb]                           dc.b $fe
[000a5adc]                           dc.b $00
[000a5add]                           dc.b $00
oioi:
[000a5ade]                           dc.b $00
[000a5adf]                           dc.b $00
[000a5ae0]                           dc.b $00
[000a5ae1]                           dc.b $00
[000a5ae2]                           dc.b $00
[000a5ae3]                           dc.b $fe
[000a5ae4]                           dc.b $00
[000a5ae5]                           dc.b $fe
[000a5ae6]                           dc.b $00
[000a5ae7]                           dc.b $fe
[000a5ae8]                           dc.b $00
[000a5ae9]                           dc.b $fe
[000a5aea]                           dc.b $00
[000a5aeb]                           dc.b $fe
[000a5aec]                           dc.b $00
[000a5aed]                           dc.b $fe
[000a5aee]                           dc.b $00
[000a5aef]                           dc.b $fe
[000a5af0]                           dc.b $00
[000a5af1]                           dc.b $fe
[000a5af2]                           dc.b $00
[000a5af3]                           dc.b $fe
[000a5af4]                           dc.b $00
[000a5af5]                           dc.b $fe
[000a5af6]                           dc.b $00
[000a5af7]                           dc.b $fe
[000a5af8]                           dc.b $00
[000a5af9]                           dc.b $fe
[000a5afa]                           dc.b $00
[000a5afb]                           dc.b $fe
[000a5afc]                           dc.b $00
[000a5afd]                           dc.b $fe
oiio:
[000a5afe]                           dc.b $00
[000a5aff]                           dc.b $00
[000a5b00]                           dc.b $00
[000a5b01]                           dc.b $00
[000a5b02]                           dc.b $00
[000a5b03]                           dc.b $fe
[000a5b04]                           dc.w $fe00
[000a5b06]                           dc.b $00
[000a5b07]                           dc.b $fe
[000a5b08]                           dc.w $fe00
[000a5b0a]                           dc.b $00
[000a5b0b]                           dc.b $fe
[000a5b0c]                           dc.w $fe00
[000a5b0e]                           dc.b $00
[000a5b0f]                           dc.b $fe
[000a5b10]                           dc.w $fe00
[000a5b12]                           dc.b $00
[000a5b13]                           dc.b $fe
[000a5b14]                           dc.w $fe00
[000a5b16]                           dc.b $00
[000a5b17]                           dc.b $fe
[000a5b18]                           dc.w $fe00
[000a5b1a]                           dc.b $00
[000a5b1b]                           dc.b $fe
[000a5b1c]                           dc.w $fe00
oiii:
[000a5b1e]                           dc.b $00
[000a5b1f]                           dc.b $00
[000a5b20]                           dc.b $00
[000a5b21]                           dc.b $00
[000a5b22]                           dc.b $00
[000a5b23]                           dc.b $fe
[000a5b24]                           dc.w $fefe
[000a5b26]                           dc.b $00
[000a5b27]                           dc.b $fe
[000a5b28]                           dc.w $fefe
[000a5b2a]                           dc.b $00
[000a5b2b]                           dc.b $fe
[000a5b2c]                           dc.w $fefe
[000a5b2e]                           dc.b $00
[000a5b2f]                           dc.b $fe
[000a5b30]                           dc.w $fefe
[000a5b32]                           dc.b $00
[000a5b33]                           dc.b $fe
[000a5b34]                           dc.w $fefe
[000a5b36]                           dc.b $00
[000a5b37]                           dc.b $fe
[000a5b38]                           dc.w $fefe
[000a5b3a]                           dc.b $00
[000a5b3b]                           dc.b $fe
[000a5b3c]                           dc.w $fefe
iooo:
[000a5b3e]                           dc.b $00
[000a5b3f]                           dc.b $00
[000a5b40]                           dc.b $00
[000a5b41]                           dc.b $00
[000a5b42]                           dc.w $fe00
[000a5b44]                           dc.b $00
[000a5b45]                           dc.b $00
[000a5b46]                           dc.w $fe00
[000a5b48]                           dc.b $00
[000a5b49]                           dc.b $00
[000a5b4a]                           dc.w $fe00
[000a5b4c]                           dc.b $00
[000a5b4d]                           dc.b $00
[000a5b4e]                           dc.w $fe00
[000a5b50]                           dc.b $00
[000a5b51]                           dc.b $00
[000a5b52]                           dc.w $fe00
[000a5b54]                           dc.b $00
[000a5b55]                           dc.b $00
[000a5b56]                           dc.w $fe00
[000a5b58]                           dc.b $00
[000a5b59]                           dc.b $00
[000a5b5a]                           dc.w $fe00
[000a5b5c]                           dc.b $00
[000a5b5d]                           dc.b $00
iooi:
[000a5b5e]                           dc.b $00
[000a5b5f]                           dc.b $00
[000a5b60]                           dc.b $00
[000a5b61]                           dc.b $00
[000a5b62]                           dc.w $fe00
[000a5b64]                           dc.b $00
[000a5b65]                           dc.b $fe
[000a5b66]                           dc.w $fe00
[000a5b68]                           dc.b $00
[000a5b69]                           dc.b $fe
[000a5b6a]                           dc.w $fe00
[000a5b6c]                           dc.b $00
[000a5b6d]                           dc.b $fe
[000a5b6e]                           dc.w $fe00
[000a5b70]                           dc.b $00
[000a5b71]                           dc.b $fe
[000a5b72]                           dc.w $fe00
[000a5b74]                           dc.b $00
[000a5b75]                           dc.b $fe
[000a5b76]                           dc.w $fe00
[000a5b78]                           dc.b $00
[000a5b79]                           dc.b $fe
[000a5b7a]                           dc.w $fe00
[000a5b7c]                           dc.b $00
[000a5b7d]                           dc.b $fe
ioio:
[000a5b7e]                           dc.b $00
[000a5b7f]                           dc.b $00
[000a5b80]                           dc.b $00
[000a5b81]                           dc.b $00
[000a5b82]                           dc.w $fe00
[000a5b84]                           dc.w $fe00
[000a5b86]                           dc.w $fe00
[000a5b88]                           dc.w $fe00
[000a5b8a]                           dc.w $fe00
[000a5b8c]                           dc.w $fe00
[000a5b8e]                           dc.w $fe00
[000a5b90]                           dc.w $fe00
[000a5b92]                           dc.w $fe00
[000a5b94]                           dc.w $fe00
[000a5b96]                           dc.w $fe00
[000a5b98]                           dc.w $fe00
[000a5b9a]                           dc.w $fe00
[000a5b9c]                           dc.w $fe00
ioii:
[000a5b9e]                           dc.b $00
[000a5b9f]                           dc.b $00
[000a5ba0]                           dc.b $00
[000a5ba1]                           dc.b $00
[000a5ba2]                           dc.w $fe00
[000a5ba4]                           dc.w $fefe
[000a5ba6]                           dc.w $fe00
[000a5ba8]                           dc.w $fefe
[000a5baa]                           dc.w $fe00
[000a5bac]                           dc.w $fefe
[000a5bae]                           dc.w $fe00
[000a5bb0]                           dc.w $fefe
[000a5bb2]                           dc.w $fe00
[000a5bb4]                           dc.w $fefe
[000a5bb6]                           dc.w $fe00
[000a5bb8]                           dc.w $fefe
[000a5bba]                           dc.w $fe00
[000a5bbc]                           dc.w $fefe
iioo:
[000a5bbe]                           dc.b $00
[000a5bbf]                           dc.b $00
[000a5bc0]                           dc.b $00
[000a5bc1]                           dc.b $00
[000a5bc2]                           dc.w $fefe
[000a5bc4]                           dc.b $00
[000a5bc5]                           dc.b $00
[000a5bc6]                           dc.w $fefe
[000a5bc8]                           dc.b $00
[000a5bc9]                           dc.b $00
[000a5bca]                           dc.w $fefe
[000a5bcc]                           dc.b $00
[000a5bcd]                           dc.b $00
[000a5bce]                           dc.w $fefe
[000a5bd0]                           dc.b $00
[000a5bd1]                           dc.b $00
[000a5bd2]                           dc.w $fefe
[000a5bd4]                           dc.b $00
[000a5bd5]                           dc.b $00
[000a5bd6]                           dc.w $fefe
[000a5bd8]                           dc.b $00
[000a5bd9]                           dc.b $00
[000a5bda]                           dc.w $fefe
[000a5bdc]                           dc.b $00
[000a5bdd]                           dc.b $00
iioi:
[000a5bde]                           dc.b $00
[000a5bdf]                           dc.b $00
[000a5be0]                           dc.b $00
[000a5be1]                           dc.b $00
[000a5be2]                           dc.w $fefe
[000a5be4]                           dc.b $00
[000a5be5]                           dc.b $fe
[000a5be6]                           dc.w $fefe
[000a5be8]                           dc.b $00
[000a5be9]                           dc.b $fe
[000a5bea]                           dc.w $fefe
[000a5bec]                           dc.b $00
[000a5bed]                           dc.b $fe
[000a5bee]                           dc.w $fefe
[000a5bf0]                           dc.b $00
[000a5bf1]                           dc.b $fe
[000a5bf2]                           dc.w $fefe
[000a5bf4]                           dc.b $00
[000a5bf5]                           dc.b $fe
[000a5bf6]                           dc.w $fefe
[000a5bf8]                           dc.b $00
[000a5bf9]                           dc.b $fe
[000a5bfa]                           dc.w $fefe
[000a5bfc]                           dc.b $00
[000a5bfd]                           dc.b $fe
iiio:
[000a5bfe]                           dc.b $00
[000a5bff]                           dc.b $00
[000a5c00]                           dc.b $00
[000a5c01]                           dc.b $00
[000a5c02]                           dc.w $fefe
[000a5c04]                           dc.w $fe00
[000a5c06]                           dc.w $fefe
[000a5c08]                           dc.w $fe00
[000a5c0a]                           dc.w $fefe
[000a5c0c]                           dc.w $fe00
[000a5c0e]                           dc.w $fefe
[000a5c10]                           dc.w $fe00
[000a5c12]                           dc.w $fefe
[000a5c14]                           dc.w $fe00
[000a5c16]                           dc.w $fefe
[000a5c18]                           dc.w $fe00
[000a5c1a]                           dc.w $fefe
[000a5c1c]                           dc.w $fe00
iiii:
[000a5c1e]                           dc.b $00
[000a5c1f]                           dc.b $00
[000a5c20]                           dc.b $00
[000a5c21]                           dc.b $00
[000a5c22]                           dc.w $fefe
[000a5c24]                           dc.w $fefe
[000a5c26]                           dc.w $fefe
[000a5c28]                           dc.w $fefe
[000a5c2a]                           dc.w $fefe
[000a5c2c]                           dc.w $fefe
[000a5c2e]                           dc.w $fefe
[000a5c30]                           dc.w $fefe
[000a5c32]                           dc.w $fefe
[000a5c34]                           dc.w $fefe
[000a5c36]                           dc.w $fefe
[000a5c38]                           dc.w $fefe
[000a5c3a]                           dc.w $fefe
[000a5c3c]                           dc.w $fefe
the_mfdb:
[000a5c3e]                           dc.b $00
[000a5c3f]                           dc.b $00
[000a5c40]                           dc.b $00
[000a5c41]                           dc.b $00
[000a5c42]                           dc.b $00
[000a5c43]                           dc.b $20
[000a5c44]                           dc.b $00
[000a5c45]                           dc.b $08
[000a5c46]                           dc.b $00
[000a5c47]                           dc.b $02
[000a5c48]                           dc.b $00
[000a5c49]                           dc.b $01
[000a5c4a]                           dc.b $00
[000a5c4b]                           dc.b $01
[000a5c4c]                           dc.b $00
[000a5c4d]                           dc.b $00
[000a5c4e]                           dc.b $00
[000a5c4f]                           dc.b $00
[000a5c50]                           dc.b $00
[000a5c51]                           dc.b $00
color:
[000a5c52]                           dc.b $00
[000a5c53]                           dc.b $01
[000a5c54]                           dc.b $00
[000a5c55]                           dc.b $00
pic:
[000a5c56] 000a5a3e                  dc.l oooo
[000a5c5a] 000a5a5e                  dc.l oooi
[000a5c5e] 000a5a7e                  dc.l ooio
[000a5c62] 000a5a9e                  dc.l ooii
[000a5c66] 000a5abe                  dc.l oioo
[000a5c6a] 000a5ade                  dc.l oioi
[000a5c6e] 000a5afe                  dc.l oiio
[000a5c72] 000a5b1e                  dc.l oiii
[000a5c76] 000a5b3e                  dc.l iooo
[000a5c7a] 000a5b5e                  dc.l iooi
[000a5c7e] 000a5b7e                  dc.l ioio
[000a5c82] 000a5b9e                  dc.l ioii
[000a5c86] 000a5bbe                  dc.l iioo
[000a5c8a] 000a5bde                  dc.l iioi
[000a5c8e] 000a5bfe                  dc.l iiio
[000a5c92] 000a5c1e                  dc.l iiii
[000a5c96]                           dc.w $2564
[000a5c98]                           dc.b $00
	.even
