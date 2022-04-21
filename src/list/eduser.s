
add_2ref:
[00033494] 2f0a                      move.l     a2,-(a7)
[00033496] 2f0b                      move.l     a3,-(a7)
[00033498] 2648                      movea.l    a0,a3
[0003349a] 2449                      movea.l    a1,a2
[0003349c] 200a                      move.l     a2,d0
[0003349e] 6604                      bne.s      add_2ref_1
[000334a0] 91c8                      suba.l     a0,a0
[000334a2] 600a                      bra.s      add_2ref_2
add_2ref_1:
[000334a4] 224a                      movea.l    a2,a1
[000334a6] 204b                      movea.l    a3,a0
[000334a8] 4eb9 0003 4306            jsr        add_ref
add_2ref_2:
[000334ae] 265f                      movea.l    (a7)+,a3
[000334b0] 245f                      movea.l    (a7)+,a2
[000334b2] 4e75                      rts

del_2ref:
[000334b4] 2f0a                      move.l     a2,-(a7)
[000334b6] 2449                      movea.l    a1,a2
[000334b8] 200a                      move.l     a2,d0
[000334ba] 6706                      beq.s      del_2ref_1
[000334bc] 4eb9 0003 448e            jsr        del_ref
del_2ref_1:
[000334c2] 245f                      movea.l    (a7)+,a2
[000334c4] 4e75                      rts

add_3ref:
[000334c6] 2f0a                      move.l     a2,-(a7)
[000334c8] 2f0b                      move.l     a3,-(a7)
[000334ca] 2648                      movea.l    a0,a3
[000334cc] 2449                      movea.l    a1,a2
[000334ce] 220a                      move.l     a2,d1
[000334d0] 6736                      beq.s      add_3ref_1
[000334d2] 7403                      moveq.l    #3,d2
[000334d4] c440                      and.w      d0,d2
[000334d6] 5342                      subq.w     #1,d2
[000334d8] 670a                      beq.s      add_3ref_2
[000334da] 5342                      subq.w     #1,d2
[000334dc] 6712                      beq.s      add_3ref_3
[000334de] 5342                      subq.w     #1,d2
[000334e0] 671a                      beq.s      add_3ref_4
[000334e2] 6024                      bra.s      add_3ref_1
add_3ref_2:
[000334e4] 224a                      movea.l    a2,a1
[000334e6] 204b                      movea.l    a3,a0
[000334e8] 4eb9 0003 4306            jsr        add_ref
[000334ee] 601a                      bra.s      add_3ref_5
add_3ref_3:
[000334f0] 224a                      movea.l    a2,a1
[000334f2] 204b                      movea.l    a3,a0
[000334f4] 4eb9 0003 461e            jsr        add_string
[000334fa] 600e                      bra.s      add_3ref_5
add_3ref_4:
[000334fc] 224a                      movea.l    a2,a1
[000334fe] 204b                      movea.l    a3,a0
[00033500] 4eb9 0003 29b4            jsr        add_data
[00033506] 6002                      bra.s      add_3ref_5
add_3ref_1:
[00033508] 91c8                      suba.l     a0,a0
add_3ref_5:
[0003350a] 265f                      movea.l    (a7)+,a3
[0003350c] 245f                      movea.l    (a7)+,a2
[0003350e] 4e75                      rts

del_3ref:
[00033510] 2f0a                      move.l     a2,-(a7)
[00033512] 2f0b                      move.l     a3,-(a7)
[00033514] 2648                      movea.l    a0,a3
[00033516] 2449                      movea.l    a1,a2
[00033518] 220a                      move.l     a2,d1
[0003351a] 6734                      beq.s      del_3ref_1
[0003351c] 7403                      moveq.l    #3,d2
[0003351e] c440                      and.w      d0,d2
[00033520] 5342                      subq.w     #1,d2
[00033522] 670a                      beq.s      del_3ref_2
[00033524] 5342                      subq.w     #1,d2
[00033526] 6712                      beq.s      del_3ref_3
[00033528] 5342                      subq.w     #1,d2
[0003352a] 671a                      beq.s      del_3ref_4
[0003352c] 6022                      bra.s      del_3ref_1
del_3ref_2:
[0003352e] 224a                      movea.l    a2,a1
[00033530] 204b                      movea.l    a3,a0
[00033532] 4eb9 0003 448e            jsr        del_ref
[00033538] 6016                      bra.s      del_3ref_1
del_3ref_3:
[0003353a] 224a                      movea.l    a2,a1
[0003353c] 204b                      movea.l    a3,a0
[0003353e] 4eb9 0003 47e8            jsr        del_string
[00033544] 600a                      bra.s      del_3ref_1
del_3ref_4:
[00033546] 224a                      movea.l    a2,a1
[00033548] 204b                      movea.l    a3,a0
[0003354a] 4eb9 0003 2a96            jsr        del_data
del_3ref_1:
[00033550] 265f                      movea.l    (a7)+,a3
[00033552] 245f                      movea.l    (a7)+,a2
[00033554] 4e75                      rts

comp_it:
[00033556] 2f0a                      move.l     a2,-(a7)
[00033558] 2f0b                      move.l     a3,-(a7)
[0003355a] 2448                      movea.l    a0,a2
[0003355c] 2649                      movea.l    a1,a3
[0003355e] 200a                      move.l     a2,d0
[00033560] 6608                      bne.s      comp_it_1
[00033562] 220b                      move.l     a3,d1
[00033564] 6604                      bne.s      comp_it_1
[00033566] 7001                      moveq.l    #1,d0
[00033568] 6024                      bra.s      comp_it_2
comp_it_1:
[0003356a] 200a                      move.l     a2,d0
[0003356c] 6704                      beq.s      comp_it_3
[0003356e] 220b                      move.l     a3,d1
[00033570] 6604                      bne.s      comp_it_4
comp_it_3:
[00033572] 4240                      clr.w      d0
[00033574] 6018                      bra.s      comp_it_2
comp_it_4:
[00033576] 43eb 0016                 lea.l      22(a3),a1
[0003357a] 41ea 0016                 lea.l      22(a2),a0
[0003357e] 4eb9 0007 68fe            jsr        strcmp
[00033584] 4a40                      tst.w      d0
[00033586] 6604                      bne.s      comp_it_5
[00033588] 7001                      moveq.l    #1,d0
[0003358a] 6002                      bra.s      comp_it_2
comp_it_5:
[0003358c] 4240                      clr.w      d0
comp_it_2:
[0003358e] 265f                      movea.l    (a7)+,a3
[00033590] 245f                      movea.l    (a7)+,a2
[00033592] 4e75                      rts

