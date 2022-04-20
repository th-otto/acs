
Aev_unhidepointer:
[000463f4] 3039 000d 37ba            move.w     hidepointer,d0
[000463fa] 670c                      beq.s      Aev_unhidepointer_1
[000463fc] 4279 000d 37ba            clr.w      hidepointer
[00046402] 4eb9 0004 9994            jsr        Amo_show
Aev_unhidepointer_1:
[00046408] 4e75                      rts

Aev_quit:
[0004640a] 7001                      moveq.l    #1,d0
[0004640c] 33c0 000d 37b8            move.w     d0,exitapp
[00046412] 2079 0010 1f12            movea.l    ACSblk,a0
[00046418] 3140 023a                 move.w     d0,570(a0)
[0004641c] 4e75                      rts

IsDeadKey:
[0004641e] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[00046422] 2a48                      movea.l    a0,a5
[00046424] 3800                      move.w     d0,d4
[00046426] 2449                      movea.l    a1,a2
[00046428] 4243                      clr.w      d3
[0004642a] 3280                      move.w     d0,(a1)
[0004642c] 47f9 000d 3810            lea.l      dead_key,a3
[00046432] 302b fffe                 move.w     -2(a3),d0
[00046436] 6706                      beq.s      IsDeadKey_1
[00046438] 4240                      clr.w      d0
[0004643a] 6000 00e0                 bra        IsDeadKey_2
IsDeadKey_1:
[0004643e] 377c 0001 fffe            move.w     #$0001,-2(a3)
[00046444] 3013                      move.w     (a3),d0
[00046446] 6700 0090                 beq        IsDeadKey_3
[0004644a] 70ff                      moveq.l    #-1,d0
[0004644c] c02b 0001                 and.b      1(a3),d0
[00046450] 4880                      ext.w      d0
[00046452] 41eb ffac                 lea.l      -84(a3),a0
[00046456] 4eb9 0007 68ce            jsr        strchr
[0004645c] 2848                      movea.l    a0,a4
[0004645e] 200c                      move.l     a4,d0
[00046460] 6772                      beq.s      IsDeadKey_4
[00046462] 2a0c                      move.l     a4,d5
[00046464] 9abc 000d 37bc            sub.l      #DeadKeys,d5
[0004646a] 70ff                      moveq.l    #-1,d0
[0004646c] c004                      and.b      d4,d0
[0004646e] 4880                      ext.w      d0
[00046470] 3205                      move.w     d5,d1
[00046472] e749                      lsl.w      #3,d1
[00046474] 2073 10b6                 movea.l    -74(a3,d1.w),a0
[00046478] 4eb9 0007 68ce            jsr        strchr
[0004647e] 2848                      movea.l    a0,a4
[00046480] 3004                      move.w     d4,d0
[00046482] c07c 8000                 and.w      #$8000,d0
[00046486] 6638                      bne.s      IsDeadKey_5
[00046488] 220c                      move.l     a4,d1
[0004648a] 6734                      beq.s      IsDeadKey_5
[0004648c] 70ff                      moveq.l    #-1,d0
[0004648e] c02b 0001                 and.b      1(a3),d0
[00046492] 4880                      ext.w      d0
[00046494] 2079 0010 1f12            movea.l    ACSblk,a0
[0004649a] 41e8 04f2                 lea.l      1266(a0),a0
[0004649e] 4eb9 0007 68ce            jsr        strchr
[000464a4] 2008                      move.l     a0,d0
[000464a6] 6718                      beq.s      IsDeadKey_5
[000464a8] 200c                      move.l     a4,d0
[000464aa] 3205                      move.w     d5,d1
[000464ac] e749                      lsl.w      #3,d1
[000464ae] 90b3 10b6                 sub.l      -74(a3,d1.w),d0
[000464b2] 2073 10ba                 movea.l    -70(a3,d1.w),a0
[000464b6] 1430 0000                 move.b     0(a0,d0.w),d2
[000464ba] 4882                      ext.w      d2
[000464bc] 3482                      move.w     d2,(a2)
[000464be] 6014                      bra.s      IsDeadKey_4
IsDeadKey_5:
[000464c0] 2079 0010 1f12            movea.l    ACSblk,a0
[000464c6] 3153 02ce                 move.w     (a3),718(a0)
[000464ca] 204d                      movea.l    a5,a0
[000464cc] 4eb9 0004 6522            jsr        evkeybrd
[000464d2] 3484                      move.w     d4,(a2)
IsDeadKey_4:
[000464d4] 4253                      clr.w      (a3)
[000464d6] 603e                      bra.s      IsDeadKey_6
IsDeadKey_3:
[000464d8] 3004                      move.w     d4,d0
[000464da] c07c 8000                 and.w      #$8000,d0
[000464de] 6636                      bne.s      IsDeadKey_6
[000464e0] 70ff                      moveq.l    #-1,d0
[000464e2] c004                      and.b      d4,d0
[000464e4] 4880                      ext.w      d0
[000464e6] 41eb ffac                 lea.l      -84(a3),a0
[000464ea] 4eb9 0007 68ce            jsr        strchr
[000464f0] 2848                      movea.l    a0,a4
[000464f2] 200c                      move.l     a4,d0
[000464f4] 6720                      beq.s      IsDeadKey_6
[000464f6] 70ff                      moveq.l    #-1,d0
[000464f8] c004                      and.b      d4,d0
[000464fa] 4880                      ext.w      d0
[000464fc] 2079 0010 1f12            movea.l    ACSblk,a0
[00046502] 41e8 04f2                 lea.l      1266(a0),a0
[00046506] 4eb9 0007 68ce            jsr        strchr
[0004650c] 2008                      move.l     a0,d0
[0004650e] 6706                      beq.s      IsDeadKey_6
[00046510] 3684                      move.w     d4,(a3)
[00046512] 4252                      clr.w      (a2)
[00046514] 7601                      moveq.l    #1,d3
IsDeadKey_6:
[00046516] 426b fffe                 clr.w      -2(a3)
[0004651a] 3003                      move.w     d3,d0
IsDeadKey_2:
[0004651c] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[00046520] 4e75                      rts

