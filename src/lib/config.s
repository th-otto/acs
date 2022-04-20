
Acfg_create:
[0004204e] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00042052] 2648                      movea.l    a0,a3
[00042054] 3600                      move.w     d0,d3
[00042056] 7022                      moveq.l    #34,d0
[00042058] 4eb9 0004 7cc8            jsr        Ax_malloc
[0004205e] 2448                      movea.l    a0,a2
[00042060] 200a                      move.l     a2,d0
[00042062] 6604                      bne.s      Acfg_create_1
[00042064] 91c8                      suba.l     a0,a0
[00042066] 6032                      bra.s      Acfg_create_2
Acfg_create_1:
[00042068] 7222                      moveq.l    #34,d1
[0004206a] 4240                      clr.w      d0
[0004206c] 204a                      movea.l    a2,a0
[0004206e] 4eb9 0007 712e            jsr        memset
[00042074] 224b                      movea.l    a3,a1
[00042076] 204a                      movea.l    a2,a0
[00042078] 4eb9 0004 20f2            jsr        InitConfigStruct
[0004207e] 2053                      movea.l    (a3),a0
[00042080] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00042086] 4a40                      tst.w      d0
[00042088] 660e                      bne.s      Acfg_create_3
[0004208a] 4a43                      tst.w      d3
[0004208c] 670a                      beq.s      Acfg_create_3
[0004208e] 93c9                      suba.l     a1,a1
[00042090] 204a                      movea.l    a2,a0
[00042092] 4eb9 0004 266e            jsr        Acfg_load
Acfg_create_3:
[00042098] 204a                      movea.l    a2,a0
Acfg_create_2:
[0004209a] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0004209e] 4e75                      rts

Acfg_delete:
[000420a0] 2f0b                      move.l     a3,-(a7)
[000420a2] 2648                      movea.l    a0,a3
[000420a4] 200b                      move.l     a3,d0
[000420a6] 672a                      beq.s      Acfg_delete_1
[000420a8] 7201                      moveq.l    #1,d1
[000420aa] c26b 001a                 and.w      26(a3),d1
[000420ae] 670e                      beq.s      Acfg_delete_2
[000420b0] 342b 0012                 move.w     18(a3),d2
[000420b4] 6708                      beq.s      Acfg_delete_2
[000420b6] 93c9                      suba.l     a1,a1
[000420b8] 4eb9 0004 2960            jsr        Acfg_save
Acfg_delete_2:
[000420be] 93c9                      suba.l     a1,a1
[000420c0] 204b                      movea.l    a3,a0
[000420c2] 4eb9 0004 225c            jsr        Acfg_clear
[000420c8] 7022                      moveq.l    #34,d0
[000420ca] 204b                      movea.l    a3,a0
[000420cc] 4eb9 0004 8140            jsr        Ax_recycle
Acfg_delete_1:
[000420d2] 265f                      movea.l    (a7)+,a3
[000420d4] 4e75                      rts

Acfg_flags:
[000420d6] 4a41                      tst.w      d1
[000420d8] 6f06                      ble.s      Acfg_flags_1
[000420da] 8168 001a                 or.w       d0,26(a0)
[000420de] 600c                      bra.s      Acfg_flags_2
Acfg_flags_1:
[000420e0] 4a41                      tst.w      d1
[000420e2] 6608                      bne.s      Acfg_flags_2
[000420e4] 3200                      move.w     d0,d1
[000420e6] 4641                      not.w      d1
[000420e8] c368 001a                 and.w      d1,26(a0)
Acfg_flags_2:
[000420ec] 3028 001a                 move.w     26(a0),d0
[000420f0] 4e75                      rts

InitConfigStruct:
[000420f2] 2f0b                      move.l     a3,-(a7)
[000420f4] 2648                      movea.l    a0,a3
[000420f6] 4eb9 0004 21e2            jsr        Acfg_copyInfo
[000420fc] 426b 0014                 clr.w      20(a3)
[00042100] 42ab 0016                 clr.l      22(a3)
[00042104] 426b 001c                 clr.w      28(a3)
[00042108] 42ab 001e                 clr.l      30(a3)
[0004210c] 265f                      movea.l    (a7)+,a3
[0004210e] 4e75                      rts

Acfg_createInfo:
[00042110] 2f0a                      move.l     a2,-(a7)
[00042112] 7012                      moveq.l    #18,d0
[00042114] 4eb9 0004 7cc8            jsr        Ax_malloc
[0004211a] 2448                      movea.l    a0,a2
[0004211c] 200a                      move.l     a2,d0
[0004211e] 6604                      bne.s      Acfg_createInfo_1
[00042120] 91c8                      suba.l     a0,a0
[00042122] 601c                      bra.s      Acfg_createInfo_2
Acfg_createInfo_1:
[00042124] 7212                      moveq.l    #18,d1
[00042126] 4240                      clr.w      d0
[00042128] 204a                      movea.l    a2,a0
[0004212a] 4eb9 0007 712e            jsr        memset
[00042130] 43f9 000d 3627            lea.l      $000D3627,a1
[00042136] 204a                      movea.l    a2,a0
[00042138] 4eb9 0004 2162            jsr        Acfg_initInfo
[0004213e] 204a                      movea.l    a2,a0
Acfg_createInfo_2:
[00042140] 245f                      movea.l    (a7)+,a2
[00042142] 4e75                      rts

Acfg_deleteInfo:
[00042144] 2f0a                      move.l     a2,-(a7)
[00042146] 2448                      movea.l    a0,a2
[00042148] 43f9 000d 3626            lea.l      $000D3626,a1
[0004214e] 4eb9 0004 2162            jsr        Acfg_initInfo
[00042154] 7012                      moveq.l    #18,d0
[00042156] 204a                      movea.l    a2,a0
[00042158] 4eb9 0004 8140            jsr        Ax_recycle
[0004215e] 245f                      movea.l    (a7)+,a2
[00042160] 4e75                      rts

Acfg_initInfo:
[00042162] 2f0a                      move.l     a2,-(a7)
[00042164] 2f0b                      move.l     a3,-(a7)
[00042166] 2448                      movea.l    a0,a2
[00042168] 2649                      movea.l    a1,a3
[0004216a] 2010                      move.l     (a0),d0
[0004216c] 670e                      beq.s      Acfg_initInfo_1
[0004216e] 2240                      movea.l    d0,a1
[00042170] 1211                      move.b     (a1),d1
[00042172] 6708                      beq.s      Acfg_initInfo_1
[00042174] 2040                      movea.l    d0,a0
[00042176] 4eb9 0004 371c            jsr        Ast_delete
Acfg_initInfo_1:
[0004217c] 41f9 000d 3626            lea.l      $000D3626,a0
[00042182] 4eb9 0004 36d6            jsr        Ast_create
[00042188] 2488                      move.l     a0,(a2)
[0004218a] 202a 0004                 move.l     4(a2),d0
[0004218e] 670e                      beq.s      Acfg_initInfo_2
[00042190] 2240                      movea.l    d0,a1
[00042192] 1211                      move.b     (a1),d1
[00042194] 6708                      beq.s      Acfg_initInfo_2
[00042196] 2040                      movea.l    d0,a0
[00042198] 4eb9 0004 371c            jsr        Ast_delete
Acfg_initInfo_2:
[0004219e] 204b                      movea.l    a3,a0
[000421a0] 4eb9 0004 36d6            jsr        Ast_create
[000421a6] 2548 0004                 move.l     a0,4(a2)
[000421aa] 202a 0008                 move.l     8(a2),d0
[000421ae] 670e                      beq.s      Acfg_initInfo_3
[000421b0] 2240                      movea.l    d0,a1
[000421b2] 1211                      move.b     (a1),d1
[000421b4] 6708                      beq.s      Acfg_initInfo_3
[000421b6] 2040                      movea.l    d0,a0
[000421b8] 4eb9 0004 371c            jsr        Ast_delete
Acfg_initInfo_3:
[000421be] 41f9 000d 3626            lea.l      $000D3626,a0
[000421c4] 4eb9 0004 36d6            jsr        Ast_create
[000421ca] 2548 0008                 move.l     a0,8(a2)
[000421ce] 426a 000c                 clr.w      12(a2)
[000421d2] 426a 000e                 clr.w      14(a2)
[000421d6] 357c 0020 0010            move.w     #$0020,16(a2)
[000421dc] 265f                      movea.l    (a7)+,a3
[000421de] 245f                      movea.l    (a7)+,a2
[000421e0] 4e75                      rts

Acfg_copyInfo:
[000421e2] 2f0a                      move.l     a2,-(a7)
[000421e4] 2f0b                      move.l     a3,-(a7)
[000421e6] 2648                      movea.l    a0,a3
[000421e8] 2449                      movea.l    a1,a2
[000421ea] 200a                      move.l     a2,d0
[000421ec] 6606                      bne.s      Acfg_copyInfo_1
[000421ee] 45f9 000d 3614            lea.l      default_info,a2
Acfg_copyInfo_1:
[000421f4] 226a 0004                 movea.l    4(a2),a1
[000421f8] 204b                      movea.l    a3,a0
[000421fa] 6100 ff66                 bsr        Acfg_initInfo
[000421fe] 2052                      movea.l    (a2),a0
[00042200] 4eb9 0004 36d6            jsr        Ast_create
[00042206] 2688                      move.l     a0,(a3)
[00042208] 202a 0008                 move.l     8(a2),d0
[0004220c] 670a                      beq.s      Acfg_copyInfo_2
[0004220e] 2040                      movea.l    d0,a0
[00042210] 4eb9 0004 36d6            jsr        Ast_create
[00042216] 6002                      bra.s      Acfg_copyInfo_3
Acfg_copyInfo_2:
[00042218] 91c8                      suba.l     a0,a0
Acfg_copyInfo_3:
[0004221a] 2748 0008                 move.l     a0,8(a3)
[0004221e] 376a 000c 000c            move.w     12(a2),12(a3)
[00042224] 376a 000e 000e            move.w     14(a2),14(a3)
[0004222a] 376a 0010 0010            move.w     16(a2),16(a3)
[00042230] 204b                      movea.l    a3,a0
[00042232] 265f                      movea.l    (a7)+,a3
[00042234] 245f                      movea.l    (a7)+,a2
[00042236] 4e75                      rts

Acfg_setInfo:
[00042238] 2f0a                      move.l     a2,-(a7)
[0004223a] 2f0b                      move.l     a3,-(a7)
[0004223c] 2649                      movea.l    a1,a3
[0004223e] 2448                      movea.l    a0,a2
[00042240] 6100 ffa0                 bsr.w      Acfg_copyInfo
[00042244] 204b                      movea.l    a3,a0
[00042246] 265f                      movea.l    (a7)+,a3
[00042248] 245f                      movea.l    (a7)+,a2
[0004224a] 4e75                      rts

Acfg_getInfo:
[0004224c] 2f0a                      move.l     a2,-(a7)
[0004224e] 2448                      movea.l    a0,a2
[00042250] 2049                      movea.l    a1,a0
[00042252] 224a                      movea.l    a2,a1
[00042254] 6100 ff8c                 bsr.w      Acfg_copyInfo
[00042258] 245f                      movea.l    (a7)+,a2
[0004225a] 4e75                      rts

Acfg_clear:
[0004225c] 2f0a                      move.l     a2,-(a7)
[0004225e] 2448                      movea.l    a0,a2
[00042260] 6100 ff80                 bsr.w      Acfg_copyInfo
[00042264] 204a                      movea.l    a2,a0
[00042266] 4eb9 0004 2278            jsr        Acfg_clearAllGroups
[0004226c] 204a                      movea.l    a2,a0
[0004226e] 4eb9 0004 3200            jsr        x43200
[00042274] 245f                      movea.l    (a7)+,a2
[00042276] 4e75                      rts

Acfg_clearAllGroups:
[00042278] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[0004227c] 2448                      movea.l    a0,a2
[0004227e] 200a                      move.l     a2,d0
[00042280] 6700 00b4                 beq        Acfg_clearAllGroups_1
[00042284] 322a 0014                 move.w     20(a2),d1
[00042288] 6f00 00ac                 ble        Acfg_clearAllGroups_1
[0004228c] 242a 0016                 move.l     22(a2),d2
[00042290] 6700 00a4                 beq        Acfg_clearAllGroups_1
[00042294] 4243                      clr.w      d3
[00042296] 6000 007e                 bra.w      Acfg_clearAllGroups_2
Acfg_clearAllGroups_8:
[0004229a] 3003                      move.w     d3,d0
[0004229c] 48c0                      ext.l      d0
[0004229e] e588                      lsl.l      #2,d0
[000422a0] 206a 0016                 movea.l    22(a2),a0
[000422a4] 2670 0800                 movea.l    0(a0,d0.l),a3
[000422a8] 220b                      move.l     a3,d1
[000422aa] 6768                      beq.s      Acfg_clearAllGroups_3
[000422ac] 342b 0004                 move.w     4(a3),d2
[000422b0] 6f42                      ble.s      Acfg_clearAllGroups_4
[000422b2] 202b 0006                 move.l     6(a3),d0
[000422b6] 673c                      beq.s      Acfg_clearAllGroups_4
[000422b8] 4244                      clr.w      d4
[000422ba] 6020                      bra.s      Acfg_clearAllGroups_5
Acfg_clearAllGroups_7:
[000422bc] 3004                      move.w     d4,d0
[000422be] 48c0                      ext.l      d0
[000422c0] e588                      lsl.l      #2,d0
[000422c2] 206b 0006                 movea.l    6(a3),a0
[000422c6] 2230 0800                 move.l     0(a0,d0.l),d1
[000422ca] 670e                      beq.s      Acfg_clearAllGroups_6
[000422cc] 2241                      movea.l    d1,a1
[000422ce] 1411                      move.b     (a1),d2
[000422d0] 6708                      beq.s      Acfg_clearAllGroups_6
[000422d2] 2041                      movea.l    d1,a0
[000422d4] 4eb9 0004 371c            jsr        Ast_delete
Acfg_clearAllGroups_6:
[000422da] 5244                      addq.w     #1,d4
Acfg_clearAllGroups_5:
[000422dc] b86b 0004                 cmp.w      4(a3),d4
[000422e0] 6dda                      blt.s      Acfg_clearAllGroups_7
[000422e2] 206b 0006                 movea.l    6(a3),a0
[000422e6] 4eb9 0004 7e26            jsr        Ax_free
[000422ec] 42ab 0006                 clr.l      6(a3)
[000422f0] 426b 0004                 clr.w      4(a3)
Acfg_clearAllGroups_4:
[000422f4] 2053                      movea.l    (a3),a0
[000422f6] 4eb9 0004 371c            jsr        Ast_delete
[000422fc] 700a                      moveq.l    #10,d0
[000422fe] 204b                      movea.l    a3,a0
[00042300] 4eb9 0004 8140            jsr        Ax_recycle
[00042306] 3003                      move.w     d3,d0
[00042308] 48c0                      ext.l      d0
[0004230a] e588                      lsl.l      #2,d0
[0004230c] 206a 0016                 movea.l    22(a2),a0
[00042310] 42b0 0800                 clr.l      0(a0,d0.l)
Acfg_clearAllGroups_3:
[00042314] 5243                      addq.w     #1,d3
Acfg_clearAllGroups_2:
[00042316] b66a 0014                 cmp.w      20(a2),d3
[0004231a] 6d00 ff7e                 blt        Acfg_clearAllGroups_8
[0004231e] 206a 0016                 movea.l    22(a2),a0
[00042322] 4eb9 0004 7e26            jsr        Ax_free
[00042328] 42aa 0016                 clr.l      22(a2)
[0004232c] 426a 0014                 clr.w      20(a2)
[00042330] 357c 0001 0012            move.w     #$0001,18(a2)
Acfg_clearAllGroups_1:
[00042336] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[0004233a] 4e75                      rts