comp2_it:
[00033594] 2f0a                      move.l     a2,-(a7)
[00033596] 2f0b                      move.l     a3,-(a7)
[00033598] 2448                      movea.l    a0,a2
[0003359a] 2649                      movea.l    a1,a3
[0003359c] 220a                      move.l     a2,d1
[0003359e] 6608                      bne.s      comp2_it_1
[000335a0] 240b                      move.l     a3,d2
[000335a2] 6604                      bne.s      comp2_it_1
[000335a4] 7001                      moveq.l    #1,d0
[000335a6] 605e                      bra.s      comp2_it_2
comp2_it_1:
[000335a8] 220a                      move.l     a2,d1
[000335aa] 6758                      beq.s      comp2_it_3
[000335ac] 240b                      move.l     a3,d2
[000335ae] 6754                      beq.s      comp2_it_3
[000335b0] 7203                      moveq.l    #3,d1
[000335b2] c240                      and.w      d0,d1
[000335b4] 4a41                      tst.w      d1
[000335b6] 670e                      beq.s      comp2_it_4
[000335b8] 5341                      subq.w     #1,d1
[000335ba] 670a                      beq.s      comp2_it_4
[000335bc] 5341                      subq.w     #1,d1
[000335be] 6720                      beq.s      comp2_it_5
[000335c0] 5341                      subq.w     #1,d1
[000335c2] 671c                      beq.s      comp2_it_5
[000335c4] 603e                      bra.s      comp2_it_3
comp2_it_4:
[000335c6] 43eb 0016                 lea.l      22(a3),a1
[000335ca] 41ea 0016                 lea.l      22(a2),a0
[000335ce] 4eb9 0007 68fe            jsr        strcmp
[000335d4] 4a40                      tst.w      d0
[000335d6] 6604                      bne.s      comp2_it_6
[000335d8] 7001                      moveq.l    #1,d0
[000335da] 6002                      bra.s      comp2_it_7
comp2_it_6:
[000335dc] 4240                      clr.w      d0
comp2_it_7:
[000335de] 6026                      bra.s      comp2_it_2
comp2_it_5:
[000335e0] 202a 000e                 move.l     14(a2),d0
[000335e4] b0ab 000e                 cmp.l      14(a3),d0
[000335e8] 6616                      bne.s      comp2_it_8
[000335ea] 226b 0004                 movea.l    4(a3),a1
[000335ee] 206a 0004                 movea.l    4(a2),a0
[000335f2] 4eb9 0007 6f2e            jsr        memcmp
[000335f8] 4a40                      tst.w      d0
[000335fa] 6604                      bne.s      comp2_it_8
[000335fc] 7001                      moveq.l    #1,d0
[000335fe] 6002                      bra.s      comp2_it_9
comp2_it_8:
[00033600] 4240                      clr.w      d0
comp2_it_9:
[00033602] 6002                      bra.s      comp2_it_2
comp2_it_3:
[00033604] 4240                      clr.w      d0
comp2_it_2:
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
[00033640] 6700 00dc                 beq        add_user_1
[00033644] 2828 000e                 move.l     14(a0),d4
[00033648] e48c                      lsr.l      #2,d4
[0003364a] 4245                      clr.w      d5
[0003364c] 6000 00ca                 bra        add_user_2
add_user_5:
[00033650] 3005                      move.w     d5,d0
[00033652] 48c0                      ext.l      d0
[00033654] e588                      lsl.l      #2,d0
[00033656] 2057                      movea.l    (a7),a0
[00033658] 2670 0800                 movea.l    0(a0,d0.l),a3
[0003365c] 286b 0004                 movea.l    4(a3),a4
[00033660] 322b 0038                 move.w     56(a3),d1
[00033664] c27c 00ff                 and.w      #$00FF,d1
[00033668] b641                      cmp.w      d1,d3
[0003366a] 6600 00aa                 bne        add_user_3
[0003366e] 2255                      movea.l    (a5),a1
[00033670] 43e9 0016                 lea.l      22(a1),a1
[00033674] 2054                      movea.l    (a4),a0
[00033676] 41e8 0016                 lea.l      22(a0),a0
[0003367a] 4eb9 0007 68fe            jsr        strcmp
[00033680] 4a40                      tst.w      d0
[00033682] 6600 0092                 bne        add_user_3
[00033686] 226d 0004                 movea.l    4(a5),a1
[0003368a] 43e9 0016                 lea.l      22(a1),a1
[0003368e] 206c 0004                 movea.l    4(a4),a0
[00033692] 41e8 0016                 lea.l      22(a0),a0
[00033696] 4eb9 0007 68fe            jsr        strcmp
[0003369c] 4a40                      tst.w      d0
[0003369e] 6600 0076                 bne.w      add_user_3
[000336a2] 226d 0008                 movea.l    8(a5),a1
[000336a6] 206c 0008                 movea.l    8(a4),a0
[000336aa] 6100 feaa                 bsr        comp_it
[000336ae] 4a40                      tst.w      d0
[000336b0] 6764                      beq.s      add_user_3
[000336b2] 3003                      move.w     d3,d0
[000336b4] 226d 000c                 movea.l    12(a5),a1
[000336b8] 206c 000c                 movea.l    12(a4),a0
[000336bc] 6100 fed6                 bsr        comp2_it
[000336c0] 4a40                      tst.w      d0
[000336c2] 6752                      beq.s      add_user_3
[000336c4] 3003                      move.w     d3,d0
[000336c6] e440                      asr.w      #2,d0
[000336c8] 226d 0010                 movea.l    16(a5),a1
[000336cc] 206c 0010                 movea.l    16(a4),a0
[000336d0] 6100 fec2                 bsr        comp2_it
[000336d4] 4a40                      tst.w      d0
[000336d6] 673e                      beq.s      add_user_3
[000336d8] 3003                      move.w     d3,d0
[000336da] e840                      asr.w      #4,d0
[000336dc] 226d 0014                 movea.l    20(a5),a1
[000336e0] 206c 0014                 movea.l    20(a4),a0
[000336e4] 6100 feae                 bsr        comp2_it
[000336e8] 4a40                      tst.w      d0
[000336ea] 672a                      beq.s      add_user_3
[000336ec] 7002                      moveq.l    #2,d0
[000336ee] 226d 0018                 movea.l    24(a5),a1
[000336f2] 206c 0018                 movea.l    24(a4),a0
[000336f6] 6100 fe9c                 bsr        comp2_it
[000336fa] 4a40                      tst.w      d0
[000336fc] 6718                      beq.s      add_user_3
[000336fe] 7002                      moveq.l    #2,d0
[00033700] 226d 001c                 movea.l    28(a5),a1
[00033704] 206c 001c                 movea.l    28(a4),a0
[00033708] 6100 fe8a                 bsr        comp2_it
[0003370c] 4a40                      tst.w      d0
[0003370e] 6706                      beq.s      add_user_3
[00033710] 526b 0036                 addq.w     #1,54(a3)
[00033714] 6044                      bra.s      add_user_4
add_user_3:
[00033716] 5245                      addq.w     #1,d5
add_user_2:
[00033718] b845                      cmp.w      d5,d4
[0003371a] 6e00 ff34                 bgt        add_user_5
add_user_1:
[0003371e] 226f 0004                 movea.l    4(a7),a1
[00033722] 204a                      movea.l    a2,a0
[00033724] 4eb9 0003 3802            jsr        copy_user
[0003372a] 2648                      movea.l    a0,a3
[0003372c] 200b                      move.l     a3,d0
[0003372e] 6604                      bne.s      add_user_6
[00033730] 91c8                      suba.l     a0,a0
[00033732] 6028                      bra.s      add_user_7
add_user_6:
[00033734] 2f39 000c 2142            move.l     $000C2142,-(a7)
[0003373a] 206f 0008                 movea.l    8(a7),a0
[0003373e] 4868 0016                 pea.l      22(a0)
[00033742] 224b                      movea.l    a3,a1
[00033744] 204a                      movea.l    a2,a0
[00033746] 4eb9 0001 6448            jsr        objname
[0003374c] 504f                      addq.w     #8,a7
[0003374e] 224b                      movea.l    a3,a1
[00033750] 206a 0038                 movea.l    56(a2),a0
[00033754] 4eb9 0003 1a94            jsr        add_entry
add_user_4:
[0003375a] 204b                      movea.l    a3,a0
add_user_7:
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
[0003377a] 6e00 0080                 bgt        del_user_1
[0003377e] 286b 0004                 movea.l    4(a3),a4
[00033782] 2254                      movea.l    (a4),a1
[00033784] 4eb9 0003 448e            jsr        del_ref
[0003378a] 226c 0004                 movea.l    4(a4),a1
[0003378e] 204a                      movea.l    a2,a0
[00033790] 4eb9 0003 448e            jsr        del_ref
[00033796] 226c 0008                 movea.l    8(a4),a1
[0003379a] 204a                      movea.l    a2,a0
[0003379c] 6100 fd16                 bsr        del_2ref
[000337a0] 302b 0038                 move.w     56(a3),d0
[000337a4] 226c 000c                 movea.l    12(a4),a1
[000337a8] 204a                      movea.l    a2,a0
[000337aa] 6100 fd64                 bsr        del_3ref
[000337ae] 302b 0038                 move.w     56(a3),d0
[000337b2] e440                      asr.w      #2,d0
[000337b4] 226c 0010                 movea.l    16(a4),a1
[000337b8] 204a                      movea.l    a2,a0
[000337ba] 6100 fd54                 bsr        del_3ref
[000337be] 302b 0038                 move.w     56(a3),d0
[000337c2] e840                      asr.w      #4,d0
[000337c4] 226c 0014                 movea.l    20(a4),a1
[000337c8] 204a                      movea.l    a2,a0
[000337ca] 6100 fd44                 bsr        del_3ref
[000337ce] 7002                      moveq.l    #2,d0
[000337d0] 226c 0018                 movea.l    24(a4),a1
[000337d4] 204a                      movea.l    a2,a0
[000337d6] 6100 fd38                 bsr        del_3ref
[000337da] 7002                      moveq.l    #2,d0
[000337dc] 226c 001c                 movea.l    28(a4),a1
[000337e0] 204a                      movea.l    a2,a0
[000337e2] 6100 fd2c                 bsr        del_3ref
[000337e6] 224b                      movea.l    a3,a1
[000337e8] 206a 0038                 movea.l    56(a2),a0
[000337ec] 4eb9 0003 1b00            jsr        del_entry
[000337f2] 224b                      movea.l    a3,a1
[000337f4] 204a                      movea.l    a2,a0
[000337f6] 4eb9 0001 61d4            jsr        objfree
del_user_1:
[000337fc] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00033800] 4e75                      rts

