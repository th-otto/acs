Adate_getMonth:
[0005fe4a] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0005fe4e] 2648                      movea.l    a0,a3
[0005fe50] 2849                      movea.l    a1,a4
[0005fe52] 4243                      clr.w      d3
[0005fe54] 45f9 000d 5152            lea.l      $000D5152,a2
[0005fe5a] 7003                      moveq.l    #3,d0
[0005fe5c] 224a                      movea.l    a2,a1
[0005fe5e] 204b                      movea.l    a3,a0
[0005fe60] 4eb9 0004 3980            jsr        $00043980
[0005fe66] 4a40                      tst.w      d0
[0005fe68] 6602                      bne.s      $0005FE6C
[0005fe6a] 7601                      moveq.l    #1,d3
[0005fe6c] 7003                      moveq.l    #3,d0
[0005fe6e] 43ea 0004                 lea.l      4(a2),a1
[0005fe72] 204b                      movea.l    a3,a0
[0005fe74] 4eb9 0004 3980            jsr        $00043980
[0005fe7a] 4a40                      tst.w      d0
[0005fe7c] 6602                      bne.s      $0005FE80
[0005fe7e] 7602                      moveq.l    #2,d3
[0005fe80] 7003                      moveq.l    #3,d0
[0005fe82] 43ea 0008                 lea.l      8(a2),a1
[0005fe86] 204b                      movea.l    a3,a0
[0005fe88] 4eb9 0004 3980            jsr        $00043980
[0005fe8e] 4a40                      tst.w      d0
[0005fe90] 6602                      bne.s      $0005FE94
[0005fe92] 7603                      moveq.l    #3,d3
[0005fe94] 7003                      moveq.l    #3,d0
[0005fe96] 43ea 000c                 lea.l      12(a2),a1
[0005fe9a] 204b                      movea.l    a3,a0
[0005fe9c] 4eb9 0004 3980            jsr        $00043980
[0005fea2] 4a40                      tst.w      d0
[0005fea4] 6602                      bne.s      $0005FEA8
[0005fea6] 7604                      moveq.l    #4,d3
[0005fea8] 7003                      moveq.l    #3,d0
[0005feaa] 43ea 0010                 lea.l      16(a2),a1
[0005feae] 204b                      movea.l    a3,a0
[0005feb0] 4eb9 0004 3980            jsr        $00043980
[0005feb6] 4a40                      tst.w      d0
[0005feb8] 6602                      bne.s      $0005FEBC
[0005feba] 7605                      moveq.l    #5,d3
[0005febc] 7003                      moveq.l    #3,d0
[0005febe] 43ea 0014                 lea.l      20(a2),a1
[0005fec2] 204b                      movea.l    a3,a0
[0005fec4] 4eb9 0004 3980            jsr        $00043980
[0005feca] 4a40                      tst.w      d0
[0005fecc] 6602                      bne.s      $0005FED0
[0005fece] 7606                      moveq.l    #6,d3
[0005fed0] 7003                      moveq.l    #3,d0
[0005fed2] 43ea 0018                 lea.l      24(a2),a1
[0005fed6] 204b                      movea.l    a3,a0
[0005fed8] 4eb9 0004 3980            jsr        $00043980
[0005fede] 4a40                      tst.w      d0
[0005fee0] 6602                      bne.s      $0005FEE4
[0005fee2] 7607                      moveq.l    #7,d3
[0005fee4] 7003                      moveq.l    #3,d0
[0005fee6] 43ea 001c                 lea.l      28(a2),a1
[0005feea] 204b                      movea.l    a3,a0
[0005feec] 4eb9 0004 3980            jsr        $00043980
[0005fef2] 4a40                      tst.w      d0
[0005fef4] 6602                      bne.s      $0005FEF8
[0005fef6] 7608                      moveq.l    #8,d3
[0005fef8] 7003                      moveq.l    #3,d0
[0005fefa] 43ea 0020                 lea.l      32(a2),a1
[0005fefe] 204b                      movea.l    a3,a0
[0005ff00] 4eb9 0004 3980            jsr        $00043980
[0005ff06] 4a40                      tst.w      d0
[0005ff08] 6602                      bne.s      $0005FF0C
[0005ff0a] 7609                      moveq.l    #9,d3
[0005ff0c] 7003                      moveq.l    #3,d0
[0005ff0e] 43ea 0024                 lea.l      36(a2),a1
[0005ff12] 204b                      movea.l    a3,a0
[0005ff14] 4eb9 0004 3980            jsr        $00043980
[0005ff1a] 4a40                      tst.w      d0
[0005ff1c] 6602                      bne.s      $0005FF20
[0005ff1e] 760a                      moveq.l    #10,d3
[0005ff20] 7003                      moveq.l    #3,d0
[0005ff22] 43ea 0028                 lea.l      40(a2),a1
[0005ff26] 204b                      movea.l    a3,a0
[0005ff28] 4eb9 0004 3980            jsr        $00043980
[0005ff2e] 4a40                      tst.w      d0
[0005ff30] 6602                      bne.s      $0005FF34
[0005ff32] 760b                      moveq.l    #11,d3
[0005ff34] 7003                      moveq.l    #3,d0
[0005ff36] 43ea 002c                 lea.l      44(a2),a1
[0005ff3a] 204b                      movea.l    a3,a0
[0005ff3c] 4eb9 0004 3980            jsr        $00043980
[0005ff42] 4a40                      tst.w      d0
[0005ff44] 6602                      bne.s      $0005FF48
[0005ff46] 760c                      moveq.l    #12,d3
[0005ff48] 200c                      move.l     a4,d0
[0005ff4a] 6710                      beq.s      $0005FF5C
[0005ff4c] 3f03                      move.w     d3,-(a7)
[0005ff4e] 43ea 0030                 lea.l      48(a2),a1
[0005ff52] 204c                      movea.l    a4,a0
[0005ff54] 4eb9 0007 5680            jsr        $00075680
[0005ff5a] 544f                      addq.w     #2,a7
[0005ff5c] 3003                      move.w     d3,d0
[0005ff5e] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0005ff62] 4e75                      rts