Acfg_clearGroup:
[0004233c] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00042340] 4fef ffee                 lea.l      -18(a7),a7
[00042344] 2649                      movea.l    a1,a3
[00042346] 2448                      movea.l    a0,a2
[00042348] 42a7                      clr.l      -(a7)
[0004234a] 41ef 0004                 lea.l      4(a7),a0
[0004234e] 4eb9 0004 331c            jsr        InitCfgSearch
[00042354] 584f                      addq.w     #4,a7
[00042356] 43d7                      lea.l      (a7),a1
[00042358] 204a                      movea.l    a2,a0
[0004235a] 4eb9 0004 3436            jsr        SearchGruppe
[00042360] 2648                      movea.l    a0,a3
[00042362] 200b                      move.l     a3,d0
[00042364] 6700 00b8                 beq        Acfg_clearGroup_1
[00042368] 4243                      clr.w      d3
[0004236a] 6016                      bra.s      Acfg_clearGroup_2
Acfg_clearGroup_3:
[0004236c] 3003                      move.w     d3,d0
[0004236e] 48c0                      ext.l      d0
[00042370] e588                      lsl.l      #2,d0
[00042372] 206b 0006                 movea.l    6(a3),a0
[00042376] 2070 0800                 movea.l    0(a0,d0.l),a0
[0004237a] 4eb9 0004 371c            jsr        Ast_delete
[00042380] 5243                      addq.w     #1,d3
Acfg_clearGroup_2:
[00042382] b66b 0004                 cmp.w      4(a3),d3
[00042386] 6de4                      blt.s      Acfg_clearGroup_3
[00042388] 206b 0006                 movea.l    6(a3),a0
[0004238c] 4eb9 0004 7e26            jsr        Ax_free
[00042392] 2053                      movea.l    (a3),a0
[00042394] 4eb9 0004 371c            jsr        Ast_delete
[0004239a] 0c6a 0001 0014            cmpi.w     #$0001,20(a2)
[000423a0] 6f60                      ble.s      Acfg_clearGroup_4
[000423a2] 70ff                      moveq.l    #-1,d0
[000423a4] d06a 0014                 add.w      20(a2),d0
[000423a8] 48c0                      ext.l      d0
[000423aa] e588                      lsl.l      #2,d0
[000423ac] 4eb9 0004 7cc8            jsr        Ax_malloc
[000423b2] 2848                      movea.l    a0,a4
[000423b4] 4243                      clr.w      d3
[000423b6] 3003                      move.w     d3,d0
[000423b8] 602e                      bra.s      Acfg_clearGroup_5
Acfg_clearGroup_8:
[000423ba] 3203                      move.w     d3,d1
[000423bc] 48c1                      ext.l      d1
[000423be] e589                      lsl.l      #2,d1
[000423c0] 206a 0016                 movea.l    22(a2),a0
[000423c4] b7f0 1800                 cmpa.l     0(a0,d1.l),a3
[000423c8] 6604                      bne.s      Acfg_clearGroup_6
[000423ca] 5243                      addq.w     #1,d3
[000423cc] 6016                      bra.s      Acfg_clearGroup_7
Acfg_clearGroup_6:
[000423ce] 3203                      move.w     d3,d1
[000423d0] 48c1                      ext.l      d1
[000423d2] e589                      lsl.l      #2,d1
[000423d4] 206a 0016                 movea.l    22(a2),a0
[000423d8] 3400                      move.w     d0,d2
[000423da] 48c2                      ext.l      d2
[000423dc] e58a                      lsl.l      #2,d2
[000423de] 29b0 1800 2800            move.l     0(a0,d1.l),0(a4,d2.l)
Acfg_clearGroup_7:
[000423e4] 5243                      addq.w     #1,d3
[000423e6] 5240                      addq.w     #1,d0
Acfg_clearGroup_5:
[000423e8] b66a 0014                 cmp.w      20(a2),d3
[000423ec] 6dcc                      blt.s      Acfg_clearGroup_8
[000423ee] 206a 0016                 movea.l    22(a2),a0
[000423f2] 4eb9 0004 7e26            jsr        Ax_free
[000423f8] 254c 0016                 move.l     a4,22(a2)
[000423fc] 536a 0014                 subq.w     #1,20(a2)
[00042400] 6012                      bra.s      Acfg_clearGroup_9
Acfg_clearGroup_4:
[00042402] 206a 0016                 movea.l    22(a2),a0
[00042406] 4eb9 0004 7e26            jsr        Ax_free
[0004240c] 42aa 0016                 clr.l      22(a2)
[00042410] 426a 0014                 clr.w      20(a2)
Acfg_clearGroup_9:
[00042414] 700a                      moveq.l    #10,d0
[00042416] 204b                      movea.l    a3,a0
[00042418] 4eb9 0004 8140            jsr        Ax_recycle
Acfg_clearGroup_1:
[0004241e] 4fef 0012                 lea.l      18(a7),a7
[00042422] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00042426] 4e75                      rts

Acfg_makeName:
[00042428] 48e7 1036                 movem.l    d3/a2-a3/a5-a6,-(a7)
[0004242c] 594f                      subq.w     #4,a7
[0004242e] 2c48                      movea.l    a0,a6
[00042430] 2449                      movea.l    a1,a2
[00042432] 2a6f 001c                 movea.l    28(a7),a5
[00042436] 266f 0020                 movea.l    32(a7),a3
[0004243a] 2049                      movea.l    a1,a0
[0004243c] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00042442] 4a40                      tst.w      d0
[00042444] 6600 00bc                 bne        Acfg_makeName_1
[00042448] 224a                      movea.l    a2,a1
[0004244a] 204b                      movea.l    a3,a0
[0004244c] 4eb9 0004 71de            jsr        Af_2name
[00042452] 4eb9 0004 383a            jsr        Ast_alltrim
[00042458] 4eb9 0004 3a92            jsr        Ast_isEmpty
[0004245e] 4a40                      tst.w      d0
[00042460] 6600 00a0                 bne        Acfg_makeName_1
[00042464] 224a                      movea.l    a2,a1
[00042466] 41d7                      lea.l      (a7),a0
[00042468] 4eb9 0004 7286            jsr        Af_2ext
[0004246e] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00042474] 4a40                      tst.w      d0
[00042476] 670e                      beq.s      Acfg_makeName_2
[00042478] 43f9 000d 362a            lea.l      $000D362A,a1
[0004247e] 41d7                      lea.l      (a7),a0
[00042480] 4eb9 0007 6950            jsr        strcpy
Acfg_makeName_2:
[00042486] 204a                      movea.l    a2,a0
[00042488] 4eb9 0004 70f8            jsr        Af_2drv
[0004248e] 3600                      move.w     d0,d3
[00042490] 224a                      movea.l    a2,a1
[00042492] 204d                      movea.l    a5,a0
[00042494] 4eb9 0004 712c            jsr        Af_2path
[0004249a] 43f9 000d 362e            lea.l      $000D362E,a1
[000424a0] 204d                      movea.l    a5,a0
[000424a2] 4eb9 0004 3856            jsr        Ast_cmp
[000424a8] 4a40                      tst.w      d0
[000424aa] 6644                      bne.s      Acfg_makeName_3
[000424ac] 705c                      moveq.l    #92,d0
[000424ae] 204a                      movea.l    a2,a0
[000424b0] 4eb9 0007 68e2            jsr        strrchr
[000424b6] 2008                      move.l     a0,d0
[000424b8] 6636                      bne.s      Acfg_makeName_3
[000424ba] 703a                      moveq.l    #58,d0
[000424bc] 204a                      movea.l    a2,a0
[000424be] 4eb9 0007 68e2            jsr        strrchr
[000424c4] 2008                      move.l     a0,d0
[000424c6] 6626                      bne.s      Acfg_makeName_4
[000424c8] 2279 0010 1f12            movea.l    ACSblk,a1
[000424ce] 43e9 02d6                 lea.l      726(a1),a1
[000424d2] 204d                      movea.l    a5,a0
[000424d4] 4eb9 0004 712c            jsr        Af_2path
[000424da] 2079 0010 1f12            movea.l    ACSblk,a0
[000424e0] 41e8 02d6                 lea.l      726(a0),a0
[000424e4] 4eb9 0004 70f8            jsr        Af_2drv
[000424ea] 3600                      move.w     d0,d3
[000424ec] 6002                      bra.s      Acfg_makeName_3
Acfg_makeName_4:
[000424ee] 4215                      clr.b      (a5)
Acfg_makeName_3:
[000424f0] 203c 0000 2000            move.l     #$00002000,d0
[000424f6] 4eb9 0004 7cc8            jsr        Ax_malloc
[000424fc] 2c88                      move.l     a0,(a6)
[000424fe] 2008                      move.l     a0,d0
[00042500] 6604                      bne.s      Acfg_makeName_5
Acfg_makeName_1:
[00042502] 4240                      clr.w      d0
[00042504] 6014                      bra.s      Acfg_makeName_6
Acfg_makeName_5:
[00042506] 4857                      pea.l      (a7)
[00042508] 2f0b                      move.l     a3,-(a7)
[0004250a] 224d                      movea.l    a5,a1
[0004250c] 3003                      move.w     d3,d0
[0004250e] 2056                      movea.l    (a6),a0
[00042510] 4eb9 0004 72d6            jsr        Af_buildname
[00042516] 504f                      addq.w     #8,a7
[00042518] 7001                      moveq.l    #1,d0
Acfg_makeName_6:
[0004251a] 584f                      addq.w     #4,a7
[0004251c] 4cdf 6c08                 movem.l    (a7)+,d3/a2-a3/a5-a6
[00042520] 4e75                      rts

IsNewGroup:
[00042522] 2f0a                      move.l     a2,-(a7)
[00042524] 2448                      movea.l    a0,a2
[00042526] 4eb9 0007 69b0            jsr        strlen
[0004252c] 7202                      moveq.l    #2,d1
[0004252e] b280                      cmp.l      d0,d1
[00042530] 6c12                      bge.s      IsNewGroup_1
[00042532] 0c12 005b                 cmpi.b     #$5B,(a2)
[00042536] 660c                      bne.s      IsNewGroup_1
[00042538] 0c32 005d 08ff            cmpi.b     #$5D,-1(a2,d0.l)
[0004253e] 6604                      bne.s      IsNewGroup_1
[00042540] 7401                      moveq.l    #1,d2
[00042542] 6002                      bra.s      IsNewGroup_2
IsNewGroup_1:
[00042544] 4242                      clr.w      d2
IsNewGroup_2:
[00042546] 3002                      move.w     d2,d0
[00042548] 245f                      movea.l    (a7)+,a2
[0004254a] 4e75                      rts

FoundNextGroup:
[0004254c] 48e7 103e                 movem.l    d3/a2-a6,-(a7)
[00042550] 2848                      movea.l    a0,a4
[00042552] 2649                      movea.l    a1,a3
[00042554] 246f 001c                 movea.l    28(a7),a2
[00042558] 2c6f 0020                 movea.l    32(a7),a6
[0004255c] 2a6f 0024                 movea.l    36(a7),a5
[00042560] 4240                      clr.w      d0
[00042562] 3480                      move.w     d0,(a2)
[00042564] 3280                      move.w     d0,(a1)
[00042566] 4243                      clr.w      d3
[00042568] 6052                      bra.s      FoundNextGroup_1
FoundNextGroup_4:
[0004256a] 224c                      movea.l    a4,a1
[0004256c] 303c 2000                 move.w     #$2000,d0
[00042570] 204d                      movea.l    a5,a0
[00042572] 4eb9 0007 5d02            jsr        fgets
[00042578] 2008                      move.l     a0,d0
[0004257a] 6740                      beq.s      FoundNextGroup_1
[0004257c] 204d                      movea.l    a5,a0
[0004257e] 4eb9 0004 383a            jsr        Ast_alltrim
[00042584] 204d                      movea.l    a5,a0
[00042586] 6100 ff9a                 bsr.w      IsNewGroup
[0004258a] 4a40                      tst.w      d0
[0004258c] 671e                      beq.s      FoundNextGroup_2
[0004258e] 43ed 0001                 lea.l      1(a5),a1
[00042592] 204e                      movea.l    a6,a0
[00042594] 4eb9 0007 6950            jsr        strcpy
[0004259a] 204e                      movea.l    a6,a0
[0004259c] 4eb9 0007 69b0            jsr        strlen
[000425a2] 5380                      subq.l     #1,d0
[000425a4] 4236 0800                 clr.b      0(a6,d0.l)
[000425a8] 7601                      moveq.l    #1,d3
[000425aa] 6010                      bra.s      FoundNextGroup_1
FoundNextGroup_2:
[000425ac] 5253                      addq.w     #1,(a3)
[000425ae] 204d                      movea.l    a5,a0
[000425b0] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000425b6] 4a40                      tst.w      d0
[000425b8] 6702                      beq.s      FoundNextGroup_1
[000425ba] 5252                      addq.w     #1,(a2)
FoundNextGroup_1:
[000425bc] 204c                      movea.l    a4,a0
[000425be] 4eb9 0007 5cf6            jsr        feof
[000425c4] 4a40                      tst.w      d0
[000425c6] 6604                      bne.s      FoundNextGroup_3
[000425c8] 4a43                      tst.w      d3
[000425ca] 679e                      beq.s      FoundNextGroup_4
FoundNextGroup_3:
[000425cc] 4cdf 7c08                 movem.l    (a7)+,d3/a2-a6
[000425d0] 4e75                      rts

