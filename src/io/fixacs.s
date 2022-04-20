
ConvertWindowV2x:
[00015034] 2f0a                      move.l     a2,-(a7)
[00015036] 2f0b                      move.l     a3,-(a7)
[00015038] 2448                      movea.l    a0,a2
[0001503a] 2649                      movea.l    a1,a3
[0001503c] 203c 0000 008e            move.l     #$0000008E,d0
[00015042] 2049                      movea.l    a1,a0
[00015044] 224a                      movea.l    a2,a1
[00015046] 4eb9 0007 6f44            jsr        memcpy
[0001504c] 42ab 008e                 clr.l      142(a3)
[00015050] 42ab 0092                 clr.l      146(a3)
[00015054] 42ab 0096                 clr.l      150(a3)
[00015058] 42ab 009a                 clr.l      154(a3)
[0001505c] 42ab 009e                 clr.l      158(a3)
[00015060] 265f                      movea.l    (a7)+,a3
[00015062] 245f                      movea.l    (a7)+,a2
[00015064] 4e75                      rts

ConvertUserV1x:
[00015066] 2290                      move.l     (a0),(a1)
[00015068] 2368 0004 0004            move.l     4(a0),4(a1)
[0001506e] 42a9 0008                 clr.l      8(a1)
[00015072] 42a9 000c                 clr.l      12(a1)
[00015076] 42a9 0010                 clr.l      16(a1)
[0001507a] 42a9 0014                 clr.l      20(a1)
[0001507e] 42a9 0018                 clr.l      24(a1)
[00015082] 42a9 001c                 clr.l      28(a1)
[00015086] 4e75                      rts

ConvertUserV2x:
[00015088] 2290                      move.l     (a0),(a1)
[0001508a] 2368 0004 0004            move.l     4(a0),4(a1)
[00015090] 2368 0008 0008            move.l     8(a0),8(a1)
[00015096] 2368 000c 000c            move.l     12(a0),12(a1)
[0001509c] 2368 0010 0010            move.l     16(a0),16(a1)
[000150a2] 2368 0014 0014            move.l     20(a0),20(a1)
[000150a8] 42a9 0018                 clr.l      24(a1)
[000150ac] 42a9 001c                 clr.l      28(a1)
[000150b0] 4e75                      rts

fix_config:
[000150b2] 2f0a                      move.l     a2,-(a7)
[000150b4] 2448                      movea.l    a0,a2
[000150b6] 4eb9 0001 520e            jsr        fix_ob
[000150bc] 41ea 0004                 lea.l      4(a2),a0
[000150c0] 4eb9 0001 520e            jsr        fix_ob
[000150c6] 41ea 0008                 lea.l      8(a2),a0
[000150ca] 4eb9 0001 520e            jsr        fix_ob
[000150d0] 41ea 0012                 lea.l      18(a2),a0
[000150d4] 4eb9 0001 520e            jsr        fix_ob
[000150da] 41ea 0016                 lea.l      22(a2),a0
[000150de] 4eb9 0001 520e            jsr        fix_ob
[000150e4] 41ea 001a                 lea.l      26(a2),a0
[000150e8] 4eb9 0001 520e            jsr        fix_ob
[000150ee] 41ea 001e                 lea.l      30(a2),a0
[000150f2] 4eb9 0001 520e            jsr        fix_ob
[000150f8] 41ea 0022                 lea.l      34(a2),a0
[000150fc] 4eb9 0001 520e            jsr        fix_ob
[00015102] 41ea 0026                 lea.l      38(a2),a0
[00015106] 4eb9 0001 520e            jsr        fix_ob
[0001510c] 41ea 002a                 lea.l      42(a2),a0
[00015110] 4eb9 0001 520e            jsr        fix_ob
[00015116] 41ea 002e                 lea.l      46(a2),a0
[0001511a] 4eb9 0001 520e            jsr        fix_ob
[00015120] 41ea 0032                 lea.l      50(a2),a0
[00015124] 4eb9 0001 520e            jsr        fix_ob
[0001512a] 41ea 0036                 lea.l      54(a2),a0
[0001512e] 4eb9 0001 520e            jsr        fix_ob
[00015134] 41ea 003a                 lea.l      58(a2),a0
[00015138] 4eb9 0001 520e            jsr        fix_ob
[0001513e] 41ea 0042                 lea.l      66(a2),a0
[00015142] 4eb9 0001 520e            jsr        fix_ob
[00015148] 41ea 0046                 lea.l      70(a2),a0
[0001514c] 4eb9 0001 520e            jsr        fix_ob
[00015152] 41ea 004a                 lea.l      74(a2),a0
[00015156] 4eb9 0001 520e            jsr        fix_ob
[0001515c] 245f                      movea.l    (a7)+,a2
[0001515e] 4e75                      rts

unfix_config:
[00015160] 2f0a                      move.l     a2,-(a7)
[00015162] 2448                      movea.l    a0,a2
[00015164] 4eb9 0001 521e            jsr        unfix_ob
[0001516a] 41ea 0004                 lea.l      4(a2),a0
[0001516e] 4eb9 0001 521e            jsr        unfix_ob
[00015174] 41ea 0008                 lea.l      8(a2),a0
[00015178] 4eb9 0001 521e            jsr        unfix_ob
[0001517e] 41ea 0012                 lea.l      18(a2),a0
[00015182] 4eb9 0001 521e            jsr        unfix_ob
[00015188] 41ea 0016                 lea.l      22(a2),a0
[0001518c] 4eb9 0001 521e            jsr        unfix_ob
[00015192] 41ea 001a                 lea.l      26(a2),a0
[00015196] 4eb9 0001 521e            jsr        unfix_ob
[0001519c] 41ea 001e                 lea.l      30(a2),a0
[000151a0] 4eb9 0001 521e            jsr        unfix_ob
[000151a6] 41ea 0022                 lea.l      34(a2),a0
[000151aa] 4eb9 0001 521e            jsr        unfix_ob
[000151b0] 41ea 0026                 lea.l      38(a2),a0
[000151b4] 4eb9 0001 521e            jsr        unfix_ob
[000151ba] 41ea 002a                 lea.l      42(a2),a0
[000151be] 4eb9 0001 521e            jsr        unfix_ob
[000151c4] 41ea 002e                 lea.l      46(a2),a0
[000151c8] 4eb9 0001 521e            jsr        unfix_ob
[000151ce] 41ea 0032                 lea.l      50(a2),a0
[000151d2] 4eb9 0001 521e            jsr        unfix_ob
[000151d8] 41ea 0036                 lea.l      54(a2),a0
[000151dc] 4eb9 0001 521e            jsr        unfix_ob
[000151e2] 41ea 003a                 lea.l      58(a2),a0
[000151e6] 4eb9 0001 521e            jsr        unfix_ob
[000151ec] 41ea 0042                 lea.l      66(a2),a0
[000151f0] 4eb9 0001 521e            jsr        unfix_ob
[000151f6] 41ea 0046                 lea.l      70(a2),a0
[000151fa] 4eb9 0001 521e            jsr        unfix_ob
[00015200] 41ea 004a                 lea.l      74(a2),a0
[00015204] 4eb9 0001 521e            jsr        unfix_ob
[0001520a] 245f                      movea.l    (a7)+,a2
[0001520c] 4e75                      rts

fix_ob:
[0001520e] 2010                      move.l     (a0),d0
[00015210] 670a                      beq.s      fix_ob_1
[00015212] 2240                      movea.l    d0,a1
[00015214] 7200                      moveq.l    #0,d1
[00015216] 3229 0008                 move.w     8(a1),d1
[0001521a] 2081                      move.l     d1,(a0)
fix_ob_1:
[0001521c] 4e75                      rts

unfix_ob:
[0001521e] 3028 0002                 move.w     2(a0),d0
[00015222] 48c0                      ext.l      d0
[00015224] e588                      lsl.l      #2,d0
[00015226] 2279 0009 81c0            movea.l    trans,a1
[0001522c] 20b1 0800                 move.l     0(a1,d0.l),(a0)
[00015230] 4e75                      rts

next_trans:
[00015232] 3039 000d a7ee            move.w     used,d0
[00015238] 48c0                      ext.l      d0
[0001523a] 72ff                      moveq.l    #-1,d1
[0001523c] d2b9 0009 81c4            add.l      transcount,d1
[00015242] b081                      cmp.l      d1,d0
[00015244] 6d10                      blt.s      next_trans_1
[00015246] 41f9 0009 b35f            lea.l      ERR_TRANS,a0
[0001524c] 7001                      moveq.l    #1,d0
[0001524e] 4eb9 0005 17fe            jsr        Awi_alert
[00015254] 4e75                      rts
next_trans_1:
[00015256] 5279 000d a7ee            addq.w     #1,used
[0001525c] 4e75                      rts