evkeybrd:
[00046522] 48e7 103e                 movem.l    d3/a2-a6,-(a7)
[00046526] 4fef ffee                 lea.l      -18(a7),a7
[0004652a] 2a48                      movea.l    a0,a5
[0004652c] 43f9 000d 3812            lea.l      $000D3812,a1
[00046532] 41d7                      lea.l      (a7),a0
[00046534] 700f                      moveq.l    #15,d0
evkeybrd_1:
[00046536] 10d9                      move.b     (a1)+,(a0)+
[00046538] 51c8 fffc                 dbf        d0,evkeybrd_1
[0004653c] 76ff                      moveq.l    #-1,d3
[0004653e] 97cb                      suba.l     a3,a3
[00046540] 49f9 0010 1f12            lea.l      ACSblk,a4
[00046546] 2254                      movea.l    (a4),a1
[00046548] 43e9 02ce                 lea.l      718(a1),a1
[0004654c] 2054                      movea.l    (a4),a0
[0004654e] 3028 02ce                 move.w     718(a0),d0
[00046552] 204d                      movea.l    a5,a0
[00046554] 6100 fec8                 bsr        IsDeadKey
[00046558] 4a40                      tst.w      d0
[0004655a] 6706                      beq.s      evkeybrd_2
[0004655c] 4240                      clr.w      d0
[0004655e] 6000 0290                 bra        evkeybrd_3
evkeybrd_2:
[00046562] 4eb9 0004 e608            jsr        Awi_root
[00046568] 2448                      movea.l    a0,a2
[0004656a] 200d                      move.l     a5,d0
[0004656c] 6644                      bne.s      evkeybrd_4
[0004656e] 42a7                      clr.l      -(a7)
[00046570] 42a7                      clr.l      -(a7)
[00046572] 42a7                      clr.l      -(a7)
[00046574] 486f 001c                 pea.l      28(a7)
[00046578] 720a                      moveq.l    #10,d1
[0004657a] 4240                      clr.w      d0
[0004657c] 4eb9 0007 14ea            jsr        wind_get
[00046582] 4fef 0010                 lea.l      16(a7),a7
[00046586] 302f 0010                 move.w     16(a7),d0
[0004658a] 4eb9 0004 e5ea            jsr        Awi_wid
[00046590] 2a48                      movea.l    a0,a5
[00046592] 200d                      move.l     a5,d0
[00046594] 661c                      bne.s      evkeybrd_4
[00046596] 3239 0010 75ec            move.w     _ACSv_wmenu,d1
[0004659c] 6614                      bne.s      evkeybrd_4
[0004659e] 342a 0020                 move.w     32(a2),d2
[000465a2] 6a08                      bpl.s      evkeybrd_5
[000465a4] 226a 000c                 movea.l    12(a2),a1
[000465a8] 204a                      movea.l    a2,a0
[000465aa] 4e91                      jsr        (a1)
evkeybrd_5:
[000465ac] 70ff                      moveq.l    #-1,d0
[000465ae] 6000 0240                 bra        evkeybrd_3
evkeybrd_4:
[000465b2] 2254                      movea.l    (a4),a1
[000465b4] 43e9 02ce                 lea.l      718(a1),a1
[000465b8] 2054                      movea.l    (a4),a0
[000465ba] 41e8 0266                 lea.l      614(a0),a0
[000465be] 2c54                      movea.l    (a4),a6
[000465c0] 2c6e 02b6                 movea.l    694(a6),a6
[000465c4] 4e96                      jsr        (a6)
[000465c6] 2054                      movea.l    (a4),a0
[000465c8] 3028 02ce                 move.w     718(a0),d0
[000465cc] 6700 0220                 beq        evkeybrd_6
[000465d0] c07c 0c00                 and.w      #$0C00,d0
[000465d4] b07c 0c00                 cmp.w      #$0C00,d0
[000465d8] 6622                      bne.s      evkeybrd_7
[000465da] 1228 02cf                 move.b     719(a0),d1
[000465de] 4881                      ext.w      d1
[000465e0] 927c 0051                 sub.w      #$0051,d1
[000465e4] 6702                      beq.s      evkeybrd_8
[000465e6] 6014                      bra.s      evkeybrd_7
evkeybrd_8:
[000465e8] 3039 000d 3822            move.w     quote,d0
[000465ee] 660c                      bne.s      evkeybrd_7
[000465f0] 33fc 0001 000d 3822       move.w     #$0001,quote
[000465f8] 6000 01f4                 bra        evkeybrd_6
evkeybrd_7:
[000465fc] 3039 000d 37ba            move.w     hidepointer,d0
[00046602] 661c                      bne.s      evkeybrd_9
[00046604] 7208                      moveq.l    #8,d1
[00046606] 2054                      movea.l    (a4),a0
[00046608] 2268 023c                 movea.l    572(a0),a1
[0004660c] c269 000e                 and.w      14(a1),d1
[00046610] 670e                      beq.s      evkeybrd_9
[00046612] 33fc 0001 000d 37ba       move.w     #$0001,hidepointer
[0004661a] 4eb9 0004 9970            jsr        Amo_hide
evkeybrd_9:
[00046620] 3039 000d 3822            move.w     quote,d0
[00046626] 6600 0134                 bne        evkeybrd_10
[0004662a] 220d                      move.l     a5,d1
[0004662c] 6700 00da                 beq        evkeybrd_11
[00046630] 4eb9 0004 fbf8            jsr        Awi_modal
[00046636] 2008                      move.l     a0,d0
[00046638] 6618                      bne.s      evkeybrd_12
[0004663a] 2054                      movea.l    (a4),a0
[0004663c] 3228 02ce                 move.w     718(a0),d1
[00046640] 3028 0266                 move.w     614(a0),d0
[00046644] 204d                      movea.l    a5,a0
[00046646] 4eb9 0004 964e            jsr        Ame_key
[0004664c] 3600                      move.w     d0,d3
[0004664e] 6a00 019e                 bpl        evkeybrd_6
evkeybrd_12:
[00046652] 303c 0080                 move.w     #$0080,d0
[00046656] 2054                      movea.l    (a4),a0
[00046658] 2268 023c                 movea.l    572(a0),a1
[0004665c] c069 000e                 and.w      14(a1),d0
[00046660] 6754                      beq.s      evkeybrd_13
[00046662] 4eb9 0004 fbf8            jsr        Awi_modal
[00046668] 2008                      move.l     a0,d0
[0004666a] 6618                      bne.s      evkeybrd_14
[0004666c] 2054                      movea.l    (a4),a0
[0004666e] 3228 02ce                 move.w     718(a0),d1
[00046672] 3028 0266                 move.w     614(a0),d0
[00046676] 204a                      movea.l    a2,a0
[00046678] 4eb9 0004 964e            jsr        Ame_key
[0004667e] 3600                      move.w     d0,d3
[00046680] 6a00 016c                 bpl        evkeybrd_6
evkeybrd_14:
[00046684] 2054                      movea.l    (a4),a0
[00046686] 3228 02ce                 move.w     718(a0),d1
[0004668a] 3028 0266                 move.w     614(a0),d0
[0004668e] 204d                      movea.l    a5,a0
[00046690] 4eb9 0004 a734            jsr        Aob_tobkey
[00046696] 3600                      move.w     d0,d3
[00046698] 6a00 0154                 bpl        evkeybrd_6
[0004669c] 2054                      movea.l    (a4),a0
[0004669e] 3228 02ce                 move.w     718(a0),d1
[000466a2] 3028 0266                 move.w     614(a0),d0
[000466a6] 204d                      movea.l    a5,a0
[000466a8] 4eb9 0004 a79a            jsr        Aob_wobkey
[000466ae] 3600                      move.w     d0,d3
[000466b0] 6a00 013c                 bpl        evkeybrd_6
[000466b4] 6052                      bra.s      evkeybrd_11
evkeybrd_13:
[000466b6] 2054                      movea.l    (a4),a0
[000466b8] 3228 02ce                 move.w     718(a0),d1
[000466bc] 3028 0266                 move.w     614(a0),d0
[000466c0] 204d                      movea.l    a5,a0
[000466c2] 4eb9 0004 a734            jsr        Aob_tobkey
[000466c8] 3600                      move.w     d0,d3
[000466ca] 6a00 0122                 bpl        evkeybrd_6
[000466ce] 2054                      movea.l    (a4),a0
[000466d0] 3228 02ce                 move.w     718(a0),d1
[000466d4] 3028 0266                 move.w     614(a0),d0
[000466d8] 204d                      movea.l    a5,a0
[000466da] 4eb9 0004 a79a            jsr        Aob_wobkey
[000466e0] 3600                      move.w     d0,d3
[000466e2] 6a00 010a                 bpl        evkeybrd_6
[000466e6] 4eb9 0004 fbf8            jsr        Awi_modal
[000466ec] 2008                      move.l     a0,d0
[000466ee] 6618                      bne.s      evkeybrd_11
[000466f0] 2054                      movea.l    (a4),a0
[000466f2] 3228 02ce                 move.w     718(a0),d1
[000466f6] 3028 0266                 move.w     614(a0),d0
[000466fa] 204a                      movea.l    a2,a0
[000466fc] 4eb9 0004 964e            jsr        Ame_key
[00046702] 3600                      move.w     d0,d3
[00046704] 6a00 00e8                 bpl        evkeybrd_6
evkeybrd_11:
[00046708] 4eb9 0004 fbf8            jsr        Awi_modal
[0004670e] 2008                      move.l     a0,d0
[00046710] 664a                      bne.s      evkeybrd_10
[00046712] 200a                      move.l     a2,d0
[00046714] 6746                      beq.s      evkeybrd_10
[00046716] 2054                      movea.l    (a4),a0
[00046718] 3228 02ce                 move.w     718(a0),d1
[0004671c] 3028 0266                 move.w     614(a0),d0
[00046720] 204a                      movea.l    a2,a0
[00046722] 4eb9 0004 964e            jsr        Ame_key
[00046728] 3600                      move.w     d0,d3
[0004672a] 6a30                      bpl.s      evkeybrd_10
[0004672c] 2054                      movea.l    (a4),a0
[0004672e] 3228 02ce                 move.w     718(a0),d1
[00046732] 3028 0266                 move.w     614(a0),d0
[00046736] 204a                      movea.l    a2,a0
[00046738] 4eb9 0004 a734            jsr        Aob_tobkey
[0004673e] 3600                      move.w     d0,d3
[00046740] 6a00 00ac                 bpl        evkeybrd_6
[00046744] 2054                      movea.l    (a4),a0
[00046746] 3228 02ce                 move.w     718(a0),d1
[0004674a] 3028 0266                 move.w     614(a0),d0
[0004674e] 204a                      movea.l    a2,a0
[00046750] 4eb9 0004 a79a            jsr        Aob_wobkey
[00046756] 3600                      move.w     d0,d3
[00046758] 6a00 0094                 bpl        evkeybrd_6
evkeybrd_10:
[0004675c] 2254                      movea.l    (a4),a1
[0004675e] 43e9 02ce                 lea.l      718(a1),a1
[00046762] 2054                      movea.l    (a4),a0
[00046764] 41e8 0266                 lea.l      614(a0),a0
[00046768] 2454                      movea.l    (a4),a2
[0004676a] 246a 02c2                 movea.l    706(a2),a2
[0004676e] 4e92                      jsr        (a2)
[00046770] 2054                      movea.l    (a4),a0
[00046772] 3028 02ce                 move.w     718(a0),d0
[00046776] 6700 0076                 beq.w      evkeybrd_6
[0004677a] 220d                      move.l     a5,d1
[0004677c] 6710                      beq.s      evkeybrd_15
[0004677e] 3200                      move.w     d0,d1
[00046780] 3028 0266                 move.w     614(a0),d0
[00046784] 226d 0062                 movea.l    98(a5),a1
[00046788] 204d                      movea.l    a5,a0
[0004678a] 4e91                      jsr        (a1)
[0004678c] 3600                      move.w     d0,d3
evkeybrd_15:
[0004678e] b67c ffff                 cmp.w      #$FFFF,d3
[00046792] 6c54                      bge.s      evkeybrd_16
[00046794] 45f9 000d 99d6            lea.l      _globl,a2
[0004679a] 603e                      bra.s      evkeybrd_17
evkeybrd_18:
[0004679c] 7004                      moveq.l    #4,d0
[0004679e] c0ab 0002                 and.l      2(a3),d0
[000467a2] 6736                      beq.s      evkeybrd_17
[000467a4] 7201                      moveq.l    #1,d1
[000467a6] c26b 000c                 and.w      12(a3),d1
[000467aa] 672e                      beq.s      evkeybrd_17
[000467ac] 3ebc 4710                 move.w     #$4710,(a7)
[000467b0] 2054                      movea.l    (a4),a0
[000467b2] 3f50 0002                 move.w     (a0),2(a7)
[000467b6] 3f68 0266 0006            move.w     614(a0),6(a7)
[000467bc] 3028 02ce                 move.w     718(a0),d0
[000467c0] 4eb9 0004 1ec2            jsr        nkc_n2gem
[000467c6] 3f40 0008                 move.w     d0,8(a7)
[000467ca] 2252                      movea.l    (a2),a1
[000467cc] 41d7                      lea.l      (a7),a0
[000467ce] 7210                      moveq.l    #16,d1
[000467d0] 3013                      move.w     (a3),d0
[000467d2] 4eb9 0006 a818            jsr        mt_appl_write
[000467d8] 600e                      bra.s      evkeybrd_16
evkeybrd_17:
[000467da] 204b                      movea.l    a3,a0
[000467dc] 4eb9 0005 4250            jsr        Ash_nextdd
[000467e2] 2648                      movea.l    a0,a3
[000467e4] 200b                      move.l     a3,d0
[000467e6] 66b4                      bne.s      evkeybrd_18
evkeybrd_16:
[000467e8] 4279 000d 3822            clr.w      quote
evkeybrd_6:
[000467ee] 3003                      move.w     d3,d0
evkeybrd_3:
[000467f0] 4fef 0012                 lea.l      18(a7),a7
[000467f4] 4cdf 7c08                 movem.l    (a7)+,d3/a2-a6
[000467f8] 4e75                      rts