ReadUntilNextGroup:
[000425d2] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[000425d6] 2a48                      movea.l    a0,a5
[000425d8] 2649                      movea.l    a1,a3
[000425da] 286f 001c                 movea.l    28(a7),a4
[000425de] 3600                      move.w     d0,d3
[000425e0] 9641                      sub.w      d1,d3
[000425e2] 4a43                      tst.w      d3
[000425e4] 6f1e                      ble.s      ReadUntilNextGroup_1
[000425e6] 3003                      move.w     d3,d0
[000425e8] 48c0                      ext.l      d0
[000425ea] e588                      lsl.l      #2,d0
[000425ec] 4eb9 0004 7cc8            jsr        Ax_malloc
[000425f2] 2448                      movea.l    a0,a2
[000425f4] 200a                      move.l     a2,d0
[000425f6] 6604                      bne.s      ReadUntilNextGroup_2
[000425f8] 4240                      clr.w      d0
[000425fa] 606c                      bra.s      ReadUntilNextGroup_3
ReadUntilNextGroup_2:
[000425fc] 274a 0006                 move.l     a2,6(a3)
[00042600] 3743 0004                 move.w     d3,4(a3)
ReadUntilNextGroup_1:
[00042604] 4244                      clr.w      d4
[00042606] 6026                      bra.s      ReadUntilNextGroup_4
ReadUntilNextGroup_8:
[00042608] 204c                      movea.l    a4,a0
[0004260a] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00042610] 4a40                      tst.w      d0
[00042612] 6618                      bne.s      ReadUntilNextGroup_5
[00042614] b644                      cmp.w      d4,d3
[00042616] 6f14                      ble.s      ReadUntilNextGroup_5
[00042618] 204c                      movea.l    a4,a0
[0004261a] 4eb9 0004 36d6            jsr        Ast_create
[00042620] 3004                      move.w     d4,d0
[00042622] 48c0                      ext.l      d0
[00042624] e588                      lsl.l      #2,d0
[00042626] 2588 0800                 move.l     a0,0(a2,d0.l)
[0004262a] 5244                      addq.w     #1,d4
ReadUntilNextGroup_5:
[0004262c] 4214                      clr.b      (a4)
ReadUntilNextGroup_4:
[0004262e] 224d                      movea.l    a5,a1
[00042630] 303c 2000                 move.w     #$2000,d0
[00042634] 204c                      movea.l    a4,a0
[00042636] 4eb9 0007 5d02            jsr        fgets
[0004263c] 204c                      movea.l    a4,a0
[0004263e] 4eb9 0004 383a            jsr        Ast_alltrim
[00042644] 204d                      movea.l    a5,a0
[00042646] 4eb9 0007 5cf6            jsr        feof
[0004264c] 4a40                      tst.w      d0
[0004264e] 670c                      beq.s      ReadUntilNextGroup_6
[00042650] 204c                      movea.l    a4,a0
[00042652] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00042658] 4a40                      tst.w      d0
[0004265a] 660a                      bne.s      ReadUntilNextGroup_7
ReadUntilNextGroup_6:
[0004265c] 204c                      movea.l    a4,a0
[0004265e] 6100 fec2                 bsr        IsNewGroup
[00042662] 4a40                      tst.w      d0
[00042664] 67a2                      beq.s      ReadUntilNextGroup_8
ReadUntilNextGroup_7:
[00042666] 7001                      moveq.l    #1,d0
ReadUntilNextGroup_3:
[00042668] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0004266c] 4e75                      rts

Acfg_load:
[0004266e] 48e7 1c38                 movem.l    d3-d5/a2-a4,-(a7)
[00042672] 4fef ffec                 lea.l      -20(a7),a7
[00042676] 2448                      movea.l    a0,a2
[00042678] 2009                      move.l     a1,d0
[0004267a] 6704                      beq.s      Acfg_load_1
[0004267c] 2049                      movea.l    a1,a0
[0004267e] 6002                      bra.s      Acfg_load_2
Acfg_load_1:
[00042680] 2052                      movea.l    (a2),a0
Acfg_load_2:
[00042682] 2f48 0010                 move.l     a0,16(a7)
[00042686] 204a                      movea.l    a2,a0
[00042688] 6100 fbee                 bsr        Acfg_clearAllGroups
[0004268c] 204a                      movea.l    a2,a0
[0004268e] 4eb9 0004 3200            jsr        x43200
[00042694] 426a 0012                 clr.w      18(a2)
[00042698] 203c 0000 4004            move.l     #$00004004,d0
[0004269e] 4eb9 0004 7cc8            jsr        Ax_malloc
[000426a4] 2848                      movea.l    a0,a4
[000426a6] 200c                      move.l     a4,d0
[000426a8] 6700 011e                 beq        Acfg_load_3
[000426ac] 43ec 2003                 lea.l      8195(a4),a1
[000426b0] 2f49 0008                 move.l     a1,8(a7)
[000426b4] 2f09                      move.l     a1,-(a7)
[000426b6] 2f00                      move.l     d0,-(a7)
[000426b8] 41ef 0014                 lea.l      20(a7),a0
[000426bc] 226f 0018                 movea.l    24(a7),a1
[000426c0] 6100 fd66                 bsr        Acfg_makeName
[000426c4] 504f                      addq.w     #8,a7
[000426c6] 4a40                      tst.w      d0
[000426c8] 6700 0094                 beq        Acfg_load_4
[000426cc] 43f9 000d 3630            lea.l      $000D3630,a1
[000426d2] 206f 000c                 movea.l    12(a7),a0
[000426d6] 4eb9 0007 5f3e            jsr        fopen
[000426dc] 2648                      movea.l    a0,a3
[000426de] 200b                      move.l     a3,d0
[000426e0] 6772                      beq.s      Acfg_load_5
[000426e2] 322a 0010                 move.w     16(a2),d1
[000426e6] 6f10                      ble.s      Acfg_load_6
[000426e8] 48c1                      ext.l      d1
[000426ea] 740a                      moveq.l    #10,d2
[000426ec] e5a9                      lsl.l      d2,d1
[000426ee] 93c9                      suba.l     a1,a1
[000426f0] 4240                      clr.w      d0
[000426f2] 4eb9 0007 61a4            jsr        setvbuf
Acfg_load_6:
[000426f8] 7601                      moveq.l    #1,d3
[000426fa] 4241                      clr.w      d1
[000426fc] 7000                      moveq.l    #0,d0
[000426fe] 204b                      movea.l    a3,a0
[00042700] 4eb9 0007 5eba            jsr        fseek
[00042706] 6024                      bra.s      Acfg_load_7
Acfg_load_8:
[00042708] 224b                      movea.l    a3,a1
[0004270a] 303c 2000                 move.w     #$2000,d0
[0004270e] 204c                      movea.l    a4,a0
[00042710] 4eb9 0007 5d02            jsr        fgets
[00042716] 2008                      move.l     a0,d0
[00042718] 6712                      beq.s      Acfg_load_7
[0004271a] 204c                      movea.l    a4,a0
[0004271c] 4eb9 0004 383a            jsr        Ast_alltrim
[00042722] 6100 fdfe                 bsr        IsNewGroup
[00042726] 4a40                      tst.w      d0
[00042728] 6702                      beq.s      Acfg_load_7
[0004272a] 5243                      addq.w     #1,d3
Acfg_load_7:
[0004272c] 204b                      movea.l    a3,a0
[0004272e] 4eb9 0007 5cf6            jsr        feof
[00042734] 4a40                      tst.w      d0
[00042736] 67d0                      beq.s      Acfg_load_8
[00042738] 3003                      move.w     d3,d0
[0004273a] 48c0                      ext.l      d0
[0004273c] e588                      lsl.l      #2,d0
[0004273e] 4eb9 0004 7cc8            jsr        Ax_malloc
[00042744] 2548 0016                 move.l     a0,22(a2)
[00042748] 2008                      move.l     a0,d0
[0004274a] 661c                      bne.s      Acfg_load_9
[0004274c] 204b                      movea.l    a3,a0
[0004274e] 4eb9 0007 6146            jsr        fclose
Acfg_load_5:
[00042754] 206f 000c                 movea.l    12(a7),a0
[00042758] 4eb9 0004 7e26            jsr        Ax_free
Acfg_load_4:
[0004275e] 204c                      movea.l    a4,a0
[00042760] 4eb9 0004 7e26            jsr        Ax_free
[00042766] 6060                      bra.s      Acfg_load_3
Acfg_load_9:
[00042768] 3543 0014                 move.w     d3,20(a2)
[0004276c] 3203                      move.w     d3,d1
[0004276e] 48c1                      ext.l      d1
[00042770] e589                      lsl.l      #2,d1
[00042772] 4240                      clr.w      d0
[00042774] 206a 0016                 movea.l    22(a2),a0
[00042778] 4eb9 0007 712e            jsr        memset
[0004277e] 206f 0008                 movea.l    8(a7),a0
[00042782] 4210                      clr.b      (a0)
[00042784] 4241                      clr.w      d1
[00042786] 7000                      moveq.l    #0,d0
[00042788] 204b                      movea.l    a3,a0
[0004278a] 4eb9 0007 5eba            jsr        fseek
[00042790] 4244                      clr.w      d4
[00042792] 6000 00ea                 bra        Acfg_load_10
Acfg_load_14:
[00042796] 700a                      moveq.l    #10,d0
[00042798] 4eb9 0004 7cc8            jsr        Ax_malloc
[0004279e] 2e88                      move.l     a0,(a7)
[000427a0] 2008                      move.l     a0,d0
[000427a2] 662a                      bne.s      Acfg_load_11
[000427a4] 204b                      movea.l    a3,a0
[000427a6] 4eb9 0007 6146            jsr        fclose
[000427ac] 204a                      movea.l    a2,a0
[000427ae] 6100 fac8                 bsr        Acfg_clearAllGroups
[000427b2] 206f 000c                 movea.l    12(a7),a0
[000427b6] 4eb9 0004 7e26            jsr        Ax_free
[000427bc] 204c                      movea.l    a4,a0
[000427be] 4eb9 0004 7e26            jsr        Ax_free
[000427c4] 426a 0012                 clr.w      18(a2)
Acfg_load_3:
[000427c8] 4240                      clr.w      d0
[000427ca] 6000 00f4                 bra        Acfg_load_12
Acfg_load_11:
[000427ce] 720a                      moveq.l    #10,d1
[000427d0] 4240                      clr.w      d0
[000427d2] 2057                      movea.l    (a7),a0
[000427d4] 4eb9 0007 712e            jsr        memset
[000427da] 42a7                      clr.l      -(a7)
[000427dc] 43f9 000d 3632            lea.l      $000D3632,a1
[000427e2] 2f09                      move.l     a1,-(a7)
[000427e4] 206f 0010                 movea.l    16(a7),a0
[000427e8] 4eb9 0004 36d6            jsr        Ast_create
[000427ee] 4eb9 0004 383a            jsr        Ast_alltrim
[000427f4] 225f                      movea.l    (a7)+,a1
[000427f6] 4eb9 0004 3c24            jsr        Ast_filter
[000427fc] 584f                      addq.w     #4,a7
[000427fe] 2257                      movea.l    (a7),a1
[00042800] 2288                      move.l     a0,(a1)
[00042802] 3004                      move.w     d4,d0
[00042804] 48c0                      ext.l      d0
[00042806] e588                      lsl.l      #2,d0
[00042808] 206a 0016                 movea.l    22(a2),a0
[0004280c] 2189 0800                 move.l     a1,0(a0,d0.l)
[00042810] 204b                      movea.l    a3,a0
[00042812] 4eb9 0007 5e6a            jsr        ftell
[00042818] 2a00                      move.l     d0,d5
[0004281a] 2f0c                      move.l     a4,-(a7)
[0004281c] 2f2f 000c                 move.l     12(a7),-(a7)
[00042820] 486f 000c                 pea.l      12(a7)
[00042824] 43ef 0012                 lea.l      18(a7),a1
[00042828] 204b                      movea.l    a3,a0
[0004282a] 6100 fd20                 bsr        FoundNextGroup
[0004282e] 4fef 000c                 lea.l      12(a7),a7
[00042832] 4241                      clr.w      d1
[00042834] 2005                      move.l     d5,d0
[00042836] 204b                      movea.l    a3,a0
[00042838] 4eb9 0007 5eba            jsr        fseek
[0004283e] 2f0c                      move.l     a4,-(a7)
[00042840] 322f 0008                 move.w     8(a7),d1
[00042844] 302f 000a                 move.w     10(a7),d0
[00042848] 226f 0004                 movea.l    4(a7),a1
[0004284c] 204b                      movea.l    a3,a0
[0004284e] 6100 fd82                 bsr        ReadUntilNextGroup
[00042852] 584f                      addq.w     #4,a7
[00042854] 4a40                      tst.w      d0
[00042856] 6624                      bne.s      Acfg_load_13
[00042858] 204b                      movea.l    a3,a0
[0004285a] 4eb9 0007 6146            jsr        fclose
[00042860] 204a                      movea.l    a2,a0
[00042862] 6100 fa14                 bsr        Acfg_clearAllGroups
[00042866] 206f 000c                 movea.l    12(a7),a0
[0004286a] 4eb9 0004 7e26            jsr        Ax_free
[00042870] 204c                      movea.l    a4,a0
[00042872] 4eb9 0004 7e26            jsr        Ax_free
[00042878] 426a 0012                 clr.w      18(a2)
Acfg_load_13:
[0004287c] 5244                      addq.w     #1,d4
Acfg_load_10:
[0004287e] b644                      cmp.w      d4,d3
[00042880] 6e00 ff14                 bgt        Acfg_load_14
[00042884] 2052                      movea.l    (a2),a0
[00042886] 4eb9 0004 3a92            jsr        Ast_isEmpty
[0004288c] 4a40                      tst.w      d0
[0004288e] 6608                      bne.s      Acfg_load_15
[00042890] 2052                      movea.l    (a2),a0
[00042892] 4eb9 0004 371c            jsr        Ast_delete
Acfg_load_15:
[00042898] 206f 000c                 movea.l    12(a7),a0
[0004289c] 4eb9 0004 36d6            jsr        Ast_create
[000428a2] 2488                      move.l     a0,(a2)
[000428a4] 204b                      movea.l    a3,a0
[000428a6] 4eb9 0007 6146            jsr        fclose
[000428ac] 206f 000c                 movea.l    12(a7),a0
[000428b0] 4eb9 0004 7e26            jsr        Ax_free
[000428b6] 204c                      movea.l    a4,a0
[000428b8] 4eb9 0004 7e26            jsr        Ax_free
[000428be] 7001                      moveq.l    #1,d0
Acfg_load_12:
[000428c0] 4fef 0014                 lea.l      20(a7),a7
[000428c4] 4cdf 1c38                 movem.l    (a7)+,d3-d5/a2-a4
[000428c8] 4e75                      rts

WriteString:
[000428ca] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[000428ce] 2a48                      movea.l    a0,a5
[000428d0] 2849                      movea.l    a1,a4
[000428d2] 246f 0018                 movea.l    24(a7),a2
[000428d6] 266f 0020                 movea.l    32(a7),a3
[000428da] 3012                      move.w     (a2),d0
[000428dc] 666c                      bne.s      WriteString_1
[000428de] 204b                      movea.l    a3,a0
[000428e0] 4eb9 0004 383a            jsr        Ast_alltrim
[000428e6] 1010                      move.b     (a0),d0
[000428e8] 4880                      ext.w      d0
[000428ea] 206c 0004                 movea.l    4(a4),a0
[000428ee] 4eb9 0007 68ce            jsr        strchr
[000428f4] 2008                      move.l     a0,d0
[000428f6] 664e                      bne.s      WriteString_2
[000428f8] 4243                      clr.w      d3
[000428fa] 602a                      bra.s      WriteString_3
WriteString_4:
[000428fc] 3003                      move.w     d3,d0
[000428fe] 48c0                      ext.l      d0
[00042900] e588                      lsl.l      #2,d0
[00042902] 206c 001e                 movea.l    30(a4),a0
[00042906] 2f30 0800                 move.l     0(a0,d0.l),-(a7)
[0004290a] 226c 0004                 movea.l    4(a4),a1
[0004290e] 1211                      move.b     (a1),d1
[00042910] 4881                      ext.w      d1
[00042912] 3f01                      move.w     d1,-(a7)
[00042914] 43f9 000d 3635            lea.l      $000D3635,a1
[0004291a] 204d                      movea.l    a5,a0
[0004291c] 4eb9 0007 5642            jsr        fprintf
[00042922] 5c4f                      addq.w     #6,a7
[00042924] 5243                      addq.w     #1,d3
WriteString_3:
[00042926] b66c 001c                 cmp.w      28(a4),d3
[0004292a] 6dd0                      blt.s      WriteString_4
[0004292c] 206c 0004                 movea.l    4(a4),a0
[00042930] 1010                      move.b     (a0),d0
[00042932] 4880                      ext.w      d0
[00042934] 3f00                      move.w     d0,-(a7)
[00042936] 43f9 000d 363c            lea.l      $000D363C,a1
[0004293c] 204d                      movea.l    a5,a0
[0004293e] 4eb9 0007 5642            jsr        fprintf
[00042944] 544f                      addq.w     #2,a7
WriteString_2:
[00042946] 34bc 0001                 move.w     #$0001,(a2)
WriteString_1:
[0004294a] 2f0b                      move.l     a3,-(a7)
[0004294c] 226f 0020                 movea.l    32(a7),a1
[00042950] 204d                      movea.l    a5,a0
[00042952] 4eb9 0007 5642            jsr        fprintf
[00042958] 584f                      addq.w     #4,a7
[0004295a] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0004295e] 4e75                      rts