fix_all:
[0001525e] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00015262] 2648                      movea.l    a0,a3
[00015264] 7602                      moveq.l    #2,d3
[00015266] 49f9 0009 81c0            lea.l      trans,a4
[0001526c] 45ec 0008                 lea.l      8(a4),a2
[00015270] 206b 0010                 movea.l    16(a3),a0
[00015274] 6004                      bra.s      fix_all_1
fix_all_2:
[00015276] 5283                      addq.l     #1,d3
[00015278] 2050                      movea.l    (a0),a0
fix_all_1:
[0001527a] 2008                      move.l     a0,d0
[0001527c] 66f8                      bne.s      fix_all_2
[0001527e] 2003                      move.l     d3,d0
[00015280] e588                      lsl.l      #2,d0
[00015282] 4eb9 0004 7cc8            jsr        Ax_malloc
[00015288] 2888                      move.l     a0,(a4)
[0001528a] 2008                      move.l     a0,d0
[0001528c] 6616                      bne.s      fix_all_3
[0001528e] 2279 0010 1f12            movea.l    ACSblk,a1
[00015294] 2269 03d6                 movea.l    982(a1),a1
[00015298] 7003                      moveq.l    #3,d0
[0001529a] 91c8                      suba.l     a0,a0
[0001529c] 4e91                      jsr        (a1)
[0001529e] 4240                      clr.w      d0
[000152a0] 6000 024e                 bra        fix_all_4
fix_all_3:
[000152a4] 2203                      move.l     d3,d1
[000152a6] e589                      lsl.l      #2,d1
[000152a8] 4240                      clr.w      d0
[000152aa] 2054                      movea.l    (a4),a0
[000152ac] 4eb9 0007 712e            jsr        memset
[000152b2] 2943 0004                 move.l     d3,4(a4)
[000152b6] 2743 0164                 move.l     d3,356(a3)
[000152ba] 206b 0010                 movea.l    16(a3),a0
[000152be] 4eb9 0001 5d12            jsr        fix_labels
[000152c4] 2252                      movea.l    (a2),a1
[000152c6] 206b 0014                 movea.l    20(a3),a0
[000152ca] 4eb9 0001 5d96            jsr        fix_list
[000152d0] 226a 0004                 movea.l    4(a2),a1
[000152d4] 206b 0018                 movea.l    24(a3),a0
[000152d8] 4eb9 0001 5d96            jsr        fix_list
[000152de] 226a 0008                 movea.l    8(a2),a1
[000152e2] 206b 001c                 movea.l    28(a3),a0
[000152e6] 4eb9 0001 5d96            jsr        fix_list
[000152ec] 226a 000c                 movea.l    12(a2),a1
[000152f0] 206b 0020                 movea.l    32(a3),a0
[000152f4] 4eb9 0001 5d96            jsr        fix_list
[000152fa] 226a 0010                 movea.l    16(a2),a1
[000152fe] 206b 0024                 movea.l    36(a3),a0
[00015302] 4eb9 0001 5d96            jsr        fix_list
[00015308] 226a 0014                 movea.l    20(a2),a1
[0001530c] 206b 0028                 movea.l    40(a3),a0
[00015310] 4eb9 0001 5d96            jsr        fix_list
[00015316] 226a 0018                 movea.l    24(a2),a1
[0001531a] 206b 002c                 movea.l    44(a3),a0
[0001531e] 4eb9 0001 5d96            jsr        fix_list
[00015324] 226a 001c                 movea.l    28(a2),a1
[00015328] 206b 0030                 movea.l    48(a3),a0
[0001532c] 4eb9 0001 5d96            jsr        fix_list
[00015332] 226a 0020                 movea.l    32(a2),a1
[00015336] 206b 0034                 movea.l    52(a3),a0
[0001533a] 4eb9 0001 5d96            jsr        fix_list
[00015340] 226a 0024                 movea.l    36(a2),a1
[00015344] 206b 0038                 movea.l    56(a3),a0
[00015348] 4eb9 0001 5d96            jsr        fix_list
[0001534e] 226a 0028                 movea.l    40(a2),a1
[00015352] 206b 003c                 movea.l    60(a3),a0
[00015356] 4eb9 0001 5d96            jsr        fix_list
[0001535c] 226a 002c                 movea.l    44(a2),a1
[00015360] 206b 0040                 movea.l    64(a3),a0
[00015364] 4eb9 0001 5d96            jsr        fix_list
[0001536a] 226a 0030                 movea.l    48(a2),a1
[0001536e] 206b 0044                 movea.l    68(a3),a0
[00015372] 4eb9 0001 5d96            jsr        fix_list
[00015378] 4243                      clr.w      d3
[0001537a] 601a                      bra.s      fix_all_5
fix_all_6:
[0001537c] 226a 0034                 movea.l    52(a2),a1
[00015380] 3003                      move.w     d3,d0
[00015382] 48c0                      ext.l      d0
[00015384] e588                      lsl.l      #2,d0
[00015386] 41f3 0800                 lea.l      0(a3,d0.l),a0
[0001538a] 2068 01f6                 movea.l    502(a0),a0
[0001538e] 4eb9 0001 5d96            jsr        fix_list
[00015394] 5243                      addq.w     #1,d3
fix_all_5:
[00015396] b67c 0003                 cmp.w      #$0003,d3
[0001539a] 6de0                      blt.s      fix_all_6
[0001539c] 4243                      clr.w      d3
[0001539e] 601a                      bra.s      fix_all_7
fix_all_8:
[000153a0] 226a 0038                 movea.l    56(a2),a1
[000153a4] 3003                      move.w     d3,d0
[000153a6] 48c0                      ext.l      d0
[000153a8] e588                      lsl.l      #2,d0
[000153aa] 41f3 0800                 lea.l      0(a3,d0.l),a0
[000153ae] 2068 0202                 movea.l    514(a0),a0
[000153b2] 4eb9 0001 5d96            jsr        fix_list
[000153b8] 5243                      addq.w     #1,d3
fix_all_7:
[000153ba] b67c 0003                 cmp.w      #$0003,d3
[000153be] 6de0                      blt.s      fix_all_8
[000153c0] 206b 0014                 movea.l    20(a3),a0
[000153c4] 7000                      moveq.l    #0,d0
[000153c6] 3028 0008                 move.w     8(a0),d0
[000153ca] 2740 0014                 move.l     d0,20(a3)
[000153ce] 206b 0018                 movea.l    24(a3),a0
[000153d2] 7200                      moveq.l    #0,d1
[000153d4] 3228 0008                 move.w     8(a0),d1
[000153d8] 2741 0018                 move.l     d1,24(a3)
[000153dc] 206b 001c                 movea.l    28(a3),a0
[000153e0] 7000                      moveq.l    #0,d0
[000153e2] 3028 0008                 move.w     8(a0),d0
[000153e6] 2740 001c                 move.l     d0,28(a3)
[000153ea] 206b 0020                 movea.l    32(a3),a0
[000153ee] 7200                      moveq.l    #0,d1
[000153f0] 3228 0008                 move.w     8(a0),d1
[000153f4] 2741 0020                 move.l     d1,32(a3)
[000153f8] 206b 0024                 movea.l    36(a3),a0
[000153fc] 7000                      moveq.l    #0,d0
[000153fe] 3028 0008                 move.w     8(a0),d0
[00015402] 2740 0024                 move.l     d0,36(a3)
[00015406] 206b 0028                 movea.l    40(a3),a0
[0001540a] 7200                      moveq.l    #0,d1
[0001540c] 3228 0008                 move.w     8(a0),d1
[00015410] 2741 0028                 move.l     d1,40(a3)
[00015414] 206b 002c                 movea.l    44(a3),a0
[00015418] 7000                      moveq.l    #0,d0
[0001541a] 3028 0008                 move.w     8(a0),d0
[0001541e] 2740 002c                 move.l     d0,44(a3)
[00015422] 206b 0030                 movea.l    48(a3),a0
[00015426] 7200                      moveq.l    #0,d1
[00015428] 3228 0008                 move.w     8(a0),d1
[0001542c] 2741 0030                 move.l     d1,48(a3)
[00015430] 206b 0034                 movea.l    52(a3),a0
[00015434] 7000                      moveq.l    #0,d0
[00015436] 3028 0008                 move.w     8(a0),d0
[0001543a] 2740 0034                 move.l     d0,52(a3)
[0001543e] 206b 0038                 movea.l    56(a3),a0
[00015442] 7200                      moveq.l    #0,d1
[00015444] 3228 0008                 move.w     8(a0),d1
[00015448] 2741 0038                 move.l     d1,56(a3)
[0001544c] 206b 003c                 movea.l    60(a3),a0
[00015450] 7000                      moveq.l    #0,d0
[00015452] 3028 0008                 move.w     8(a0),d0
[00015456] 2740 003c                 move.l     d0,60(a3)
[0001545a] 206b 0040                 movea.l    64(a3),a0
[0001545e] 7200                      moveq.l    #0,d1
[00015460] 3228 0008                 move.w     8(a0),d1
[00015464] 2741 0040                 move.l     d1,64(a3)
[00015468] 206b 0044                 movea.l    68(a3),a0
[0001546c] 7000                      moveq.l    #0,d0
[0001546e] 3028 0008                 move.w     8(a0),d0
[00015472] 2740 0044                 move.l     d0,68(a3)
[00015476] 41eb 007c                 lea.l      124(a3),a0
[0001547a] 6100 fd92                 bsr        fix_ob
[0001547e] 41eb 0080                 lea.l      128(a3),a0
[00015482] 6100 fd8a                 bsr        fix_ob
[00015486] 49eb 0084                 lea.l      132(a3),a4
[0001548a] 761f                      moveq.l    #31,d3
[0001548c] 600c                      bra.s      fix_all_9
fix_all_10:
[0001548e] 41ec 0002                 lea.l      2(a4),a0
[00015492] 6100 fd7a                 bsr        fix_ob
[00015496] 5c4c                      addq.w     #6,a4
[00015498] 5343                      subq.w     #1,d3
fix_all_9:
[0001549a] 4a43                      tst.w      d3
[0001549c] 6af0                      bpl.s      fix_all_10
[0001549e] 4243                      clr.w      d3
[000154a0] 601a                      bra.s      fix_all_11
fix_all_12:
[000154a2] 3003                      move.w     d3,d0
[000154a4] 48c0                      ext.l      d0
[000154a6] e588                      lsl.l      #2,d0
[000154a8] 41f3 0800                 lea.l      0(a3,d0.l),a0
[000154ac] 2268 01f6                 movea.l    502(a0),a1
[000154b0] 7200                      moveq.l    #0,d1
[000154b2] 3229 0008                 move.w     8(a1),d1
[000154b6] 2141 01f6                 move.l     d1,502(a0)
[000154ba] 5243                      addq.w     #1,d3
fix_all_11:
[000154bc] b67c 0003                 cmp.w      #$0003,d3
[000154c0] 6de0                      blt.s      fix_all_12
[000154c2] 4243                      clr.w      d3
[000154c4] 601a                      bra.s      fix_all_13
fix_all_14:
[000154c6] 3003                      move.w     d3,d0
[000154c8] 48c0                      ext.l      d0
[000154ca] e588                      lsl.l      #2,d0
[000154cc] 41f3 0800                 lea.l      0(a3,d0.l),a0
[000154d0] 2268 0202                 movea.l    514(a0),a1
[000154d4] 7200                      moveq.l    #0,d1
[000154d6] 3229 0008                 move.w     8(a1),d1
[000154da] 2141 0202                 move.l     d1,514(a0)
[000154de] 5243                      addq.w     #1,d3
fix_all_13:
[000154e0] b67c 0003                 cmp.w      #$0003,d3
[000154e4] 6de0                      blt.s      fix_all_14
[000154e6] 41eb 0214                 lea.l      532(a3),a0
[000154ea] 6100 fbc6                 bsr        fix_config
[000154ee] 7001                      moveq.l    #1,d0
fix_all_4:
[000154f0] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[000154f4] 4e75                      rts

unfix_all:
[000154f6] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[000154fa] 2848                      movea.l    a0,a4
[000154fc] 47f9 0009 81c0            lea.l      trans,a3
[00015502] 45eb 0044                 lea.l      68(a3),a2
[00015506] 2013                      move.l     (a3),d0
[00015508] 6700 0214                 beq        unfix_all_1
[0001550c] 322c 0004                 move.w     4(a4),d1
[00015510] 927c 0064                 sub.w      #$0064,d1
[00015514] 6712                      beq.s      unfix_all_2
[00015516] 927c 0064                 sub.w      #$0064,d1
[0001551a] 6712                      beq.s      unfix_all_3
[0001551c] 5b41                      subq.w     #5,d1
[0001551e] 670e                      beq.s      unfix_all_3
[00015520] 927c 005f                 sub.w      #$005F,d1
[00015524] 6708                      beq.s      unfix_all_3
[00015526] 600a                      bra.s      unfix_all_4
unfix_all_2:
[00015528] 45eb 00bc                 lea.l      188(a3),a2
[0001552c] 6004                      bra.s      unfix_all_4
unfix_all_3:
[0001552e] 45eb 0080                 lea.l      128(a3),a2
unfix_all_4:
[00015532] 4eb9 0001 5d48            jsr        unfix_labels
[00015538] 4243                      clr.w      d3
[0001553a] 6014                      bra.s      unfix_all_5
unfix_all_6:
[0001553c] 3003                      move.w     d3,d0
[0001553e] 48c0                      ext.l      d0
[00015540] e588                      lsl.l      #2,d0
[00015542] 41f4 0800                 lea.l      0(a4,d0.l),a0
[00015546] 41e8 01f6                 lea.l      502(a0),a0
[0001554a] 6100 fcd2                 bsr        unfix_ob
[0001554e] 5243                      addq.w     #1,d3
unfix_all_5:
[00015550] b67c 0003                 cmp.w      #$0003,d3
[00015554] 6de6                      blt.s      unfix_all_6
[00015556] 4243                      clr.w      d3
[00015558] 6014                      bra.s      unfix_all_7
unfix_all_8:
[0001555a] 3003                      move.w     d3,d0
[0001555c] 48c0                      ext.l      d0
[0001555e] e588                      lsl.l      #2,d0
[00015560] 41f4 0800                 lea.l      0(a4,d0.l),a0
[00015564] 41e8 0202                 lea.l      514(a0),a0
[00015568] 6100 fcb4                 bsr        unfix_ob
[0001556c] 5243                      addq.w     #1,d3
unfix_all_7:
[0001556e] b67c 0003                 cmp.w      #$0003,d3
[00015572] 6de6                      blt.s      unfix_all_8
[00015574] 41ec 0014                 lea.l      20(a4),a0
[00015578] 6100 fca4                 bsr        unfix_ob
[0001557c] 41ec 0018                 lea.l      24(a4),a0
[00015580] 6100 fc9c                 bsr        unfix_ob
[00015584] 41ec 001c                 lea.l      28(a4),a0
[00015588] 6100 fc94                 bsr        unfix_ob
[0001558c] 41ec 0020                 lea.l      32(a4),a0
[00015590] 6100 fc8c                 bsr        unfix_ob
[00015594] 41ec 0028                 lea.l      40(a4),a0
[00015598] 6100 fc84                 bsr        unfix_ob
[0001559c] 41ec 002c                 lea.l      44(a4),a0
[000155a0] 6100 fc7c                 bsr        unfix_ob
[000155a4] 41ec 0030                 lea.l      48(a4),a0
[000155a8] 6100 fc74                 bsr        unfix_ob
[000155ac] 41ec 0024                 lea.l      36(a4),a0
[000155b0] 6100 fc6c                 bsr        unfix_ob
[000155b4] 41ec 0038                 lea.l      56(a4),a0
[000155b8] 6100 fc64                 bsr        unfix_ob
[000155bc] 41ec 0034                 lea.l      52(a4),a0
[000155c0] 6100 fc5c                 bsr        unfix_ob
[000155c4] 41ec 003c                 lea.l      60(a4),a0
[000155c8] 6100 fc54                 bsr        unfix_ob
[000155cc] 41ec 0040                 lea.l      64(a4),a0
[000155d0] 6100 fc4c                 bsr        unfix_ob
[000155d4] 41ec 0044                 lea.l      68(a4),a0
[000155d8] 6100 fc44                 bsr        unfix_ob
[000155dc] 41ec 007c                 lea.l      124(a4),a0
[000155e0] 6100 fc3c                 bsr        unfix_ob
[000155e4] 41ec 0080                 lea.l      128(a4),a0
[000155e8] 6100 fc34                 bsr        unfix_ob
[000155ec] 4bec 0084                 lea.l      132(a4),a5
[000155f0] 761f                      moveq.l    #31,d3
[000155f2] 600c                      bra.s      unfix_all_9
unfix_all_10:
[000155f4] 41ed 0002                 lea.l      2(a5),a0
[000155f8] 6100 fc24                 bsr        unfix_ob
[000155fc] 5c4d                      addq.w     #6,a5
[000155fe] 5343                      subq.w     #1,d3
unfix_all_9:
[00015600] 4a43                      tst.w      d3
[00015602] 6af0                      bpl.s      unfix_all_10
[00015604] 2252                      movea.l    (a2),a1
[00015606] 206c 0014                 movea.l    20(a4),a0
[0001560a] 4eb9 0001 5ddc            jsr        unfix_list
[00015610] 226a 0004                 movea.l    4(a2),a1
[00015614] 206c 0018                 movea.l    24(a4),a0
[00015618] 4eb9 0001 5ddc            jsr        unfix_list
[0001561e] 226a 0008                 movea.l    8(a2),a1
[00015622] 206c 001c                 movea.l    28(a4),a0
[00015626] 4eb9 0001 5ddc            jsr        unfix_list
[0001562c] 226a 000c                 movea.l    12(a2),a1
[00015630] 206c 0020                 movea.l    32(a4),a0
[00015634] 4eb9 0001 5ddc            jsr        unfix_list
[0001563a] 226a 0010                 movea.l    16(a2),a1
[0001563e] 206c 0024                 movea.l    36(a4),a0
[00015642] 4eb9 0001 5ddc            jsr        unfix_list
[00015648] 226a 0014                 movea.l    20(a2),a1
[0001564c] 206c 0028                 movea.l    40(a4),a0
[00015650] 4eb9 0001 5ddc            jsr        unfix_list
[00015656] 226a 0018                 movea.l    24(a2),a1
[0001565a] 206c 002c                 movea.l    44(a4),a0
[0001565e] 4eb9 0001 5ddc            jsr        unfix_list
[00015664] 226a 001c                 movea.l    28(a2),a1
[00015668] 206c 0030                 movea.l    48(a4),a0
[0001566c] 4eb9 0001 5ddc            jsr        unfix_list
[00015672] 226a 0024                 movea.l    36(a2),a1
[00015676] 206c 0038                 movea.l    56(a4),a0
[0001567a] 4eb9 0001 5ddc            jsr        unfix_list
[00015680] 226a 0020                 movea.l    32(a2),a1
[00015684] 206c 0034                 movea.l    52(a4),a0
[00015688] 4eb9 0001 5ddc            jsr        unfix_list
[0001568e] 226a 0028                 movea.l    40(a2),a1
[00015692] 206c 003c                 movea.l    60(a4),a0
[00015696] 4eb9 0001 5ddc            jsr        unfix_list
[0001569c] 226a 002c                 movea.l    44(a2),a1
[000156a0] 206c 0040                 movea.l    64(a4),a0
[000156a4] 4eb9 0001 5ddc            jsr        unfix_list
[000156aa] 226a 0030                 movea.l    48(a2),a1
[000156ae] 206c 0044                 movea.l    68(a4),a0
[000156b2] 4eb9 0001 5ddc            jsr        unfix_list
[000156b8] 4243                      clr.w      d3
[000156ba] 601a                      bra.s      unfix_all_11
unfix_all_12:
[000156bc] 226a 0034                 movea.l    52(a2),a1
[000156c0] 3003                      move.w     d3,d0
[000156c2] 48c0                      ext.l      d0
[000156c4] e588                      lsl.l      #2,d0
[000156c6] 41f4 0800                 lea.l      0(a4,d0.l),a0
[000156ca] 2068 01f6                 movea.l    502(a0),a0
[000156ce] 4eb9 0001 5ddc            jsr        unfix_list
[000156d4] 5243                      addq.w     #1,d3
unfix_all_11:
[000156d6] b67c 0003                 cmp.w      #$0003,d3
[000156da] 6de0                      blt.s      unfix_all_12
[000156dc] 4243                      clr.w      d3
[000156de] 601a                      bra.s      unfix_all_13
unfix_all_14:
[000156e0] 226a 0038                 movea.l    56(a2),a1
[000156e4] 3003                      move.w     d3,d0
[000156e6] 48c0                      ext.l      d0
[000156e8] e588                      lsl.l      #2,d0
[000156ea] 41f4 0800                 lea.l      0(a4,d0.l),a0
[000156ee] 2068 0202                 movea.l    514(a0),a0
[000156f2] 4eb9 0001 5ddc            jsr        unfix_list
[000156f8] 5243                      addq.w     #1,d3
unfix_all_13:
[000156fa] b67c 0003                 cmp.w      #$0003,d3
[000156fe] 6de0                      blt.s      unfix_all_14
[00015700] 2053                      movea.l    (a3),a0
[00015702] 2968 0004 0010            move.l     4(a0),16(a4)
[00015708] 41ec 0214                 lea.l      532(a4),a0
[0001570c] 6100 fa52                 bsr        unfix_config
[00015710] 2053                      movea.l    (a3),a0
[00015712] 4eb9 0004 7e26            jsr        Ax_free
[00015718] 4293                      clr.l      (a3)
[0001571a] 42ab 0004                 clr.l      4(a3)
unfix_all_1:
[0001571e] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00015722] 4e75                      rts

