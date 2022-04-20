add_2ref:
[00033494] 2f0a                      move.l     a2,-(a7)
[00033496] 2f0b                      move.l     a3,-(a7)
[00033498] 2648                      movea.l    a0,a3
[0003349a] 2449                      movea.l    a1,a2
[0003349c] 200a                      move.l     a2,d0
[0003349e] 6604                      bne.s      $000334A4
[000334a0] 91c8                      suba.l     a0,a0
[000334a2] 600a                      bra.s      $000334AE
[000334a4] 224a                      movea.l    a2,a1
[000334a6] 204b                      movea.l    a3,a0
[000334a8] 4eb9 0003 4306            jsr        $00034306
[000334ae] 265f                      movea.l    (a7)+,a3
[000334b0] 245f                      movea.l    (a7)+,a2
[000334b2] 4e75                      rts
del_2ref:
[000334b4] 2f0a                      move.l     a2,-(a7)
[000334b6] 2449                      movea.l    a1,a2
[000334b8] 200a                      move.l     a2,d0
[000334ba] 6706                      beq.s      $000334C2
[000334bc] 4eb9 0003 448e            jsr        $0003448E
[000334c2] 245f                      movea.l    (a7)+,a2
[000334c4] 4e75                      rts
add_3ref:
[000334c6] 2f0a                      move.l     a2,-(a7)
[000334c8] 2f0b                      move.l     a3,-(a7)
[000334ca] 2648                      movea.l    a0,a3
[000334cc] 2449                      movea.l    a1,a2
[000334ce] 220a                      move.l     a2,d1
[000334d0] 6736                      beq.s      $00033508
[000334d2] 7403                      moveq.l    #3,d2
[000334d4] c440                      and.w      d0,d2
[000334d6] 5342                      subq.w     #1,d2
[000334d8] 670a                      beq.s      $000334E4
[000334da] 5342                      subq.w     #1,d2
[000334dc] 6712                      beq.s      $000334F0
[000334de] 5342                      subq.w     #1,d2
[000334e0] 671a                      beq.s      $000334FC
[000334e2] 6024                      bra.s      $00033508
[000334e4] 224a                      movea.l    a2,a1
[000334e6] 204b                      movea.l    a3,a0
[000334e8] 4eb9 0003 4306            jsr        $00034306
[000334ee] 601a                      bra.s      $0003350A
[000334f0] 224a                      movea.l    a2,a1
[000334f2] 204b                      movea.l    a3,a0
[000334f4] 4eb9 0003 461e            jsr        $0003461E
[000334fa] 600e                      bra.s      $0003350A
[000334fc] 224a                      movea.l    a2,a1
[000334fe] 204b                      movea.l    a3,a0
[00033500] 4eb9 0003 29b4            jsr        $000329B4
[00033506] 6002                      bra.s      $0003350A
[00033508] 91c8                      suba.l     a0,a0
[0003350a] 265f                      movea.l    (a7)+,a3
[0003350c] 245f                      movea.l    (a7)+,a2
[0003350e] 4e75                      rts
del_3ref:
[00033510] 2f0a                      move.l     a2,-(a7)
[00033512] 2f0b                      move.l     a3,-(a7)
[00033514] 2648                      movea.l    a0,a3
[00033516] 2449                      movea.l    a1,a2
[00033518] 220a                      move.l     a2,d1
[0003351a] 6734                      beq.s      $00033550
[0003351c] 7403                      moveq.l    #3,d2
[0003351e] c440                      and.w      d0,d2
[00033520] 5342                      subq.w     #1,d2
[00033522] 670a                      beq.s      $0003352E
[00033524] 5342                      subq.w     #1,d2
[00033526] 6712                      beq.s      $0003353A
[00033528] 5342                      subq.w     #1,d2
[0003352a] 671a                      beq.s      $00033546
[0003352c] 6022                      bra.s      $00033550
[0003352e] 224a                      movea.l    a2,a1
[00033530] 204b                      movea.l    a3,a0
[00033532] 4eb9 0003 448e            jsr        $0003448E
[00033538] 6016                      bra.s      $00033550
[0003353a] 224a                      movea.l    a2,a1
[0003353c] 204b                      movea.l    a3,a0
[0003353e] 4eb9 0003 47e8            jsr        $000347E8
[00033544] 600a                      bra.s      $00033550
[00033546] 224a                      movea.l    a2,a1
[00033548] 204b                      movea.l    a3,a0
[0003354a] 4eb9 0003 2a96            jsr        $00032A96
[00033550] 265f                      movea.l    (a7)+,a3
[00033552] 245f                      movea.l    (a7)+,a2
[00033554] 4e75                      rts
comp_it:
[00033556] 2f0a                      move.l     a2,-(a7)
[00033558] 2f0b                      move.l     a3,-(a7)
[0003355a] 2448                      movea.l    a0,a2
[0003355c] 2649                      movea.l    a1,a3
[0003355e] 200a                      move.l     a2,d0
[00033560] 6608                      bne.s      $0003356A
[00033562] 220b                      move.l     a3,d1
[00033564] 6604                      bne.s      $0003356A
[00033566] 7001                      moveq.l    #1,d0
[00033568] 6024                      bra.s      $0003358E
[0003356a] 200a                      move.l     a2,d0
[0003356c] 6704                      beq.s      $00033572
[0003356e] 220b                      move.l     a3,d1
[00033570] 6604                      bne.s      $00033576
[00033572] 4240                      clr.w      d0
[00033574] 6018                      bra.s      $0003358E
[00033576] 43eb 0016                 lea.l      22(a3),a1
[0003357a] 41ea 0016                 lea.l      22(a2),a0
[0003357e] 4eb9 0007 68fe            jsr        $000768FE
[00033584] 4a40                      tst.w      d0
[00033586] 6604                      bne.s      $0003358C
[00033588] 7001                      moveq.l    #1,d0
[0003358a] 6002                      bra.s      $0003358E
[0003358c] 4240                      clr.w      d0
[0003358e] 265f                      movea.l    (a7)+,a3
[00033590] 245f                      movea.l    (a7)+,a2
[00033592] 4e75                      rts
comp2_it:
[00033594] 2f0a                      move.l     a2,-(a7)
[00033596] 2f0b                      move.l     a3,-(a7)
[00033598] 2448                      movea.l    a0,a2
[0003359a] 2649                      movea.l    a1,a3
[0003359c] 220a                      move.l     a2,d1
[0003359e] 6608                      bne.s      $000335A8
[000335a0] 240b                      move.l     a3,d2
[000335a2] 6604                      bne.s      $000335A8
[000335a4] 7001                      moveq.l    #1,d0
[000335a6] 605e                      bra.s      $00033606
[000335a8] 220a                      move.l     a2,d1
[000335aa] 6758                      beq.s      $00033604
[000335ac] 240b                      move.l     a3,d2
[000335ae] 6754                      beq.s      $00033604
[000335b0] 7203                      moveq.l    #3,d1
[000335b2] c240                      and.w      d0,d1
[000335b4] 4a41                      tst.w      d1
[000335b6] 670e                      beq.s      $000335C6
[000335b8] 5341                      subq.w     #1,d1
[000335ba] 670a                      beq.s      $000335C6
[000335bc] 5341                      subq.w     #1,d1
[000335be] 6720                      beq.s      $000335E0
[000335c0] 5341                      subq.w     #1,d1
[000335c2] 671c                      beq.s      $000335E0
[000335c4] 603e                      bra.s      $00033604
[000335c6] 43eb 0016                 lea.l      22(a3),a1
[000335ca] 41ea 0016                 lea.l      22(a2),a0
[000335ce] 4eb9 0007 68fe            jsr        $000768FE
[000335d4] 4a40                      tst.w      d0
[000335d6] 6604                      bne.s      $000335DC
[000335d8] 7001                      moveq.l    #1,d0
[000335da] 6002                      bra.s      $000335DE
[000335dc] 4240                      clr.w      d0
[000335de] 6026                      bra.s      $00033606
[000335e0] 202a 000e                 move.l     14(a2),d0
[000335e4] b0ab 000e                 cmp.l      14(a3),d0
[000335e8] 6616                      bne.s      $00033600
[000335ea] 226b 0004                 movea.l    4(a3),a1
[000335ee] 206a 0004                 movea.l    4(a2),a0
[000335f2] 4eb9 0007 6f2e            jsr        $00076F2E
[000335f8] 4a40                      tst.w      d0
[000335fa] 6604                      bne.s      $00033600
[000335fc] 7001                      moveq.l    #1,d0
[000335fe] 6002                      bra.s      $00033602
[00033600] 4240                      clr.w      d0
[00033602] 6002                      bra.s      $00033606
[00033604] 4240                      clr.w      d0
[00033606] 265f                      movea.l    (a7)+,a3
[00033608] 245f                      movea.l    (a7)+,a2
[0003360a] 4e75                      rts
add_user:
[0003360c] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[00033610] 514f                      subq.w     #8,a7
[00033612] 2448                      movea.l    a0,a2
[00033614] 2f49 0004                 move.l     a1,4(a7)
[00033618] 006a 0001 0006            ori.w      #$0001,6(a2)
[0003361e] 206a 0038                 movea.l    56(a2),a0
[00033622] 2ea8 0004                 move.l     4(a0),(a7)
[00033626] 2a69 0004                 movea.l    4(a1),a5
[0003362a] 3629 0038                 move.w     56(a1),d3
[0003362e] c67c 00ff                 and.w      #$00FF,d3
[00033632] 7006                      moveq.l    #6,d0
[00033634] 2279 0010 1f12            movea.l    ACSblk,a1
[0003363a] c069 0266                 and.w      614(a1),d0
[0003363e] 5d40                      subq.w     #6,d0
[00033640] 6700 00dc                 beq        $0003371E
[00033644] 2828 000e                 move.l     14(a0),d4
[00033648] e48c                      lsr.l      #2,d4
[0003364a] 4245                      clr.w      d5
[0003364c] 6000 00ca                 bra        $00033718
[00033650] 3005                      move.w     d5,d0
[00033652] 48c0                      ext.l      d0
[00033654] e588                      lsl.l      #2,d0
[00033656] 2057                      movea.l    (a7),a0
[00033658] 2670 0800                 movea.l    0(a0,d0.l),a3
[0003365c] 286b 0004                 movea.l    4(a3),a4
[00033660] 322b 0038                 move.w     56(a3),d1
[00033664] c27c 00ff                 and.w      #$00FF,d1
[00033668] b641                      cmp.w      d1,d3
[0003366a] 6600 00aa                 bne        $00033716
[0003366e] 2255                      movea.l    (a5),a1
[00033670] 43e9 0016                 lea.l      22(a1),a1
[00033674] 2054                      movea.l    (a4),a0
[00033676] 41e8 0016                 lea.l      22(a0),a0
[0003367a] 4eb9 0007 68fe            jsr        $000768FE
[00033680] 4a40                      tst.w      d0
[00033682] 6600 0092                 bne        $00033716
[00033686] 226d 0004                 movea.l    4(a5),a1
[0003368a] 43e9 0016                 lea.l      22(a1),a1
[0003368e] 206c 0004                 movea.l    4(a4),a0
[00033692] 41e8 0016                 lea.l      22(a0),a0
[00033696] 4eb9 0007 68fe            jsr        $000768FE
[0003369c] 4a40                      tst.w      d0
[0003369e] 6600 0076                 bne.w      $00033716
[000336a2] 226d 0008                 movea.l    8(a5),a1
[000336a6] 206c 0008                 movea.l    8(a4),a0
[000336aa] 6100 feaa                 bsr        $00033556
[000336ae] 4a40                      tst.w      d0
[000336b0] 6764                      beq.s      $00033716
[000336b2] 3003                      move.w     d3,d0
[000336b4] 226d 000c                 movea.l    12(a5),a1
[000336b8] 206c 000c                 movea.l    12(a4),a0
[000336bc] 6100 fed6                 bsr        $00033594
[000336c0] 4a40                      tst.w      d0
[000336c2] 6752                      beq.s      $00033716
[000336c4] 3003                      move.w     d3,d0
[000336c6] e440                      asr.w      #2,d0
[000336c8] 226d 0010                 movea.l    16(a5),a1
[000336cc] 206c 0010                 movea.l    16(a4),a0
[000336d0] 6100 fec2                 bsr        $00033594
[000336d4] 4a40                      tst.w      d0
[000336d6] 673e                      beq.s      $00033716
[000336d8] 3003                      move.w     d3,d0
[000336da] e840                      asr.w      #4,d0
[000336dc] 226d 0014                 movea.l    20(a5),a1
[000336e0] 206c 0014                 movea.l    20(a4),a0
[000336e4] 6100 feae                 bsr        $00033594
[000336e8] 4a40                      tst.w      d0
[000336ea] 672a                      beq.s      $00033716
[000336ec] 7002                      moveq.l    #2,d0
[000336ee] 226d 0018                 movea.l    24(a5),a1
[000336f2] 206c 0018                 movea.l    24(a4),a0
[000336f6] 6100 fe9c                 bsr        $00033594
[000336fa] 4a40                      tst.w      d0
[000336fc] 6718                      beq.s      $00033716
[000336fe] 7002                      moveq.l    #2,d0
[00033700] 226d 001c                 movea.l    28(a5),a1
[00033704] 206c 001c                 movea.l    28(a4),a0
[00033708] 6100 fe8a                 bsr        $00033594
[0003370c] 4a40                      tst.w      d0
[0003370e] 6706                      beq.s      $00033716
[00033710] 526b 0036                 addq.w     #1,54(a3)
[00033714] 6044                      bra.s      $0003375A
[00033716] 5245                      addq.w     #1,d5
[00033718] b845                      cmp.w      d5,d4
[0003371a] 6e00 ff34                 bgt        $00033650
[0003371e] 226f 0004                 movea.l    4(a7),a1
[00033722] 204a                      movea.l    a2,a0
[00033724] 4eb9 0003 3802            jsr        $00033802
[0003372a] 2648                      movea.l    a0,a3
[0003372c] 200b                      move.l     a3,d0
[0003372e] 6604                      bne.s      $00033734
[00033730] 91c8                      suba.l     a0,a0
[00033732] 6028                      bra.s      $0003375C
[00033734] 2f39 000c 2142            move.l     $000C2142,-(a7)
[0003373a] 206f 0008                 movea.l    8(a7),a0
[0003373e] 4868 0016                 pea.l      22(a0)
[00033742] 224b                      movea.l    a3,a1
[00033744] 204a                      movea.l    a2,a0
[00033746] 4eb9 0001 6448            jsr        $00016448
[0003374c] 504f                      addq.w     #8,a7
[0003374e] 224b                      movea.l    a3,a1
[00033750] 206a 0038                 movea.l    56(a2),a0
[00033754] 4eb9 0003 1a94            jsr        $00031A94
[0003375a] 204b                      movea.l    a3,a0
[0003375c] 504f                      addq.w     #8,a7
[0003375e] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[00033762] 4e75                      rts
del_user:
[00033764] 48e7 0038                 movem.l    a2-a4,-(a7)
[00033768] 2448                      movea.l    a0,a2
[0003376a] 2649                      movea.l    a1,a3
[0003376c] 006a 0001 0006            ori.w      #$0001,6(a2)
[00033772] 536b 0036                 subq.w     #1,54(a3)
[00033776] 302b 0036                 move.w     54(a3),d0
[0003377a] 6e00 0080                 bgt        $000337FC
[0003377e] 286b 0004                 movea.l    4(a3),a4
[00033782] 2254                      movea.l    (a4),a1
[00033784] 4eb9 0003 448e            jsr        $0003448E
[0003378a] 226c 0004                 movea.l    4(a4),a1
[0003378e] 204a                      movea.l    a2,a0
[00033790] 4eb9 0003 448e            jsr        $0003448E
[00033796] 226c 0008                 movea.l    8(a4),a1
[0003379a] 204a                      movea.l    a2,a0
[0003379c] 6100 fd16                 bsr        $000334B4
[000337a0] 302b 0038                 move.w     56(a3),d0
[000337a4] 226c 000c                 movea.l    12(a4),a1
[000337a8] 204a                      movea.l    a2,a0
[000337aa] 6100 fd64                 bsr        $00033510
[000337ae] 302b 0038                 move.w     56(a3),d0
[000337b2] e440                      asr.w      #2,d0
[000337b4] 226c 0010                 movea.l    16(a4),a1
[000337b8] 204a                      movea.l    a2,a0
[000337ba] 6100 fd54                 bsr        $00033510
[000337be] 302b 0038                 move.w     56(a3),d0
[000337c2] e840                      asr.w      #4,d0
[000337c4] 226c 0014                 movea.l    20(a4),a1
[000337c8] 204a                      movea.l    a2,a0
[000337ca] 6100 fd44                 bsr        $00033510
[000337ce] 7002                      moveq.l    #2,d0
[000337d0] 226c 0018                 movea.l    24(a4),a1
[000337d4] 204a                      movea.l    a2,a0
[000337d6] 6100 fd38                 bsr        $00033510
[000337da] 7002                      moveq.l    #2,d0
[000337dc] 226c 001c                 movea.l    28(a4),a1
[000337e0] 204a                      movea.l    a2,a0
[000337e2] 6100 fd2c                 bsr        $00033510
[000337e6] 224b                      movea.l    a3,a1
[000337e8] 206a 0038                 movea.l    56(a2),a0
[000337ec] 4eb9 0003 1b00            jsr        $00031B00
[000337f2] 224b                      movea.l    a3,a1
[000337f4] 204a                      movea.l    a2,a0
[000337f6] 4eb9 0001 61d4            jsr        $000161D4
[000337fc] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00033800] 4e75                      rts
copy_user:
[00033802] 48e7 003e                 movem.l    a2-a6,-(a7)
[00033806] 2448                      movea.l    a0,a2
[00033808] 2849                      movea.l    a1,a4
[0003380a] 7020                      moveq.l    #32,d0
[0003380c] 4eb9 0001 6230            jsr        $00016230
[00033812] 2648                      movea.l    a0,a3
[00033814] 200b                      move.l     a3,d0
[00033816] 6606                      bne.s      $0003381E
[00033818] 91c8                      suba.l     a0,a0
[0003381a] 6000 009e                 bra        $000338BA
[0003381e] 2a6c 0004                 movea.l    4(a4),a5
[00033822] 2c6b 0004                 movea.l    4(a3),a6
[00033826] 277c 0000 0020 000e       move.l     #$00000020,14(a3)
[0003382e] 376c 0038 0038            move.w     56(a4),56(a3)
[00033834] 2255                      movea.l    (a5),a1
[00033836] 204a                      movea.l    a2,a0
[00033838] 4eb9 0003 4306            jsr        $00034306
[0003383e] 2c88                      move.l     a0,(a6)
[00033840] 226d 0004                 movea.l    4(a5),a1
[00033844] 204a                      movea.l    a2,a0
[00033846] 4eb9 0003 4306            jsr        $00034306
[0003384c] 2d48 0004                 move.l     a0,4(a6)
[00033850] 226d 0008                 movea.l    8(a5),a1
[00033854] 204a                      movea.l    a2,a0
[00033856] 6100 fc3c                 bsr        $00033494
[0003385a] 2d48 0008                 move.l     a0,8(a6)
[0003385e] 302c 0038                 move.w     56(a4),d0
[00033862] 226d 000c                 movea.l    12(a5),a1
[00033866] 204a                      movea.l    a2,a0
[00033868] 6100 fc5c                 bsr        $000334C6
[0003386c] 2d48 000c                 move.l     a0,12(a6)
[00033870] 302c 0038                 move.w     56(a4),d0
[00033874] e440                      asr.w      #2,d0
[00033876] 226d 0010                 movea.l    16(a5),a1
[0003387a] 204a                      movea.l    a2,a0
[0003387c] 6100 fc48                 bsr        $000334C6
[00033880] 2d48 0010                 move.l     a0,16(a6)
[00033884] 302c 0038                 move.w     56(a4),d0
[00033888] e840                      asr.w      #4,d0
[0003388a] 226d 0014                 movea.l    20(a5),a1
[0003388e] 204a                      movea.l    a2,a0
[00033890] 6100 fc34                 bsr        $000334C6
[00033894] 2d48 0014                 move.l     a0,20(a6)
[00033898] 7002                      moveq.l    #2,d0
[0003389a] 226d 0018                 movea.l    24(a5),a1
[0003389e] 204a                      movea.l    a2,a0
[000338a0] 6100 fc24                 bsr        $000334C6
[000338a4] 2d48 0018                 move.l     a0,24(a6)
[000338a8] 7002                      moveq.l    #2,d0
[000338aa] 226d 001c                 movea.l    28(a5),a1
[000338ae] 204a                      movea.l    a2,a0
[000338b0] 6100 fc14                 bsr        $000334C6
[000338b4] 2d48 001c                 move.l     a0,28(a6)
[000338b8] 204b                      movea.l    a3,a0
[000338ba] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[000338be] 4e75                      rts
set_udftype:
[000338c0] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[000338c4] 2648                      movea.l    a0,a3
[000338c6] 2449                      movea.l    a1,a2
[000338c8] 2601                      move.l     d1,d3
[000338ca] 286f 0014                 movea.l    20(a7),a4
[000338ce] 3400                      move.w     d0,d2
[000338d0] 5342                      subq.w     #1,d2
[000338d2] 670a                      beq.s      $000338DE
[000338d4] 5342                      subq.w     #1,d2
[000338d6] 6724                      beq.s      $000338FC
[000338d8] 5342                      subq.w     #1,d2
[000338da] 6744                      beq.s      $00033920
[000338dc] 6062                      bra.s      $00033940
[000338de] 701f                      moveq.l    #31,d0
[000338e0] 224a                      movea.l    a2,a1
[000338e2] 41eb 0016                 lea.l      22(a3),a0
[000338e6] 4eb9 0007 6a1a            jsr        $00076A1A
[000338ec] 42ab 0004                 clr.l      4(a3)
[000338f0] 7000                      moveq.l    #0,d0
[000338f2] 2740 000a                 move.l     d0,10(a3)
[000338f6] 2740 000e                 move.l     d0,14(a3)
[000338fa] 6040                      bra.s      $0003393C
[000338fc] 43f9 000c 23d2            lea.l      $000C23D2,a1
[00033902] 41eb 0016                 lea.l      22(a3),a0
[00033906] 4eb9 0007 6950            jsr        $00076950
[0003390c] 204a                      movea.l    a2,a0
[0003390e] 4eb9 0007 69b0            jsr        $000769B0
[00033914] 5280                      addq.l     #1,d0
[00033916] 2740 000a                 move.l     d0,10(a3)
[0003391a] 2740 000e                 move.l     d0,14(a3)
[0003391e] 6018                      bra.s      $00033938
[00033920] 43f9 000c 23da            lea.l      $000C23DA,a1
[00033926] 41eb 0016                 lea.l      22(a3),a0
[0003392a] 4eb9 0007 6950            jsr        $00076950
[00033930] 2743 000a                 move.l     d3,10(a3)
[00033934] 2743 000e                 move.l     d3,14(a3)
[00033938] 274a 0004                 move.l     a2,4(a3)
[0003393c] 288b                      move.l     a3,(a4)
[0003393e] 6002                      bra.s      $00033942
[00033940] 4294                      clr.l      (a4)
[00033942] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00033946] 4e75                      rts
set_usertype:
[00033948] 48e7 003e                 movem.l    a2-a6,-(a7)
[0003394c] 2648                      movea.l    a0,a3
[0003394e] 2c49                      movea.l    a1,a6
[00033950] 246f 0018                 movea.l    24(a7),a2
[00033954] 2a6f 001c                 movea.l    28(a7),a5
[00033958] 1012                      move.b     (a2),d0
[0003395a] 6758                      beq.s      $000339B4
[0003395c] 206b 0034                 movea.l    52(a3),a0
[00033960] 224a                      movea.l    a2,a1
[00033962] 4eb9 0003 1a5c            jsr        $00031A5C
[00033968] 2848                      movea.l    a0,a4
[0003396a] 200c                      move.l     a4,d0
[0003396c] 6706                      beq.s      $00033974
[0003396e] 2a80                      move.l     d0,(a5)
[00033970] 7002                      moveq.l    #2,d0
[00033972] 6044                      bra.s      $000339B8
[00033974] 224a                      movea.l    a2,a1
[00033976] 206b 0044                 movea.l    68(a3),a0
[0003397a] 4eb9 0003 1a5c            jsr        $00031A5C
[00033980] 2848                      movea.l    a0,a4
[00033982] 200c                      move.l     a4,d0
[00033984] 6706                      beq.s      $0003398C
[00033986] 2a80                      move.l     d0,(a5)
[00033988] 7003                      moveq.l    #3,d0
[0003398a] 602c                      bra.s      $000339B8
[0003398c] 224a                      movea.l    a2,a1
[0003398e] 206b 003c                 movea.l    60(a3),a0
[00033992] 4eb9 0003 1a5c            jsr        $00031A5C
[00033998] 2848                      movea.l    a0,a4
[0003399a] 200c                      move.l     a4,d0
[0003399c] 6704                      beq.s      $000339A2
[0003399e] 2a80                      move.l     d0,(a5)
[000339a0] 600e                      bra.s      $000339B0
[000339a2] 224a                      movea.l    a2,a1
[000339a4] 41ee 0016                 lea.l      22(a6),a0
[000339a8] 4eb9 0007 6950            jsr        $00076950
[000339ae] 2a8e                      move.l     a6,(a5)
[000339b0] 7001                      moveq.l    #1,d0
[000339b2] 6004                      bra.s      $000339B8
[000339b4] 4295                      clr.l      (a5)
[000339b6] 4240                      clr.w      d0
[000339b8] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[000339bc] 4e75                      rts
change_user:
[000339be] 48e7 003c                 movem.l    a2-a5,-(a7)
[000339c2] 2648                      movea.l    a0,a3
[000339c4] 2a49                      movea.l    a1,a5
[000339c6] 246f 0014                 movea.l    20(a7),a2
[000339ca] 49f9 000c 2370            lea.l      $000C2370,a4
[000339d0] 701f                      moveq.l    #31,d0
[000339d2] 43f9 000c 23d7            lea.l      $000C23D7,a1
[000339d8] 2f00                      move.l     d0,-(a7)
[000339da] 2f09                      move.l     a1,-(a7)
[000339dc] 2252                      movea.l    (a2),a1
[000339de] 41ec 0036                 lea.l      54(a4),a0
[000339e2] 4eb9 0007 6950            jsr        $00076950
[000339e8] 225f                      movea.l    (a7)+,a1
[000339ea] 201f                      move.l     (a7)+,d0
[000339ec] 4eb9 0007 69da            jsr        $000769DA
[000339f2] 4eb9 0007 6bc4            jsr        $00076BC4
[000339f8] 2252                      movea.l    (a2),a1
[000339fa] 41ec fe06                 lea.l      -506(a4),a0
[000339fe] 4eb9 0007 6950            jsr        $00076950
[00033a04] 226a 0004                 movea.l    4(a2),a1
[00033a08] 41ec fe48                 lea.l      -440(a4),a0
[00033a0c] 4eb9 0007 6950            jsr        $00076950
[00033a12] 206a 0008                 movea.l    8(a2),a0
[00033a16] 1010                      move.b     (a0),d0
[00033a18] 671c                      beq.s      $00033A36
[00033a1a] 2248                      movea.l    a0,a1
[00033a1c] 41ec fe8a                 lea.l      -374(a4),a0
[00033a20] 701f                      moveq.l    #31,d0
[00033a22] 4eb9 0007 6a1a            jsr        $00076A1A
[00033a28] 422c feaa                 clr.b      -342(a4)
[00033a2c] 297c 000c 21e4 0008       move.l     #$000C21E4,8(a4)
[00033a34] 6004                      bra.s      $00033A3A
[00033a36] 42ac 0008                 clr.l      8(a4)
[00033a3a] 486c 000c                 pea.l      12(a4)
[00033a3e] 2f2a 000c                 move.l     12(a2),-(a7)
[00033a42] 43ec feb6                 lea.l      -330(a4),a1
[00033a46] 204b                      movea.l    a3,a0
[00033a48] 6100 fefe                 bsr        $00033948
[00033a4c] 504f                      addq.w     #8,a7
[00033a4e] 3f00                      move.w     d0,-(a7)
[00033a50] 486c 0010                 pea.l      16(a4)
[00033a54] 2f2a 0010                 move.l     16(a2),-(a7)
[00033a58] 43ec fef8                 lea.l      -264(a4),a1
[00033a5c] 204b                      movea.l    a3,a0
[00033a5e] 6100 fee8                 bsr        $00033948
[00033a62] 504f                      addq.w     #8,a7
[00033a64] e548                      lsl.w      #2,d0
[00033a66] 805f                      or.w       (a7)+,d0
[00033a68] 3f00                      move.w     d0,-(a7)
[00033a6a] 486c 0014                 pea.l      20(a4)
[00033a6e] 2f2a 0014                 move.l     20(a2),-(a7)
[00033a72] 43ec ff3a                 lea.l      -198(a4),a1
[00033a76] 204b                      movea.l    a3,a0
[00033a78] 6100 fece                 bsr        $00033948
[00033a7c] 504f                      addq.w     #8,a7
[00033a7e] e948                      lsl.w      #4,d0
[00033a80] 805f                      or.w       (a7)+,d0
[00033a82] 3940 0058                 move.w     d0,88(a4)
[00033a86] 206a 0018                 movea.l    24(a2),a0
[00033a8a] 4eb9 0004 3a92            jsr        $00043A92
[00033a90] 4a40                      tst.w      d0
[00033a92] 662a                      bne.s      $00033ABE
[00033a94] 302c fdec                 move.w     -532(a4),d0
[00033a98] 48c0                      ext.l      d0
[00033a9a] 226a 0018                 movea.l    24(a2),a1
[00033a9e] 206c ff80                 movea.l    -128(a4),a0
[00033aa2] 4eb9 0007 6a1a            jsr        $00076A1A
[00033aa8] 302c fdec                 move.w     -532(a4),d0
[00033aac] 206c ff80                 movea.l    -128(a4),a0
[00033ab0] 4230 0000                 clr.b      0(a0,d0.w)
[00033ab4] 297c 000c 22ec 0018       move.l     #$000C22EC,24(a4)
[00033abc] 6004                      bra.s      $00033AC2
[00033abe] 42ac 0018                 clr.l      24(a4)
[00033ac2] 206a 001c                 movea.l    28(a2),a0
[00033ac6] 4eb9 0004 3a92            jsr        $00043A92
[00033acc] 4a40                      tst.w      d0
[00033ace] 662a                      bne.s      $00033AFA
[00033ad0] 302c fdee                 move.w     -530(a4),d0
[00033ad4] 48c0                      ext.l      d0
[00033ad6] 226a 0018                 movea.l    24(a2),a1
[00033ada] 206c ffc2                 movea.l    -62(a4),a0
[00033ade] 4eb9 0007 6a1a            jsr        $00076A1A
[00033ae4] 302c fdee                 move.w     -530(a4),d0
[00033ae8] 206c ffc2                 movea.l    -62(a4),a0
[00033aec] 4230 0000                 clr.b      0(a0,d0.w)
[00033af0] 297c 000c 232e 001c       move.l     #$000C232E,28(a4)
[00033af8] 6004                      bra.s      $00033AFE
[00033afa] 42ac 001c                 clr.l      28(a4)
[00033afe] 43ec 0020                 lea.l      32(a4),a1
[00033b02] 204b                      movea.l    a3,a0
[00033b04] 6100 fb06                 bsr        $0003360C
[00033b08] 2848                      movea.l    a0,a4
[00033b0a] 200c                      move.l     a4,d0
[00033b0c] 6708                      beq.s      $00033B16
[00033b0e] 224d                      movea.l    a5,a1
[00033b10] 204b                      movea.l    a3,a0
[00033b12] 6100 fc50                 bsr        $00033764
[00033b16] 204c                      movea.l    a4,a0
[00033b18] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00033b1c] 4e75                      rts
chgadd_3ref:
[00033b1e] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00033b22] 2848                      movea.l    a0,a4
[00033b24] 2a49                      movea.l    a1,a5
[00033b26] 3600                      move.w     d0,d3
[00033b28] 266f 0018                 movea.l    24(a7),a3
[00033b2c] 95ca                      suba.l     a2,a2
[00033b2e] 240b                      move.l     a3,d2
[00033b30] 6752                      beq.s      $00033B84
[00033b32] 7003                      moveq.l    #3,d0
[00033b34] c041                      and.w      d1,d0
[00033b36] 5340                      subq.w     #1,d0
[00033b38] 670a                      beq.s      $00033B44
[00033b3a] 5340                      subq.w     #1,d0
[00033b3c] 6714                      beq.s      $00033B52
[00033b3e] 5340                      subq.w     #1,d0
[00033b40] 6736                      beq.s      $00033B78
[00033b42] 6040                      bra.s      $00033B84
[00033b44] 224b                      movea.l    a3,a1
[00033b46] 204c                      movea.l    a4,a0
[00033b48] 4eb9 0003 4306            jsr        $00034306
[00033b4e] 2448                      movea.l    a0,a2
[00033b50] 6032                      bra.s      $00033B84
[00033b52] 2015                      move.l     (a5),d0
[00033b54] 660e                      bne.s      $00033B64
[00033b56] 224b                      movea.l    a3,a1
[00033b58] 204c                      movea.l    a4,a0
[00033b5a] 4eb9 0003 461e            jsr        $0003461E
[00033b60] 2448                      movea.l    a0,a2
[00033b62] 6020                      bra.s      $00033B84
[00033b64] 2f2b 0004                 move.l     4(a3),-(a7)
[00033b68] 2255                      movea.l    (a5),a1
[00033b6a] 204c                      movea.l    a4,a0
[00033b6c] 4eb9 0003 475a            jsr        $0003475A
[00033b72] 584f                      addq.w     #4,a7
[00033b74] 2448                      movea.l    a0,a2
[00033b76] 600c                      bra.s      $00033B84
[00033b78] 224b                      movea.l    a3,a1
[00033b7a] 204c                      movea.l    a4,a0
[00033b7c] 4eb9 0003 29b4            jsr        $000329B4
[00033b82] 2448                      movea.l    a0,a2
[00033b84] 2015                      move.l     (a5),d0
[00033b86] 670e                      beq.s      $00033B96
[00033b88] b5c0                      cmpa.l     d0,a2
[00033b8a] 670a                      beq.s      $00033B96
[00033b8c] 2240                      movea.l    d0,a1
[00033b8e] 204c                      movea.l    a4,a0
[00033b90] 3003                      move.w     d3,d0
[00033b92] 6100 f97c                 bsr        $00033510
[00033b96] 2a8a                      move.l     a2,(a5)
[00033b98] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00033b9c] 4e75                      rts
change_udf:
[00033b9e] 48e7 003e                 movem.l    a2-a6,-(a7)
[00033ba2] 594f                      subq.w     #4,a7
[00033ba4] 2848                      movea.l    a0,a4
[00033ba6] 2449                      movea.l    a1,a2
[00033ba8] 2a6f 001c                 movea.l    28(a7),a5
[00033bac] 266a 0004                 movea.l    4(a2),a3
[00033bb0] 006c 0001 0006            ori.w      #$0001,6(a4)
[00033bb6] 2053                      movea.l    (a3),a0
[00033bb8] 41e8 0016                 lea.l      22(a0),a0
[00033bbc] 2e88                      move.l     a0,(a7)
[00033bbe] 4df9 000c 2370            lea.l      $000C2370,a6
[00033bc4] 701f                      moveq.l    #31,d0
[00033bc6] 43f9 000c 23d7            lea.l      $000C23D7,a1
[00033bcc] 2f00                      move.l     d0,-(a7)
[00033bce] 2f09                      move.l     a1,-(a7)
[00033bd0] 41ee 0036                 lea.l      54(a6),a0
[00033bd4] 226f 0008                 movea.l    8(a7),a1
[00033bd8] 4eb9 0007 6950            jsr        $00076950
[00033bde] 225f                      movea.l    (a7)+,a1
[00033be0] 201f                      move.l     (a7)+,d0
[00033be2] 4eb9 0007 69da            jsr        $000769DA
[00033be8] 4eb9 0007 6bc4            jsr        $00076BC4
[00033bee] 2257                      movea.l    (a7),a1
[00033bf0] 41ee fe06                 lea.l      -506(a6),a0
[00033bf4] 4eb9 0007 6950            jsr        $00076950
[00033bfa] 2255                      movea.l    (a5),a1
[00033bfc] 41ee fe48                 lea.l      -440(a6),a0
[00033c00] 4eb9 0007 6950            jsr        $00076950
[00033c06] 206d 0004                 movea.l    4(a5),a0
[00033c0a] 4eb9 0004 3a92            jsr        $00043A92
[00033c10] 4a40                      tst.w      d0
[00033c12] 6618                      bne.s      $00033C2C
[00033c14] 226d 0004                 movea.l    4(a5),a1
[00033c18] 41ee fe8a                 lea.l      -374(a6),a0
[00033c1c] 4eb9 0007 6950            jsr        $00076950
[00033c22] 2d7c 000c 21e4 0008       move.l     #$000C21E4,8(a6)
[00033c2a] 6004                      bra.s      $00033C30
[00033c2c] 42ae 0008                 clr.l      8(a6)
[00033c30] 302d 0012                 move.w     18(a5),d0
[00033c34] e548                      lsl.w      #2,d0
[00033c36] 806d 0008                 or.w       8(a5),d0
[00033c3a] 322d 001c                 move.w     28(a5),d1
[00033c3e] e949                      lsl.w      #4,d1
[00033c40] 8041                      or.w       d1,d0
[00033c42] 3d40 0058                 move.w     d0,88(a6)
[00033c46] 486e 000c                 pea.l      12(a6)
[00033c4a] 222d 000e                 move.l     14(a5),d1
[00033c4e] 226d 000a                 movea.l    10(a5),a1
[00033c52] 302d 0008                 move.w     8(a5),d0
[00033c56] 41ee feb6                 lea.l      -330(a6),a0
[00033c5a] 6100 fc64                 bsr        $000338C0
[00033c5e] 584f                      addq.w     #4,a7
[00033c60] 486e 0010                 pea.l      16(a6)
[00033c64] 222d 0018                 move.l     24(a5),d1
[00033c68] 226d 0014                 movea.l    20(a5),a1
[00033c6c] 302d 0012                 move.w     18(a5),d0
[00033c70] 41ee fef8                 lea.l      -264(a6),a0
[00033c74] 6100 fc4a                 bsr        $000338C0
[00033c78] 584f                      addq.w     #4,a7
[00033c7a] 486e 0014                 pea.l      20(a6)
[00033c7e] 222d 0022                 move.l     34(a5),d1
[00033c82] 226d 001e                 movea.l    30(a5),a1
[00033c86] 302d 001c                 move.w     28(a5),d0
[00033c8a] 41ee ff3a                 lea.l      -198(a6),a0
[00033c8e] 6100 fc30                 bsr        $000338C0
[00033c92] 584f                      addq.w     #4,a7
[00033c94] 206d 0026                 movea.l    38(a5),a0
[00033c98] 4eb9 0004 3a92            jsr        $00043A92
[00033c9e] 4a40                      tst.w      d0
[00033ca0] 6640                      bne.s      $00033CE2
[00033ca2] 70ff                      moveq.l    #-1,d0
[00033ca4] d06e fdec                 add.w      -532(a6),d0
[00033ca8] 48c0                      ext.l      d0
[00033caa] 226d 0026                 movea.l    38(a5),a1
[00033cae] 206e ff80                 movea.l    -128(a6),a0
[00033cb2] 4eb9 0007 6a1a            jsr        $00076A1A
[00033cb8] 302e fdec                 move.w     -532(a6),d0
[00033cbc] 206e ff80                 movea.l    -128(a6),a0
[00033cc0] 4230 0000                 clr.b      0(a0,d0.w)
[00033cc4] 206e ff80                 movea.l    -128(a6),a0
[00033cc8] 4eb9 0007 69b0            jsr        $000769B0
[00033cce] 5280                      addq.l     #1,d0
[00033cd0] 2d40 ff8a                 move.l     d0,-118(a6)
[00033cd4] 2d40 ff86                 move.l     d0,-122(a6)
[00033cd8] 2d7c 000c 22ec 0018       move.l     #$000C22EC,24(a6)
[00033ce0] 6004                      bra.s      $00033CE6
[00033ce2] 42ae 0018                 clr.l      24(a6)
[00033ce6] 206d 002a                 movea.l    42(a5),a0
[00033cea] 4eb9 0004 3a92            jsr        $00043A92
[00033cf0] 4a40                      tst.w      d0
[00033cf2] 6640                      bne.s      $00033D34
[00033cf4] 70ff                      moveq.l    #-1,d0
[00033cf6] d06e fdee                 add.w      -530(a6),d0
[00033cfa] 48c0                      ext.l      d0
[00033cfc] 226d 002a                 movea.l    42(a5),a1
[00033d00] 206e ffc2                 movea.l    -62(a6),a0
[00033d04] 4eb9 0007 6a1a            jsr        $00076A1A
[00033d0a] 302e fdee                 move.w     -530(a6),d0
[00033d0e] 206e ffc2                 movea.l    -62(a6),a0
[00033d12] 4230 0000                 clr.b      0(a0,d0.w)
[00033d16] 206e ffc2                 movea.l    -62(a6),a0
[00033d1a] 4eb9 0007 69b0            jsr        $000769B0
[00033d20] 5280                      addq.l     #1,d0
[00033d22] 2d40 ffcc                 move.l     d0,-52(a6)
[00033d26] 2d40 ffc8                 move.l     d0,-56(a6)
[00033d2a] 2d7c 000c 232e 001c       move.l     #$000C232E,28(a6)
[00033d32] 6004                      bra.s      $00033D38
[00033d34] 42ae 001c                 clr.l      28(a6)
[00033d38] 2a53                      movea.l    (a3),a5
[00033d3a] 43ee fdf0                 lea.l      -528(a6),a1
[00033d3e] 204c                      movea.l    a4,a0
[00033d40] 4eb9 0003 4306            jsr        $00034306
[00033d46] 2688                      move.l     a0,(a3)
[00033d48] 2008                      move.l     a0,d0
[00033d4a] 670c                      beq.s      $00033D58
[00033d4c] 224d                      movea.l    a5,a1
[00033d4e] 204c                      movea.l    a4,a0
[00033d50] 4eb9 0003 448e            jsr        $0003448E
[00033d56] 6002                      bra.s      $00033D5A
[00033d58] 268d                      move.l     a5,(a3)
[00033d5a] 2a6b 0004                 movea.l    4(a3),a5
[00033d5e] 43ee fe32                 lea.l      -462(a6),a1
[00033d62] 204c                      movea.l    a4,a0
[00033d64] 4eb9 0003 4306            jsr        $00034306
[00033d6a] 2748 0004                 move.l     a0,4(a3)
[00033d6e] 2008                      move.l     a0,d0
[00033d70] 670c                      beq.s      $00033D7E
[00033d72] 224d                      movea.l    a5,a1
[00033d74] 204c                      movea.l    a4,a0
[00033d76] 4eb9 0003 448e            jsr        $0003448E
[00033d7c] 6004                      bra.s      $00033D82
[00033d7e] 274d 0004                 move.l     a5,4(a3)
[00033d82] 202e 0008                 move.l     8(a6),d0
[00033d86] 6724                      beq.s      $00033DAC
[00033d88] 2a6b 0008                 movea.l    8(a3),a5
[00033d8c] 43ee fe74                 lea.l      -396(a6),a1
[00033d90] 204c                      movea.l    a4,a0
[00033d92] 6100 f700                 bsr        $00033494
[00033d96] 2748 0008                 move.l     a0,8(a3)
[00033d9a] 2008                      move.l     a0,d0
[00033d9c] 670a                      beq.s      $00033DA8
[00033d9e] 224d                      movea.l    a5,a1
[00033da0] 204c                      movea.l    a4,a0
[00033da2] 6100 f710                 bsr        $000334B4
[00033da6] 6004                      bra.s      $00033DAC
[00033da8] 274d 0008                 move.l     a5,8(a3)
[00033dac] 2f2e 000c                 move.l     12(a6),-(a7)
[00033db0] 322e 0058                 move.w     88(a6),d1
[00033db4] 302a 0038                 move.w     56(a2),d0
[00033db8] 43eb 000c                 lea.l      12(a3),a1
[00033dbc] 204c                      movea.l    a4,a0
[00033dbe] 6100 fd5e                 bsr        $00033B1E
[00033dc2] 584f                      addq.w     #4,a7
[00033dc4] 2f2e 0010                 move.l     16(a6),-(a7)
[00033dc8] 322e 0058                 move.w     88(a6),d1
[00033dcc] e441                      asr.w      #2,d1
[00033dce] 302a 0038                 move.w     56(a2),d0
[00033dd2] e440                      asr.w      #2,d0
[00033dd4] 43eb 0010                 lea.l      16(a3),a1
[00033dd8] 204c                      movea.l    a4,a0
[00033dda] 6100 fd42                 bsr        $00033B1E
[00033dde] 584f                      addq.w     #4,a7
[00033de0] 2f2e 0014                 move.l     20(a6),-(a7)
[00033de4] 322e 0058                 move.w     88(a6),d1
[00033de8] e841                      asr.w      #4,d1
[00033dea] 302a 0038                 move.w     56(a2),d0
[00033dee] e840                      asr.w      #4,d0
[00033df0] 43eb 0014                 lea.l      20(a3),a1
[00033df4] 204c                      movea.l    a4,a0
[00033df6] 6100 fd26                 bsr        $00033B1E
[00033dfa] 584f                      addq.w     #4,a7
[00033dfc] 2f2e 0018                 move.l     24(a6),-(a7)
[00033e00] 7202                      moveq.l    #2,d1
[00033e02] 7002                      moveq.l    #2,d0
[00033e04] 43eb 0018                 lea.l      24(a3),a1
[00033e08] 204c                      movea.l    a4,a0
[00033e0a] 6100 fd12                 bsr        $00033B1E
[00033e0e] 584f                      addq.w     #4,a7
[00033e10] 2f2e 001c                 move.l     28(a6),-(a7)
[00033e14] 7202                      moveq.l    #2,d1
[00033e16] 7002                      moveq.l    #2,d0
[00033e18] 43eb 001c                 lea.l      28(a3),a1
[00033e1c] 204c                      movea.l    a4,a0
[00033e1e] 6100 fcfe                 bsr        $00033B1E
[00033e22] 584f                      addq.w     #4,a7
[00033e24] 70c0                      moveq.l    #-64,d0
[00033e26] c06a 0038                 and.w      56(a2),d0
[00033e2a] 723f                      moveq.l    #63,d1
[00033e2c] c26e 0058                 and.w      88(a6),d1
[00033e30] 8041                      or.w       d1,d0
[00033e32] 3540 0038                 move.w     d0,56(a2)
[00033e36] 584f                      addq.w     #4,a7
[00033e38] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[00033e3c] 4e75                      rts
new_work:
[00033e3e] 303c 271f                 move.w     #$271F,d0
[00033e42] 2279 000a 6e0c            movea.l    $000A6E0C,a1
[00033e48] 4eb9 0003 24b6            jsr        $000324B6
[00033e4e] 4e75                      rts
