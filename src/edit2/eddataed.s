editdat_abort:
[0001b9c0] 2079 0010 1f12            movea.l    ACSblk,a0
[0001b9c6] 2068 0258                 movea.l    600(a0),a0
[0001b9ca] 4eb9 0001 baba            jsr        $0001BABA
[0001b9d0] 4e75                      rts
dt_make:
[0001b9d2] 48e7 0038                 movem.l    a2-a4,-(a7)
[0001b9d6] 594f                      subq.w     #4,a7
[0001b9d8] 2448                      movea.l    a0,a2
[0001b9da] 266a 0004                 movea.l    4(a2),a3
[0001b9de] 286b 0012                 movea.l    18(a3),a4
[0001b9e2] 200c                      move.l     a4,d0
[0001b9e4] 670a                      beq.s      $0001B9F0
[0001b9e6] 204c                      movea.l    a4,a0
[0001b9e8] 4eb9 0004 f0ca            jsr        $0004F0CA
[0001b9ee] 6076                      bra.s      $0001BA66
[0001b9f0] 7008                      moveq.l    #8,d0
[0001b9f2] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001b9f8] 2e88                      move.l     a0,(a7)
[0001b9fa] 2008                      move.l     a0,d0
[0001b9fc] 6764                      beq.s      $0001BA62
[0001b9fe] 224a                      movea.l    a2,a1
[0001ba00] 7008                      moveq.l    #8,d0
[0001ba02] 4eb9 0007 6f44            jsr        $00076F44
[0001ba08] 41eb 0016                 lea.l      22(a3),a0
[0001ba0c] 23c8 0009 d012            move.l     a0,$0009D012
[0001ba12] 2279 0009 d01e            movea.l    $0009D01E,a1
[0001ba18] 2348 0008                 move.l     a0,8(a1)
[0001ba1c] 41f9 0009 cfc4            lea.l      $0009CFC4,a0
[0001ba22] 4eb9 0004 f41a            jsr        $0004F41A
[0001ba28] 2848                      movea.l    a0,a4
[0001ba2a] 200c                      move.l     a4,d0
[0001ba2c] 6734                      beq.s      $0001BA62
[0001ba2e] 2252                      movea.l    (a2),a1
[0001ba30] 4869 0168                 pea.l      360(a1)
[0001ba34] 43eb 003a                 lea.l      58(a3),a1
[0001ba38] 4eb9 0001 47a8            jsr        $000147A8
[0001ba3e] 584f                      addq.w     #4,a7
[0001ba40] 2897                      move.l     (a7),(a4)
[0001ba42] 274c 0012                 move.l     a4,18(a3)
[0001ba46] 204c                      movea.l    a4,a0
[0001ba48] 4eb9 0001 bab6            jsr        $0001BAB6
[0001ba4e] 204c                      movea.l    a4,a0
[0001ba50] 226c 000c                 movea.l    12(a4),a1
[0001ba54] 4e91                      jsr        (a1)
[0001ba56] 4a40                      tst.w      d0
[0001ba58] 670c                      beq.s      $0001BA66
[0001ba5a] 204c                      movea.l    a4,a0
[0001ba5c] 4eb9 0001 baba            jsr        $0001BABA
[0001ba62] 91c8                      suba.l     a0,a0
[0001ba64] 6002                      bra.s      $0001BA68
[0001ba66] 204c                      movea.l    a4,a0
[0001ba68] 584f                      addq.w     #4,a7
[0001ba6a] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0001ba6e] 4e75                      rts
dt_service:
[0001ba70] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0001ba74] 2448                      movea.l    a0,a2
[0001ba76] 3600                      move.w     d0,d3
[0001ba78] 2849                      movea.l    a1,a4
[0001ba7a] 2650                      movea.l    (a0),a3
[0001ba7c] 5540                      subq.w     #2,d0
[0001ba7e] 6708                      beq.s      $0001BA88
[0001ba80] 907c 270e                 sub.w      #$270E,d0
[0001ba84] 670c                      beq.s      $0001BA92
[0001ba86] 6018                      bra.s      $0001BAA0
[0001ba88] 204a                      movea.l    a2,a0
[0001ba8a] 4eb9 0001 baba            jsr        $0001BABA
[0001ba90] 601c                      bra.s      $0001BAAE
[0001ba92] 226b 0004                 movea.l    4(a3),a1
[0001ba96] 204a                      movea.l    a2,a0
[0001ba98] 4eb9 0001 45a2            jsr        $000145A2
[0001ba9e] 600e                      bra.s      $0001BAAE
[0001baa0] 224c                      movea.l    a4,a1
[0001baa2] 3003                      move.w     d3,d0
[0001baa4] 204a                      movea.l    a2,a0
[0001baa6] 4eb9 0005 1276            jsr        $00051276
[0001baac] 6002                      bra.s      $0001BAB0
[0001baae] 7001                      moveq.l    #1,d0
[0001bab0] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0001bab4] 4e75                      rts
set_data:
[0001bab6] 2250                      movea.l    (a0),a1
[0001bab8] 4e75                      rts
term:
[0001baba] 2f0a                      move.l     a2,-(a7)
[0001babc] 2f0b                      move.l     a3,-(a7)
[0001babe] 2448                      movea.l    a0,a2
[0001bac0] 006a 0100 0056            ori.w      #$0100,86(a2)
[0001bac6] 2650                      movea.l    (a0),a3
[0001bac8] 226b 0004                 movea.l    4(a3),a1
[0001bacc] 42a9 0012                 clr.l      18(a1)
[0001bad0] 302a 0056                 move.w     86(a2),d0
[0001bad4] c07c 0800                 and.w      #$0800,d0
[0001bad8] 6716                      beq.s      $0001BAF0
[0001bada] 43ea 002c                 lea.l      44(a2),a1
[0001bade] 206b 0004                 movea.l    4(a3),a0
[0001bae2] 41e8 003a                 lea.l      58(a0),a0
[0001bae6] 7008                      moveq.l    #8,d0
[0001bae8] 4eb9 0007 6f44            jsr        $00076F44
[0001baee] 6014                      bra.s      $0001BB04
[0001baf0] 7008                      moveq.l    #8,d0
[0001baf2] 43ea 0024                 lea.l      36(a2),a1
[0001baf6] 206b 0004                 movea.l    4(a3),a0
[0001bafa] 41e8 003a                 lea.l      58(a0),a0
[0001bafe] 4eb9 0007 6f44            jsr        $00076F44
[0001bb04] 204b                      movea.l    a3,a0
[0001bb06] 4eb9 0004 7e26            jsr        $00047E26
[0001bb0c] 204a                      movea.l    a2,a0
[0001bb0e] 4eb9 0005 013e            jsr        $0005013E
[0001bb14] 204a                      movea.l    a2,a0
[0001bb16] 4eb9 0005 0330            jsr        $00050330
[0001bb1c] 265f                      movea.l    (a7)+,a3
[0001bb1e] 245f                      movea.l    (a7)+,a2
[0001bb20] 4e75                      rts