wr_all:
[00015724] 2f03                      move.l     d3,-(a7)
[00015726] 2f0a                      move.l     a2,-(a7)
[00015728] 2448                      movea.l    a0,a2
[0001572a] 7008                      moveq.l    #8,d0
[0001572c] 2279 0010 1f12            movea.l    ACSblk,a1
[00015732] 5049                      addq.w     #8,a1
[00015734] 41ea 0168                 lea.l      360(a2),a0
[00015738] 4eb9 0007 6f44            jsr        memcpy
[0001573e] 203c 0000 0262            move.l     #$00000262,d0
[00015744] 204a                      movea.l    a2,a0
[00015746] 4eb9 0001 6554            jsr        save_buf
[0001574c] 7601                      moveq.l    #1,d3
wr_all_2:
[0001574e] 3003                      move.w     d3,d0
[00015750] 48c0                      ext.l      d0
[00015752] e588                      lsl.l      #2,d0
[00015754] 2079 0009 81c0            movea.l    trans,a0
[0001575a] 2470 0800                 movea.l    0(a0,d0.l),a2
[0001575e] 204a                      movea.l    a2,a0
[00015760] 7042                      moveq.l    #66,d0
[00015762] 4eb9 0001 6554            jsr        save_buf
[00015768] 202a 000e                 move.l     14(a2),d0
[0001576c] 6f0a                      ble.s      wr_all_1
[0001576e] 206a 0004                 movea.l    4(a2),a0
[00015772] 4eb9 0001 6554            jsr        save_buf
wr_all_1:
[00015778] 5243                      addq.w     #1,d3
[0001577a] 2012                      move.l     (a2),d0
[0001577c] 66d0                      bne.s      wr_all_2
[0001577e] 245f                      movea.l    (a7)+,a2
[00015780] 261f                      move.l     (a7)+,d3
[00015782] 4e75                      rts

rd_all:
[00015784] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[00015788] 2848                      movea.l    a0,a4
[0001578a] 263c 0000 2000            move.l     #$00002000,d3
[00015790] 7006                      moveq.l    #6,d0
[00015792] 4eb9 0001 664a            jsr        read_buf
[00015798] 0c94 2e41 4353            cmpi.l     #$2E414353,(a4)
[0001579e] 6630                      bne.s      rd_all_1
[000157a0] 0c6c 0191 0004            cmpi.w     #$0191,4(a4)
[000157a6] 6740                      beq.s      rd_all_2
[000157a8] 0c6c 0190 0004            cmpi.w     #$0190,4(a4)
[000157ae] 6738                      beq.s      rd_all_2
[000157b0] 0c6c 012c 0004            cmpi.w     #$012C,4(a4)
[000157b6] 6730                      beq.s      rd_all_2
[000157b8] 0c6c 00cd 0004            cmpi.w     #$00CD,4(a4)
[000157be] 6728                      beq.s      rd_all_2
[000157c0] 0c6c 00c8 0004            cmpi.w     #$00C8,4(a4)
[000157c6] 6720                      beq.s      rd_all_2
[000157c8] 0c6c 0064 0004            cmpi.w     #$0064,4(a4)
[000157ce] 6718                      beq.s      rd_all_2
rd_all_1:
[000157d0] 41f9 0009 b2d9            lea.l      ERR_FILETYP,a0
[000157d6] 7001                      moveq.l    #1,d0
[000157d8] 4eb9 0005 17fe            jsr        Awi_alert
[000157de] 91c8                      suba.l     a0,a0
[000157e0] 4240                      clr.w      d0
[000157e2] 4eb9 0001 651e            jsr        assert_error
rd_all_2:
[000157e8] 382c 0004                 move.w     4(a4),d4
[000157ec] 45f9 0009 82b8            lea.l      zero,a2
[000157f2] 3004                      move.w     d4,d0
[000157f4] b07c 00cd                 cmp.w      #$00CD,d0
[000157f8] 6764                      beq.s      rd_all_3
[000157fa] 6e10                      bgt.s      rd_all_4
[000157fc] 907c 0064                 sub.w      #$0064,d0
[00015800] 671e                      beq.s      rd_all_5
[00015802] 907c 0064                 sub.w      #$0064,d0
[00015806] 6756                      beq.s      rd_all_3
[00015808] 6000 00fe                 bra        rd_all_6
rd_all_4:
[0001580c] 907c 012c                 sub.w      #$012C,d0
[00015810] 6700 00ac                 beq        rd_all_7
[00015814] 907c 0064                 sub.w      #$0064,d0
[00015818] 6700 00ce                 beq        rd_all_8
[0001581c] 6000 00ea                 bra        rd_all_6
rd_all_5:
[00015820] 7a3a                      moveq.l    #58,d5
[00015822] 203c 0000 0146            move.l     #$00000146,d0
[00015828] 41ec 0006                 lea.l      6(a4),a0
[0001582c] 4eb9 0001 664a            jsr        read_buf
[00015832] 7008                      moveq.l    #8,d0
[00015834] 224a                      movea.l    a2,a1
[00015836] 41ec 014c                 lea.l      332(a4),a0
[0001583a] 4eb9 0007 6f44            jsr        memcpy
[00015840] 7008                      moveq.l    #8,d0
[00015842] 224a                      movea.l    a2,a1
[00015844] 41ec 0154                 lea.l      340(a4),a0
[00015848] 4eb9 0007 6f44            jsr        memcpy
[0001584e] 7008                      moveq.l    #8,d0
[00015850] 224a                      movea.l    a2,a1
[00015852] 41ec 015c                 lea.l      348(a4),a0
[00015856] 4eb9 0007 6f44            jsr        memcpy
[0001585c] 6012                      bra.s      rd_all_9
rd_all_3:
[0001585e] 7a42                      moveq.l    #66,d5
[00015860] 203c 0000 015e            move.l     #$0000015E,d0
[00015866] 41ec 0006                 lea.l      6(a4),a0
[0001586a] 4eb9 0001 664a            jsr        read_buf
rd_all_9:
[00015870] 7008                      moveq.l    #8,d0
[00015872] 2279 0010 1f12            movea.l    ACSblk,a1
[00015878] 5049                      addq.w     #8,a1
[0001587a] 41ec 0168                 lea.l      360(a4),a0
[0001587e] 4eb9 0007 6f44            jsr        memcpy
[00015884] 42ac 0170                 clr.l      368(a4)
[00015888] 426c 01f4                 clr.w      500(a4)
[0001588c] 2279 0010 1f12            movea.l    ACSblk,a1
[00015892] 43e9 02d6                 lea.l      726(a1),a1
[00015896] 41ec 0174                 lea.l      372(a4),a0
[0001589a] 4eb9 0007 6950            jsr        strcpy
[000158a0] 720c                      moveq.l    #12,d1
[000158a2] 4240                      clr.w      d0
[000158a4] 41ec 01f6                 lea.l      502(a4),a0
[000158a8] 4eb9 0007 712e            jsr        memset
[000158ae] 720c                      moveq.l    #12,d1
[000158b0] 4240                      clr.w      d0
[000158b2] 41ec 0202                 lea.l      514(a4),a0
[000158b6] 4eb9 0007 712e            jsr        memset
[000158bc] 6016                      bra.s      rd_all_10
rd_all_7:
[000158be] 7a42                      moveq.l    #66,d5
[000158c0] 203c 0000 0208            move.l     #$00000208,d0
[000158c6] 41ec 0006                 lea.l      6(a4),a0
[000158ca] 4eb9 0001 664a            jsr        read_buf
[000158d0] 262c 0164                 move.l     356(a4),d3
rd_all_10:
[000158d4] 7010                      moveq.l    #16,d0
[000158d6] c06c 0006                 and.w      6(a4),d0
[000158da] 6704                      beq.s      rd_all_11
[000158dc] 7201                      moveq.l    #1,d1
[000158de] 6002                      bra.s      rd_all_12
rd_all_11:
[000158e0] 4241                      clr.w      d1
rd_all_12:
[000158e2] 3941 020e                 move.w     d1,526(a4)
[000158e6] 6042                      bra.s      rd_all_13
rd_all_8:
[000158e8] 7a42                      moveq.l    #66,d5
[000158ea] 203c 0000 020e            move.l     #$0000020E,d0
[000158f0] 41ec 0006                 lea.l      6(a4),a0
[000158f4] 4eb9 0001 664a            jsr        read_buf
[000158fa] 7046                      moveq.l    #70,d0
[000158fc] 41ec 0214                 lea.l      532(a4),a0
[00015900] 4eb9 0001 664a            jsr        read_buf
[00015906] 601e                      bra.s      rd_all_14
rd_all_6:
[00015908] 7a42                      moveq.l    #66,d5
[0001590a] 203c 0000 020e            move.l     #$0000020E,d0
[00015910] 41ec 0006                 lea.l      6(a4),a0
[00015914] 4eb9 0001 664a            jsr        read_buf
[0001591a] 704e                      moveq.l    #78,d0
[0001591c] 41ec 0214                 lea.l      532(a4),a0
[00015920] 4eb9 0001 664a            jsr        read_buf
rd_all_14:
[00015926] 262c 0164                 move.l     356(a4),d3
rd_all_13:
[0001592a] 7001                      moveq.l    #1,d0
[0001592c] b083                      cmp.l      d3,d0
[0001592e] 6f06                      ble.s      rd_all_15
[00015930] 263c 0000 2000            move.l     #$00002000,d3
rd_all_15:
[00015936] 47ea ff08                 lea.l      -248(a2),a3
[0001593a] 2003                      move.l     d3,d0
[0001593c] e588                      lsl.l      #2,d0
[0001593e] 4eb9 0004 7cc8            jsr        Ax_malloc
[00015944] 2688                      move.l     a0,(a3)
[00015946] 2008                      move.l     a0,d0
[00015948] 660a                      bne.s      rd_all_16
[0001594a] 7003                      moveq.l    #3,d0
[0001594c] 91c8                      suba.l     a0,a0
[0001594e] 4eb9 0001 651e            jsr        assert_error
rd_all_16:
[00015954] 2543 ff0c                 move.l     d3,-244(a2)
[00015958] 2203                      move.l     d3,d1
[0001595a] e589                      lsl.l      #2,d1
[0001595c] 4240                      clr.w      d0
[0001595e] 2053                      movea.l    (a3),a0
[00015960] 4eb9 0007 712e            jsr        memset
[00015966] 7000                      moveq.l    #0,d0
[00015968] 2940 0148                 move.l     d0,328(a4)
[0001596c] 2940 0144                 move.l     d0,324(a4)
[00015970] 2940 000c                 move.l     d0,12(a4)
[00015974] 026c ff9f 0006            andi.w     #$FF9F,6(a4)
rd_all_21:
[0001597a] 7042                      moveq.l    #66,d0
[0001597c] 4eb9 0004 7cc8            jsr        Ax_malloc
[00015982] 2848                      movea.l    a0,a4
[00015984] 200c                      move.l     a4,d0
[00015986] 660a                      bne.s      rd_all_17
[00015988] 7003                      moveq.l    #3,d0
[0001598a] 91c8                      suba.l     a0,a0
[0001598c] 4eb9 0001 651e            jsr        assert_error
rd_all_17:
[00015992] 7008                      moveq.l    #8,d0
[00015994] 224a                      movea.l    a2,a1
[00015996] 41ec 003a                 lea.l      58(a4),a0
[0001599a] 4eb9 0007 6f44            jsr        memcpy
[000159a0] 3005                      move.w     d5,d0
[000159a2] 48c0                      ext.l      d0
[000159a4] 204c                      movea.l    a4,a0
[000159a6] 4eb9 0001 664a            jsr        read_buf
[000159ac] 42ac 0004                 clr.l      4(a4)
[000159b0] 42ac 0012                 clr.l      18(a4)
[000159b4] 296c 000e 000a            move.l     14(a4),10(a4)
[000159ba] b87c 0064                 cmp.w      #$0064,d4
[000159be] 6606                      bne.s      rd_all_18
[000159c0] 026c 0100 0038            andi.w     #$0100,56(a4)
rd_all_18:
[000159c6] 7000                      moveq.l    #0,d0
[000159c8] 302c 0008                 move.w     8(a4),d0
[000159cc] e588                      lsl.l      #2,d0
[000159ce] 2053                      movea.l    (a3),a0
[000159d0] 218c 0800                 move.l     a4,0(a0,d0.l)
[000159d4] 7001                      moveq.l    #1,d0
[000159d6] d06c 0008                 add.w      8(a4),d0
[000159da] 7200                      moveq.l    #0,d1
[000159dc] 3200                      move.w     d0,d1
[000159de] e589                      lsl.l      #2,d1
[000159e0] 2053                      movea.l    (a3),a0
[000159e2] 42b0 1800                 clr.l      0(a0,d1.l)
[000159e6] 202c 000a                 move.l     10(a4),d0
[000159ea] 6f26                      ble.s      rd_all_19
[000159ec] 4eb9 0004 7cc8            jsr        Ax_malloc
[000159f2] 2a48                      movea.l    a0,a5
[000159f4] 200d                      move.l     a5,d0
[000159f6] 660a                      bne.s      rd_all_20
[000159f8] 7003                      moveq.l    #3,d0
[000159fa] 91c8                      suba.l     a0,a0
[000159fc] 4eb9 0001 651e            jsr        assert_error
rd_all_20:
[00015a02] 202c 000a                 move.l     10(a4),d0
[00015a06] 204d                      movea.l    a5,a0
[00015a08] 4eb9 0001 664a            jsr        read_buf
[00015a0e] 294d 0004                 move.l     a5,4(a4)
rd_all_19:
[00015a12] 2014                      move.l     (a4),d0
[00015a14] 6600 ff64                 bne        rd_all_21
[00015a18] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[00015a1c] 4e75                      rts

