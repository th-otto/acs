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
[0001fab6] 4eb9 0002 f280            jsr        $0002F280
[0001fabc] 544f                      addq.w     #2,a7
[0001fabe] 3600                      move.w     d0,d3
[0001fac0] 6b24                      bmi.s      $0001FAE6
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
[0001fc4a] 6004                      bra.s      $0001FC50
[0001fc4c] 32da                      move.w     (a2)+,(a1)+
[0001fc4e] 5342                      subq.w     #1,d2
[0001fc50] 4a42                      tst.w      d2
[0001fc52] 6ef8                      bgt.s      $0001FC4C
[0001fc54] 3601                      move.w     d1,d3
[0001fc56] 48c3                      ext.l      d3
[0001fc58] d683                      add.l      d3,d3
[0001fc5a] 2268 0010                 movea.l    16(a0),a1
[0001fc5e] 43f1 38fe                 lea.l      -2(a1,d3.l),a1
[0001fc62] 3400                      move.w     d0,d2
[0001fc64] 6006                      bra.s      $0001FC6C
[0001fc66] 4251                      clr.w      (a1)
[0001fc68] 5549                      subq.w     #2,a1
[0001fc6a] 5342                      subq.w     #1,d2
[0001fc6c] 4a42                      tst.w      d2
[0001fc6e] 6ef6                      bgt.s      $0001FC66
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
[0001fcd0] 6008                      bra.s      $0001FCDA
[0001fcd2] 3292                      move.w     (a2),(a1)
[0001fcd4] 554a                      subq.w     #2,a2
[0001fcd6] 5549                      subq.w     #2,a1
[0001fcd8] 5341                      subq.w     #1,d1
[0001fcda] 4a41                      tst.w      d1
[0001fcdc] 6ef4                      bgt.s      $0001FCD2
[0001fcde] 2268 0010                 movea.l    16(a0),a1
[0001fce2] 3200                      move.w     d0,d1
[0001fce4] 6004                      bra.s      $0001FCEA
[0001fce6] 4259                      clr.w      (a1)+
[0001fce8] 5341                      subq.w     #1,d1
[0001fcea] 4a41                      tst.w      d1
[0001fcec] 6ef8                      bgt.s      $0001FCE6
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
[0001fd38] 601e                      bra.s      $0001FD58
[0001fd3a] 7401                      moveq.l    #1,d2
[0001fd3c] c440                      and.w      d0,d2
[0001fd3e] 670e                      beq.s      $0001FD4E
[0001fd40] 3011                      move.w     (a1),d0
[0001fd42] 3400                      move.w     d0,d2
[0001fd44] e24a                      lsr.w      #1,d2
[0001fd46] 847c 8000                 or.w       #$8000,d2
[0001fd4a] 32c2                      move.w     d2,(a1)+
[0001fd4c] 6008                      bra.s      $0001FD56
[0001fd4e] 3011                      move.w     (a1),d0
[0001fd50] 3400                      move.w     d0,d2
[0001fd52] e24a                      lsr.w      #1,d2
[0001fd54] 32c2                      move.w     d2,(a1)+
[0001fd56] 5341                      subq.w     #1,d1
[0001fd58] 4a41                      tst.w      d1
[0001fd5a] 6ede                      bgt.s      $0001FD3A
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
[0001fdac] 6024                      bra.s      $0001FDD2
[0001fdae] 343c 8000                 move.w     #$8000,d2
[0001fdb2] c440                      and.w      d0,d2
[0001fdb4] 6710                      beq.s      $0001FDC6
[0001fdb6] 3011                      move.w     (a1),d0
[0001fdb8] 3400                      move.w     d0,d2
[0001fdba] d442                      add.w      d2,d2
[0001fdbc] 847c 0001                 or.w       #$0001,d2
[0001fdc0] 3282                      move.w     d2,(a1)
[0001fdc2] 5549                      subq.w     #2,a1
[0001fdc4] 600a                      bra.s      $0001FDD0
[0001fdc6] 3011                      move.w     (a1),d0
[0001fdc8] 3400                      move.w     d0,d2
[0001fdca] d442                      add.w      d2,d2
[0001fdcc] 3282                      move.w     d2,(a1)
[0001fdce] 5549                      subq.w     #2,a1
[0001fdd0] 5341                      subq.w     #1,d1
[0001fdd2] 4a41                      tst.w      d1
[0001fdd4] 6ed8                      bgt.s      $0001FDAE
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
[0001fe1c] 6c54                      bge.s      $0001FE72
[0001fe1e] 78ff                      moveq.l    #-1,d4
[0001fe20] d869 0006                 add.w      6(a1),d4
[0001fe24] 6048                      bra.s      $0001FE6E
[0001fe26] 3a04                      move.w     d4,d5
[0001fe28] cbc2                      muls.w     d2,d5
[0001fe2a] 3204                      move.w     d4,d1
[0001fe2c] c3c3                      muls.w     d3,d1
[0001fe2e] 70ff                      moveq.l    #-1,d0
[0001fe30] d042                      add.w      d2,d0
[0001fe32] 601c                      bra.s      $0001FE50
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
[0001fe50] 4a40                      tst.w      d0
[0001fe52] 6ae0                      bpl.s      $0001FE34
[0001fe54] 3002                      move.w     d2,d0
[0001fe56] 6010                      bra.s      $0001FE68
[0001fe58] 3c01                      move.w     d1,d6
[0001fe5a] dc40                      add.w      d0,d6
[0001fe5c] 48c6                      ext.l      d6
[0001fe5e] dc86                      add.l      d6,d6
[0001fe60] 2451                      movea.l    (a1),a2
[0001fe62] 4272 6800                 clr.w      0(a2,d6.l)
[0001fe66] 5240                      addq.w     #1,d0
[0001fe68] b640                      cmp.w      d0,d3
[0001fe6a] 6eec                      bgt.s      $0001FE58
[0001fe6c] 5344                      subq.w     #1,d4
[0001fe6e] 4a44                      tst.w      d4
[0001fe70] 6ab4                      bpl.s      $0001FE26
[0001fe72] b443                      cmp.w      d3,d2
[0001fe74] 6f38                      ble.s      $0001FEAE
[0001fe76] 4244                      clr.w      d4
[0001fe78] 602e                      bra.s      $0001FEA8
[0001fe7a] 3a04                      move.w     d4,d5
[0001fe7c] cbc2                      muls.w     d2,d5
[0001fe7e] 3204                      move.w     d4,d1
[0001fe80] c3c3                      muls.w     d3,d1
[0001fe82] 4240                      clr.w      d0
[0001fe84] 601c                      bra.s      $0001FEA2
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
[0001fea2] b640                      cmp.w      d0,d3
[0001fea4] 6ee0                      bgt.s      $0001FE86
[0001fea6] 5244                      addq.w     #1,d4
[0001fea8] b869 0006                 cmp.w      6(a1),d4
[0001feac] 6dcc                      blt.s      $0001FE7A
[0001feae] 78ff                      moveq.l    #-1,d4
[0001feb0] d857                      add.w      (a7),d4
[0001feb2] 6020                      bra.s      $0001FED4
[0001feb4] 3204                      move.w     d4,d1
[0001feb6] c3c3                      muls.w     d3,d1
[0001feb8] 70ff                      moveq.l    #-1,d0
[0001feba] d043                      add.w      d3,d0
[0001febc] 6010                      bra.s      $0001FECE
[0001febe] 3401                      move.w     d1,d2
[0001fec0] d440                      add.w      d0,d2
[0001fec2] 48c2                      ext.l      d2
[0001fec4] d482                      add.l      d2,d2
[0001fec6] 2451                      movea.l    (a1),a2
[0001fec8] 4272 2800                 clr.w      0(a2,d2.l)
[0001fecc] 5340                      subq.w     #1,d0
[0001fece] 4a40                      tst.w      d0
[0001fed0] 6aec                      bpl.s      $0001FEBE
[0001fed2] 5344                      subq.w     #1,d4
[0001fed4] b869 0006                 cmp.w      6(a1),d4
[0001fed8] 6cda                      bge.s      $0001FEB4
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
[0001ff02] 41f9 000a 599c            lea.l      $000A599C,a0
[0001ff08] 2279 000a 59a4            movea.l    $000A59A4,a1
[0001ff0e] 4e91                      jsr        (a1)
[0001ff10] 2448                      movea.l    a0,a2
[0001ff12] 200a                      move.l     a2,d0
[0001ff14] 6700 00fe                 beq        $00020014
[0001ff18] 2279 0010 1f12            movea.l    ACSblk,a1
[0001ff1e] 2069 025c                 movea.l    604(a1),a0
[0001ff22] 2868 0054                 movea.l    84(a0),a4
[0001ff26] 322c 0004                 move.w     4(a4),d1
[0001ff2a] e749                      lsl.w      #3,d1
[0001ff2c] 3f01                      move.w     d1,-(a7)
[0001ff2e] 43f9 000a 5c96            lea.l      $000A5C96,a1
[0001ff34] 206a 0014                 movea.l    20(a2),a0
[0001ff38] 7009                      moveq.l    #9,d0
[0001ff3a] 4eb9 0004 afac            jsr        $0004AFAC
[0001ff40] 544f                      addq.w     #2,a7
[0001ff42] 3f2c 0006                 move.w     6(a4),-(a7)
[0001ff46] 43f9 000a 5c96            lea.l      $000A5C96,a1
[0001ff4c] 7003                      moveq.l    #3,d0
[0001ff4e] 206a 0014                 movea.l    20(a2),a0
[0001ff52] 4eb9 0004 afac            jsr        $0004AFAC
[0001ff58] 544f                      addq.w     #2,a7
[0001ff5a] 204a                      movea.l    a2,a0
[0001ff5c] 4eb9 0005 1292            jsr        $00051292
[0001ff62] 5940                      subq.w     #4,d0
[0001ff64] 6600 00a6                 bne        $0002000C
[0001ff68] 4bef 0002                 lea.l      2(a7),a5
[0001ff6c] 4855                      pea.l      (a5)
[0001ff6e] 43f9 000a 5c96            lea.l      $000A5C96,a1
[0001ff74] 7009                      moveq.l    #9,d0
[0001ff76] 206a 0014                 movea.l    20(a2),a0
[0001ff7a] 4eb9 0004 b0b2            jsr        $0004B0B2
[0001ff80] 584f                      addq.w     #4,a7
[0001ff82] 4857                      pea.l      (a7)
[0001ff84] 43f9 000a 5c96            lea.l      $000A5C96,a1
[0001ff8a] 7003                      moveq.l    #3,d0
[0001ff8c] 206a 0014                 movea.l    20(a2),a0
[0001ff90] 4eb9 0004 b0b2            jsr        $0004B0B2
[0001ff96] 584f                      addq.w     #4,a7
[0001ff98] 0c55 00c0                 cmpi.w     #$00C0,(a5)
[0001ff9c] 6f04                      ble.s      $0001FFA2
[0001ff9e] 3abc 00c0                 move.w     #$00C0,(a5)
[0001ffa2] 0c57 00c0                 cmpi.w     #$00C0,(a7)
[0001ffa6] 6f04                      ble.s      $0001FFAC
[0001ffa8] 3ebc 00c0                 move.w     #$00C0,(a7)
[0001ffac] 700f                      moveq.l    #15,d0
[0001ffae] d055                      add.w      (a5),d0
[0001ffb0] c07c fff0                 and.w      #$FFF0,d0
[0001ffb4] 3a80                      move.w     d0,(a5)
[0001ffb6] 72ff                      moveq.l    #-1,d1
[0001ffb8] d279 0007 824c            add.w      $0007824C,d1
[0001ffbe] e241                      asr.w      #1,d1
[0001ffc0] d257                      add.w      (a7),d1
[0001ffc2] 3439 0007 824c            move.w     $0007824C,d2
[0001ffc8] 4442                      neg.w      d2
[0001ffca] c242                      and.w      d2,d1
[0001ffcc] 3e81                      move.w     d1,(a7)
[0001ffce] 224c                      movea.l    a4,a1
[0001ffd0] 2079 0010 1f12            movea.l    ACSblk,a0
[0001ffd6] 2068 025c                 movea.l    604(a0),a0
[0001ffda] 6100 fe1a                 bsr        $0001FDF6
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
[0002000c] 204a                      movea.l    a2,a0
[0002000e] 4eb9 0005 0330            jsr        $00050330
[00020014] 584f                      addq.w     #4,a7
[00020016] 4cdf 3400                 movem.l    (a7)+,a2/a4-a5
[0002001a] 4e75                      rts
control:
[0002001c] 343c 0080                 move.w     #$0080,d2
[00020020] c468 0080                 and.w      128(a0),d2
[00020024] 6626                      bne.s      $0002004C
[00020026] 3428 0088                 move.w     136(a0),d2
[0002002a] b451                      cmp.w      (a1),d2
[0002002c] 661e                      bne.s      $0002004C
[0002002e] 3428 008a                 move.w     138(a0),d2
[00020032] b469 0002                 cmp.w      2(a1),d2
[00020036] 6614                      bne.s      $0002004C
[00020038] 3428 008c                 move.w     140(a0),d2
[0002003c] b469 0004                 cmp.w      4(a1),d2
[00020040] 660a                      bne.s      $0002004C
[00020042] 3428 008e                 move.w     142(a0),d2
[00020046] b469 0006                 cmp.w      6(a1),d2
[0002004a] 6720                      beq.s      $0002006C
[0002004c] 0268 ff7f 0080            andi.w     #$FF7F,128(a0)
[00020052] 3151 0088                 move.w     (a1),136(a0)
[00020056] 3169 0002 008a            move.w     2(a1),138(a0)
[0002005c] 3169 0004 008c            move.w     4(a1),140(a0)
[00020062] 3169 0006 008e            move.w     6(a1),142(a0)
[00020068] 4240                      clr.w      d0
[0002006a] 4e75                      rts
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
[0002008a] 6f0a                      ble.s      $00020096
[0002008c] 3429 0004                 move.w     4(a1),d2
[00020090] e642                      asr.w      #3,d2
[00020092] b042                      cmp.w      d2,d0
[00020094] 6e10                      bgt.s      $000200A6
[00020096] b27c 0008                 cmp.w      #$0008,d1
[0002009a] 6f0e                      ble.s      $000200AA
[0002009c] 3029 0006                 move.w     6(a1),d0
[000200a0] e640                      asr.w      #3,d0
[000200a2] b240                      cmp.w      d0,d1
[000200a4] 6f04                      ble.s      $000200AA
[000200a6] 7001                      moveq.l    #1,d0
[000200a8] 4e75                      rts
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
[000200de] 670a                      beq.s      $000200EA
[000200e0] 4eb9 0002 08b6            jsr        $000208B6
[000200e6] 6000 012a                 bra        $00020212
[000200ea] 2052                      movea.l    (a2),a0
[000200ec] 3c28 0262                 move.w     610(a0),d6
[000200f0] 3e28 0264                 move.w     612(a0),d7
[000200f4] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[000200fa] 486f 0004                 pea.l      4(a7)
[000200fe] 43ef 000a                 lea.l      10(a7),a1
[00020102] 3003                      move.w     d3,d0
[00020104] 204b                      movea.l    a3,a0
[00020106] 4eb9 0006 ba44            jsr        $0006BA44
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
[00020134] 6f04                      ble.s      $0002013A
[00020136] 383c 00c0                 move.w     #$00C0,d4
[0002013a] ba7c 00c0                 cmp.w      #$00C0,d5
[0002013e] 6f04                      ble.s      $00020144
[00020140] 3a3c 00c0                 move.w     #$00C0,d5
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
[0002017e] 4eb9 0005 ef64            jsr        $0005EF64
[00020184] 4a40                      tst.w      d0
[00020186] 6764                      beq.s      $000201EC
[00020188] 3207                      move.w     d7,d1
[0002018a] 3006                      move.w     d6,d0
[0002018c] 224d                      movea.l    a5,a1
[0002018e] 204b                      movea.l    a3,a0
[00020190] 6100 fe8a                 bsr        $0002001C
[00020194] 5340                      subq.w     #1,d0
[00020196] 6700 007a                 beq.w      $00020212
[0002019a] 5340                      subq.w     #1,d0
[0002019c] 6702                      beq.s      $000201A0
[0002019e] 605c                      bra.s      $000201FC
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
[000201ce] 4eb9 0001 3ffa            jsr        $00013FFA
[000201d4] 5c4f                      addq.w     #6,a7
[000201d6] 4a40                      tst.w      d0
[000201d8] 6722                      beq.s      $000201FC
[000201da] 322f 0004                 move.w     4(a7),d1
[000201de] 302f 0006                 move.w     6(a7),d0
[000201e2] 224c                      movea.l    a4,a1
[000201e4] 204b                      movea.l    a3,a0
[000201e6] 6100 fc0e                 bsr        $0001FDF6
[000201ea] 6010                      bra.s      $000201FC
[000201ec] 303c 0080                 move.w     #$0080,d0
[000201f0] c06b 0080                 and.w      128(a3),d0
[000201f4] 661c                      bne.s      $00020212
[000201f6] 006b 0080 0080            ori.w      #$0080,128(a3)
[000201fc] 72ff                      moveq.l    #-1,d1
[000201fe] 7001                      moveq.l    #1,d0
[00020200] 2052                      movea.l    (a2),a0
[00020202] 2068 0258                 movea.l    600(a0),a0
[00020206] 2252                      movea.l    (a2),a1
[00020208] 2669 0258                 movea.l    600(a1),a3
[0002020c] 226b 0066                 movea.l    102(a3),a1
[00020210] 4e91                      jsr        (a1)
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
[0002025e] 6720                      beq.s      $00020280
[00020260] 3029 0284                 move.w     644(a1),d0
[00020264] 5140                      subq.w     #8,d0
[00020266] 6708                      beq.s      $00020270
[00020268] 5340                      subq.w     #1,d0
[0002026a] 670c                      beq.s      $00020278
[0002026c] 6000 0258                 bra        $000204C6
[00020270] 6100 f926                 bsr        $0001FB98
[00020274] 6000 0250                 bra        $000204C6
[00020278] 6100 f8e2                 bsr        $0001FB5C
[0002027c] 6000 0248                 bra        $000204C6
[00020280] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[00020286] 486f 0014                 pea.l      20(a7)
[0002028a] 43ef 001a                 lea.l      26(a7),a1
[0002028e] 3003                      move.w     d3,d0
[00020290] 206a 0014                 movea.l    20(a2),a0
[00020294] 4eb9 0006 ba44            jsr        $0006BA44
[0002029a] 504f                      addq.w     #8,a7
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
[00020332] 663a                      bne.s      $0002036E
[00020334] 7601                      moveq.l    #1,d3
[00020336] e56b                      lsl.w      d2,d3
[00020338] 3828 003e                 move.w     62(a0),d4
[0002033c] e84c                      lsr.w      #4,d4
[0002033e] c87c 0007                 and.w      #$0007,d4
[00020342] 4a44                      tst.w      d4
[00020344] 6716                      beq.s      $0002035C
[00020346] 5f44                      subq.w     #7,d4
[00020348] 6704                      beq.s      $0002034E
[0002034a] 6000 0146                 bra        $00020492
[0002034e] 3815                      move.w     (a5),d4
[00020350] c843                      and.w      d3,d4
[00020352] 6600 014a                 bne        $0002049E
[00020356] 8755                      or.w       d3,(a5)
[00020358] 6000 0138                 bra        $00020492
[0002035c] 3815                      move.w     (a5),d4
[0002035e] c843                      and.w      d3,d4
[00020360] 6700 013c                 beq        $0002049E
[00020364] 3803                      move.w     d3,d4
[00020366] 4644                      not.w      d4
[00020368] c955                      and.w      d4,(a5)
[0002036a] 6000 0126                 bra        $00020492
[0002036e] 4a42                      tst.w      d2
[00020370] 6f0a                      ble.s      $0002037C
[00020372] 7607                      moveq.l    #7,d3
[00020374] 78ff                      moveq.l    #-1,d4
[00020376] d802                      add.b      d2,d4
[00020378] e96b                      lsl.w      d4,d3
[0002037a] 6002                      bra.s      $0002037E
[0002037c] 7603                      moveq.l    #3,d3
[0002037e] 206b 000c                 movea.l    12(a3),a0
[00020382] 3828 003e                 move.w     62(a0),d4
[00020386] e84c                      lsr.w      #4,d4
[00020388] c87c 0007                 and.w      #$0007,d4
[0002038c] 4a44                      tst.w      d4
[0002038e] 6728                      beq.s      $000203B8
[00020390] 5f44                      subq.w     #7,d4
[00020392] 6702                      beq.s      $00020396
[00020394] 604e                      bra.s      $000203E4
[00020396] 3814                      move.w     (a4),d4
[00020398] 670c                      beq.s      $000203A6
[0002039a] 204d                      movea.l    a5,a0
[0002039c] 3800                      move.w     d0,d4
[0002039e] 48c4                      ext.l      d4
[000203a0] d884                      add.l      d4,d4
[000203a2] 91c4                      suba.l     d4,a0
[000203a4] 8750                      or.w       d3,(a0)
[000203a6] b254                      cmp.w      (a4),d1
[000203a8] 670a                      beq.s      $000203B4
[000203aa] 3800                      move.w     d0,d4
[000203ac] 48c4                      ext.l      d4
[000203ae] d884                      add.l      d4,d4
[000203b0] 8775 4800                 or.w       d3,0(a5,d4.l)
[000203b4] 8755                      or.w       d3,(a5)
[000203b6] 602c                      bra.s      $000203E4
[000203b8] 3814                      move.w     (a4),d4
[000203ba] 6710                      beq.s      $000203CC
[000203bc] 3803                      move.w     d3,d4
[000203be] 4644                      not.w      d4
[000203c0] 204d                      movea.l    a5,a0
[000203c2] 3a00                      move.w     d0,d5
[000203c4] 48c5                      ext.l      d5
[000203c6] da85                      add.l      d5,d5
[000203c8] 91c5                      suba.l     d5,a0
[000203ca] c950                      and.w      d4,(a0)
[000203cc] b254                      cmp.w      (a4),d1
[000203ce] 670e                      beq.s      $000203DE
[000203d0] 3803                      move.w     d3,d4
[000203d2] 4644                      not.w      d4
[000203d4] 3a00                      move.w     d0,d5
[000203d6] 48c5                      ext.l      d5
[000203d8] da85                      add.l      d5,d5
[000203da] c975 5800                 and.w      d4,0(a5,d5.l)
[000203de] 3803                      move.w     d3,d4
[000203e0] 4644                      not.w      d4
[000203e2] c955                      and.w      d4,(a5)
[000203e4] 4243                      clr.w      d3
[000203e6] 4a42                      tst.w      d2
[000203e8] 661a                      bne.s      $00020404
[000203ea] 206f 0018                 movea.l    24(a7),a0
[000203ee] 3828 0004                 move.w     4(a0),d4
[000203f2] e74c                      lsl.w      #3,d4
[000203f4] 5344                      subq.w     #1,d4
[000203f6] 3a2f 0016                 move.w     22(a7),d5
[000203fa] ba44                      cmp.w      d4,d5
[000203fc] 6706                      beq.s      $00020404
[000203fe] 363c 8000                 move.w     #$8000,d3
[00020402] 544d                      addq.w     #2,a5
[00020404] b47c 000f                 cmp.w      #$000F,d2
[00020408] 660a                      bne.s      $00020414
[0002040a] 342f 0016                 move.w     22(a7),d2
[0002040e] 6704                      beq.s      $00020414
[00020410] 7601                      moveq.l    #1,d3
[00020412] 554d                      subq.w     #2,a5
[00020414] 4a43                      tst.w      d3
[00020416] 6766                      beq.s      $0002047E
[00020418] 206b 000c                 movea.l    12(a3),a0
[0002041c] 3428 003e                 move.w     62(a0),d2
[00020420] e84a                      lsr.w      #4,d2
[00020422] c47c 0007                 and.w      #$0007,d2
[00020426] 4a42                      tst.w      d2
[00020428] 6728                      beq.s      $00020452
[0002042a] 5f42                      subq.w     #7,d2
[0002042c] 6702                      beq.s      $00020430
[0002042e] 604e                      bra.s      $0002047E
[00020430] 3414                      move.w     (a4),d2
[00020432] 670c                      beq.s      $00020440
[00020434] 204d                      movea.l    a5,a0
[00020436] 3800                      move.w     d0,d4
[00020438] 48c4                      ext.l      d4
[0002043a] d884                      add.l      d4,d4
[0002043c] 91c4                      suba.l     d4,a0
[0002043e] 8750                      or.w       d3,(a0)
[00020440] b254                      cmp.w      (a4),d1
[00020442] 670a                      beq.s      $0002044E
[00020444] 3400                      move.w     d0,d2
[00020446] 48c2                      ext.l      d2
[00020448] d482                      add.l      d2,d2
[0002044a] 8775 2800                 or.w       d3,0(a5,d2.l)
[0002044e] 8755                      or.w       d3,(a5)
[00020450] 602c                      bra.s      $0002047E
[00020452] 3414                      move.w     (a4),d2
[00020454] 6710                      beq.s      $00020466
[00020456] 3803                      move.w     d3,d4
[00020458] 4644                      not.w      d4
[0002045a] 204d                      movea.l    a5,a0
[0002045c] 3a00                      move.w     d0,d5
[0002045e] 48c5                      ext.l      d5
[00020460] da85                      add.l      d5,d5
[00020462] 91c5                      suba.l     d5,a0
[00020464] c950                      and.w      d4,(a0)
[00020466] b254                      cmp.w      (a4),d1
[00020468] 670e                      beq.s      $00020478
[0002046a] 3203                      move.w     d3,d1
[0002046c] 4641                      not.w      d1
[0002046e] 3400                      move.w     d0,d2
[00020470] 48c2                      ext.l      d2
[00020472] d482                      add.l      d2,d2
[00020474] c375 2800                 and.w      d1,0(a5,d2.l)
[00020478] 3003                      move.w     d3,d0
[0002047a] 4640                      not.w      d0
[0002047c] c155                      and.w      d0,(a5)
[0002047e] 516f 0008                 subq.w     #8,8(a7)
[00020482] 516f 000a                 subq.w     #8,10(a7)
[00020486] 066f 0010 000c            addi.w     #$0010,12(a7)
[0002048c] 066f 0010 000e            addi.w     #$0010,14(a7)
[00020492] 43ef 0008                 lea.l      8(a7),a1
[00020496] 204a                      movea.l    a2,a0
[00020498] 266a 006a                 movea.l    106(a2),a3
[0002049c] 4e93                      jsr        (a3)
[0002049e] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[000204a4] 486f 0008                 pea.l      8(a7)
[000204a8] 486f 000e                 pea.l      14(a7)
[000204ac] 224c                      movea.l    a4,a1
[000204ae] 41ef 0022                 lea.l      34(a7),a0
[000204b2] 4eb9 0006 c978            jsr        $0006C978
[000204b8] 4fef 000c                 lea.l      12(a7),a7
[000204bc] 7001                      moveq.l    #1,d0
[000204be] c06f 0006                 and.w      6(a7),d0
[000204c2] 6600 fdd8                 bne        $0002029C
[000204c6] 4fef 001c                 lea.l      28(a7),a7
[000204ca] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[000204ce] 4e75                      rts
edim_abort:
[000204d0] 2079 0010 1f12            movea.l    ACSblk,a0
[000204d6] 2068 0258                 movea.l    600(a0),a0
[000204da] 4eb9 0002 0c38            jsr        $00020C38
[000204e0] 4e75                      rts
edim_ok:
[000204e2] 2079 0010 1f12            movea.l    ACSblk,a0
[000204e8] 2068 0258                 movea.l    600(a0),a0
[000204ec] 4eb9 0002 0a24            jsr        $00020A24
[000204f2] 2079 0010 1f12            movea.l    ACSblk,a0
[000204f8] 2068 0258                 movea.l    600(a0),a0
[000204fc] 4eb9 0002 0c38            jsr        $00020C38
[00020502] 4e75                      rts
edim_acc:
[00020504] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[00020508] 514f                      subq.w     #8,a7
[0002050a] 2079 0010 1f12            movea.l    ACSblk,a0
[00020510] 2468 0258                 movea.l    600(a0),a2
[00020514] 2eaa 0014                 move.l     20(a2),(a7)
[00020518] 2868 0240                 movea.l    576(a0),a4
[0002051c] 4eb9 0004 4840            jsr        $00044840
[00020522] 4eb9 0004 484c            jsr        $0004484C
[00020528] 3600                      move.w     d0,d3
[0002052a] 6b00 00ba                 bmi        $000205E6
[0002052e] 48c0                      ext.l      d0
[00020530] 2200                      move.l     d0,d1
[00020532] d281                      add.l      d1,d1
[00020534] d280                      add.l      d0,d1
[00020536] e789                      lsl.l      #3,d1
[00020538] 266c 0014                 movea.l    20(a4),a3
[0002053c] 47f3 1818                 lea.l      24(a3,d1.l),a3
[00020540] 0c6b 000a 0016            cmpi.w     #$000A,22(a3)
[00020546] 6600 009e                 bne        $000205E6
[0002054a] 2a6b 000c                 movea.l    12(a3),a5
[0002054e] 0c6d 00c0 0004            cmpi.w     #$00C0,4(a5)
[00020554] 6e10                      bgt.s      $00020566
[00020556] 0c6d 00c0 0006            cmpi.w     #$00C0,6(a5)
[0002055c] 6e08                      bgt.s      $00020566
[0002055e] 0c6d 0001 000a            cmpi.w     #$0001,10(a5)
[00020564] 6710                      beq.s      $00020576
[00020566] 41f9 000a 4a0c            lea.l      $000A4A0C,a0
[0002056c] 7001                      moveq.l    #1,d0
[0002056e] 4eb9 0005 17fe            jsr        $000517FE
[00020574] 6070                      bra.s      $000205E6
[00020576] 302d 0006                 move.w     6(a5),d0
[0002057a] 48c0                      ext.l      d0
[0002057c] d080                      add.l      d0,d0
[0002057e] 322d 0008                 move.w     8(a5),d1
[00020582] 48c1                      ext.l      d1
[00020584] 4eb9 0007 76f0            jsr        $000776F0
[0002058a] 2800                      move.l     d0,d4
[0002058c] 2f52 0004                 move.l     (a2),4(a7)
[00020590] 2255                      movea.l    (a5),a1
[00020592] 206f 0004                 movea.l    4(a7),a0
[00020596] 2068 0010                 movea.l    16(a0),a0
[0002059a] 2004                      move.l     d4,d0
[0002059c] 4eb9 0007 6f44            jsr        $00076F44
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
[000205e0] 4eb9 0004 492a            jsr        $0004492A
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
[00020610] 6606                      bne.s      $00020618
[00020612] 322f 0006                 move.w     6(a7),d1
[00020616] 6730                      beq.s      $00020648
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
[00020642] 4eb9 0006 3f60            jsr        $00063F60
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
[00020696] 45f9 000a 5c3e            lea.l      $000A5C3E,a2
[0002069c] 6000 00d8                 bra        $00020776
[000206a0] 302d 000e                 move.w     14(a5),d0
[000206a4] b06f 0002                 cmp.w      2(a7),d0
[000206a8] 6d00 00b8                 blt        $00020762
[000206ac] 322d 000a                 move.w     10(a5),d1
[000206b0] b26f 0006                 cmp.w      6(a7),d1
[000206b4] 6e00 00ac                 bgt        $00020762
[000206b8] 206f 004c                 movea.l    76(a7),a0
[000206bc] 3b68 000a 0008            move.w     10(a0),8(a5)
[000206c2] 701f                      moveq.l    #31,d0
[000206c4] d068 000a                 add.w      10(a0),d0
[000206c8] 3b40 000c                 move.w     d0,12(a5)
[000206cc] 4245                      clr.w      d5
[000206ce] 6000 008a                 bra        $0002075A
[000206d2] 206f 0018                 movea.l    24(a7),a0
[000206d6] 54af 0018                 addq.l     #2,24(a7)
[000206da] 3c10                      move.w     (a0),d6
[000206dc] 303c 0080                 move.w     #$0080,d0
[000206e0] d06d 000c                 add.w      12(a5),d0
[000206e4] b057                      cmp.w      (a7),d0
[000206e6] 6d64                      blt.s      $0002074C
[000206e8] 322d 0008                 move.w     8(a5),d1
[000206ec] b26f 0004                 cmp.w      4(a7),d1
[000206f0] 6e5a                      bgt.s      $0002074C
[000206f2] 7e03                      moveq.l    #3,d7
[000206f4] 6050                      bra.s      $00020746
[000206f6] 302d 000c                 move.w     12(a5),d0
[000206fa] b057                      cmp.w      (a7),d0
[000206fc] 6d38                      blt.s      $00020736
[000206fe] 322d 0008                 move.w     8(a5),d1
[00020702] b26f 0004                 cmp.w      4(a7),d1
[00020706] 6e2e                      bgt.s      $00020736
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
[0002072e] 4eb9 0006 6632            jsr        $00066632
[00020734] 504f                      addq.w     #8,a7
[00020736] e94e                      lsl.w      #4,d6
[00020738] 066d 0020 0008            addi.w     #$0020,8(a5)
[0002073e] 066d 0020 000c            addi.w     #$0020,12(a5)
[00020744] 5347                      subq.w     #1,d7
[00020746] 4a47                      tst.w      d7
[00020748] 6aac                      bpl.s      $000206F6
[0002074a] 600c                      bra.s      $00020758
[0002074c] 066d 0080 0008            addi.w     #$0080,8(a5)
[00020752] 066d 0080 000c            addi.w     #$0080,12(a5)
[00020758] 5245                      addq.w     #1,d5
[0002075a] b645                      cmp.w      d5,d3
[0002075c] 6e00 ff74                 bgt        $000206D2
[00020760] 600a                      bra.s      $0002076C
[00020762] 3003                      move.w     d3,d0
[00020764] 48c0                      ext.l      d0
[00020766] d080                      add.l      d0,d0
[00020768] d1af 0018                 add.l      d0,24(a7)
[0002076c] 506d 000a                 addq.w     #8,10(a5)
[00020770] 506d 000e                 addq.w     #8,14(a5)
[00020774] 5244                      addq.w     #1,d4
[00020776] 206f 001c                 movea.l    28(a7),a0
[0002077a] b868 0006                 cmp.w      6(a0),d4
[0002077e] 6d00 ff20                 blt        $000206A0
[00020782] 41d7                      lea.l      (a7),a0
[00020784] 4241                      clr.w      d1
[00020786] 2254                      movea.l    (a4),a1
[00020788] 3029 0010                 move.w     16(a1),d0
[0002078c] 4eb9 0006 3f60            jsr        $00063F60
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
[000207d2] 4eb9 0004 b286            jsr        $0004B286
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
[0002080c] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
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
[00020844] 4eb9 0006 d60a            jsr        $0006D60A
[0002084a] 4fef 0012                 lea.l      18(a7),a7
[0002084e] 302b 0022                 move.w     34(a3),d0
[00020852] 2052                      movea.l    (a2),a0
[00020854] 322f 0004                 move.w     4(a7),d1
[00020858] b268 000c                 cmp.w      12(a0),d1
[0002085c] 6c04                      bge.s      $00020862
[0002085e] c07c f1ff                 and.w      #$F1FF,d0
[00020862] 2052                      movea.l    (a2),a0
[00020864] 322f 0006                 move.w     6(a7),d1
[00020868] b268 000e                 cmp.w      14(a0),d1
[0002086c] 6c04                      bge.s      $00020872
[0002086e] c07c fe3f                 and.w      #$FE3F,d0
[00020872] 3200                      move.w     d0,d1
[00020874] c27c 0900                 and.w      #$0900,d1
[00020878] 6604                      bne.s      $0002087E
[0002087a] c07c ffdf                 and.w      #$FFDF,d0
[0002087e] b06b 0022                 cmp.w      34(a3),d0
[00020882] 6722                      beq.s      $000208A6
[00020884] 3740 0022                 move.w     d0,34(a3)
[00020888] 006b 0100 0056            ori.w      #$0100,86(a3)
[0002088e] 204b                      movea.l    a3,a0
[00020890] 4eb9 0005 013e            jsr        $0005013E
[00020896] 204b                      movea.l    a3,a0
[00020898] 4eb9 0004 f69e            jsr        $0004F69E
[0002089e] 026b feff 0056            andi.w     #$FEFF,86(a3)
[000208a4] 6008                      bra.s      $000208AE
[000208a6] 204b                      movea.l    a3,a0
[000208a8] 4eb9 0001 454a            jsr        $0001454A
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
[000208e2] 4eb9 0004 b286            jsr        $0004B286
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
[0002094a] 6c08                      bge.s      $00020954
[0002094c] 3169 0014 0014            move.w     20(a1),20(a0)
[00020952] 6004                      bra.s      $00020958
[00020954] 3140 0014                 move.w     d0,20(a0)
[00020958] b269 0016                 cmp.w      22(a1),d1
[0002095c] 6c08                      bge.s      $00020966
[0002095e] 3169 0016 0016            move.w     22(a1),22(a0)
[00020964] 6004                      bra.s      $0002096A
[00020966] 3141 0016                 move.w     d1,22(a0)
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
[00020996] 6c02                      bge.s      $0002099A
[00020998] 6010                      bra.s      $000209AA
[0002099a] 2052                      movea.l    (a2),a0
[0002099c] 3028 0004                 move.w     4(a0),d0
[000209a0] d040                      add.w      d0,d0
[000209a2] 226b 0014                 movea.l    20(a3),a1
[000209a6] d069 0014                 add.w      20(a1),d0
[000209aa] 3740 0028                 move.w     d0,40(a3)
[000209ae] 2052                      movea.l    (a2),a0
[000209b0] 3228 000e                 move.w     14(a0),d1
[000209b4] 3428 0006                 move.w     6(a0),d2
[000209b8] e54a                      lsl.w      #2,d2
[000209ba] 226b 0014                 movea.l    20(a3),a1
[000209be] d469 0016                 add.w      22(a1),d2
[000209c2] b242                      cmp.w      d2,d1
[000209c4] 6c02                      bge.s      $000209C8
[000209c6] 6010                      bra.s      $000209D8
[000209c8] 2052                      movea.l    (a2),a0
[000209ca] 3228 0006                 move.w     6(a0),d1
[000209ce] e549                      lsl.w      #2,d1
[000209d0] 226b 0014                 movea.l    20(a3),a1
[000209d4] d269 0016                 add.w      22(a1),d1
[000209d8] 3741 002a                 move.w     d1,42(a3)
[000209dc] 302b 0022                 move.w     34(a3),d0
[000209e0] c07c 0100                 and.w      #$0100,d0
[000209e4] 670a                      beq.s      $000209F0
[000209e6] 342b 0022                 move.w     34(a3),d2
[000209ea] c47c 0800                 and.w      #$0800,d2
[000209ee] 6624                      bne.s      $00020A14
[000209f0] 006b 0100 0056            ori.w      #$0100,86(a3)
[000209f6] 204b                      movea.l    a3,a0
[000209f8] 4eb9 0005 013e            jsr        $0005013E
[000209fe] 006b 0fe0 0022            ori.w      #$0FE0,34(a3)
[00020a04] 204b                      movea.l    a3,a0
[00020a06] 4eb9 0004 f69e            jsr        $0004F69E
[00020a0c] 026b feff 0056            andi.w     #$FEFF,86(a3)
[00020a12] 6008                      bra.s      $00020A1C
[00020a14] 204b                      movea.l    a3,a0
[00020a16] 4eb9 0001 44f2            jsr        $000144F2
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
[00020a5c] 6734                      beq.s      $00020A92
[00020a5e] 224c                      movea.l    a4,a1
[00020a60] 700e                      moveq.l    #14,d0
[00020a62] 4eb9 0007 6f44            jsr        $00076F44
[00020a68] 2abc 0000 000e            move.l     #$0000000E,(a5)
[00020a6e] 254d 0004                 move.l     a5,4(a2)
[00020a72] 2003                      move.l     d3,d0
[00020a74] 2254                      movea.l    (a4),a1
[00020a76] 4bed 000e                 lea.l      14(a5),a5
[00020a7a] 204d                      movea.l    a5,a0
[00020a7c] 4eb9 0007 6f44            jsr        $00076F44
[00020a82] 2544 000a                 move.l     d4,10(a2)
[00020a86] 2544 000e                 move.l     d4,14(a2)
[00020a8a] 204b                      movea.l    a3,a0
[00020a8c] 4eb9 0004 7e26            jsr        $00047E26
[00020a92] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[00020a96] 4e75                      rts
im_make:
[00020a98] 48e7 0038                 movem.l    a2-a4,-(a7)
[00020a9c] 594f                      subq.w     #4,a7
[00020a9e] 2e88                      move.l     a0,(a7)
[00020aa0] 2668 0004                 movea.l    4(a0),a3
[00020aa4] 286b 0012                 movea.l    18(a3),a4
[00020aa8] 200c                      move.l     a4,d0
[00020aaa] 670c                      beq.s      $00020AB8
[00020aac] 204c                      movea.l    a4,a0
[00020aae] 4eb9 0004 f0ca            jsr        $0004F0CA
[00020ab4] 6000 009e                 bra        $00020B54
[00020ab8] 7014                      moveq.l    #20,d0
[00020aba] 4eb9 0004 7cc8            jsr        Ax_malloc
[00020ac0] 2448                      movea.l    a0,a2
[00020ac2] 200a                      move.l     a2,d0
[00020ac4] 6700 008a                 beq        $00020B50
[00020ac8] 2257                      movea.l    (a7),a1
[00020aca] 2091                      move.l     (a1),(a0)
[00020acc] 2569 0004 0004            move.l     4(a1),4(a2)
[00020ad2] 41eb 0016                 lea.l      22(a3),a0
[00020ad6] 23c8 000a 5948            move.l     a0,$000A5948
[00020adc] 2279 000a 5954            movea.l    $000A5954,a1
[00020ae2] 2348 0008                 move.l     a0,8(a1)
[00020ae6] 41f9 000a 58fa            lea.l      $000A58FA,a0
[00020aec] 4eb9 0004 f41a            jsr        $0004F41A
[00020af2] 2848                      movea.l    a0,a4
[00020af4] 200c                      move.l     a4,d0
[00020af6] 6758                      beq.s      $00020B50
[00020af8] 2257                      movea.l    (a7),a1
[00020afa] 2051                      movea.l    (a1),a0
[00020afc] 4868 0168                 pea.l      360(a0)
[00020b00] 43eb 003a                 lea.l      58(a3),a1
[00020b04] 204c                      movea.l    a4,a0
[00020b06] 4eb9 0001 47a8            jsr        $000147A8
[00020b0c] 584f                      addq.w     #4,a7
[00020b0e] 288a                      move.l     a2,(a4)
[00020b10] 256c 0014 0008            move.l     20(a4),8(a2)
[00020b16] 41f9 000a 5582            lea.l      $000A5582,a0
[00020b1c] 4eb9 0004 9a5c            jsr        $00049A5C
[00020b22] 2548 000c                 move.l     a0,12(a2)
[00020b26] 2008                      move.l     a0,d0
[00020b28] 6726                      beq.s      $00020B50
[00020b2a] 4eb9 0004 a25e            jsr        $0004A25E
[00020b30] 274c 0012                 move.l     a4,18(a3)
[00020b34] 204c                      movea.l    a4,a0
[00020b36] 4eb9 0002 0baa            jsr        $00020BAA
[00020b3c] 204c                      movea.l    a4,a0
[00020b3e] 226c 000c                 movea.l    12(a4),a1
[00020b42] 4e91                      jsr        (a1)
[00020b44] 4a40                      tst.w      d0
[00020b46] 670c                      beq.s      $00020B54
[00020b48] 204c                      movea.l    a4,a0
[00020b4a] 4eb9 0002 0c38            jsr        $00020C38
[00020b50] 91c8                      suba.l     a0,a0
[00020b52] 6002                      bra.s      $00020B56
[00020b54] 204c                      movea.l    a4,a0
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
[00020b6c] 6708                      beq.s      $00020B76
[00020b6e] 907c 270e                 sub.w      #$270E,d0
[00020b72] 6712                      beq.s      $00020B86
[00020b74] 601e                      bra.s      $00020B94
[00020b76] 204a                      movea.l    a2,a0
[00020b78] 6100 feaa                 bsr        $00020A24
[00020b7c] 204a                      movea.l    a2,a0
[00020b7e] 4eb9 0002 0c38            jsr        $00020C38
[00020b84] 601c                      bra.s      $00020BA2
[00020b86] 226b 0004                 movea.l    4(a3),a1
[00020b8a] 204a                      movea.l    a2,a0
[00020b8c] 4eb9 0001 45a2            jsr        $000145A2
[00020b92] 600e                      bra.s      $00020BA2
[00020b94] 224c                      movea.l    a4,a1
[00020b96] 3003                      move.w     d3,d0
[00020b98] 204a                      movea.l    a2,a0
[00020b9a] 4eb9 0005 1276            jsr        $00051276
[00020ba0] 6002                      bra.s      $00020BA4
[00020ba2] 7001                      moveq.l    #1,d0
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
[00020bd2] 4eb9 0007 6f44            jsr        $00076F44
[00020bd8] 263c 0000 1200            move.l     #$00001200,d3
[00020bde] 2003                      move.l     d3,d0
[00020be0] 4eb9 0004 7cc8            jsr        Ax_malloc
[00020be6] 2888                      move.l     a0,(a4)
[00020be8] 2748 0010                 move.l     a0,16(a3)
[00020bec] 2008                      move.l     a0,d0
[00020bee] 670e                      beq.s      $00020BFE
[00020bf0] 2215                      move.l     (a5),d1
[00020bf2] 43f5 1800                 lea.l      0(a5,d1.l),a1
[00020bf6] 2003                      move.l     d3,d0
[00020bf8] 4eb9 0007 6f44            jsr        $00076F44
[00020bfe] 302c 000c                 move.w     12(a4),d0
[00020c02] 48c0                      ext.l      d0
[00020c04] e588                      lsl.l      #2,d0
[00020c06] 41f9 000b e270            lea.l      $000BE270,a0
[00020c0c] 2270 0800                 movea.l    0(a0,d0.l),a1
[00020c10] 206a 0014                 movea.l    20(a2),a0
[00020c14] 700b                      moveq.l    #11,d0
[00020c16] 4eb9 0004 afe0            jsr        $0004AFE0
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
[00020c56] 660c                      bne.s      $00020C64
[00020c58] 206b 000c                 movea.l    12(a3),a0
[00020c5c] 4eb9 0004 9b7c            jsr        $00049B7C
[00020c62] 600a                      bra.s      $00020C6E
[00020c64] 206b 0008                 movea.l    8(a3),a0
[00020c68] 4eb9 0004 9b7c            jsr        $00049B7C
[00020c6e] 302a 0056                 move.w     86(a2),d0
[00020c72] c07c 0800                 and.w      #$0800,d0
[00020c76] 6716                      beq.s      $00020C8E
[00020c78] 43ea 002c                 lea.l      44(a2),a1
[00020c7c] 206b 0004                 movea.l    4(a3),a0
[00020c80] 41e8 003a                 lea.l      58(a0),a0
[00020c84] 7008                      moveq.l    #8,d0
[00020c86] 4eb9 0007 6f44            jsr        $00076F44
[00020c8c] 6014                      bra.s      $00020CA2
[00020c8e] 7008                      moveq.l    #8,d0
[00020c90] 43ea 0024                 lea.l      36(a2),a1
[00020c94] 206b 0004                 movea.l    4(a3),a0
[00020c98] 41e8 003a                 lea.l      58(a0),a0
[00020c9c] 4eb9 0007 6f44            jsr        $00076F44
[00020ca2] 206b 0010                 movea.l    16(a3),a0
[00020ca6] 4eb9 0004 7e26            jsr        $00047E26
[00020cac] 204b                      movea.l    a3,a0
[00020cae] 4eb9 0004 7e26            jsr        $00047E26
[00020cb4] 204a                      movea.l    a2,a0
[00020cb6] 4eb9 0005 013e            jsr        $0005013E
[00020cbc] 204a                      movea.l    a2,a0
[00020cbe] 4eb9 0005 0330            jsr        $00050330
[00020cc4] 265f                      movea.l    (a7)+,a3
[00020cc6] 245f                      movea.l    (a7)+,a2
[00020cc8] 4e75                      rts
