
init_ftext:
[00029348] 2f0a                      move.l     a2,-(a7)
[0002934a] 2f0b                      move.l     a3,-(a7)
[0002934c] 2448                      movea.l    a0,a2
[0002934e] 43f9 000b 7d8a            lea.l      data,a1
[00029354] 303c 2329                 move.w     #$2329,d0
[00029358] 266a 0004                 movea.l    4(a2),a3
[0002935c] 4e93                      jsr        (a3)
[0002935e] 265f                      movea.l    (a7)+,a3
[00029360] 245f                      movea.l    (a7)+,a2
[00029362] 4e75                      rts

minsize:
[00029364] 2079 0010 1f12            movea.l    ACSblk,a0
[0002936a] 32a8 0012                 move.w     18(a0),(a1)
[0002936e] 2079 0010 1f12            movea.l    ACSblk,a0
[00029374] 226f 0004                 movea.l    4(a7),a1
[00029378] 32a8 0014                 move.w     20(a0),(a1)
[0002937c] 4e75                      rts

object_tree:
[0002937e] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[00029382] 4fef feb8                 lea.l      -328(a7),a7
[00029386] 2f48 0144                 move.l     a0,324(a7)
[0002938a] 2449                      movea.l    a1,a2
[0002938c] 41f9 000b 7dda            lea.l      $000B7DDA,a0
[00029392] 43ef 0012                 lea.l      18(a7),a1
[00029396] 7031                      moveq.l    #49,d0
object_tree_1:
[00029398] 12d8                      move.b     (a0)+,(a1)+
[0002939a] 51c8 fffc                 dbf        d0,object_tree_1
[0002939e] 41f9 000b 78bc            lea.l      ED_FTEXT,a0
[000293a4] 4eb9 0004 9a5c            jsr        Aob_create
[000293aa] 2648                      movea.l    a0,a3
[000293ac] 200b                      move.l     a3,d0
[000293ae] 6606                      bne.s      object_tree_2
[000293b0] 91c8                      suba.l     a0,a0
[000293b2] 6000 02c6                 bra        object_tree_3
object_tree_2:
[000293b6] 49eb 0048                 lea.l      72(a3),a4
[000293ba] 7016                      moveq.l    #22,d0
[000293bc] c06a 0008                 and.w      8(a2),d0
[000293c0] 816c 0008                 or.w       d0,8(a4)
[000293c4] 703f                      moveq.l    #63,d0
[000293c6] c06a 000a                 and.w      10(a2),d0
[000293ca] 816c 000a                 or.w       d0,10(a4)
[000293ce] 45f9 0010 1f12            lea.l      ACSblk,a2
[000293d4] 2052                      movea.l    (a2),a0
[000293d6] 2ea8 0258                 move.l     600(a0),(a7)
[000293da] 2f4c 0004                 move.l     a4,4(a7)
[000293de] 3f7c 0003 0008            move.w     #$0003,8(a7)
[000293e4] 43d7                      lea.l      (a7),a1
[000293e6] 7009                      moveq.l    #9,d0
[000293e8] 204c                      movea.l    a4,a0
[000293ea] 4eb9 0005 bae4            jsr        Auo_ftext
[000293f0] 700a                      moveq.l    #10,d0
[000293f2] 224b                      movea.l    a3,a1
[000293f4] 2052                      movea.l    (a2),a0
[000293f6] 2068 0258                 movea.l    600(a0),a0
[000293fa] 4eb9 0002 f23c            jsr        oe_beself
[00029400] 700b                      moveq.l    #11,d0
[00029402] 224b                      movea.l    a3,a1
[00029404] 2052                      movea.l    (a2),a0
[00029406] 2068 0258                 movea.l    600(a0),a0
[0002940a] 4eb9 0002 f23c            jsr        oe_beself
[00029410] 702b                      moveq.l    #43,d0
[00029412] 224b                      movea.l    a3,a1
[00029414] 2052                      movea.l    (a2),a0
[00029416] 2068 0258                 movea.l    600(a0),a0
[0002941a] 4eb9 0002 f23c            jsr        oe_beself
[00029420] 702d                      moveq.l    #45,d0
[00029422] 224b                      movea.l    a3,a1
[00029424] 2052                      movea.l    (a2),a0
[00029426] 2068 0258                 movea.l    600(a0),a0
[0002942a] 4eb9 0002 f23c            jsr        oe_beself
[00029430] 2f6c 000c 000a            move.l     12(a4),10(a7)
[00029436] 4bef 000e                 lea.l      14(a7),a5
[0002943a] 4855                      pea.l      (a5)
[0002943c] 43f9 000b 7e3e            lea.l      $000B7E3E,a1
[00029442] 206f 0148                 movea.l    328(a7),a0
[00029446] 2050                      movea.l    (a0),a0
[00029448] 4eb9 0007 594a            jsr        sscanf
[0002944e] 584f                      addq.w     #4,a7
[00029450] 2615                      move.l     (a5),d3
[00029452] 7010                      moveq.l    #16,d0
[00029454] e0a3                      asr.l      d0,d3
[00029456] 4244                      clr.w      d4
[00029458] 6018                      bra.s      object_tree_4
object_tree_6:
[0002945a] 41ef 0012                 lea.l      18(a7),a0
[0002945e] 3204                      move.w     d4,d1
[00029460] 2252                      movea.l    (a2),a1
[00029462] 3029 0010                 move.w     16(a1),d0
[00029466] 4eb9 0006 7464            jsr        vqt_name
[0002946c] b640                      cmp.w      d0,d3
[0002946e] 670a                      beq.s      object_tree_5
[00029470] 5244                      addq.w     #1,d4
object_tree_4:
[00029472] 2052                      movea.l    (a2),a0
[00029474] b868 0284                 cmp.w      644(a0),d4
[00029478] 6de0                      blt.s      object_tree_6
object_tree_5:
[0002947a] 2052                      movea.l    (a2),a0
[0002947c] b868 0284                 cmp.w      644(a0),d4
[00029480] 6618                      bne.s      object_tree_7
[00029482] 41f9 000b 7010            lea.l      A_ADAPTFONT,a0
[00029488] 7001                      moveq.l    #1,d0
[0002948a] 4eb9 0005 17fe            jsr        Awi_alert
[00029490] 5340                      subq.w     #1,d0
[00029492] 6606                      bne.s      object_tree_7
[00029494] 2abc 0001 000d            move.l     #$0001000D,(a5)
object_tree_7:
[0002949a] 206f 000a                 movea.l    10(a7),a0
[0002949e] 2155 0004                 move.l     (a5),4(a0)
[000294a2] 2615                      move.l     (a5),d3
[000294a4] 7010                      moveq.l    #16,d0
[000294a6] e0a3                      asr.l      d0,d3
[000294a8] 486f 0012                 pea.l      18(a7)
[000294ac] 43f9 000b 7e45            lea.l      $000B7E45,a1
[000294b2] 204b                      movea.l    a3,a0
[000294b4] 7027                      moveq.l    #39,d0
[000294b6] 4eb9 0004 afac            jsr        Aob_printf
[000294bc] 584f                      addq.w     #4,a7
[000294be] 302d 0002                 move.w     2(a5),d0
[000294c2] c07c 00ff                 and.w      #$00FF,d0
[000294c6] 3f00                      move.w     d0,-(a7)
[000294c8] 43f9 000b 7e4b            lea.l      $000B7E4B,a1
[000294ce] 204b                      movea.l    a3,a0
[000294d0] 7028                      moveq.l    #40,d0
[000294d2] 4eb9 0004 afac            jsr        Aob_printf
[000294d8] 544f                      addq.w     #2,a7
[000294da] 2015                      move.l     (a5),d0
[000294dc] 720e                      moveq.l    #14,d1
[000294de] e2a0                      asr.l      d1,d0
[000294e0] c07c 0003                 and.w      #$0003,d0
[000294e4] 4a40                      tst.w      d0
[000294e6] 6716                      beq.s      object_tree_8
[000294e8] 5340                      subq.w     #1,d0
[000294ea] 670a                      beq.s      object_tree_9
[000294ec] 5340                      subq.w     #1,d0
[000294ee] 6716                      beq.s      object_tree_10
[000294f0] 5340                      subq.w     #1,d0
[000294f2] 671a                      beq.s      object_tree_11
[000294f4] 601e                      bra.s      object_tree_12
object_tree_9:
[000294f6] 006b 0001 027a            ori.w      #$0001,634(a3)
[000294fc] 6016                      bra.s      object_tree_12
object_tree_8:
[000294fe] 006b 0001 02aa            ori.w      #$0001,682(a3)
[00029504] 600e                      bra.s      object_tree_12
object_tree_10:
[00029506] 006b 0001 030a            ori.w      #$0001,778(a3)
[0002950c] 6006                      bra.s      object_tree_12
object_tree_11:
[0002950e] 006b 0001 02da            ori.w      #$0001,730(a3)
object_tree_12:
[00029514] 2015                      move.l     (a5),d0
[00029516] c0bc 0000 0100            and.l      #$00000100,d0
[0002951c] 6706                      beq.s      object_tree_13
[0002951e] 006b 0001 0142            ori.w      #$0001,322(a3)
object_tree_13:
[00029524] 2015                      move.l     (a5),d0
[00029526] c0bc 0000 0200            and.l      #$00000200,d0
[0002952c] 6706                      beq.s      object_tree_14
[0002952e] 006b 0001 0172            ori.w      #$0001,370(a3)
object_tree_14:
[00029534] 2015                      move.l     (a5),d0
[00029536] c0bc 0000 0400            and.l      #$00000400,d0
[0002953c] 6706                      beq.s      object_tree_15
[0002953e] 006b 0001 01a2            ori.w      #$0001,418(a3)
object_tree_15:
[00029544] 2015                      move.l     (a5),d0
[00029546] c0bc 0000 0800            and.l      #$00000800,d0
[0002954c] 6706                      beq.s      object_tree_16
[0002954e] 006b 0001 01d2            ori.w      #$0001,466(a3)
object_tree_16:
[00029554] 2015                      move.l     (a5),d0
[00029556] c0bc 0000 1000            and.l      #$00001000,d0
[0002955c] 6706                      beq.s      object_tree_17
[0002955e] 006b 0001 0202            ori.w      #$0001,514(a3)
object_tree_17:
[00029564] 2015                      move.l     (a5),d0
[00029566] c0bc 0000 2000            and.l      #$00002000,d0
[0002956c] 6706                      beq.s      object_tree_18
[0002956e] 006b 0001 0232            ori.w      #$0001,562(a3)
object_tree_18:
[00029574] 206f 0144                 movea.l    324(a7),a0
[00029578] 0c68 0002 0008            cmpi.w     #$0002,8(a0)
[0002957e] 6616                      bne.s      object_tree_19
[00029580] 2a68 000a                 movea.l    10(a0),a5
[00029584] 224d                      movea.l    a5,a1
[00029586] 7004                      moveq.l    #4,d0
[00029588] 246f 000a                 movea.l    10(a7),a2
[0002958c] 246a 0008                 movea.l    8(a2),a2
[00029590] 204c                      movea.l    a4,a0
[00029592] 4e92                      jsr        (a2)
[00029594] 6006                      bra.s      object_tree_20
object_tree_19:
[00029596] 4bf9 000b 7e20            lea.l      $000B7E20,a5
object_tree_20:
[0002959c] 204d                      movea.l    a5,a0
[0002959e] 4eb9 0007 69b0            jsr        strlen
[000295a4] 2600                      move.l     d0,d3
[000295a6] 45ef 0044                 lea.l      68(a7),a2
[000295aa] b67c 00ff                 cmp.w      #$00FF,d3
[000295ae] 6f1c                      ble.s      object_tree_21
[000295b0] 203c 0000 00ff            move.l     #$000000FF,d0
[000295b6] 43ed 00ff                 lea.l      255(a5),a1
[000295ba] 204a                      movea.l    a2,a0
[000295bc] 4eb9 0007 6a1a            jsr        strncpy
[000295c2] 422a 00ff                 clr.b      255(a2)
[000295c6] 363c 00ff                 move.w     #$00FF,d3
[000295ca] 6002                      bra.s      object_tree_22
object_tree_21:
[000295cc] 4212                      clr.b      (a2)
object_tree_22:
[000295ce] 2f0d                      move.l     a5,-(a7)
[000295d0] 3f03                      move.w     d3,-(a7)
[000295d2] 43f9 000b 7e50            lea.l      $000B7E50,a1
[000295d8] 700a                      moveq.l    #10,d0
[000295da] 204b                      movea.l    a3,a0
[000295dc] 4eb9 0004 afac            jsr        Aob_printf
[000295e2] 5c4f                      addq.w     #6,a7
[000295e4] 224a                      movea.l    a2,a1
[000295e6] 700b                      moveq.l    #11,d0
[000295e8] 204b                      movea.l    a3,a0
[000295ea] 4eb9 0004 afe0            jsr        Aob_puttext
[000295f0] 206b 0414                 movea.l    1044(a3),a0
[000295f4] 226f 000a                 movea.l    10(a7),a1
[000295f8] 2368 000c 0018            move.l     12(a0),24(a1)
[000295fe] 206f 0144                 movea.l    324(a7),a0
[00029602] 2068 0026                 movea.l    38(a0),a0
[00029606] 4eb9 0004 3a92            jsr        Ast_isEmpty
[0002960c] 4a40                      tst.w      d0
[0002960e] 6712                      beq.s      object_tree_23
[00029610] 43f9 000b 7e20            lea.l      $000B7E20,a1
[00029616] 702b                      moveq.l    #43,d0
[00029618] 204b                      movea.l    a3,a0
[0002961a] 4eb9 0004 afe0            jsr        Aob_puttext
[00029620] 6012                      bra.s      object_tree_24
object_tree_23:
[00029622] 206f 0144                 movea.l    324(a7),a0
[00029626] 2268 0026                 movea.l    38(a0),a1
[0002962a] 702b                      moveq.l    #43,d0
[0002962c] 204b                      movea.l    a3,a0
[0002962e] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_24:
[00029634] 206b 0444                 movea.l    1092(a3),a0
[00029638] 226f 000a                 movea.l    10(a7),a1
[0002963c] 2368 000c 001c            move.l     12(a0),28(a1)
[00029642] 206f 0144                 movea.l    324(a7),a0
[00029646] 2068 002a                 movea.l    42(a0),a0
[0002964a] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00029650] 4a40                      tst.w      d0
[00029652] 6712                      beq.s      object_tree_25
[00029654] 43f9 000b 7e20            lea.l      $000B7E20,a1
[0002965a] 702d                      moveq.l    #45,d0
[0002965c] 204b                      movea.l    a3,a0
[0002965e] 4eb9 0004 afe0            jsr        Aob_puttext
[00029664] 6012                      bra.s      object_tree_26
object_tree_25:
[00029666] 206f 0144                 movea.l    324(a7),a0
[0002966a] 2268 002a                 movea.l    42(a0),a1
[0002966e] 702d                      moveq.l    #45,d0
[00029670] 204b                      movea.l    a3,a0
[00029672] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_26:
[00029678] 204b                      movea.l    a3,a0
object_tree_3:
[0002967a] 4fef 0148                 lea.l      328(a7),a7
[0002967e] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[00029682] 4e75                      rts