Acfg_save:
[00042960] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[00042964] 4fef fff2                 lea.l      -14(a7),a7
[00042968] 2849                      movea.l    a1,a4
[0004296a] 2448                      movea.l    a0,a2
[0004296c] 2049                      movea.l    a1,a0
[0004296e] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00042974] 4a40                      tst.w      d0
[00042976] 6604                      bne.s      Acfg_save_1
[00042978] 204c                      movea.l    a4,a0
[0004297a] 6002                      bra.s      Acfg_save_2
Acfg_save_1:
[0004297c] 2052                      movea.l    (a2),a0
Acfg_save_2:
[0004297e] 2848                      movea.l    a0,a4
[00042980] 203c 0000 4004            move.l     #$00004004,d0
[00042986] 4eb9 0004 7cc8            jsr        Ax_malloc
[0004298c] 2f48 0006                 move.l     a0,6(a7)
[00042990] 2008                      move.l     a0,d0
[00042992] 6746                      beq.s      Acfg_save_3
[00042994] 41e8 2003                 lea.l      8195(a0),a0
[00042998] 2f48 0002                 move.l     a0,2(a7)
[0004299c] 2f08                      move.l     a0,-(a7)
[0004299e] 2f00                      move.l     d0,-(a7)
[000429a0] 224c                      movea.l    a4,a1
[000429a2] 41ef 0012                 lea.l      18(a7),a0
[000429a6] 6100 fa80                 bsr        Acfg_makeName
[000429aa] 504f                      addq.w     #8,a7
[000429ac] 4a40                      tst.w      d0
[000429ae] 6716                      beq.s      Acfg_save_4
[000429b0] 43f9 000d 3640            lea.l      $000D3640,a1
[000429b6] 206f 000a                 movea.l    10(a7),a0
[000429ba] 4eb9 0007 5f3e            jsr        fopen
[000429c0] 2a48                      movea.l    a0,a5
[000429c2] 200d                      move.l     a5,d0
[000429c4] 661a                      bne.s      Acfg_save_5
Acfg_save_4:
[000429c6] 206f 000a                 movea.l    10(a7),a0
[000429ca] 4eb9 0004 7e26            jsr        Ax_free
[000429d0] 206f 0006                 movea.l    6(a7),a0
[000429d4] 4eb9 0004 7e26            jsr        Ax_free
Acfg_save_3:
[000429da] 4240                      clr.w      d0
[000429dc] 6000 0100                 bra        Acfg_save_6
Acfg_save_5:
[000429e0] 302a 0010                 move.w     16(a2),d0
[000429e4] 6f14                      ble.s      Acfg_save_7
[000429e6] 3200                      move.w     d0,d1
[000429e8] 48c1                      ext.l      d1
[000429ea] 740a                      moveq.l    #10,d2
[000429ec] e5a9                      lsl.l      d2,d1
[000429ee] 93c9                      suba.l     a1,a1
[000429f0] 204d                      movea.l    a5,a0
[000429f2] 4240                      clr.w      d0
[000429f4] 4eb9 0007 61a4            jsr        setvbuf
Acfg_save_7:
[000429fa] 0c6a 0001 001c            cmpi.w     #$0001,28(a2)
[00042a00] 6d06                      blt.s      Acfg_save_8
[00042a02] 202a 001e                 move.l     30(a2),d0
[00042a06] 6604                      bne.s      Acfg_save_9
Acfg_save_8:
[00042a08] 7001                      moveq.l    #1,d0
[00042a0a] 6002                      bra.s      Acfg_save_10
Acfg_save_9:
[00042a0c] 4240                      clr.w      d0
Acfg_save_10:
[00042a0e] 3e80                      move.w     d0,(a7)
[00042a10] 4243                      clr.w      d3
[00042a12] 6000 0080                 bra        Acfg_save_11
Acfg_save_17:
[00042a16] 3003                      move.w     d3,d0
[00042a18] 48c0                      ext.l      d0
[00042a1a] e588                      lsl.l      #2,d0
[00042a1c] 206a 0016                 movea.l    22(a2),a0
[00042a20] 2870 0800                 movea.l    0(a0,d0.l),a4
[00042a24] 2054                      movea.l    (a4),a0
[00042a26] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00042a2c] 4a40                      tst.w      d0
[00042a2e] 6618                      bne.s      Acfg_save_12
[00042a30] 2f14                      move.l     (a4),-(a7)
[00042a32] 4879 000d 3642            pea.l      $000D3642
[00042a38] 486f 0008                 pea.l      8(a7)
[00042a3c] 224a                      movea.l    a2,a1
[00042a3e] 204d                      movea.l    a5,a0
[00042a40] 6100 fe88                 bsr        WriteString
[00042a44] 4fef 000c                 lea.l      12(a7),a7
Acfg_save_12:
[00042a48] 4244                      clr.w      d4
[00042a4a] 266c 0006                 movea.l    6(a4),a3
[00042a4e] 601c                      bra.s      Acfg_save_13
Acfg_save_14:
[00042a50] 2f13                      move.l     (a3),-(a7)
[00042a52] 4879 000d 3638            pea.l      $000D3638
[00042a58] 486f 0008                 pea.l      8(a7)
[00042a5c] 224a                      movea.l    a2,a1
[00042a5e] 204d                      movea.l    a5,a0
[00042a60] 6100 fe68                 bsr        WriteString
[00042a64] 4fef 000c                 lea.l      12(a7),a7
[00042a68] 5244                      addq.w     #1,d4
[00042a6a] 584b                      addq.w     #4,a3
Acfg_save_13:
[00042a6c] b86c 0004                 cmp.w      4(a4),d4
[00042a70] 6dde                      blt.s      Acfg_save_14
[00042a72] 2054                      movea.l    (a4),a0
[00042a74] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00042a7a] 4a40                      tst.w      d0
[00042a7c] 6706                      beq.s      Acfg_save_15
[00042a7e] 302c 0004                 move.w     4(a4),d0
[00042a82] 6f0e                      ble.s      Acfg_save_16
Acfg_save_15:
[00042a84] 43f9 000d 363a            lea.l      $000D363A,a1
[00042a8a] 204d                      movea.l    a5,a0
[00042a8c] 4eb9 0007 5642            jsr        fprintf
Acfg_save_16:
[00042a92] 5243                      addq.w     #1,d3
Acfg_save_11:
[00042a94] b66a 0014                 cmp.w      20(a2),d3
[00042a98] 6d00 ff7c                 blt        Acfg_save_17
[00042a9c] 3017                      move.w     (a7),d0
[00042a9e] 661c                      bne.s      Acfg_save_18
[00042aa0] 4879 000d 3648            pea.l      $000D3648
[00042aa6] 4879 000d 363a            pea.l      $000D363A
[00042aac] 486f 0008                 pea.l      8(a7)
[00042ab0] 224a                      movea.l    a2,a1
[00042ab2] 204d                      movea.l    a5,a0
[00042ab4] 6100 fe14                 bsr        WriteString
[00042ab8] 4fef 000c                 lea.l      12(a7),a7
Acfg_save_18:
[00042abc] 204d                      movea.l    a5,a0
[00042abe] 4eb9 0007 6146            jsr        fclose
[00042ac4] 426a 0012                 clr.w      18(a2)
[00042ac8] 206f 000a                 movea.l    10(a7),a0
[00042acc] 4eb9 0004 7e26            jsr        Ax_free
[00042ad2] 206f 0006                 movea.l    6(a7),a0
[00042ad6] 4eb9 0004 7e26            jsr        Ax_free
[00042adc] 7001                      moveq.l    #1,d0
Acfg_save_6:
[00042ade] 4fef 000e                 lea.l      14(a7),a7
[00042ae2] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[00042ae6] 4e75                      rts

Acfg_getValue:
[00042ae8] 48e7 1834                 movem.l    d3-d4/a2-a3/a5,-(a7)
[00042aec] 4fef ffee                 lea.l      -18(a7),a7
[00042af0] 2a49                      movea.l    a1,a5
[00042af2] 266f 002e                 movea.l    46(a7),a3
[00042af6] 2448                      movea.l    a0,a2
[00042af8] 4243                      clr.w      d3
[00042afa] 4213                      clr.b      (a3)
[00042afc] 2f2f 002a                 move.l     42(a7),-(a7)
[00042b00] 41ef 0004                 lea.l      4(a7),a0
[00042b04] 4eb9 0004 331c            jsr        InitCfgSearch
[00042b0a] 584f                      addq.w     #4,a7
[00042b0c] 43d7                      lea.l      (a7),a1
[00042b0e] 204a                      movea.l    a2,a0
[00042b10] 4eb9 0004 3386            jsr        SearchCfgString
[00042b16] 202f 0004                 move.l     4(a7),d0
[00042b1a] 6716                      beq.s      Acfg_getValue_1
[00042b1c] 322f 0010                 move.w     16(a7),d1
[00042b20] 6b10                      bmi.s      Acfg_getValue_1
[00042b22] 242f 000c                 move.l     12(a7),d2
[00042b26] 670a                      beq.s      Acfg_getValue_1
[00042b28] 4a82                      tst.l      d2
[00042b2a] 6704                      beq.s      Acfg_getValue_2
[00042b2c] 7601                      moveq.l    #1,d3
[00042b2e] 6002                      bra.s      Acfg_getValue_1
Acfg_getValue_2:
[00042b30] 4243                      clr.w      d3
Acfg_getValue_1:
[00042b32] 4a43                      tst.w      d3
[00042b34] 6600 008a                 bne        Acfg_getValue_3
[00042b38] 202a 0008                 move.l     8(a2),d0
[00042b3c] 6700 0082                 beq        Acfg_getValue_3
[00042b40] 2040                      movea.l    d0,a0
[00042b42] 4eb9 0007 69b0            jsr        strlen
[00042b48] 2800                      move.l     d0,d4
[00042b4a] 2057                      movea.l    (a7),a0
[00042b4c] 4eb9 0007 69b0            jsr        strlen
[00042b52] d880                      add.l      d0,d4
[00042b54] 206f 0008                 movea.l    8(a7),a0
[00042b58] 4eb9 0007 69b0            jsr        strlen
[00042b5e] d880                      add.l      d0,d4
[00042b60] 4a84                      tst.l      d4
[00042b62] 6f5c                      ble.s      Acfg_getValue_3
[00042b64] 7001                      moveq.l    #1,d0
[00042b66] d084                      add.l      d4,d0
[00042b68] 4eb9 0004 7cc8            jsr        Ax_malloc
[00042b6e] 2a48                      movea.l    a0,a5
[00042b70] 200d                      move.l     a5,d0
[00042b72] 674c                      beq.s      Acfg_getValue_3
[00042b74] 2f2f 0008                 move.l     8(a7),-(a7)
[00042b78] 2f2f 0004                 move.l     4(a7),-(a7)
[00042b7c] 2f2a 0008                 move.l     8(a2),-(a7)
[00042b80] 7003                      moveq.l    #3,d0
[00042b82] 4eb9 0004 3ac8            jsr        Ast_add
[00042b88] 4fef 000c                 lea.l      12(a7),a7
[00042b8c] 206f 0008                 movea.l    8(a7),a0
[00042b90] 4eb9 0004 371c            jsr        Ast_delete
[00042b96] 2f4d 0008                 move.l     a5,8(a7)
[00042b9a] 2079 0010 1f12            movea.l    ACSblk,a0
[00042ba0] 2f28 028c                 move.l     652(a0),-(a7)
[00042ba4] 70ff                      moveq.l    #-1,d0
[00042ba6] 43ef 0004                 lea.l      4(a7),a1
[00042baa] 204a                      movea.l    a2,a0
[00042bac] 4eb9 0004 33c0            jsr        SearchCfgNameInStrings
[00042bb2] 584f                      addq.w     #4,a7
[00042bb4] 202f 000c                 move.l     12(a7),d0
[00042bb8] 6704                      beq.s      Acfg_getValue_4
[00042bba] 7601                      moveq.l    #1,d3
[00042bbc] 6002                      bra.s      Acfg_getValue_3
Acfg_getValue_4:
[00042bbe] 4243                      clr.w      d3
Acfg_getValue_3:
[00042bc0] 4a43                      tst.w      d3
[00042bc2] 6712                      beq.s      Acfg_getValue_5
[00042bc4] 226f 000c                 movea.l    12(a7),a1
[00042bc8] 204b                      movea.l    a3,a0
[00042bca] 4eb9 0007 6950            jsr        strcpy
[00042bd0] 4eb9 0004 383a            jsr        Ast_alltrim
Acfg_getValue_5:
[00042bd6] 2057                      movea.l    (a7),a0
[00042bd8] 4eb9 0004 371c            jsr        Ast_delete
[00042bde] 206f 0008                 movea.l    8(a7),a0
[00042be2] 4eb9 0004 371c            jsr        Ast_delete
[00042be8] 204b                      movea.l    a3,a0
[00042bea] 4fef 0012                 lea.l      18(a7),a7
[00042bee] 4cdf 2c18                 movem.l    (a7)+,d3-d4/a2-a3/a5
[00042bf2] 4e75                      rts