fix_window:
[00015a1e] 2f0a                      move.l     a2,-(a7)
[00015a20] 2468 0004                 movea.l    4(a0),a2
[00015a24] 204a                      movea.l    a2,a0
[00015a26] 6100 f7e6                 bsr        fix_ob
[00015a2a] 41ea 0004                 lea.l      4(a2),a0
[00015a2e] 6100 f7de                 bsr        fix_ob
[00015a32] 41ea 0008                 lea.l      8(a2),a0
[00015a36] 6100 f7d6                 bsr        fix_ob
[00015a3a] 41ea 000c                 lea.l      12(a2),a0
[00015a3e] 6100 f7ce                 bsr        fix_ob
[00015a42] 41ea 0010                 lea.l      16(a2),a0
[00015a46] 6100 f7c6                 bsr        fix_ob
[00015a4a] 41ea 0014                 lea.l      20(a2),a0
[00015a4e] 6100 f7be                 bsr        fix_ob
[00015a52] 41ea 0018                 lea.l      24(a2),a0
[00015a56] 6100 f7b6                 bsr        fix_ob
[00015a5a] 41ea 004a                 lea.l      74(a2),a0
[00015a5e] 6100 f7ae                 bsr        fix_ob
[00015a62] 41ea 004e                 lea.l      78(a2),a0
[00015a66] 6100 f7a6                 bsr        fix_ob
[00015a6a] 41ea 005a                 lea.l      90(a2),a0
[00015a6e] 6100 f79e                 bsr        fix_ob
[00015a72] 41ea 005e                 lea.l      94(a2),a0
[00015a76] 6100 f796                 bsr        fix_ob
[00015a7a] 41ea 0062                 lea.l      98(a2),a0
[00015a7e] 6100 f78e                 bsr        fix_ob
[00015a82] 41ea 0066                 lea.l      102(a2),a0
[00015a86] 6100 f786                 bsr        fix_ob
[00015a8a] 41ea 006a                 lea.l      106(a2),a0
[00015a8e] 6100 f77e                 bsr        fix_ob
[00015a92] 41ea 006e                 lea.l      110(a2),a0
[00015a96] 6100 f776                 bsr        fix_ob
[00015a9a] 41ea 0072                 lea.l      114(a2),a0
[00015a9e] 6100 f76e                 bsr        fix_ob
[00015aa2] 41ea 0076                 lea.l      118(a2),a0
[00015aa6] 6100 f766                 bsr        fix_ob
[00015aaa] 41ea 007a                 lea.l      122(a2),a0
[00015aae] 6100 f75e                 bsr        fix_ob
[00015ab2] 41ea 007e                 lea.l      126(a2),a0
[00015ab6] 6100 f756                 bsr        fix_ob
[00015aba] 41ea 0082                 lea.l      130(a2),a0
[00015abe] 6100 f74e                 bsr        fix_ob
[00015ac2] 41ea 0086                 lea.l      134(a2),a0
[00015ac6] 6100 f746                 bsr        fix_ob
[00015aca] 41ea 008a                 lea.l      138(a2),a0
[00015ace] 6100 f73e                 bsr        fix_ob
[00015ad2] 41ea 008e                 lea.l      142(a2),a0
[00015ad6] 6100 f736                 bsr        fix_ob
[00015ada] 41ea 0092                 lea.l      146(a2),a0
[00015ade] 6100 f72e                 bsr        fix_ob
[00015ae2] 41ea 0096                 lea.l      150(a2),a0
[00015ae6] 6100 f726                 bsr        fix_ob
[00015aea] 41ea 009a                 lea.l      154(a2),a0
[00015aee] 6100 f71e                 bsr        fix_ob
[00015af2] 41ea 009e                 lea.l      158(a2),a0
[00015af6] 6100 f716                 bsr        fix_ob
[00015afa] 245f                      movea.l    (a7)+,a2
[00015afc] 4e75                      rts

unfix_window:
[00015afe] 2f0a                      move.l     a2,-(a7)
[00015b00] 2468 0004                 movea.l    4(a0),a2
[00015b04] 204a                      movea.l    a2,a0
[00015b06] 6100 f716                 bsr        unfix_ob
[00015b0a] 41ea 0004                 lea.l      4(a2),a0
[00015b0e] 6100 f70e                 bsr        unfix_ob
[00015b12] 41ea 0008                 lea.l      8(a2),a0
[00015b16] 6100 f706                 bsr        unfix_ob
[00015b1a] 41ea 000c                 lea.l      12(a2),a0
[00015b1e] 6100 f6fe                 bsr        unfix_ob
[00015b22] 41ea 0010                 lea.l      16(a2),a0
[00015b26] 6100 f6f6                 bsr        unfix_ob
[00015b2a] 41ea 0014                 lea.l      20(a2),a0
[00015b2e] 6100 f6ee                 bsr        unfix_ob
[00015b32] 41ea 0018                 lea.l      24(a2),a0
[00015b36] 6100 f6e6                 bsr        unfix_ob
[00015b3a] 41ea 004a                 lea.l      74(a2),a0
[00015b3e] 6100 f6de                 bsr        unfix_ob
[00015b42] 41ea 004e                 lea.l      78(a2),a0
[00015b46] 6100 f6d6                 bsr        unfix_ob
[00015b4a] 41ea 005a                 lea.l      90(a2),a0
[00015b4e] 6100 f6ce                 bsr        unfix_ob
[00015b52] 41ea 005e                 lea.l      94(a2),a0
[00015b56] 6100 f6c6                 bsr        unfix_ob
[00015b5a] 41ea 0062                 lea.l      98(a2),a0
[00015b5e] 6100 f6be                 bsr        unfix_ob
[00015b62] 41ea 0066                 lea.l      102(a2),a0
[00015b66] 6100 f6b6                 bsr        unfix_ob
[00015b6a] 41ea 006a                 lea.l      106(a2),a0
[00015b6e] 6100 f6ae                 bsr        unfix_ob
[00015b72] 41ea 006e                 lea.l      110(a2),a0
[00015b76] 6100 f6a6                 bsr        unfix_ob
[00015b7a] 41ea 0072                 lea.l      114(a2),a0
[00015b7e] 6100 f69e                 bsr        unfix_ob
[00015b82] 41ea 0076                 lea.l      118(a2),a0
[00015b86] 6100 f696                 bsr        unfix_ob
[00015b8a] 41ea 007a                 lea.l      122(a2),a0
[00015b8e] 6100 f68e                 bsr        unfix_ob
[00015b92] 41ea 007e                 lea.l      126(a2),a0
[00015b96] 6100 f686                 bsr        unfix_ob
[00015b9a] 41ea 0082                 lea.l      130(a2),a0
[00015b9e] 6100 f67e                 bsr        unfix_ob
[00015ba2] 41ea 0086                 lea.l      134(a2),a0
[00015ba6] 6100 f676                 bsr        unfix_ob
[00015baa] 41ea 008a                 lea.l      138(a2),a0
[00015bae] 6100 f66e                 bsr        unfix_ob
[00015bb2] 41ea 008e                 lea.l      142(a2),a0
[00015bb6] 6100 f666                 bsr        unfix_ob
[00015bba] 41ea 0092                 lea.l      146(a2),a0
[00015bbe] 6100 f65e                 bsr        unfix_ob
[00015bc2] 41ea 0096                 lea.l      150(a2),a0
[00015bc6] 6100 f656                 bsr        unfix_ob
[00015bca] 41ea 009a                 lea.l      154(a2),a0
[00015bce] 6100 f64e                 bsr        unfix_ob
[00015bd2] 41ea 009e                 lea.l      158(a2),a0
[00015bd6] 6100 f646                 bsr        unfix_ob
[00015bda] 245f                      movea.l    (a7)+,a2
[00015bdc] 4e75                      rts

