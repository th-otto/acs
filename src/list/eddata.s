add_data:
[000329b4] 48e7 003c                 movem.l    a2-a5,-(a7)
[000329b8] 2448                      movea.l    a0,a2
[000329ba] 2849                      movea.l    a1,a4
[000329bc] 266a 0044                 movea.l    68(a2),a3
[000329c0] 006a 0001 0006            ori.w      #$0001,6(a2)
[000329c6] 3039 0007 8250            move.w     $00078250,d0
[000329cc] 6718                      beq.s      $000329E6
[000329ce] 43ec 0016                 lea.l      22(a4),a1
[000329d2] 204b                      movea.l    a3,a0
[000329d4] 4eb9 0003 1a5c            jsr        $00031A5C
[000329da] b9c8                      cmpa.l     a0,a4
[000329dc] 6608                      bne.s      $000329E6
[000329de] 526c 0036                 addq.w     #1,54(a4)
[000329e2] 204c                      movea.l    a4,a0
[000329e4] 6044                      bra.s      $00032A2A
[000329e6] 7004                      moveq.l    #4,d0
[000329e8] 204b                      movea.l    a3,a0
[000329ea] 4eb9 0001 62aa            jsr        $000162AA
[000329f0] 4a40                      tst.w      d0
[000329f2] 6610                      bne.s      $00032A04
[000329f4] 224c                      movea.l    a4,a1
[000329f6] 204a                      movea.l    a2,a0
[000329f8] 4eb9 0003 2a30            jsr        $00032A30
[000329fe] 2a48                      movea.l    a0,a5
[00032a00] 200d                      move.l     a5,d0
[00032a02] 6604                      bne.s      $00032A08
[00032a04] 91c8                      suba.l     a0,a0
[00032a06] 6022                      bra.s      $00032A2A
[00032a08] 2f39 000c 1aac            move.l     $000C1AAC,-(a7)
[00032a0e] 486c 0016                 pea.l      22(a4)
[00032a12] 224d                      movea.l    a5,a1
[00032a14] 204a                      movea.l    a2,a0
[00032a16] 4eb9 0001 6448            jsr        $00016448
[00032a1c] 504f                      addq.w     #8,a7
[00032a1e] 224d                      movea.l    a5,a1
[00032a20] 204b                      movea.l    a3,a0
[00032a22] 4eb9 0003 1a94            jsr        $00031A94
[00032a28] 204d                      movea.l    a5,a0
[00032a2a] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00032a2e] 4e75                      rts
copy_data:
[00032a30] 48e7 003c                 movem.l    a2-a5,-(a7)
[00032a34] 2648                      movea.l    a0,a3
[00032a36] 2449                      movea.l    a1,a2
[00032a38] 202a 000e                 move.l     14(a2),d0
[00032a3c] 4eb9 0001 6230            jsr        $00016230
[00032a42] 2648                      movea.l    a0,a3
[00032a44] 200b                      move.l     a3,d0
[00032a46] 6604                      bne.s      $00032A4C
[00032a48] 91c8                      suba.l     a0,a0
[00032a4a] 601e                      bra.s      $00032A6A
[00032a4c] 276a 000e 000e            move.l     14(a2),14(a3)
[00032a52] 286a 0004                 movea.l    4(a2),a4
[00032a56] 2a6b 0004                 movea.l    4(a3),a5
[00032a5a] 202a 000e                 move.l     14(a2),d0
[00032a5e] 224c                      movea.l    a4,a1
[00032a60] 204d                      movea.l    a5,a0
[00032a62] 4eb9 0007 6f44            jsr        $00076F44
[00032a68] 204b                      movea.l    a3,a0
[00032a6a] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00032a6e] 4e75                      rts
dup_data:
[00032a70] 2f0a                      move.l     a2,-(a7)
[00032a72] 2f0b                      move.l     a3,-(a7)
[00032a74] 2648                      movea.l    a0,a3
[00032a76] 45f9 000c 1ac6            lea.l      $000C1AC6,a2
[00032a7c] 2549 0004                 move.l     a1,4(a2)
[00032a80] 2540 000a                 move.l     d0,10(a2)
[00032a84] 2540 000e                 move.l     d0,14(a2)
[00032a88] 224a                      movea.l    a2,a1
[00032a8a] 204b                      movea.l    a3,a0
[00032a8c] 6100 ff26                 bsr        $000329B4
[00032a90] 265f                      movea.l    (a7)+,a3
[00032a92] 245f                      movea.l    (a7)+,a2
[00032a94] 4e75                      rts
del_data:
[00032a96] 48e7 003c                 movem.l    a2-a5,-(a7)
[00032a9a] 2448                      movea.l    a0,a2
[00032a9c] 2649                      movea.l    a1,a3
[00032a9e] 006a 0001 0006            ori.w      #$0001,6(a2)
[00032aa4] 536b 0036                 subq.w     #1,54(a3)
[00032aa8] 302b 0036                 move.w     54(a3),d0
[00032aac] 6e2a                      bgt.s      $00032AD8
[00032aae] 286b 0012                 movea.l    18(a3),a4
[00032ab2] 220c                      move.l     a4,d1
[00032ab4] 670c                      beq.s      $00032AC2
[00032ab6] 2a6c 0004                 movea.l    4(a4),a5
[00032aba] 204c                      movea.l    a4,a0
[00032abc] 7002                      moveq.l    #2,d0
[00032abe] 93c9                      suba.l     a1,a1
[00032ac0] 4e95                      jsr        (a5)
[00032ac2] 224b                      movea.l    a3,a1
[00032ac4] 206a 0044                 movea.l    68(a2),a0
[00032ac8] 4eb9 0003 1b00            jsr        $00031B00
[00032ace] 224b                      movea.l    a3,a1
[00032ad0] 204a                      movea.l    a2,a0
[00032ad2] 4eb9 0001 61d4            jsr        $000161D4
[00032ad8] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00032adc] 4e75                      rts
new_work:
[00032ade] 303c 2724                 move.w     #$2724,d0
[00032ae2] 2279 0009 d01e            movea.l    $0009D01E,a1
[00032ae8] 4eb9 0003 24b6            jsr        $000324B6
[00032aee] 4e75                      rts