test_it:
[00029684] 2f0a                      move.l     a2,-(a7)
[00029686] 2f0b                      move.l     a3,-(a7)
[00029688] 2648                      movea.l    a0,a3
[0002968a] 2449                      movea.l    a1,a2
[0002968c] 22bc 0005 b6f4            move.l     #A_ftext,(a1)
[00029692] 486a 0004                 pea.l      4(a2)
[00029696] 43f9 000b 7e3e            lea.l      $000B7E3E,a1
[0002969c] 2050                      movea.l    (a0),a0
[0002969e] 4eb9 0007 594a            jsr        sscanf
[000296a4] 584f                      addq.w     #4,a7
[000296a6] 257c 0005 bae4 0008       move.l     #Auo_ftext,8(a2)
[000296ae] 0c6b 0002 0008            cmpi.w     #$0002,8(a3)
[000296b4] 6608                      bne.s      test_it_1
[000296b6] 256b 000a 000c            move.l     10(a3),12(a2)
[000296bc] 6004                      bra.s      test_it_2
test_it_1:
[000296be] 42aa 000c                 clr.l      12(a2)
test_it_2:
[000296c2] 7000                      moveq.l    #0,d0
[000296c4] 2540 0014                 move.l     d0,20(a2)
[000296c8] 2540 0010                 move.l     d0,16(a2)
[000296cc] 206b 0026                 movea.l    38(a3),a0
[000296d0] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000296d6] 4a40                      tst.w      d0
[000296d8] 6704                      beq.s      test_it_3
[000296da] 91c8                      suba.l     a0,a0
[000296dc] 6004                      bra.s      test_it_4
test_it_3:
[000296de] 206b 0026                 movea.l    38(a3),a0
test_it_4:
[000296e2] 2548 0018                 move.l     a0,24(a2)
[000296e6] 206b 002a                 movea.l    42(a3),a0
[000296ea] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000296f0] 4a40                      tst.w      d0
[000296f2] 6704                      beq.s      test_it_5
[000296f4] 91c8                      suba.l     a0,a0
[000296f6] 6004                      bra.s      test_it_6
test_it_5:
[000296f8] 206b 002a                 movea.l    42(a3),a0
test_it_6:
[000296fc] 2548 001c                 move.l     a0,28(a2)
[00029700] 265f                      movea.l    (a7)+,a3
[00029702] 245f                      movea.l    (a7)+,a2
[00029704] 4e75                      rts

abort:
[00029706] 2079 0010 1f12            movea.l    ACSblk,a0
[0002970c] 2268 0258                 movea.l    600(a0),a1
[00029710] 2069 0014                 movea.l    20(a1),a0
[00029714] 2068 0054                 movea.l    84(a0),a0
[00029718] 42a8 0018                 clr.l      24(a0)
[0002971c] 42a8 001c                 clr.l      28(a0)
[00029720] 2079 000b 7dca            movea.l    $000B7DCA,a0
[00029726] 2050                      movea.l    (a0),a0
[00029728] 4e90                      jsr        (a0)
[0002972a] 4e75                      rts

ok:
[0002972c] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00029730] 4fef fdd2                 lea.l      -558(a7),a7
[00029734] 2079 0010 1f12            movea.l    ACSblk,a0
[0002973a] 2268 0258                 movea.l    600(a0),a1
[0002973e] 2469 0014                 movea.l    20(a1),a2
[00029742] 266a 0054                 movea.l    84(a2),a3
[00029746] 49f9 000f f606            lea.l      parm,a4
[0002974c] 2f2b 0004                 move.l     4(a3),-(a7)
[00029750] 43f9 000b 7e3e            lea.l      $000B7E3E,a1
[00029756] 204c                      movea.l    a4,a0
[00029758] 4eb9 0007 5680            jsr        sprintf
[0002975e] 584f                      addq.w     #4,a7
[00029760] 2e8c                      move.l     a4,(a7)
[00029762] 2f7c 000b 7e2a 0004       move.l     #$000B7E2A,4(a7)
[0002976a] 49ef 002e                 lea.l      46(a7),a4
[0002976e] 224c                      movea.l    a4,a1
[00029770] 700a                      moveq.l    #10,d0
[00029772] 204a                      movea.l    a2,a0
[00029774] 4eb9 0004 b154            jsr        Aob_gettext
[0002977a] 204c                      movea.l    a4,a0
[0002977c] 4eb9 0007 69b0            jsr        strlen
[00029782] 2600                      move.l     d0,d3
[00029784] 43f4 3000                 lea.l      0(a4,d3.w),a1
[00029788] 700b                      moveq.l    #11,d0
[0002978a] 204a                      movea.l    a2,a0
[0002978c] 4eb9 0004 b154            jsr        Aob_gettext
[00029792] 1014                      move.b     (a4),d0
[00029794] 670c                      beq.s      ok_1
[00029796] 3f7c 0002 0008            move.w     #$0002,8(a7)
[0002979c] 2f4c 000a                 move.l     a4,10(a7)
[000297a0] 6008                      bra.s      ok_2
ok_1:
[000297a2] 426f 0008                 clr.w      8(a7)
[000297a6] 42af 000a                 clr.l      10(a7)
ok_2:
[000297aa] 42af 000e                 clr.l      14(a7)
[000297ae] 4240                      clr.w      d0
[000297b0] 3f40 001c                 move.w     d0,28(a7)
[000297b4] 3f40 0012                 move.w     d0,18(a7)
[000297b8] 7200                      moveq.l    #0,d1
[000297ba] 2f41 001e                 move.l     d1,30(a7)
[000297be] 2f41 0014                 move.l     d1,20(a7)
[000297c2] 7000                      moveq.l    #0,d0
[000297c4] 2f40 0022                 move.l     d0,34(a7)
[000297c8] 2f40 0018                 move.l     d0,24(a7)
[000297cc] 43ef 0026                 lea.l      38(a7),a1
[000297d0] 41ea 0408                 lea.l      1032(a2),a0
[000297d4] 7003                      moveq.l    #3,d0
[000297d6] 4eb9 0005 e010            jsr        Auo_boxed
[000297dc] 206f 0026                 movea.l    38(a7),a0
[000297e0] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000297e6] 4a40                      tst.w      d0
[000297e8] 6704                      beq.s      ok_3
[000297ea] 42af 0026                 clr.l      38(a7)
ok_3:
[000297ee] 43ef 002a                 lea.l      42(a7),a1
[000297f2] 7003                      moveq.l    #3,d0
[000297f4] 41ea 0438                 lea.l      1080(a2),a0
[000297f8] 4eb9 0005 e010            jsr        Auo_boxed
[000297fe] 206f 002a                 movea.l    42(a7),a0
[00029802] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00029808] 4a40                      tst.w      d0
[0002980a] 6704                      beq.s      ok_4
[0002980c] 42af 002a                 clr.l      42(a7)
ok_4:
[00029810] 2079 0010 1f12            movea.l    ACSblk,a0
[00029816] 3228 0014                 move.w     20(a0),d1
[0002981a] 3028 0012                 move.w     18(a0),d0
[0002981e] 41d7                      lea.l      (a7),a0
[00029820] 2279 000b 7dca            movea.l    $000B7DCA,a1
[00029826] 2269 0004                 movea.l    4(a1),a1
[0002982a] 4e91                      jsr        (a1)
[0002982c] 6100 fed8                 bsr        abort
[00029830] 4fef 022e                 lea.l      558(a7),a7
[00029834] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00029838] 4e75                      rts

font_sel:
[0002983a] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0002983e] 4fef ffc6                 lea.l      -58(a7),a7
[00029842] 45f9 0010 1f12            lea.l      ACSblk,a2
[00029848] 2052                      movea.l    (a2),a0
[0002984a] 2668 0258                 movea.l    600(a0),a3
[0002984e] 2ea8 025c                 move.l     604(a0),(a7)
[00029852] 2268 025c                 movea.l    604(a0),a1
[00029856] 2869 0054                 movea.l    84(a1),a4
[0002985a] 4bef 0038                 lea.l      56(a7),a5
[0002985e] 202c 0004                 move.l     4(a4),d0
[00029862] 7210                      moveq.l    #16,d1
[00029864] e2a0                      asr.l      d1,d0
[00029866] 3a80                      move.w     d0,(a5)
[00029868] 342c 0006                 move.w     6(a4),d2
[0002986c] c47c 00ff                 and.w      #$00FF,d2
[00029870] 3f42 0036                 move.w     d2,54(a7)
[00029874] 43ef 0036                 lea.l      54(a7),a1
[00029878] 204d                      movea.l    a5,a0
[0002987a] 7001                      moveq.l    #1,d0
[0002987c] 4eb9 0003 f748            jsr        A_fontsel
[00029882] 4a40                      tst.w      d0
[00029884] 6600 009e                 bne        font_sel_1
[00029888] 0c6f 00ff 0036            cmpi.w     #$00FF,54(a7)
[0002988e] 6f06                      ble.s      font_sel_2
[00029890] 3f7c 00ff 0036            move.w     #$00FF,54(a7)
font_sel_2:
[00029896] 202c 0004                 move.l     4(a4),d0
[0002989a] c0bc 0000 ff00            and.l      #$0000FF00,d0
[000298a0] 3215                      move.w     (a5),d1
[000298a2] 48c1                      ext.l      d1
[000298a4] 7410                      moveq.l    #16,d2
[000298a6] e5a9                      lsl.l      d2,d1
[000298a8] 8081                      or.l       d1,d0
[000298aa] 322f 0036                 move.w     54(a7),d1
[000298ae] 48c1                      ext.l      d1
[000298b0] 8081                      or.l       d1,d0
[000298b2] 2940 0004                 move.l     d0,4(a4)
[000298b6] 4243                      clr.w      d3
[000298b8] 49ef 0004                 lea.l      4(a7),a4
[000298bc] 6018                      bra.s      font_sel_3
font_sel_5:
[000298be] 204c                      movea.l    a4,a0
[000298c0] 3203                      move.w     d3,d1
[000298c2] 2252                      movea.l    (a2),a1
[000298c4] 3029 0010                 move.w     16(a1),d0
[000298c8] 4eb9 0006 7464            jsr        vqt_name
[000298ce] 3215                      move.w     (a5),d1
[000298d0] b240                      cmp.w      d0,d1
[000298d2] 670a                      beq.s      font_sel_4
[000298d4] 5243                      addq.w     #1,d3
font_sel_3:
[000298d6] 2052                      movea.l    (a2),a0
[000298d8] b668 0284                 cmp.w      644(a0),d3
[000298dc] 6de0                      blt.s      font_sel_5
font_sel_4:
[000298de] 4854                      pea.l      (a4)
[000298e0] 43f9 000b 7e45            lea.l      $000B7E45,a1
[000298e6] 7027                      moveq.l    #39,d0
[000298e8] 206f 0004                 movea.l    4(a7),a0
[000298ec] 4eb9 0004 afac            jsr        Aob_printf
[000298f2] 584f                      addq.w     #4,a7
[000298f4] 3f2f 0036                 move.w     54(a7),-(a7)
[000298f8] 43f9 000b 7e4b            lea.l      $000B7E4B,a1
[000298fe] 7028                      moveq.l    #40,d0
[00029900] 206f 0002                 movea.l    2(a7),a0
[00029904] 4eb9 0004 afac            jsr        Aob_printf
[0002990a] 544f                      addq.w     #2,a7
[0002990c] 72ff                      moveq.l    #-1,d1
[0002990e] 7022                      moveq.l    #34,d0
[00029910] 204b                      movea.l    a3,a0
[00029912] 226b 0066                 movea.l    102(a3),a1
[00029916] 4e91                      jsr        (a1)
[00029918] 72ff                      moveq.l    #-1,d1
[0002991a] 7002                      moveq.l    #2,d0
[0002991c] 204b                      movea.l    a3,a0
[0002991e] 226b 0066                 movea.l    102(a3),a1
[00029922] 4e91                      jsr        (a1)
font_sel_1:
[00029924] 4fef 003a                 lea.l      58(a7),a7
[00029928] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0002992c] 4e75                      rts