Acfg_setValue:
[00042bf4] 48e7 182c                 movem.l    d3-d4/a2/a4-a5,-(a7)
[00042bf8] 4fef ffee                 lea.l      -18(a7),a7
[00042bfc] 2a49                      movea.l    a1,a5
[00042bfe] 286f 002e                 movea.l    46(a7),a4
[00042c02] 2448                      movea.l    a0,a2
[00042c04] 4243                      clr.w      d3
[00042c06] 2f2f 002a                 move.l     42(a7),-(a7)
[00042c0a] 41ef 0004                 lea.l      4(a7),a0
[00042c0e] 4eb9 0004 331c            jsr        InitCfgSearch
[00042c14] 584f                      addq.w     #4,a7
[00042c16] 43d7                      lea.l      (a7),a1
[00042c18] 204a                      movea.l    a2,a0
[00042c1a] 4eb9 0004 3386            jsr        SearchCfgString
[00042c20] 202f 0004                 move.l     4(a7),d0
[00042c24] 660e                      bne.s      Acfg_setValue_1
[00042c26] 2257                      movea.l    (a7),a1
[00042c28] 204a                      movea.l    a2,a0
[00042c2a] 4eb9 0004 356e            jsr        CreateCfgGruppe
[00042c30] 2f48 0004                 move.l     a0,4(a7)
Acfg_setValue_1:
[00042c34] 202f 0004                 move.l     4(a7),d0
[00042c38] 6700 00ee                 beq        Acfg_setValue_2
[00042c3c] 206f 0008                 movea.l    8(a7),a0
[00042c40] 4eb9 0007 69b0            jsr        strlen
[00042c46] 2800                      move.l     d0,d4
[00042c48] 204c                      movea.l    a4,a0
[00042c4a] 4eb9 0007 69b0            jsr        strlen
[00042c50] d880                      add.l      d0,d4
[00042c52] 5484                      addq.l     #2,d4
[00042c54] 2004                      move.l     d4,d0
[00042c56] 4eb9 0004 7cc8            jsr        Ax_malloc
[00042c5c] 2a48                      movea.l    a0,a5
[00042c5e] 2f0c                      move.l     a4,-(a7)
[00042c60] 4879 000d 364b            pea.l      $000D364B
[00042c66] 2f2f 0010                 move.l     16(a7),-(a7)
[00042c6a] 7003                      moveq.l    #3,d0
[00042c6c] 4eb9 0004 3ac8            jsr        Ast_add
[00042c72] 4fef 000c                 lea.l      12(a7),a7
[00042c76] 302f 0010                 move.w     16(a7),d0
[00042c7a] 6b06                      bmi.s      Acfg_setValue_3
[00042c7c] 222f 000c                 move.l     12(a7),d1
[00042c80] 6618                      bne.s      Acfg_setValue_4
Acfg_setValue_3:
[00042c82] 224d                      movea.l    a5,a1
[00042c84] 206f 0004                 movea.l    4(a7),a0
[00042c88] 4eb9 0004 3620            jsr        CreateCfgString
[00042c8e] 3600                      move.w     d0,d3
[00042c90] 357c 0001 0012            move.w     #$0001,18(a2)
[00042c96] 6000 0090                 bra        Acfg_setValue_2
Acfg_setValue_4:
[00042c9a] 302a 000c                 move.w     12(a2),d0
[00042c9e] 6728                      beq.s      Acfg_setValue_5
[00042ca0] 322f 0010                 move.w     16(a7),d1
[00042ca4] 48c1                      ext.l      d1
[00042ca6] e589                      lsl.l      #2,d1
[00042ca8] 206f 0004                 movea.l    4(a7),a0
[00042cac] 2268 0006                 movea.l    6(a0),a1
[00042cb0] 2271 1800                 movea.l    0(a1,d1.l),a1
[00042cb4] 204d                      movea.l    a5,a0
[00042cb6] 4eb9 0004 3856            jsr        Ast_cmp
[00042cbc] 4a40                      tst.w      d0
[00042cbe] 6604                      bne.s      Acfg_setValue_6
[00042cc0] 7801                      moveq.l    #1,d4
[00042cc2] 6002                      bra.s      Acfg_setValue_7
Acfg_setValue_6:
[00042cc4] 4244                      clr.w      d4
Acfg_setValue_7:
[00042cc6] 6026                      bra.s      Acfg_setValue_8
Acfg_setValue_5:
[00042cc8] 302f 0010                 move.w     16(a7),d0
[00042ccc] 48c0                      ext.l      d0
[00042cce] e588                      lsl.l      #2,d0
[00042cd0] 206f 0004                 movea.l    4(a7),a0
[00042cd4] 2268 0006                 movea.l    6(a0),a1
[00042cd8] 2271 0800                 movea.l    0(a1,d0.l),a1
[00042cdc] 204d                      movea.l    a5,a0
[00042cde] 4eb9 0004 38ac            jsr        Ast_icmp
[00042ce4] 4a40                      tst.w      d0
[00042ce6] 6604                      bne.s      Acfg_setValue_9
[00042ce8] 7801                      moveq.l    #1,d4
[00042cea] 6002                      bra.s      Acfg_setValue_8
Acfg_setValue_9:
[00042cec] 4244                      clr.w      d4
Acfg_setValue_8:
[00042cee] 4a44                      tst.w      d4
[00042cf0] 6634                      bne.s      Acfg_setValue_10
[00042cf2] 302f 0010                 move.w     16(a7),d0
[00042cf6] 48c0                      ext.l      d0
[00042cf8] e588                      lsl.l      #2,d0
[00042cfa] 206f 0004                 movea.l    4(a7),a0
[00042cfe] 2268 0006                 movea.l    6(a0),a1
[00042d02] 2071 0800                 movea.l    0(a1,d0.l),a0
[00042d06] 4eb9 0004 371c            jsr        Ast_delete
[00042d0c] 302f 0010                 move.w     16(a7),d0
[00042d10] 48c0                      ext.l      d0
[00042d12] e588                      lsl.l      #2,d0
[00042d14] 206f 0004                 movea.l    4(a7),a0
[00042d18] 2268 0006                 movea.l    6(a0),a1
[00042d1c] 238d 0800                 move.l     a5,0(a1,d0.l)
[00042d20] 357c 0001 0012            move.w     #$0001,18(a2)
Acfg_setValue_10:
[00042d26] 7601                      moveq.l    #1,d3
Acfg_setValue_2:
[00042d28] 2057                      movea.l    (a7),a0
[00042d2a] 4eb9 0004 371c            jsr        Ast_delete
[00042d30] 206f 0008                 movea.l    8(a7),a0
[00042d34] 4eb9 0004 371c            jsr        Ast_delete
[00042d3a] 4a43                      tst.w      d3
[00042d3c] 6704                      beq.s      Acfg_setValue_11
[00042d3e] 204c                      movea.l    a4,a0
[00042d40] 6006                      bra.s      Acfg_setValue_12
Acfg_setValue_11:
[00042d42] 41f9 000d 3626            lea.l      $000D3626,a0
Acfg_setValue_12:
[00042d48] 4fef 0012                 lea.l      18(a7),a7
[00042d4c] 4cdf 3418                 movem.l    (a7)+,d3-d4/a2/a4-a5
[00042d50] 4e75                      rts

Acfg_clearValue:
[00042d52] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00042d56] 4fef ffee                 lea.l      -18(a7),a7
[00042d5a] 266f 0026                 movea.l    38(a7),a3
[00042d5e] 2448                      movea.l    a0,a2
[00042d60] 4243                      clr.w      d3
[00042d62] 4213                      clr.b      (a3)
[00042d64] 2f2f 0022                 move.l     34(a7),-(a7)
[00042d68] 41ef 0004                 lea.l      4(a7),a0
[00042d6c] 4eb9 0004 331c            jsr        InitCfgSearch
[00042d72] 584f                      addq.w     #4,a7
[00042d74] 43d7                      lea.l      (a7),a1
[00042d76] 204a                      movea.l    a2,a0
[00042d78] 4eb9 0004 3386            jsr        SearchCfgString
[00042d7e] 202f 0004                 move.l     4(a7),d0
[00042d82] 672c                      beq.s      Acfg_clearValue_1
[00042d84] 322f 0010                 move.w     16(a7),d1
[00042d88] 6b26                      bmi.s      Acfg_clearValue_1
[00042d8a] 242f 000c                 move.l     12(a7),d2
[00042d8e] 6720                      beq.s      Acfg_clearValue_1
[00042d90] 2242                      movea.l    d2,a1
[00042d92] 204b                      movea.l    a3,a0
[00042d94] 4eb9 0007 6950            jsr        strcpy
[00042d9a] 4eb9 0004 383a            jsr        Ast_alltrim
[00042da0] 302f 0010                 move.w     16(a7),d0
[00042da4] 206f 0004                 movea.l    4(a7),a0
[00042da8] 4eb9 0004 367a            jsr        DeleteCfgString
[00042dae] 3600                      move.w     d0,d3
Acfg_clearValue_1:
[00042db0] 2057                      movea.l    (a7),a0
[00042db2] 4eb9 0004 371c            jsr        Ast_delete
[00042db8] 206f 0008                 movea.l    8(a7),a0
[00042dbc] 4eb9 0004 371c            jsr        Ast_delete
[00042dc2] 4a43                      tst.w      d3
[00042dc4] 6704                      beq.s      Acfg_clearValue_2
[00042dc6] 204b                      movea.l    a3,a0
[00042dc8] 6006                      bra.s      Acfg_clearValue_3
Acfg_clearValue_2:
[00042dca] 41f9 000d 3626            lea.l      $000D3626,a0
Acfg_clearValue_3:
[00042dd0] 4fef 0012                 lea.l      18(a7),a7
[00042dd4] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00042dd8] 4e75                      rts

Acfg_getString:
[00042dda] 4879 0010 2652            pea.l      s_val
[00042de0] 2f2f 0008                 move.l     8(a7),-(a7)
[00042de4] 6100 fd02                 bsr        Acfg_getValue
[00042de8] 504f                      addq.w     #8,a7
[00042dea] 4e75                      rts

Acfg_getLong:
[00042dec] 4fef e000                 lea.l      -8192(a7),a7
[00042df0] 4857                      pea.l      (a7)
[00042df2] 2f2f 2008                 move.l     8200(a7),-(a7)
[00042df6] 6100 fcf0                 bsr        Acfg_getValue
[00042dfa] 504f                      addq.w     #8,a7
[00042dfc] 4eb9 0007 67a0            jsr        atol
[00042e02] 4fef 2000                 lea.l      8192(a7),a7
[00042e06] 4e75                      rts

Acfg_setLong:
[00042e08] 2f0b                      move.l     a3,-(a7)
[00042e0a] 2f0c                      move.l     a4,-(a7)
[00042e0c] 4fef ffea                 lea.l      -22(a7),a7
[00042e10] 2848                      movea.l    a0,a4
[00042e12] 2649                      movea.l    a1,a3
[00042e14] 2f00                      move.l     d0,-(a7)
[00042e16] 43f9 000d 364d            lea.l      $000D364D,a1
[00042e1c] 41ef 0004                 lea.l      4(a7),a0
[00042e20] 4eb9 0007 5680            jsr        sprintf
[00042e26] 584f                      addq.w     #4,a7
[00042e28] 41d7                      lea.l      (a7),a0
[00042e2a] 4eb9 0004 383a            jsr        Ast_alltrim
[00042e30] 4857                      pea.l      (a7)
[00042e32] 2f2f 0026                 move.l     38(a7),-(a7)
[00042e36] 224b                      movea.l    a3,a1
[00042e38] 204c                      movea.l    a4,a0
[00042e3a] 6100 fdb8                 bsr        Acfg_setValue
[00042e3e] 504f                      addq.w     #8,a7
[00042e40] 4eb9 0007 67a0            jsr        atol
[00042e46] 4fef 0016                 lea.l      22(a7),a7
[00042e4a] 285f                      movea.l    (a7)+,a4
[00042e4c] 265f                      movea.l    (a7)+,a3
[00042e4e] 4e75                      rts

Acfg_getChar:
[00042e50] 4fef dff6                 lea.l      -8202(a7),a7
[00042e54] 4857                      pea.l      (a7)
[00042e56] 2f2f 2016                 move.l     8214(a7),-(a7)
[00042e5a] 6100 fc8c                 bsr        Acfg_getValue
[00042e5e] 504f                      addq.w     #8,a7
[00042e60] 486f 2000                 pea.l      8192(a7)
[00042e64] 4eb9 0007 3d92            jsr        atof
[00042e6a] 584f                      addq.w     #4,a7
[00042e6c] 206f 200e                 movea.l    8206(a7),a0
[00042e70] 43ef 2000                 lea.l      8192(a7),a1
[00042e74] 20d9                      move.l     (a1)+,(a0)+
[00042e76] 20d9                      move.l     (a1)+,(a0)+
[00042e78] 30d9                      move.w     (a1)+,(a0)+
[00042e7a] 4fef 200a                 lea.l      8202(a7),a7
[00042e7e] 4e75                      rts

Acfg_setChar:
[00042e80] 48e7 001c                 movem.l    a3-a5,-(a7)
[00042e84] 4fef ffc2                 lea.l      -62(a7),a7
[00042e88] 2a48                      movea.l    a0,a5
[00042e8a] 2849                      movea.l    a1,a4
[00042e8c] 41ef 0060                 lea.l      96(a7),a0
[00042e90] 2f20                      move.l     -(a0),-(a7)
[00042e92] 2f20                      move.l     -(a0),-(a7)
[00042e94] 3f20                      move.w     -(a0),-(a7)
[00042e96] 43f9 000d 3651            lea.l      $000D3651,a1
[00042e9c] 41ef 000a                 lea.l      10(a7),a0
[00042ea0] 4eb9 0007 5680            jsr        sprintf
[00042ea6] 4fef 000a                 lea.l      10(a7),a7
[00042eaa] 41d7                      lea.l      (a7),a0
[00042eac] 4eb9 0004 383a            jsr        Ast_alltrim
[00042eb2] 702e                      moveq.l    #46,d0
[00042eb4] 41d7                      lea.l      (a7),a0
[00042eb6] 4eb9 0007 68e2            jsr        strrchr
[00042ebc] 2648                      movea.l    a0,a3
[00042ebe] 4240                      clr.w      d0
[00042ec0] 41d7                      lea.l      (a7),a0
[00042ec2] 4eb9 0007 68e2            jsr        strrchr
[00042ec8] 5348                      subq.w     #1,a0
[00042eca] 6002                      bra.s      Acfg_setChar_1
Acfg_setChar_3:
[00042ecc] 5348                      subq.w     #1,a0
Acfg_setChar_1:
[00042ece] 0c10 0030                 cmpi.b     #$30,(a0)
[00042ed2] 6604                      bne.s      Acfg_setChar_2
[00042ed4] b7c8                      cmpa.l     a0,a3
[00042ed6] 65f4                      bcs.s      Acfg_setChar_3
Acfg_setChar_2:
[00042ed8] b7c8                      cmpa.l     a0,a3
[00042eda] 6406                      bcc.s      Acfg_setChar_4
[00042edc] 4228 0001                 clr.b      1(a0)
[00042ee0] 6006                      bra.s      Acfg_setChar_5
Acfg_setChar_4:
[00042ee2] b7c8                      cmpa.l     a0,a3
[00042ee4] 6602                      bne.s      Acfg_setChar_5
[00042ee6] 4210                      clr.b      (a0)
Acfg_setChar_5:
[00042ee8] 4857                      pea.l      (a7)
[00042eea] 2f2f 0056                 move.l     86(a7),-(a7)
[00042eee] 224c                      movea.l    a4,a1
[00042ef0] 204d                      movea.l    a5,a0
[00042ef2] 6100 fd00                 bsr        Acfg_setValue
[00042ef6] 504f                      addq.w     #8,a7
[00042ef8] 486f 0034                 pea.l      52(a7)
[00042efc] 4eb9 0007 3d92            jsr        atof
[00042f02] 584f                      addq.w     #4,a7
[00042f04] 206f 004e                 movea.l    78(a7),a0
[00042f08] 43ef 0034                 lea.l      52(a7),a1
[00042f0c] 20d9                      move.l     (a1)+,(a0)+
[00042f0e] 20d9                      move.l     (a1)+,(a0)+
[00042f10] 30d9                      move.w     (a1)+,(a0)+
[00042f12] 4fef 003e                 lea.l      62(a7),a7
[00042f16] 4cdf 3800                 movem.l    (a7)+,a3-a5
[00042f1a] 4e75                      rts