fix_icon:
[00015bde] 2f0a                      move.l     a2,-(a7)
[00015be0] 2468 0004                 movea.l    4(a0),a2
[00015be4] 41ea 0008                 lea.l      8(a2),a0
[00015be8] 6100 f624                 bsr        fix_ob
[00015bec] 41ea 0028                 lea.l      40(a2),a0
[00015bf0] 6100 f61c                 bsr        fix_ob
[00015bf4] 41ea 002c                 lea.l      44(a2),a0
[00015bf8] 6100 f614                 bsr        fix_ob
[00015bfc] 41ea 0030                 lea.l      48(a2),a0
[00015c00] 6100 f60c                 bsr        fix_ob
[00015c04] 41ea 0034                 lea.l      52(a2),a0
[00015c08] 6100 f604                 bsr        fix_ob
[00015c0c] 41ea 003e                 lea.l      62(a2),a0
[00015c10] 6100 f5fc                 bsr        fix_ob
[00015c14] 41ea 0042                 lea.l      66(a2),a0
[00015c18] 6100 f5f4                 bsr        fix_ob
[00015c1c] 41ea 0046                 lea.l      70(a2),a0
[00015c20] 6100 f5ec                 bsr        fix_ob
[00015c24] 41ea 004a                 lea.l      74(a2),a0
[00015c28] 6100 f5e4                 bsr        fix_ob
[00015c2c] 245f                      movea.l    (a7)+,a2
[00015c2e] 4e75                      rts

unfix_icon:
[00015c30] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00015c34] 2448                      movea.l    a0,a2
[00015c36] 266a 0004                 movea.l    4(a2),a3
[00015c3a] 41eb 0008                 lea.l      8(a3),a0
[00015c3e] 6100 f5de                 bsr        unfix_ob
[00015c42] 7052                      moveq.l    #82,d0
[00015c44] b093                      cmp.l      (a3),d0
[00015c46] 6700 0084                 beq        unfix_icon_1
[00015c4a] 7630                      moveq.l    #48,d3
[00015c4c] d6aa 000e                 add.l      14(a2),d3
[00015c50] 2003                      move.l     d3,d0
[00015c52] 4eb9 0004 7cc8            jsr        Ax_malloc
[00015c58] 2848                      movea.l    a0,a4
[00015c5a] 200c                      move.l     a4,d0
[00015c5c] 660a                      bne.s      unfix_icon_2
[00015c5e] 7003                      moveq.l    #3,d0
[00015c60] 91c8                      suba.l     a0,a0
[00015c62] 4eb9 0001 651e            jsr        assert_error
unfix_icon_2:
[00015c68] 7022                      moveq.l    #34,d0
[00015c6a] 224b                      movea.l    a3,a1
[00015c6c] 204c                      movea.l    a4,a0
[00015c6e] 4eb9 0007 6f44            jsr        memcpy
[00015c74] 7216                      moveq.l    #22,d1
[00015c76] 4240                      clr.w      d0
[00015c78] 41ec 0026                 lea.l      38(a4),a0
[00015c7c] 4eb9 0007 712e            jsr        memset
[00015c82] 7216                      moveq.l    #22,d1
[00015c84] 4240                      clr.w      d0
[00015c86] 41ec 003c                 lea.l      60(a4),a0
[00015c8a] 4eb9 0007 712e            jsr        memset
[00015c90] 06ac 0000 0030 0004       addi.l     #$00000030,4(a4)
[00015c98] 0694 0000 0030            addi.l     #$00000030,(a4)
[00015c9e] 42ac 0022                 clr.l      34(a4)
[00015ca2] 70de                      moveq.l    #-34,d0
[00015ca4] d0aa 000e                 add.l      14(a2),d0
[00015ca8] 43eb 0022                 lea.l      34(a3),a1
[00015cac] 41ec 0052                 lea.l      82(a4),a0
[00015cb0] 4eb9 0007 6f44            jsr        memcpy
[00015cb6] 204b                      movea.l    a3,a0
[00015cb8] 4eb9 0004 7d6c            jsr        Ax_ifree
[00015cbe] 254c 0004                 move.l     a4,4(a2)
[00015cc2] 2543 000a                 move.l     d3,10(a2)
[00015cc6] 2543 000e                 move.l     d3,14(a2)
[00015cca] 6040                      bra.s      unfix_icon_3
unfix_icon_1:
[00015ccc] 41eb 0028                 lea.l      40(a3),a0
[00015cd0] 6100 f54c                 bsr        unfix_ob
[00015cd4] 41eb 002c                 lea.l      44(a3),a0
[00015cd8] 6100 f544                 bsr        unfix_ob
[00015cdc] 41eb 0030                 lea.l      48(a3),a0
[00015ce0] 6100 f53c                 bsr        unfix_ob
[00015ce4] 41eb 0034                 lea.l      52(a3),a0
[00015ce8] 6100 f534                 bsr        unfix_ob
[00015cec] 41eb 003e                 lea.l      62(a3),a0
[00015cf0] 6100 f52c                 bsr        unfix_ob
[00015cf4] 41eb 0042                 lea.l      66(a3),a0
[00015cf8] 6100 f524                 bsr        unfix_ob
[00015cfc] 41eb 0046                 lea.l      70(a3),a0
[00015d00] 6100 f51c                 bsr        unfix_ob
[00015d04] 41eb 004a                 lea.l      74(a3),a0
[00015d08] 6100 f514                 bsr        unfix_ob
unfix_icon_3:
[00015d0c] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00015d10] 4e75                      rts

fix_labels:
[00015d12] 2f0a                      move.l     a2,-(a7)
[00015d14] 2f0b                      move.l     a3,-(a7)
[00015d16] 2648                      movea.l    a0,a3
[00015d18] 45f9 000d a7ee            lea.l      used,a2
[00015d1e] 34bc 0001                 move.w     #$0001,(a2)
[00015d22] 601a                      bra.s      fix_labels_1
fix_labels_2:
[00015d24] 3012                      move.w     (a2),d0
[00015d26] 48c0                      ext.l      d0
[00015d28] e588                      lsl.l      #2,d0
[00015d2a] 2079 0009 81c0            movea.l    trans,a0
[00015d30] 218b 0800                 move.l     a3,0(a0,d0.l)
[00015d34] 3752 0008                 move.w     (a2),8(a3)
[00015d38] 2653                      movea.l    (a3),a3
[00015d3a] 6100 f4f6                 bsr        next_trans
fix_labels_1:
[00015d3e] 200b                      move.l     a3,d0
[00015d40] 66e2                      bne.s      fix_labels_2
[00015d42] 265f                      movea.l    (a7)+,a3
[00015d44] 245f                      movea.l    (a7)+,a2
[00015d46] 4e75                      rts

unfix_labels:
[00015d48] 2f0a                      move.l     a2,-(a7)
[00015d4a] 2f0b                      move.l     a3,-(a7)
[00015d4c] 41f9 0009 81c0            lea.l      trans,a0
[00015d52] 2250                      movea.l    (a0),a1
[00015d54] 4291                      clr.l      (a1)
[00015d56] 7201                      moveq.l    #1,d1
[00015d58] 7002                      moveq.l    #2,d0
[00015d5a] 45e8 0004                 lea.l      4(a0),a2
[00015d5e] 6028                      bra.s      unfix_labels_1
unfix_labels_4:
[00015d60] 3401                      move.w     d1,d2
[00015d62] 48c2                      ext.l      d2
[00015d64] e58a                      lsl.l      #2,d2
[00015d66] 2250                      movea.l    (a0),a1
[00015d68] 2271 2800                 movea.l    0(a1,d2.l),a1
[00015d6c] 2409                      move.l     a1,d2
[00015d6e] 6714                      beq.s      unfix_labels_2
[00015d70] 3400                      move.w     d0,d2
[00015d72] 48c2                      ext.l      d2
[00015d74] b492                      cmp.l      (a2),d2
[00015d76] 6c0a                      bge.s      unfix_labels_3
[00015d78] e58a                      lsl.l      #2,d2
[00015d7a] 2650                      movea.l    (a0),a3
[00015d7c] 22b3 2800                 move.l     0(a3,d2.l),(a1)
[00015d80] 6002                      bra.s      unfix_labels_2
unfix_labels_3:
[00015d82] 4291                      clr.l      (a1)
unfix_labels_2:
[00015d84] 5241                      addq.w     #1,d1
[00015d86] 5240                      addq.w     #1,d0
unfix_labels_1:
[00015d88] 3401                      move.w     d1,d2
[00015d8a] 48c2                      ext.l      d2
[00015d8c] b492                      cmp.l      (a2),d2
[00015d8e] 6dd0                      blt.s      unfix_labels_4
[00015d90] 265f                      movea.l    (a7)+,a3
[00015d92] 245f                      movea.l    (a7)+,a2
[00015d94] 4e75                      rts

fix_list:
[00015d96] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[00015d9a] 2849                      movea.l    a1,a4
[00015d9c] 2028 000e                 move.l     14(a0),d0
[00015da0] 6f34                      ble.s      fix_list_1
[00015da2] 2468 0004                 movea.l    4(a0),a2
[00015da6] 2600                      move.l     d0,d3
[00015da8] e48b                      lsr.l      #2,d3
[00015daa] 4244                      clr.w      d4
[00015dac] 6024                      bra.s      fix_list_2
fix_list_4:
[00015dae] 3004                      move.w     d4,d0
[00015db0] 48c0                      ext.l      d0
[00015db2] e588                      lsl.l      #2,d0
[00015db4] 2672 0800                 movea.l    0(a2,d0.l),a3
[00015db8] 220c                      move.l     a4,d1
[00015dba] 6704                      beq.s      fix_list_3
[00015dbc] 204b                      movea.l    a3,a0
[00015dbe] 4e94                      jsr        (a4)
fix_list_3:
[00015dc0] 7000                      moveq.l    #0,d0
[00015dc2] 302b 0008                 move.w     8(a3),d0
[00015dc6] 3204                      move.w     d4,d1
[00015dc8] 48c1                      ext.l      d1
[00015dca] e589                      lsl.l      #2,d1
[00015dcc] 2580 1800                 move.l     d0,0(a2,d1.l)
[00015dd0] 5244                      addq.w     #1,d4
fix_list_2:
[00015dd2] b644                      cmp.w      d4,d3
[00015dd4] 6ed8                      bgt.s      fix_list_4
fix_list_1:
[00015dd6] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[00015dda] 4e75                      rts

unfix_list:
[00015ddc] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[00015de0] 2849                      movea.l    a1,a4
[00015de2] 2008                      move.l     a0,d0
[00015de4] 6740                      beq.s      unfix_list_1
[00015de6] 2228 000e                 move.l     14(a0),d1
[00015dea] 6f3a                      ble.s      unfix_list_1
[00015dec] 2468 0004                 movea.l    4(a0),a2
[00015df0] 2601                      move.l     d1,d3
[00015df2] e48b                      lsr.l      #2,d3
[00015df4] 4244                      clr.w      d4
[00015df6] 602a                      bra.s      unfix_list_2
unfix_list_4:
[00015df8] 3004                      move.w     d4,d0
[00015dfa] 48c0                      ext.l      d0
[00015dfc] e588                      lsl.l      #2,d0
[00015dfe] 2232 0800                 move.l     0(a2,d0.l),d1
[00015e02] e589                      lsl.l      #2,d1
[00015e04] 2079 0009 81c0            movea.l    trans,a0
[00015e0a] 2670 1800                 movea.l    0(a0,d1.l),a3
[00015e0e] 240c                      move.l     a4,d2
[00015e10] 6704                      beq.s      unfix_list_3
[00015e12] 204b                      movea.l    a3,a0
[00015e14] 4e94                      jsr        (a4)
unfix_list_3:
[00015e16] 3004                      move.w     d4,d0
[00015e18] 48c0                      ext.l      d0
[00015e1a] e588                      lsl.l      #2,d0
[00015e1c] 258b 0800                 move.l     a3,0(a2,d0.l)
[00015e20] 5244                      addq.w     #1,d4
unfix_list_2:
[00015e22] b644                      cmp.w      d4,d3
[00015e24] 6ed2                      bgt.s      unfix_list_4
unfix_list_1:
[00015e26] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[00015e2a] 4e75                      rts