edf_pos:
[0002992e] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00029932] 45f9 0010 1f12            lea.l      ACSblk,a2
[00029938] 2052                      movea.l    (a2),a0
[0002993a] 3228 0260                 move.w     608(a0),d1
[0002993e] 48c1                      ext.l      d1
[00029940] 2001                      move.l     d1,d0
[00029942] d080                      add.l      d0,d0
[00029944] d081                      add.l      d1,d0
[00029946] e788                      lsl.l      #3,d0
[00029948] 2068 025c                 movea.l    604(a0),a0
[0002994c] 41f0 0818                 lea.l      24(a0,d0.l),a0
[00029950] 2628 000c                 move.l     12(a0),d3
[00029954] 2252                      movea.l    (a2),a1
[00029956] 2069 025c                 movea.l    604(a1),a0
[0002995a] 2668 0054                 movea.l    84(a0),a3
[0002995e] 02ab ffff 3fff 0004       andi.l     #$FFFF3FFF,4(a3)
[00029966] 7001                      moveq.l    #1,d0
[00029968] 2052                      movea.l    (a2),a0
[0002996a] 3428 0260                 move.w     608(a0),d2
[0002996e] 48c2                      ext.l      d2
[00029970] 2202                      move.l     d2,d1
[00029972] d281                      add.l      d1,d1
[00029974] d282                      add.l      d2,d1
[00029976] e789                      lsl.l      #3,d1
[00029978] 2268 025c                 movea.l    604(a0),a1
[0002997c] c071 180a                 and.w      10(a1,d1.l),d0
[00029980] 670a                      beq.s      edf_pos_1
[00029982] 2003                      move.l     d3,d0
[00029984] 720e                      moveq.l    #14,d1
[00029986] e3a8                      lsl.l      d1,d0
[00029988] 81ab 0004                 or.l       d0,4(a3)
edf_pos_1:
[0002998c] 72ff                      moveq.l    #-1,d1
[0002998e] 2052                      movea.l    (a2),a0
[00029990] 3028 0260                 move.w     608(a0),d0
[00029994] 2068 0258                 movea.l    600(a0),a0
[00029998] 2252                      movea.l    (a2),a1
[0002999a] 2669 0258                 movea.l    600(a1),a3
[0002999e] 226b 0066                 movea.l    102(a3),a1
[000299a2] 4e91                      jsr        (a1)
[000299a4] 72ff                      moveq.l    #-1,d1
[000299a6] 7002                      moveq.l    #2,d0
[000299a8] 2052                      movea.l    (a2),a0
[000299aa] 2068 0258                 movea.l    600(a0),a0
[000299ae] 2252                      movea.l    (a2),a1
[000299b0] 2669 0258                 movea.l    600(a1),a3
[000299b4] 226b 0066                 movea.l    102(a3),a1
[000299b8] 4e91                      jsr        (a1)
[000299ba] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[000299be] 4e75                      rts

edf_effect:
[000299c0] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[000299c4] 45f9 0010 1f12            lea.l      ACSblk,a2
[000299ca] 2052                      movea.l    (a2),a0
[000299cc] 3228 0260                 move.w     608(a0),d1
[000299d0] 48c1                      ext.l      d1
[000299d2] 2001                      move.l     d1,d0
[000299d4] d080                      add.l      d0,d0
[000299d6] d081                      add.l      d1,d0
[000299d8] e788                      lsl.l      #3,d0
[000299da] 2068 025c                 movea.l    604(a0),a0
[000299de] 41f0 0818                 lea.l      24(a0,d0.l),a0
[000299e2] 2628 000c                 move.l     12(a0),d3
[000299e6] 2252                      movea.l    (a2),a1
[000299e8] 2069 025c                 movea.l    604(a1),a0
[000299ec] 2668 0054                 movea.l    84(a0),a3
[000299f0] 2403                      move.l     d3,d2
[000299f2] e18a                      lsl.l      #8,d2
[000299f4] 4682                      not.l      d2
[000299f6] c5ab 0004                 and.l      d2,4(a3)
[000299fa] 7001                      moveq.l    #1,d0
[000299fc] 2052                      movea.l    (a2),a0
[000299fe] 3428 0260                 move.w     608(a0),d2
[00029a02] 48c2                      ext.l      d2
[00029a04] 2202                      move.l     d2,d1
[00029a06] d281                      add.l      d1,d1
[00029a08] d282                      add.l      d2,d1
[00029a0a] e789                      lsl.l      #3,d1
[00029a0c] 2268 025c                 movea.l    604(a0),a1
[00029a10] c071 180a                 and.w      10(a1,d1.l),d0
[00029a14] 6708                      beq.s      edf_effect_1
[00029a16] 2003                      move.l     d3,d0
[00029a18] e188                      lsl.l      #8,d0
[00029a1a] 81ab 0004                 or.l       d0,4(a3)
edf_effect_1:
[00029a1e] 72ff                      moveq.l    #-1,d1
[00029a20] 2052                      movea.l    (a2),a0
[00029a22] 3028 0260                 move.w     608(a0),d0
[00029a26] 2068 0258                 movea.l    600(a0),a0
[00029a2a] 2252                      movea.l    (a2),a1
[00029a2c] 2669 0258                 movea.l    600(a1),a3
[00029a30] 226b 0066                 movea.l    102(a3),a1
[00029a34] 4e91                      jsr        (a1)
[00029a36] 72ff                      moveq.l    #-1,d1
[00029a38] 7002                      moveq.l    #2,d0
[00029a3a] 2052                      movea.l    (a2),a0
[00029a3c] 2068 0258                 movea.l    600(a0),a0
[00029a40] 2252                      movea.l    (a2),a1
[00029a42] 2669 0258                 movea.l    600(a1),a3
[00029a46] 226b 0066                 movea.l    102(a3),a1
[00029a4a] 4e91                      jsr        (a1)
[00029a4c] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00029a50] 4e75                      rts

	.data