copy_user:
[00033802] 48e7 003e                 movem.l    a2-a6,-(a7)
[00033806] 2448                      movea.l    a0,a2
[00033808] 2849                      movea.l    a1,a4
[0003380a] 7020                      moveq.l    #32,d0
[0003380c] 4eb9 0001 6230            jsr        objmalloc
[00033812] 2648                      movea.l    a0,a3
[00033814] 200b                      move.l     a3,d0
[00033816] 6606                      bne.s      copy_user_1
[00033818] 91c8                      suba.l     a0,a0
[0003381a] 6000 009e                 bra        copy_user_2
copy_user_1:
[0003381e] 2a6c 0004                 movea.l    4(a4),a5
[00033822] 2c6b 0004                 movea.l    4(a3),a6
[00033826] 277c 0000 0020 000e       move.l     #$00000020,14(a3)
[0003382e] 376c 0038 0038            move.w     56(a4),56(a3)
[00033834] 2255                      movea.l    (a5),a1
[00033836] 204a                      movea.l    a2,a0
[00033838] 4eb9 0003 4306            jsr        add_ref
[0003383e] 2c88                      move.l     a0,(a6)
[00033840] 226d 0004                 movea.l    4(a5),a1
[00033844] 204a                      movea.l    a2,a0
[00033846] 4eb9 0003 4306            jsr        add_ref
[0003384c] 2d48 0004                 move.l     a0,4(a6)
[00033850] 226d 0008                 movea.l    8(a5),a1
[00033854] 204a                      movea.l    a2,a0
[00033856] 6100 fc3c                 bsr        add_2ref
[0003385a] 2d48 0008                 move.l     a0,8(a6)
[0003385e] 302c 0038                 move.w     56(a4),d0
[00033862] 226d 000c                 movea.l    12(a5),a1
[00033866] 204a                      movea.l    a2,a0
[00033868] 6100 fc5c                 bsr        add_3ref
[0003386c] 2d48 000c                 move.l     a0,12(a6)
[00033870] 302c 0038                 move.w     56(a4),d0
[00033874] e440                      asr.w      #2,d0
[00033876] 226d 0010                 movea.l    16(a5),a1
[0003387a] 204a                      movea.l    a2,a0
[0003387c] 6100 fc48                 bsr        add_3ref
[00033880] 2d48 0010                 move.l     a0,16(a6)
[00033884] 302c 0038                 move.w     56(a4),d0
[00033888] e840                      asr.w      #4,d0
[0003388a] 226d 0014                 movea.l    20(a5),a1
[0003388e] 204a                      movea.l    a2,a0
[00033890] 6100 fc34                 bsr        add_3ref
[00033894] 2d48 0014                 move.l     a0,20(a6)
[00033898] 7002                      moveq.l    #2,d0
[0003389a] 226d 0018                 movea.l    24(a5),a1
[0003389e] 204a                      movea.l    a2,a0
[000338a0] 6100 fc24                 bsr        add_3ref
[000338a4] 2d48 0018                 move.l     a0,24(a6)
[000338a8] 7002                      moveq.l    #2,d0
[000338aa] 226d 001c                 movea.l    28(a5),a1
[000338ae] 204a                      movea.l    a2,a0
[000338b0] 6100 fc14                 bsr        add_3ref
[000338b4] 2d48 001c                 move.l     a0,28(a6)
[000338b8] 204b                      movea.l    a3,a0
copy_user_2:
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
[000338d2] 670a                      beq.s      set_udftype_1
[000338d4] 5342                      subq.w     #1,d2
[000338d6] 6724                      beq.s      set_udftype_2
[000338d8] 5342                      subq.w     #1,d2
[000338da] 6744                      beq.s      set_udftype_3
[000338dc] 6062                      bra.s      set_udftype_4
set_udftype_1:
[000338de] 701f                      moveq.l    #31,d0
[000338e0] 224a                      movea.l    a2,a1
[000338e2] 41eb 0016                 lea.l      22(a3),a0
[000338e6] 4eb9 0007 6a1a            jsr        strncpy
[000338ec] 42ab 0004                 clr.l      4(a3)
[000338f0] 7000                      moveq.l    #0,d0
[000338f2] 2740 000a                 move.l     d0,10(a3)
[000338f6] 2740 000e                 move.l     d0,14(a3)
[000338fa] 6040                      bra.s      set_udftype_5
set_udftype_2:
[000338fc] 43f9 000c 23d2            lea.l      xc23d2,a1
[00033902] 41eb 0016                 lea.l      22(a3),a0
[00033906] 4eb9 0007 6950            jsr        strcpy
[0003390c] 204a                      movea.l    a2,a0
[0003390e] 4eb9 0007 69b0            jsr        strlen
[00033914] 5280                      addq.l     #1,d0
[00033916] 2740 000a                 move.l     d0,10(a3)
[0003391a] 2740 000e                 move.l     d0,14(a3)
[0003391e] 6018                      bra.s      set_udftype_6
set_udftype_3:
[00033920] 43f9 000c 23da            lea.l      xc23da,a1
[00033926] 41eb 0016                 lea.l      22(a3),a0
[0003392a] 4eb9 0007 6950            jsr        strcpy
[00033930] 2743 000a                 move.l     d3,10(a3)
[00033934] 2743 000e                 move.l     d3,14(a3)
set_udftype_6:
[00033938] 274a 0004                 move.l     a2,4(a3)
set_udftype_5:
[0003393c] 288b                      move.l     a3,(a4)
[0003393e] 6002                      bra.s      set_udftype_7
set_udftype_4:
[00033940] 4294                      clr.l      (a4)
set_udftype_7:
[00033942] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00033946] 4e75                      rts

set_usertype:
[00033948] 48e7 003e                 movem.l    a2-a6,-(a7)
[0003394c] 2648                      movea.l    a0,a3
[0003394e] 2c49                      movea.l    a1,a6
[00033950] 246f 0018                 movea.l    24(a7),a2
[00033954] 2a6f 001c                 movea.l    28(a7),a5
[00033958] 1012                      move.b     (a2),d0
[0003395a] 6758                      beq.s      set_usertype_1
[0003395c] 206b 0034                 movea.l    52(a3),a0
[00033960] 224a                      movea.l    a2,a1
[00033962] 4eb9 0003 1a5c            jsr        find_entry
[00033968] 2848                      movea.l    a0,a4
[0003396a] 200c                      move.l     a4,d0
[0003396c] 6706                      beq.s      set_usertype_2
[0003396e] 2a80                      move.l     d0,(a5)
[00033970] 7002                      moveq.l    #2,d0
[00033972] 6044                      bra.s      set_usertype_3
set_usertype_2:
[00033974] 224a                      movea.l    a2,a1
[00033976] 206b 0044                 movea.l    68(a3),a0
[0003397a] 4eb9 0003 1a5c            jsr        find_entry
[00033980] 2848                      movea.l    a0,a4
[00033982] 200c                      move.l     a4,d0
[00033984] 6706                      beq.s      set_usertype_4
[00033986] 2a80                      move.l     d0,(a5)
[00033988] 7003                      moveq.l    #3,d0
[0003398a] 602c                      bra.s      set_usertype_3
set_usertype_4:
[0003398c] 224a                      movea.l    a2,a1
[0003398e] 206b 003c                 movea.l    60(a3),a0
[00033992] 4eb9 0003 1a5c            jsr        find_entry
[00033998] 2848                      movea.l    a0,a4
[0003399a] 200c                      move.l     a4,d0
[0003399c] 6704                      beq.s      set_usertype_5
[0003399e] 2a80                      move.l     d0,(a5)
[000339a0] 600e                      bra.s      set_usertype_6
set_usertype_5:
[000339a2] 224a                      movea.l    a2,a1
[000339a4] 41ee 0016                 lea.l      22(a6),a0
[000339a8] 4eb9 0007 6950            jsr        strcpy
[000339ae] 2a8e                      move.l     a6,(a5)
set_usertype_6:
[000339b0] 7001                      moveq.l    #1,d0
[000339b2] 6004                      bra.s      set_usertype_3
set_usertype_1:
[000339b4] 4295                      clr.l      (a5)
[000339b6] 4240                      clr.w      d0
set_usertype_3:
[000339b8] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[000339bc] 4e75                      rts