ev_dobutton:
[000467fa] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[000467fe] 514f                      subq.w     #8,a7
[00046800] 2648                      movea.l    a0,a3
[00046802] 2a49                      movea.l    a1,a5
[00046804] 3800                      move.w     d0,d4
[00046806] 3a01                      move.w     d1,d5
[00046808] 3f42 0006                 move.w     d2,6(a7)
[0004680c] 362f 0032                 move.w     50(a7),d3
[00046810] 3f7c ffff 0004            move.w     #$FFFF,4(a7)
[00046816] 3f01                      move.w     d1,-(a7)
[00046818] 2049                      movea.l    a1,a0
[0004681a] 4240                      clr.w      d0
[0004681c] 7208                      moveq.l    #8,d1
[0004681e] 3404                      move.w     d4,d2
[00046820] 4eb9 0004 5468            jsr        Adr_find
[00046826] 544f                      addq.w     #2,a7
[00046828] 3800                      move.w     d0,d4
[0004682a] 45f9 0010 1f12            lea.l      ACSblk,a2
[00046830] 4a44                      tst.w      d4
[00046832] 6b00 00dc                 bmi        ev_dobutton_1
[00046836] 4245                      clr.w      d5
[00046838] 3c05                      move.w     d5,d6
[0004683a] 3e04                      move.w     d4,d7
[0004683c] 600c                      bra.s      ev_dobutton_2
ev_dobutton_4:
[0004683e] 3007                      move.w     d7,d0
[00046840] 204d                      movea.l    a5,a0
[00046842] 4eb9 0004 af6c            jsr        Aob_up
[00046848] 3e00                      move.w     d0,d7
ev_dobutton_2:
[0004684a] 4a47                      tst.w      d7
[0004684c] 6b16                      bmi.s      ev_dobutton_3
[0004684e] 3207                      move.w     d7,d1
[00046850] 48c1                      ext.l      d1
[00046852] 2001                      move.l     d1,d0
[00046854] d080                      add.l      d0,d0
[00046856] d081                      add.l      d1,d0
[00046858] e788                      lsl.l      #3,d0
[0004685a] 3435 0808                 move.w     8(a5,d0.l),d2
[0004685e] c47c 2049                 and.w      #$2049,d2
[00046862] 67da                      beq.s      ev_dobutton_4
ev_dobutton_3:
[00046864] 4a47                      tst.w      d7
[00046866] 6b02                      bmi.s      ev_dobutton_5
[00046868] 3807                      move.w     d7,d4
ev_dobutton_5:
[0004686a] 3204                      move.w     d4,d1
[0004686c] 48c1                      ext.l      d1
[0004686e] 2001                      move.l     d1,d0
[00046870] d080                      add.l      d0,d0
[00046872] d081                      add.l      d1,d0
[00046874] e788                      lsl.l      #3,d0
[00046876] 49f5 0800                 lea.l      0(a5,d0.l),a4
[0004687a] 0c6f 0002 0006            cmpi.w     #$0002,6(a7)
[00046880] 6c00 0094                 bge        ev_dobutton_6
[00046884] 342c 0008                 move.w     8(a4),d2
[00046888] c47c 2049                 and.w      #$2049,d2
[0004688c] 6614                      bne.s      ev_dobutton_7
[0004688e] 2052                      movea.l    (a2),a0
[00046890] 3228 0264                 move.w     612(a0),d1
[00046894] 3028 0262                 move.w     610(a0),d0
[00046898] 4eb9 0004 4cd6            jsr        Adr_box
[0004689e] 6000 0070                 bra.w      ev_dobutton_1
ev_dobutton_7:
[000468a2] 302c 0008                 move.w     8(a4),d0
[000468a6] c07c 205d                 and.w      #$205D,d0
[000468aa] 5340                      subq.w     #1,d0
[000468ac] 671c                      beq.s      ev_dobutton_8
[000468ae] 322c 0008                 move.w     8(a4),d1
[000468b2] c27c 2000                 and.w      #$2000,d1
[000468b6] 6740                      beq.s      ev_dobutton_9
[000468b8] 7401                      moveq.l    #1,d2
[000468ba] c46c 000a                 and.w      10(a4),d2
[000468be] 6720                      beq.s      ev_dobutton_10
[000468c0] 7e03                      moveq.l    #3,d7
[000468c2] 2052                      movea.l    (a2),a0
[000468c4] ce68 0266                 and.w      614(a0),d7
[000468c8] 6704                      beq.s      ev_dobutton_11
ev_dobutton_8:
[000468ca] 7a01                      moveq.l    #1,d5
[000468cc] 6048                      bra.s      ev_dobutton_6
ev_dobutton_11:
[000468ce] 2052                      movea.l    (a2),a0
[000468d0] 3228 0264                 move.w     612(a0),d1
[000468d4] 3028 0262                 move.w     610(a0),d0
[000468d8] 4eb9 0004 557a            jsr        Adr_drag
[000468de] 6030                      bra.s      ev_dobutton_1
ev_dobutton_10:
[000468e0] 7003                      moveq.l    #3,d0
[000468e2] 2052                      movea.l    (a2),a0
[000468e4] c068 0266                 and.w      614(a0),d0
[000468e8] 6706                      beq.s      ev_dobutton_12
[000468ea] 7a01                      moveq.l    #1,d5
[000468ec] 3c05                      move.w     d5,d6
[000468ee] 6026                      bra.s      ev_dobutton_6
ev_dobutton_12:
[000468f0] 4eb9 0004 4a26            jsr        Adr_unselect
[000468f6] 601e                      bra.s      ev_dobutton_6
ev_dobutton_9:
[000468f8] 7004                      moveq.l    #4,d0
[000468fa] c06c 0008                 and.w      8(a4),d0
[000468fe] 6716                      beq.s      ev_dobutton_6
[00046900] 3003                      move.w     d3,d0
[00046902] 8044                      or.w       d4,d0
[00046904] 204b                      movea.l    a3,a0
[00046906] 4eb9 0004 ab5e            jsr        Aob_watch
[0004690c] 4a40                      tst.w      d0
[0004690e] 6606                      bne.s      ev_dobutton_6
ev_dobutton_1:
[00046910] 70ff                      moveq.l    #-1,d0
[00046912] 6000 008c                 bra        ev_dobutton_13
ev_dobutton_6:
[00046916] 0c6f 0002 0006            cmpi.w     #$0002,6(a7)
[0004691c] 6d04                      blt.s      ev_dobutton_14
[0004691e] 7201                      moveq.l    #1,d1
[00046920] 6002                      bra.s      ev_dobutton_15
ev_dobutton_14:
[00046922] 4241                      clr.w      d1
ev_dobutton_15:
[00046924] 3004                      move.w     d4,d0
[00046926] 224d                      movea.l    a5,a1
[00046928] 204b                      movea.l    a3,a0
[0004692a] 4eb9 0004 a962            jsr        Aob_select
[00046930] 4a40                      tst.w      d0
[00046932] 6708                      beq.s      ev_dobutton_16
[00046934] 3003                      move.w     d3,d0
[00046936] 8044                      or.w       d4,d0
[00046938] 3f40 0004                 move.w     d0,4(a7)
ev_dobutton_16:
[0004693c] 4a45                      tst.w      d5
[0004693e] 675c                      beq.s      ev_dobutton_17
[00046940] 7602                      moveq.l    #2,d3
ev_dobutton_19:
[00046942] 49ef 0002                 lea.l      2(a7),a4
[00046946] 47f9 000d 99d6            lea.l      _globl,a3
[0004694c] 5343                      subq.w     #1,d3
[0004694e] 2053                      movea.l    (a3),a0
[00046950] 700a                      moveq.l    #10,d0
[00046952] 4eb9 0006 af04            jsr        mt_evnt_timer
[00046958] 2f13                      move.l     (a3),-(a7)
[0004695a] 4854                      pea.l      (a4)
[0004695c] 486f 0008                 pea.l      8(a7)
[00046960] 224c                      movea.l    a4,a1
[00046962] 204c                      movea.l    a4,a0
[00046964] 4eb9 0006 c978            jsr        mt_graf_mkstate
[0004696a] 4fef 000c                 lea.l      12(a7),a7
[0004696e] 3017                      move.w     (a7),d0
[00046970] 322f 0030                 move.w     48(a7),d1
[00046974] b340                      eor.w      d1,d0
[00046976] c07c 0001                 and.w      #$0001,d0
[0004697a] 6608                      bne.s      ev_dobutton_18
[0004697c] 4a43                      tst.w      d3
[0004697e] 6ec2                      bgt.s      ev_dobutton_19
[00046980] 4a46                      tst.w      d6
[00046982] 67be                      beq.s      ev_dobutton_19
ev_dobutton_18:
[00046984] 4a46                      tst.w      d6
[00046986] 6714                      beq.s      ev_dobutton_17
[00046988] 4a43                      tst.w      d3
[0004698a] 6e10                      bgt.s      ev_dobutton_17
[0004698c] 2052                      movea.l    (a2),a0
[0004698e] 3228 0264                 move.w     612(a0),d1
[00046992] 3028 0262                 move.w     610(a0),d0
[00046996] 4eb9 0004 557a            jsr        Adr_drag
ev_dobutton_17:
[0004699c] 302f 0004                 move.w     4(a7),d0
ev_dobutton_13:
[000469a0] 504f                      addq.w     #8,a7
[000469a2] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[000469a6] 4e75                      rts