Acfg_getBool:
[00042f1c] 4fef ffcc                 lea.l      -52(a7),a7
[00042f20] 4857                      pea.l      (a7)
[00042f22] 2f2f 003c                 move.l     60(a7),-(a7)
[00042f26] 6100 fbc0                 bsr        Acfg_getValue
[00042f2a] 504f                      addq.w     #8,a7
[00042f2c] 1010                      move.b     (a0),d0
[00042f2e] 4fef 0034                 lea.l      52(a7),a7
[00042f32] 4e75                      rts

Acfg_setBool:
[00042f34] 554f                      subq.w     #2,a7
[00042f36] 1e80                      move.b     d0,(a7)
[00042f38] 422f 0001                 clr.b      1(a7)
[00042f3c] 4857                      pea.l      (a7)
[00042f3e] 2f2f 000a                 move.l     10(a7),-(a7)
[00042f42] 6100 fcb0                 bsr        Acfg_setValue
[00042f46] 504f                      addq.w     #8,a7
[00042f48] 1010                      move.b     (a0),d0
[00042f4a] 544f                      addq.w     #2,a7
[00042f4c] 4e75                      rts

Acfg_isChanged:
[00042f4e] 2f0a                      move.l     a2,-(a7)
[00042f50] 4fef fff6                 lea.l      -10(a7),a7
[00042f54] 2449                      movea.l    a1,a2
[00042f56] 43f9 000d 3655            lea.l      $000D3655,a1
[00042f5c] 2f09                      move.l     a1,-(a7)
[00042f5e] 486f 0004                 pea.l      4(a7)
[00042f62] 2f2f 001a                 move.l     26(a7),-(a7)
[00042f66] 224a                      movea.l    a2,a1
[00042f68] 6100 fb7e                 bsr        Acfg_getValue
[00042f6c] 504f                      addq.w     #8,a7
[00042f6e] 225f                      movea.l    (a7)+,a1
[00042f70] 4eb9 0004 38ac            jsr        Ast_icmp
[00042f76] 4a40                      tst.w      d0
[00042f78] 6604                      bne.s      Acfg_isChanged_1
[00042f7a] 7001                      moveq.l    #1,d0
[00042f7c] 6002                      bra.s      Acfg_isChanged_2
Acfg_isChanged_1:
[00042f7e] 4240                      clr.w      d0
Acfg_isChanged_2:
[00042f80] 4fef 000a                 lea.l      10(a7),a7
[00042f84] 245f                      movea.l    (a7)+,a2
[00042f86] 4e75                      rts

Acfg_grpAnzahl:
[00042f88] 2f0a                      move.l     a2,-(a7)
[00042f8a] 2f0b                      move.l     a3,-(a7)
[00042f8c] 2648                      movea.l    a0,a3
[00042f8e] 2449                      movea.l    a1,a2
[00042f90] 43f9 000d 3655            lea.l      $000D3655,a1
[00042f96] 2f09                      move.l     a1,-(a7)
[00042f98] 4a40                      tst.w      d0
[00042f9a] 6702                      beq.s      Acfg_grpAnzahl_1
[00042f9c] 6006                      bra.s      Acfg_grpAnzahl_2
Acfg_grpAnzahl_1:
[00042f9e] 43f9 000d 365a            lea.l      $000D365A,a1
Acfg_grpAnzahl_2:
[00042fa4] 2f09                      move.l     a1,-(a7)
[00042fa6] 2f2f 0014                 move.l     20(a7),-(a7)
[00042faa] 224a                      movea.l    a2,a1
[00042fac] 204b                      movea.l    a3,a0
[00042fae] 6100 fc44                 bsr        Acfg_setValue
[00042fb2] 504f                      addq.w     #8,a7
[00042fb4] 225f                      movea.l    (a7)+,a1
[00042fb6] 4eb9 0004 38ac            jsr        Ast_icmp
[00042fbc] 4a40                      tst.w      d0
[00042fbe] 6604                      bne.s      Acfg_grpAnzahl_3
[00042fc0] 7001                      moveq.l    #1,d0
[00042fc2] 6002                      bra.s      Acfg_grpAnzahl_4
Acfg_grpAnzahl_3:
[00042fc4] 4240                      clr.w      d0
Acfg_grpAnzahl_4:
[00042fc6] 265f                      movea.l    (a7)+,a3
[00042fc8] 245f                      movea.l    (a7)+,a2
[00042fca] 4e75                      rts

Acfg_grpName:
[00042fcc] 3028 0012                 move.w     18(a0),d0
[00042fd0] 4e75                      rts

Acfg_strAnzahl:
[00042fd2] 3028 0014                 move.w     20(a0),d0
[00042fd6] 4e75                      rts

Acfg_isGroupPresent:
[00042fd8] 2f0a                      move.l     a2,-(a7)
[00042fda] 2f0b                      move.l     a3,-(a7)
[00042fdc] 2649                      movea.l    a1,a3
[00042fde] 2448                      movea.l    a0,a2
[00042fe0] 4a40                      tst.w      d0
[00042fe2] 6b1e                      bmi.s      Acfg_isGroupPresent_1
[00042fe4] b06a 0014                 cmp.w      20(a2),d0
[00042fe8] 6c18                      bge.s      Acfg_isGroupPresent_1
[00042fea] 48c0                      ext.l      d0
[00042fec] e588                      lsl.l      #2,d0
[00042fee] 226a 0016                 movea.l    22(a2),a1
[00042ff2] 2071 0800                 movea.l    0(a1,d0.l),a0
[00042ff6] 2250                      movea.l    (a0),a1
[00042ff8] 204b                      movea.l    a3,a0
[00042ffa] 4eb9 0007 6950            jsr        strcpy
[00043000] 6002                      bra.s      Acfg_isGroupPresent_2
Acfg_isGroupPresent_1:
[00043002] 91c8                      suba.l     a0,a0
Acfg_isGroupPresent_2:
[00043004] 265f                      movea.l    (a7)+,a3
[00043006] 245f                      movea.l    (a7)+,a2
[00043008] 4e75                      rts

Acfg_isStringPresent:
[0004300a] 4a40                      tst.w      d0
[0004300c] 6b1a                      bmi.s      Acfg_isStringPresent_1
[0004300e] b068 0014                 cmp.w      20(a0),d0
[00043012] 6c14                      bge.s      Acfg_isStringPresent_1
[00043014] 3200                      move.w     d0,d1
[00043016] 48c1                      ext.l      d1
[00043018] e589                      lsl.l      #2,d1
[0004301a] 2268 0016                 movea.l    22(a0),a1
[0004301e] 2271 1800                 movea.l    0(a1,d1.l),a1
[00043022] 3029 0004                 move.w     4(a1),d0
[00043026] 4e75                      rts
Acfg_isStringPresent_1:
[00043028] 4240                      clr.w      d0
[0004302a] 4e75                      rts

Acfg_strName:
[0004302c] 2f0a                      move.l     a2,-(a7)
[0004302e] 4fef ffee                 lea.l      -18(a7),a7
[00043032] 2448                      movea.l    a0,a2
[00043034] 4879 000d 3626            pea.l      $000D3626
[0004303a] 41ef 0004                 lea.l      4(a7),a0
[0004303e] 4eb9 0004 331c            jsr        InitCfgSearch
[00043044] 584f                      addq.w     #4,a7
[00043046] 43d7                      lea.l      (a7),a1
[00043048] 204a                      movea.l    a2,a0
[0004304a] 4eb9 0004 3436            jsr        SearchGruppe
[00043050] 2008                      move.l     a0,d0
[00043052] 6604                      bne.s      Acfg_strName_1
[00043054] 4240                      clr.w      d0
[00043056] 6002                      bra.s      Acfg_strName_2
Acfg_strName_1:
[00043058] 7001                      moveq.l    #1,d0
Acfg_strName_2:
[0004305a] 4fef 0012                 lea.l      18(a7),a7
[0004305e] 245f                      movea.l    (a7)+,a2
[00043060] 4e75                      rts

Acfg_strValue:
[00043062] 2f0a                      move.l     a2,-(a7)
[00043064] 4fef ffee                 lea.l      -18(a7),a7
[00043068] 2448                      movea.l    a0,a2
[0004306a] 2f2f 001a                 move.l     26(a7),-(a7)
[0004306e] 41ef 0004                 lea.l      4(a7),a0
[00043072] 4eb9 0004 331c            jsr        InitCfgSearch
[00043078] 584f                      addq.w     #4,a7
[0004307a] 43d7                      lea.l      (a7),a1
[0004307c] 204a                      movea.l    a2,a0
[0004307e] 4eb9 0004 3386            jsr        SearchCfgString
[00043084] 0c6f ffff 0010            cmpi.w     #$FFFF,16(a7)
[0004308a] 6604                      bne.s      Acfg_strValue_1
[0004308c] 4240                      clr.w      d0
[0004308e] 6002                      bra.s      Acfg_strValue_2
Acfg_strValue_1:
[00043090] 7001                      moveq.l    #1,d0
Acfg_strValue_2:
[00043092] 4fef 0012                 lea.l      18(a7),a7
[00043096] 245f                      movea.l    (a7)+,a2
[00043098] 4e75                      rts

Acfg_strIsComment:
[0004309a] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[0004309e] 2848                      movea.l    a0,a4
[000430a0] 3600                      move.w     d0,d3
[000430a2] 3801                      move.w     d1,d4
[000430a4] 2449                      movea.l    a1,a2
[000430a6] 4211                      clr.b      (a1)
[000430a8] 4a40                      tst.w      d0
[000430aa] 6b5a                      bmi.s      Acfg_strIsComment_1
[000430ac] b068 0014                 cmp.w      20(a0),d0
[000430b0] 6c54                      bge.s      Acfg_strIsComment_1
[000430b2] 48c0                      ext.l      d0
[000430b4] e588                      lsl.l      #2,d0
[000430b6] 2268 0016                 movea.l    22(a0),a1
[000430ba] 2671 0800                 movea.l    0(a1,d0.l),a3
[000430be] 4a41                      tst.w      d1
[000430c0] 6b44                      bmi.s      Acfg_strIsComment_1
[000430c2] b26b 0004                 cmp.w      4(a3),d1
[000430c6] 6c3e                      bge.s      Acfg_strIsComment_1
[000430c8] 3003                      move.w     d3,d0
[000430ca] 4eb9 0004 3198            jsr        x43198
[000430d0] 4a40                      tst.w      d0
[000430d2] 6632                      bne.s      Acfg_strIsComment_1
[000430d4] 3004                      move.w     d4,d0
[000430d6] 48c0                      ext.l      d0
[000430d8] e588                      lsl.l      #2,d0
[000430da] 206b 0006                 movea.l    6(a3),a0
[000430de] 2670 0800                 movea.l    0(a0,d0.l),a3
[000430e2] 204b                      movea.l    a3,a0
[000430e4] 703d                      moveq.l    #61,d0
[000430e6] 4eb9 0007 68ce            jsr        strchr
[000430ec] 2848                      movea.l    a0,a4
[000430ee] 200c                      move.l     a4,d0
[000430f0] 6714                      beq.s      Acfg_strIsComment_1
[000430f2] 908b                      sub.l      a3,d0
[000430f4] 224b                      movea.l    a3,a1
[000430f6] 204a                      movea.l    a2,a0
[000430f8] 4eb9 0007 6a1a            jsr        strncpy
[000430fe] 204c                      movea.l    a4,a0
[00043100] 91cb                      suba.l     a3,a0
[00043102] 4232 8800                 clr.b      0(a2,a0.l)
Acfg_strIsComment_1:
[00043106] 204a                      movea.l    a2,a0
[00043108] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[0004310c] 4e75                      rts

Acfg_clearHeader:
[0004310e] 48e7 1818                 movem.l    d3-d4/a3-a4,-(a7)
[00043112] 3600                      move.w     d0,d3
[00043114] 3801                      move.w     d1,d4
[00043116] 2649                      movea.l    a1,a3
[00043118] 4211                      clr.b      (a1)
[0004311a] 4a40                      tst.w      d0
[0004311c] 6b72                      bmi.s      Acfg_clearHeader_1
[0004311e] b068 0014                 cmp.w      20(a0),d0
[00043122] 6c6c                      bge.s      Acfg_clearHeader_1
[00043124] 48c0                      ext.l      d0
[00043126] e588                      lsl.l      #2,d0
[00043128] 2268 0016                 movea.l    22(a0),a1
[0004312c] 2871 0800                 movea.l    0(a1,d0.l),a4
[00043130] 4a41                      tst.w      d1
[00043132] 6b5c                      bmi.s      Acfg_clearHeader_1
[00043134] b26c 0004                 cmp.w      4(a4),d1
[00043138] 6c56                      bge.s      Acfg_clearHeader_1
[0004313a] 3003                      move.w     d3,d0
[0004313c] 4eb9 0004 3198            jsr        x43198
[00043142] 4a40                      tst.w      d0
[00043144] 6720                      beq.s      Acfg_clearHeader_2
[00043146] 3004                      move.w     d4,d0
[00043148] 48c0                      ext.l      d0
[0004314a] e588                      lsl.l      #2,d0
[0004314c] 206c 0006                 movea.l    6(a4),a0
[00043150] 2270 0800                 movea.l    0(a0,d0.l),a1
[00043154] 204b                      movea.l    a3,a0
[00043156] 4eb9 0007 6950            jsr        strcpy
[0004315c] 204b                      movea.l    a3,a0
[0004315e] 4eb9 0004 383a            jsr        Ast_alltrim
[00043164] 602a                      bra.s      Acfg_clearHeader_1
Acfg_clearHeader_2:
[00043166] 3004                      move.w     d4,d0
[00043168] 48c0                      ext.l      d0
[0004316a] e588                      lsl.l      #2,d0
[0004316c] 206c 0006                 movea.l    6(a4),a0
[00043170] 2870 0800                 movea.l    0(a0,d0.l),a4
[00043174] 204c                      movea.l    a4,a0
[00043176] 703d                      moveq.l    #61,d0
[00043178] 4eb9 0007 68ce            jsr        strchr
[0004317e] 2848                      movea.l    a0,a4
[00043180] 200c                      move.l     a4,d0
[00043182] 670c                      beq.s      Acfg_clearHeader_1
[00043184] 524c                      addq.w     #1,a4
[00043186] 224c                      movea.l    a4,a1
[00043188] 204b                      movea.l    a3,a0
[0004318a] 4eb9 0007 6950            jsr        strcpy
Acfg_clearHeader_1:
[00043190] 204b                      movea.l    a3,a0
[00043192] 4cdf 1818                 movem.l    (a7)+,d3-d4/a3-a4
[00043196] 4e75                      rts