change_user:
[000339be] 48e7 003c                 movem.l    a2-a5,-(a7)
[000339c2] 2648                      movea.l    a0,a3
[000339c4] 2a49                      movea.l    a1,a5
[000339c6] 246f 0014                 movea.l    20(a7),a2
[000339ca] 49f9 000c 2370            lea.l      us_blk,a4
[000339d0] 701f                      moveq.l    #31,d0
[000339d2] 43f9 000c 23d7            lea.l      xc23d7,a1
[000339d8] 2f00                      move.l     d0,-(a7)
[000339da] 2f09                      move.l     a1,-(a7)
[000339dc] 2252                      movea.l    (a2),a1
[000339de] 41ec 0036                 lea.l      54(a4),a0
[000339e2] 4eb9 0007 6950            jsr        strcpy
[000339e8] 225f                      movea.l    (a7)+,a1
[000339ea] 201f                      move.l     (a7)+,d0
[000339ec] 4eb9 0007 69da            jsr        strncat
[000339f2] 4eb9 0007 6bc4            jsr        strupr
[000339f8] 2252                      movea.l    (a2),a1
[000339fa] 41ec fe06                 lea.l      -506(a4),a0
[000339fe] 4eb9 0007 6950            jsr        strcpy
[00033a04] 226a 0004                 movea.l    4(a2),a1
[00033a08] 41ec fe48                 lea.l      -440(a4),a0
[00033a0c] 4eb9 0007 6950            jsr        strcpy
[00033a12] 206a 0008                 movea.l    8(a2),a0
[00033a16] 1010                      move.b     (a0),d0
[00033a18] 671c                      beq.s      change_user_1
[00033a1a] 2248                      movea.l    a0,a1
[00033a1c] 41ec fe8a                 lea.l      -374(a4),a0
[00033a20] 701f                      moveq.l    #31,d0
[00033a22] 4eb9 0007 6a1a            jsr        strncpy
[00033a28] 422c feaa                 clr.b      -342(a4)
[00033a2c] 297c 000c 21e4 0008       move.l     #serv,8(a4)
[00033a34] 6004                      bra.s      change_user_2
change_user_1:
[00033a36] 42ac 0008                 clr.l      8(a4)
change_user_2:
[00033a3a] 486c 000c                 pea.l      12(a4)
[00033a3e] 2f2a 000c                 move.l     12(a2),-(a7)
[00033a42] 43ec feb6                 lea.l      -330(a4),a1
[00033a46] 204b                      movea.l    a3,a0
[00033a48] 6100 fefe                 bsr        set_usertype
[00033a4c] 504f                      addq.w     #8,a7
[00033a4e] 3f00                      move.w     d0,-(a7)
[00033a50] 486c 0010                 pea.l      16(a4)
[00033a54] 2f2a 0010                 move.l     16(a2),-(a7)
[00033a58] 43ec fef8                 lea.l      -264(a4),a1
[00033a5c] 204b                      movea.l    a3,a0
[00033a5e] 6100 fee8                 bsr        set_usertype
[00033a62] 504f                      addq.w     #8,a7
[00033a64] e548                      lsl.w      #2,d0
[00033a66] 805f                      or.w       (a7)+,d0
[00033a68] 3f00                      move.w     d0,-(a7)
[00033a6a] 486c 0014                 pea.l      20(a4)
[00033a6e] 2f2a 0014                 move.l     20(a2),-(a7)
[00033a72] 43ec ff3a                 lea.l      -198(a4),a1
[00033a76] 204b                      movea.l    a3,a0
[00033a78] 6100 fece                 bsr        set_usertype
[00033a7c] 504f                      addq.w     #8,a7
[00033a7e] e948                      lsl.w      #4,d0
[00033a80] 805f                      or.w       (a7)+,d0
[00033a82] 3940 0058                 move.w     d0,88(a4)
[00033a86] 206a 0018                 movea.l    24(a2),a0
[00033a8a] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00033a90] 4a40                      tst.w      d0
[00033a92] 662a                      bne.s      change_user_3
[00033a94] 302c fdec                 move.w     -532(a4),d0
[00033a98] 48c0                      ext.l      d0
[00033a9a] 226a 0018                 movea.l    24(a2),a1
[00033a9e] 206c ff80                 movea.l    -128(a4),a0
[00033aa2] 4eb9 0007 6a1a            jsr        strncpy
[00033aa8] 302c fdec                 move.w     -532(a4),d0
[00033aac] 206c ff80                 movea.l    -128(a4),a0
[00033ab0] 4230 0000                 clr.b      0(a0,d0.w)
[00033ab4] 297c 000c 22ec 0018       move.l     #bubble,24(a4)
[00033abc] 6004                      bra.s      change_user_4
change_user_3:
[00033abe] 42ac 0018                 clr.l      24(a4)
change_user_4:
[00033ac2] 206a 001c                 movea.l    28(a2),a0
[00033ac6] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00033acc] 4a40                      tst.w      d0
[00033ace] 662a                      bne.s      change_user_5
[00033ad0] 302c fdee                 move.w     -530(a4),d0
[00033ad4] 48c0                      ext.l      d0
[00033ad6] 226a 0018                 movea.l    24(a2),a1
[00033ada] 206c ffc2                 movea.l    -62(a4),a0
[00033ade] 4eb9 0007 6a1a            jsr        strncpy
[00033ae4] 302c fdee                 move.w     -530(a4),d0
[00033ae8] 206c ffc2                 movea.l    -62(a4),a0
[00033aec] 4230 0000                 clr.b      0(a0,d0.w)
[00033af0] 297c 000c 232e 001c       move.l     #context,28(a4)
[00033af8] 6004                      bra.s      change_user_6
change_user_5:
[00033afa] 42ac 001c                 clr.l      28(a4)
change_user_6:
[00033afe] 43ec 0020                 lea.l      32(a4),a1
[00033b02] 204b                      movea.l    a3,a0
[00033b04] 6100 fb06                 bsr        add_user
[00033b08] 2848                      movea.l    a0,a4
[00033b0a] 200c                      move.l     a4,d0
[00033b0c] 6708                      beq.s      change_user_7
[00033b0e] 224d                      movea.l    a5,a1
[00033b10] 204b                      movea.l    a3,a0
[00033b12] 6100 fc50                 bsr        del_user
change_user_7:
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
[00033b30] 6752                      beq.s      chgadd_3ref_1
[00033b32] 7003                      moveq.l    #3,d0
[00033b34] c041                      and.w      d1,d0
[00033b36] 5340                      subq.w     #1,d0
[00033b38] 670a                      beq.s      chgadd_3ref_2
[00033b3a] 5340                      subq.w     #1,d0
[00033b3c] 6714                      beq.s      chgadd_3ref_3
[00033b3e] 5340                      subq.w     #1,d0
[00033b40] 6736                      beq.s      chgadd_3ref_4
[00033b42] 6040                      bra.s      chgadd_3ref_1
chgadd_3ref_2:
[00033b44] 224b                      movea.l    a3,a1
[00033b46] 204c                      movea.l    a4,a0
[00033b48] 4eb9 0003 4306            jsr        add_ref
[00033b4e] 2448                      movea.l    a0,a2
[00033b50] 6032                      bra.s      chgadd_3ref_1
chgadd_3ref_3:
[00033b52] 2015                      move.l     (a5),d0
[00033b54] 660e                      bne.s      chgadd_3ref_5
[00033b56] 224b                      movea.l    a3,a1
[00033b58] 204c                      movea.l    a4,a0
[00033b5a] 4eb9 0003 461e            jsr        add_string
[00033b60] 2448                      movea.l    a0,a2
[00033b62] 6020                      bra.s      chgadd_3ref_1
chgadd_3ref_5:
[00033b64] 2f2b 0004                 move.l     4(a3),-(a7)
[00033b68] 2255                      movea.l    (a5),a1
[00033b6a] 204c                      movea.l    a4,a0
[00033b6c] 4eb9 0003 475a            jsr        change_string
[00033b72] 584f                      addq.w     #4,a7
[00033b74] 2448                      movea.l    a0,a2
[00033b76] 600c                      bra.s      chgadd_3ref_1
chgadd_3ref_4:
[00033b78] 224b                      movea.l    a3,a1
[00033b7a] 204c                      movea.l    a4,a0
[00033b7c] 4eb9 0003 29b4            jsr        add_data
[00033b82] 2448                      movea.l    a0,a2
chgadd_3ref_1:
[00033b84] 2015                      move.l     (a5),d0
[00033b86] 670e                      beq.s      chgadd_3ref_6
[00033b88] b5c0                      cmpa.l     d0,a2
[00033b8a] 670a                      beq.s      chgadd_3ref_6
[00033b8c] 2240                      movea.l    d0,a1
[00033b8e] 204c                      movea.l    a4,a0
[00033b90] 3003                      move.w     d3,d0
[00033b92] 6100 f97c                 bsr        del_3ref
chgadd_3ref_6:
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
[00033bbe] 4df9 000c 2370            lea.l      us_blk,a6
[00033bc4] 701f                      moveq.l    #31,d0
[00033bc6] 43f9 000c 23d7            lea.l      xc23d7,a1
[00033bcc] 2f00                      move.l     d0,-(a7)
[00033bce] 2f09                      move.l     a1,-(a7)
[00033bd0] 41ee 0036                 lea.l      54(a6),a0
[00033bd4] 226f 0008                 movea.l    8(a7),a1
[00033bd8] 4eb9 0007 6950            jsr        strcpy
[00033bde] 225f                      movea.l    (a7)+,a1
[00033be0] 201f                      move.l     (a7)+,d0
[00033be2] 4eb9 0007 69da            jsr        strncat
[00033be8] 4eb9 0007 6bc4            jsr        strupr
[00033bee] 2257                      movea.l    (a7),a1
[00033bf0] 41ee fe06                 lea.l      -506(a6),a0
[00033bf4] 4eb9 0007 6950            jsr        strcpy
[00033bfa] 2255                      movea.l    (a5),a1
[00033bfc] 41ee fe48                 lea.l      -440(a6),a0
[00033c00] 4eb9 0007 6950            jsr        strcpy
[00033c06] 206d 0004                 movea.l    4(a5),a0
[00033c0a] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00033c10] 4a40                      tst.w      d0
[00033c12] 6618                      bne.s      change_udf_1
[00033c14] 226d 0004                 movea.l    4(a5),a1
[00033c18] 41ee fe8a                 lea.l      -374(a6),a0
[00033c1c] 4eb9 0007 6950            jsr        strcpy
[00033c22] 2d7c 000c 21e4 0008       move.l     #serv,8(a6)
[00033c2a] 6004                      bra.s      change_udf_2
change_udf_1:
[00033c2c] 42ae 0008                 clr.l      8(a6)
change_udf_2:
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
[00033c5a] 6100 fc64                 bsr        set_udftype
[00033c5e] 584f                      addq.w     #4,a7
[00033c60] 486e 0010                 pea.l      16(a6)
[00033c64] 222d 0018                 move.l     24(a5),d1
[00033c68] 226d 0014                 movea.l    20(a5),a1
[00033c6c] 302d 0012                 move.w     18(a5),d0
[00033c70] 41ee fef8                 lea.l      -264(a6),a0
[00033c74] 6100 fc4a                 bsr        set_udftype
[00033c78] 584f                      addq.w     #4,a7
[00033c7a] 486e 0014                 pea.l      20(a6)
[00033c7e] 222d 0022                 move.l     34(a5),d1
[00033c82] 226d 001e                 movea.l    30(a5),a1
[00033c86] 302d 001c                 move.w     28(a5),d0
[00033c8a] 41ee ff3a                 lea.l      -198(a6),a0
[00033c8e] 6100 fc30                 bsr        set_udftype
[00033c92] 584f                      addq.w     #4,a7
[00033c94] 206d 0026                 movea.l    38(a5),a0
[00033c98] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00033c9e] 4a40                      tst.w      d0
[00033ca0] 6640                      bne.s      change_udf_3
[00033ca2] 70ff                      moveq.l    #-1,d0
[00033ca4] d06e fdec                 add.w      -532(a6),d0
[00033ca8] 48c0                      ext.l      d0
[00033caa] 226d 0026                 movea.l    38(a5),a1
[00033cae] 206e ff80                 movea.l    -128(a6),a0
[00033cb2] 4eb9 0007 6a1a            jsr        strncpy
[00033cb8] 302e fdec                 move.w     -532(a6),d0
[00033cbc] 206e ff80                 movea.l    -128(a6),a0
[00033cc0] 4230 0000                 clr.b      0(a0,d0.w)
[00033cc4] 206e ff80                 movea.l    -128(a6),a0
[00033cc8] 4eb9 0007 69b0            jsr        strlen
[00033cce] 5280                      addq.l     #1,d0
[00033cd0] 2d40 ff8a                 move.l     d0,-118(a6)
[00033cd4] 2d40 ff86                 move.l     d0,-122(a6)
[00033cd8] 2d7c 000c 22ec 0018       move.l     #bubble,24(a6)
[00033ce0] 6004                      bra.s      change_udf_4
change_udf_3:
[00033ce2] 42ae 0018                 clr.l      24(a6)
change_udf_4:
[00033ce6] 206d 002a                 movea.l    42(a5),a0
[00033cea] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00033cf0] 4a40                      tst.w      d0
[00033cf2] 6640                      bne.s      change_udf_5
[00033cf4] 70ff                      moveq.l    #-1,d0
[00033cf6] d06e fdee                 add.w      -530(a6),d0
[00033cfa] 48c0                      ext.l      d0
[00033cfc] 226d 002a                 movea.l    42(a5),a1
[00033d00] 206e ffc2                 movea.l    -62(a6),a0
[00033d04] 4eb9 0007 6a1a            jsr        strncpy
[00033d0a] 302e fdee                 move.w     -530(a6),d0
[00033d0e] 206e ffc2                 movea.l    -62(a6),a0
[00033d12] 4230 0000                 clr.b      0(a0,d0.w)
[00033d16] 206e ffc2                 movea.l    -62(a6),a0
[00033d1a] 4eb9 0007 69b0            jsr        strlen
[00033d20] 5280                      addq.l     #1,d0
[00033d22] 2d40 ffcc                 move.l     d0,-52(a6)
[00033d26] 2d40 ffc8                 move.l     d0,-56(a6)
[00033d2a] 2d7c 000c 232e 001c       move.l     #context,28(a6)
[00033d32] 6004                      bra.s      change_udf_6
change_udf_5:
[00033d34] 42ae 001c                 clr.l      28(a6)
change_udf_6:
[00033d38] 2a53                      movea.l    (a3),a5
[00033d3a] 43ee fdf0                 lea.l      -528(a6),a1
[00033d3e] 204c                      movea.l    a4,a0
[00033d40] 4eb9 0003 4306            jsr        add_ref
[00033d46] 2688                      move.l     a0,(a3)
[00033d48] 2008                      move.l     a0,d0
[00033d4a] 670c                      beq.s      change_udf_7
[00033d4c] 224d                      movea.l    a5,a1
[00033d4e] 204c                      movea.l    a4,a0
[00033d50] 4eb9 0003 448e            jsr        del_ref
[00033d56] 6002                      bra.s      change_udf_8
change_udf_7:
[00033d58] 268d                      move.l     a5,(a3)
change_udf_8:
[00033d5a] 2a6b 0004                 movea.l    4(a3),a5
[00033d5e] 43ee fe32                 lea.l      -462(a6),a1
[00033d62] 204c                      movea.l    a4,a0
[00033d64] 4eb9 0003 4306            jsr        add_ref
[00033d6a] 2748 0004                 move.l     a0,4(a3)
[00033d6e] 2008                      move.l     a0,d0
[00033d70] 670c                      beq.s      change_udf_9
[00033d72] 224d                      movea.l    a5,a1
[00033d74] 204c                      movea.l    a4,a0
[00033d76] 4eb9 0003 448e            jsr        del_ref
[00033d7c] 6004                      bra.s      change_udf_10
change_udf_9:
[00033d7e] 274d 0004                 move.l     a5,4(a3)
change_udf_10:
[00033d82] 202e 0008                 move.l     8(a6),d0
[00033d86] 6724                      beq.s      change_udf_11
[00033d88] 2a6b 0008                 movea.l    8(a3),a5
[00033d8c] 43ee fe74                 lea.l      -396(a6),a1
[00033d90] 204c                      movea.l    a4,a0
[00033d92] 6100 f700                 bsr        add_2ref
[00033d96] 2748 0008                 move.l     a0,8(a3)
[00033d9a] 2008                      move.l     a0,d0
[00033d9c] 670a                      beq.s      change_udf_12
[00033d9e] 224d                      movea.l    a5,a1
[00033da0] 204c                      movea.l    a4,a0
[00033da2] 6100 f710                 bsr        del_2ref
[00033da6] 6004                      bra.s      change_udf_11
change_udf_12:
[00033da8] 274d 0008                 move.l     a5,8(a3)
change_udf_11:
[00033dac] 2f2e 000c                 move.l     12(a6),-(a7)
[00033db0] 322e 0058                 move.w     88(a6),d1
[00033db4] 302a 0038                 move.w     56(a2),d0
[00033db8] 43eb 000c                 lea.l      12(a3),a1
[00033dbc] 204c                      movea.l    a4,a0
[00033dbe] 6100 fd5e                 bsr        chgadd_3ref
[00033dc2] 584f                      addq.w     #4,a7
[00033dc4] 2f2e 0010                 move.l     16(a6),-(a7)
[00033dc8] 322e 0058                 move.w     88(a6),d1
[00033dcc] e441                      asr.w      #2,d1
[00033dce] 302a 0038                 move.w     56(a2),d0
[00033dd2] e440                      asr.w      #2,d0
[00033dd4] 43eb 0010                 lea.l      16(a3),a1
[00033dd8] 204c                      movea.l    a4,a0
[00033dda] 6100 fd42                 bsr        chgadd_3ref
[00033dde] 584f                      addq.w     #4,a7
[00033de0] 2f2e 0014                 move.l     20(a6),-(a7)
[00033de4] 322e 0058                 move.w     88(a6),d1
[00033de8] e841                      asr.w      #4,d1
[00033dea] 302a 0038                 move.w     56(a2),d0
[00033dee] e840                      asr.w      #4,d0
[00033df0] 43eb 0014                 lea.l      20(a3),a1
[00033df4] 204c                      movea.l    a4,a0
[00033df6] 6100 fd26                 bsr        chgadd_3ref
[00033dfa] 584f                      addq.w     #4,a7
[00033dfc] 2f2e 0018                 move.l     24(a6),-(a7)
[00033e00] 7202                      moveq.l    #2,d1
[00033e02] 7002                      moveq.l    #2,d0
[00033e04] 43eb 0018                 lea.l      24(a3),a1
[00033e08] 204c                      movea.l    a4,a0
[00033e0a] 6100 fd12                 bsr        chgadd_3ref
[00033e0e] 584f                      addq.w     #4,a7
[00033e10] 2f2e 001c                 move.l     28(a6),-(a7)
[00033e14] 7202                      moveq.l    #2,d1
[00033e16] 7002                      moveq.l    #2,d0
[00033e18] 43eb 001c                 lea.l      28(a3),a1
[00033e1c] 204c                      movea.l    a4,a0
[00033e1e] 6100 fcfe                 bsr        chgadd_3ref
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
[00033e48] 4eb9 0003 24b6            jsr        work_icon
[00033e4e] 4e75                      rts

		.data