evmwheel:
[000469a8] 48e7 1c30                 movem.l    d3-d5/a2-a3,-(a7)
[000469ac] 2648                      movea.l    a0,a3
[000469ae] 3800                      move.w     d0,d4
[000469b0] 3601                      move.w     d1,d3
[000469b2] 2079 000d 99d6            movea.l    _globl,a0
[000469b8] 4eb9 0006 d54c            jsr        mt_wind_find
[000469be] 3a00                      move.w     d0,d5
[000469c0] 4a40                      tst.w      d0
[000469c2] 6b0a                      bmi.s      evmwheel_1
[000469c4] 4eb9 0004 e5ea            jsr        Awi_wid
[000469ca] 2448                      movea.l    a0,a2
[000469cc] 6008                      bra.s      evmwheel_2
evmwheel_1:
[000469ce] 4eb9 0004 e46a            jsr        Awi_ontop
[000469d4] 2448                      movea.l    a0,a2
evmwheel_2:
[000469d6] 200a                      move.l     a2,d0
[000469d8] 6710                      beq.s      evmwheel_3
[000469da] 3203                      move.w     d3,d1
[000469dc] 224b                      movea.l    a3,a1
[000469de] 204a                      movea.l    a2,a0
[000469e0] 3004                      move.w     d4,d0
[000469e2] 4eb9 0004 bfc0            jsr        Awi_wheeled
[000469e8] 6002                      bra.s      evmwheel_4
evmwheel_3:
[000469ea] 4240                      clr.w      d0
evmwheel_4:
[000469ec] 4cdf 0c38                 movem.l    (a7)+,d3-d5/a2-a3
[000469f0] 4e75                      rts