fix_object:
[00015e2c] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[00015e30] 2648                      movea.l    a0,a3
[00015e32] 246b 0004                 movea.l    4(a3),a2
[00015e36] 202b 000e                 move.l     14(a3),d0
[00015e3a] 7238                      moveq.l    #56,d1
[00015e3c] 4eb9 0007 769e            jsr        _uldiv
[00015e42] 2600                      move.l     d0,d3
[00015e44] 4244                      clr.w      d4
[00015e46] 47f9 0009 b3d2            lea.l      ERR_TYPE,a3
[00015e4c] 6000 007e                 bra.w      fix_object_1
fix_object_5:
[00015e50] 204a                      movea.l    a2,a0
[00015e52] 6100 f3ba                 bsr        fix_ob
[00015e56] 41ea 0004                 lea.l      4(a2),a0
[00015e5a] 6100 f3b2                 bsr        fix_ob
[00015e5e] 102a 000f                 move.b     15(a2),d0
[00015e62] 4880                      ext.w      d0
[00015e64] 907c 0014                 sub.w      #$0014,d0
[00015e68] b07c 000c                 cmp.w      #$000C,d0
[00015e6c] 622e                      bhi.s      fix_object_2
[00015e6e] d040                      add.w      d0,d0
[00015e70] 303b 0006                 move.w     $00015E78(pc,d0.w),d0
[00015e74] 4efb 0002                 jmp        $00015E78(pc,d0.w)
J1:
[00015e78] 002e                      dc.w $002e   ; fix_object_3-J1
[00015e7a] 001a                      dc.w $001a   ; fix_object_4-J1
[00015e7c] 001a                      dc.w $001a   ; fix_object_4-J1
[00015e7e] 001a                      dc.w $001a   ; fix_object_4-J1
[00015e80] 001a                      dc.w $001a   ; fix_object_4-J1
[00015e82] 002e                      dc.w $002e   ; fix_object_3-J1
[00015e84] 001a                      dc.w $001a   ; fix_object_4-J1
[00015e86] 002e                      dc.w $002e   ; fix_object_3-J1
[00015e88] 001a                      dc.w $001a   ; fix_object_4-J1
[00015e8a] 001a                      dc.w $001a   ; fix_object_4-J1
[00015e8c] 001a                      dc.w $001a   ; fix_object_4-J1
[00015e8e] 001a                      dc.w $001a   ; fix_object_4-J1
[00015e90] 001a                      dc.w $001a   ; fix_object_4-J1
fix_object_4:
[00015e92] 41ea 0014                 lea.l      20(a2),a0
[00015e96] 6100 f376                 bsr        fix_ob
[00015e9a] 600a                      bra.s      fix_object_3
fix_object_2:
[00015e9c] 204b                      movea.l    a3,a0
[00015e9e] 7001                      moveq.l    #1,d0
[00015ea0] 4eb9 0005 17fe            jsr        Awi_alert
fix_object_3:
[00015ea6] 41ea 0020                 lea.l      32(a2),a0
[00015eaa] 6100 f362                 bsr        fix_ob
[00015eae] 41ea 0024                 lea.l      36(a2),a0
[00015eb2] 6100 f35a                 bsr        fix_ob
[00015eb6] 41ea 002c                 lea.l      44(a2),a0
[00015eba] 6100 f352                 bsr        fix_ob
[00015ebe] 41ea 0030                 lea.l      48(a2),a0
[00015ec2] 6100 f34a                 bsr        fix_ob
[00015ec6] 45ea 0038                 lea.l      56(a2),a2
[00015eca] 5244                      addq.w     #1,d4
fix_object_1:
[00015ecc] b644                      cmp.w      d4,d3
[00015ece] 6e00 ff80                 bgt.w      fix_object_5
[00015ed2] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[00015ed6] 4e75                      rts

unfix_object:
[00015ed8] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[00015edc] 2648                      movea.l    a0,a3
[00015ede] 246b 0004                 movea.l    4(a3),a2
[00015ee2] 202b 000e                 move.l     14(a3),d0
[00015ee6] 7238                      moveq.l    #56,d1
[00015ee8] 4eb9 0007 769e            jsr        _uldiv
[00015eee] 2600                      move.l     d0,d3
[00015ef0] 4244                      clr.w      d4
[00015ef2] 47f9 0009 b3d2            lea.l      ERR_TYPE,a3
[00015ef8] 6000 007e                 bra.w      unfix_object_1
unfix_object_5:
[00015efc] 204a                      movea.l    a2,a0
[00015efe] 6100 f31e                 bsr        unfix_ob
[00015f02] 41ea 0004                 lea.l      4(a2),a0
[00015f06] 6100 f316                 bsr        unfix_ob
[00015f0a] 102a 000f                 move.b     15(a2),d0
[00015f0e] 4880                      ext.w      d0
[00015f10] 907c 0014                 sub.w      #$0014,d0
[00015f14] b07c 000c                 cmp.w      #$000C,d0
[00015f18] 622e                      bhi.s      unfix_object_2
[00015f1a] d040                      add.w      d0,d0
[00015f1c] 303b 0006                 move.w     $00015F24(pc,d0.w),d0
[00015f20] 4efb 0002                 jmp        $00015F24(pc,d0.w)
J2:
[00015f24] 002e                      dc.w $002e   ; unfix_object_3-J2
[00015f26] 001a                      dc.w $001a   ; unfix_object_4-J2
[00015f28] 001a                      dc.w $001a   ; unfix_object_4-J2
[00015f2a] 001a                      dc.w $001a   ; unfix_object_4-J2
[00015f2c] 001a                      dc.w $001a   ; unfix_object_4-J2
[00015f2e] 002e                      dc.w $002e   ; unfix_object_3-J2
[00015f30] 001a                      dc.w $001a   ; unfix_object_4-J2
[00015f32] 002e                      dc.w $002e   ; unfix_object_3-J2
[00015f34] 001a                      dc.w $001a   ; unfix_object_4-J2
[00015f36] 001a                      dc.w $001a   ; unfix_object_4-J2
[00015f38] 001a                      dc.w $001a   ; unfix_object_4-J2
[00015f3a] 001a                      dc.w $001a   ; unfix_object_4-J2
[00015f3c] 001a                      dc.w $001a   ; unfix_object_4-J2
unfix_object_4:
[00015f3e] 41ea 0014                 lea.l      20(a2),a0
[00015f42] 6100 f2da                 bsr        unfix_ob
[00015f46] 600a                      bra.s      unfix_object_3
unfix_object_2:
[00015f48] 204b                      movea.l    a3,a0
[00015f4a] 7001                      moveq.l    #1,d0
[00015f4c] 4eb9 0005 17fe            jsr        Awi_alert
unfix_object_3:
[00015f52] 41ea 0020                 lea.l      32(a2),a0
[00015f56] 6100 f2c6                 bsr        unfix_ob
[00015f5a] 41ea 0024                 lea.l      36(a2),a0
[00015f5e] 6100 f2be                 bsr        unfix_ob
[00015f62] 41ea 002c                 lea.l      44(a2),a0
[00015f66] 6100 f2b6                 bsr        unfix_ob
[00015f6a] 41ea 0030                 lea.l      48(a2),a0
[00015f6e] 6100 f2ae                 bsr        unfix_ob
[00015f72] 45ea 0038                 lea.l      56(a2),a2
[00015f76] 5244                      addq.w     #1,d4
unfix_object_1:
[00015f78] b644                      cmp.w      d4,d3
[00015f7a] 6e00 ff80                 bgt.w      unfix_object_5
[00015f7e] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[00015f82] 4e75                      rts

fix_tedinfo:
[00015f84] 2f0a                      move.l     a2,-(a7)
[00015f86] 2468 0004                 movea.l    4(a0),a2
[00015f8a] 204a                      movea.l    a2,a0
[00015f8c] 6100 f280                 bsr        fix_ob
[00015f90] 41ea 0004                 lea.l      4(a2),a0
[00015f94] 6100 f278                 bsr        fix_ob
[00015f98] 41ea 0008                 lea.l      8(a2),a0
[00015f9c] 6100 f270                 bsr        fix_ob
[00015fa0] 245f                      movea.l    (a7)+,a2
[00015fa2] 4e75                      rts

unfix_tedinfo:
[00015fa4] 2f0a                      move.l     a2,-(a7)
[00015fa6] 2468 0004                 movea.l    4(a0),a2
[00015faa] 204a                      movea.l    a2,a0
[00015fac] 6100 f270                 bsr        unfix_ob
[00015fb0] 41ea 0004                 lea.l      4(a2),a0
[00015fb4] 6100 f268                 bsr        unfix_ob
[00015fb8] 41ea 0008                 lea.l      8(a2),a0
[00015fbc] 6100 f260                 bsr        unfix_ob
[00015fc0] 245f                      movea.l    (a7)+,a2
[00015fc2] 4e75                      rts

fix_user:
[00015fc4] 2f0a                      move.l     a2,-(a7)
[00015fc6] 2468 0004                 movea.l    4(a0),a2
[00015fca] 204a                      movea.l    a2,a0
[00015fcc] 6100 f240                 bsr        fix_ob
[00015fd0] 41ea 0004                 lea.l      4(a2),a0
[00015fd4] 6100 f238                 bsr        fix_ob
[00015fd8] 41ea 0008                 lea.l      8(a2),a0
[00015fdc] 6100 f230                 bsr        fix_ob
[00015fe0] 41ea 000c                 lea.l      12(a2),a0
[00015fe4] 6100 f228                 bsr        fix_ob
[00015fe8] 41ea 0010                 lea.l      16(a2),a0
[00015fec] 6100 f220                 bsr        fix_ob
[00015ff0] 41ea 0014                 lea.l      20(a2),a0
[00015ff4] 6100 f218                 bsr        fix_ob
[00015ff8] 41ea 0018                 lea.l      24(a2),a0
[00015ffc] 6100 f210                 bsr        fix_ob
[00016000] 41ea 001c                 lea.l      28(a2),a0
[00016004] 6100 f208                 bsr        fix_ob
[00016008] 245f                      movea.l    (a7)+,a2
[0001600a] 4e75                      rts

unfix_user:
[0001600c] 2f0a                      move.l     a2,-(a7)
[0001600e] 2468 0004                 movea.l    4(a0),a2
[00016012] 204a                      movea.l    a2,a0
[00016014] 6100 f208                 bsr        unfix_ob
[00016018] 41ea 0004                 lea.l      4(a2),a0
[0001601c] 6100 f200                 bsr        unfix_ob
[00016020] 41ea 0008                 lea.l      8(a2),a0
[00016024] 6100 f1f8                 bsr        unfix_ob
[00016028] 41ea 000c                 lea.l      12(a2),a0
[0001602c] 6100 f1f0                 bsr        unfix_ob
[00016030] 41ea 0010                 lea.l      16(a2),a0
[00016034] 6100 f1e8                 bsr        unfix_ob
[00016038] 41ea 0014                 lea.l      20(a2),a0
[0001603c] 6100 f1e0                 bsr        unfix_ob
[00016040] 41ea 0018                 lea.l      24(a2),a0
[00016044] 6100 f1d8                 bsr        unfix_ob
[00016048] 41ea 001c                 lea.l      28(a2),a0
[0001604c] 6100 f1d0                 bsr        unfix_ob
[00016050] 245f                      movea.l    (a7)+,a2
[00016052] 4e75                      rts

unfix_window2:
[00016054] 48e7 0038                 movem.l    a2-a4,-(a7)
[00016058] 2448                      movea.l    a0,a2
[0001605a] 266a 0004                 movea.l    4(a2),a3
[0001605e] 203c 0000 00a2            move.l     #$000000A2,d0
[00016064] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001606a] 2848                      movea.l    a0,a4
[0001606c] 200c                      move.l     a4,d0
[0001606e] 660a                      bne.s      unfix_window2_1
[00016070] 7003                      moveq.l    #3,d0
[00016072] 91c8                      suba.l     a0,a0
[00016074] 4eb9 0001 651e            jsr        assert_error
unfix_window2_1:
[0001607a] 224c                      movea.l    a4,a1
[0001607c] 204b                      movea.l    a3,a0
[0001607e] 6100 efb4                 bsr        ConvertWindowV2x
[00016082] 204b                      movea.l    a3,a0
[00016084] 4eb9 0004 7d6c            jsr        Ax_ifree
[0001608a] 254c 0004                 move.l     a4,4(a2)
[0001608e] 203c 0000 00a2            move.l     #$000000A2,d0
[00016094] 2540 000a                 move.l     d0,10(a2)
[00016098] 2540 000e                 move.l     d0,14(a2)
[0001609c] 204a                      movea.l    a2,a0
[0001609e] 6100 fa5e                 bsr        unfix_window
[000160a2] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[000160a6] 4e75                      rts

unfix_user1:
[000160a8] 48e7 0038                 movem.l    a2-a4,-(a7)
[000160ac] 2448                      movea.l    a0,a2
[000160ae] 266a 0004                 movea.l    4(a2),a3
[000160b2] 7020                      moveq.l    #32,d0
[000160b4] 4eb9 0004 7cc8            jsr        Ax_malloc
[000160ba] 2848                      movea.l    a0,a4
[000160bc] 200c                      move.l     a4,d0
[000160be] 660a                      bne.s      unfix_user1_1
[000160c0] 7003                      moveq.l    #3,d0
[000160c2] 91c8                      suba.l     a0,a0
[000160c4] 4eb9 0001 651e            jsr        assert_error
unfix_user1_1:
[000160ca] 224c                      movea.l    a4,a1
[000160cc] 204b                      movea.l    a3,a0
[000160ce] 6100 ef96                 bsr        ConvertUserV1x
[000160d2] 204b                      movea.l    a3,a0
[000160d4] 4eb9 0004 7d6c            jsr        Ax_ifree
[000160da] 254c 0004                 move.l     a4,4(a2)
[000160de] 7020                      moveq.l    #32,d0
[000160e0] 2540 000a                 move.l     d0,10(a2)
[000160e4] 2540 000e                 move.l     d0,14(a2)
[000160e8] 426a 0038                 clr.w      56(a2)
[000160ec] 204a                      movea.l    a2,a0
[000160ee] 6100 ff1c                 bsr        unfix_user
[000160f2] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[000160f6] 4e75                      rts