x43198:
[00043198] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0004319c] 2448                      movea.l    a0,a2
[0004319e] 4243                      clr.w      d3
[000431a0] 4a40                      tst.w      d0
[000431a2] 6b54                      bmi.s      x43198_1
[000431a4] b06a 0014                 cmp.w      20(a2),d0
[000431a8] 6c4e                      bge.s      x43198_1
[000431aa] 3400                      move.w     d0,d2
[000431ac] 48c2                      ext.l      d2
[000431ae] e58a                      lsl.l      #2,d2
[000431b0] 226a 0016                 movea.l    22(a2),a1
[000431b4] 2071 2800                 movea.l    0(a1,d2.l),a0
[000431b8] 4a41                      tst.w      d1
[000431ba] 6b3c                      bmi.s      x43198_1
[000431bc] b268 0004                 cmp.w      4(a0),d1
[000431c0] 6c36                      bge.s      x43198_1
[000431c2] 3001                      move.w     d1,d0
[000431c4] 48c0                      ext.l      d0
[000431c6] e588                      lsl.l      #2,d0
[000431c8] 2268 0006                 movea.l    6(a0),a1
[000431cc] 2671 0800                 movea.l    0(a1,d0.l),a3
[000431d0] 6002                      bra.s      x43198_2
x43198_4:
[000431d2] 524b                      addq.w     #1,a3
x43198_2:
[000431d4] 1013                      move.b     (a3),d0
[000431d6] 670a                      beq.s      x43198_3
[000431d8] 4eb9 0004 3a74            jsr        Ach_isWhite
[000431de] 4a40                      tst.w      d0
[000431e0] 66f0                      bne.s      x43198_4
x43198_3:
[000431e2] 1013                      move.b     (a3),d0
[000431e4] 6712                      beq.s      x43198_1
[000431e6] 4880                      ext.w      d0
[000431e8] 206a 0004                 movea.l    4(a2),a0
[000431ec] 4eb9 0007 68ce            jsr        strchr
[000431f2] 2008                      move.l     a0,d0
[000431f4] 6702                      beq.s      x43198_1
[000431f6] 7601                      moveq.l    #1,d3
x43198_1:
[000431f8] 3003                      move.w     d3,d0
[000431fa] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[000431fe] 4e75                      rts

x43200:
[00043200] 3f03                      move.w     d3,-(a7)
[00043202] 2f0a                      move.l     a2,-(a7)
[00043204] 2448                      movea.l    a0,a2
[00043206] 4243                      clr.w      d3
[00043208] 6016                      bra.s      x43200_1
x43200_2:
[0004320a] 3003                      move.w     d3,d0
[0004320c] 48c0                      ext.l      d0
[0004320e] e588                      lsl.l      #2,d0
[00043210] 206a 001e                 movea.l    30(a2),a0
[00043214] 2070 0800                 movea.l    0(a0,d0.l),a0
[00043218] 4eb9 0004 371c            jsr        Ast_delete
[0004321e] 5243                      addq.w     #1,d3
x43200_1:
[00043220] b66a 001c                 cmp.w      28(a2),d3
[00043224] 6de4                      blt.s      x43200_2
[00043226] 206a 001e                 movea.l    30(a2),a0
[0004322a] 4eb9 0004 7e26            jsr        Ax_free
[00043230] 42aa 001e                 clr.l      30(a2)
[00043234] 426a 001c                 clr.w      28(a2)
[00043238] 245f                      movea.l    (a7)+,a2
[0004323a] 361f                      move.w     (a7)+,d3
[0004323c] 4e75                      rts

Acfg_headAnzahl:
[0004323e] 3028 001c                 move.w     28(a0),d0
[00043242] 4e75                      rts

Acfg_setHeader:
[00043244] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[00043248] 2648                      movea.l    a0,a3
[0004324a] 3600                      move.w     d0,d3
[0004324c] 2849                      movea.l    a1,a4
[0004324e] 2448                      movea.l    a0,a2
[00043250] 6100 ffae                 bsr.w      x43200
[00043254] 3003                      move.w     d3,d0
[00043256] 48c0                      ext.l      d0
[00043258] e588                      lsl.l      #2,d0
[0004325a] 4eb9 0004 7cc8            jsr        Ax_malloc
[00043260] 2648                      movea.l    a0,a3
[00043262] 200b                      move.l     a3,d0
[00043264] 6604                      bne.s      Acfg_setHeader_1
[00043266] 91c8                      suba.l     a0,a0
[00043268] 6044                      bra.s      Acfg_setHeader_2
Acfg_setHeader_1:
[0004326a] 3203                      move.w     d3,d1
[0004326c] 48c1                      ext.l      d1
[0004326e] e589                      lsl.l      #2,d1
[00043270] 4240                      clr.w      d0
[00043272] 204b                      movea.l    a3,a0
[00043274] 4eb9 0007 712e            jsr        memset
[0004327a] 3543 001c                 move.w     d3,28(a2)
[0004327e] 254b 001e                 move.l     a3,30(a2)
[00043282] 4244                      clr.w      d4
[00043284] 6022                      bra.s      Acfg_setHeader_3
Acfg_setHeader_4:
[00043286] 3004                      move.w     d4,d0
[00043288] 48c0                      ext.l      d0
[0004328a] e588                      lsl.l      #2,d0
[0004328c] 2074 0800                 movea.l    0(a4,d0.l),a0
[00043290] 4eb9 0004 36d6            jsr        Ast_create
[00043296] 4eb9 0004 383a            jsr        Ast_alltrim
[0004329c] 3004                      move.w     d4,d0
[0004329e] 48c0                      ext.l      d0
[000432a0] e588                      lsl.l      #2,d0
[000432a2] 2788 0800                 move.l     a0,0(a3,d0.l)
[000432a6] 5244                      addq.w     #1,d4
Acfg_setHeader_3:
[000432a8] b644                      cmp.w      d4,d3
[000432aa] 6eda                      bgt.s      Acfg_setHeader_4
[000432ac] 204c                      movea.l    a4,a0
Acfg_setHeader_2:
[000432ae] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[000432b2] 4e75                      rts

Acfg_getHeader:
[000432b4] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[000432b8] 2649                      movea.l    a1,a3
[000432ba] 2448                      movea.l    a0,a2
[000432bc] 4243                      clr.w      d3
[000432be] 6026                      bra.s      Acfg_getHeader_1
Acfg_getHeader_2:
[000432c0] 3003                      move.w     d3,d0
[000432c2] 48c0                      ext.l      d0
[000432c4] e588                      lsl.l      #2,d0
[000432c6] 206a 001e                 movea.l    30(a2),a0
[000432ca] 2070 0800                 movea.l    0(a0,d0.l),a0
[000432ce] 4eb9 0004 36d6            jsr        Ast_create
[000432d4] 4eb9 0004 383a            jsr        Ast_alltrim
[000432da] 3003                      move.w     d3,d0
[000432dc] 48c0                      ext.l      d0
[000432de] e588                      lsl.l      #2,d0
[000432e0] 2788 0800                 move.l     a0,0(a3,d0.l)
[000432e4] 5243                      addq.w     #1,d3
Acfg_getHeader_1:
[000432e6] b66a 001c                 cmp.w      28(a2),d3
[000432ea] 6dd4                      blt.s      Acfg_getHeader_2
[000432ec] 204b                      movea.l    a3,a0
[000432ee] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[000432f2] 4e75                      rts

Acfg_isCfgfile:
[000432f4] 2f0a                      move.l     a2,-(a7)
[000432f6] 2f0b                      move.l     a3,-(a7)
[000432f8] 2649                      movea.l    a1,a3
[000432fa] 2448                      movea.l    a0,a2
[000432fc] 302a 000e                 move.w     14(a2),d0
[00043300] 670a                      beq.s      Acfg_isCfgfile_1
[00043302] 2050                      movea.l    (a0),a0
[00043304] 4eb9 0004 3856            jsr        Ast_cmp
[0004330a] 600a                      bra.s      Acfg_isCfgfile_2
Acfg_isCfgfile_1:
[0004330c] 224b                      movea.l    a3,a1
[0004330e] 2052                      movea.l    (a2),a0
[00043310] 4eb9 0004 38ac            jsr        Ast_icmp
Acfg_isCfgfile_2:
[00043316] 265f                      movea.l    (a7)+,a3
[00043318] 245f                      movea.l    (a7)+,a2
[0004331a] 4e75                      rts

InitCfgSearch:
[0004331c] 2f0a                      move.l     a2,-(a7)
[0004331e] 2f0b                      move.l     a3,-(a7)
[00043320] 2648                      movea.l    a0,a3
[00043322] 2449                      movea.l    a1,a2
[00043324] 42a7                      clr.l      -(a7)
[00043326] 43f9 000d 3632            lea.l      $000D3632,a1
[0004332c] 2f09                      move.l     a1,-(a7)
[0004332e] 204a                      movea.l    a2,a0
[00043330] 4eb9 0004 36d6            jsr        Ast_create
[00043336] 4eb9 0004 383a            jsr        Ast_alltrim
[0004333c] 225f                      movea.l    (a7)+,a1
[0004333e] 4eb9 0004 3c24            jsr        Ast_filter
[00043344] 584f                      addq.w     #4,a7
[00043346] 2688                      move.l     a0,(a3)
[00043348] 42ab 0004                 clr.l      4(a3)
[0004334c] 42a7                      clr.l      -(a7)
[0004334e] 43f9 000d 364b            lea.l      $000D364B,a1
[00043354] 2f09                      move.l     a1,-(a7)
[00043356] 206f 0014                 movea.l    20(a7),a0
[0004335a] 4eb9 0004 36d6            jsr        Ast_create
[00043360] 4eb9 0004 383a            jsr        Ast_alltrim
[00043366] 225f                      movea.l    (a7)+,a1
[00043368] 4eb9 0004 3c24            jsr        Ast_filter
[0004336e] 584f                      addq.w     #4,a7
[00043370] 2748 0008                 move.l     a0,8(a3)
[00043374] 42ab 000c                 clr.l      12(a3)
[00043378] 377c ffff 0010            move.w     #$FFFF,16(a3)
[0004337e] 204b                      movea.l    a3,a0
[00043380] 265f                      movea.l    (a7)+,a3
[00043382] 245f                      movea.l    (a7)+,a2
[00043384] 4e75                      rts

SearchCfgString:
[00043386] 2f0a                      move.l     a2,-(a7)
[00043388] 2f0b                      move.l     a3,-(a7)
[0004338a] 2648                      movea.l    a0,a3
[0004338c] 2449                      movea.l    a1,a2
[0004338e] 42aa 000c                 clr.l      12(a2)
[00043392] 357c ffff 0010            move.w     #$FFFF,16(a2)
[00043398] 4eb9 0004 3436            jsr        SearchGruppe
[0004339e] 2548 0004                 move.l     a0,4(a2)
[000433a2] 2008                      move.l     a0,d0
[000433a4] 6714                      beq.s      SearchCfgString_1
[000433a6] 2f28 0006                 move.l     6(a0),-(a7)
[000433aa] 3028 0004                 move.w     4(a0),d0
[000433ae] 224a                      movea.l    a2,a1
[000433b0] 204b                      movea.l    a3,a0
[000433b2] 4eb9 0004 33c0            jsr        SearchCfgNameInStrings
[000433b8] 584f                      addq.w     #4,a7
SearchCfgString_1:
[000433ba] 265f                      movea.l    (a7)+,a3
[000433bc] 245f                      movea.l    (a7)+,a2
[000433be] 4e75                      rts

SearchCfgNameInStrings:
[000433c0] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[000433c4] 2a48                      movea.l    a0,a5
[000433c6] 2849                      movea.l    a1,a4
[000433c8] 3600                      move.w     d0,d3
[000433ca] 206f 001c                 movea.l    28(a7),a0
[000433ce] 95ca                      suba.l     a2,a2
[000433d0] 4a40                      tst.w      d0
[000433d2] 6f04                      ble.s      SearchCfgNameInStrings_1
[000433d4] 2208                      move.l     a0,d1
[000433d6] 660a                      bne.s      SearchCfgNameInStrings_2
SearchCfgNameInStrings_1:
[000433d8] b67c ffff                 cmp.w      #$FFFF,d3
[000433dc] 6652                      bne.s      SearchCfgNameInStrings_3
[000433de] 2008                      move.l     a0,d0
[000433e0] 674e                      beq.s      SearchCfgNameInStrings_3
SearchCfgNameInStrings_2:
[000433e2] 4244                      clr.w      d4
[000433e4] 2448                      movea.l    a0,a2
[000433e6] 97cb                      suba.l     a3,a3
[000433e8] 6022                      bra.s      SearchCfgNameInStrings_4
SearchCfgNameInStrings_8:
[000433ea] 2012                      move.l     (a2),d0
[000433ec] 671a                      beq.s      SearchCfgNameInStrings_5
[000433ee] 2040                      movea.l    d0,a0
[000433f0] 1210                      move.b     (a0),d1
[000433f2] 6714                      beq.s      SearchCfgNameInStrings_5
[000433f4] 2f0c                      move.l     a4,-(a7)
[000433f6] 2240                      movea.l    d0,a1
[000433f8] 204d                      movea.l    a5,a0
[000433fa] 4eb9 0004 34aa            jsr        SearchCfgName
[00043400] 584f                      addq.w     #4,a7
[00043402] 2648                      movea.l    a0,a3
[00043404] 200b                      move.l     a3,d0
[00043406] 661c                      bne.s      SearchCfgNameInStrings_6
SearchCfgNameInStrings_5:
[00043408] 5244                      addq.w     #1,d4
[0004340a] 584a                      addq.w     #4,a2
SearchCfgNameInStrings_4:
[0004340c] 4a43                      tst.w      d3
[0004340e] 6f04                      ble.s      SearchCfgNameInStrings_7
[00043410] b644                      cmp.w      d4,d3
[00043412] 6ed6                      bgt.s      SearchCfgNameInStrings_8
SearchCfgNameInStrings_7:
[00043414] b67c ffff                 cmp.w      #$FFFF,d3
[00043418] 660a                      bne.s      SearchCfgNameInStrings_6
[0004341a] 2012                      move.l     (a2),d0
[0004341c] 6706                      beq.s      SearchCfgNameInStrings_6
[0004341e] 2040                      movea.l    d0,a0
[00043420] 1210                      move.b     (a0),d1
[00043422] 66c6                      bne.s      SearchCfgNameInStrings_8
SearchCfgNameInStrings_6:
[00043424] 200b                      move.l     a3,d0
[00043426] 6708                      beq.s      SearchCfgNameInStrings_3
[00043428] 2940 000c                 move.l     d0,12(a4)
[0004342c] 3944 0010                 move.w     d4,16(a4)
SearchCfgNameInStrings_3:
[00043430] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[00043434] 4e75                      rts