evbutton:
[000469f2] 48e7 1f38                 movem.l    d3-d7/a2-a4,-(a7)
[000469f6] 514f                      subq.w     #8,a7
[000469f8] 3f40 0006                 move.w     d0,6(a7)
[000469fc] 3f41 0004                 move.w     d1,4(a7)
[00046a00] 4243                      clr.w      d3
[00046a02] 6100 f9f0                 bsr        Aev_unhidepointer
[00046a06] 45f9 0010 1f12            lea.l      ACSblk,a2
[00046a0c] 43ef 0004                 lea.l      4(a7),a1
[00046a10] 41ef 0006                 lea.l      6(a7),a0
[00046a14] 2652                      movea.l    (a2),a3
[00046a16] 266b 02ba                 movea.l    698(a3),a3
[00046a1a] 4e93                      jsr        (a3)
[00046a1c] 2079 000d 99d6            movea.l    _globl,a0
[00046a22] 2252                      movea.l    (a2),a1
[00046a24] 3229 0264                 move.w     612(a1),d1
[00046a28] 3029 0262                 move.w     610(a1),d0
[00046a2c] 4eb9 0006 d54c            jsr        mt_wind_find
[00046a32] 3800                      move.w     d0,d4
[00046a34] 4eb9 0004 e5ea            jsr        Awi_wid
[00046a3a] 2648                      movea.l    a0,a3
[00046a3c] 200b                      move.l     a3,d0
[00046a3e] 6714                      beq.s      evbutton_1
[00046a40] 4eb9 0004 fbf8            jsr        Awi_modal
[00046a46] 2008                      move.l     a0,d0
[00046a48] 6710                      beq.s      evbutton_2
[00046a4a] b7c0                      cmpa.l     d0,a3
[00046a4c] 670c                      beq.s      evbutton_2
[00046a4e] 4eb9 0004 fc1a            jsr        Awi_up_modal
evbutton_1:
[00046a54] 70ff                      moveq.l    #-1,d0
[00046a56] 6000 0190                 bra        evbutton_3
evbutton_2:
[00046a5a] 2052                      movea.l    (a2),a0
[00046a5c] 3a28 0264                 move.w     612(a0),d5
[00046a60] 9a6b 0036                 sub.w      54(a3),d5
[00046a64] 3c28 0262                 move.w     610(a0),d6
[00046a68] 9c6b 0034                 sub.w      52(a3),d6
[00046a6c] 7002                      moveq.l    #2,d0
[00046a6e] c06f 0006                 and.w      6(a7),d0
[00046a72] 6700 00e6                 beq        evbutton_4
[00046a76] 49ef 0002                 lea.l      2(a7),a4
[00046a7a] 2f39 000d 99d6            move.l     _globl,-(a7)
[00046a80] 4854                      pea.l      (a4)
[00046a82] 486f 0008                 pea.l      8(a7)
[00046a86] 224c                      movea.l    a4,a1
[00046a88] 204c                      movea.l    a4,a0
[00046a8a] 4eb9 0006 c978            jsr        mt_graf_mkstate
[00046a90] 4fef 000c                 lea.l      12(a7),a7
[00046a94] 7002                      moveq.l    #2,d0
[00046a96] c057                      and.w      (a7),d0
[00046a98] 6744                      beq.s      evbutton_5
[00046a9a] 2f39 000d 99d6            move.l     _globl,-(a7)
[00046aa0] 4854                      pea.l      (a4)
[00046aa2] 4854                      pea.l      (a4)
[00046aa4] 4854                      pea.l      (a4)
[00046aa6] 486f 0010                 pea.l      16(a7)
[00046aaa] 4854                      pea.l      (a4)
[00046aac] 4878 00fa                 pea.l      ($000000FA).w
[00046ab0] 4267                      clr.w      -(a7)
[00046ab2] 4267                      clr.w      -(a7)
[00046ab4] 4267                      clr.w      -(a7)
[00046ab6] 4267                      clr.w      -(a7)
[00046ab8] 4267                      clr.w      -(a7)
[00046aba] 4267                      clr.w      -(a7)
[00046abc] 4267                      clr.w      -(a7)
[00046abe] 4267                      clr.w      -(a7)
[00046ac0] 4267                      clr.w      -(a7)
[00046ac2] 4267                      clr.w      -(a7)
[00046ac4] 4267                      clr.w      -(a7)
[00046ac6] 224c                      movea.l    a4,a1
[00046ac8] 91c8                      suba.l     a0,a0
[00046aca] 7402                      moveq.l    #2,d2
[00046acc] 4241                      clr.w      d1
[00046ace] 7022                      moveq.l    #34,d0
[00046ad0] 4eb9 0006 af70            jsr        mt_evnt_multi
[00046ad6] 4fef 0032                 lea.l      50(a7),a7
[00046ada] 3e00                      move.w     d0,d7
[00046adc] 6002                      bra.s      evbutton_6
evbutton_5:
[00046ade] 7e02                      moveq.l    #2,d7
evbutton_6:
[00046ae0] 7002                      moveq.l    #2,d0
[00046ae2] c047                      and.w      d7,d0
[00046ae4] 6716                      beq.s      evbutton_7
[00046ae6] 2052                      movea.l    (a2),a0
[00046ae8] 3228 0264                 move.w     612(a0),d1
[00046aec] 3028 0262                 move.w     610(a0),d0
[00046af0] 204b                      movea.l    a3,a0
[00046af2] 4eb9 0005 20dc            jsr        Awi_bubblegem
[00046af8] 3600                      move.w     d0,d3
[00046afa] 601a                      bra.s      evbutton_8
evbutton_7:
[00046afc] 7020                      moveq.l    #32,d0
[00046afe] c047                      and.w      d7,d0
[00046b00] 6714                      beq.s      evbutton_8
[00046b02] 2052                      movea.l    (a2),a0
[00046b04] 3228 0264                 move.w     612(a0),d1
[00046b08] 3028 0262                 move.w     610(a0),d0
[00046b0c] 204b                      movea.l    a3,a0
[00046b0e] 4eb9 0005 2126            jsr        Awi_context
[00046b14] 3600                      move.w     d0,d3
evbutton_8:
[00046b16] 4a43                      tst.w      d3
[00046b18] 6600 00cc                 bne        evbutton_9
[00046b1c] 7002                      moveq.l    #2,d0
[00046b1e] c047                      and.w      d7,d0
[00046b20] 6718                      beq.s      evbutton_10
[00046b22] 2052                      movea.l    (a2),a0
[00046b24] 3228 0264                 move.w     612(a0),d1
[00046b28] 3028 0262                 move.w     610(a0),d0
[00046b2c] 204b                      movea.l    a3,a0
[00046b2e] 4eb9 0005 2126            jsr        Awi_context
[00046b34] 3600                      move.w     d0,d3
[00046b36] 6000 00ae                 bra        evbutton_9
evbutton_10:
[00046b3a] 7020                      moveq.l    #32,d0
[00046b3c] c047                      and.w      d7,d0
[00046b3e] 6700 00a6                 beq        evbutton_9
[00046b42] 2052                      movea.l    (a2),a0
[00046b44] 3228 0264                 move.w     612(a0),d1
[00046b48] 3028 0262                 move.w     610(a0),d0
[00046b4c] 204b                      movea.l    a3,a0
[00046b4e] 4eb9 0005 20dc            jsr        Awi_bubblegem
[00046b54] 3600                      move.w     d0,d3
[00046b56] 6000 008e                 bra        evbutton_9
evbutton_4:
[00046b5a] 4a45                      tst.w      d5
[00046b5c] 6a50                      bpl.s      evbutton_11
[00046b5e] 286b 0018                 movea.l    24(a3),a4
[00046b62] 200c                      move.l     a4,d0
[00046b64] 6722                      beq.s      evbutton_12
[00046b66] ba6c 0012                 cmp.w      18(a4),d5
[00046b6a] 6d1c                      blt.s      evbutton_12
[00046b6c] 3f3c 1000                 move.w     #$1000,-(a7)
[00046b70] 3f2f 0008                 move.w     8(a7),-(a7)
[00046b74] 342f 0008                 move.w     8(a7),d2
[00046b78] 3205                      move.w     d5,d1
[00046b7a] 224c                      movea.l    a4,a1
[00046b7c] 204b                      movea.l    a3,a0
[00046b7e] 3006                      move.w     d6,d0
[00046b80] 6100 fc78                 bsr        ev_dobutton
[00046b84] 584f                      addq.w     #4,a7
[00046b86] 6060                      bra.s      evbutton_3
evbutton_12:
[00046b88] 7001                      moveq.l    #1,d0
[00046b8a] 2052                      movea.l    (a2),a0
[00046b8c] 2268 023c                 movea.l    572(a0),a1
[00046b90] c069 000e                 and.w      14(a1),d0
[00046b94] 6714                      beq.s      evbutton_13
[00046b96] 4a44                      tst.w      d4
[00046b98] 6710                      beq.s      evbutton_13
[00046b9a] 3228 0264                 move.w     612(a0),d1
[00046b9e] 3028 0262                 move.w     610(a0),d0
[00046ba2] 204b                      movea.l    a3,a0
[00046ba4] 4eb9 0004 95cc            jsr        Ame_drop
evbutton_13:
[00046baa] 76ff                      moveq.l    #-1,d3
[00046bac] 6038                      bra.s      evbutton_9
evbutton_11:
[00046bae] 2052                      movea.l    (a2),a0
[00046bb0] 3228 0264                 move.w     612(a0),d1
[00046bb4] 3028 0262                 move.w     610(a0),d0
[00046bb8] 41eb 0034                 lea.l      52(a3),a0
[00046bbc] 4eb9 0005 ef64            jsr        Aob_within
[00046bc2] 4a40                      tst.w      d0
[00046bc4] 6720                      beq.s      evbutton_9
[00046bc6] 202b 0014                 move.l     20(a3),d0
[00046bca] 671a                      beq.s      evbutton_9
[00046bcc] 4267                      clr.w      -(a7)
[00046bce] 3f2f 0008                 move.w     8(a7),-(a7)
[00046bd2] 342f 0008                 move.w     8(a7),d2
[00046bd6] 3205                      move.w     d5,d1
[00046bd8] 2240                      movea.l    d0,a1
[00046bda] 204b                      movea.l    a3,a0
[00046bdc] 3006                      move.w     d6,d0
[00046bde] 6100 fc1a                 bsr        ev_dobutton
[00046be2] 584f                      addq.w     #4,a7
[00046be4] 3600                      move.w     d0,d3
evbutton_9:
[00046be6] 3003                      move.w     d3,d0
evbutton_3:
[00046be8] 504f                      addq.w     #8,a7
[00046bea] 4cdf 1cf8                 movem.l    (a7)+,d3-d7/a2-a4
[00046bee] 4e75                      rts