unfix_user2:
[000160f8] 48e7 0038                 movem.l    a2-a4,-(a7)
[000160fc] 2448                      movea.l    a0,a2
[000160fe] 266a 0004                 movea.l    4(a2),a3
[00016102] 7020                      moveq.l    #32,d0
[00016104] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001610a] 2848                      movea.l    a0,a4
[0001610c] 200c                      move.l     a4,d0
[0001610e] 660a                      bne.s      unfix_user2_1
[00016110] 7003                      moveq.l    #3,d0
[00016112] 91c8                      suba.l     a0,a0
[00016114] 4eb9 0001 651e            jsr        assert_error
unfix_user2_1:
[0001611a] 224c                      movea.l    a4,a1
[0001611c] 204b                      movea.l    a3,a0
[0001611e] 6100 ef68                 bsr        ConvertUserV2x
[00016122] 204b                      movea.l    a3,a0
[00016124] 4eb9 0004 7d6c            jsr        Ax_ifree
[0001612a] 254c 0004                 move.l     a4,4(a2)
[0001612e] 7020                      moveq.l    #32,d0
[00016130] 2540 000a                 move.l     d0,10(a2)
[00016134] 2540 000e                 move.l     d0,14(a2)
[00016138] 204a                      movea.l    a2,a0
[0001613a] 6100 fed0                 bsr        unfix_user
[0001613e] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00016142] 4e75                      rts

release_err:
[00016144] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00016148] 45f9 0009 81c0            lea.l      trans,a2
[0001614e] 2012                      move.l     (a2),d0
[00016150] 6740                      beq.s      release_err_1
[00016152] 7601                      moveq.l    #1,d3
[00016154] 6024                      bra.s      release_err_2
release_err_4:
[00016156] 3003                      move.w     d3,d0
[00016158] 48c0                      ext.l      d0
[0001615a] e588                      lsl.l      #2,d0
[0001615c] 2052                      movea.l    (a2),a0
[0001615e] 2670 0800                 movea.l    0(a0,d0.l),a3
[00016162] 220b                      move.l     a3,d1
[00016164] 671e                      beq.s      release_err_3
[00016166] 206b 0004                 movea.l    4(a3),a0
[0001616a] 4eb9 0004 7d6c            jsr        Ax_ifree
[00016170] 204b                      movea.l    a3,a0
[00016172] 4eb9 0004 7d6c            jsr        Ax_ifree
[00016178] 5243                      addq.w     #1,d3
release_err_2:
[0001617a] 3003                      move.w     d3,d0
[0001617c] 48c0                      ext.l      d0
[0001617e] b0aa 0004                 cmp.l      4(a2),d0
[00016182] 6dd2                      blt.s      release_err_4
release_err_3:
[00016184] 2052                      movea.l    (a2),a0
[00016186] 4eb9 0004 7e26            jsr        Ax_free
[0001618c] 4292                      clr.l      (a2)
[0001618e] 42aa 0004                 clr.l      4(a2)
release_err_1:
[00016192] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00016196] 4e75                      rts

free_acs:
[00016198] 48e7 0038                 movem.l    a2-a4,-(a7)
[0001619c] 2448                      movea.l    a0,a2
[0001619e] 266a 0010                 movea.l    16(a2),a3
[000161a2] 6018                      bra.s      free_acs_1
free_acs_2:
[000161a4] 2853                      movea.l    (a3),a4
[000161a6] 206b 0004                 movea.l    4(a3),a0
[000161aa] 4eb9 0004 7d6c            jsr        Ax_ifree
[000161b0] 7042                      moveq.l    #66,d0
[000161b2] 204b                      movea.l    a3,a0
[000161b4] 4eb9 0004 8140            jsr        Ax_recycle
[000161ba] 264c                      movea.l    a4,a3
free_acs_1:
[000161bc] 200b                      move.l     a3,d0
[000161be] 66e4                      bne.s      free_acs_2
[000161c0] 204a                      movea.l    a2,a0
[000161c2] 203c 0000 0262            move.l     #$00000262,d0
[000161c8] 4eb9 0004 8140            jsr        Ax_recycle
[000161ce] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[000161d2] 4e75                      rts

objfree:
[000161d4] 48e7 0038                 movem.l    a2-a4,-(a7)
[000161d8] 2849                      movea.l    a1,a4
[000161da] 0068 0001 0006            ori.w      #$0001,6(a0)
[000161e0] 45e8 0010                 lea.l      16(a0),a2
[000161e4] 6016                      bra.s      objfree_1
objfree_4:
[000161e6] 200b                      move.l     a3,d0
[000161e8] 6610                      bne.s      objfree_2
[000161ea] 41f9 0009 b2a6            lea.l      A_MISSENTRY,a0
[000161f0] 7001                      moveq.l    #1,d0
[000161f2] 4eb9 0005 17fe            jsr        Awi_alert
[000161f8] 6030                      bra.s      objfree_3
objfree_2:
[000161fa] 244b                      movea.l    a3,a2
objfree_1:
[000161fc] 2652                      movea.l    (a2),a3
[000161fe] b9cb                      cmpa.l     a3,a4
[00016200] 66e4                      bne.s      objfree_4
[00016202] 2494                      move.l     (a4),(a2)
[00016204] 202c 0012                 move.l     18(a4),d0
[00016208] 670e                      beq.s      objfree_5
[0001620a] 93c9                      suba.l     a1,a1
[0001620c] 2040                      movea.l    d0,a0
[0001620e] 2440                      movea.l    d0,a2
[00016210] 246a 0004                 movea.l    4(a2),a2
[00016214] 7002                      moveq.l    #2,d0
[00016216] 4e92                      jsr        (a2)
objfree_5:
[00016218] 206c 0004                 movea.l    4(a4),a0
[0001621c] 4eb9 0004 7e26            jsr        Ax_free
[00016222] 204c                      movea.l    a4,a0
[00016224] 4eb9 0004 7e26            jsr        Ax_free
objfree_3:
[0001622a] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0001622e] 4e75                      rts

objmalloc:
[00016230] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00016234] 2848                      movea.l    a0,a4
[00016236] 2600                      move.l     d0,d3
[00016238] 4a80                      tst.l      d0
[0001623a] 6f18                      ble.s      objmalloc_1
[0001623c] 4eb9 0004 7cc8            jsr        Ax_malloc
[00016242] 2448                      movea.l    a0,a2
[00016244] 200a                      move.l     a2,d0
[00016246] 6724                      beq.s      objmalloc_2
[00016248] 2203                      move.l     d3,d1
[0001624a] 4240                      clr.w      d0
[0001624c] 4eb9 0007 712e            jsr        memset
[00016252] 6002                      bra.s      objmalloc_3
objmalloc_1:
[00016254] 95ca                      suba.l     a2,a2
objmalloc_3:
[00016256] 7042                      moveq.l    #66,d0
[00016258] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001625e] 2648                      movea.l    a0,a3
[00016260] 200b                      move.l     a3,d0
[00016262] 660c                      bne.s      objmalloc_4
[00016264] 204a                      movea.l    a2,a0
[00016266] 4eb9 0004 7e26            jsr        Ax_free
objmalloc_2:
[0001626c] 91c8                      suba.l     a0,a0
[0001626e] 6034                      bra.s      objmalloc_5
objmalloc_4:
[00016270] 7242                      moveq.l    #66,d1
[00016272] 4240                      clr.w      d0
[00016274] 204b                      movea.l    a3,a0
[00016276] 4eb9 0007 712e            jsr        memset
[0001627c] 302c 0006                 move.w     6(a4),d0
[00016280] c07c 1000                 and.w      #$1000,d0
[00016284] 6706                      beq.s      objmalloc_6
[00016286] 006b 0400 0038            ori.w      #$0400,56(a3)
objmalloc_6:
[0001628c] 274a 0004                 move.l     a2,4(a3)
[00016290] 377c 0001 0036            move.w     #$0001,54(a3)
[00016296] 26ac 0010                 move.l     16(a4),(a3)
[0001629a] 294b 0010                 move.l     a3,16(a4)
[0001629e] 2743 000a                 move.l     d3,10(a3)
[000162a2] 204b                      movea.l    a3,a0
objmalloc_5:
[000162a4] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[000162a8] 4e75                      rts

objextent:
[000162aa] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[000162ae] 2448                      movea.l    a0,a2
[000162b0] 2600                      move.l     d0,d3
[000162b2] 222a 000e                 move.l     14(a2),d1
[000162b6] d280                      add.l      d0,d1
[000162b8] b2aa 000a                 cmp.l      10(a2),d1
[000162bc] 6f42                      ble.s      objextent_1
[000162be] eb88                      lsl.l      #5,d0
[000162c0] d0aa 000a                 add.l      10(a2),d0
[000162c4] 4eb9 0004 7cc8            jsr        Ax_malloc
[000162ca] 2648                      movea.l    a0,a3
[000162cc] 200b                      move.l     a3,d0
[000162ce] 6604                      bne.s      objextent_2
[000162d0] 70ff                      moveq.l    #-1,d0
[000162d2] 602e                      bra.s      objextent_3
objextent_2:
[000162d4] 202a 0004                 move.l     4(a2),d0
[000162d8] 671a                      beq.s      objextent_4
[000162da] 202a 000a                 move.l     10(a2),d0
[000162de] 226a 0004                 movea.l    4(a2),a1
[000162e2] 204b                      movea.l    a3,a0
[000162e4] 4eb9 0007 6f44            jsr        memcpy
[000162ea] 206a 0004                 movea.l    4(a2),a0
[000162ee] 4eb9 0004 7e26            jsr        Ax_free
objextent_4:
[000162f4] 2003                      move.l     d3,d0
[000162f6] eb88                      lsl.l      #5,d0
[000162f8] d1aa 000a                 add.l      d0,10(a2)
[000162fc] 254b 0004                 move.l     a3,4(a2)
objextent_1:
[00016300] 4240                      clr.w      d0
objextent_3:
[00016302] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00016306] 4e75                      rts

makeformat:
[00016308] 48e7 1820                 movem.l    d3-d4/a2,-(a7)
[0001630c] 2448                      movea.l    a0,a2
[0001630e] 4243                      clr.w      d3
[00016310] 3003                      move.w     d3,d0
[00016312] 4eb9 0007 68ce            jsr        strchr
[00016318] 2448                      movea.l    a0,a2
[0001631a] 6002                      bra.s      makeformat_1
makeformat_3:
[0001631c] 5243                      addq.w     #1,d3
makeformat_1:
[0001631e] 1022                      move.b     -(a2),d0
[00016320] 4880                      ext.w      d0
[00016322] 4eb9 0007 7212            jsr        isdigit
[00016328] 4a40                      tst.w      d0
[0001632a] 6706                      beq.s      makeformat_2
[0001632c] b67c 0004                 cmp.w      #$0004,d3
[00016330] 6dea                      blt.s      makeformat_3
makeformat_2:
[00016332] 524a                      addq.w     #1,a2
[00016334] 4a43                      tst.w      d3
[00016336] 6f34                      ble.s      makeformat_4
[00016338] 204a                      movea.l    a2,a0
[0001633a] 4244                      clr.w      d4
[0001633c] 6014                      bra.s      makeformat_5
makeformat_6:
[0001633e] 3004                      move.w     d4,d0
[00016340] e548                      lsl.w      #2,d0
[00016342] d044                      add.w      d4,d0
[00016344] d040                      add.w      d0,d0
[00016346] 1218                      move.b     (a0)+,d1
[00016348] 4881                      ext.w      d1
[0001634a] d041                      add.w      d1,d0
[0001634c] d07c ffd0                 add.w      #$FFD0,d0
[00016350] 3800                      move.w     d0,d4
makeformat_5:
[00016352] 1010                      move.b     (a0),d0
[00016354] 66e8                      bne.s      makeformat_6
[00016356] 43f9 0009 82c0            lea.l      $000982C0,a1
[0001635c] 204a                      movea.l    a2,a0
[0001635e] 4eb9 0007 6950            jsr        strcpy
[00016364] d72a 0002                 add.b      d3,2(a2)
[00016368] 3004                      move.w     d4,d0
[0001636a] 6002                      bra.s      makeformat_7
makeformat_4:
[0001636c] 70ff                      moveq.l    #-1,d0
makeformat_7:
[0001636e] 4cdf 0418                 movem.l    (a7)+,d3-d4/a2
[00016372] 4e75                      rts