SearchGruppe:
[00043436] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[0004343a] 2648                      movea.l    a0,a3
[0004343c] 2449                      movea.l    a1,a2
[0004343e] 200a                      move.l     a2,d0
[00043440] 6604                      bne.s      SearchGruppe_1
[00043442] 91c8                      suba.l     a0,a0
[00043444] 605e                      bra.s      SearchGruppe_2
SearchGruppe_1:
[00043446] 4244                      clr.w      d4
[00043448] 3604                      move.w     d4,d3
[0004344a] 6044                      bra.s      SearchGruppe_3
SearchGruppe_10:
[0004344c] 3003                      move.w     d3,d0
[0004344e] 48c0                      ext.l      d0
[00043450] e588                      lsl.l      #2,d0
[00043452] 206b 0016                 movea.l    22(a3),a0
[00043456] 2870 0800                 movea.l    0(a0,d0.l),a4
[0004345a] 322b 000c                 move.w     12(a3),d1
[0004345e] 6716                      beq.s      SearchGruppe_4
[00043460] 2252                      movea.l    (a2),a1
[00043462] 2054                      movea.l    (a4),a0
[00043464] 4eb9 0004 3856            jsr        Ast_cmp
[0004346a] 4a40                      tst.w      d0
[0004346c] 6604                      bne.s      SearchGruppe_5
[0004346e] 7801                      moveq.l    #1,d4
[00043470] 6002                      bra.s      SearchGruppe_6
SearchGruppe_5:
[00043472] 4244                      clr.w      d4
SearchGruppe_6:
[00043474] 6014                      bra.s      SearchGruppe_7
SearchGruppe_4:
[00043476] 2252                      movea.l    (a2),a1
[00043478] 2054                      movea.l    (a4),a0
[0004347a] 4eb9 0004 38ac            jsr        Ast_icmp
[00043480] 4a40                      tst.w      d0
[00043482] 6604                      bne.s      SearchGruppe_8
[00043484] 7801                      moveq.l    #1,d4
[00043486] 6002                      bra.s      SearchGruppe_7
SearchGruppe_8:
[00043488] 4244                      clr.w      d4
SearchGruppe_7:
[0004348a] 4a44                      tst.w      d4
[0004348c] 660c                      bne.s      SearchGruppe_9
[0004348e] 5243                      addq.w     #1,d3
SearchGruppe_3:
[00043490] 4a44                      tst.w      d4
[00043492] 6606                      bne.s      SearchGruppe_9
[00043494] b66b 0014                 cmp.w      20(a3),d3
[00043498] 6db2                      blt.s      SearchGruppe_10
SearchGruppe_9:
[0004349a] 4a44                      tst.w      d4
[0004349c] 6704                      beq.s      SearchGruppe_11
[0004349e] 204c                      movea.l    a4,a0
[000434a0] 6002                      bra.s      SearchGruppe_2
SearchGruppe_11:
[000434a2] 91c8                      suba.l     a0,a0
SearchGruppe_2:
[000434a4] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[000434a8] 4e75                      rts

SearchCfgName:
[000434aa] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[000434ae] 2648                      movea.l    a0,a3
[000434b0] 2449                      movea.l    a1,a2
[000434b2] 6002                      bra.s      SearchCfgName_1
SearchCfgName_3:
[000434b4] 524a                      addq.w     #1,a2
SearchCfgName_1:
[000434b6] 1012                      move.b     (a2),d0
[000434b8] 670a                      beq.s      SearchCfgName_2
[000434ba] 4eb9 0004 3a74            jsr        Ach_isWhite
[000434c0] 4a40                      tst.w      d0
[000434c2] 66f0                      bne.s      SearchCfgName_3
SearchCfgName_2:
[000434c4] 1012                      move.b     (a2),d0
[000434c6] 6712                      beq.s      SearchCfgName_4
[000434c8] 4880                      ext.w      d0
[000434ca] 206b 0004                 movea.l    4(a3),a0
[000434ce] 4eb9 0007 68ce            jsr        strchr
[000434d4] 2008                      move.l     a0,d0
[000434d6] 6600 0088                 bne        SearchCfgName_5
SearchCfgName_4:
[000434da] 206f 0014                 movea.l    20(a7),a0
[000434de] 2868 0008                 movea.l    8(a0),a4
[000434e2] 7601                      moveq.l    #1,d3
[000434e4] 6034                      bra.s      SearchCfgName_6
SearchCfgName_13:
[000434e6] 302b 000c                 move.w     12(a3),d0
[000434ea] 670e                      beq.s      SearchCfgName_7
[000434ec] 1212                      move.b     (a2),d1
[000434ee] b214                      cmp.b      (a4),d1
[000434f0] 6604                      bne.s      SearchCfgName_8
[000434f2] 7601                      moveq.l    #1,d3
[000434f4] 6002                      bra.s      SearchCfgName_9
SearchCfgName_8:
[000434f6] 4243                      clr.w      d3
SearchCfgName_9:
[000434f8] 601c                      bra.s      SearchCfgName_10
SearchCfgName_7:
[000434fa] 1014                      move.b     (a4),d0
[000434fc] 4eb9 0004 372c            jsr        Ach_toupper
[00043502] 1f00                      move.b     d0,-(a7)
[00043504] 1012                      move.b     (a2),d0
[00043506] 4eb9 0004 372c            jsr        Ach_toupper
[0004350c] b01f                      cmp.b      (a7)+,d0
[0004350e] 6604                      bne.s      SearchCfgName_11
[00043510] 7601                      moveq.l    #1,d3
[00043512] 6002                      bra.s      SearchCfgName_10
SearchCfgName_11:
[00043514] 4243                      clr.w      d3
SearchCfgName_10:
[00043516] 524c                      addq.w     #1,a4
[00043518] 524a                      addq.w     #1,a2
SearchCfgName_6:
[0004351a] 4a43                      tst.w      d3
[0004351c] 6712                      beq.s      SearchCfgName_12
[0004351e] 1014                      move.b     (a4),d0
[00043520] 670e                      beq.s      SearchCfgName_12
[00043522] 0c12 003d                 cmpi.b     #$3D,(a2)
[00043526] 6708                      beq.s      SearchCfgName_12
[00043528] 1212                      move.b     (a2),d1
[0004352a] 66ba                      bne.s      SearchCfgName_13
[0004352c] 6002                      bra.s      SearchCfgName_12
SearchCfgName_15:
[0004352e] 524a                      addq.w     #1,a2
SearchCfgName_12:
[00043530] 4a43                      tst.w      d3
[00043532] 6714                      beq.s      SearchCfgName_14
[00043534] 1012                      move.b     (a2),d0
[00043536] 6710                      beq.s      SearchCfgName_14
[00043538] 4eb9 0004 3a74            jsr        Ach_isWhite
[0004353e] 4a40                      tst.w      d0
[00043540] 6706                      beq.s      SearchCfgName_14
[00043542] 0c12 003d                 cmpi.b     #$3D,(a2)
[00043546] 66e6                      bne.s      SearchCfgName_15
SearchCfgName_14:
[00043548] 4a43                      tst.w      d3
[0004354a] 6714                      beq.s      SearchCfgName_5
[0004354c] 1012                      move.b     (a2),d0
[0004354e] 6710                      beq.s      SearchCfgName_5
[00043550] b03c 003d                 cmp.b      #$3D,d0
[00043554] 660a                      bne.s      SearchCfgName_5
[00043556] b03c 003d                 cmp.b      #$3D,d0
[0004355a] 6608                      bne.s      SearchCfgName_16
[0004355c] 1214                      move.b     (a4),d1
[0004355e] 6704                      beq.s      SearchCfgName_16
SearchCfgName_5:
[00043560] 91c8                      suba.l     a0,a0
[00043562] 6004                      bra.s      SearchCfgName_17
SearchCfgName_16:
[00043564] 524a                      addq.w     #1,a2
[00043566] 204a                      movea.l    a2,a0
SearchCfgName_17:
[00043568] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0004356c] 4e75                      rts

CreateCfgGruppe:
[0004356e] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00043572] 2848                      movea.l    a0,a4
[00043574] 2649                      movea.l    a1,a3
[00043576] 700a                      moveq.l    #10,d0
[00043578] 4eb9 0004 7cc8            jsr        Ax_malloc
[0004357e] 2448                      movea.l    a0,a2
[00043580] 200a                      move.l     a2,d0
[00043582] 673e                      beq.s      CreateCfgGruppe_1
[00043584] 426a 0004                 clr.w      4(a2)
[00043588] 42aa 0006                 clr.l      6(a2)
[0004358c] 204b                      movea.l    a3,a0
[0004358e] 4eb9 0004 36d6            jsr        Ast_create
[00043594] 2488                      move.l     a0,(a2)
[00043596] 2008                      move.l     a0,d0
[00043598] 6720                      beq.s      CreateCfgGruppe_2
[0004359a] 362c 0014                 move.w     20(a4),d3
[0004359e] 7001                      moveq.l    #1,d0
[000435a0] d043                      add.w      d3,d0
[000435a2] 48c0                      ext.l      d0
[000435a4] e588                      lsl.l      #2,d0
[000435a6] 4eb9 0004 7cc8            jsr        Ax_malloc
[000435ac] 2a48                      movea.l    a0,a5
[000435ae] 200d                      move.l     a5,d0
[000435b0] 6614                      bne.s      CreateCfgGruppe_3
[000435b2] 2052                      movea.l    (a2),a0
[000435b4] 4eb9 0004 371c            jsr        Ast_delete
CreateCfgGruppe_2:
[000435ba] 204a                      movea.l    a2,a0
[000435bc] 4eb9 0004 7e26            jsr        Ax_free
CreateCfgGruppe_1:
[000435c2] 91c8                      suba.l     a0,a0
[000435c4] 6054                      bra.s      CreateCfgGruppe_4
CreateCfgGruppe_3:
[000435c6] 204b                      movea.l    a3,a0
[000435c8] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000435ce] 4a40                      tst.w      d0
[000435d0] 661e                      bne.s      CreateCfgGruppe_5
[000435d2] 3003                      move.w     d3,d0
[000435d4] 48c0                      ext.l      d0
[000435d6] e588                      lsl.l      #2,d0
[000435d8] 226c 0016                 movea.l    22(a4),a1
[000435dc] 204d                      movea.l    a5,a0
[000435de] 4eb9 0007 6f44            jsr        memcpy
[000435e4] 3003                      move.w     d3,d0
[000435e6] 48c0                      ext.l      d0
[000435e8] e588                      lsl.l      #2,d0
[000435ea] 2b8a 0800                 move.l     a2,0(a5,d0.l)
[000435ee] 6016                      bra.s      CreateCfgGruppe_6
CreateCfgGruppe_5:
[000435f0] 3003                      move.w     d3,d0
[000435f2] 48c0                      ext.l      d0
[000435f4] e588                      lsl.l      #2,d0
[000435f6] 226c 0016                 movea.l    22(a4),a1
[000435fa] 41ed 0004                 lea.l      4(a5),a0
[000435fe] 4eb9 0007 6f44            jsr        memcpy
[00043604] 2a8a                      move.l     a2,(a5)
CreateCfgGruppe_6:
[00043606] 206c 0016                 movea.l    22(a4),a0
[0004360a] 4eb9 0004 7e26            jsr        Ax_free
[00043610] 294d 0016                 move.l     a5,22(a4)
[00043614] 526c 0014                 addq.w     #1,20(a4)
[00043618] 204a                      movea.l    a2,a0
CreateCfgGruppe_4:
[0004361a] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0004361e] 4e75                      rts

CreateCfgString:
[00043620] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00043624] 2448                      movea.l    a0,a2
[00043626] 2849                      movea.l    a1,a4
[00043628] 362a 0004                 move.w     4(a2),d3
[0004362c] 7001                      moveq.l    #1,d0
[0004362e] d043                      add.w      d3,d0
[00043630] 48c0                      ext.l      d0
[00043632] e588                      lsl.l      #2,d0
[00043634] 4eb9 0004 7cc8            jsr        Ax_malloc
[0004363a] 2648                      movea.l    a0,a3
[0004363c] 200b                      move.l     a3,d0
[0004363e] 6604                      bne.s      CreateCfgString_1
[00043640] 4240                      clr.w      d0
[00043642] 6030                      bra.s      CreateCfgString_2
CreateCfgString_1:
[00043644] 3003                      move.w     d3,d0
[00043646] 48c0                      ext.l      d0
[00043648] e588                      lsl.l      #2,d0
[0004364a] 226a 0006                 movea.l    6(a2),a1
[0004364e] 204b                      movea.l    a3,a0
[00043650] 4eb9 0007 6f44            jsr        memcpy
[00043656] 3003                      move.w     d3,d0
[00043658] 48c0                      ext.l      d0
[0004365a] e588                      lsl.l      #2,d0
[0004365c] 278c 0800                 move.l     a4,0(a3,d0.l)
[00043660] 206a 0006                 movea.l    6(a2),a0
[00043664] 4eb9 0004 7e26            jsr        Ax_free
[0004366a] 254b 0006                 move.l     a3,6(a2)
[0004366e] 526a 0004                 addq.w     #1,4(a2)
[00043672] 7001                      moveq.l    #1,d0
CreateCfgString_2:
[00043674] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00043678] 4e75                      rts

DeleteCfgString:
[0004367a] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[0004367e] 2448                      movea.l    a0,a2
[00043680] 3800                      move.w     d0,d4
[00043682] 76ff                      moveq.l    #-1,d3
[00043684] d66a 0004                 add.w      4(a2),d3
[00043688] 3003                      move.w     d3,d0
[0004368a] 48c0                      ext.l      d0
[0004368c] e588                      lsl.l      #2,d0
[0004368e] 4eb9 0004 7cc8            jsr        Ax_malloc
[00043694] 2648                      movea.l    a0,a3
[00043696] 200b                      move.l     a3,d0
[00043698] 6604                      bne.s      DeleteCfgString_1
[0004369a] 4240                      clr.w      d0
[0004369c] 6032                      bra.s      DeleteCfgString_2
DeleteCfgString_1:
[0004369e] 4240                      clr.w      d0
[000436a0] 204b                      movea.l    a3,a0
[000436a2] 6014                      bra.s      DeleteCfgString_3
DeleteCfgString_5:
[000436a4] b840                      cmp.w      d0,d4
[000436a6] 670e                      beq.s      DeleteCfgString_4
[000436a8] 3200                      move.w     d0,d1
[000436aa] 48c1                      ext.l      d1
[000436ac] e589                      lsl.l      #2,d1
[000436ae] 226a 0006                 movea.l    6(a2),a1
[000436b2] 20f1 1800                 move.l     0(a1,d1.l),(a0)+
DeleteCfgString_4:
[000436b6] 5240                      addq.w     #1,d0
DeleteCfgString_3:
[000436b8] b640                      cmp.w      d0,d3
[000436ba] 6ce8                      bge.s      DeleteCfgString_5
[000436bc] 206a 0006                 movea.l    6(a2),a0
[000436c0] 4eb9 0004 7e26            jsr        Ax_free
[000436c6] 254b 0006                 move.l     a3,6(a2)
[000436ca] 536a 0004                 subq.w     #1,4(a2)
[000436ce] 7001                      moveq.l    #1,d0
DeleteCfgString_2:
[000436d0] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[000436d4] 4e75                      rts

		.data

default_info:
[000d3614] 000d3626                  dc.l $000d3626 ; no symbol found
[000d3618] 000d3627                  dc.l $000d3627 ; no symbol found
[000d361c]                           dc.b $00
[000d361d]                           dc.b $00
[000d361e]                           dc.b $00
[000d361f]                           dc.b $00
[000d3620]                           dc.b $00
[000d3621]                           dc.b $00
[000d3622]                           dc.b $00
[000d3623]                           dc.b $00
[000d3624]                           dc.b $00
[000d3625]                           dc.b $20
[000d3626]                           dc.b $00
[000d3627]                           dc.b $25
[000d3628]                           dc.w $3b00
[000d362a]                           dc.b 'cfg',0
[000d362e]                           dc.w $5c00
[000d3630]                           dc.w $7200
[000d3632]                           dc.w $5b5d
[000d3634]                           dc.b $00
[000d3635]                           dc.b '%c %s',$0a,0
[000d363c]                           dc.b '%c',$0a,0
[000d3640]                           dc.w $7700
[000d3642]                           dc.b '[%s]',$0a,0
[000d3648]                           dc.w $7878
[000d364a]                           dc.b $00
[000d364b]                           dc.b $3d
[000d364c]                           dc.b $00
[000d364d]                           dc.b '%li',0
[000d3651]                           dc.b '%lf',0
[000d3655]                           dc.b 'True',0
[000d365a]                           dc.b 'False',0
		.even

	.bss

s_val: ds.b 8192