A_ADAPTFONT:
[000b7010]                           dc.b '[2][ Die Schriftgrîûe ist negativ| und ist wahrscheinlich ein| Objekt nach alter Definition.| Soll es auf den Standardwert| gesetzt werden? ][OK| Abbruch ]',0
BUBBLE_01:
[000b70ac]                           dc.b 'Die énderungen werden Åbernommen und Åberschreiben die alten Einstellungen.',0
BUBBLE_02:
[000b70f8]                           dc.b 'Die énderungen werden verworfen, die alten Einstellungen bleiben erhalten.',0
BUBBLE_03:
[000b7143]                           dc.b 'Hier kann der String, der fÅr BubbleGEM verwendet werden soll, eingegeben werden.',0
BUBBLE_04:
[000b7195]                           dc.b 'Hier kann der String eingegeben werden, der das aufzurufende Context-Popup beschreibt (siehe in der Dokumentation zu Ame_strpopup).',0
BUBBLE_05:
[000b7219]                           dc.b 'Im erscheinenden Font-Selektor kînnen der Zeichensatz und die Zeichenhîhe ausgewÑhlt werden.',0
BUBBLE_06:
[000b7276]                           dc.b 'Der Text soll fett dargestellt werden.',0
BUBBLE_07:
[000b729d]                           dc.b 'Der Text soll hell dargestellt werden.',0
BUBBLE_08:
[000b72c4]                           dc.b 'Der Text soll kursiv dargestellt werden.',0
BUBBLE_09:
[000b72ed]                           dc.b 'Der Text soll unterstrichen dargestellt werden.',0
BUBBLE_10:
[000b731d]                           dc.b 'Der Text soll hohl dargestellt werden.',0
BUBBLE_11:
[000b7344]                           dc.b 'Der Text soll schattiert dargestellt werden.',0
BUBBLE_12:
[000b7371]                           dc.b 'Der Text soll linksbÅndig dargestellt werden.',0
BUBBLE_13:
[000b739f]                           dc.b 'Der Text soll rechtsbÅndig dargestellt werden.',0
BUBBLE_14:
[000b73ce]                           dc.b 'Der Text soll zentriert dargestellt werden.',0
BUBBLE_15:
[000b73fa]                           dc.b 'Der Text soll im Blocksatz dargestellt werden.',0
BUBBLE_16:
[000b7429]                           dc.b 'Hier wird der Text in bis zu zwei Zeilen eingegeben.',0
TEXT_005:
[000b745e]                           dc.w $4f4b
[000b7460]                           dc.b $00
TEXT_009:
[000b7461]                           dc.b 'Abbruch',0
TEXT_01:
[000b7469]                           dc.b 'Schrift...',0
TEXT_02:
[000b7474]                           dc.b '12345',0
TEXT_03:
[000b747a]                           dc.b '123456789012345678901234567890',0
TEXT_04:
[000b7499]                           dc.b 'Hîhe:',0
TEXT_05:
[000b749f]                           dc.b 'Name:',0
TEXT_06:
[000b74a5]                           dc.b 'Effekte:',0
TEXT_07:
[000b74ae]                           dc.b 'Text:',0
TEXT_08:
[000b74b4]                           dc.b 'fett',0
TEXT_09:
[000b74b9]                           dc.b 'hell ',0
TEXT_10:
[000b74bf]                           dc.b 'kursiv',0
TEXT_11:
[000b74c6]                           dc.b 'unterstrichen',0
TEXT_12:
[000b74d4]                           dc.b 'hohl    ',0
TEXT_13:
[000b74dd]                           dc.b 'schattiert',0
TEXT_14:
[000b74e8]                           dc.b 'links',0
TEXT_15:
[000b74ee]                           dc.b 'Ausrichtung:',0
TEXT_16:
[000b74fb]                           dc.b 'rechts',0
TEXT_17:
[000b7502]                           dc.b 'zentriert',0
TEXT_18:
[000b750c]                           dc.b 'Blocksatz',0
TEXT_19:
[000b7516]                           dc.b 'Sonstiges',0
TEXT_20:
[000b7520]                           dc.b 'BubbleGEM-Text',0
TEXT_21:
[000b752f]                           dc.b 'Context-Popup',0
TEXT_22:
[000b753d]                           dc.b 'Zeichensatz & Zeichenhîhe',0
extra:
[000b7557]                           dc.b 'The quick brown fox jumps over the lazy dog',0
help_title:
[000b7583]                           dc.b 'Der FText-Editor',0
title:
[000b7594]                           dc.b 'FTEXT -',0
A_3DBUTTON01:
[000b759c] 0005a4e2                  dc.l A_3Dbutton
[000b75a0]                           dc.w $29f1
[000b75a2]                           dc.w $01f8
[000b75a4] 00059318                  dc.l Auo_string
[000b75a8]                           dc.b $00
[000b75a9]                           dc.b $00
[000b75aa]                           dc.b $00
[000b75ab]                           dc.b $00
[000b75ac]                           dc.b $00
[000b75ad]                           dc.b $00
[000b75ae]                           dc.b $00
[000b75af]                           dc.b $00
[000b75b0]                           dc.b $00
[000b75b1]                           dc.b $00
[000b75b2]                           dc.b $00
[000b75b3]                           dc.b $00
[000b75b4]                           dc.b $00
[000b75b5]                           dc.b $00
[000b75b6]                           dc.b $00
[000b75b7]                           dc.b $00
[000b75b8]                           dc.b $00
[000b75b9]                           dc.b $00
[000b75ba]                           dc.b $00
[000b75bb]                           dc.b $00
A_3DBUTTON02:
[000b75bc] 0005a4e2                  dc.l A_3Dbutton
[000b75c0]                           dc.w $2011
[000b75c2]                           dc.w $9178
[000b75c4] 00059318                  dc.l Auo_string
[000b75c8]                           dc.b $00
[000b75c9]                           dc.b $00
[000b75ca]                           dc.b $00
[000b75cb]                           dc.b $00
[000b75cc]                           dc.b $00
[000b75cd]                           dc.b $00
[000b75ce]                           dc.b $00
[000b75cf]                           dc.b $00
[000b75d0]                           dc.b $00
[000b75d1]                           dc.b $00
[000b75d2]                           dc.b $00
[000b75d3]                           dc.b $00
[000b75d4]                           dc.b $00
[000b75d5]                           dc.b $00
[000b75d6]                           dc.b $00
[000b75d7]                           dc.b $00
[000b75d8]                           dc.b $00
[000b75d9]                           dc.b $00
[000b75da]                           dc.b $00
[000b75db]                           dc.b $00
A_3DBUTTON05:
[000b75dc] 0005a4e2                  dc.l A_3Dbutton
[000b75e0]                           dc.w $29c1
[000b75e2]                           dc.w $0178
[000b75e4] 00059318                  dc.l Auo_string
[000b75e8] 000b745e                  dc.l TEXT_005
[000b75ec]                           dc.b $00
[000b75ed]                           dc.b $00
[000b75ee]                           dc.b $00
[000b75ef]                           dc.b $00
[000b75f0]                           dc.b $00
[000b75f1]                           dc.b $00
[000b75f2]                           dc.b $00
[000b75f3]                           dc.b $00
[000b75f4] 000b70ac                  dc.l BUBBLE_01
[000b75f8]                           dc.b $00
[000b75f9]                           dc.b $00
[000b75fa]                           dc.b $00
[000b75fb]                           dc.b $00
A_3DBUTTON06:
[000b75fc] 0005a4e2                  dc.l A_3Dbutton
[000b7600]                           dc.w $21f1
[000b7602]                           dc.w $0178
[000b7604] 00059318                  dc.l Auo_string
[000b7608]                           dc.b $00
[000b7609]                           dc.b $00
[000b760a]                           dc.b $00
[000b760b]                           dc.b $00
[000b760c]                           dc.b $00
[000b760d]                           dc.b $00
[000b760e]                           dc.b $00
[000b760f]                           dc.b $00
[000b7610]                           dc.b $00
[000b7611]                           dc.b $00
[000b7612]                           dc.b $00
[000b7613]                           dc.b $00
[000b7614]                           dc.b $00
[000b7615]                           dc.b $00
[000b7616]                           dc.b $00
[000b7617]                           dc.b $00
[000b7618]                           dc.b $00
[000b7619]                           dc.b $00
[000b761a]                           dc.b $00
[000b761b]                           dc.b $00
A_3DBUTTON08:
[000b761c] 0005a4e2                  dc.l A_3Dbutton
[000b7620]                           dc.w $29c1
[000b7622]                           dc.w $0178
[000b7624] 00059318                  dc.l Auo_string
[000b7628] 000b7461                  dc.l TEXT_009
[000b762c]                           dc.b $00
[000b762d]                           dc.b $00
[000b762e]                           dc.b $00
[000b762f]                           dc.b $00
[000b7630]                           dc.b $00
[000b7631]                           dc.b $00
[000b7632]                           dc.b $00
[000b7633]                           dc.b $00
[000b7634] 000b70f8                  dc.l BUBBLE_02
[000b7638]                           dc.b $00
[000b7639]                           dc.b $00
[000b763a]                           dc.b $00
[000b763b]                           dc.b $00
A_3DBUTTON09:
[000b763c] 0005a4e2                  dc.l A_3Dbutton
[000b7640]                           dc.w $29c1
[000b7642]                           dc.w $0178
[000b7644] 00059318                  dc.l Auo_string
[000b7648] 000b7469                  dc.l TEXT_01
[000b764c]                           dc.b $00
[000b764d]                           dc.b $00
[000b764e]                           dc.b $00
[000b764f]                           dc.b $00
[000b7650]                           dc.b $00
[000b7651]                           dc.b $00
[000b7652]                           dc.b $00
[000b7653]                           dc.b $00
[000b7654] 000b7219                  dc.l BUBBLE_05
[000b7658]                           dc.b $00
[000b7659]                           dc.b $00
[000b765a]                           dc.b $00
[000b765b]                           dc.b $00
A_BOXED02:
[000b765c] 0005e9d2                  dc.l A_boxed
[000b7660]                           dc.w $9000
[000b7662]                           dc.w $ff12
[000b7664] 0005e010                  dc.l Auo_boxed
[000b7668]                           dc.b $00
[000b7669]                           dc.b $00
[000b766a]                           dc.b $00
[000b766b]                           dc.b $00
[000b766c]                           dc.b $00
[000b766d]                           dc.b $00
[000b766e]                           dc.b $00
[000b766f]                           dc.b $00
[000b7670]                           dc.b $00
[000b7671]                           dc.b $00
[000b7672]                           dc.b $00
[000b7673]                           dc.b $00
[000b7674] 000b7429                  dc.l BUBBLE_16
[000b7678]                           dc.b $00
[000b7679]                           dc.b $00
[000b767a]                           dc.b $00
[000b767b]                           dc.b $00
A_BOXED04:
[000b767c] 0005e9d2                  dc.l A_boxed
[000b7680]                           dc.w $9038
[000b7682]                           dc.w $ff12
[000b7684] 0005e010                  dc.l Auo_boxed
[000b7688]                           dc.b $00
[000b7689]                           dc.b $00
[000b768a]                           dc.b $00
[000b768b]                           dc.b $00
[000b768c]                           dc.b $00
[000b768d]                           dc.b $00
[000b768e]                           dc.b $00
[000b768f]                           dc.b $00
[000b7690]                           dc.b $00
[000b7691]                           dc.b $00
[000b7692]                           dc.b $00
[000b7693]                           dc.b $00
[000b7694] 000b7143                  dc.l BUBBLE_03
[000b7698]                           dc.b $00
[000b7699]                           dc.b $00
[000b769a]                           dc.b $00
[000b769b]                           dc.b $00
A_BOXED05:
[000b769c] 0005e9d2                  dc.l A_boxed
[000b76a0]                           dc.w $9038
[000b76a2]                           dc.w $ff12
[000b76a4] 0005e010                  dc.l Auo_boxed
[000b76a8]                           dc.b $00
[000b76a9]                           dc.b $00
[000b76aa]                           dc.b $00
[000b76ab]                           dc.b $00
[000b76ac]                           dc.b $00
[000b76ad]                           dc.b $00
[000b76ae]                           dc.b $00
[000b76af]                           dc.b $00
[000b76b0]                           dc.b $00
[000b76b1]                           dc.b $00
[000b76b2]                           dc.b $00
[000b76b3]                           dc.b $00
[000b76b4] 000b7195                  dc.l BUBBLE_04
[000b76b8]                           dc.b $00
[000b76b9]                           dc.b $00
[000b76ba]                           dc.b $00
[000b76bb]                           dc.b $00
A_CHECKBOX01:
[000b76bc] 000593fc                  dc.l A_checkbox
[000b76c0]                           dc.b $00
[000b76c1]                           dc.b $00
[000b76c2]                           dc.b $00
[000b76c3]                           dc.b $01
[000b76c4] 00059318                  dc.l Auo_string
[000b76c8] 000b74b4                  dc.l TEXT_08
[000b76cc]                           dc.b $00
[000b76cd]                           dc.b $00
[000b76ce]                           dc.b $00
[000b76cf]                           dc.b $00
[000b76d0]                           dc.b $00
[000b76d1]                           dc.b $00
[000b76d2]                           dc.b $00
[000b76d3]                           dc.b $00
[000b76d4] 000b7276                  dc.l BUBBLE_06
[000b76d8]                           dc.b $00
[000b76d9]                           dc.b $00
[000b76da]                           dc.b $00
[000b76db]                           dc.b $00
A_CHECKBOX02:
[000b76dc] 000593fc                  dc.l A_checkbox
[000b76e0]                           dc.b $00
[000b76e1]                           dc.b $00
[000b76e2]                           dc.b $00
[000b76e3]                           dc.b $01
[000b76e4] 00059318                  dc.l Auo_string
[000b76e8] 000b74b9                  dc.l TEXT_09
[000b76ec]                           dc.b $00
[000b76ed]                           dc.b $00
[000b76ee]                           dc.b $00
[000b76ef]                           dc.b $00
[000b76f0]                           dc.b $00
[000b76f1]                           dc.b $00
[000b76f2]                           dc.b $00
[000b76f3]                           dc.b $00
[000b76f4] 000b729d                  dc.l BUBBLE_07
[000b76f8]                           dc.b $00
[000b76f9]                           dc.b $00
[000b76fa]                           dc.b $00
[000b76fb]                           dc.b $00
A_CHECKBOX03:
[000b76fc] 000593fc                  dc.l A_checkbox
[000b7700]                           dc.b $00
[000b7701]                           dc.b $00
[000b7702]                           dc.b $00
[000b7703]                           dc.b $01
[000b7704] 00059318                  dc.l Auo_string
[000b7708] 000b74bf                  dc.l TEXT_10
[000b770c]                           dc.b $00
[000b770d]                           dc.b $00
[000b770e]                           dc.b $00
[000b770f]                           dc.b $00
[000b7710]                           dc.b $00
[000b7711]                           dc.b $00
[000b7712]                           dc.b $00
[000b7713]                           dc.b $00
[000b7714] 000b72c4                  dc.l BUBBLE_08
[000b7718]                           dc.b $00
[000b7719]                           dc.b $00
[000b771a]                           dc.b $00
[000b771b]                           dc.b $00
A_CHECKBOX04:
[000b771c] 000593fc                  dc.l A_checkbox
[000b7720]                           dc.b $00
[000b7721]                           dc.b $00
[000b7722]                           dc.b $00
[000b7723]                           dc.b $01
[000b7724] 00059318                  dc.l Auo_string
[000b7728] 000b74c6                  dc.l TEXT_11
[000b772c]                           dc.b $00
[000b772d]                           dc.b $00
[000b772e]                           dc.b $00
[000b772f]                           dc.b $00
[000b7730]                           dc.b $00
[000b7731]                           dc.b $00
[000b7732]                           dc.b $00
[000b7733]                           dc.b $00
[000b7734] 000b72ed                  dc.l BUBBLE_09
[000b7738]                           dc.b $00
[000b7739]                           dc.b $00
[000b773a]                           dc.b $00
[000b773b]                           dc.b $00
A_CHECKBOX05:
[000b773c] 000593fc                  dc.l A_checkbox
[000b7740]                           dc.b $00
[000b7741]                           dc.b $00
[000b7742]                           dc.b $00
[000b7743]                           dc.b $01
[000b7744] 00059318                  dc.l Auo_string
[000b7748] 000b74d4                  dc.l TEXT_12
[000b774c]                           dc.b $00
[000b774d]                           dc.b $00
[000b774e]                           dc.b $00
[000b774f]                           dc.b $00
[000b7750]                           dc.b $00
[000b7751]                           dc.b $00
[000b7752]                           dc.b $00
[000b7753]                           dc.b $00
[000b7754] 000b731d                  dc.l BUBBLE_10
[000b7758]                           dc.b $00
[000b7759]                           dc.b $00
[000b775a]                           dc.b $00
[000b775b]                           dc.b $00
A_CHECKBOX06:
[000b775c] 000593fc                  dc.l A_checkbox
[000b7760]                           dc.b $00
[000b7761]                           dc.b $00
[000b7762]                           dc.b $00
[000b7763]                           dc.b $01
[000b7764] 00059318                  dc.l Auo_string
[000b7768] 000b74dd                  dc.l TEXT_13
[000b776c]                           dc.b $00
[000b776d]                           dc.b $00
[000b776e]                           dc.b $00
[000b776f]                           dc.b $00
[000b7770]                           dc.b $00
[000b7771]                           dc.b $00
[000b7772]                           dc.b $00
[000b7773]                           dc.b $00
[000b7774] 000b7344                  dc.l BUBBLE_11
[000b7778]                           dc.b $00
[000b7779]                           dc.b $00
[000b777a]                           dc.b $00
[000b777b]                           dc.b $00
A_CHECKBOX07:
[000b777c] 000593fc                  dc.l A_checkbox
[000b7780]                           dc.b $00
[000b7781]                           dc.b $00
[000b7782]                           dc.b $00
[000b7783]                           dc.b $01
[000b7784] 00059318                  dc.l Auo_string
[000b7788] 000b74e8                  dc.l TEXT_14
[000b778c]                           dc.b $00
[000b778d]                           dc.b $00
[000b778e]                           dc.b $00
[000b778f]                           dc.b $00
[000b7790]                           dc.b $00
[000b7791]                           dc.b $00
[000b7792]                           dc.b $00
[000b7793]                           dc.b $00
[000b7794] 000b7371                  dc.l BUBBLE_12
[000b7798]                           dc.b $00
[000b7799]                           dc.b $00
[000b779a]                           dc.b $00
[000b779b]                           dc.b $00
A_CHECKBOX08:
[000b779c] 000593fc                  dc.l A_checkbox
[000b77a0]                           dc.b $00
[000b77a1]                           dc.b $00
[000b77a2]                           dc.b $00
[000b77a3]                           dc.b $01
[000b77a4] 00059318                  dc.l Auo_string
[000b77a8] 000b74fb                  dc.l TEXT_16
[000b77ac]                           dc.b $00
[000b77ad]                           dc.b $00
[000b77ae]                           dc.b $00
[000b77af]                           dc.b $00
[000b77b0]                           dc.b $00
[000b77b1]                           dc.b $00
[000b77b2]                           dc.b $00
[000b77b3]                           dc.b $00
[000b77b4] 000b739f                  dc.l BUBBLE_13
[000b77b8]                           dc.b $00
[000b77b9]                           dc.b $00
[000b77ba]                           dc.b $00
[000b77bb]                           dc.b $00
A_CHECKBOX09:
[000b77bc] 000593fc                  dc.l A_checkbox
[000b77c0]                           dc.b $00
[000b77c1]                           dc.b $00
[000b77c2]                           dc.b $00
[000b77c3]                           dc.b $01
[000b77c4] 00059318                  dc.l Auo_string
[000b77c8] 000b7502                  dc.l TEXT_17
[000b77cc]                           dc.b $00
[000b77cd]                           dc.b $00
[000b77ce]                           dc.b $00
[000b77cf]                           dc.b $00
[000b77d0]                           dc.b $00
[000b77d1]                           dc.b $00
[000b77d2]                           dc.b $00
[000b77d3]                           dc.b $00
[000b77d4] 000b73ce                  dc.l BUBBLE_14
[000b77d8]                           dc.b $00
[000b77d9]                           dc.b $00
[000b77da]                           dc.b $00
[000b77db]                           dc.b $00
A_CHECKBOX10:
[000b77dc] 000593fc                  dc.l A_checkbox
[000b77e0]                           dc.b $00
[000b77e1]                           dc.b $00
[000b77e2]                           dc.b $00
[000b77e3]                           dc.b $01
[000b77e4] 00059318                  dc.l Auo_string
[000b77e8] 000b750c                  dc.l TEXT_18
[000b77ec]                           dc.b $00
[000b77ed]                           dc.b $00
[000b77ee]                           dc.b $00
[000b77ef]                           dc.b $00
[000b77f0]                           dc.b $00
[000b77f1]                           dc.b $00
[000b77f2]                           dc.b $00
[000b77f3]                           dc.b $00
[000b77f4] 000b73fa                  dc.l BUBBLE_15
[000b77f8]                           dc.b $00
[000b77f9]                           dc.b $00
[000b77fa]                           dc.b $00
[000b77fb]                           dc.b $00
A_FTEXT01:
[000b77fc] 0005b6f4                  dc.l A_ftext
[000b7800]                           dc.b $00
[000b7801]                           dc.b $01
[000b7802]                           dc.b $00
[000b7803]                           dc.b $0d
[000b7804] 0005bae4                  dc.l Auo_ftext
[000b7808] 000b7557                  dc.l extra
[000b780c]                           dc.b $00
[000b780d]                           dc.b $00
[000b780e]                           dc.b $00
[000b780f]                           dc.b $00
[000b7810]                           dc.b $00
[000b7811]                           dc.b $00
[000b7812]                           dc.b $00
[000b7813]                           dc.b $00
[000b7814]                           dc.b $00
[000b7815]                           dc.b $00
[000b7816]                           dc.b $00
[000b7817]                           dc.b $00
[000b7818]                           dc.b $00
[000b7819]                           dc.b $00
[000b781a]                           dc.b $00
[000b781b]                           dc.b $00
A_INNERFRAME01:
[000b781c] 00059f9c                  dc.l A_innerframe
[000b7820]                           dc.w $1800
[000b7822]                           dc.w $8f19
[000b7824] 00059318                  dc.l Auo_string
[000b7828] 000b74a5                  dc.l TEXT_06
[000b782c]                           dc.b $00
[000b782d]                           dc.b $00
[000b782e]                           dc.b $00
[000b782f]                           dc.b $00
[000b7830]                           dc.b $00
[000b7831]                           dc.b $00
[000b7832]                           dc.b $00
[000b7833]                           dc.b $00
[000b7834]                           dc.b $00
[000b7835]                           dc.b $00
[000b7836]                           dc.b $00
[000b7837]                           dc.b $00
[000b7838]                           dc.b $00
[000b7839]                           dc.b $00
[000b783a]                           dc.b $00
[000b783b]                           dc.b $00
A_INNERFRAME02:
[000b783c] 00059f9c                  dc.l A_innerframe
[000b7840]                           dc.w $1800
[000b7842]                           dc.w $8f19
[000b7844] 00059318                  dc.l Auo_string
[000b7848] 000b74ae                  dc.l TEXT_07
[000b784c]                           dc.b $00
[000b784d]                           dc.b $00
[000b784e]                           dc.b $00
[000b784f]                           dc.b $00
[000b7850]                           dc.b $00
[000b7851]                           dc.b $00
[000b7852]                           dc.b $00
[000b7853]                           dc.b $00
[000b7854]                           dc.b $00
[000b7855]                           dc.b $00
[000b7856]                           dc.b $00
[000b7857]                           dc.b $00
[000b7858]                           dc.b $00
[000b7859]                           dc.b $00
[000b785a]                           dc.b $00
[000b785b]                           dc.b $00
A_INNERFRAME03:
[000b785c] 00059f9c                  dc.l A_innerframe
[000b7860]                           dc.w $1800
[000b7862]                           dc.w $8f19
[000b7864] 00059318                  dc.l Auo_string
[000b7868] 000b74ee                  dc.l TEXT_15
[000b786c]                           dc.b $00
[000b786d]                           dc.b $00
[000b786e]                           dc.b $00
[000b786f]                           dc.b $00
[000b7870]                           dc.b $00
[000b7871]                           dc.b $00
[000b7872]                           dc.b $00
[000b7873]                           dc.b $00
[000b7874]                           dc.b $00
[000b7875]                           dc.b $00
[000b7876]                           dc.b $00
[000b7877]                           dc.b $00
[000b7878]                           dc.b $00
[000b7879]                           dc.b $00
[000b787a]                           dc.b $00
[000b787b]                           dc.b $00
A_INNERFRAME04:
[000b787c] 00059f9c                  dc.l A_innerframe
[000b7880]                           dc.w $1800
[000b7882]                           dc.w $8f19
[000b7884] 00059318                  dc.l Auo_string
[000b7888] 000b7516                  dc.l TEXT_19
[000b788c]                           dc.b $00
[000b788d]                           dc.b $00
[000b788e]                           dc.b $00
[000b788f]                           dc.b $00
[000b7890]                           dc.b $00
[000b7891]                           dc.b $00
[000b7892]                           dc.b $00
[000b7893]                           dc.b $00
[000b7894]                           dc.b $00
[000b7895]                           dc.b $00
[000b7896]                           dc.b $00
[000b7897]                           dc.b $00
[000b7898]                           dc.b $00
[000b7899]                           dc.b $00
[000b789a]                           dc.b $00
[000b789b]                           dc.b $00
A_INNERFRAME05:
[000b789c] 00059f9c                  dc.l A_innerframe
[000b78a0]                           dc.w $1800
[000b78a2]                           dc.w $8f19
[000b78a4] 00059318                  dc.l Auo_string
[000b78a8] 000b753d                  dc.l TEXT_22
[000b78ac]                           dc.b $00
[000b78ad]                           dc.b $00
[000b78ae]                           dc.b $00
[000b78af]                           dc.b $00
[000b78b0]                           dc.b $00
[000b78b1]                           dc.b $00
[000b78b2]                           dc.b $00
[000b78b3]                           dc.b $00
[000b78b4]                           dc.b $00
[000b78b5]                           dc.b $00
[000b78b6]                           dc.b $00
[000b78b7]                           dc.b $00
[000b78b8]                           dc.b $00
[000b78b9]                           dc.b $00
[000b78ba]                           dc.b $00
[000b78bb]                           dc.b $00
ED_FTEXT:
[000b78bc]                           dc.w $ffff
[000b78be]                           dc.b $00
[000b78bf]                           dc.b $01
[000b78c0]                           dc.b $00
[000b78c1]                           dc.b $29
[000b78c2]                           dc.b $00
[000b78c3]                           dc.b $18
[000b78c4]                           dc.b $00
[000b78c5]                           dc.b $40
[000b78c6]                           dc.b $00
[000b78c7]                           dc.b $10
[000b78c8] 000b75fc                  dc.l A_3DBUTTON06
[000b78cc]                           dc.b $00
[000b78cd]                           dc.b $00
[000b78ce]                           dc.b $00
[000b78cf]                           dc.b $00
[000b78d0]                           dc.b $00
[000b78d1]                           dc.b $3d
[000b78d2]                           dc.b $00
[000b78d3]                           dc.b $17
_01_ED_FTEXT:
[000b78d4]                           dc.b $00
[000b78d5]                           dc.b $04
[000b78d6]                           dc.b $00
[000b78d7]                           dc.b $02
[000b78d8]                           dc.b $00
[000b78d9]                           dc.b $02
[000b78da]                           dc.b $00
[000b78db]                           dc.b $18
[000b78dc]                           dc.b $00
[000b78dd]                           dc.b $40
[000b78de]                           dc.b $00
[000b78df]                           dc.b $00
[000b78e0] 000b759c                  dc.l A_3DBUTTON01
[000b78e4]                           dc.b $00
[000b78e5]                           dc.b $00
[000b78e6]                           dc.b $00
[000b78e7]                           dc.b $00
[000b78e8]                           dc.b $00
[000b78e9]                           dc.b $19
[000b78ea]                           dc.b $00
[000b78eb]                           dc.b $05
_02_ED_FTEXT:
[000b78ec]                           dc.b $00
[000b78ed]                           dc.b $01
[000b78ee]                           dc.b $00
[000b78ef]                           dc.b $03
[000b78f0]                           dc.b $00
[000b78f1]                           dc.b $03
[000b78f2]                           dc.b $00
[000b78f3]                           dc.b $14
[000b78f4]                           dc.b $00
[000b78f5]                           dc.b $40
[000b78f6]                           dc.b $00
[000b78f7]                           dc.b $00
[000b78f8]                           dc.b $00
[000b78f9]                           dc.b $fd
[000b78fa]                           dc.w $0170
[000b78fc]                           dc.b $00
[000b78fd]                           dc.b $01
[000b78fe]                           dc.b $00
[000b78ff]                           dc.b $01
[000b7900]                           dc.b $00
[000b7901]                           dc.b $17
[000b7902]                           dc.b $00
[000b7903]                           dc.b $03
_03_ED_FTEXT:
[000b7904]                           dc.b $00
[000b7905]                           dc.b $02
[000b7906]                           dc.w $ffff
[000b7908]                           dc.w $ffff
[000b790a]                           dc.b $00
[000b790b]                           dc.b $18
[000b790c]                           dc.b $00
[000b790d]                           dc.b $40
[000b790e]                           dc.w $1000
[000b7910] 000b77fc                  dc.l A_FTEXT01
[000b7914]                           dc.b $00
[000b7915]                           dc.b $00
[000b7916]                           dc.b $00
[000b7917]                           dc.b $00
[000b7918]                           dc.b $00
[000b7919]                           dc.b $17
[000b791a]                           dc.b $00
[000b791b]                           dc.b $03
_04_ED_FTEXT:
[000b791c]                           dc.b $00
[000b791d]                           dc.b $06
[000b791e]                           dc.w $ffff
[000b7920]                           dc.w $ffff
[000b7922]                           dc.b $00
[000b7923]                           dc.b $18
[000b7924]                           dc.w $4007
[000b7926]                           dc.b $00
[000b7927]                           dc.b $10
[000b7928] 000b75dc                  dc.l A_3DBUTTON05
[000b792c]                           dc.b $00
[000b792d]                           dc.b $1f
[000b792e]                           dc.b $00
[000b792f]                           dc.b $01
[000b7930]                           dc.b $00
[000b7931]                           dc.b $0c
[000b7932]                           dc.b $00
[000b7933]                           dc.b $02
_04aED_FTEXT:
[000b7934] 0002972c                  dc.l ok
[000b7938]                           dc.b $00
[000b7939]                           dc.b $00
[000b793a]                           dc.b $00
[000b793b]                           dc.b $00
[000b793c]                           dc.w $8000
[000b793e]                           dc.w $884f
[000b7940]                           dc.b $00
[000b7941]                           dc.b $00
[000b7942]                           dc.b $00
[000b7943]                           dc.b $00
[000b7944]                           dc.b $00
[000b7945]                           dc.b $00
[000b7946]                           dc.b $00
[000b7947]                           dc.b $00
[000b7948]                           dc.b $00
[000b7949]                           dc.b $00
[000b794a]                           dc.b $00
[000b794b]                           dc.b $00
_06_ED_FTEXT:
[000b794c]                           dc.b $00
[000b794d]                           dc.b $08
[000b794e]                           dc.w $ffff
[000b7950]                           dc.w $ffff
[000b7952]                           dc.b $00
[000b7953]                           dc.b $18
[000b7954]                           dc.w $4005
[000b7956]                           dc.b $00
[000b7957]                           dc.b $10
[000b7958] 000b761c                  dc.l A_3DBUTTON08
[000b795c]                           dc.b $00
[000b795d]                           dc.b $2e
[000b795e]                           dc.b $00
[000b795f]                           dc.b $01
[000b7960]                           dc.b $00
[000b7961]                           dc.b $0c
[000b7962]                           dc.b $00
[000b7963]                           dc.b $02
_06aED_FTEXT:
[000b7964] 00029706                  dc.l abort
[000b7968]                           dc.b $00
[000b7969]                           dc.b $00
[000b796a]                           dc.b $00
[000b796b]                           dc.b $00
[000b796c]                           dc.w $8000
[000b796e]                           dc.w $8841
[000b7970]                           dc.b $00
[000b7971]                           dc.b $00
[000b7972]                           dc.b $00
[000b7973]                           dc.b $00
[000b7974]                           dc.b $00
[000b7975]                           dc.b $00
[000b7976]                           dc.b $00
[000b7977]                           dc.b $00
[000b7978]                           dc.b $00
[000b7979]                           dc.b $00
[000b797a]                           dc.b $00
[000b797b]                           dc.b $00
_08_ED_FTEXT:
[000b797c]                           dc.b $00
[000b797d]                           dc.b $0c
[000b797e]                           dc.b $00
[000b797f]                           dc.b $09
[000b7980]                           dc.b $00
[000b7981]                           dc.b $09
[000b7982]                           dc.b $00
[000b7983]                           dc.b $18
[000b7984]                           dc.b $00
[000b7985]                           dc.b $40
[000b7986]                           dc.b $00
[000b7987]                           dc.b $00
[000b7988] 000b783c                  dc.l A_INNERFRAME02
[000b798c]                           dc.b $00
[000b798d]                           dc.b $01
[000b798e]                           dc.b $00
[000b798f]                           dc.b $05
[000b7990]                           dc.b $00
[000b7991]                           dc.b $3b
[000b7992]                           dc.b $00
[000b7993]                           dc.b $04
_09_ED_FTEXT:
[000b7994]                           dc.b $00
[000b7995]                           dc.b $08
[000b7996]                           dc.b $00
[000b7997]                           dc.b $0a
[000b7998]                           dc.b $00
[000b7999]                           dc.b $0b
[000b799a]                           dc.b $00
[000b799b]                           dc.b $18
[000b799c]                           dc.b $00
[000b799d]                           dc.b $40
[000b799e]                           dc.b $00
[000b799f]                           dc.b $00
[000b79a0] 000b75bc                  dc.l A_3DBUTTON02
[000b79a4]                           dc.b $00
[000b79a5]                           dc.b $01
[000b79a6]                           dc.b $00
[000b79a7]                           dc.b $01
[000b79a8]                           dc.b $00
[000b79a9]                           dc.b $39
[000b79aa]                           dc.b $00
[000b79ab]                           dc.b $02
_10_ED_FTEXT:
[000b79ac]                           dc.b $00
[000b79ad]                           dc.b $0b
[000b79ae]                           dc.w $ffff
[000b79b0]                           dc.w $ffff
[000b79b2]                           dc.b $00
[000b79b3]                           dc.b $18
[000b79b4]                           dc.b $00
[000b79b5]                           dc.b $08
[000b79b6]                           dc.b $00
[000b79b7]                           dc.b $00
[000b79b8] 000b765c                  dc.l A_BOXED02
[000b79bc]                           dc.b $00
[000b79bd]                           dc.b $00
[000b79be]                           dc.b $00
[000b79bf]                           dc.b $00
[000b79c0]                           dc.b $00
[000b79c1]                           dc.b $39
[000b79c2]                           dc.b $00
[000b79c3]                           dc.b $01
_11_ED_FTEXT:
[000b79c4]                           dc.b $00
[000b79c5]                           dc.b $09
[000b79c6]                           dc.w $ffff
[000b79c8]                           dc.w $ffff
[000b79ca]                           dc.b $00
[000b79cb]                           dc.b $18
[000b79cc]                           dc.b $00
[000b79cd]                           dc.b $08
[000b79ce]                           dc.b $00
[000b79cf]                           dc.b $00
[000b79d0] 000b765c                  dc.l A_BOXED02
[000b79d4]                           dc.b $00
[000b79d5]                           dc.b $00
[000b79d6]                           dc.b $00
[000b79d7]                           dc.b $01
[000b79d8]                           dc.b $00
[000b79d9]                           dc.b $39
[000b79da]                           dc.b $00
[000b79db]                           dc.b $01
_12_ED_FTEXT:
[000b79dc]                           dc.b $00
[000b79dd]                           dc.b $19
[000b79de]                           dc.b $00
[000b79df]                           dc.b $0d
[000b79e0]                           dc.b $00
[000b79e1]                           dc.b $17
[000b79e2]                           dc.b $00
[000b79e3]                           dc.b $18
[000b79e4]                           dc.b $00
[000b79e5]                           dc.b $40
[000b79e6]                           dc.b $00
[000b79e7]                           dc.b $00
[000b79e8] 000b781c                  dc.l A_INNERFRAME01
[000b79ec]                           dc.b $00
[000b79ed]                           dc.b $01
[000b79ee]                           dc.b $00
[000b79ef]                           dc.b $09
[000b79f0]                           dc.b $00
[000b79f1]                           dc.b $1d
[000b79f2]                           dc.b $00
[000b79f3]                           dc.b $05
_13_ED_FTEXT:
[000b79f4]                           dc.b $00
[000b79f5]                           dc.b $0f
[000b79f6]                           dc.w $ffff
[000b79f8]                           dc.w $ffff
[000b79fa]                           dc.b $00
[000b79fb]                           dc.b $18
[000b79fc]                           dc.b $00
[000b79fd]                           dc.b $41
[000b79fe]                           dc.b $00
[000b79ff]                           dc.b $00
[000b7a00] 000b76bc                  dc.l A_CHECKBOX01
[000b7a04]                           dc.b $00
[000b7a05]                           dc.b $01
[000b7a06]                           dc.b $00
[000b7a07]                           dc.b $01
[000b7a08]                           dc.b $00
[000b7a09]                           dc.b $07
[000b7a0a]                           dc.b $00
[000b7a0b]                           dc.b $01
_13aED_FTEXT:
[000b7a0c] 000299c0                  dc.l edf_effect
[000b7a10]                           dc.b $00
[000b7a11]                           dc.b $00
[000b7a12]                           dc.b $00
[000b7a13]                           dc.b $00
[000b7a14]                           dc.w $8000
[000b7a16]                           dc.b $00
[000b7a17]                           dc.b $00
[000b7a18]                           dc.b $00
[000b7a19]                           dc.b $00
[000b7a1a]                           dc.b $00
[000b7a1b]                           dc.b $01
[000b7a1c]                           dc.b $00
[000b7a1d]                           dc.b $00
[000b7a1e]                           dc.b $00
[000b7a1f]                           dc.b $00
[000b7a20]                           dc.b $00
[000b7a21]                           dc.b $00
[000b7a22]                           dc.b $00
[000b7a23]                           dc.b $00
_15_ED_FTEXT:
[000b7a24]                           dc.b $00
[000b7a25]                           dc.b $11
[000b7a26]                           dc.w $ffff
[000b7a28]                           dc.w $ffff
[000b7a2a]                           dc.b $00
[000b7a2b]                           dc.b $18
[000b7a2c]                           dc.b $00
[000b7a2d]                           dc.b $41
[000b7a2e]                           dc.b $00
[000b7a2f]                           dc.b $00
[000b7a30] 000b76dc                  dc.l A_CHECKBOX02
[000b7a34]                           dc.b $00
[000b7a35]                           dc.b $01
[000b7a36]                           dc.b $00
[000b7a37]                           dc.b $02
[000b7a38]                           dc.b $00
[000b7a39]                           dc.b $08
[000b7a3a]                           dc.b $00
[000b7a3b]                           dc.b $01
_15aED_FTEXT:
[000b7a3c] 000299c0                  dc.l edf_effect
[000b7a40]                           dc.b $00
[000b7a41]                           dc.b $00
[000b7a42]                           dc.b $00
[000b7a43]                           dc.b $00
[000b7a44]                           dc.w $8000
[000b7a46]                           dc.b $00
[000b7a47]                           dc.b $00
[000b7a48]                           dc.b $00
[000b7a49]                           dc.b $00
[000b7a4a]                           dc.b $00
[000b7a4b]                           dc.b $02
[000b7a4c]                           dc.b $00
[000b7a4d]                           dc.b $00
[000b7a4e]                           dc.b $00
[000b7a4f]                           dc.b $00
[000b7a50]                           dc.b $00
[000b7a51]                           dc.b $00
[000b7a52]                           dc.b $00
[000b7a53]                           dc.b $00
_17_ED_FTEXT:
[000b7a54]                           dc.b $00
[000b7a55]                           dc.b $13
[000b7a56]                           dc.w $ffff
[000b7a58]                           dc.w $ffff
[000b7a5a]                           dc.b $00
[000b7a5b]                           dc.b $18
[000b7a5c]                           dc.b $00
[000b7a5d]                           dc.b $41
[000b7a5e]                           dc.b $00
[000b7a5f]                           dc.b $00
[000b7a60] 000b76fc                  dc.l A_CHECKBOX03
[000b7a64]                           dc.b $00
[000b7a65]                           dc.b $01
[000b7a66]                           dc.b $00
[000b7a67]                           dc.b $03
[000b7a68]                           dc.b $00
[000b7a69]                           dc.b $09
[000b7a6a]                           dc.b $00
[000b7a6b]                           dc.b $01
_17aED_FTEXT:
[000b7a6c] 000299c0                  dc.l edf_effect
[000b7a70]                           dc.b $00
[000b7a71]                           dc.b $00
[000b7a72]                           dc.b $00
[000b7a73]                           dc.b $00
[000b7a74]                           dc.w $8000
[000b7a76]                           dc.b $00
[000b7a77]                           dc.b $00
[000b7a78]                           dc.b $00
[000b7a79]                           dc.b $00
[000b7a7a]                           dc.b $00
[000b7a7b]                           dc.b $04
[000b7a7c]                           dc.b $00
[000b7a7d]                           dc.b $00
[000b7a7e]                           dc.b $00
[000b7a7f]                           dc.b $00
[000b7a80]                           dc.b $00
[000b7a81]                           dc.b $00
[000b7a82]                           dc.b $00
[000b7a83]                           dc.b $00
_19_ED_FTEXT:
[000b7a84]                           dc.b $00
[000b7a85]                           dc.b $15
[000b7a86]                           dc.w $ffff
[000b7a88]                           dc.w $ffff
[000b7a8a]                           dc.b $00
[000b7a8b]                           dc.b $18
[000b7a8c]                           dc.b $00
[000b7a8d]                           dc.b $41
[000b7a8e]                           dc.b $00
[000b7a8f]                           dc.b $00
[000b7a90] 000b771c                  dc.l A_CHECKBOX04
[000b7a94]                           dc.b $00
[000b7a95]                           dc.b $0c
[000b7a96]                           dc.b $00
[000b7a97]                           dc.b $01
[000b7a98]                           dc.b $00
[000b7a99]                           dc.b $10
[000b7a9a]                           dc.b $00
[000b7a9b]                           dc.b $01
_19aED_FTEXT:
[000b7a9c] 000299c0                  dc.l edf_effect
[000b7aa0]                           dc.b $00
[000b7aa1]                           dc.b $00
[000b7aa2]                           dc.b $00
[000b7aa3]                           dc.b $00
[000b7aa4]                           dc.w $8000
[000b7aa6]                           dc.b $00
[000b7aa7]                           dc.b $00
[000b7aa8]                           dc.b $00
[000b7aa9]                           dc.b $00
[000b7aaa]                           dc.b $00
[000b7aab]                           dc.b $08
[000b7aac]                           dc.b $00
[000b7aad]                           dc.b $00
[000b7aae]                           dc.b $00
[000b7aaf]                           dc.b $00
[000b7ab0]                           dc.b $00
[000b7ab1]                           dc.b $00
[000b7ab2]                           dc.b $00
[000b7ab3]                           dc.b $00
_21_ED_FTEXT:
[000b7ab4]                           dc.b $00
[000b7ab5]                           dc.b $17
[000b7ab6]                           dc.w $ffff
[000b7ab8]                           dc.w $ffff
[000b7aba]                           dc.b $00
[000b7abb]                           dc.b $18
[000b7abc]                           dc.b $00
[000b7abd]                           dc.b $41
[000b7abe]                           dc.b $00
[000b7abf]                           dc.b $00
[000b7ac0] 000b773c                  dc.l A_CHECKBOX05
[000b7ac4]                           dc.b $00
[000b7ac5]                           dc.b $0c
[000b7ac6]                           dc.b $00
[000b7ac7]                           dc.b $02
[000b7ac8]                           dc.b $00
[000b7ac9]                           dc.b $0b
[000b7aca]                           dc.b $00
[000b7acb]                           dc.b $01
_21aED_FTEXT:
[000b7acc] 000299c0                  dc.l edf_effect
[000b7ad0]                           dc.b $00
[000b7ad1]                           dc.b $00
[000b7ad2]                           dc.b $00
[000b7ad3]                           dc.b $00
[000b7ad4]                           dc.w $8000
[000b7ad6]                           dc.b $00
[000b7ad7]                           dc.b $00
[000b7ad8]                           dc.b $00
[000b7ad9]                           dc.b $00
[000b7ada]                           dc.b $00
[000b7adb]                           dc.b $10
[000b7adc]                           dc.b $00
[000b7add]                           dc.b $00
[000b7ade]                           dc.b $00
[000b7adf]                           dc.b $00
[000b7ae0]                           dc.b $00
[000b7ae1]                           dc.b $00
[000b7ae2]                           dc.b $00
[000b7ae3]                           dc.b $00
_23_ED_FTEXT:
[000b7ae4]                           dc.b $00
[000b7ae5]                           dc.b $0c
[000b7ae6]                           dc.w $ffff
[000b7ae8]                           dc.w $ffff
[000b7aea]                           dc.b $00
[000b7aeb]                           dc.b $18
[000b7aec]                           dc.b $00
[000b7aed]                           dc.b $41
[000b7aee]                           dc.b $00
[000b7aef]                           dc.b $00
[000b7af0] 000b775c                  dc.l A_CHECKBOX06
[000b7af4]                           dc.b $00
[000b7af5]                           dc.b $0c
[000b7af6]                           dc.b $00
[000b7af7]                           dc.b $03
[000b7af8]                           dc.b $00
[000b7af9]                           dc.b $0d
[000b7afa]                           dc.b $00
[000b7afb]                           dc.b $01
_23aED_FTEXT:
[000b7afc] 000299c0                  dc.l edf_effect
[000b7b00]                           dc.b $00
[000b7b01]                           dc.b $00
[000b7b02]                           dc.b $00
[000b7b03]                           dc.b $00
[000b7b04]                           dc.w $8000
[000b7b06]                           dc.b $00
[000b7b07]                           dc.b $00
[000b7b08]                           dc.b $00
[000b7b09]                           dc.b $00
[000b7b0a]                           dc.b $00
[000b7b0b]                           dc.b $20
[000b7b0c]                           dc.b $00
[000b7b0d]                           dc.b $00
[000b7b0e]                           dc.b $00
[000b7b0f]                           dc.b $00
[000b7b10]                           dc.b $00
[000b7b11]                           dc.b $00
[000b7b12]                           dc.b $00
[000b7b13]                           dc.b $00
_25_ED_FTEXT:
[000b7b14]                           dc.b $00
[000b7b15]                           dc.b $22
[000b7b16]                           dc.b $00
[000b7b17]                           dc.b $1a
[000b7b18]                           dc.b $00
[000b7b19]                           dc.b $20
[000b7b1a]                           dc.b $00
[000b7b1b]                           dc.b $18
[000b7b1c]                           dc.b $00
[000b7b1d]                           dc.b $40
[000b7b1e]                           dc.b $00
[000b7b1f]                           dc.b $00
[000b7b20] 000b785c                  dc.l A_INNERFRAME03
[000b7b24]                           dc.b $00
[000b7b25]                           dc.b $1e
[000b7b26]                           dc.b $00
[000b7b27]                           dc.b $09
[000b7b28]                           dc.b $00
[000b7b29]                           dc.b $1e
[000b7b2a]                           dc.b $00
[000b7b2b]                           dc.b $05
_26_ED_FTEXT:
[000b7b2c]                           dc.b $00
[000b7b2d]                           dc.b $1c
[000b7b2e]                           dc.w $ffff
[000b7b30]                           dc.w $ffff
[000b7b32]                           dc.b $00
[000b7b33]                           dc.b $18
[000b7b34]                           dc.b $00
[000b7b35]                           dc.b $51
[000b7b36]                           dc.b $00
[000b7b37]                           dc.b $00
[000b7b38] 000b777c                  dc.l A_CHECKBOX07
[000b7b3c]                           dc.b $00
[000b7b3d]                           dc.b $01
[000b7b3e]                           dc.b $00
[000b7b3f]                           dc.b $01
[000b7b40]                           dc.b $00
[000b7b41]                           dc.b $08
[000b7b42]                           dc.b $00
[000b7b43]                           dc.b $01
_26aED_FTEXT:
[000b7b44] 0002992e                  dc.l edf_pos
[000b7b48]                           dc.b $00
[000b7b49]                           dc.b $00
[000b7b4a]                           dc.b $00
[000b7b4b]                           dc.b $00
[000b7b4c]                           dc.w $8000
[000b7b4e]                           dc.b $00
[000b7b4f]                           dc.b $00
[000b7b50]                           dc.b $00
[000b7b51]                           dc.b $00
[000b7b52]                           dc.b $00
[000b7b53]                           dc.b $01
[000b7b54]                           dc.b $00
[000b7b55]                           dc.b $00
[000b7b56]                           dc.b $00
[000b7b57]                           dc.b $00
[000b7b58]                           dc.b $00
[000b7b59]                           dc.b $00
[000b7b5a]                           dc.b $00
[000b7b5b]                           dc.b $00
_28_ED_FTEXT:
[000b7b5c]                           dc.b $00
[000b7b5d]                           dc.b $1e
[000b7b5e]                           dc.w $ffff
[000b7b60]                           dc.w $ffff
[000b7b62]                           dc.b $00
[000b7b63]                           dc.b $18
[000b7b64]                           dc.b $00
[000b7b65]                           dc.b $51
[000b7b66]                           dc.b $00
[000b7b67]                           dc.b $00
[000b7b68] 000b77bc                  dc.l A_CHECKBOX09
[000b7b6c]                           dc.b $00
[000b7b6d]                           dc.b $01
[000b7b6e]                           dc.b $00
[000b7b6f]                           dc.b $02
[000b7b70]                           dc.b $00
[000b7b71]                           dc.b $0c
[000b7b72]                           dc.b $00
[000b7b73]                           dc.b $01
_28aED_FTEXT:
[000b7b74] 0002992e                  dc.l edf_pos
[000b7b78]                           dc.b $00
[000b7b79]                           dc.b $00
[000b7b7a]                           dc.b $00
[000b7b7b]                           dc.b $00
[000b7b7c]                           dc.w $8000
[000b7b7e]                           dc.b $00
[000b7b7f]                           dc.b $00
[000b7b80]                           dc.b $00
[000b7b81]                           dc.b $00
[000b7b82]                           dc.b $00
[000b7b83]                           dc.b $00
[000b7b84]                           dc.b $00
[000b7b85]                           dc.b $00
[000b7b86]                           dc.b $00
[000b7b87]                           dc.b $00
[000b7b88]                           dc.b $00
[000b7b89]                           dc.b $00
[000b7b8a]                           dc.b $00
[000b7b8b]                           dc.b $00
_30_ED_FTEXT:
[000b7b8c]                           dc.b $00
[000b7b8d]                           dc.b $20
[000b7b8e]                           dc.w $ffff
[000b7b90]                           dc.w $ffff
[000b7b92]                           dc.b $00
[000b7b93]                           dc.b $18
[000b7b94]                           dc.b $00
[000b7b95]                           dc.b $51
[000b7b96]                           dc.b $00
[000b7b97]                           dc.b $00
[000b7b98] 000b77dc                  dc.l A_CHECKBOX10
[000b7b9c]                           dc.b $00
[000b7b9d]                           dc.b $10
[000b7b9e]                           dc.b $00
[000b7b9f]                           dc.b $02
[000b7ba0]                           dc.b $00
[000b7ba1]                           dc.b $0c
[000b7ba2]                           dc.b $00
[000b7ba3]                           dc.b $01
_30aED_FTEXT:
[000b7ba4] 0002992e                  dc.l edf_pos
[000b7ba8]                           dc.b $00
[000b7ba9]                           dc.b $00
[000b7baa]                           dc.b $00
[000b7bab]                           dc.b $00
[000b7bac]                           dc.w $8000
[000b7bae]                           dc.b $00
[000b7baf]                           dc.b $00
[000b7bb0]                           dc.b $00
[000b7bb1]                           dc.b $00
[000b7bb2]                           dc.b $00
[000b7bb3]                           dc.b $03
[000b7bb4]                           dc.b $00
[000b7bb5]                           dc.b $00
[000b7bb6]                           dc.b $00
[000b7bb7]                           dc.b $00
[000b7bb8]                           dc.b $00
[000b7bb9]                           dc.b $00
[000b7bba]                           dc.b $00
[000b7bbb]                           dc.b $00
_32_ED_FTEXT:
[000b7bbc]                           dc.b $00
[000b7bbd]                           dc.b $19
[000b7bbe]                           dc.w $ffff
[000b7bc0]                           dc.w $ffff
[000b7bc2]                           dc.b $00
[000b7bc3]                           dc.b $18
[000b7bc4]                           dc.b $00
[000b7bc5]                           dc.b $51
[000b7bc6]                           dc.b $00
[000b7bc7]                           dc.b $00
[000b7bc8] 000b779c                  dc.l A_CHECKBOX08
[000b7bcc]                           dc.b $00
[000b7bcd]                           dc.b $10
[000b7bce]                           dc.b $00
[000b7bcf]                           dc.b $01
[000b7bd0]                           dc.b $00
[000b7bd1]                           dc.b $09
[000b7bd2]                           dc.b $00
[000b7bd3]                           dc.b $01
_32aED_FTEXT:
[000b7bd4] 0002992e                  dc.l edf_pos
[000b7bd8]                           dc.b $00
[000b7bd9]                           dc.b $00
[000b7bda]                           dc.b $00
[000b7bdb]                           dc.b $00
[000b7bdc]                           dc.w $8000
[000b7bde]                           dc.b $00
[000b7bdf]                           dc.b $00
[000b7be0]                           dc.b $00
[000b7be1]                           dc.b $00
[000b7be2]                           dc.b $00
[000b7be3]                           dc.b $02
[000b7be4]                           dc.b $00
[000b7be5]                           dc.b $00
[000b7be6]                           dc.b $00
[000b7be7]                           dc.b $00
[000b7be8]                           dc.b $00
[000b7be9]                           dc.b $00
[000b7bea]                           dc.b $00
[000b7beb]                           dc.b $00
_34_ED_FTEXT:
[000b7bec]                           dc.b $00
[000b7bed]                           dc.b $29
[000b7bee]                           dc.b $00
[000b7bef]                           dc.b $23
[000b7bf0]                           dc.b $00
[000b7bf1]                           dc.b $28
[000b7bf2]                           dc.b $00
[000b7bf3]                           dc.b $18
[000b7bf4]                           dc.b $00
[000b7bf5]                           dc.b $40
[000b7bf6]                           dc.b $00
[000b7bf7]                           dc.b $00
[000b7bf8] 000b789c                  dc.l A_INNERFRAME05
[000b7bfc]                           dc.b $00
[000b7bfd]                           dc.b $01
[000b7bfe]                           dc.b $00
[000b7bff]                           dc.b $0e
[000b7c00]                           dc.b $00
[000b7c01]                           dc.b $3b
[000b7c02]                           dc.b $00
[000b7c03]                           dc.b $04
_35_ED_FTEXT:
[000b7c04]                           dc.b $00
[000b7c05]                           dc.b $25
[000b7c06]                           dc.w $ffff
[000b7c08]                           dc.w $ffff
[000b7c0a]                           dc.b $00
[000b7c0b]                           dc.b $18
[000b7c0c]                           dc.b $00
[000b7c0d]                           dc.b $05
[000b7c0e]                           dc.b $00
[000b7c0f]                           dc.b $00
[000b7c10] 000b763c                  dc.l A_3DBUTTON09
[000b7c14]                           dc.b $00
[000b7c15]                           dc.b $01
[000b7c16]                           dc.b $00
[000b7c17]                           dc.b $01
[000b7c18]                           dc.b $00
[000b7c19]                           dc.b $0c
[000b7c1a]                           dc.b $00
[000b7c1b]                           dc.b $02
_35aED_FTEXT:
[000b7c1c] 0002983a                  dc.l font_sel
[000b7c20]                           dc.b $00
[000b7c21]                           dc.b $00
[000b7c22]                           dc.b $00
[000b7c23]                           dc.b $00
[000b7c24]                           dc.w $8000
[000b7c26]                           dc.w $8853
[000b7c28]                           dc.b $00
[000b7c29]                           dc.b $00
[000b7c2a]                           dc.b $00
[000b7c2b]                           dc.b $00
[000b7c2c]                           dc.b $00
[000b7c2d]                           dc.b $00
[000b7c2e]                           dc.b $00
[000b7c2f]                           dc.b $00
[000b7c30]                           dc.b $00
[000b7c31]                           dc.b $00
[000b7c32]                           dc.b $00
[000b7c33]                           dc.b $00
_37_ED_FTEXT:
[000b7c34]                           dc.b $00
[000b7c35]                           dc.b $26
[000b7c36]                           dc.w $ffff
[000b7c38]                           dc.w $ffff
[000b7c3a]                           dc.b $00
[000b7c3b]                           dc.b $1c
[000b7c3c]                           dc.b $00
[000b7c3d]                           dc.b $40
[000b7c3e]                           dc.b $00
[000b7c3f]                           dc.b $00
[000b7c40] 000b749f                  dc.l TEXT_05
[000b7c44]                           dc.b $00
[000b7c45]                           dc.b $0f
[000b7c46]                           dc.b $00
[000b7c47]                           dc.b $01
[000b7c48]                           dc.b $00
[000b7c49]                           dc.b $05
[000b7c4a]                           dc.b $00
[000b7c4b]                           dc.b $01
_38_ED_FTEXT:
[000b7c4c]                           dc.b $00
[000b7c4d]                           dc.b $27
[000b7c4e]                           dc.w $ffff
[000b7c50]                           dc.w $ffff
[000b7c52]                           dc.b $00
[000b7c53]                           dc.b $1c
[000b7c54]                           dc.b $00
[000b7c55]                           dc.b $40
[000b7c56]                           dc.b $00
[000b7c57]                           dc.b $00
[000b7c58] 000b7499                  dc.l TEXT_04
[000b7c5c]                           dc.b $00
[000b7c5d]                           dc.b $0f
[000b7c5e]                           dc.b $00
[000b7c5f]                           dc.b $02
[000b7c60]                           dc.b $00
[000b7c61]                           dc.b $05
[000b7c62]                           dc.b $00
[000b7c63]                           dc.b $01
_39_ED_FTEXT:
[000b7c64]                           dc.b $00
[000b7c65]                           dc.b $28
[000b7c66]                           dc.w $ffff
[000b7c68]                           dc.w $ffff
[000b7c6a]                           dc.b $00
[000b7c6b]                           dc.b $1c
[000b7c6c]                           dc.b $00
[000b7c6d]                           dc.b $40
[000b7c6e]                           dc.b $00
[000b7c6f]                           dc.b $00
[000b7c70] 000b747a                  dc.l TEXT_03
[000b7c74]                           dc.b $00
[000b7c75]                           dc.b $15
[000b7c76]                           dc.b $00
[000b7c77]                           dc.b $01
[000b7c78]                           dc.b $00
[000b7c79]                           dc.b $1e
[000b7c7a]                           dc.b $00
[000b7c7b]                           dc.b $01
_40_ED_FTEXT:
[000b7c7c]                           dc.b $00
[000b7c7d]                           dc.b $22
[000b7c7e]                           dc.w $ffff
[000b7c80]                           dc.w $ffff
[000b7c82]                           dc.b $00
[000b7c83]                           dc.b $1c
[000b7c84]                           dc.b $00
[000b7c85]                           dc.b $40
[000b7c86]                           dc.b $00
[000b7c87]                           dc.b $00
[000b7c88] 000b7474                  dc.l TEXT_02
[000b7c8c]                           dc.b $00
[000b7c8d]                           dc.b $15
[000b7c8e]                           dc.b $00
[000b7c8f]                           dc.b $02
[000b7c90]                           dc.b $00
[000b7c91]                           dc.b $05
[000b7c92]                           dc.b $00
[000b7c93]                           dc.b $01
_41_ED_FTEXT:
[000b7c94]                           dc.b $00
[000b7c95]                           dc.b $00
[000b7c96]                           dc.b $00
[000b7c97]                           dc.b $2a
[000b7c98]                           dc.b $00
[000b7c99]                           dc.b $2d
[000b7c9a]                           dc.b $00
[000b7c9b]                           dc.b $18
[000b7c9c]                           dc.b $00
[000b7c9d]                           dc.b $40
[000b7c9e]                           dc.b $00
[000b7c9f]                           dc.b $00
[000b7ca0] 000b787c                  dc.l A_INNERFRAME04
[000b7ca4]                           dc.b $00
[000b7ca5]                           dc.b $01
[000b7ca6]                           dc.b $00
[000b7ca7]                           dc.b $12
[000b7ca8]                           dc.b $00
[000b7ca9]                           dc.b $3b
[000b7caa]                           dc.b $00
[000b7cab]                           dc.b $05
_42_ED_FTEXT:
[000b7cac]                           dc.b $00
[000b7cad]                           dc.b $2b
[000b7cae]                           dc.w $ffff
[000b7cb0]                           dc.w $ffff
[000b7cb2]                           dc.b $00
[000b7cb3]                           dc.b $1c
[000b7cb4]                           dc.b $00
[000b7cb5]                           dc.b $00
[000b7cb6]                           dc.b $00
[000b7cb7]                           dc.b $00
[000b7cb8] 000b7520                  dc.l TEXT_20
[000b7cbc]                           dc.b $00
[000b7cbd]                           dc.b $01
[000b7cbe]                           dc.b $00
[000b7cbf]                           dc.b $01
[000b7cc0]                           dc.b $00
[000b7cc1]                           dc.b $0e
[000b7cc2]                           dc.b $00
[000b7cc3]                           dc.b $01
_43_ED_FTEXT:
[000b7cc4]                           dc.b $00
[000b7cc5]                           dc.b $2c
[000b7cc6]                           dc.w $ffff
[000b7cc8]                           dc.w $ffff
[000b7cca]                           dc.b $00
[000b7ccb]                           dc.b $18
[000b7ccc]                           dc.b $00
[000b7ccd]                           dc.b $08
[000b7cce]                           dc.b $00
[000b7ccf]                           dc.b $10
[000b7cd0] 000b767c                  dc.l A_BOXED04
[000b7cd4]                           dc.b $00
[000b7cd5]                           dc.b $10
[000b7cd6]                           dc.b $00
[000b7cd7]                           dc.b $01
[000b7cd8]                           dc.b $00
[000b7cd9]                           dc.b $2a
[000b7cda]                           dc.b $00
[000b7cdb]                           dc.b $01
_44_ED_FTEXT:
[000b7cdc]                           dc.b $00
[000b7cdd]                           dc.b $2d
[000b7cde]                           dc.w $ffff
[000b7ce0]                           dc.w $ffff
[000b7ce2]                           dc.b $00
[000b7ce3]                           dc.b $1c
[000b7ce4]                           dc.b $00
[000b7ce5]                           dc.b $00
[000b7ce6]                           dc.b $00
[000b7ce7]                           dc.b $00
[000b7ce8] 000b752f                  dc.l TEXT_21
[000b7cec]                           dc.b $00
[000b7ced]                           dc.b $01
[000b7cee]                           dc.b $00
[000b7cef]                           dc.b $03
[000b7cf0]                           dc.b $00
[000b7cf1]                           dc.b $0d
[000b7cf2]                           dc.b $00
[000b7cf3]                           dc.b $01
_45_ED_FTEXT:
[000b7cf4]                           dc.b $00
[000b7cf5]                           dc.b $29
[000b7cf6]                           dc.w $ffff
[000b7cf8]                           dc.w $ffff
[000b7cfa]                           dc.b $00
[000b7cfb]                           dc.b $18
[000b7cfc]                           dc.b $00
[000b7cfd]                           dc.b $28
[000b7cfe]                           dc.b $00
[000b7cff]                           dc.b $10
[000b7d00] 000b769c                  dc.l A_BOXED05
[000b7d04]                           dc.b $00
[000b7d05]                           dc.b $10
[000b7d06]                           dc.b $00
[000b7d07]                           dc.b $03
[000b7d08]                           dc.b $00
[000b7d09]                           dc.b $2a
[000b7d0a]                           dc.b $00
[000b7d0b]                           dc.b $01
ftext:
[000b7d0c] 0005b6f4                  dc.l A_ftext
[000b7d10]                           dc.b $00
[000b7d11]                           dc.b $01
[000b7d12]                           dc.b $00
[000b7d13]                           dc.b $0d
[000b7d14] 0005bae4                  dc.l Auo_ftext
[000b7d18] 000b7e0c                  dc.l $000b7e0c ; no symbol found
[000b7d1c]                           dc.b $00
[000b7d1d]                           dc.b $00
[000b7d1e]                           dc.b $00
[000b7d1f]                           dc.b $00
[000b7d20]                           dc.b $00
[000b7d21]                           dc.b $00
[000b7d22]                           dc.b $00
[000b7d23]                           dc.b $00
[000b7d24]                           dc.b $00
[000b7d25]                           dc.b $00
[000b7d26]                           dc.b $00
[000b7d27]                           dc.b $00
[000b7d28]                           dc.b $00
[000b7d29]                           dc.b $00
[000b7d2a]                           dc.b $00
[000b7d2b]                           dc.b $00
visual:
[000b7d2c]                           dc.w $ffff
[000b7d2e]                           dc.w $ffff
[000b7d30]                           dc.w $ffff
[000b7d32]                           dc.b $00
[000b7d33]                           dc.b $18
[000b7d34]                           dc.b $00
[000b7d35]                           dc.b $00
[000b7d36]                           dc.b $00
[000b7d37]                           dc.b $10
[000b7d38] 000b7d0c                  dc.l ftext
[000b7d3c]                           dc.b $00
[000b7d3d]                           dc.b $00
[000b7d3e]                           dc.b $00
[000b7d3f]                           dc.b $00
[000b7d40]                           dc.b $00
[000b7d41]                           dc.b $0a
[000b7d42]                           dc.b $00
[000b7d43]                           dc.b $02
logical:
[000b7d44]                           dc.w $ffff
[000b7d46]                           dc.w $ffff
[000b7d48]                           dc.w $ffff
[000b7d4a]                           dc.b $00
[000b7d4b]                           dc.b $18
[000b7d4c]                           dc.b $00
[000b7d4d]                           dc.b $40
[000b7d4e]                           dc.b $00
[000b7d4f]                           dc.b $00
[000b7d50]                           dc.b $00
[000b7d51]                           dc.b $00
[000b7d52]                           dc.b $00
[000b7d53]                           dc.b $00
[000b7d54]                           dc.b $00
[000b7d55]                           dc.b $00
[000b7d56]                           dc.b $00
[000b7d57]                           dc.b $00
[000b7d58]                           dc.b $00
[000b7d59]                           dc.b $05
[000b7d5a]                           dc.b $00
[000b7d5b]                           dc.b $02
aud:
[000b7d5c] 000b7e21                  dc.l $000b7e21 ; no symbol found
[000b7d60] 000b7e2a                  dc.l $000b7e2a ; no symbol found
[000b7d64]                           dc.b $00
[000b7d65]                           dc.b $02
[000b7d66] 000b7e34                  dc.l $000b7e34 ; no symbol found
[000b7d6a]                           dc.b $00
[000b7d6b]                           dc.b $00
[000b7d6c]                           dc.b $00
[000b7d6d]                           dc.b $00
[000b7d6e]                           dc.b $00
[000b7d6f]                           dc.b $00
[000b7d70]                           dc.b $00
[000b7d71]                           dc.b $00
[000b7d72]                           dc.b $00
[000b7d73]                           dc.b $00
[000b7d74]                           dc.b $00
[000b7d75]                           dc.b $00
[000b7d76]                           dc.b $00
[000b7d77]                           dc.b $00
[000b7d78]                           dc.b $00
[000b7d79]                           dc.b $00
[000b7d7a]                           dc.b $00
[000b7d7b]                           dc.b $00
[000b7d7c]                           dc.b $00
[000b7d7d]                           dc.b $00
[000b7d7e]                           dc.b $00
[000b7d7f]                           dc.b $00
[000b7d80]                           dc.b $00
[000b7d81]                           dc.b $00
[000b7d82]                           dc.b $00
[000b7d83]                           dc.b $00
[000b7d84]                           dc.b $00
[000b7d85]                           dc.b $00
[000b7d86]                           dc.b $00
[000b7d87]                           dc.b $00
[000b7d88]                           dc.b $00
[000b7d89]                           dc.b $00
data:
[000b7d8a]                           dc.b 'A_ftext',0
[000b7d92]                           dc.b $00
[000b7d93]                           dc.b $00
[000b7d94]                           dc.b $00
[000b7d95]                           dc.b $00
[000b7d96]                           dc.b $00
[000b7d97]                           dc.b $00
[000b7d98]                           dc.b $00
[000b7d99]                           dc.b $00
[000b7d9a]                           dc.b $00
[000b7d9b]                           dc.b $00
[000b7d9c]                           dc.b $00
[000b7d9d]                           dc.b $00
[000b7d9e]                           dc.b $00
[000b7d9f]                           dc.b $00
[000b7da0]                           dc.b $00
[000b7da1]                           dc.b $00
[000b7da2]                           dc.b $00
[000b7da3]                           dc.b $00
[000b7da4]                           dc.b $00
[000b7da5]                           dc.b $00
[000b7da6]                           dc.b $00
[000b7da7]                           dc.b $00
[000b7da8]                           dc.b $00
[000b7da9]                           dc.b $00
[000b7daa] 0002937e                  dc.l object_tree
[000b7dae] 00029684                  dc.l test_it
[000b7db2] 0002972c                  dc.l ok
[000b7db6] 00049b7c                  dc.l Aob_delete
[000b7dba] 000b7d2c                  dc.l visual
[000b7dbe] 000b7d44                  dc.l logical
[000b7dc2] 000b7d5c                  dc.l aud
[000b7dc6] 00029364                  dc.l minsize
[000b7dca]                           dc.b $00
[000b7dcb]                           dc.b $00
[000b7dcc]                           dc.b $00
[000b7dcd]                           dc.b $00
[000b7dce] 000b7594                  dc.l title
[000b7dd2] 000b7583                  dc.l help_title
[000b7dd6]                           dc.b $00
[000b7dd7]                           dc.b $00
[000b7dd8]                           dc.b $00
[000b7dd9]                           dc.b $00
[000b7dda]                           dc.b $00
[000b7ddb]                           dc.b $00
[000b7ddc]                           dc.b $00
[000b7ddd]                           dc.b $00
[000b7dde]                           dc.b $00
[000b7ddf]                           dc.b $00
[000b7de0]                           dc.b $00
[000b7de1]                           dc.b $00
[000b7de2]                           dc.b $00
[000b7de3]                           dc.b $00
[000b7de4]                           dc.b $00
[000b7de5]                           dc.b $00
[000b7de6]                           dc.b $00
[000b7de7]                           dc.b $00
[000b7de8]                           dc.b $00
[000b7de9]                           dc.b $00
[000b7dea]                           dc.b $00
[000b7deb]                           dc.b $00
[000b7dec]                           dc.b $00
[000b7ded]                           dc.b $00
[000b7dee]                           dc.b $00
[000b7def]                           dc.b $00
[000b7df0]                           dc.b $00
[000b7df1]                           dc.b $00
[000b7df2]                           dc.b $00
[000b7df3]                           dc.b $00
[000b7df4]                           dc.b $00
[000b7df5]                           dc.b $00
[000b7df6]                           dc.b $00
[000b7df7]                           dc.b $00
[000b7df8]                           dc.b $00
[000b7df9]                           dc.b $00
[000b7dfa]                           dc.b $00
[000b7dfb]                           dc.b $00
[000b7dfc]                           dc.b $00
[000b7dfd]                           dc.b $00
[000b7dfe]                           dc.b $00
[000b7dff]                           dc.b $00
[000b7e00]                           dc.b $00
[000b7e01]                           dc.b $00
[000b7e02]                           dc.b $00
[000b7e03]                           dc.b $00
[000b7e04]                           dc.b $00
[000b7e05]                           dc.b $00
[000b7e06]                           dc.b $00
[000b7e07]                           dc.b $00
[000b7e08]                           dc.b $00
[000b7e09]                           dc.b $00
[000b7e0a]                           dc.b $00
[000b7e0b]                           dc.b $00
[000b7e0c]                           dc.b 'Guten Tag mit ACSpro',0
[000b7e21]                           dc.b '0x1000DL',0
[000b7e2a]                           dc.b 'Auo_ftext',0
[000b7e34]                           dc.b 'Guten Tag',0
[000b7e3e]                           dc.b '0x%lxL',0
[000b7e45]                           dc.b '%-30s',0
[000b7e4b]                           dc.b '%-5d',0
[000b7e50]                           dc.b '%-*s',0
	.even


	.bss

parm: ds.b 36

