editte_ok:
[000218bc] 2079 0010 1f12            movea.l    ACSblk,a0
[000218c2] 2068 0258                 movea.l    600(a0),a0
[000218c6] 4eb9 0002 19fc            jsr        $000219FC
[000218cc] 4e75                      rts
tedi_make:
[000218ce] 48e7 0038                 movem.l    a2-a4,-(a7)
[000218d2] 594f                      subq.w     #4,a7
[000218d4] 2448                      movea.l    a0,a2
[000218d6] 266a 0004                 movea.l    4(a2),a3
[000218da] 286b 0012                 movea.l    18(a3),a4
[000218de] 200c                      move.l     a4,d0
[000218e0] 670a                      beq.s      $000218EC
[000218e2] 204c                      movea.l    a4,a0
[000218e4] 4eb9 0004 f0ca            jsr        $0004F0CA
[000218ea] 6074                      bra.s      $00021960
[000218ec] 7008                      moveq.l    #8,d0
[000218ee] 4eb9 0004 7cc8            jsr        Ax_malloc
[000218f4] 2e88                      move.l     a0,(a7)
[000218f6] 2008                      move.l     a0,d0
[000218f8] 6762                      beq.s      $0002195C
[000218fa] 2092                      move.l     (a2),(a0)
[000218fc] 216a 0004 0004            move.l     4(a2),4(a0)
[00021902] 43eb 0016                 lea.l      22(a3),a1
[00021906] 23c9 000a 7582            move.l     a1,$000A7582
[0002190c] 2079 000a 758e            movea.l    $000A758E,a0
[00021912] 2149 0008                 move.l     a1,8(a0)
[00021916] 41f9 000a 7534            lea.l      $000A7534,a0
[0002191c] 4eb9 0004 f41a            jsr        $0004F41A
[00021922] 2848                      movea.l    a0,a4
[00021924] 200c                      move.l     a4,d0
[00021926] 6734                      beq.s      $0002195C
[00021928] 2252                      movea.l    (a2),a1
[0002192a] 4869 0168                 pea.l      360(a1)
[0002192e] 43eb 003a                 lea.l      58(a3),a1
[00021932] 4eb9 0001 47a8            jsr        $000147A8
[00021938] 584f                      addq.w     #4,a7
[0002193a] 2897                      move.l     (a7),(a4)
[0002193c] 274c 0012                 move.l     a4,18(a3)
[00021940] 204c                      movea.l    a4,a0
[00021942] 4eb9 0002 19b0            jsr        $000219B0
[00021948] 204c                      movea.l    a4,a0
[0002194a] 226c 000c                 movea.l    12(a4),a1
[0002194e] 4e91                      jsr        (a1)
[00021950] 4a40                      tst.w      d0
[00021952] 670c                      beq.s      $00021960
[00021954] 204c                      movea.l    a4,a0
[00021956] 4eb9 0002 19fc            jsr        $000219FC
[0002195c] 91c8                      suba.l     a0,a0
[0002195e] 6002                      bra.s      $00021962
[00021960] 204c                      movea.l    a4,a0
[00021962] 584f                      addq.w     #4,a7
[00021964] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00021968] 4e75                      rts
tedi_service:
[0002196a] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0002196e] 2448                      movea.l    a0,a2
[00021970] 3600                      move.w     d0,d3
[00021972] 2849                      movea.l    a1,a4
[00021974] 2650                      movea.l    (a0),a3
[00021976] 5540                      subq.w     #2,d0
[00021978] 6708                      beq.s      $00021982
[0002197a] 907c 270e                 sub.w      #$270E,d0
[0002197e] 670c                      beq.s      $0002198C
[00021980] 6018                      bra.s      $0002199A
[00021982] 204a                      movea.l    a2,a0
[00021984] 4eb9 0002 19fc            jsr        $000219FC
[0002198a] 601c                      bra.s      $000219A8
[0002198c] 226b 0004                 movea.l    4(a3),a1
[00021990] 204a                      movea.l    a2,a0
[00021992] 4eb9 0001 45a2            jsr        $000145A2
[00021998] 600e                      bra.s      $000219A8
[0002199a] 224c                      movea.l    a4,a1
[0002199c] 3003                      move.w     d3,d0
[0002199e] 204a                      movea.l    a2,a0
[000219a0] 4eb9 0005 1276            jsr        $00051276
[000219a6] 6002                      bra.s      $000219AA
[000219a8] 7001                      moveq.l    #1,d0
[000219aa] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[000219ae] 4e75                      rts
set_tedi:
[000219b0] 2f0a                      move.l     a2,-(a7)
[000219b2] 2f0b                      move.l     a3,-(a7)
[000219b4] 2250                      movea.l    (a0),a1
[000219b6] 2468 0014                 movea.l    20(a0),a2
[000219ba] 2069 0004                 movea.l    4(a1),a0
[000219be] 2668 0004                 movea.l    4(a0),a3
[000219c2] 2253                      movea.l    (a3),a1
[000219c4] 2269 0004                 movea.l    4(a1),a1
[000219c8] 7003                      moveq.l    #3,d0
[000219ca] 204a                      movea.l    a2,a0
[000219cc] 4eb9 0004 afe0            jsr        $0004AFE0
[000219d2] 206b 0004                 movea.l    4(a3),a0
[000219d6] 2268 0004                 movea.l    4(a0),a1
[000219da] 7005                      moveq.l    #5,d0
[000219dc] 204a                      movea.l    a2,a0
[000219de] 4eb9 0004 afe0            jsr        $0004AFE0
[000219e4] 206b 0008                 movea.l    8(a3),a0
[000219e8] 2268 0004                 movea.l    4(a0),a1
[000219ec] 7007                      moveq.l    #7,d0
[000219ee] 204a                      movea.l    a2,a0
[000219f0] 4eb9 0004 afe0            jsr        $0004AFE0
[000219f6] 265f                      movea.l    (a7)+,a3
[000219f8] 245f                      movea.l    (a7)+,a2
[000219fa] 4e75                      rts
term:
[000219fc] 2f0a                      move.l     a2,-(a7)
[000219fe] 2f0b                      move.l     a3,-(a7)
[00021a00] 2448                      movea.l    a0,a2
[00021a02] 006a 0100 0056            ori.w      #$0100,86(a2)
[00021a08] 2650                      movea.l    (a0),a3
[00021a0a] 226b 0004                 movea.l    4(a3),a1
[00021a0e] 42a9 0012                 clr.l      18(a1)
[00021a12] 302a 0056                 move.w     86(a2),d0
[00021a16] c07c 0800                 and.w      #$0800,d0
[00021a1a] 6716                      beq.s      $00021A32
[00021a1c] 43ea 002c                 lea.l      44(a2),a1
[00021a20] 206b 0004                 movea.l    4(a3),a0
[00021a24] 41e8 003a                 lea.l      58(a0),a0
[00021a28] 7008                      moveq.l    #8,d0
[00021a2a] 4eb9 0007 6f44            jsr        $00076F44
[00021a30] 6014                      bra.s      $00021A46
[00021a32] 7008                      moveq.l    #8,d0
[00021a34] 43ea 0024                 lea.l      36(a2),a1
[00021a38] 206b 0004                 movea.l    4(a3),a0
[00021a3c] 41e8 003a                 lea.l      58(a0),a0
[00021a40] 4eb9 0007 6f44            jsr        $00076F44
[00021a46] 204b                      movea.l    a3,a0
[00021a48] 4eb9 0004 7e26            jsr        $00047E26
[00021a4e] 204a                      movea.l    a2,a0
[00021a50] 4eb9 0005 013e            jsr        $0005013E
[00021a56] 204a                      movea.l    a2,a0
[00021a58] 4eb9 0005 0330            jsr        $00050330
[00021a5e] 265f                      movea.l    (a7)+,a3
[00021a60] 245f                      movea.l    (a7)+,a2
[00021a62] 4e75                      rts