evmouse:
[00046bf0] 48e7 1c38                 movem.l    d3-d5/a2-a4,-(a7)
[00046bf4] 554f                      subq.w     #2,a7
[00046bf6] 45f9 0010 1f12            lea.l      ACSblk,a2
[00046bfc] 2052                      movea.l    (a2),a0
[00046bfe] 2068 02be                 movea.l    702(a0),a0
[00046c02] 4e90                      jsr        (a0)
[00046c04] 42a7                      clr.l      -(a7)
[00046c06] 42a7                      clr.l      -(a7)
[00046c08] 42a7                      clr.l      -(a7)
[00046c0a] 486f 000c                 pea.l      12(a7)
[00046c0e] 720a                      moveq.l    #10,d1
[00046c10] 4240                      clr.w      d0
[00046c12] 4eb9 0007 14ea            jsr        wind_get
[00046c18] 4fef 0010                 lea.l      16(a7),a7
[00046c1c] 3017                      move.w     (a7),d0
[00046c1e] 4eb9 0004 e5ea            jsr        Awi_wid
[00046c24] 2648                      movea.l    a0,a3
[00046c26] 200b                      move.l     a3,d0
[00046c28] 6700 013e                 beq        evmouse_1
[00046c2c] 4eb9 0004 fbf8            jsr        Awi_modal
[00046c32] 2008                      move.l     a0,d0
[00046c34] 670e                      beq.s      evmouse_2
[00046c36] b7c0                      cmpa.l     d0,a3
[00046c38] 670a                      beq.s      evmouse_2
[00046c3a] 4eb9 0004 fc1a            jsr        Awi_up_modal
[00046c40] 6000 0126                 bra        evmouse_1
evmouse_2:
[00046c44] 204b                      movea.l    a3,a0
[00046c46] 4eb9 0005 16da            jsr        Awi_shadow
[00046c4c] 4a40                      tst.w      d0
[00046c4e] 6714                      beq.s      evmouse_3
[00046c50] 2052                      movea.l    (a2),a0
[00046c52] 2068 023c                 movea.l    572(a0),a0
[00046c56] 41e8 0038                 lea.l      56(a0),a0
[00046c5a] 4eb9 0004 9898            jsr        Amo_new
[00046c60] 6000 0106                 bra        evmouse_1
evmouse_3:
[00046c64] 2052                      movea.l    (a2),a0
[00046c66] 3228 0264                 move.w     612(a0),d1
[00046c6a] 3028 0262                 move.w     610(a0),d0
[00046c6e] 41eb 0034                 lea.l      52(a3),a0
[00046c72] 4eb9 0005 ef64            jsr        Aob_within
[00046c78] 4a40                      tst.w      d0
[00046c7a] 6700 00be                 beq        evmouse_4
[00046c7e] 286b 0014                 movea.l    20(a3),a4
[00046c82] 200c                      move.l     a4,d0
[00046c84] 6700 00a6                 beq        evmouse_5
[00046c88] 2052                      movea.l    (a2),a0
[00046c8a] 3628 0262                 move.w     610(a0),d3
[00046c8e] 966b 0034                 sub.w      52(a3),d3
[00046c92] 3a28 0264                 move.w     612(a0),d5
[00046c96] 9a6b 0036                 sub.w      54(a3),d5
[00046c9a] 4244                      clr.w      d4
[00046c9c] 3f05                      move.w     d5,-(a7)
[00046c9e] 3403                      move.w     d3,d2
[00046ca0] 7208                      moveq.l    #8,d1
[00046ca2] 204c                      movea.l    a4,a0
[00046ca4] 3004                      move.w     d4,d0
[00046ca6] 4eb9 0004 5468            jsr        Adr_find
[00046cac] 544f                      addq.w     #2,a7
[00046cae] 3a00                      move.w     d0,d5
[00046cb0] 6056                      bra.s      evmouse_6
evmouse_10:
[00046cb2] 7008                      moveq.l    #8,d0
[00046cb4] 3405                      move.w     d5,d2
[00046cb6] 48c2                      ext.l      d2
[00046cb8] 2202                      move.l     d2,d1
[00046cba] d281                      add.l      d1,d1
[00046cbc] d282                      add.l      d2,d1
[00046cbe] e789                      lsl.l      #3,d1
[00046cc0] c074 1808                 and.w      8(a4,d1.l),d0
[00046cc4] 670c                      beq.s      evmouse_7
[00046cc6] 363c 0080                 move.w     #$0080,d3
[00046cca] c674 1808                 and.w      8(a4,d1.l),d3
[00046cce] 6602                      bne.s      evmouse_7
[00046cd0] 7804                      moveq.l    #4,d4
evmouse_7:
[00046cd2] 7020                      moveq.l    #32,d0
[00046cd4] 3405                      move.w     d5,d2
[00046cd6] 48c2                      ext.l      d2
[00046cd8] 2202                      move.l     d2,d1
[00046cda] d281                      add.l      d1,d1
[00046cdc] d282                      add.l      d2,d1
[00046cde] e789                      lsl.l      #3,d1
[00046ce0] c074 1808                 and.w      8(a4,d1.l),d0
[00046ce4] 6616                      bne.s      evmouse_8
[00046ce6] 3634 1820                 move.w     32(a4,d1.l),d3
[00046cea] c67c 8000                 and.w      #$8000,d3
[00046cee] 670c                      beq.s      evmouse_8
[00046cf0] 701f                      moveq.l    #31,d0
[00046cf2] c074 182c                 and.w      44(a4,d1.l),d0
[00046cf6] 4a40                      tst.w      d0
[00046cf8] 6f02                      ble.s      evmouse_8
[00046cfa] 3800                      move.w     d0,d4
evmouse_8:
[00046cfc] 3005                      move.w     d5,d0
[00046cfe] 204c                      movea.l    a4,a0
[00046d00] 4eb9 0004 af6c            jsr        Aob_up
[00046d06] 3a00                      move.w     d0,d5
evmouse_6:
[00046d08] 4a45                      tst.w      d5
[00046d0a] 6b04                      bmi.s      evmouse_9
[00046d0c] 4a44                      tst.w      d4
[00046d0e] 6fa2                      ble.s      evmouse_10
evmouse_9:
[00046d10] 3204                      move.w     d4,d1
[00046d12] 48c1                      ext.l      d1
[00046d14] 2001                      move.l     d1,d0
[00046d16] d080                      add.l      d0,d0
[00046d18] d081                      add.l      d1,d0
[00046d1a] d080                      add.l      d0,d0
[00046d1c] 2052                      movea.l    (a2),a0
[00046d1e] 2068 023c                 movea.l    572(a0),a0
[00046d22] 41f0 0838                 lea.l      56(a0,d0.l),a0
[00046d26] 4eb9 0004 9898            jsr        Amo_new
evmouse_5:
[00046d2c] 93c9                      suba.l     a1,a1
[00046d2e] 7004                      moveq.l    #4,d0
[00046d30] 204b                      movea.l    a3,a0
[00046d32] 286b 0004                 movea.l    4(a3),a4
[00046d36] 4e94                      jsr        (a4)
[00046d38] 602e                      bra.s      evmouse_1
evmouse_4:
[00046d3a] 6100 f6b8                 bsr        Aev_unhidepointer
[00046d3e] 4eb9 0004 98d8            jsr        Amo_point
[00046d44] 7001                      moveq.l    #1,d0
[00046d46] 2052                      movea.l    (a2),a0
[00046d48] 2268 023c                 movea.l    572(a0),a1
[00046d4c] c069 000e                 and.w      14(a1),d0
[00046d50] 6616                      bne.s      evmouse_1
[00046d52] 222b 005e                 move.l     94(a3),d1
[00046d56] 6710                      beq.s      evmouse_1
[00046d58] 3228 0264                 move.w     612(a0),d1
[00046d5c] 3028 0262                 move.w     610(a0),d0
[00046d60] 204b                      movea.l    a3,a0
[00046d62] 4eb9 0004 95cc            jsr        Ame_drop
evmouse_1:
[00046d68] 544f                      addq.w     #2,a7
[00046d6a] 4cdf 1c38                 movem.l    (a7)+,d3-d5/a2-a4
[00046d6e] 4e75                      rts

Aev_mess:
[00046d70] 2f03                      move.l     d3,-(a7)
[00046d72] 2f0a                      move.l     a2,-(a7)
[00046d74] 4fef ffee                 lea.l      -18(a7),a7
[00046d78] 4eb9 0004 e608            jsr        Awi_root
[00046d7e] 2008                      move.l     a0,d0
[00046d80] 6700 008c                 beq        Aev_mess_1
[00046d84] 2079 0010 1f12            movea.l    ACSblk,a0
[00046d8a] 3028 027e                 move.w     638(a0),d0
[00046d8e] 6600 007e                 bne.w      Aev_mess_1
Aev_mess_4:
[00046d92] 45ef 0010                 lea.l      16(a7),a2
[00046d96] 7604                      moveq.l    #4,d3
[00046d98] 605c                      bra.s      Aev_mess_2
Aev_mess_6:
[00046d9a] 2f39 000d 99d6            move.l     _globl,-(a7)
[00046da0] 4852                      pea.l      (a2)
[00046da2] 4852                      pea.l      (a2)
[00046da4] 4852                      pea.l      (a2)
[00046da6] 4852                      pea.l      (a2)
[00046da8] 4852                      pea.l      (a2)
[00046daa] 7014                      moveq.l    #20,d0
[00046dac] 2f00                      move.l     d0,-(a7)
[00046dae] 4267                      clr.w      -(a7)
[00046db0] 4267                      clr.w      -(a7)
[00046db2] 4267                      clr.w      -(a7)
[00046db4] 4267                      clr.w      -(a7)
[00046db6] 4267                      clr.w      -(a7)
[00046db8] 4267                      clr.w      -(a7)
[00046dba] 4267                      clr.w      -(a7)
[00046dbc] 4267                      clr.w      -(a7)
[00046dbe] 4267                      clr.w      -(a7)
[00046dc0] 4267                      clr.w      -(a7)
[00046dc2] 4267                      clr.w      -(a7)
[00046dc4] 224a                      movea.l    a2,a1
[00046dc6] 41ef 0032                 lea.l      50(a7),a0
[00046dca] 4242                      clr.w      d2
[00046dcc] 4241                      clr.w      d1
[00046dce] 7030                      moveq.l    #48,d0
[00046dd0] 4eb9 0006 af70            jsr        mt_evnt_multi
[00046dd6] 4fef 0032                 lea.l      50(a7),a7
[00046dda] c07c 0010                 and.w      #$0010,d0
[00046dde] 6720                      beq.s      Aev_mess_3
[00046de0] 7020                      moveq.l    #32,d0
[00046de2] 4eb9 0005 1e1c            jsr        Awi_update
[00046de8] 41d7                      lea.l      (a7),a0
[00046dea] 4eb9 0005 3ade            jsr        Aev_message
[00046df0] 4a40                      tst.w      d0
[00046df2] 669e                      bne.s      Aev_mess_4
[00046df4] 5343                      subq.w     #1,d3
Aev_mess_2:
[00046df6] 7010                      moveq.l    #16,d0
[00046df8] 4eb9 0005 1e1c            jsr        Awi_update
[00046dfe] 6002                      bra.s      Aev_mess_5
Aev_mess_3:
[00046e00] 5343                      subq.w     #1,d3
Aev_mess_5:
[00046e02] 4a43                      tst.w      d3
[00046e04] 6e94                      bgt.s      Aev_mess_6
[00046e06] 7020                      moveq.l    #32,d0
[00046e08] 4eb9 0005 1e1c            jsr        Awi_update
Aev_mess_1:
[00046e0e] 4fef 0012                 lea.l      18(a7),a7
[00046e12] 245f                      movea.l    (a7)+,a2
[00046e14] 261f                      move.l     (a7)+,d3
[00046e16] 4e75                      rts