list_user:
[000c2132]                           dc.b $00
[000c2133]                           dc.b $00
[000c2134]                           dc.b $00
[000c2135]                           dc.b $00
[000c2136]                           dc.b $00
[000c2137]                           dc.b $00
[000c2138]                           dc.b $00
[000c2139]                           dc.b $00
[000c213a] 000a6db2                  dc.l WI_USER
[000c213e] 000c0d0d                  dc.l us_list
[000c2142] 000c0d1d                  dc.l us_name
[000c2146]                           dc.w $271f
[000c2148]                           dc.b $00
[000c2149]                           dc.b $00
[000c214a]                           dc.b $00
[000c214b]                           dc.b $00
[000c214c] 00033802                  dc.l copy_user
[000c2150] 00033764                  dc.l del_user
[000c2154] 00033e3e                  dc.l new_work
[000c2158]                           dc.b $00
[000c2159]                           dc.b $00
[000c215a]                           dc.b $00
[000c215b]                           dc.b $00
bubble_len:
[000c215c]                           dc.w $0102
context_len:
[000c215e]                           dc.w $0102
call:
[000c2160]                           dc.b $00
[000c2161]                           dc.b $00
[000c2162]                           dc.b $00
[000c2163]                           dc.b $00
[000c2164]                           dc.b $00
[000c2165]                           dc.b $00
[000c2166]                           dc.b $00
[000c2167]                           dc.b $00
[000c2168]                           dc.b $00
[000c2169]                           dc.b $00
[000c216a]                           dc.b $00
[000c216b]                           dc.b $00
[000c216c]                           dc.b $00
[000c216d]                           dc.b $00
[000c216e]                           dc.b $00
[000c216f]                           dc.b $00
[000c2170]                           dc.b $00
[000c2171]                           dc.b $00
[000c2172]                           dc.b $00
[000c2173]                           dc.b $00
[000c2174]                           dc.b $00
[000c2175]                           dc.b $00
[000c2176]                           dc.b $00
[000c2177]                           dc.b $00
[000c2178]                           dc.b $00
[000c2179]                           dc.b $00
[000c217a]                           dc.b $00
[000c217b]                           dc.b $00
[000c217c]                           dc.b $00
[000c217d]                           dc.b $00
[000c217e]                           dc.b $00
[000c217f]                           dc.b $00
[000c2180]                           dc.b $00
[000c2181]                           dc.b $00
[000c2182]                           dc.b $00
[000c2183]                           dc.b $00
[000c2184]                           dc.b $00
[000c2185]                           dc.b $00
[000c2186]                           dc.b $00
[000c2187]                           dc.b $00
[000c2188]                           dc.b $00
[000c2189]                           dc.b $00
[000c218a]                           dc.b $00
[000c218b]                           dc.b $00
[000c218c]                           dc.b $00
[000c218d]                           dc.b $00
[000c218e]                           dc.b $00
[000c218f]                           dc.b $00
[000c2190]                           dc.b $00
[000c2191]                           dc.b $00
[000c2192]                           dc.b $00
[000c2193]                           dc.b $00
[000c2194]                           dc.b $00
[000c2195]                           dc.b $00
[000c2196]                           dc.b $00
[000c2197]                           dc.b $01
[000c2198]                           dc.b $00
[000c2199]                           dc.b $03
[000c219a]                           dc.b $00
[000c219b]                           dc.b $00
[000c219c]                           dc.b $00
[000c219d]                           dc.b $00
[000c219e]                           dc.b $00
[000c219f]                           dc.b $00
[000c21a0]                           dc.b $00
[000c21a1]                           dc.b $00
parm:
[000c21a2]                           dc.b $00
[000c21a3]                           dc.b $00
[000c21a4]                           dc.b $00
[000c21a5]                           dc.b $00
[000c21a6]                           dc.b $00
[000c21a7]                           dc.b $00
[000c21a8]                           dc.b $00
[000c21a9]                           dc.b $00
[000c21aa]                           dc.b $00
[000c21ab]                           dc.b $00
[000c21ac]                           dc.b $00
[000c21ad]                           dc.b $00
[000c21ae]                           dc.b $00
[000c21af]                           dc.b $00
[000c21b0]                           dc.b $00
[000c21b1]                           dc.b $00
[000c21b2]                           dc.b $00
[000c21b3]                           dc.b $00
[000c21b4]                           dc.b $00
[000c21b5]                           dc.b $00
[000c21b6]                           dc.b $00
[000c21b7]                           dc.b $00
[000c21b8]                           dc.b $00
[000c21b9]                           dc.b $00
[000c21ba]                           dc.b $00
[000c21bb]                           dc.b $00
[000c21bc]                           dc.b $00
[000c21bd]                           dc.b $00
[000c21be]                           dc.b $00
[000c21bf]                           dc.b $00
[000c21c0]                           dc.b $00
[000c21c1]                           dc.b $00
[000c21c2]                           dc.b $00
[000c21c3]                           dc.b $00
[000c21c4]                           dc.b $00
[000c21c5]                           dc.b $00
[000c21c6]                           dc.b $00
[000c21c7]                           dc.b $00
[000c21c8]                           dc.b $00
[000c21c9]                           dc.b $00
[000c21ca]                           dc.b $00
[000c21cb]                           dc.b $00
[000c21cc]                           dc.b $00
[000c21cd]                           dc.b $00
[000c21ce]                           dc.b $00
[000c21cf]                           dc.b $00
[000c21d0]                           dc.b $00
[000c21d1]                           dc.b $00
[000c21d2]                           dc.b $00
[000c21d3]                           dc.b $00
[000c21d4]                           dc.b $00
[000c21d5]                           dc.b $00
[000c21d6]                           dc.b $00
[000c21d7]                           dc.b $00
[000c21d8]                           dc.b $00
[000c21d9]                           dc.b $01
[000c21da]                           dc.b $00
[000c21db]                           dc.b $00
[000c21dc]                           dc.b $00
[000c21dd]                           dc.b $00
[000c21de]                           dc.b $00
[000c21df]                           dc.b $00
[000c21e0]                           dc.b $00
[000c21e1]                           dc.b $00
[000c21e2]                           dc.b $00
[000c21e3]                           dc.b $00
serv:
[000c21e4]                           dc.b $00
[000c21e5]                           dc.b $00
[000c21e6]                           dc.b $00
[000c21e7]                           dc.b $00
[000c21e8]                           dc.b $00
[000c21e9]                           dc.b $00
[000c21ea]                           dc.b $00
[000c21eb]                           dc.b $00
[000c21ec]                           dc.b $00
[000c21ed]                           dc.b $00
[000c21ee]                           dc.b $00
[000c21ef]                           dc.b $00
[000c21f0]                           dc.b $00
[000c21f1]                           dc.b $00
[000c21f2]                           dc.b $00
[000c21f3]                           dc.b $00
[000c21f4]                           dc.b $00
[000c21f5]                           dc.b $00
[000c21f6]                           dc.b $00
[000c21f7]                           dc.b $00
[000c21f8]                           dc.b $00
[000c21f9]                           dc.b $00
[000c21fa]                           dc.b $00
[000c21fb]                           dc.b $00
[000c21fc]                           dc.b $00
[000c21fd]                           dc.b $00
[000c21fe]                           dc.b $00
[000c21ff]                           dc.b $00
[000c2200]                           dc.b $00
[000c2201]                           dc.b $00
[000c2202]                           dc.b $00
[000c2203]                           dc.b $00
[000c2204]                           dc.b $00
[000c2205]                           dc.b $00
[000c2206]                           dc.b $00
[000c2207]                           dc.b $00
[000c2208]                           dc.b $00
[000c2209]                           dc.b $00
[000c220a]                           dc.b $00
[000c220b]                           dc.b $00
[000c220c]                           dc.b $00
[000c220d]                           dc.b $00
[000c220e]                           dc.b $00
[000c220f]                           dc.b $00
[000c2210]                           dc.b $00
[000c2211]                           dc.b $00
[000c2212]                           dc.b $00
[000c2213]                           dc.b $00
[000c2214]                           dc.b $00
[000c2215]                           dc.b $00
[000c2216]                           dc.b $00
[000c2217]                           dc.b $00
[000c2218]                           dc.b $00
[000c2219]                           dc.b $00
[000c221a]                           dc.b $00
[000c221b]                           dc.b $01
[000c221c]                           dc.b $00
[000c221d]                           dc.b $04
[000c221e]                           dc.b $00
[000c221f]                           dc.b $00
[000c2220]                           dc.b $00
[000c2221]                           dc.b $00
[000c2222]                           dc.b $00
[000c2223]                           dc.b $00
[000c2224]                           dc.b $00
[000c2225]                           dc.b $00
ptr1:
[000c2226]                           dc.b $00
[000c2227]                           dc.b $00
[000c2228]                           dc.b $00
[000c2229]                           dc.b $00
[000c222a]                           dc.b $00
[000c222b]                           dc.b $00
[000c222c]                           dc.b $00
[000c222d]                           dc.b $00
[000c222e]                           dc.b $00
[000c222f]                           dc.b $00
[000c2230]                           dc.b $00
[000c2231]                           dc.b $00
[000c2232]                           dc.b $00
[000c2233]                           dc.b $00
[000c2234]                           dc.b $00
[000c2235]                           dc.b $00
[000c2236]                           dc.b $00
[000c2237]                           dc.b $00
[000c2238]                           dc.b $00
[000c2239]                           dc.b $00
[000c223a]                           dc.b $00
[000c223b]                           dc.b $00
[000c223c]                           dc.b $00
[000c223d]                           dc.b $00
[000c223e]                           dc.b $00
[000c223f]                           dc.b $00
[000c2240]                           dc.b $00
[000c2241]                           dc.b $00
[000c2242]                           dc.b $00
[000c2243]                           dc.b $00
[000c2244]                           dc.b $00
[000c2245]                           dc.b $00
[000c2246]                           dc.b $00
[000c2247]                           dc.b $00
[000c2248]                           dc.b $00
[000c2249]                           dc.b $00
[000c224a]                           dc.b $00
[000c224b]                           dc.b $00
[000c224c]                           dc.b $00
[000c224d]                           dc.b $00
[000c224e]                           dc.b $00
[000c224f]                           dc.b $00
[000c2250]                           dc.b $00
[000c2251]                           dc.b $00
[000c2252]                           dc.b $00
[000c2253]                           dc.b $00
[000c2254]                           dc.b $00
[000c2255]                           dc.b $00
[000c2256]                           dc.b $00
[000c2257]                           dc.b $00
[000c2258]                           dc.b $00
[000c2259]                           dc.b $00
[000c225a]                           dc.b $00
[000c225b]                           dc.b $00
[000c225c]                           dc.b $00
[000c225d]                           dc.b $01
[000c225e]                           dc.b $00
[000c225f]                           dc.b $00
[000c2260]                           dc.b $00
[000c2261]                           dc.b $00
[000c2262]                           dc.b $00
[000c2263]                           dc.b $00
[000c2264]                           dc.b $00
[000c2265]                           dc.b $00
[000c2266]                           dc.b $00
[000c2267]                           dc.b $00
ptr2:
[000c2268]                           dc.b $00
[000c2269]                           dc.b $00
[000c226a]                           dc.b $00
[000c226b]                           dc.b $00
[000c226c]                           dc.b $00
[000c226d]                           dc.b $00
[000c226e]                           dc.b $00
[000c226f]                           dc.b $00
[000c2270]                           dc.b $00
[000c2271]                           dc.b $00
[000c2272]                           dc.b $00
[000c2273]                           dc.b $00
[000c2274]                           dc.b $00
[000c2275]                           dc.b $00
[000c2276]                           dc.b $00
[000c2277]                           dc.b $00
[000c2278]                           dc.b $00
[000c2279]                           dc.b $00
[000c227a]                           dc.b $00
[000c227b]                           dc.b $00
[000c227c]                           dc.b $00
[000c227d]                           dc.b $00
[000c227e]                           dc.b $00
[000c227f]                           dc.b $00
[000c2280]                           dc.b $00
[000c2281]                           dc.b $00
[000c2282]                           dc.b $00
[000c2283]                           dc.b $00
[000c2284]                           dc.b $00
[000c2285]                           dc.b $00
[000c2286]                           dc.b $00
[000c2287]                           dc.b $00
[000c2288]                           dc.b $00
[000c2289]                           dc.b $00
[000c228a]                           dc.b $00
[000c228b]                           dc.b $00
[000c228c]                           dc.b $00
[000c228d]                           dc.b $00
[000c228e]                           dc.b $00
[000c228f]                           dc.b $00
[000c2290]                           dc.b $00
[000c2291]                           dc.b $00
[000c2292]                           dc.b $00
[000c2293]                           dc.b $00
[000c2294]                           dc.b $00
[000c2295]                           dc.b $00
[000c2296]                           dc.b $00
[000c2297]                           dc.b $00
[000c2298]                           dc.b $00
[000c2299]                           dc.b $00
[000c229a]                           dc.b $00
[000c229b]                           dc.b $00
[000c229c]                           dc.b $00
[000c229d]                           dc.b $00
[000c229e]                           dc.b $00
[000c229f]                           dc.b $01
[000c22a0]                           dc.b $00
[000c22a1]                           dc.b $00
[000c22a2]                           dc.b $00
[000c22a3]                           dc.b $00
[000c22a4]                           dc.b $00
[000c22a5]                           dc.b $00
[000c22a6]                           dc.b $00
[000c22a7]                           dc.b $00
[000c22a8]                           dc.b $00
[000c22a9]                           dc.b $00
ptr3:
[000c22aa]                           dc.b $00
[000c22ab]                           dc.b $00
[000c22ac]                           dc.b $00
[000c22ad]                           dc.b $00
[000c22ae]                           dc.b $00
[000c22af]                           dc.b $00
[000c22b0]                           dc.b $00
[000c22b1]                           dc.b $00
[000c22b2]                           dc.b $00
[000c22b3]                           dc.b $00
[000c22b4]                           dc.b $00
[000c22b5]                           dc.b $00
[000c22b6]                           dc.b $00
[000c22b7]                           dc.b $00
[000c22b8]                           dc.b $00
[000c22b9]                           dc.b $00
[000c22ba]                           dc.b $00
[000c22bb]                           dc.b $00
[000c22bc]                           dc.b $00
[000c22bd]                           dc.b $00
[000c22be]                           dc.b $00
[000c22bf]                           dc.b $00
[000c22c0]                           dc.b $00
[000c22c1]                           dc.b $00
[000c22c2]                           dc.b $00
[000c22c3]                           dc.b $00
[000c22c4]                           dc.b $00
[000c22c5]                           dc.b $00
[000c22c6]                           dc.b $00
[000c22c7]                           dc.b $00
[000c22c8]                           dc.b $00
[000c22c9]                           dc.b $00
[000c22ca]                           dc.b $00
[000c22cb]                           dc.b $00
[000c22cc]                           dc.b $00
[000c22cd]                           dc.b $00
[000c22ce]                           dc.b $00
[000c22cf]                           dc.b $00
[000c22d0]                           dc.b $00
[000c22d1]                           dc.b $00
[000c22d2]                           dc.b $00
[000c22d3]                           dc.b $00
[000c22d4]                           dc.b $00
[000c22d5]                           dc.b $00
[000c22d6]                           dc.b $00
[000c22d7]                           dc.b $00
[000c22d8]                           dc.b $00
[000c22d9]                           dc.b $00
[000c22da]                           dc.b $00
[000c22db]                           dc.b $00
[000c22dc]                           dc.b $00
[000c22dd]                           dc.b $00
[000c22de]                           dc.b $00
[000c22df]                           dc.b $00
[000c22e0]                           dc.b $00
[000c22e1]                           dc.b $01
[000c22e2]                           dc.b $00
[000c22e3]                           dc.b $00
[000c22e4]                           dc.b $00
[000c22e5]                           dc.b $00
[000c22e6]                           dc.b $00
[000c22e7]                           dc.b $00
[000c22e8]                           dc.b $00
[000c22e9]                           dc.b $00
[000c22ea]                           dc.b $00
[000c22eb]                           dc.b $00
bubble:
[000c22ec]                           dc.b $00
[000c22ed]                           dc.b $00
[000c22ee]                           dc.b $00
[000c22ef]                           dc.b $00
[000c22f0] 000ff6f2                  dc.l bubble_string
[000c22f4]                           dc.b $00
[000c22f5]                           dc.b $00
[000c22f6]                           dc.b $00
[000c22f7]                           dc.b $00
[000c22f8]                           dc.b $00
[000c22f9]                           dc.b $00
[000c22fa]                           dc.b $00
[000c22fb]                           dc.b $00
[000c22fc]                           dc.b $00
[000c22fd]                           dc.b $00
[000c22fe]                           dc.b $00
[000c22ff]                           dc.b $00
[000c2300]                           dc.b $00
[000c2301]                           dc.b $00
[000c2302]                           dc.b 'BUBBLE_01',0
[000c230c]                           dc.b $00
[000c230d]                           dc.b $00
[000c230e]                           dc.b $00
[000c230f]                           dc.b $00
[000c2310]                           dc.b $00
[000c2311]                           dc.b $00
[000c2312]                           dc.b $00
[000c2313]                           dc.b $00
[000c2314]                           dc.b $00
[000c2315]                           dc.b $00
[000c2316]                           dc.b $00
[000c2317]                           dc.b $00
[000c2318]                           dc.b $00
[000c2319]                           dc.b $00
[000c231a]                           dc.b $00
[000c231b]                           dc.b $00
[000c231c]                           dc.b $00
[000c231d]                           dc.b $00
[000c231e]                           dc.b $00
[000c231f]                           dc.b $00
[000c2320]                           dc.b $00
[000c2321]                           dc.b $00
[000c2322]                           dc.b $00
[000c2323]                           dc.b $01
[000c2324]                           dc.b $00
[000c2325]                           dc.b $00
[000c2326]                           dc.b $00
[000c2327]                           dc.b $00
[000c2328]                           dc.b $00
[000c2329]                           dc.b $00
[000c232a]                           dc.b $00
[000c232b]                           dc.b $00
[000c232c]                           dc.b $00
[000c232d]                           dc.b $00
context:
[000c232e]                           dc.b $00
[000c232f]                           dc.b $00
[000c2330]                           dc.b $00
[000c2331]                           dc.b $00
[000c2332] 000ff7f4                  dc.l context_string
[000c2336]                           dc.b $00
[000c2337]                           dc.b $00
[000c2338]                           dc.b $00
[000c2339]                           dc.b $00
[000c233a]                           dc.b $00
[000c233b]                           dc.b $00
[000c233c]                           dc.b $00
[000c233d]                           dc.b $00
[000c233e]                           dc.b $00
[000c233f]                           dc.b $00
[000c2340]                           dc.b $00
[000c2341]                           dc.b $00
[000c2342]                           dc.b $00
[000c2343]                           dc.b $00
[000c2344]                           dc.b 'CONTEXT_01',0
[000c234f]                           dc.b $00
[000c2350]                           dc.b $00
[000c2351]                           dc.b $00
[000c2352]                           dc.b $00
[000c2353]                           dc.b $00
[000c2354]                           dc.b $00
[000c2355]                           dc.b $00
[000c2356]                           dc.b $00
[000c2357]                           dc.b $00
[000c2358]                           dc.b $00
[000c2359]                           dc.b $00
[000c235a]                           dc.b $00
[000c235b]                           dc.b $00
[000c235c]                           dc.b $00
[000c235d]                           dc.b $00
[000c235e]                           dc.b $00
[000c235f]                           dc.b $00
[000c2360]                           dc.b $00
[000c2361]                           dc.b $00
[000c2362]                           dc.b $00
[000c2363]                           dc.b $00
[000c2364]                           dc.b $00
[000c2365]                           dc.b $01
[000c2366]                           dc.b $00
[000c2367]                           dc.b $00
[000c2368]                           dc.b $00
[000c2369]                           dc.b $00
[000c236a]                           dc.b $00
[000c236b]                           dc.b $00
[000c236c]                           dc.b $00
[000c236d]                           dc.b $00
[000c236e]                           dc.b $00
[000c236f]                           dc.b $00
us_blk:
[000c2370] 000c2160                  dc.l call
[000c2374] 000c21a2                  dc.l parm
[000c2378]                           dc.b $00
[000c2379]                           dc.b $00
[000c237a]                           dc.b $00
[000c237b]                           dc.b $00
[000c237c]                           dc.b $00
[000c237d]                           dc.b $00
[000c237e]                           dc.b $00
[000c237f]                           dc.b $00
[000c2380]                           dc.b $00
[000c2381]                           dc.b $00
[000c2382]                           dc.b $00
[000c2383]                           dc.b $00
[000c2384]                           dc.b $00
[000c2385]                           dc.b $00
[000c2386]                           dc.b $00
[000c2387]                           dc.b $00
[000c2388] 000c22ec                  dc.l bubble
[000c238c] 000c232e                  dc.l context
new_user:
[000c2390]                           dc.b $00
[000c2391]                           dc.b $00
[000c2392]                           dc.b $00
[000c2393]                           dc.b $00
[000c2394] 000c2370                  dc.l us_blk
[000c2398]                           dc.b $00
[000c2399]                           dc.b $00
[000c239a]                           dc.b $00
[000c239b]                           dc.b $00
[000c239c]                           dc.b $00
[000c239d]                           dc.b $20
[000c239e]                           dc.b $00
[000c239f]                           dc.b $00
[000c23a0]                           dc.b $00
[000c23a1]                           dc.b $20
[000c23a2]                           dc.b $00
[000c23a3]                           dc.b $00
[000c23a4]                           dc.b $00
[000c23a5]                           dc.b $00
[000c23a6]                           dc.b 'USERBLK_01',0
[000c23b1]                           dc.b $00
[000c23b2]                           dc.b $00
[000c23b3]                           dc.b $00
[000c23b4]                           dc.b $00
[000c23b5]                           dc.b $00
[000c23b6]                           dc.b $00
[000c23b7]                           dc.b $00
[000c23b8]                           dc.b $00
[000c23b9]                           dc.b $00
[000c23ba]                           dc.b $00
[000c23bb]                           dc.b $00
[000c23bc]                           dc.b $00
[000c23bd]                           dc.b $00
[000c23be]                           dc.b $00
[000c23bf]                           dc.b $00
[000c23c0]                           dc.b $00
[000c23c1]                           dc.b $00
[000c23c2]                           dc.b $00
[000c23c3]                           dc.b $00
[000c23c4]                           dc.b $00
[000c23c5]                           dc.b $00
[000c23c6]                           dc.b $00
[000c23c7]                           dc.b $01
[000c23c8]                           dc.b $00
[000c23c9]                           dc.b $00
[000c23ca]                           dc.b $00
[000c23cb]                           dc.b $00
[000c23cc]                           dc.b $00
[000c23cd]                           dc.b $00
[000c23ce]                           dc.b $00
[000c23cf]                           dc.b $00
[000c23d0]                           dc.b $00
[000c23d1]                           dc.b $00
xc23d2:
[000c23d2]                           dc.b 'TEXT_'
xc23d7:
		dc.b '01',0
xc23da:
[000c23da]                           dc.b 'DATAS_01',0
		.even

	.bss
bubble_string: ds.b 258
context_string: ds.b 258
