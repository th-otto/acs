add_image:
[000332fa] 48e7 003c                 movem.l    a2-a5,-(a7)
[000332fe] 2448                      movea.l    a0,a2
[00033300] 2849                      movea.l    a1,a4
[00033302] 006a 0001 0006            ori.w      #$0001,6(a2)
[00033308] 266a 0030                 movea.l    48(a2),a3
[0003330c] 3039 0007 8250            move.w     $00078250,d0
[00033312] 6728                      beq.s      $0003333C
[00033314] 7206                      moveq.l    #6,d1
[00033316] 2279 0010 1f12            movea.l    ACSblk,a1
[0003331c] c269 0266                 and.w      614(a1),d1
[00033320] 5d41                      subq.w     #6,d1
[00033322] 6718                      beq.s      $0003333C
[00033324] 43ec 0016                 lea.l      22(a4),a1
[00033328] 204b                      movea.l    a3,a0
[0003332a] 4eb9 0003 1a5c            jsr        $00031A5C
[00033330] b9c8                      cmpa.l     a0,a4
[00033332] 6608                      bne.s      $0003333C
[00033334] 526c 0036                 addq.w     #1,54(a4)
[00033338] 204c                      movea.l    a4,a0
[0003333a] 6044                      bra.s      $00033380
[0003333c] 7004                      moveq.l    #4,d0
[0003333e] 204b                      movea.l    a3,a0
[00033340] 4eb9 0001 62aa            jsr        $000162AA
[00033346] 4a40                      tst.w      d0
[00033348] 6610                      bne.s      $0003335A
[0003334a] 224c                      movea.l    a4,a1
[0003334c] 204a                      movea.l    a2,a0
[0003334e] 4eb9 0003 3386            jsr        $00033386
[00033354] 2a48                      movea.l    a0,a5
[00033356] 200d                      move.l     a5,d0
[00033358] 6604                      bne.s      $0003335E
[0003335a] 91c8                      suba.l     a0,a0
[0003335c] 6022                      bra.s      $00033380
[0003335e] 2f39 000c 20c8            move.l     $000C20C8,-(a7)
[00033364] 486c 0016                 pea.l      22(a4)
[00033368] 224d                      movea.l    a5,a1
[0003336a] 204a                      movea.l    a2,a0
[0003336c] 4eb9 0001 6448            jsr        $00016448
[00033372] 504f                      addq.w     #8,a7
[00033374] 224d                      movea.l    a5,a1
[00033376] 204b                      movea.l    a3,a0
[00033378] 4eb9 0003 1a94            jsr        $00031A94
[0003337e] 204d                      movea.l    a5,a0
[00033380] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00033384] 4e75                      rts
copy_image:
[00033386] 2f0a                      move.l     a2,-(a7)
[00033388] 2f0b                      move.l     a3,-(a7)
[0003338a] 2648                      movea.l    a0,a3
[0003338c] 2449                      movea.l    a1,a2
[0003338e] 202a 000e                 move.l     14(a2),d0
[00033392] 4eb9 0001 6230            jsr        $00016230
[00033398] 2648                      movea.l    a0,a3
[0003339a] 200b                      move.l     a3,d0
[0003339c] 6604                      bne.s      $000333A2
[0003339e] 91c8                      suba.l     a0,a0
[000333a0] 601a                      bra.s      $000333BC
[000333a2] 276a 000e 000e            move.l     14(a2),14(a3)
[000333a8] 202a 000e                 move.l     14(a2),d0
[000333ac] 226a 0004                 movea.l    4(a2),a1
[000333b0] 206b 0004                 movea.l    4(a3),a0
[000333b4] 4eb9 0007 6f44            jsr        $00076F44
[000333ba] 204b                      movea.l    a3,a0
[000333bc] 265f                      movea.l    (a7)+,a3
[000333be] 245f                      movea.l    (a7)+,a2
[000333c0] 4e75                      rts
dup_image:
[000333c2] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[000333c6] 2648                      movea.l    a0,a3
[000333c8] 2449                      movea.l    a1,a2
[000333ca] 49f9 000c 20f0            lea.l      $000C20F0,a4
[000333d0] 700e                      moveq.l    #14,d0
[000333d2] 224a                      movea.l    a2,a1
[000333d4] 41ec fff2                 lea.l      -14(a4),a0
[000333d8] 4eb9 0007 6f44            jsr        $00076F44
[000333de] 362a 0004                 move.w     4(a2),d3
[000333e2] c7ea 0006                 muls.w     6(a2),d3
[000333e6] 48c3                      ext.l      d3
[000333e8] 2003                      move.l     d3,d0
[000333ea] d080                      add.l      d0,d0
[000333ec] d0bc 0000 000e            add.l      #$0000000E,d0
[000333f2] 2940 000a                 move.l     d0,10(a4)
[000333f6] 2940 000e                 move.l     d0,14(a4)
[000333fa] 224c                      movea.l    a4,a1
[000333fc] 204b                      movea.l    a3,a0
[000333fe] 6100 fefa                 bsr        $000332FA
[00033402] 2648                      movea.l    a0,a3
[00033404] 200b                      move.l     a3,d0
[00033406] 6604                      bne.s      $0003340C
[00033408] 91c8                      suba.l     a0,a0
[0003340a] 6028                      bra.s      $00033434
[0003340c] 286b 0004                 movea.l    4(a3),a4
[00033410] 2003                      move.l     d3,d0
[00033412] 2252                      movea.l    (a2),a1
[00033414] 41ec 000e                 lea.l      14(a4),a0
[00033418] 4eb9 0007 6f44            jsr        $00076F44
[0003341e] 2003                      move.l     d3,d0
[00033420] 2252                      movea.l    (a2),a1
[00033422] 41f4 380e                 lea.l      14(a4,d3.l),a0
[00033426] 4eb9 0007 6f44            jsr        $00076F44
[0003342c] 28bc 0000 000e            move.l     #$0000000E,(a4)
[00033432] 204b                      movea.l    a3,a0
[00033434] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00033438] 4e75                      rts
del_image:
[0003343a] 48e7 003c                 movem.l    a2-a5,-(a7)
[0003343e] 2448                      movea.l    a0,a2
[00033440] 2649                      movea.l    a1,a3
[00033442] 006a 0001 0006            ori.w      #$0001,6(a2)
[00033448] 536b 0036                 subq.w     #1,54(a3)
[0003344c] 302b 0036                 move.w     54(a3),d0
[00033450] 6e2a                      bgt.s      $0003347C
[00033452] 286b 0012                 movea.l    18(a3),a4
[00033456] 220c                      move.l     a4,d1
[00033458] 670c                      beq.s      $00033466
[0003345a] 2a6c 0004                 movea.l    4(a4),a5
[0003345e] 204c                      movea.l    a4,a0
[00033460] 7002                      moveq.l    #2,d0
[00033462] 93c9                      suba.l     a1,a1
[00033464] 4e95                      jsr        (a5)
[00033466] 224b                      movea.l    a3,a1
[00033468] 206a 0030                 movea.l    48(a2),a0
[0003346c] 4eb9 0003 1b00            jsr        $00031B00
[00033472] 224b                      movea.l    a3,a1
[00033474] 204a                      movea.l    a2,a0
[00033476] 4eb9 0001 61d4            jsr        $000161D4
[0003347c] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00033480] 4e75                      rts
new_work:
[00033482] 303c 2721                 move.w     #$2721,d0
[00033486] 2279 000a 5954            movea.l    $000A5954,a1
[0003348c] 4eb9 0003 24b6            jsr        $000324B6
[00033492] 4e75                      rts