ACSeventhandler:
[00046e18] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[00046e1c] 4fef ffd0                 lea.l      -48(a7),a7
[00046e20] 4eb9 0004 e608            jsr        Awi_root
[00046e26] 2448                      movea.l    a0,a2
[00046e28] 2f39 000d 99d6            move.l     _globl,-(a7)
[00046e2e] 486f 000a                 pea.l      10(a7)
[00046e32] 486f 000c                 pea.l      12(a7)
[00046e36] 43ef 000e                 lea.l      14(a7),a1
[00046e3a] 41ef 000c                 lea.l      12(a7),a0
[00046e3e] 7008                      moveq.l    #8,d0
[00046e40] 4eb9 0006 aad2            jsr        mt_appl_getinfo
[00046e46] 4fef 000c                 lea.l      12(a7),a7
[00046e4a] 4a40                      tst.w      d0
[00046e4c] 670e                      beq.s      ACSeventhandler_1
[00046e4e] 302f 0004                 move.w     4(a7),d0
[00046e52] 6704                      beq.s      ACSeventhandler_2
[00046e54] 7601                      moveq.l    #1,d3
[00046e56] 6002                      bra.s      ACSeventhandler_3
ACSeventhandler_2:
[00046e58] 4243                      clr.w      d3
ACSeventhandler_3:
[00046e5a] 6002                      bra.s      ACSeventhandler_4
ACSeventhandler_1:
[00046e5c] 4243                      clr.w      d3
ACSeventhandler_4:
[00046e5e] 7220                      moveq.l    #32,d1
[00046e60] 4240                      clr.w      d0
[00046e62] 41d7                      lea.l      (a7),a0
[00046e64] 4eb9 0007 712e            jsr        memset
[00046e6a] 4bf9 0010 1f12            lea.l      ACSblk,a5
[00046e70] 4240                      clr.w      d0
[00046e72] 2055                      movea.l    (a5),a0
[00046e74] 3140 0264                 move.w     d0,612(a0)
[00046e78] 2055                      movea.l    (a5),a0
[00046e7a] 3140 0262                 move.w     d0,610(a0)
[00046e7e] 266a 005e                 movea.l    94(a2),a3
[00046e82] 220b                      move.l     a3,d1
[00046e84] 671e                      beq.s      ACSeventhandler_5
[00046e86] 6014                      bra.s      ACSeventhandler_6
ACSeventhandler_8:
[00046e88] 302b 0008                 move.w     8(a3),d0
[00046e8c] c07c 8000                 and.w      #$8000,d0
[00046e90] 6706                      beq.s      ACSeventhandler_7
[00046e92] 376b 000a 0016            move.w     10(a3),22(a3)
ACSeventhandler_7:
[00046e98] 47eb 0018                 lea.l      24(a3),a3
ACSeventhandler_6:
[00046e9c] 7020                      moveq.l    #32,d0
[00046e9e] c06b 0008                 and.w      8(a3),d0
[00046ea2] 67e4                      beq.s      ACSeventhandler_8
ACSeventhandler_5:
[00046ea4] 4240                      clr.w      d0
[00046ea6] 33c0 000d 37b8            move.w     d0,exitapp
[00046eac] 2055                      movea.l    (a5),a0
[00046eae] 3140 023a                 move.w     d0,570(a0)
[00046eb2] 266a 005e                 movea.l    94(a2),a3
[00046eb6] 220b                      move.l     a3,d1
[00046eb8] 671e                      beq.s      ACSeventhandler_9
[00046eba] 6014                      bra.s      ACSeventhandler_10
ACSeventhandler_12:
[00046ebc] 302b 0008                 move.w     8(a3),d0
[00046ec0] c07c 8000                 and.w      #$8000,d0
[00046ec4] 6706                      beq.s      ACSeventhandler_11
[00046ec6] 376b 0016 000a            move.w     22(a3),10(a3)
ACSeventhandler_11:
[00046ecc] 47eb 0018                 lea.l      24(a3),a3
ACSeventhandler_10:
[00046ed0] 7020                      moveq.l    #32,d0
[00046ed2] c06b 0008                 and.w      8(a3),d0
[00046ed6] 67e4                      beq.s      ACSeventhandler_12
ACSeventhandler_9:
[00046ed8] 4a43                      tst.w      d3
[00046eda] 670c                      beq.s      ACSeventhandler_13
[00046edc] 383c 0080                 move.w     #$0080,d4
[00046ee0] 2055                      movea.l    (a5),a0
[00046ee2] 8868 02c6                 or.w       710(a0),d4
[00046ee6] 6006                      bra.s      ACSeventhandler_14
ACSeventhandler_13:
[00046ee8] 2055                      movea.l    (a5),a0
[00046eea] 3828 02c6                 move.w     710(a0),d4
ACSeventhandler_14:
[00046eee] 2f39 000d 99d6            move.l     _globl,-(a7)
[00046ef4] 486f 0004                 pea.l      4(a7)
[00046ef8] 2055                      movea.l    (a5),a0
[00046efa] 4868 02cc                 pea.l      716(a0)
[00046efe] 4868 02ce                 pea.l      718(a0)
[00046f02] 4868 0266                 pea.l      614(a0)
[00046f06] 4868 02ca                 pea.l      714(a0)
[00046f0a] 4868 0264                 pea.l      612(a0)
[00046f0e] 2028 0232                 move.l     562(a0),d0
[00046f12] 7210                      moveq.l    #16,d1
[00046f14] e2a0                      asr.l      d1,d0
[00046f16] 7400                      moveq.l    #0,d2
[00046f18] 3400                      move.w     d0,d2
[00046f1a] e3aa                      lsl.l      d1,d2
[00046f1c] 7000                      moveq.l    #0,d0
[00046f1e] 3028 0234                 move.w     564(a0),d0
[00046f22] 8480                      or.l       d0,d2
[00046f24] 2f02                      move.l     d2,-(a7)
[00046f26] 4267                      clr.w      -(a7)
[00046f28] 4267                      clr.w      -(a7)
[00046f2a] 4267                      clr.w      -(a7)
[00046f2c] 4267                      clr.w      -(a7)
[00046f2e] 4267                      clr.w      -(a7)
[00046f30] 7401                      moveq.l    #1,d2
[00046f32] 3f02                      move.w     d2,-(a7)
[00046f34] 3f02                      move.w     d2,-(a7)
[00046f36] 3f28 0264                 move.w     612(a0),-(a7)
[00046f3a] 3f28 0262                 move.w     610(a0),-(a7)
[00046f3e] 3f02                      move.w     d2,-(a7)
[00046f40] 3f28 02c8                 move.w     712(a0),-(a7)
[00046f44] 2248                      movea.l    a0,a1
[00046f46] 43e9 0262                 lea.l      610(a1),a1
[00046f4a] 41ef 0056                 lea.l      86(a7),a0
[00046f4e] 2855                      movea.l    (a5),a4
[00046f50] 322c 02d0                 move.w     720(a4),d1
[00046f54] 7037                      moveq.l    #55,d0
[00046f56] 3404                      move.w     d4,d2
[00046f58] 4eb9 0006 b0a2            jsr        mt_evnt_xmulti
[00046f5e] 4fef 0036                 lea.l      54(a7),a7
[00046f62] 3800                      move.w     d0,d4
[00046f64] 2055                      movea.l    (a5),a0
[00046f66] 3228 0266                 move.w     614(a0),d1
[00046f6a] 3028 02ce                 move.w     718(a0),d0
[00046f6e] 4eb9 0004 1e3e            jsr        nkc_gemks2n
[00046f74] 2055                      movea.l    (a5),a0
[00046f76] 3140 02ce                 move.w     d0,718(a0)
[00046f7a] 7001                      moveq.l    #1,d0
[00046f7c] 4eb9 0005 1e1c            jsr        Awi_update
[00046f82] 7010                      moveq.l    #16,d0
[00046f84] c044                      and.w      d4,d0
[00046f86] 670a                      beq.s      ACSeventhandler_15
[00046f88] 41ef 0020                 lea.l      32(a7),a0
[00046f8c] 4eb9 0005 3ade            jsr        Aev_message
ACSeventhandler_15:
[00046f92] 7002                      moveq.l    #2,d0
[00046f94] c044                      and.w      d4,d0
[00046f96] 6728                      beq.s      ACSeventhandler_16
[00046f98] 323c 0080                 move.w     #$0080,d1
[00046f9c] 2055                      movea.l    (a5),a0
[00046f9e] c268 02ca                 and.w      714(a0),d1
[00046fa2] 670e                      beq.s      ACSeventhandler_17
[00046fa4] 3228 0264                 move.w     612(a0),d1
[00046fa8] 3028 0262                 move.w     610(a0),d0
[00046fac] 41d7                      lea.l      (a7),a0
[00046fae] 6100 f9f8                 bsr        evmwheel
ACSeventhandler_17:
[00046fb2] 2055                      movea.l    (a5),a0
[00046fb4] 3228 02cc                 move.w     716(a0),d1
[00046fb8] 3028 02ca                 move.w     714(a0),d0
[00046fbc] 6100 fa34                 bsr        evbutton
ACSeventhandler_16:
[00046fc0] 7001                      moveq.l    #1,d0
[00046fc2] c044                      and.w      d4,d0
[00046fc4] 6706                      beq.s      ACSeventhandler_18
[00046fc6] 91c8                      suba.l     a0,a0
[00046fc8] 6100 f558                 bsr        evkeybrd
ACSeventhandler_18:
[00046fcc] 2f39 000d 99d6            move.l     _globl,-(a7)
[00046fd2] 2055                      movea.l    (a5),a0
[00046fd4] 4868 0266                 pea.l      614(a0)
[00046fd8] 4868 02ca                 pea.l      714(a0)
[00046fdc] 2248                      movea.l    a0,a1
[00046fde] 43e9 0264                 lea.l      612(a1),a1
[00046fe2] 41e8 0262                 lea.l      610(a0),a0
[00046fe6] 4eb9 0006 c978            jsr        mt_graf_mkstate
[00046fec] 4fef 000c                 lea.l      12(a7),a7
[00046ff0] 2055                      movea.l    (a5),a0
[00046ff2] 3028 02ca                 move.w     714(a0),d0
[00046ff6] 660e                      bne.s      ACSeventhandler_19
[00046ff8] 7204                      moveq.l    #4,d1
[00046ffa] c244                      and.w      d4,d1
[00046ffc] 6704                      beq.s      ACSeventhandler_20
[00046ffe] 6100 f3f4                 bsr        Aev_unhidepointer
ACSeventhandler_20:
[00047002] 6100 fbec                 bsr        evmouse
ACSeventhandler_19:
[00047006] 4eb9 0004 7ef6            jsr        Ax_release
[0004700c] 4eb9 0004 ef9a            jsr        Awi_lateupdate
[00047012] 2055                      movea.l    (a5),a0
[00047014] 214a 0258                 move.l     a2,600(a0)
[00047018] 2055                      movea.l    (a5),a0
[0004701a] 2068 02ac                 movea.l    684(a0),a0
[0004701e] 4e90                      jsr        (a0)
[00047020] 4240                      clr.w      d0
[00047022] 4eb9 0005 1e1c            jsr        Awi_update
[00047028] 91c8                      suba.l     a0,a0
[0004702a] 4eb9 0006 30e2            jsr        Ax_mterm
[00047030] 2055                      movea.l    (a5),a0
[00047032] 3028 0236                 move.w     566(a0),d0
[00047036] 6708                      beq.s      ACSeventhandler_21
[00047038] 3239 000d 37b8            move.w     exitapp,d1
[0004703e] 660a                      bne.s      ACSeventhandler_22
ACSeventhandler_21:
[00047040] 2055                      movea.l    (a5),a0
[00047042] 3028 027e                 move.w     638(a0),d0
[00047046] 6700 fe5c                 beq        ACSeventhandler_5
ACSeventhandler_22:
[0004704a] 2055                      movea.l    (a5),a0
[0004704c] 317c 0001 023a            move.w     #$0001,570(a0)
[00047052] 6100 f3a0                 bsr        Aev_unhidepointer
[00047056] 4eb9 0004 9902            jsr        Amo_busy
[0004705c] 4fef 0030                 lea.l      48(a7),a7
[00047060] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[00047064] 4e75                      rts

		.data