uniquename:
[00016374] 48e7 182e                 movem.l    d3-d4/a2/a4-a6,-(a7)
[00016378] 4fef ffb0                 lea.l      -80(a7),a7
[0001637c] 2a48                      movea.l    a0,a5
[0001637e] 2449                      movea.l    a1,a2
[00016380] 43ea 0016                 lea.l      22(a2),a1
[00016384] 41d7                      lea.l      (a7),a0
[00016386] 4eb9 0007 6950            jsr        strcpy
[0001638c] 41d7                      lea.l      (a7),a0
[0001638e] 6100 ff78                 bsr        makeformat
[00016392] 3600                      move.w     d0,d3
[00016394] 49ef 0028                 lea.l      40(a7),a4
[00016398] 4a43                      tst.w      d3
[0001639a] 6b24                      bmi.s      uniquename_1
[0001639c] 3003                      move.w     d3,d0
[0001639e] 5243                      addq.w     #1,d3
[000163a0] 3f00                      move.w     d0,-(a7)
[000163a2] 43ef 0002                 lea.l      2(a7),a1
[000163a6] 204c                      movea.l    a4,a0
[000163a8] 4eb9 0007 5680            jsr        sprintf
[000163ae] 544f                      addq.w     #2,a7
[000163b0] 422c 001f                 clr.b      31(a4)
[000163b4] 224c                      movea.l    a4,a1
[000163b6] 41ea 0016                 lea.l      22(a2),a0
[000163ba] 4eb9 0007 6950            jsr        strcpy
uniquename_1:
[000163c0] 41ea 0016                 lea.l      22(a2),a0
[000163c4] 4eb9 0007 69b0            jsr        strlen
[000163ca] 2800                      move.l     d0,d4
[000163cc] 4ded 0010                 lea.l      16(a5),a6
[000163d0] 6060                      bra.s      uniquename_2
uniquename_7:
[000163d2] 2256                      movea.l    (a6),a1
[000163d4] 43e9 0016                 lea.l      22(a1),a1
[000163d8] 41ea 0016                 lea.l      22(a2),a0
[000163dc] 4eb9 0007 68fe            jsr        strcmp
[000163e2] 4a40                      tst.w      d0
[000163e4] 6b50                      bmi.s      uniquename_3
[000163e6] 4a40                      tst.w      d0
[000163e8] 6646                      bne.s      uniquename_4
[000163ea] b5d6                      cmpa.l     (a6),a2
[000163ec] 6742                      beq.s      uniquename_4
[000163ee] 4a43                      tst.w      d3
[000163f0] 6b3a                      bmi.s      uniquename_5
[000163f2] 3003                      move.w     d3,d0
[000163f4] 5243                      addq.w     #1,d3
[000163f6] 3f00                      move.w     d0,-(a7)
[000163f8] 43ef 0002                 lea.l      2(a7),a1
[000163fc] 204c                      movea.l    a4,a0
[000163fe] 4eb9 0007 5680            jsr        sprintf
[00016404] 544f                      addq.w     #2,a7
[00016406] 422c 001f                 clr.b      31(a4)
[0001640a] 224c                      movea.l    a4,a1
[0001640c] 41ea 0016                 lea.l      22(a2),a0
[00016410] 4eb9 0007 6950            jsr        strcpy
[00016416] 1034 4000                 move.b     0(a4,d4.w),d0
[0001641a] 6714                      beq.s      uniquename_4
[0001641c] 4ded 0010                 lea.l      16(a5),a6
[00016420] 204c                      movea.l    a4,a0
[00016422] 4eb9 0007 69b0            jsr        strlen
[00016428] 2800                      move.l     d0,d4
[0001642a] 6006                      bra.s      uniquename_2
uniquename_5:
[0001642c] 70ff                      moveq.l    #-1,d0
[0001642e] 600e                      bra.s      uniquename_6
uniquename_4:
[00016430] 2c56                      movea.l    (a6),a6
uniquename_2:
[00016432] 2016                      move.l     (a6),d0
[00016434] 669c                      bne.s      uniquename_7
uniquename_3:
[00016436] 206f 006c                 movea.l    108(a7),a0
[0001643a] 208e                      move.l     a6,(a0)
[0001643c] 4240                      clr.w      d0
uniquename_6:
[0001643e] 4fef 0050                 lea.l      80(a7),a7
[00016442] 4cdf 7418                 movem.l    (a7)+,d3-d4/a2/a4-a6
[00016446] 4e75                      rts

objname:
[00016448] 48e7 0034                 movem.l    a2-a3/a5,-(a7)
[0001644c] 594f                      subq.w     #4,a7
[0001644e] 2648                      movea.l    a0,a3
[00016450] 2449                      movea.l    a1,a2
[00016452] 2a6f 0018                 movea.l    24(a7),a5
[00016456] 41ea 0016                 lea.l      22(a2),a0
[0001645a] 226f 0014                 movea.l    20(a7),a1
[0001645e] 4eb9 0007 6950            jsr        strcpy
[00016464] 41eb 0010                 lea.l      16(a3),a0
[00016468] 2e88                      move.l     a0,(a7)
[0001646a] 6002                      bra.s      objname_1
objname_2:
[0001646c] 2e88                      move.l     a0,(a7)
objname_1:
[0001646e] 2257                      movea.l    (a7),a1
[00016470] 2051                      movea.l    (a1),a0
[00016472] b5c8                      cmpa.l     a0,a2
[00016474] 66f6                      bne.s      objname_2
[00016476] 2292                      move.l     (a2),(a1)
[00016478] 600e                      bra.s      objname_3
objname_5:
[0001647a] 2f0d                      move.l     a5,-(a7)
[0001647c] 224a                      movea.l    a2,a1
[0001647e] 204b                      movea.l    a3,a0
[00016480] 4eb9 0001 4630            jsr        newlabel
[00016486] 584f                      addq.w     #4,a7
objname_3:
[00016488] 4857                      pea.l      (a7)
[0001648a] 224a                      movea.l    a2,a1
[0001648c] 204b                      movea.l    a3,a0
[0001648e] 6100 fee4                 bsr        uniquename
[00016492] 584f                      addq.w     #4,a7
[00016494] 5240                      addq.w     #1,d0
[00016496] 6604                      bne.s      objname_4
[00016498] 200d                      move.l     a5,d0
[0001649a] 66de                      bne.s      objname_5
objname_4:
[0001649c] 2057                      movea.l    (a7),a0
[0001649e] 2490                      move.l     (a0),(a2)
[000164a0] 2057                      movea.l    (a7),a0
[000164a2] 208a                      move.l     a2,(a0)
[000164a4] 006b 0001 0006            ori.w      #$0001,6(a3)
[000164aa] 584f                      addq.w     #4,a7
[000164ac] 4cdf 2c00                 movem.l    (a7)+,a2-a3/a5
[000164b0] 4e75                      rts

	.data

trans:
[000981c0]                           dc.b $00
[000981c1]                           dc.b $00
[000981c2]                           dc.b $00
[000981c3]                           dc.b $00
transcount:
[000981c4]                           dc.b $00
[000981c5]                           dc.b $00
[000981c6]                           dc.b $00
[000981c7]                           dc.b $00
FixV3x:
[000981c8] 00015a1e                  dc.l fix_window
[000981cc] 00015e2c                  dc.l fix_object
[000981d0] 00015e2c                  dc.l fix_object
[000981d4] 00015e2c                  dc.l fix_object
[000981d8]                           dc.b $00
[000981d9]                           dc.b $00
[000981da]                           dc.b $00
[000981db]                           dc.b $00
[000981dc] 00015f84                  dc.l fix_tedinfo
[000981e0] 00015bde                  dc.l fix_icon
[000981e4]                           dc.b $00
[000981e5]                           dc.b $00
[000981e6]                           dc.b $00
[000981e7]                           dc.b $00
[000981e8]                           dc.b $00
[000981e9]                           dc.b $00
[000981ea]                           dc.b $00
[000981eb]                           dc.b $00
[000981ec] 00015fc4                  dc.l fix_user
[000981f0]                           dc.b $00
[000981f1]                           dc.b $00
[000981f2]                           dc.b $00
[000981f3]                           dc.b $00
[000981f4]                           dc.b $00
[000981f5]                           dc.b $00
[000981f6]                           dc.b $00
[000981f7]                           dc.b $00
[000981f8]                           dc.b $00
[000981f9]                           dc.b $00
[000981fa]                           dc.b $00
[000981fb]                           dc.b $00
[000981fc]                           dc.b $00
[000981fd]                           dc.b $00
[000981fe]                           dc.b $00
[000981ff]                           dc.b $00
[00098200]                           dc.b $00
[00098201]                           dc.b $00
[00098202]                           dc.b $00
[00098203]                           dc.b $00
UnfixV3x:
[00098204] 00015afe                  dc.l unfix_window
[00098208] 00015ed8                  dc.l unfix_object
[0009820c] 00015ed8                  dc.l unfix_object
[00098210] 00015ed8                  dc.l unfix_object
[00098214]                           dc.b $00
[00098215]                           dc.b $00
[00098216]                           dc.b $00
[00098217]                           dc.b $00
[00098218] 00015fa4                  dc.l unfix_tedinfo
[0009821c] 00015c30                  dc.l unfix_icon
[00098220]                           dc.b $00
[00098221]                           dc.b $00
[00098222]                           dc.b $00
[00098223]                           dc.b $00
[00098224]                           dc.b $00
[00098225]                           dc.b $00
[00098226]                           dc.b $00
[00098227]                           dc.b $00
[00098228] 0001600c                  dc.l unfix_user
[0009822c]                           dc.b $00
[0009822d]                           dc.b $00
[0009822e]                           dc.b $00
[0009822f]                           dc.b $00
[00098230]                           dc.b $00
[00098231]                           dc.b $00
[00098232]                           dc.b $00
[00098233]                           dc.b $00
[00098234]                           dc.b $00
[00098235]                           dc.b $00
[00098236]                           dc.b $00
[00098237]                           dc.b $00
[00098238]                           dc.b $00
[00098239]                           dc.b $00
[0009823a]                           dc.b $00
[0009823b]                           dc.b $00
[0009823c]                           dc.b $00
[0009823d]                           dc.b $00
[0009823e]                           dc.b $00
[0009823f]                           dc.b $00
UnfixV2x:
[00098240] 00016054                  dc.l unfix_window2
[00098244] 00015ed8                  dc.l unfix_object
[00098248] 00015ed8                  dc.l unfix_object
[0009824c] 00015ed8                  dc.l unfix_object
[00098250]                           dc.b $00
[00098251]                           dc.b $00
[00098252]                           dc.b $00
[00098253]                           dc.b $00
[00098254] 00015fa4                  dc.l unfix_tedinfo
[00098258] 00015c30                  dc.l unfix_icon
[0009825c]                           dc.b $00
[0009825d]                           dc.b $00
[0009825e]                           dc.b $00
[0009825f]                           dc.b $00
[00098260]                           dc.b $00
[00098261]                           dc.b $00
[00098262]                           dc.b $00
[00098263]                           dc.b $00
[00098264] 000160f8                  dc.l unfix_user2
[00098268]                           dc.b $00
[00098269]                           dc.b $00
[0009826a]                           dc.b $00
[0009826b]                           dc.b $00
[0009826c]                           dc.b $00
[0009826d]                           dc.b $00
[0009826e]                           dc.b $00
[0009826f]                           dc.b $00
[00098270]                           dc.b $00
[00098271]                           dc.b $00
[00098272]                           dc.b $00
[00098273]                           dc.b $00
[00098274]                           dc.b $00
[00098275]                           dc.b $00
[00098276]                           dc.b $00
[00098277]                           dc.b $00
[00098278]                           dc.b $00
[00098279]                           dc.b $00
[0009827a]                           dc.b $00
[0009827b]                           dc.b $00
UnfixV1x:
[0009827c] 00016054                  dc.l unfix_window2
[00098280] 00015ed8                  dc.l unfix_object
[00098284] 00015ed8                  dc.l unfix_object
[00098288] 00015ed8                  dc.l unfix_object
[0009828c]                           dc.b $00
[0009828d]                           dc.b $00
[0009828e]                           dc.b $00
[0009828f]                           dc.b $00
[00098290] 00015fa4                  dc.l unfix_tedinfo
[00098294] 00015c30                  dc.l unfix_icon
[00098298]                           dc.b $00
[00098299]                           dc.b $00
[0009829a]                           dc.b $00
[0009829b]                           dc.b $00
[0009829c]                           dc.b $00
[0009829d]                           dc.b $00
[0009829e]                           dc.b $00
[0009829f]                           dc.b $00
[000982a0] 000160a8                  dc.l unfix_user1
[000982a4]                           dc.b $00
[000982a5]                           dc.b $00
[000982a6]                           dc.b $00
[000982a7]                           dc.b $00
[000982a8]                           dc.b $00
[000982a9]                           dc.b $00
[000982aa]                           dc.b $00
[000982ab]                           dc.b $00
[000982ac]                           dc.b $00
[000982ad]                           dc.b $00
[000982ae]                           dc.b $00
[000982af]                           dc.b $00
[000982b0]                           dc.b $00
[000982b1]                           dc.b $00
[000982b2]                           dc.b $00
[000982b3]                           dc.b $00
[000982b4]                           dc.b $00
[000982b5]                           dc.b $00
[000982b6]                           dc.b $00
[000982b7]                           dc.b $00
zero:
[000982b8]                           dc.b $00
[000982b9]                           dc.b $00
[000982ba]                           dc.b $00
[000982bb]                           dc.b $00
[000982bc]                           dc.b $00
[000982bd]                           dc.b $00
[000982be]                           dc.b $00
[000982bf]                           dc.b $00
[000982c0]                           dc.b '%00d',0
[000982c5]                           dc.b $00

	.bss

used: ds.w 1
