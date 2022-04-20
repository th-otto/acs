AddItem:
[0003f92e] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0003f932] 2448                      movea.l    a0,a2
[0003f934] 7600                      moveq.l    #0,d3
[0003f936] 2650                      movea.l    (a0),a3
[0003f938] 2849                      movea.l    a1,a4
[0003f93a] 202b 0090                 move.l     144(a3),d0
[0003f93e] 675e                      beq.s      $0003F99E
[0003f940] 6002                      bra.s      $0003F944
[0003f942] 5283                      addq.l     #1,d3
[0003f944] b6ab 0090                 cmp.l      144(a3),d3
[0003f948] 6c28                      bge.s      $0003F972
[0003f94a] 2f13                      move.l     (a3),-(a7)
[0003f94c] 224c                      movea.l    a4,a1
[0003f94e] 2f09                      move.l     a1,-(a7)
[0003f950] 2003                      move.l     d3,d0
[0003f952] 222b 0084                 move.l     132(a3),d1
[0003f956] 4eb9 0007 76f0            jsr        $000776F0
[0003f95c] 206b 0094                 movea.l    148(a3),a0
[0003f960] d1c0                      adda.l     d0,a0
[0003f962] 2a6b 00a4                 movea.l    164(a3),a5
[0003f966] 225f                      movea.l    (a7)+,a1
[0003f968] 4e95                      jsr        (a5)
[0003f96a] 584f                      addq.w     #4,a7
[0003f96c] 3800                      move.w     d0,d4
[0003f96e] 5240                      addq.w     #1,d0
[0003f970] 67d0                      beq.s      $0003F942
[0003f972] b87c fffe                 cmp.w      #$FFFE,d4
[0003f976] 6604                      bne.s      $0003F97C
[0003f978] 262b 0090                 move.l     144(a3),d3
[0003f97c] b6ab 0090                 cmp.l      144(a3),d3
[0003f980] 6c1c                      bge.s      $0003F99E
[0003f982] 4a44                      tst.w      d4
[0003f984] 6618                      bne.s      $0003F99E
[0003f986] 2053                      movea.l    (a3),a0
[0003f988] 7003                      moveq.l    #3,d0
[0003f98a] 226b 00b4                 movea.l    180(a3),a1
[0003f98e] 4e91                      jsr        (a1)
[0003f990] 5340                      subq.w     #1,d0
[0003f992] 6654                      bne.s      $0003F9E8
[0003f994] 2003                      move.l     d3,d0
[0003f996] 204a                      movea.l    a2,a0
[0003f998] 4eb9 0003 fad0            jsr        $0003FAD0
[0003f99e] 7001                      moveq.l    #1,d0
[0003f9a0] d0ab 0090                 add.l      144(a3),d0
[0003f9a4] b0ab 0088                 cmp.l      136(a3),d0
[0003f9a8] 6f00 00a2                 ble        $0003FA4C
[0003f9ac] 202b 0084                 move.l     132(a3),d0
[0003f9b0] 222b 0088                 move.l     136(a3),d1
[0003f9b4] d2ab 008c                 add.l      140(a3),d1
[0003f9b8] 4eb9 0007 76f0            jsr        $000776F0
[0003f9be] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003f9c4] 2848                      movea.l    a0,a4
[0003f9c6] 200c                      move.l     a4,d0
[0003f9c8] 6624                      bne.s      $0003F9EE
[0003f9ca] 2053                      movea.l    (a3),a0
[0003f9cc] 7001                      moveq.l    #1,d0
[0003f9ce] 226b 00b4                 movea.l    180(a3),a1
[0003f9d2] 4e91                      jsr        (a1)
[0003f9d4] 4a40                      tst.w      d0
[0003f9d6] 6610                      bne.s      $0003F9E8
[0003f9d8] 91c8                      suba.l     a0,a0
[0003f9da] 7003                      moveq.l    #3,d0
[0003f9dc] 2279 0010 1f12            movea.l    ACSblk,a1
[0003f9e2] 2269 03d6                 movea.l    982(a1),a1
[0003f9e6] 4e91                      jsr        (a1)
[0003f9e8] 4240                      clr.w      d0
[0003f9ea] 6000 00de                 bra        $0003FACA
[0003f9ee] 202b 008c                 move.l     140(a3),d0
[0003f9f2] 222b 0084                 move.l     132(a3),d1
[0003f9f6] 4eb9 0007 76f0            jsr        $000776F0
[0003f9fc] 2200                      move.l     d0,d1
[0003f9fe] 2f01                      move.l     d1,-(a7)
[0003fa00] 202b 0084                 move.l     132(a3),d0
[0003fa04] 222b 0088                 move.l     136(a3),d1
[0003fa08] 4eb9 0007 76f0            jsr        $000776F0
[0003fa0e] 41f4 0800                 lea.l      0(a4,d0.l),a0
[0003fa12] 4240                      clr.w      d0
[0003fa14] 221f                      move.l     (a7)+,d1
[0003fa16] 4eb9 0007 712e            jsr        $0007712E
[0003fa1c] 202b 0084                 move.l     132(a3),d0
[0003fa20] 222b 0088                 move.l     136(a3),d1
[0003fa24] 4eb9 0007 76f0            jsr        $000776F0
[0003fa2a] 226b 0094                 movea.l    148(a3),a1
[0003fa2e] 204c                      movea.l    a4,a0
[0003fa30] 4eb9 0007 6f44            jsr        $00076F44
[0003fa36] 206b 0094                 movea.l    148(a3),a0
[0003fa3a] 4eb9 0004 7e26            jsr        $00047E26
[0003fa40] 274c 0094                 move.l     a4,148(a3)
[0003fa44] 202b 008c                 move.l     140(a3),d0
[0003fa48] d1ab 0088                 add.l      d0,136(a3)
[0003fa4c] b6ab 0090                 cmp.l      144(a3),d3
[0003fa50] 6c44                      bge.s      $0003FA96
[0003fa52] 202b 0090                 move.l     144(a3),d0
[0003fa56] 9083                      sub.l      d3,d0
[0003fa58] 222b 0084                 move.l     132(a3),d1
[0003fa5c] 4eb9 0007 76f0            jsr        $000776F0
[0003fa62] 2f00                      move.l     d0,-(a7)
[0003fa64] 2003                      move.l     d3,d0
[0003fa66] 222b 0084                 move.l     132(a3),d1
[0003fa6a] 4eb9 0007 76f0            jsr        $000776F0
[0003fa70] 226b 0094                 movea.l    148(a3),a1
[0003fa74] d3c0                      adda.l     d0,a1
[0003fa76] 2f09                      move.l     a1,-(a7)
[0003fa78] 7001                      moveq.l    #1,d0
[0003fa7a] d083                      add.l      d3,d0
[0003fa7c] 222b 0084                 move.l     132(a3),d1
[0003fa80] 4eb9 0007 76f0            jsr        $000776F0
[0003fa86] 206b 0094                 movea.l    148(a3),a0
[0003fa8a] d1c0                      adda.l     d0,a0
[0003fa8c] 225f                      movea.l    (a7)+,a1
[0003fa8e] 201f                      move.l     (a7)+,d0
[0003fa90] 4eb9 0007 6f44            jsr        $00076F44
[0003fa96] 202b 0084                 move.l     132(a3),d0
[0003fa9a] 224c                      movea.l    a4,a1
[0003fa9c] 2f00                      move.l     d0,-(a7)
[0003fa9e] 2f09                      move.l     a1,-(a7)
[0003faa0] 2003                      move.l     d3,d0
[0003faa2] 222b 0084                 move.l     132(a3),d1
[0003faa6] 4eb9 0007 76f0            jsr        $000776F0
[0003faac] 206b 0094                 movea.l    148(a3),a0
[0003fab0] d1c0                      adda.l     d0,a0
[0003fab2] 225f                      movea.l    (a7)+,a1
[0003fab4] 201f                      move.l     (a7)+,d0
[0003fab6] 4eb9 0007 6f44            jsr        $00076F44
[0003fabc] 52ab 0090                 addq.l     #1,144(a3)
[0003fac0] 00ab 0000 0001 009c       ori.l      #$00000001,156(a3)
[0003fac8] 7001                      moveq.l    #1,d0
[0003faca] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0003face] 4e75                      rts
DeleteItem:
[0003fad0] 2f03                      move.l     d3,-(a7)
[0003fad2] 2f0a                      move.l     a2,-(a7)
[0003fad4] 2600                      move.l     d0,d3
[0003fad6] 2450                      movea.l    (a0),a2
[0003fad8] b0aa 0090                 cmp.l      144(a2),d0
[0003fadc] 6c04                      bge.s      $0003FAE2
[0003fade] 4a80                      tst.l      d0
[0003fae0] 6a0e                      bpl.s      $0003FAF0
[0003fae2] 2052                      movea.l    (a2),a0
[0003fae4] 7002                      moveq.l    #2,d0
[0003fae6] 226a 00b4                 movea.l    180(a2),a1
[0003faea] 4e91                      jsr        (a1)
[0003faec] 4240                      clr.w      d0
[0003faee] 6054                      bra.s      $0003FB44
[0003faf0] 202a 0084                 move.l     132(a2),d0
[0003faf4] 222a 0090                 move.l     144(a2),d1
[0003faf8] 9283                      sub.l      d3,d1
[0003fafa] 5381                      subq.l     #1,d1
[0003fafc] 4eb9 0007 76f0            jsr        $000776F0
[0003fb02] 2f00                      move.l     d0,-(a7)
[0003fb04] 7001                      moveq.l    #1,d0
[0003fb06] d083                      add.l      d3,d0
[0003fb08] 222a 0084                 move.l     132(a2),d1
[0003fb0c] 4eb9 0007 76f0            jsr        $000776F0
[0003fb12] 226a 0094                 movea.l    148(a2),a1
[0003fb16] d3c0                      adda.l     d0,a1
[0003fb18] 2f09                      move.l     a1,-(a7)
[0003fb1a] 2003                      move.l     d3,d0
[0003fb1c] 222a 0084                 move.l     132(a2),d1
[0003fb20] 4eb9 0007 76f0            jsr        $000776F0
[0003fb26] 206a 0094                 movea.l    148(a2),a0
[0003fb2a] d1c0                      adda.l     d0,a0
[0003fb2c] 225f                      movea.l    (a7)+,a1
[0003fb2e] 201f                      move.l     (a7)+,d0
[0003fb30] 4eb9 0007 6f44            jsr        $00076F44
[0003fb36] 53aa 0090                 subq.l     #1,144(a2)
[0003fb3a] 00aa 0000 0001 009c       ori.l      #$00000001,156(a2)
[0003fb42] 7001                      moveq.l    #1,d0
[0003fb44] 245f                      movea.l    (a7)+,a2
[0003fb46] 261f                      move.l     (a7)+,d3
[0003fb48] 4e75                      rts
GetItem:
[0003fb4a] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0003fb4e] 2600                      move.l     d0,d3
[0003fb50] 2649                      movea.l    a1,a3
[0003fb52] 2450                      movea.l    (a0),a2
[0003fb54] b0aa 0090                 cmp.l      144(a2),d0
[0003fb58] 6c04                      bge.s      $0003FB5E
[0003fb5a] 4a80                      tst.l      d0
[0003fb5c] 6a0e                      bpl.s      $0003FB6C
[0003fb5e] 2052                      movea.l    (a2),a0
[0003fb60] 7002                      moveq.l    #2,d0
[0003fb62] 226a 00b4                 movea.l    180(a2),a1
[0003fb66] 4e91                      jsr        (a1)
[0003fb68] 4240                      clr.w      d0
[0003fb6a] 6024                      bra.s      $0003FB90
[0003fb6c] 202a 0084                 move.l     132(a2),d0
[0003fb70] 2f00                      move.l     d0,-(a7)
[0003fb72] 2003                      move.l     d3,d0
[0003fb74] 222a 0084                 move.l     132(a2),d1
[0003fb78] 4eb9 0007 76f0            jsr        $000776F0
[0003fb7e] 226a 0094                 movea.l    148(a2),a1
[0003fb82] d3c0                      adda.l     d0,a1
[0003fb84] 204b                      movea.l    a3,a0
[0003fb86] 201f                      move.l     (a7)+,d0
[0003fb88] 4eb9 0007 6f44            jsr        $00076F44
[0003fb8e] 7001                      moveq.l    #1,d0
[0003fb90] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0003fb94] 4e75                      rts
ReplaceItem:
[0003fb96] 2f0a                      move.l     a2,-(a7)
[0003fb98] 2f0b                      move.l     a3,-(a7)
[0003fb9a] 2448                      movea.l    a0,a2
[0003fb9c] 2649                      movea.l    a1,a3
[0003fb9e] 6100 ff30                 bsr        $0003FAD0
[0003fba2] 4a40                      tst.w      d0
[0003fba4] 6710                      beq.s      $0003FBB6
[0003fba6] 224b                      movea.l    a3,a1
[0003fba8] 204a                      movea.l    a2,a0
[0003fbaa] 6100 fd82                 bsr        $0003F92E
[0003fbae] 4a40                      tst.w      d0
[0003fbb0] 6704                      beq.s      $0003FBB6
[0003fbb2] 7001                      moveq.l    #1,d0
[0003fbb4] 6002                      bra.s      $0003FBB8
[0003fbb6] 4240                      clr.w      d0
[0003fbb8] 265f                      movea.l    (a7)+,a3
[0003fbba] 245f                      movea.l    (a7)+,a2
[0003fbbc] 4e75                      rts
UpdateList:
[0003fbbe] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0003fbc2] 4fef fdfe                 lea.l      -514(a7),a7
[0003fbc6] 2448                      movea.l    a0,a2
[0003fbc8] 2650                      movea.l    (a0),a3
[0003fbca] 93c9                      suba.l     a1,a1
[0003fbcc] 303c 00e2                 move.w     #$00E2,d0
[0003fbd0] 206a 0014                 movea.l    20(a2),a0
[0003fbd4] 4eb9 0003 8e52            jsr        $00038E52
[0003fbda] 93c9                      suba.l     a1,a1
[0003fbdc] 303c 00ce                 move.w     #$00CE,d0
[0003fbe0] 206a 0014                 movea.l    20(a2),a0
[0003fbe4] 4eb9 0003 8e52            jsr        $00038E52
[0003fbea] 7600                      moveq.l    #0,d3
[0003fbec] 6048                      bra.s      $0003FC36
[0003fbee] 2003                      move.l     d3,d0
[0003fbf0] 222b 0084                 move.l     132(a3),d1
[0003fbf4] 4eb9 0007 76f0            jsr        $000776F0
[0003fbfa] 286b 0094                 movea.l    148(a3),a4
[0003fbfe] d9c0                      adda.l     d0,a4
[0003fc00] 2f13                      move.l     (a3),-(a7)
[0003fc02] 224c                      movea.l    a4,a1
[0003fc04] 41ef 0004                 lea.l      4(a7),a0
[0003fc08] 2a6b 00b8                 movea.l    184(a3),a5
[0003fc0c] 4e95                      jsr        (a5)
[0003fc0e] 584f                      addq.w     #4,a7
[0003fc10] 4a83                      tst.l      d3
[0003fc12] 6710                      beq.s      $0003FC24
[0003fc14] 93c9                      suba.l     a1,a1
[0003fc16] 303c 00cb                 move.w     #$00CB,d0
[0003fc1a] 206a 0014                 movea.l    20(a2),a0
[0003fc1e] 4eb9 0003 8e52            jsr        $00038E52
[0003fc24] 43d7                      lea.l      (a7),a1
[0003fc26] 303c 00cc                 move.w     #$00CC,d0
[0003fc2a] 206a 0014                 movea.l    20(a2),a0
[0003fc2e] 4eb9 0003 8e52            jsr        $00038E52
[0003fc34] 5283                      addq.l     #1,d3
[0003fc36] b6ab 0090                 cmp.l      144(a3),d3
[0003fc3a] 6db2                      blt.s      $0003FBEE
[0003fc3c] 93c9                      suba.l     a1,a1
[0003fc3e] 7006                      moveq.l    #6,d0
[0003fc40] 206a 0014                 movea.l    20(a2),a0
[0003fc44] 4eb9 0003 8e52            jsr        $00038E52
[0003fc4a] 93c9                      suba.l     a1,a1
[0003fc4c] 303c 00e6                 move.w     #$00E6,d0
[0003fc50] 206a 0014                 movea.l    20(a2),a0
[0003fc54] 4eb9 0003 8e52            jsr        $00038E52
[0003fc5a] 7001                      moveq.l    #1,d0
[0003fc5c] 4fef 0202                 lea.l      514(a7),a7
[0003fc60] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0003fc64] 4e75                      rts
full_list:
[0003fc66] 48e7 0038                 movem.l    a2-a4,-(a7)
[0003fc6a] 2448                      movea.l    a0,a2
[0003fc6c] 47ea 0024                 lea.l      36(a2),a3
[0003fc70] 49ea 002c                 lea.l      44(a2),a4
[0003fc74] 7001                      moveq.l    #1,d0
[0003fc76] c06a 0056                 and.w      86(a2),d0
[0003fc7a] 6724                      beq.s      $0003FCA0
[0003fc7c] 3694                      move.w     (a4),(a3)
[0003fc7e] 376c 0002 0002            move.w     2(a4),2(a3)
[0003fc84] 376c 0004 0004            move.w     4(a4),4(a3)
[0003fc8a] 376c 0006 0006            move.w     6(a4),6(a3)
[0003fc90] 224c                      movea.l    a4,a1
[0003fc92] 4eb9 0004 084e            jsr        $0004084E
[0003fc98] 026a fffe 0056            andi.w     #$FFFE,86(a2)
[0003fc9e] 602a                      bra.s      $0003FCCA
[0003fca0] 3893                      move.w     (a3),(a4)
[0003fca2] 396b 0002 0002            move.w     2(a3),2(a4)
[0003fca8] 396b 0004 0004            move.w     4(a3),4(a4)
[0003fcae] 396b 0006 0006            move.w     6(a3),6(a4)
[0003fcb4] 2279 0010 1f12            movea.l    ACSblk,a1
[0003fcba] 5049                      addq.w     #8,a1
[0003fcbc] 204a                      movea.l    a2,a0
[0003fcbe] 4eb9 0004 084e            jsr        $0004084E
[0003fcc4] 006a 0001 0056            ori.w      #$0001,86(a2)
[0003fcca] 3f2b 0006                 move.w     6(a3),-(a7)
[0003fcce] 3f2b 0004                 move.w     4(a3),-(a7)
[0003fcd2] 3f2b 0002                 move.w     2(a3),-(a7)
[0003fcd6] 3f13                      move.w     (a3),-(a7)
[0003fcd8] 7205                      moveq.l    #5,d1
[0003fcda] 302a 0020                 move.w     32(a2),d0
[0003fcde] 4eb9 0007 1656            jsr        $00071656
[0003fce4] 504f                      addq.w     #8,a7
[0003fce6] 4eb9 0004 6d70            jsr        $00046D70
[0003fcec] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0003fcf0] 4e75                      rts
selline:
[0003fcf2] 2f0a                      move.l     a2,-(a7)
[0003fcf4] 2f0b                      move.l     a3,-(a7)
[0003fcf6] 4fef fff0                 lea.l      -16(a7),a7
[0003fcfa] 2448                      movea.l    a0,a2
[0003fcfc] 2f40 000c                 move.l     d0,12(a7)
[0003fd00] 2649                      movea.l    a1,a3
[0003fd02] 4a80                      tst.l      d0
[0003fd04] 6a12                      bpl.s      $0003FD18
[0003fd06] 43ef 000c                 lea.l      12(a7),a1
[0003fd0a] 303c 00e9                 move.w     #$00E9,d0
[0003fd0e] 4eb9 0003 8e52            jsr        $00038E52
[0003fd14] 53af 000c                 subq.l     #1,12(a7)
[0003fd18] 202f 000c                 move.l     12(a7),d0
[0003fd1c] 2740 0008                 move.l     d0,8(a3)
[0003fd20] 2680                      move.l     d0,(a3)
[0003fd22] 2e80                      move.l     d0,(a7)
[0003fd24] 43d7                      lea.l      (a7),a1
[0003fd26] 204a                      movea.l    a2,a0
[0003fd28] 303c 00ca                 move.w     #$00CA,d0
[0003fd2c] 4eb9 0003 8e52            jsr        $00038E52
[0003fd32] 42ab 0004                 clr.l      4(a3)
[0003fd36] 276f 0004 000c            move.l     4(a7),12(a3)
[0003fd3c] 4fef 0010                 lea.l      16(a7),a7
[0003fd40] 265f                      movea.l    (a7)+,a3
[0003fd42] 245f                      movea.l    (a7)+,a2
[0003fd44] 4e75                      rts
key_list:
[0003fd46] 48e7 181c                 movem.l    d3-d4/a3-a5,-(a7)
[0003fd4a] 4fef fff0                 lea.l      -16(a7),a7
[0003fd4e] 2648                      movea.l    a0,a3
[0003fd50] 3800                      move.w     d0,d4
[0003fd52] 3601                      move.w     d1,d3
[0003fd54] 43f9 000c 963e            lea.l      $000C963E,a1
[0003fd5a] 41d7                      lea.l      (a7),a0
[0003fd5c] 740f                      moveq.l    #15,d2
[0003fd5e] 10d9                      move.b     (a1)+,(a0)+
[0003fd60] 51ca fffc                 dbf        d2,$0003FD5E
[0003fd64] 2853                      movea.l    (a3),a4
[0003fd66] b63c 000e                 cmp.b      #$0E,d3
[0003fd6a] 660e                      bne.s      $0003FD7A
[0003fd6c] 2054                      movea.l    (a4),a0
[0003fd6e] 226c 00b4                 movea.l    180(a4),a1
[0003fd72] 7004                      moveq.l    #4,d0
[0003fd74] 4e91                      jsr        (a1)
[0003fd76] 6000 0128                 bra        $0003FEA0
[0003fd7a] 202c 0090                 move.l     144(a4),d0
[0003fd7e] 6700 00d8                 beq        $0003FE58
[0003fd82] 2079 0010 1f12            movea.l    ACSblk,a0
[0003fd88] 214b 0258                 move.l     a3,600(a0)
[0003fd8c] 2a6b 0014                 movea.l    20(a3),a5
[0003fd90] 43d7                      lea.l      (a7),a1
[0003fd92] 303c 00e3                 move.w     #$00E3,d0
[0003fd96] 204d                      movea.l    a5,a0
[0003fd98] 4eb9 0003 8e52            jsr        $00038E52
[0003fd9e] 1003                      move.b     d3,d0
[0003fda0] 4880                      ext.w      d0
[0003fda2] b07c 000f                 cmp.w      #$000F,d0
[0003fda6] 6200 00a2                 bhi        $0003FE4A
[0003fdaa] d040                      add.w      d0,d0
[0003fdac] 303b 0006                 move.w     $0003FDB4(pc,d0.w),d0
[0003fdb0] 4efb 0002                 jmp        $0003FDB4(pc,d0.w)
J33:
[0003fdb4] 0096                      dc.w $0096   ; $0003fe4a-$0003fdb4
[0003fdb6] 0020                      dc.w $0020   ; $0003fdd4-$0003fdb4
[0003fdb8] 002e                      dc.w $002e   ; $0003fde2-$0003fdb4
[0003fdba] 0096                      dc.w $0096   ; $0003fe4a-$0003fdb4
[0003fdbc] 0096                      dc.w $0096   ; $0003fe4a-$0003fdb4
[0003fdbe] 0096                      dc.w $0096   ; $0003fe4a-$0003fdb4
[0003fdc0] 0096                      dc.w $0096   ; $0003fe4a-$0003fdb4
[0003fdc2] 0096                      dc.w $0096   ; $0003fe4a-$0003fdb4
[0003fdc4] 0096                      dc.w $0096   ; $0003fe4a-$0003fdb4
[0003fdc6] 0096                      dc.w $0096   ; $0003fe4a-$0003fdb4
[0003fdc8] 0096                      dc.w $0096   ; $0003fe4a-$0003fdb4
[0003fdca] 0096                      dc.w $0096   ; $0003fe4a-$0003fdb4
[0003fdcc] 0062                      dc.w $0062   ; $0003fe16-$0003fdb4
[0003fdce] 0076                      dc.w $0076   ; $0003fe2a-$0003fdb4
[0003fdd0] 0096                      dc.w $0096   ; $0003fe4a-$0003fdb4
[0003fdd2] 0082                      dc.w $0082   ; $0003fe36-$0003fdb4
[0003fdd4] 2017                      move.l     (a7),d0
[0003fdd6] 6f32                      ble.s      $0003FE0A
[0003fdd8] 5397                      subq.l     #1,(a7)
[0003fdda] 53af 0008                 subq.l     #1,8(a7)
[0003fdde] 6000 0096                 bra        $0003FE76
[0003fde2] 2017                      move.l     (a7),d0
[0003fde4] 6b38                      bmi.s      $0003FE1E
[0003fde6] 72ff                      moveq.l    #-1,d1
[0003fde8] d2ac 0090                 add.l      144(a4),d1
[0003fdec] b081                      cmp.l      d1,d0
[0003fdee] 6c2e                      bge.s      $0003FE1E
[0003fdf0] 5297                      addq.l     #1,(a7)
[0003fdf2] 2017                      move.l     (a7),d0
[0003fdf4] b0ac 0090                 cmp.l      144(a4),d0
[0003fdf8] 6c24                      bge.s      $0003FE1E
[0003fdfa] 52af 0008                 addq.l     #1,8(a7)
[0003fdfe] 202f 0008                 move.l     8(a7),d0
[0003fe02] b0ac 0090                 cmp.l      144(a4),d0
[0003fe06] 6d00 006e                 blt.w      $0003FE76
[0003fe0a] 43d7                      lea.l      (a7),a1
[0003fe0c] 70ff                      moveq.l    #-1,d0
[0003fe0e] 204d                      movea.l    a5,a0
[0003fe10] 6100 fee0                 bsr        $0003FCF2
[0003fe14] 6060                      bra.s      $0003FE76
[0003fe16] 3003                      move.w     d3,d0
[0003fe18] c07c 0300                 and.w      #$0300,d0
[0003fe1c] 66ec                      bne.s      $0003FE0A
[0003fe1e] 43d7                      lea.l      (a7),a1
[0003fe20] 7000                      moveq.l    #0,d0
[0003fe22] 204d                      movea.l    a5,a0
[0003fe24] 6100 fecc                 bsr        $0003FCF2
[0003fe28] 604c                      bra.s      $0003FE76
[0003fe2a] 2017                      move.l     (a7),d0
[0003fe2c] 6b1c                      bmi.s      $0003FE4A
[0003fe2e] 4eb9 0004 0336            jsr        $00040336
[0003fe34] 604e                      bra.s      $0003FE84
[0003fe36] 2017                      move.l     (a7),d0
[0003fe38] 6b10                      bmi.s      $0003FE4A
[0003fe3a] 93c9                      suba.l     a1,a1
[0003fe3c] 204d                      movea.l    a5,a0
[0003fe3e] 303c 00e2                 move.w     #$00E2,d0
[0003fe42] 4eb9 0003 8e52            jsr        $00038E52
[0003fe48] 603a                      bra.s      $0003FE84
[0003fe4a] 2054                      movea.l    (a4),a0
[0003fe4c] 3003                      move.w     d3,d0
[0003fe4e] 226c 00b0                 movea.l    176(a4),a1
[0003fe52] 4e91                      jsr        (a1)
[0003fe54] 2e80                      move.l     d0,(a7)
[0003fe56] 6a0e                      bpl.s      $0003FE66
[0003fe58] 3203                      move.w     d3,d1
[0003fe5a] 3004                      move.w     d4,d0
[0003fe5c] 204b                      movea.l    a3,a0
[0003fe5e] 4eb9 0005 ef2c            jsr        $0005EF2C
[0003fe64] 603c                      bra.s      $0003FEA2
[0003fe66] 2017                      move.l     (a7),d0
[0003fe68] b0ac 0090                 cmp.l      144(a4),d0
[0003fe6c] 6c9c                      bge.s      $0003FE0A
[0003fe6e] 43d7                      lea.l      (a7),a1
[0003fe70] 204d                      movea.l    a5,a0
[0003fe72] 6100 fe7e                 bsr        $0003FCF2
[0003fe76] 43d7                      lea.l      (a7),a1
[0003fe78] 303c 00e4                 move.w     #$00E4,d0
[0003fe7c] 204d                      movea.l    a5,a0
[0003fe7e] 4eb9 0003 8e52            jsr        $00038E52
[0003fe84] 93c9                      suba.l     a1,a1
[0003fe86] 303c 00db                 move.w     #$00DB,d0
[0003fe8a] 204d                      movea.l    a5,a0
[0003fe8c] 4eb9 0003 8e52            jsr        $00038E52
[0003fe92] 93c9                      suba.l     a1,a1
[0003fe94] 303c 00e6                 move.w     #$00E6,d0
[0003fe98] 204d                      movea.l    a5,a0
[0003fe9a] 4eb9 0003 8e52            jsr        $00038E52
[0003fea0] 70ff                      moveq.l    #-1,d0
[0003fea2] 4fef 0010                 lea.l      16(a7),a7
[0003fea6] 4cdf 3818                 movem.l    (a7)+,d3-d4/a3-a5
[0003feaa] 4e75                      rts
list_acc:
[0003feac] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0003feb0] 4243                      clr.w      d3
[0003feb2] 45f9 0010 1f12            lea.l      ACSblk,a2
[0003feb8] 2052                      movea.l    (a2),a0
[0003feba] 3028 0246                 move.w     582(a0),d0
[0003febe] 6700 0088                 beq        $0003FF48
[0003fec2] 2268 0258                 movea.l    600(a0),a1
[0003fec6] 2651                      movea.l    (a1),a3
[0003fec8] 4eb9 0004 4840            jsr        $00044840
[0003fece] 6060                      bra.s      $0003FF30
[0003fed0] 3004                      move.w     d4,d0
[0003fed2] c07c 1000                 and.w      #$1000,d0
[0003fed6] 6720                      beq.s      $0003FEF8
[0003fed8] 3404                      move.w     d4,d2
[0003feda] c47c 0fff                 and.w      #$0FFF,d2
[0003fede] 48c2                      ext.l      d2
[0003fee0] 2202                      move.l     d2,d1
[0003fee2] d281                      add.l      d1,d1
[0003fee4] d282                      add.l      d2,d1
[0003fee6] e789                      lsl.l      #3,d1
[0003fee8] 2052                      movea.l    (a2),a0
[0003feea] 2268 0240                 movea.l    576(a0),a1
[0003feee] 2869 0018                 movea.l    24(a1),a4
[0003fef2] 49f4 1818                 lea.l      24(a4,d1.l),a4
[0003fef6] 601a                      bra.s      $0003FF12
[0003fef8] 3204                      move.w     d4,d1
[0003fefa] 48c1                      ext.l      d1
[0003fefc] 2001                      move.l     d1,d0
[0003fefe] d080                      add.l      d0,d0
[0003ff00] d081                      add.l      d1,d0
[0003ff02] e788                      lsl.l      #3,d0
[0003ff04] 2052                      movea.l    (a2),a0
[0003ff06] 2268 0240                 movea.l    576(a0),a1
[0003ff0a] 2869 0014                 movea.l    20(a1),a4
[0003ff0e] 49f4 0818                 lea.l      24(a4,d0.l),a4
[0003ff12] 2253                      movea.l    (a3),a1
[0003ff14] 204c                      movea.l    a4,a0
[0003ff16] 2a6b 00a0                 movea.l    160(a3),a5
[0003ff1a] 4e95                      jsr        (a5)
[0003ff1c] 5340                      subq.w     #1,d0
[0003ff1e] 6610                      bne.s      $0003FF30
[0003ff20] 7601                      moveq.l    #1,d3
[0003ff22] 3004                      move.w     d4,d0
[0003ff24] 2052                      movea.l    (a2),a0
[0003ff26] 2068 0240                 movea.l    576(a0),a0
[0003ff2a] 4eb9 0004 492a            jsr        $0004492A
[0003ff30] 4eb9 0004 484c            jsr        $0004484C
[0003ff36] 3800                      move.w     d0,d4
[0003ff38] 6a96                      bpl.s      $0003FED0
[0003ff3a] 4a43                      tst.w      d3
[0003ff3c] 670a                      beq.s      $0003FF48
[0003ff3e] 2052                      movea.l    (a2),a0
[0003ff40] 2068 0258                 movea.l    600(a0),a0
[0003ff44] 6100 fc78                 bsr        $0003FBBE
[0003ff48] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0003ff4c] 4e75                      rts
list_click:
[0003ff4e] 48e7 003e                 movem.l    a2-a6,-(a7)
[0003ff52] 4fef ffdc                 lea.l      -36(a7),a7
[0003ff56] 41f9 000c 964e            lea.l      $000C964E,a0
[0003ff5c] 43ef 0014                 lea.l      20(a7),a1
[0003ff60] 700f                      moveq.l    #15,d0
[0003ff62] 12d8                      move.b     (a0)+,(a1)+
[0003ff64] 51c8 fffc                 dbf        d0,$0003FF62
[0003ff68] 41f9 000c 965e            lea.l      $000C965E,a0
[0003ff6e] 43ef 0004                 lea.l      4(a7),a1
[0003ff72] 700f                      moveq.l    #15,d0
[0003ff74] 12d8                      move.b     (a0)+,(a1)+
[0003ff76] 51c8 fffc                 dbf        d0,$0003FF74
[0003ff7a] 47f9 0010 1f12            lea.l      ACSblk,a3
[0003ff80] 2053                      movea.l    (a3),a0
[0003ff82] 2268 0258                 movea.l    600(a0),a1
[0003ff86] 2851                      movea.l    (a1),a4
[0003ff88] 202c 0090                 move.l     144(a4),d0
[0003ff8c] 6700 01f0                 beq        $0004017E
[0003ff90] 43ef 0014                 lea.l      20(a7),a1
[0003ff94] 3428 0260                 move.w     608(a0),d2
[0003ff98] 48c2                      ext.l      d2
[0003ff9a] 2202                      move.l     d2,d1
[0003ff9c] d281                      add.l      d1,d1
[0003ff9e] d282                      add.l      d2,d1
[0003ffa0] e789                      lsl.l      #3,d1
[0003ffa2] 2068 025c                 movea.l    604(a0),a0
[0003ffa6] d1c1                      adda.l     d1,a0
[0003ffa8] 303c 00e3                 move.w     #$00E3,d0
[0003ffac] 4eb9 0003 8e52            jsr        $00038E52
[0003ffb2] 202f 0014                 move.l     20(a7),d0
[0003ffb6] 6b00 0156                 bmi        $0004010E
[0003ffba] 2053                      movea.l    (a3),a0
[0003ffbc] 0c68 0002 02ca            cmpi.w     #$0002,714(a0)
[0003ffc2] 6600 014a                 bne        $0004010E
[0003ffc6] 202c 0084                 move.l     132(a4),d0
[0003ffca] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003ffd0] 2e88                      move.l     a0,(a7)
[0003ffd2] 6620                      bne.s      $0003FFF4
[0003ffd4] 2054                      movea.l    (a4),a0
[0003ffd6] 7001                      moveq.l    #1,d0
[0003ffd8] 226c 00b4                 movea.l    180(a4),a1
[0003ffdc] 4e91                      jsr        (a1)
[0003ffde] 4a40                      tst.w      d0
[0003ffe0] 6600 01be                 bne        $000401A0
[0003ffe4] 91c8                      suba.l     a0,a0
[0003ffe6] 7003                      moveq.l    #3,d0
[0003ffe8] 2253                      movea.l    (a3),a1
[0003ffea] 2269 03d6                 movea.l    982(a1),a1
[0003ffee] 4e91                      jsr        (a1)
[0003fff0] 6000 01ae                 bra        $000401A0
[0003fff4] 202c 0084                 move.l     132(a4),d0
[0003fff8] 2f00                      move.l     d0,-(a7)
[0003fffa] 202f 0018                 move.l     24(a7),d0
[0003fffe] 222c 0084                 move.l     132(a4),d1
[00040002] 4eb9 0007 76f0            jsr        $000776F0
[00040008] 226c 0094                 movea.l    148(a4),a1
[0004000c] d3c0                      adda.l     d0,a1
[0004000e] 206f 0004                 movea.l    4(a7),a0
[00040012] 201f                      move.l     (a7)+,d0
[00040014] 4eb9 0007 6f44            jsr        $00076F44
[0004001a] 2053                      movea.l    (a3),a0
[0004001c] 2268 0258                 movea.l    600(a0),a1
[00040020] 2469 0014                 movea.l    20(a1),a2
[00040024] 45ea 0030                 lea.l      48(a2),a2
[00040028] 4bea 0018                 lea.l      24(a2),a5
[0004002c] 2f14                      move.l     (a4),-(a7)
[0004002e] 2c6c 00a8                 movea.l    168(a4),a6
[00040032] 204d                      movea.l    a5,a0
[00040034] 226f 0004                 movea.l    4(a7),a1
[00040038] 4e96                      jsr        (a6)
[0004003a] 584f                      addq.w     #4,a7
[0004003c] 5340                      subq.w     #1,d0
[0004003e] 6600 00c2                 bne        $00040102
[00040042] 302d 0016                 move.w     22(a5),d0
[00040046] 6700 00ba                 beq        $00040102
[0004004a] 2053                      movea.l    (a3),a0
[0004004c] 3228 0012                 move.w     18(a0),d1
[00040050] d241                      add.w      d1,d1
[00040052] 3541 0014                 move.w     d1,20(a2)
[00040056] 2053                      movea.l    (a3),a0
[00040058] 3568 0014 0016            move.w     20(a0),22(a2)
[0004005e] 2053                      movea.l    (a3),a0
[00040060] 3028 0262                 move.w     610(a0),d0
[00040064] 2268 0258                 movea.l    600(a0),a1
[00040068] 9069 0034                 sub.w      52(a1),d0
[0004006c] 9068 0012                 sub.w      18(a0),d0
[00040070] 3540 0010                 move.w     d0,16(a2)
[00040074] 2053                      movea.l    (a3),a0
[00040076] 3228 0264                 move.w     612(a0),d1
[0004007a] 2268 0258                 movea.l    600(a0),a1
[0004007e] 9269 0036                 sub.w      54(a1),d1
[00040082] 3428 0014                 move.w     20(a0),d2
[00040086] e242                      asr.w      #1,d2
[00040088] 9242                      sub.w      d2,d1
[0004008a] 3541 0012                 move.w     d1,18(a2)
[0004008e] 026a ff7f 0008            andi.w     #$FF7F,8(a2)
[00040094] 7002                      moveq.l    #2,d0
[00040096] 2053                      movea.l    (a3),a0
[00040098] 2068 0258                 movea.l    600(a0),a0
[0004009c] 4eb9 0004 487c            jsr        $0004487C
[000400a2] 2053                      movea.l    (a3),a0
[000400a4] 3228 0264                 move.w     612(a0),d1
[000400a8] 3028 0262                 move.w     610(a0),d0
[000400ac] 4eb9 0004 557a            jsr        $0004557A
[000400b2] 7002                      moveq.l    #2,d0
[000400b4] 2053                      movea.l    (a3),a0
[000400b6] 2068 0258                 movea.l    600(a0),a0
[000400ba] 4eb9 0004 492a            jsr        $0004492A
[000400c0] 4240                      clr.w      d0
[000400c2] 3540 0016                 move.w     d0,22(a2)
[000400c6] 3540 0014                 move.w     d0,20(a2)
[000400ca] 3540 0012                 move.w     d0,18(a2)
[000400ce] 3540 0010                 move.w     d0,16(a2)
[000400d2] 006a 0080 0008            ori.w      #$0080,8(a2)
[000400d8] 202d 000c                 move.l     12(a5),d0
[000400dc] 6708                      beq.s      $000400E6
[000400de] 2040                      movea.l    d0,a0
[000400e0] 4eb9 0004 7e26            jsr        $00047E26
[000400e6] 202d 0010                 move.l     16(a5),d0
[000400ea] 6708                      beq.s      $000400F4
[000400ec] 2040                      movea.l    d0,a0
[000400ee] 4eb9 0004 7e26            jsr        $00047E26
[000400f4] 7000                      moveq.l    #0,d0
[000400f6] 2b40 0010                 move.l     d0,16(a5)
[000400fa] 2b40 000c                 move.l     d0,12(a5)
[000400fe] 426d 0016                 clr.w      22(a5)
[00040102] 2057                      movea.l    (a7),a0
[00040104] 4eb9 0004 7e26            jsr        $00047E26
[0004010a] 6000 0094                 bra        $000401A0
[0004010e] 4eb9 0003 9a96            jsr        $00039A96
[00040114] 2053                      movea.l    (a3),a0
[00040116] 3228 0260                 move.w     608(a0),d1
[0004011a] 48c1                      ext.l      d1
[0004011c] 2001                      move.l     d1,d0
[0004011e] d080                      add.l      d0,d0
[00040120] d081                      add.l      d1,d0
[00040122] e788                      lsl.l      #3,d0
[00040124] 2268 025c                 movea.l    604(a0),a1
[00040128] 3431 080a                 move.w     10(a1,d0.l),d2
[0004012c] c47c 4000                 and.w      #$4000,d2
[00040130] 676e                      beq.s      $000401A0
[00040132] 43ef 0004                 lea.l      4(a7),a1
[00040136] 2068 025c                 movea.l    604(a0),a0
[0004013a] d1c0                      adda.l     d0,a0
[0004013c] 303c 00e3                 move.w     #$00E3,d0
[00040140] 4eb9 0003 8e52            jsr        $00038E52
[00040146] 202f 0014                 move.l     20(a7),d0
[0004014a] 6b2a                      bmi.s      $00040176
[0004014c] 222f 0004                 move.l     4(a7),d1
[00040150] 6a24                      bpl.s      $00040176
[00040152] 43ef 0014                 lea.l      20(a7),a1
[00040156] 2053                      movea.l    (a3),a0
[00040158] 3028 0260                 move.w     608(a0),d0
[0004015c] 48c0                      ext.l      d0
[0004015e] 2400                      move.l     d0,d2
[00040160] d482                      add.l      d2,d2
[00040162] d480                      add.l      d0,d2
[00040164] e78a                      lsl.l      #3,d2
[00040166] 2068 025c                 movea.l    604(a0),a0
[0004016a] d1c2                      adda.l     d2,a0
[0004016c] 303c 00e4                 move.w     #$00E4,d0
[00040170] 4eb9 0003 8e52            jsr        $00038E52
[00040176] 4eb9 0004 0336            jsr        $00040336
[0004017c] 6022                      bra.s      $000401A0
[0004017e] 93c9                      suba.l     a1,a1
[00040180] 303c 00e2                 move.w     #$00E2,d0
[00040184] 2053                      movea.l    (a3),a0
[00040186] 3428 0260                 move.w     608(a0),d2
[0004018a] 48c2                      ext.l      d2
[0004018c] 2202                      move.l     d2,d1
[0004018e] d281                      add.l      d1,d1
[00040190] d282                      add.l      d2,d1
[00040192] e789                      lsl.l      #3,d1
[00040194] 2068 025c                 movea.l    604(a0),a0
[00040198] d1c1                      adda.l     d1,a0
[0004019a] 4eb9 0003 8e52            jsr        $00038E52
[000401a0] 4fef 0024                 lea.l      36(a7),a7
[000401a4] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[000401a8] 4e75                      rts
list_copy:
[000401aa] 2f0a                      move.l     a2,-(a7)
[000401ac] 4fef fff0                 lea.l      -16(a7),a7
[000401b0] 41f9 000c 966e            lea.l      $000C966E,a0
[000401b6] 43d7                      lea.l      (a7),a1
[000401b8] 700f                      moveq.l    #15,d0
[000401ba] 12d8                      move.b     (a0)+,(a1)+
[000401bc] 51c8 fffc                 dbf        d0,$000401BA
[000401c0] 2079 0010 1f12            movea.l    ACSblk,a0
[000401c6] 2268 0258                 movea.l    600(a0),a1
[000401ca] 2451                      movea.l    (a1),a2
[000401cc] 43d7                      lea.l      (a7),a1
[000401ce] 303c 00e3                 move.w     #$00E3,d0
[000401d2] 2068 0258                 movea.l    600(a0),a0
[000401d6] 2068 0014                 movea.l    20(a0),a0
[000401da] 4eb9 0003 8e52            jsr        $00038E52
[000401e0] 202a 0084                 move.l     132(a2),d0
[000401e4] 2f00                      move.l     d0,-(a7)
[000401e6] 202f 0004                 move.l     4(a7),d0
[000401ea] 222a 0084                 move.l     132(a2),d1
[000401ee] 4eb9 0007 76f0            jsr        $000776F0
[000401f4] 226a 0094                 movea.l    148(a2),a1
[000401f8] d3c0                      adda.l     d0,a1
[000401fa] 206a 0098                 movea.l    152(a2),a0
[000401fe] 201f                      move.l     (a7)+,d0
[00040200] 4eb9 0007 6f44            jsr        $00076F44
[00040206] 00aa 0000 0002 009c       ori.l      #$00000002,156(a2)
[0004020e] 93c9                      suba.l     a1,a1
[00040210] 303c 00e6                 move.w     #$00E6,d0
[00040214] 2079 0010 1f12            movea.l    ACSblk,a0
[0004021a] 2468 0258                 movea.l    600(a0),a2
[0004021e] 206a 0014                 movea.l    20(a2),a0
[00040222] 4eb9 0003 8e52            jsr        $00038E52
[00040228] 4fef 0010                 lea.l      16(a7),a7
[0004022c] 245f                      movea.l    (a7)+,a2
[0004022e] 4e75                      rts
list_cut:
[00040230] 2f0a                      move.l     a2,-(a7)
[00040232] 2f0b                      move.l     a3,-(a7)
[00040234] 4fef fff0                 lea.l      -16(a7),a7
[00040238] 41f9 000c 967e            lea.l      $000C967E,a0
[0004023e] 43d7                      lea.l      (a7),a1
[00040240] 700f                      moveq.l    #15,d0
[00040242] 12d8                      move.b     (a0)+,(a1)+
[00040244] 51c8 fffc                 dbf        d0,$00040242
[00040248] 45f9 0010 1f12            lea.l      ACSblk,a2
[0004024e] 2052                      movea.l    (a2),a0
[00040250] 2268 0258                 movea.l    600(a0),a1
[00040254] 2651                      movea.l    (a1),a3
[00040256] 43d7                      lea.l      (a7),a1
[00040258] 303c 00e3                 move.w     #$00E3,d0
[0004025c] 2068 0258                 movea.l    600(a0),a0
[00040260] 2068 0014                 movea.l    20(a0),a0
[00040264] 4eb9 0003 8e52            jsr        $00038E52
[0004026a] 202b 0084                 move.l     132(a3),d0
[0004026e] 2f00                      move.l     d0,-(a7)
[00040270] 202f 0004                 move.l     4(a7),d0
[00040274] 222b 0084                 move.l     132(a3),d1
[00040278] 4eb9 0007 76f0            jsr        $000776F0
[0004027e] 226b 0094                 movea.l    148(a3),a1
[00040282] d3c0                      adda.l     d0,a1
[00040284] 206b 0098                 movea.l    152(a3),a0
[00040288] 201f                      move.l     (a7)+,d0
[0004028a] 4eb9 0007 6f44            jsr        $00076F44
[00040290] 2017                      move.l     (a7),d0
[00040292] 2052                      movea.l    (a2),a0
[00040294] 2068 0258                 movea.l    600(a0),a0
[00040298] 6100 f836                 bsr        $0003FAD0
[0004029c] 00ab 0000 0002 009c       ori.l      #$00000002,156(a3)
[000402a4] 2052                      movea.l    (a2),a0
[000402a6] 2068 0258                 movea.l    600(a0),a0
[000402aa] 6100 f912                 bsr        $0003FBBE
[000402ae] 4fef 0010                 lea.l      16(a7),a7
[000402b2] 265f                      movea.l    (a7)+,a3
[000402b4] 245f                      movea.l    (a7)+,a2
[000402b6] 4e75                      rts
list_new:
[000402b8] 48e7 003c                 movem.l    a2-a5,-(a7)
[000402bc] 45f9 0010 1f12            lea.l      ACSblk,a2
[000402c2] 2052                      movea.l    (a2),a0
[000402c4] 2268 0258                 movea.l    600(a0),a1
[000402c8] 2651                      movea.l    (a1),a3
[000402ca] 202b 0084                 move.l     132(a3),d0
[000402ce] 4eb9 0004 7cc8            jsr        Ax_malloc
[000402d4] 2848                      movea.l    a0,a4
[000402d6] 200c                      move.l     a4,d0
[000402d8] 661c                      bne.s      $000402F6
[000402da] 2053                      movea.l    (a3),a0
[000402dc] 7001                      moveq.l    #1,d0
[000402de] 226b 00b4                 movea.l    180(a3),a1
[000402e2] 4e91                      jsr        (a1)
[000402e4] 4a40                      tst.w      d0
[000402e6] 6648                      bne.s      $00040330
[000402e8] 91c8                      suba.l     a0,a0
[000402ea] 7003                      moveq.l    #3,d0
[000402ec] 2252                      movea.l    (a2),a1
[000402ee] 2269 03d6                 movea.l    982(a1),a1
[000402f2] 4e91                      jsr        (a1)
[000402f4] 603a                      bra.s      $00040330
[000402f6] 222b 0084                 move.l     132(a3),d1
[000402fa] 4240                      clr.w      d0
[000402fc] 204c                      movea.l    a4,a0
[000402fe] 4eb9 0007 712e            jsr        $0007712E
[00040304] 2253                      movea.l    (a3),a1
[00040306] 204c                      movea.l    a4,a0
[00040308] 2a6b 00ac                 movea.l    172(a3),a5
[0004030c] 4e95                      jsr        (a5)
[0004030e] 5340                      subq.w     #1,d0
[00040310] 660c                      bne.s      $0004031E
[00040312] 224c                      movea.l    a4,a1
[00040314] 2052                      movea.l    (a2),a0
[00040316] 2068 0258                 movea.l    600(a0),a0
[0004031a] 6100 f612                 bsr        $0003F92E
[0004031e] 204c                      movea.l    a4,a0
[00040320] 4eb9 0004 7e26            jsr        $00047E26
[00040326] 2052                      movea.l    (a2),a0
[00040328] 2068 0258                 movea.l    600(a0),a0
[0004032c] 6100 f890                 bsr        $0003FBBE
[00040330] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00040334] 4e75                      rts
list_open:
[00040336] 48e7 003c                 movem.l    a2-a5,-(a7)
[0004033a] 4fef fff0                 lea.l      -16(a7),a7
[0004033e] 41f9 000c 968e            lea.l      $000C968E,a0
[00040344] 43d7                      lea.l      (a7),a1
[00040346] 700f                      moveq.l    #15,d0
[00040348] 12d8                      move.b     (a0)+,(a1)+
[0004034a] 51c8 fffc                 dbf        d0,$00040348
[0004034e] 45f9 0010 1f12            lea.l      ACSblk,a2
[00040354] 2052                      movea.l    (a2),a0
[00040356] 2268 0258                 movea.l    600(a0),a1
[0004035a] 2651                      movea.l    (a1),a3
[0004035c] 43d7                      lea.l      (a7),a1
[0004035e] 303c 00e3                 move.w     #$00E3,d0
[00040362] 2068 0258                 movea.l    600(a0),a0
[00040366] 2068 0014                 movea.l    20(a0),a0
[0004036a] 4eb9 0003 8e52            jsr        $00038E52
[00040370] 202b 0084                 move.l     132(a3),d0
[00040374] 4eb9 0004 7cc8            jsr        Ax_malloc
[0004037a] 2848                      movea.l    a0,a4
[0004037c] 200c                      move.l     a4,d0
[0004037e] 661c                      bne.s      $0004039C
[00040380] 2053                      movea.l    (a3),a0
[00040382] 7001                      moveq.l    #1,d0
[00040384] 226b 00b4                 movea.l    180(a3),a1
[00040388] 4e91                      jsr        (a1)
[0004038a] 4a40                      tst.w      d0
[0004038c] 6678                      bne.s      $00040406
[0004038e] 91c8                      suba.l     a0,a0
[00040390] 7003                      moveq.l    #3,d0
[00040392] 2252                      movea.l    (a2),a1
[00040394] 2269 03d6                 movea.l    982(a1),a1
[00040398] 4e91                      jsr        (a1)
[0004039a] 606a                      bra.s      $00040406
[0004039c] 202b 0084                 move.l     132(a3),d0
[000403a0] 2f00                      move.l     d0,-(a7)
[000403a2] 202f 0004                 move.l     4(a7),d0
[000403a6] 222b 0084                 move.l     132(a3),d1
[000403aa] 4eb9 0007 76f0            jsr        $000776F0
[000403b0] 226b 0094                 movea.l    148(a3),a1
[000403b4] d3c0                      adda.l     d0,a1
[000403b6] 204c                      movea.l    a4,a0
[000403b8] 201f                      move.l     (a7)+,d0
[000403ba] 4eb9 0007 6f44            jsr        $00076F44
[000403c0] 2253                      movea.l    (a3),a1
[000403c2] 204c                      movea.l    a4,a0
[000403c4] 2a6b 00ac                 movea.l    172(a3),a5
[000403c8] 4e95                      jsr        (a5)
[000403ca] 5340                      subq.w     #1,d0
[000403cc] 661a                      bne.s      $000403E8
[000403ce] 224c                      movea.l    a4,a1
[000403d0] 2017                      move.l     (a7),d0
[000403d2] 2052                      movea.l    (a2),a0
[000403d4] 2068 0258                 movea.l    600(a0),a0
[000403d8] 6100 f7bc                 bsr        $0003FB96
[000403dc] 2052                      movea.l    (a2),a0
[000403de] 2068 0258                 movea.l    600(a0),a0
[000403e2] 6100 f7da                 bsr        $0003FBBE
[000403e6] 6016                      bra.s      $000403FE
[000403e8] 93c9                      suba.l     a1,a1
[000403ea] 303c 00e6                 move.w     #$00E6,d0
[000403ee] 2052                      movea.l    (a2),a0
[000403f0] 2668 0258                 movea.l    600(a0),a3
[000403f4] 206b 0014                 movea.l    20(a3),a0
[000403f8] 4eb9 0003 8e52            jsr        $00038E52
[000403fe] 204c                      movea.l    a4,a0
[00040400] 4eb9 0004 7e26            jsr        $00047E26
[00040406] 4fef 0010                 lea.l      16(a7),a7
[0004040a] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0004040e] 4e75                      rts
list_paste:
[00040410] 2f0a                      move.l     a2,-(a7)
[00040412] 2079 0010 1f12            movea.l    ACSblk,a0
[00040418] 2268 0258                 movea.l    600(a0),a1
[0004041c] 2451                      movea.l    (a1),a2
[0004041e] 226a 0098                 movea.l    152(a2),a1
[00040422] 2068 0258                 movea.l    600(a0),a0
[00040426] 6100 f506                 bsr        $0003F92E
[0004042a] 2079 0010 1f12            movea.l    ACSblk,a0
[00040430] 2068 0258                 movea.l    600(a0),a0
[00040434] 6100 f788                 bsr        $0003FBBE
[00040438] 245f                      movea.l    (a7)+,a2
[0004043a] 4e75                      rts
live_list:
[0004043c] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00040440] 4fef fff0                 lea.l      -16(a7),a7
[00040444] 2448                      movea.l    a0,a2
[00040446] 4243                      clr.w      d3
[00040448] 2650                      movea.l    (a0),a3
[0004044a] 43d7                      lea.l      (a7),a1
[0004044c] 303c 00e3                 move.w     #$00E3,d0
[00040450] 206a 0014                 movea.l    20(a2),a0
[00040454] 4eb9 0003 8e52            jsr        $00038E52
[0004045a] 2017                      move.l     (a7),d0
[0004045c] 6b28                      bmi.s      $00040486
[0004045e] 7208                      moveq.l    #8,d1
[00040460] 206a 0018                 movea.l    24(a2),a0
[00040464] c268 0052                 and.w      82(a0),d1
[00040468] 6744                      beq.s      $000404AE
[0004046a] 0268 fff7 0052            andi.w     #$FFF7,82(a0)
[00040470] 206a 0018                 movea.l    24(a2),a0
[00040474] 0268 fff7 0082            andi.w     #$FFF7,130(a0)
[0004047a] 206a 0018                 movea.l    24(a2),a0
[0004047e] 0268 fff7 00b2            andi.w     #$FFF7,178(a0)
[00040484] 6026                      bra.s      $000404AC
[00040486] 7008                      moveq.l    #8,d0
[00040488] 206a 0018                 movea.l    24(a2),a0
[0004048c] c068 0052                 and.w      82(a0),d0
[00040490] 661c                      bne.s      $000404AE
[00040492] 0068 0008 0052            ori.w      #$0008,82(a0)
[00040498] 206a 0018                 movea.l    24(a2),a0
[0004049c] 0068 0008 0082            ori.w      #$0008,130(a0)
[000404a2] 206a 0018                 movea.l    24(a2),a0
[000404a6] 0068 0008 00b2            ori.w      #$0008,178(a0)
[000404ac] 7601                      moveq.l    #1,d3
[000404ae] 7002                      moveq.l    #2,d0
[000404b0] c0ab 009c                 and.l      156(a3),d0
[000404b4] 6714                      beq.s      $000404CA
[000404b6] 7208                      moveq.l    #8,d1
[000404b8] 206a 0018                 movea.l    24(a2),a0
[000404bc] c268 00e2                 and.w      226(a0),d1
[000404c0] 671c                      beq.s      $000404DE
[000404c2] 0268 fff7 00e2            andi.w     #$FFF7,226(a0)
[000404c8] 6012                      bra.s      $000404DC
[000404ca] 7008                      moveq.l    #8,d0
[000404cc] 206a 0018                 movea.l    24(a2),a0
[000404d0] c068 00e2                 and.w      226(a0),d0
[000404d4] 6608                      bne.s      $000404DE
[000404d6] 0068 0008 00e2            ori.w      #$0008,226(a0)
[000404dc] 7601                      moveq.l    #1,d3
[000404de] 4a43                      tst.w      d3
[000404e0] 670e                      beq.s      $000404F0
[000404e2] 72ff                      moveq.l    #-1,d1
[000404e4] 303c 1000                 move.w     #$1000,d0
[000404e8] 204a                      movea.l    a2,a0
[000404ea] 226a 0066                 movea.l    102(a2),a1
[000404ee] 4e91                      jsr        (a1)
[000404f0] 4fef 0010                 lea.l      16(a7),a7
[000404f4] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[000404f8] 4e75                      rts
make_list:
[000404fa] 48e7 003c                 movem.l    a2-a5,-(a7)
[000404fe] 4fef ffe8                 lea.l      -24(a7),a7
[00040502] 47ef 0008                 lea.l      8(a7),a3
[00040506] 2448                      movea.l    a0,a2
[00040508] 200a                      move.l     a2,d0
[0004050a] 6700 010a                 beq        $00040616
[0004050e] 203c 0000 1c00            move.l     #$00001C00,d0
[00040514] 222a 0090                 move.l     144(a2),d1
[00040518] 4eb9 0007 773a            jsr        $0007773A
[0004051e] 2680                      move.l     d0,(a3)
[00040520] 7202                      moveq.l    #2,d1
[00040522] b280                      cmp.l      d0,d1
[00040524] 6f02                      ble.s      $00040528
[00040526] 2681                      move.l     d1,(a3)
[00040528] 23ea 008c 000c 95f6       move.l     140(a2),$000C95F6
[00040530] 203c 0000 00c0            move.l     #$000000C0,d0
[00040536] 4eb9 0004 7cc8            jsr        Ax_malloc
[0004053c] 2848                      movea.l    a0,a4
[0004053e] 200c                      move.l     a4,d0
[00040540] 6700 00d4                 beq        $00040616
[00040544] 202a 0090                 move.l     144(a2),d0
[00040548] 2213                      move.l     (a3),d1
[0004054a] 4eb9 0007 76f0            jsr        $000776F0
[00040550] 4eb9 0004 7cc8            jsr        Ax_malloc
[00040556] 2948 0094                 move.l     a0,148(a4)
[0004055a] 6700 00ba                 beq        $00040616
[0004055e] 202a 0090                 move.l     144(a2),d0
[00040562] 4eb9 0004 7cc8            jsr        Ax_malloc
[00040568] 2948 0098                 move.l     a0,152(a4)
[0004056c] 6700 00a8                 beq        $00040616
[00040570] 43ea 0004                 lea.l      4(a2),a1
[00040574] 41ec 0004                 lea.l      4(a4),a0
[00040578] 4eb9 0007 6950            jsr        $00076950
[0004057e] 23c8 000c 95e6            move.l     a0,$000C95E6
[00040584] 2892                      move.l     (a2),(a4)
[00040586] 296a 0094 00a0            move.l     148(a2),160(a4)
[0004058c] 296a 0098 00a4            move.l     152(a2),164(a4)
[00040592] 296a 009c 00a8            move.l     156(a2),168(a4)
[00040598] 296a 00a0 00ac            move.l     160(a2),172(a4)
[0004059e] 296a 00a4 00b0            move.l     164(a2),176(a4)
[000405a4] 296a 00a8 00b4            move.l     168(a2),180(a4)
[000405aa] 296a 00ac 00b8            move.l     172(a2),184(a4)
[000405b0] 296a 00b0 00bc            move.l     176(a2),188(a4)
[000405b6] 42ac 009c                 clr.l      156(a4)
[000405ba] 296a 0090 0084            move.l     144(a2),132(a4)
[000405c0] 42ac 0090                 clr.l      144(a4)
[000405c4] 2013                      move.l     (a3),d0
[000405c6] 2940 008c                 move.l     d0,140(a4)
[000405ca] 2940 0088                 move.l     d0,136(a4)
[000405ce] 202a 0090                 move.l     144(a2),d0
[000405d2] 2213                      move.l     (a3),d1
[000405d4] 4eb9 0007 76f0            jsr        $000776F0
[000405da] 2200                      move.l     d0,d1
[000405dc] 206c 0094                 movea.l    148(a4),a0
[000405e0] 4240                      clr.w      d0
[000405e2] 4eb9 0007 712e            jsr        $0007712E
[000405e8] 41f9 000c 959c            lea.l      $000C959C,a0
[000405ee] 4eb9 0004 f41a            jsr        $0004F41A
[000405f4] 2a48                      movea.l    a0,a5
[000405f6] 200d                      move.l     a5,d0
[000405f8] 6622                      bne.s      $0004061C
[000405fa] 206c 0098                 movea.l    152(a4),a0
[000405fe] 4eb9 0004 7e26            jsr        $00047E26
[00040604] 206c 0094                 movea.l    148(a4),a0
[00040608] 4eb9 0004 7e26            jsr        $00047E26
[0004060e] 204c                      movea.l    a4,a0
[00040610] 4eb9 0004 7e26            jsr        $00047E26
[00040616] 91c8                      suba.l     a0,a0
[00040618] 6000 010e                 bra        $00040728
[0004061c] 302a 008a                 move.w     138(a2),d0
[00040620] 6f64                      ble.s      $00040686
[00040622] 322a 0088                 move.w     136(a2),d1
[00040626] 6f5e                      ble.s      $00040686
[00040628] 43ea 0084                 lea.l      132(a2),a1
[0004062c] 41ed 0024                 lea.l      36(a5),a0
[00040630] 7008                      moveq.l    #8,d0
[00040632] 4eb9 0007 6f44            jsr        $00076F44
[00040638] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0004063e] 206d 0014                 movea.l    20(a5),a0
[00040642] 4868 0016                 pea.l      22(a0)
[00040646] 4868 0014                 pea.l      20(a0)
[0004064a] 3f2d 002a                 move.w     42(a5),-(a7)
[0004064e] 3f2d 0028                 move.w     40(a5),-(a7)
[00040652] 3f2d 0026                 move.w     38(a5),-(a7)
[00040656] 43ef 001e                 lea.l      30(a7),a1
[0004065a] 41ef 001e                 lea.l      30(a7),a0
[0004065e] 342d 0024                 move.w     36(a5),d2
[00040662] 322d 0022                 move.w     34(a5),d1
[00040666] 7001                      moveq.l    #1,d0
[00040668] 4eb9 0006 d60a            jsr        $0006D60A
[0004066e] 4fef 0012                 lea.l      18(a7),a7
[00040672] 202d 0018                 move.l     24(a5),d0
[00040676] 670e                      beq.s      $00040686
[00040678] 2040                      movea.l    d0,a0
[0004067a] 3228 0016                 move.w     22(a0),d1
[0004067e] 226d 0014                 movea.l    20(a5),a1
[00040682] 9369 0016                 sub.w      d1,22(a1)
[00040686] 2a8c                      move.l     a4,(a5)
[00040688] 286d 0014                 movea.l    20(a5),a4
[0004068c] 93c9                      suba.l     a1,a1
[0004068e] 303c 00dd                 move.w     #$00DD,d0
[00040692] 204c                      movea.l    a4,a0
[00040694] 4eb9 0003 8e52            jsr        $00038E52
[0004069a] 26bc 000f 423f            move.l     #$000F423F,(a3)
[000406a0] 224b                      movea.l    a3,a1
[000406a2] 303c 00cd                 move.w     #$00CD,d0
[000406a6] 204c                      movea.l    a4,a0
[000406a8] 4eb9 0003 8e52            jsr        $00038E52
[000406ae] 26bc 0000 0200            move.l     #$00000200,(a3)
[000406b4] 224b                      movea.l    a3,a1
[000406b6] 303c 00d2                 move.w     #$00D2,d0
[000406ba] 204c                      movea.l    a4,a0
[000406bc] 4eb9 0003 8e52            jsr        $00038E52
[000406c2] 93c9                      suba.l     a1,a1
[000406c4] 700e                      moveq.l    #14,d0
[000406c6] 204c                      movea.l    a4,a0
[000406c8] 4eb9 0003 8e52            jsr        $00038E52
[000406ce] 93c9                      suba.l     a1,a1
[000406d0] 303c 00fd                 move.w     #$00FD,d0
[000406d4] 204c                      movea.l    a4,a0
[000406d6] 4eb9 0003 8e52            jsr        $00038E52
[000406dc] 2f4d 000e                 move.l     a5,14(a7)
[000406e0] 206d 0014                 movea.l    20(a5),a0
[000406e4] 41e8 0060                 lea.l      96(a0),a0
[000406e8] 2f48 0012                 move.l     a0,18(a7)
[000406ec] 3f7c 0004 0016            move.w     #$0004,22(a7)
[000406f2] 43ef 000e                 lea.l      14(a7),a1
[000406f6] 303c 00c8                 move.w     #$00C8,d0
[000406fa] 204c                      movea.l    a4,a0
[000406fc] 4eb9 0003 8e52            jsr        $00038E52
[00040702] 2ebc 0004 043c            move.l     #$0004043C,(a7)
[00040708] 2f4d 0004                 move.l     a5,4(a7)
[0004070c] 43d7                      lea.l      (a7),a1
[0004070e] 303c 00e5                 move.w     #$00E5,d0
[00040712] 204c                      movea.l    a4,a0
[00040714] 4eb9 0003 8e52            jsr        $00038E52
[0004071a] 93c9                      suba.l     a1,a1
[0004071c] 7006                      moveq.l    #6,d0
[0004071e] 204c                      movea.l    a4,a0
[00040720] 4eb9 0003 8e52            jsr        $00038E52
[00040726] 204d                      movea.l    a5,a0
[00040728] 4fef 0018                 lea.l      24(a7),a7
[0004072c] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00040730] 4e75                      rts
serv_list:
[00040732] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00040736] 2448                      movea.l    a0,a2
[00040738] 3600                      move.w     d0,d3
[0004073a] 2849                      movea.l    a1,a4
[0004073c] 2650                      movea.l    (a0),a3
[0004073e] b07c 0193                 cmp.w      #$0193,d0
[00040742] 6700 00ae                 beq        $000407F2
[00040746] 6e2a                      bgt.s      $00040772
[00040748] b07c 0190                 cmp.w      #$0190,d0
[0004074c] 6700 008c                 beq        $000407DA
[00040750] 6e0e                      bgt.s      $00040760
[00040752] 5540                      subq.w     #2,d0
[00040754] 673a                      beq.s      $00040790
[00040756] 907c 000d                 sub.w      #$000D,d0
[0004075a] 6770                      beq.s      $000407CC
[0004075c] 6000 00da                 bra        $00040838
[00040760] 907c 0191                 sub.w      #$0191,d0
[00040764] 6700 007c                 beq.w      $000407E2
[00040768] 5340                      subq.w     #1,d0
[0004076a] 6700 007c                 beq.w      $000407E8
[0004076e] 6000 00c8                 bra        $00040838
[00040772] 907c 0194                 sub.w      #$0194,d0
[00040776] 6700 0084                 beq        $000407FC
[0004077a] 5340                      subq.w     #1,d0
[0004077c] 6700 008e                 beq        $0004080C
[00040780] 5340                      subq.w     #1,d0
[00040782] 6700 009a                 beq        $0004081E
[00040786] 5340                      subq.w     #1,d0
[00040788] 6700 00a4                 beq        $0004082E
[0004078c] 6000 00aa                 bra        $00040838
[00040790] 2053                      movea.l    (a3),a0
[00040792] 226b 00bc                 movea.l    188(a3),a1
[00040796] 4e91                      jsr        (a1)
[00040798] 4a40                      tst.w      d0
[0004079a] 6612                      bne.s      $000407AE
[0004079c] 2079 0010 1f12            movea.l    ACSblk,a0
[000407a2] 3028 023a                 move.w     570(a0),d0
[000407a6] 6606                      bne.s      $000407AE
[000407a8] 4240                      clr.w      d0
[000407aa] 6000 009c                 bra        $00040848
[000407ae] 206b 0094                 movea.l    148(a3),a0
[000407b2] 4eb9 0004 7e26            jsr        $00047E26
[000407b8] 204b                      movea.l    a3,a0
[000407ba] 4eb9 0004 7e26            jsr        $00047E26
[000407c0] 204a                      movea.l    a2,a0
[000407c2] 4eb9 0005 0330            jsr        $00050330
[000407c8] 6000 007c                 bra.w      $00040846
[000407cc] 2053                      movea.l    (a3),a0
[000407ce] 7004                      moveq.l    #4,d0
[000407d0] 226b 00b4                 movea.l    180(a3),a1
[000407d4] 4e91                      jsr        (a1)
[000407d6] 6000 006e                 bra.w      $00040846
[000407da] 204a                      movea.l    a2,a0
[000407dc] 6100 f3e0                 bsr        $0003FBBE
[000407e0] 6066                      bra.s      $00040848
[000407e2] 28ab 0090                 move.l     144(a3),(a4)
[000407e6] 605e                      bra.s      $00040846
[000407e8] 224c                      movea.l    a4,a1
[000407ea] 204a                      movea.l    a2,a0
[000407ec] 6100 f140                 bsr        $0003F92E
[000407f0] 6056                      bra.s      $00040848
[000407f2] 2014                      move.l     (a4),d0
[000407f4] 204a                      movea.l    a2,a0
[000407f6] 6100 f2d8                 bsr        $0003FAD0
[000407fa] 604c                      bra.s      $00040848
[000407fc] 2a4c                      movea.l    a4,a5
[000407fe] 226d 0004                 movea.l    4(a5),a1
[00040802] 2015                      move.l     (a5),d0
[00040804] 204a                      movea.l    a2,a0
[00040806] 6100 f342                 bsr        $0003FB4A
[0004080a] 603c                      bra.s      $00040848
[0004080c] 7001                      moveq.l    #1,d0
[0004080e] c0ab 009c                 and.l      156(a3),d0
[00040812] 6706                      beq.s      $0004081A
[00040814] 38bc 0001                 move.w     #$0001,(a4)
[00040818] 602c                      bra.s      $00040846
[0004081a] 4254                      clr.w      (a4)
[0004081c] 6028                      bra.s      $00040846
[0004081e] 2a4c                      movea.l    a4,a5
[00040820] 226d 0004                 movea.l    4(a5),a1
[00040824] 2015                      move.l     (a5),d0
[00040826] 204a                      movea.l    a2,a0
[00040828] 6100 f36c                 bsr        $0003FB96
[0004082c] 601a                      bra.s      $00040848
[0004082e] 02ab ffff fffe 009c       andi.l     #$FFFFFFFE,156(a3)
[00040836] 600e                      bra.s      $00040846
[00040838] 224c                      movea.l    a4,a1
[0004083a] 3003                      move.w     d3,d0
[0004083c] 204a                      movea.l    a2,a0
[0004083e] 4eb9 0005 1276            jsr        $00051276
[00040844] 6002                      bra.s      $00040848
[00040846] 7001                      moveq.l    #1,d0
[00040848] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0004084c] 4e75                      rts
size_list:
[0004084e] 48e7 003c                 movem.l    a2-a5,-(a7)
[00040852] 594f                      subq.w     #4,a7
[00040854] 2648                      movea.l    a0,a3
[00040856] 2449                      movea.l    a1,a2
[00040858] 41f9 0010 1f12            lea.l      ACSblk,a0
[0004085e] 302a 0004                 move.w     4(a2),d0
[00040862] 2250                      movea.l    (a0),a1
[00040864] 3429 0012                 move.w     18(a1),d2
[00040868] 3202                      move.w     d2,d1
[0004086a] e549                      lsl.w      #2,d1
[0004086c] d242                      add.w      d2,d1
[0004086e] b041                      cmp.w      d1,d0
[00040870] 6c04                      bge.s      $00040876
[00040872] 3541 0004                 move.w     d1,4(a2)
[00040876] 302a 0006                 move.w     6(a2),d0
[0004087a] 2250                      movea.l    (a0),a1
[0004087c] 3429 0014                 move.w     20(a1),d2
[00040880] 3202                      move.w     d2,d1
[00040882] e549                      lsl.w      #2,d1
[00040884] d242                      add.w      d2,d1
[00040886] b041                      cmp.w      d1,d0
[00040888] 6c04                      bge.s      $0004088E
[0004088a] 3541 0006                 move.w     d1,6(a2)
[0004088e] 286b 0014                 movea.l    20(a3),a4
[00040892] 2a6b 005e                 movea.l    94(a3),a5
[00040896] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0004089c] 486c 0016                 pea.l      22(a4)
[000408a0] 486c 0014                 pea.l      20(a4)
[000408a4] 3f2a 0006                 move.w     6(a2),-(a7)
[000408a8] 3f2a 0004                 move.w     4(a2),-(a7)
[000408ac] 4267                      clr.w      -(a7)
[000408ae] 43ef 0012                 lea.l      18(a7),a1
[000408b2] 41ef 0014                 lea.l      20(a7),a0
[000408b6] 4242                      clr.w      d2
[000408b8] 322b 0022                 move.w     34(a3),d1
[000408bc] 7001                      moveq.l    #1,d0
[000408be] 4eb9 0006 d60a            jsr        $0006D60A
[000408c4] 4fef 0012                 lea.l      18(a7),a7
[000408c8] 7007                      moveq.l    #7,d0
[000408ca] d052                      add.w      (a2),d0
[000408cc] c07c fff7                 and.w      #$FFF7,d0
[000408d0] 906f 0002                 sub.w      2(a7),d0
[000408d4] 3480                      move.w     d0,(a2)
[000408d6] 220d                      move.l     a5,d1
[000408d8] 6716                      beq.s      $000408F0
[000408da] 302d 0002                 move.w     2(a5),d0
[000408de] 48c0                      ext.l      d0
[000408e0] 2400                      move.l     d0,d2
[000408e2] d482                      add.l      d2,d2
[000408e4] d480                      add.l      d0,d2
[000408e6] e78a                      lsl.l      #3,d2
[000408e8] 3235 2816                 move.w     22(a5,d2.l),d1
[000408ec] 936c 0016                 sub.w      d1,22(a4)
[000408f0] 202b 0018                 move.l     24(a3),d0
[000408f4] 670a                      beq.s      $00040900
[000408f6] 2040                      movea.l    d0,a0
[000408f8] 3228 0016                 move.w     22(a0),d1
[000408fc] 936c 0016                 sub.w      d1,22(a4)
[00040900] 93c9                      suba.l     a1,a1
[00040902] 303c 00ee                 move.w     #$00EE,d0
[00040906] 204c                      movea.l    a4,a0
[00040908] 4eb9 0003 8e52            jsr        $00038E52
[0004090e] 93c9                      suba.l     a1,a1
[00040910] 303c 00fd                 move.w     #$00FD,d0
[00040914] 204c                      movea.l    a4,a0
[00040916] 4eb9 0003 8e52            jsr        $00038E52
[0004091c] 224a                      movea.l    a2,a1
[0004091e] 204b                      movea.l    a3,a0
[00040920] 4eb9 0005 06ca            jsr        $000506CA
[00040926] 584f                      addq.w     #4,a7
[00040928] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0004092c] 4e75                      rts
vslide_list:
[0004092e] 48e7 0038                 movem.l    a2-a4,-(a7)
[00040932] 554f                      subq.w     #2,a7
[00040934] 3e80                      move.w     d0,(a7)
[00040936] 2468 0014                 movea.l    20(a0),a2
[0004093a] 45ea 0060                 lea.l      96(a2),a2
[0004093e] 266a 000c                 movea.l    12(a2),a3
[00040942] 43d7                      lea.l      (a7),a1
[00040944] 204a                      movea.l    a2,a0
[00040946] 286b 0008                 movea.l    8(a3),a4
[0004094a] 706a                      moveq.l    #106,d0
[0004094c] 4e94                      jsr        (a4)
[0004094e] 93c9                      suba.l     a1,a1
[00040950] 7005                      moveq.l    #5,d0
[00040952] 204a                      movea.l    a2,a0
[00040954] 286b 0008                 movea.l    8(a3),a4
[00040958] 4e94                      jsr        (a4)
[0004095a] 93c9                      suba.l     a1,a1
[0004095c] 7069                      moveq.l    #105,d0
[0004095e] 204a                      movea.l    a2,a0
[00040960] 286b 0008                 movea.l    8(a3),a4
[00040964] 4e94                      jsr        (a4)
[00040966] 544f                      addq.w     #2,a7
[00040968] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0004096c] 4e75                      rts