exitapp:
[000d37b8]                           dc.b $00
[000d37b9]                           dc.b $00
hidepointer:
[000d37ba]                           dc.b $00
[000d37bb]                           dc.b $00
DeadKeys:
[000d37bc]                           dc.b '^~',$27,'`'
[000d37c0]                           dc.w $b922
[000d37c2]                           dc.w $f82c
[000d37c4]                           dc.w $2f00
CombKeys:
[000d37c6] 000d3824                  dc.l $000d3824 ; no symbol found
[000d37ca] 000d382b                  dc.l $000d382b ; no symbol found
[000d37ce] 000d3832                  dc.l $000d3832 ; no symbol found
[000d37d2] 000d383a                  dc.l $000d383a ; no symbol found
[000d37d6] 000d3842                  dc.l $000d3842 ; no symbol found
[000d37da] 000d384a                  dc.l $000d384a ; no symbol found
[000d37de] 000d3852                  dc.l $000d3852 ; no symbol found
[000d37e2] 000d385a                  dc.l $000d385a ; no symbol found
[000d37e6] 000d3862                  dc.l $000d3862 ; no symbol found
[000d37ea] 000d386d                  dc.l $000d386d ; no symbol found
[000d37ee] 000d3862                  dc.l $000d3862 ; no symbol found
[000d37f2] 000d3878                  dc.l $000d3878 ; no symbol found
[000d37f6] 000d3883                  dc.l $000d3883 ; no symbol found
[000d37fa] 000d3887                  dc.l $000d3887 ; no symbol found
[000d37fe] 000d388b                  dc.l $000d388b ; no symbol found
[000d3802] 000d388f                  dc.l $000d388f ; no symbol found
[000d3806] 000d3893                  dc.l $000d3893 ; no symbol found
[000d380a] 000d3899                  dc.l $000d3899 ; no symbol found
dead_handling:
[000d380e]                           dc.b $00
[000d380f]                           dc.b $00
dead_key:
[000d3810]                           dc.b $00
[000d3811]                           dc.b $00
[000d3812]                           dc.b $00
[000d3813]                           dc.b $00
[000d3814]                           dc.b $00
[000d3815]                           dc.b $00
[000d3816]                           dc.b $00
[000d3817]                           dc.b $00
[000d3818]                           dc.b $00
[000d3819]                           dc.b $00
[000d381a]                           dc.b $00
[000d381b]                           dc.b $00
[000d381c]                           dc.b $00
[000d381d]                           dc.b $00
[000d381e]                           dc.b $00
[000d381f]                           dc.b $00
[000d3820]                           dc.b $00
[000d3821]                           dc.b $00
quote:
[000d3822]                           dc.b $00
[000d3823]                           dc.b $00
[000d3824]                           dc.b ' aeiou',0
[000d382b]                           dc.b $5e
[000d382c]                           dc.w $8388
[000d382e]                           dc.w $8c93
[000d3830]                           dc.w $9600
[000d3832]                           dc.b ' nNaoAo',0
[000d383a]                           dc.w $7ea4
[000d383c]                           dc.w $a5b0
[000d383e]                           dc.w $b1b7
[000d3840]                           dc.w $b800
[000d3842]                           dc.b ' eEaiou',0
[000d384a]                           dc.w $2782
[000d384c]                           dc.w $90a0
[000d384e]                           dc.w $a1a2
[000d3850]                           dc.w $a300
[000d3852]                           dc.b ' aeiouA',0
[000d385a]                           dc.w $6085
[000d385c]                           dc.w $8a8d
[000d385e]                           dc.w $9597
[000d3860]                           dc.w $b600
[000d3862]                           dc.b ' aeiouyAOU',0
[000d386d]                           dc.b $b9
[000d386e]                           dc.w $8489
[000d3870]                           dc.w $8b94
[000d3872]                           dc.w $8198
[000d3874]                           dc.b 'Ž™š',0
[000d3878]                           dc.w $2284
[000d387a]                           dc.w $898b
[000d387c]                           dc.w $9481
[000d387e]                           dc.w $988e
[000d3880]                           dc.w $999a
[000d3882]                           dc.b $00
[000d3883]                           dc.b ' aA',0
[000d3887]                           dc.b $f8
[000d3888]                           dc.w $868f
[000d388a]                           dc.b $00
[000d388b]                           dc.b ' cC',0
[000d388f]                           dc.b $2c
[000d3890]                           dc.w $8780
[000d3892]                           dc.b $00
[000d3893]                           dc.b ' oO24',0
[000d3899]                           dc.b $2f
[000d389a]                           dc.w $b3b2
[000d389c]                           dc.w $abac
[000d389e]                           dc.b $00
		.even
