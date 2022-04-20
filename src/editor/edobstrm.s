
edst_type:
[00030034] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00030038] 514f                      subq.w     #8,a7
[0003003a] 45f9 000b e95c            lea.l      POP_TYPESEL,a2
[00030040] 204a                      movea.l    a2,a0
[00030042] 4eb9 0004 9a5c            jsr        Aob_create
[00030048] 2648                      movea.l    a0,a3
[0003004a] 200b                      move.l     a3,d0
[0003004c] 6700 011c                 beq        edst_type_1
[00030050] 49f9 0010 1f12            lea.l      ACSblk,a4
[00030056] 7005                      moveq.l    #5,d0
[00030058] 2054                      movea.l    (a4),a0
[0003005a] 2268 0258                 movea.l    600(a0),a1
[0003005e] 2269 0014                 movea.l    20(a1),a1
[00030062] 41d7                      lea.l      (a7),a0
[00030064] 4eb9 0004 a3be            jsr        Aob_offset
[0003006a] 7001                      moveq.l    #1,d0
[0003006c] 2054                      movea.l    (a4),a0
[0003006e] 2268 0258                 movea.l    600(a0),a1
[00030072] d069 0034                 add.w      52(a1),d0
[00030076] d157                      add.w      d0,(a7)
[00030078] 7201                      moveq.l    #1,d1
[0003007a] d269 0036                 add.w      54(a1),d1
[0003007e] d36f 0002                 add.w      d1,2(a7)
[00030082] 2268 025c                 movea.l    604(a0),a1
[00030086] 3429 0036                 move.w     54(a1),d2
[0003008a] 947c 001a                 sub.w      #$001A,d2
[0003008e] 6712                      beq.s      edst_type_2
[00030090] 5542                      subq.w     #2,d2
[00030092] 6706                      beq.s      edst_type_3
[00030094] 5942                      subq.w     #4,d2
[00030096] 6712                      beq.s      edst_type_4
[00030098] 6016                      bra.s      edst_type_5
edst_type_3:
[0003009a] 006b 0004 0022            ori.w      #$0004,34(a3)
[000300a0] 600e                      bra.s      edst_type_5
edst_type_2:
[000300a2] 006b 0004 003a            ori.w      #$0004,58(a3)
[000300a8] 6006                      bra.s      edst_type_5
edst_type_4:
[000300aa] 006b 0004 0052            ori.w      #$0004,82(a3)
edst_type_5:
[000300b0] 322f 0002                 move.w     2(a7),d1
[000300b4] 3017                      move.w     (a7),d0
[000300b6] 224b                      movea.l    a3,a1
[000300b8] 2054                      movea.l    (a4),a0
[000300ba] 2068 0258                 movea.l    600(a0),a0
[000300be] 4eb9 0004 948a            jsr        Ame_popup
[000300c4] 3600                      move.w     d0,d3
[000300c6] 5340                      subq.w     #1,d0
[000300c8] 670a                      beq.s      edst_type_6
[000300ca] 5340                      subq.w     #1,d0
[000300cc] 6726                      beq.s      edst_type_7
[000300ce] 5340                      subq.w     #1,d0
[000300d0] 6742                      beq.s      edst_type_8
[000300d2] 605e                      bra.s      edst_type_9
edst_type_6:
[000300d4] 2054                      movea.l    (a4),a0
[000300d6] 2268 025c                 movea.l    604(a0),a1
[000300da] 337c 001c 0036            move.w     #$001C,54(a1)
[000300e0] 43ea fe69                 lea.l      -407(a2),a1
[000300e4] 7007                      moveq.l    #7,d0
[000300e6] 2054                      movea.l    (a4),a0
[000300e8] 2068 025c                 movea.l    604(a0),a0
[000300ec] 4eb9 0004 afe0            jsr        Aob_puttext
[000300f2] 603e                      bra.s      edst_type_9
edst_type_7:
[000300f4] 2054                      movea.l    (a4),a0
[000300f6] 2268 025c                 movea.l    604(a0),a1
[000300fa] 337c 001a 0036            move.w     #$001A,54(a1)
[00030100] 43ea fe72                 lea.l      -398(a2),a1
[00030104] 7007                      moveq.l    #7,d0
[00030106] 2054                      movea.l    (a4),a0
[00030108] 2068 025c                 movea.l    604(a0),a0
[0003010c] 4eb9 0004 afe0            jsr        Aob_puttext
[00030112] 601e                      bra.s      edst_type_9
edst_type_8:
[00030114] 2054                      movea.l    (a4),a0
[00030116] 2268 025c                 movea.l    604(a0),a1
[0003011a] 337c 0020 0036            move.w     #$0020,54(a1)
[00030120] 43ea fe7b                 lea.l      -389(a2),a1
[00030124] 7007                      moveq.l    #7,d0
[00030126] 2054                      movea.l    (a4),a0
[00030128] 2068 025c                 movea.l    604(a0),a0
[0003012c] 4eb9 0004 afe0            jsr        Aob_puttext
edst_type_9:
[00030132] 4a43                      tst.w      d3
[00030134] 6f2c                      ble.s      edst_type_10
[00030136] 72ff                      moveq.l    #-1,d1
[00030138] 7005                      moveq.l    #5,d0
[0003013a] 2054                      movea.l    (a4),a0
[0003013c] 2068 0258                 movea.l    600(a0),a0
[00030140] 2254                      movea.l    (a4),a1
[00030142] 2469 0258                 movea.l    600(a1),a2
[00030146] 226a 0066                 movea.l    102(a2),a1
[0003014a] 4e91                      jsr        (a1)
[0003014c] 72ff                      moveq.l    #-1,d1
[0003014e] 7001                      moveq.l    #1,d0
[00030150] 2054                      movea.l    (a4),a0
[00030152] 2068 0258                 movea.l    600(a0),a0
[00030156] 2254                      movea.l    (a4),a1
[00030158] 2469 0258                 movea.l    600(a1),a2
[0003015c] 226a 0066                 movea.l    102(a2),a1
[00030160] 4e91                      jsr        (a1)
edst_type_10:
[00030162] 204b                      movea.l    a3,a0
[00030164] 4eb9 0004 9b7c            jsr        Aob_delete
edst_type_1:
[0003016a] 504f                      addq.w     #8,a7
[0003016c] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00030170] 4e75                      rts

edst_ok:
[00030172] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00030176] 594f                      subq.w     #4,a7
[00030178] 2079 0010 1f12            movea.l    ACSblk,a0
[0003017e] 2068 0258                 movea.l    600(a0),a0
[00030182] 2468 0014                 movea.l    20(a0),a2
[00030186] 2650                      movea.l    (a0),a3
[00030188] 2853                      movea.l    (a3),a4
[0003018a] 006c 0001 0006            ori.w      #$0001,6(a4)
[00030190] 206b 0004                 movea.l    4(a3),a0
[00030194] 2a68 0004                 movea.l    4(a0),a5
[00030198] 322b 000a                 move.w     10(a3),d1
[0003019c] 48c1                      ext.l      d1
[0003019e] 2001                      move.l     d1,d0
[000301a0] e788                      lsl.l      #3,d0
[000301a2] 9081                      sub.l      d1,d0
[000301a4] e788                      lsl.l      #3,d0
[000301a6] dbc0                      adda.l     d0,a5
[000301a8] 3b6a 0036 000e            move.w     54(a2),14(a5)
[000301ae] 43d7                      lea.l      (a7),a1
[000301b0] 7003                      moveq.l    #3,d0
[000301b2] 41ea 0138                 lea.l      312(a2),a0
[000301b6] 4eb9 0005 e010            jsr        Auo_boxed
[000301bc] 2057                      movea.l    (a7),a0
[000301be] 4eb9 0007 69b0            jsr        strlen
[000301c4] 2600                      move.l     d0,d3
[000301c6] 2f17                      move.l     (a7),-(a7)
[000301c8] 226d 0014                 movea.l    20(a5),a1
[000301cc] 204c                      movea.l    a4,a0
[000301ce] 4eb9 0003 475a            jsr        change_string
[000301d4] 584f                      addq.w     #4,a7
[000301d6] b66d 001c                 cmp.w      28(a5),d3
[000301da] 6f04                      ble.s      edst_ok_1
[000301dc] 3b43 001c                 move.w     d3,28(a5)
edst_ok_1:
[000301e0] 4eb9 0002 d91e            jsr        ed_abort
[000301e6] 584f                      addq.w     #4,a7
[000301e8] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[000301ec] 4e75                      rts

set_str:
[000301ee] 48e7 0038                 movem.l    a2-a4,-(a7)
[000301f2] 2648                      movea.l    a0,a3
[000301f4] 49f9 000b eb0c            lea.l      sm,a4
[000301fa] 41ec feb0                 lea.l      -336(a4),a0
[000301fe] 4eb9 0004 9a5c            jsr        Aob_create
[00030204] 2448                      movea.l    a0,a2
[00030206] 200a                      move.l     a2,d0
[00030208] 6606                      bne.s      set_str_1
[0003020a] 91c8                      suba.l     a0,a0
[0003020c] 6000 007a                 bra.w      set_str_2
set_str_1:
[00030210] 700d                      moveq.l    #13,d0
[00030212] 224a                      movea.l    a2,a1
[00030214] 2079 0010 1f12            movea.l    ACSblk,a0
[0003021a] 2068 0258                 movea.l    600(a0),a0
[0003021e] 4eb9 0002 f23c            jsr        oe_beself
[00030224] 356b 000e 0036            move.w     14(a3),54(a2)
[0003022a] 356b 0012 003a            move.w     18(a3),58(a2)
[00030230] 206b 0014                 movea.l    20(a3),a0
[00030234] 2268 0004                 movea.l    4(a0),a1
[00030238] 700d                      moveq.l    #13,d0
[0003023a] 204a                      movea.l    a2,a0
[0003023c] 4eb9 0004 afe0            jsr        Aob_puttext
[00030242] 302b 000e                 move.w     14(a3),d0
[00030246] 907c 001a                 sub.w      #$001A,d0
[0003024a] 671a                      beq.s      set_str_3
[0003024c] 5540                      subq.w     #2,d0
[0003024e] 6706                      beq.s      set_str_4
[00030250] 5940                      subq.w     #4,d0
[00030252] 6722                      beq.s      set_str_5
[00030254] 602e                      bra.s      set_str_6
set_str_4:
[00030256] 43ec fcb9                 lea.l      -839(a4),a1
[0003025a] 7007                      moveq.l    #7,d0
[0003025c] 204a                      movea.l    a2,a0
[0003025e] 4eb9 0004 afe0            jsr        Aob_puttext
[00030264] 601e                      bra.s      set_str_6
set_str_3:
[00030266] 43ec fcc2                 lea.l      -830(a4),a1
[0003026a] 7007                      moveq.l    #7,d0
[0003026c] 204a                      movea.l    a2,a0
[0003026e] 4eb9 0004 afe0            jsr        Aob_puttext
[00030274] 600e                      bra.s      set_str_6
set_str_5:
[00030276] 43ec fccb                 lea.l      -821(a4),a1
[0003027a] 7007                      moveq.l    #7,d0
[0003027c] 204a                      movea.l    a2,a0
[0003027e] 4eb9 0004 afe0            jsr        Aob_puttext
set_str_6:
[00030284] 288a                      move.l     a2,(a4)
[00030286] 204c                      movea.l    a4,a0
set_str_2:
[00030288] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0003028c] 4e75                      rts

	.data

TEXT_003:
[000be7aa]                           dc.w $4f4b
[000be7ac]                           dc.b $00
TEXT_004:
[000be7ad]                           dc.b 'Abbruch',0
TEXT_02:
[000be7b5]                           dc.b 'Text:',0
TEXT_03:
[000be7bb]                           dc.b 'Typ:',0
TEXT_030:
[000be7c0]                           dc.b 'TEXT',0
TYPE0:
[000be7c5]                           dc.b '  String',0
TYPE1:
[000be7ce]                           dc.b '  Button',0
TYPE2:
[000be7d7]                           dc.b '  Titel',0
help_title:
[000be7df]                           dc.b 'Der String-Editor',0
title:
[000be7f1]                           dc.b ' STRINGS -',0
A_3DBUTTON01:
[000be7fc] 0005a4e2                  dc.l A_3Dbutton
[000be800]                           dc.w $29f1
[000be802]                           dc.w $0178
[000be804] 00059318                  dc.l Auo_string
[000be808]                           dc.b $00
[000be809]                           dc.b $00
[000be80a]                           dc.b $00
[000be80b]                           dc.b $00
[000be80c]                           dc.b $00
[000be80d]                           dc.b $00
[000be80e]                           dc.b $00
[000be80f]                           dc.b $00
[000be810]                           dc.b $00
[000be811]                           dc.b $00
[000be812]                           dc.b $00
[000be813]                           dc.b $00
[000be814]                           dc.b $00
[000be815]                           dc.b $00
[000be816]                           dc.b $00
[000be817]                           dc.b $00
[000be818]                           dc.b $00
[000be819]                           dc.b $00
[000be81a]                           dc.b $00
[000be81b]                           dc.b $00
A_3DBUTTON02:
[000be81c] 0005a4e2                  dc.l A_3Dbutton
[000be820]                           dc.w $29c1
[000be822]                           dc.w $0178
[000be824] 00059318                  dc.l Auo_string
[000be828] 000be7aa                  dc.l TEXT_003
[000be82c]                           dc.b $00
[000be82d]                           dc.b $00
[000be82e]                           dc.b $00
[000be82f]                           dc.b $00
[000be830]                           dc.b $00
[000be831]                           dc.b $00
[000be832]                           dc.b $00
[000be833]                           dc.b $00
[000be834]                           dc.b $00
[000be835]                           dc.b $00
[000be836]                           dc.b $00
[000be837]                           dc.b $00
[000be838]                           dc.b $00
[000be839]                           dc.b $00
[000be83a]                           dc.b $00
[000be83b]                           dc.b $00
A_3DBUTTON04:
[000be83c] 0005a4e2                  dc.l A_3Dbutton
[000be840]                           dc.w $29c1
[000be842]                           dc.w $0178
[000be844] 00059318                  dc.l Auo_string
[000be848] 000be7ad                  dc.l TEXT_004
[000be84c]                           dc.b $00
[000be84d]                           dc.b $00
[000be84e]                           dc.b $00
[000be84f]                           dc.b $00
[000be850]                           dc.b $00
[000be851]                           dc.b $00
[000be852]                           dc.b $00
[000be853]                           dc.b $00
[000be854]                           dc.b $00
[000be855]                           dc.b $00
[000be856]                           dc.b $00
[000be857]                           dc.b $00
[000be858]                           dc.b $00
[000be859]                           dc.b $00
[000be85a]                           dc.b $00
[000be85b]                           dc.b $00
A_3DBUTTON05:
[000be85c] 0005a4e2                  dc.l A_3Dbutton
[000be860]                           dc.w $21f1
[000be862]                           dc.w $0178
[000be864] 00059318                  dc.l Auo_string
[000be868]                           dc.b $00
[000be869]                           dc.b $00
[000be86a]                           dc.b $00
[000be86b]                           dc.b $00
[000be86c]                           dc.b $00
[000be86d]                           dc.b $00
[000be86e]                           dc.b $00
[000be86f]                           dc.b $00
[000be870]                           dc.b $00
[000be871]                           dc.b $00
[000be872]                           dc.b $00
[000be873]                           dc.b $00
[000be874]                           dc.b $00
[000be875]                           dc.b $00
[000be876]                           dc.b $00
[000be877]                           dc.b $00
[000be878]                           dc.b $00
[000be879]                           dc.b $00
[000be87a]                           dc.b $00
[000be87b]                           dc.b $00
A_3DBUTTON06:
[000be87c] 0005a4e2                  dc.l A_3Dbutton
[000be880]                           dc.w $09f1
[000be882]                           dc.w $0178
[000be884] 00059318                  dc.l Auo_string
[000be888] 000be7ce                  dc.l TYPE1
[000be88c]                           dc.b $00
[000be88d]                           dc.b $00
[000be88e]                           dc.b $00
[000be88f]                           dc.b $00
[000be890]                           dc.b $00
[000be891]                           dc.b $00
[000be892]                           dc.b $00
[000be893]                           dc.b $00
[000be894]                           dc.b $00
[000be895]                           dc.b $00
[000be896]                           dc.b $00
[000be897]                           dc.b $00
[000be898]                           dc.b $00
[000be899]                           dc.b $00
[000be89a]                           dc.b $00
[000be89b]                           dc.b $00
A_3DBUTTON07:
[000be89c] 0005a4e2                  dc.l A_3Dbutton
[000be8a0]                           dc.w $09f1
[000be8a2]                           dc.w $0178
[000be8a4] 00059318                  dc.l Auo_string
[000be8a8] 000be7d7                  dc.l TYPE2
[000be8ac]                           dc.b $00
[000be8ad]                           dc.b $00
[000be8ae]                           dc.b $00
[000be8af]                           dc.b $00
[000be8b0]                           dc.b $00
[000be8b1]                           dc.b $00
[000be8b2]                           dc.b $00
[000be8b3]                           dc.b $00
[000be8b4]                           dc.b $00
[000be8b5]                           dc.b $00
[000be8b6]                           dc.b $00
[000be8b7]                           dc.b $00
[000be8b8]                           dc.b $00
[000be8b9]                           dc.b $00
[000be8ba]                           dc.b $00
[000be8bb]                           dc.b $00
A_3DBUTTON09:
[000be8bc] 0005a4e2                  dc.l A_3Dbutton
[000be8c0]                           dc.w $09f1
[000be8c2]                           dc.w $0178
[000be8c4] 00059318                  dc.l Auo_string
[000be8c8] 000be7c5                  dc.l TYPE0
[000be8cc]                           dc.b $00
[000be8cd]                           dc.b $00
[000be8ce]                           dc.b $00
[000be8cf]                           dc.b $00
[000be8d0]                           dc.b $00
[000be8d1]                           dc.b $00
[000be8d2]                           dc.b $00
[000be8d3]                           dc.b $00
[000be8d4]                           dc.b $00
[000be8d5]                           dc.b $00
[000be8d6]                           dc.b $00
[000be8d7]                           dc.b $00
[000be8d8]                           dc.b $00
[000be8d9]                           dc.b $00
[000be8da]                           dc.b $00
[000be8db]                           dc.b $00
A_3DBUTTON23:
[000be8dc] 0005a4e2                  dc.l A_3Dbutton
[000be8e0]                           dc.w $09f1
[000be8e2]                           dc.w $0178
[000be8e4] 00059318                  dc.l Auo_string
[000be8e8]                           dc.b $00
[000be8e9]                           dc.b $00
[000be8ea]                           dc.b $00
[000be8eb]                           dc.b $00
[000be8ec]                           dc.b $00
[000be8ed]                           dc.b $00
[000be8ee]                           dc.b $00
[000be8ef]                           dc.b $00
[000be8f0]                           dc.b $00
[000be8f1]                           dc.b $00
[000be8f2]                           dc.b $00
[000be8f3]                           dc.b $00
[000be8f4]                           dc.b $00
[000be8f5]                           dc.b $00
[000be8f6]                           dc.b $00
[000be8f7]                           dc.b $00
[000be8f8]                           dc.b $00
[000be8f9]                           dc.b $00
[000be8fa]                           dc.b $00
[000be8fb]                           dc.b $00
A_ARROWS02:
[000be8fc] 0005b212                  dc.l A_arrows
[000be900]                           dc.w $1301
[000be902]                           dc.b $00
[000be903]                           dc.b $01
[000be904]                           dc.b $00
[000be905]                           dc.b $00
[000be906]                           dc.b $00
[000be907]                           dc.b $00
[000be908]                           dc.b $00
[000be909]                           dc.b $00
[000be90a]                           dc.b $00
[000be90b]                           dc.b $00
[000be90c]                           dc.b $00
[000be90d]                           dc.b $00
[000be90e]                           dc.b $00
[000be90f]                           dc.b $00
[000be910]                           dc.b $00
[000be911]                           dc.b $00
[000be912]                           dc.b $00
[000be913]                           dc.b $00
[000be914]                           dc.b $00
[000be915]                           dc.b $00
[000be916]                           dc.b $00
[000be917]                           dc.b $00
[000be918]                           dc.b $00
[000be919]                           dc.b $00
[000be91a]                           dc.b $00
[000be91b]                           dc.b $00
A_BOXED01:
[000be91c] 0005e9d2                  dc.l A_boxed
[000be920]                           dc.w $9000
[000be922]                           dc.w $ff12
[000be924] 0005e010                  dc.l Auo_boxed
[000be928]                           dc.b $00
[000be929]                           dc.b $00
[000be92a]                           dc.b $00
[000be92b]                           dc.b $00
[000be92c]                           dc.b $00
[000be92d]                           dc.b $00
[000be92e]                           dc.b $00
[000be92f]                           dc.b $00
[000be930]                           dc.b $00
[000be931]                           dc.b $00
[000be932]                           dc.b $00
[000be933]                           dc.b $00
[000be934]                           dc.b $00
[000be935]                           dc.b $00
[000be936]                           dc.b $00
[000be937]                           dc.b $00
[000be938]                           dc.b $00
[000be939]                           dc.b $00
[000be93a]                           dc.b $00
[000be93b]                           dc.b $00
A_INNERFRAME02:
[000be93c] 00059f9c                  dc.l A_innerframe
[000be940]                           dc.w $1000
[000be942]                           dc.w $8f19
[000be944] 00059318                  dc.l Auo_string
[000be948] 000be7b5                  dc.l TEXT_02
[000be94c]                           dc.b $00
[000be94d]                           dc.b $00
[000be94e]                           dc.b $00
[000be94f]                           dc.b $00
[000be950]                           dc.b $00
[000be951]                           dc.b $00
[000be952]                           dc.b $00
[000be953]                           dc.b $00
[000be954]                           dc.b $00
[000be955]                           dc.b $00
[000be956]                           dc.b $00
[000be957]                           dc.b $00
[000be958]                           dc.b $00
[000be959]                           dc.b $00
[000be95a]                           dc.b $00
[000be95b]                           dc.b $00
POP_TYPESEL:
[000be95c]                           dc.w $ffff
[000be95e]                           dc.b $00
[000be95f]                           dc.b $01
[000be960]                           dc.b $00
[000be961]                           dc.b $03
[000be962]                           dc.b $00
[000be963]                           dc.b $14
[000be964]                           dc.b $00
[000be965]                           dc.b $00
[000be966]                           dc.b $00
[000be967]                           dc.b $20
[000be968]                           dc.b $00
[000be969]                           dc.b $ff
[000be96a]                           dc.w $1100
[000be96c]                           dc.b $00
[000be96d]                           dc.b $00
[000be96e]                           dc.b $00
[000be96f]                           dc.b $00
[000be970]                           dc.b $00
[000be971]                           dc.b $0b
[000be972]                           dc.b $00
[000be973]                           dc.b $03
_01_POP_TYPESEL:
[000be974]                           dc.b $00
[000be975]                           dc.b $02
[000be976]                           dc.w $ffff
[000be978]                           dc.w $ffff
[000be97a]                           dc.b $00
[000be97b]                           dc.b $18
[000be97c]                           dc.b $00
[000be97d]                           dc.b $41
[000be97e]                           dc.b $00
[000be97f]                           dc.b $00
[000be980] 000be8bc                  dc.l A_3DBUTTON09
[000be984]                           dc.b $00
[000be985]                           dc.b $00
[000be986]                           dc.b $00
[000be987]                           dc.b $00
[000be988]                           dc.b $00
[000be989]                           dc.b $0b
[000be98a]                           dc.b $00
[000be98b]                           dc.b $01
_02_POP_TYPESEL:
[000be98c]                           dc.b $00
[000be98d]                           dc.b $03
[000be98e]                           dc.w $ffff
[000be990]                           dc.w $ffff
[000be992]                           dc.b $00
[000be993]                           dc.b $18
[000be994]                           dc.b $00
[000be995]                           dc.b $41
[000be996]                           dc.b $00
[000be997]                           dc.b $00
[000be998] 000be87c                  dc.l A_3DBUTTON06
[000be99c]                           dc.b $00
[000be99d]                           dc.b $00
[000be99e]                           dc.b $00
[000be99f]                           dc.b $01
[000be9a0]                           dc.b $00
[000be9a1]                           dc.b $0b
[000be9a2]                           dc.b $00
[000be9a3]                           dc.b $01
_03_POP_TYPESEL:
[000be9a4]                           dc.b $00
[000be9a5]                           dc.b $00
[000be9a6]                           dc.w $ffff
[000be9a8]                           dc.w $ffff
[000be9aa]                           dc.b $00
[000be9ab]                           dc.b $18
[000be9ac]                           dc.b $00
[000be9ad]                           dc.b $61
[000be9ae]                           dc.b $00
[000be9af]                           dc.b $00
[000be9b0] 000be89c                  dc.l A_3DBUTTON07
[000be9b4]                           dc.b $00
[000be9b5]                           dc.b $00
[000be9b6]                           dc.b $00
[000be9b7]                           dc.b $02
[000be9b8]                           dc.b $00
[000be9b9]                           dc.b $0b
[000be9ba]                           dc.b $00
[000be9bb]                           dc.b $01
ED_STR:
[000be9bc]                           dc.w $ffff
[000be9be]                           dc.b $00
[000be9bf]                           dc.b $01
[000be9c0]                           dc.b $00
[000be9c1]                           dc.b $0c
[000be9c2]                           dc.b $00
[000be9c3]                           dc.b $18
[000be9c4]                           dc.b $00
[000be9c5]                           dc.b $40
[000be9c6]                           dc.b $00
[000be9c7]                           dc.b $10
[000be9c8] 000be85c                  dc.l A_3DBUTTON05
[000be9cc]                           dc.b $00
[000be9cd]                           dc.b $00
[000be9ce]                           dc.b $00
[000be9cf]                           dc.b $00
[000be9d0]                           dc.b $00
[000be9d1]                           dc.b $3d
[000be9d2]                           dc.b $00
[000be9d3]                           dc.b $07
_01_ED_STR:
[000be9d4]                           dc.b $00
[000be9d5]                           dc.b $03
[000be9d6]                           dc.b $00
[000be9d7]                           dc.b $02
[000be9d8]                           dc.b $00
[000be9d9]                           dc.b $02
[000be9da]                           dc.b $00
[000be9db]                           dc.b $18
[000be9dc]                           dc.b $00
[000be9dd]                           dc.b $00
[000be9de]                           dc.b $00
[000be9df]                           dc.b $10
[000be9e0] 000be7fc                  dc.l A_3DBUTTON01
[000be9e4]                           dc.b $00
[000be9e5]                           dc.b $00
[000be9e6]                           dc.b $00
[000be9e7]                           dc.b $00
[000be9e8]                           dc.b $00
[000be9e9]                           dc.b $0b
[000be9ea]                           dc.b $00
[000be9eb]                           dc.b $03
_02_ED_STR:
[000be9ec]                           dc.b $00
[000be9ed]                           dc.b $01
[000be9ee]                           dc.w $ffff
[000be9f0]                           dc.w $ffff
[000be9f2]                           dc.b $00
[000be9f3]                           dc.b $1a
[000be9f4]                           dc.b $00
[000be9f5]                           dc.b $40
[000be9f6]                           dc.b $00
[000be9f7]                           dc.b $00
[000be9f8] 000be7c0                  dc.l TEXT_030
[000be9fc]                           dc.b $00
[000be9fd]                           dc.b $02
[000be9fe]                           dc.b $00
[000be9ff]                           dc.b $01
[000bea00]                           dc.b $00
[000bea01]                           dc.b $07
[000bea02]                           dc.b $00
[000bea03]                           dc.b $01
_03_ED_STR:
[000bea04]                           dc.b $00
[000bea05]                           dc.b $05
[000bea06]                           dc.b $00
[000bea07]                           dc.b $04
[000bea08]                           dc.b $00
[000bea09]                           dc.b $04
[000bea0a]                           dc.b $00
[000bea0b]                           dc.b $1c
[000bea0c]                           dc.b $00
[000bea0d]                           dc.b $40
[000bea0e]                           dc.b $00
[000bea0f]                           dc.b $00
[000bea10] 000be7bb                  dc.l TEXT_03
[000bea14]                           dc.b $00
[000bea15]                           dc.b $0d
[000bea16]                           dc.b $00
[000bea17]                           dc.b $01
[000bea18]                           dc.b $00
[000bea19]                           dc.b $05
[000bea1a]                           dc.b $00
[000bea1b]                           dc.b $01
_04_ED_STR:
[000bea1c]                           dc.b $00
[000bea1d]                           dc.b $03
[000bea1e]                           dc.w $ffff
[000bea20]                           dc.w $ffff
[000bea22]                           dc.b $00
[000bea23]                           dc.b $18
[000bea24]                           dc.b $00
[000bea25]                           dc.b $40
[000bea26]                           dc.b $00
[000bea27]                           dc.b $00
[000bea28] 000be8fc                  dc.l A_ARROWS02
[000bea2c]                           dc.b $00
[000bea2d]                           dc.b $00
[000bea2e]                           dc.b $00
[000bea2f]                           dc.b $00
[000bea30]                           dc.b $00
[000bea31]                           dc.b $01
[000bea32]                           dc.b $00
[000bea33]                           dc.b $01
_05_ED_STR:
[000bea34]                           dc.b $00
[000bea35]                           dc.b $08
[000bea36]                           dc.b $00
[000bea37]                           dc.b $07
[000bea38]                           dc.b $00
[000bea39]                           dc.b $07
[000bea3a]                           dc.b $00
[000bea3b]                           dc.b $14
[000bea3c]                           dc.b $00
[000bea3d]                           dc.b $40
[000bea3e]                           dc.b $00
[000bea3f]                           dc.b $20
[000bea40]                           dc.b $00
[000bea41]                           dc.b $ff
[000bea42]                           dc.w $1101
[000bea44]                           dc.b $00
[000bea45]                           dc.b $12
[000bea46]                           dc.b $00
[000bea47]                           dc.b $01
[000bea48]                           dc.b $00
[000bea49]                           dc.b $0b
[000bea4a]                           dc.b $00
[000bea4b]                           dc.b $01
_05aED_STR:
[000bea4c] 00030034                  dc.l edst_type
[000bea50]                           dc.b $00
[000bea51]                           dc.b $00
[000bea52]                           dc.b $00
[000bea53]                           dc.b $00
[000bea54]                           dc.w $8000
[000bea56]                           dc.w $8854
[000bea58]                           dc.b $00
[000bea59]                           dc.b $00
[000bea5a]                           dc.b $00
[000bea5b]                           dc.b $00
[000bea5c]                           dc.b $00
[000bea5d]                           dc.b $00
[000bea5e]                           dc.b $00
[000bea5f]                           dc.b $00
[000bea60]                           dc.b $00
[000bea61]                           dc.b $00
[000bea62]                           dc.b $00
[000bea63]                           dc.b $00
_07_ED_STR:
[000bea64]                           dc.b $00
[000bea65]                           dc.b $05
[000bea66]                           dc.w $ffff
[000bea68]                           dc.w $ffff
[000bea6a]                           dc.b $00
[000bea6b]                           dc.b $18
[000bea6c]                           dc.b $00
[000bea6d]                           dc.b $00
[000bea6e]                           dc.b $00
[000bea6f]                           dc.b $00
[000bea70] 000be8dc                  dc.l A_3DBUTTON23
[000bea74]                           dc.b $00
[000bea75]                           dc.b $00
[000bea76]                           dc.b $00
[000bea77]                           dc.b $00
[000bea78]                           dc.b $00
[000bea79]                           dc.b $0b
[000bea7a]                           dc.b $00
[000bea7b]                           dc.b $01
_08_ED_STR:
[000bea7c]                           dc.b $00
[000bea7d]                           dc.b $0a
[000bea7e]                           dc.w $ffff
[000bea80]                           dc.w $ffff
[000bea82]                           dc.b $00
[000bea83]                           dc.b $18
[000bea84]                           dc.w $4007
[000bea86]                           dc.b $00
[000bea87]                           dc.b $10
[000bea88] 000be81c                  dc.l A_3DBUTTON02
[000bea8c]                           dc.b $00
[000bea8d]                           dc.b $21
[000bea8e]                           dc.b $00
[000bea8f]                           dc.b $01
[000bea90]                           dc.b $00
[000bea91]                           dc.b $0c
[000bea92]                           dc.b $00
[000bea93]                           dc.b $02
_08aED_STR:
[000bea94] 00030172                  dc.l edst_ok
[000bea98]                           dc.b $00
[000bea99]                           dc.b $00
[000bea9a]                           dc.b $00
[000bea9b]                           dc.b $00
[000bea9c]                           dc.w $8000
[000bea9e]                           dc.w $884f
[000beaa0]                           dc.b $00
[000beaa1]                           dc.b $00
[000beaa2]                           dc.b $00
[000beaa3]                           dc.b $00
[000beaa4]                           dc.b $00
[000beaa5]                           dc.b $00
[000beaa6]                           dc.b $00
[000beaa7]                           dc.b $00
[000beaa8]                           dc.b $00
[000beaa9]                           dc.b $00
[000beaaa]                           dc.b $00
[000beaab]                           dc.b $00
_10_ED_STR:
[000beaac]                           dc.b $00
[000beaad]                           dc.b $0c
[000beaae]                           dc.w $ffff
[000beab0]                           dc.w $ffff
[000beab2]                           dc.b $00
[000beab3]                           dc.b $18
[000beab4]                           dc.w $4005
[000beab6]                           dc.b $00
[000beab7]                           dc.b $10
[000beab8] 000be83c                  dc.l A_3DBUTTON04
[000beabc]                           dc.b $00
[000beabd]                           dc.b $2f
[000beabe]                           dc.b $00
[000beabf]                           dc.b $01
[000beac0]                           dc.b $00
[000beac1]                           dc.b $0c
[000beac2]                           dc.b $00
[000beac3]                           dc.b $02
_10aED_STR:
[000beac4] 0002d91e                  dc.l ed_abort
[000beac8]                           dc.b $00
[000beac9]                           dc.b $00
[000beaca]                           dc.b $00
[000beacb]                           dc.b $00
[000beacc]                           dc.w $8000
[000beace]                           dc.w $8841
[000bead0]                           dc.b $00
[000bead1]                           dc.b $00
[000bead2]                           dc.b $00
[000bead3]                           dc.b $00
[000bead4]                           dc.b $00
[000bead5]                           dc.b $00
[000bead6]                           dc.b $00
[000bead7]                           dc.b $00
[000bead8]                           dc.b $00
[000bead9]                           dc.b $00
[000beada]                           dc.b $00
[000beadb]                           dc.b $00
_12_ED_STR:
[000beadc]                           dc.b $00
[000beadd]                           dc.b $00
[000beade]                           dc.b $00
[000beadf]                           dc.b $0d
[000beae0]                           dc.b $00
[000beae1]                           dc.b $0d
[000beae2]                           dc.b $00
[000beae3]                           dc.b $18
[000beae4]                           dc.b $00
[000beae5]                           dc.b $40
[000beae6]                           dc.b $00
[000beae7]                           dc.b $00
[000beae8] 000be93c                  dc.l A_INNERFRAME02
[000beaec]                           dc.b $00
[000beaed]                           dc.b $01
[000beaee]                           dc.b $00
[000beaef]                           dc.b $03
[000beaf0]                           dc.b $00
[000beaf1]                           dc.b $3b
[000beaf2]                           dc.b $00
[000beaf3]                           dc.b $04
_13_ED_STR:
[000beaf4]                           dc.b $00
[000beaf5]                           dc.b $0c
[000beaf6]                           dc.w $ffff
[000beaf8]                           dc.w $ffff
[000beafa]                           dc.b $00
[000beafb]                           dc.b $18
[000beafc]                           dc.b $00
[000beafd]                           dc.b $28
[000beafe]                           dc.b $00
[000beaff]                           dc.b $10
[000beb00] 000be91c                  dc.l A_BOXED01
[000beb04]                           dc.b $00
[000beb05]                           dc.b $01
[000beb06]                           dc.b $00
[000beb07]                           dc.b $02
[000beb08]                           dc.b $00
[000beb09]                           dc.b $39
[000beb0a]                           dc.b $00
[000beb0b]                           dc.b $01
sm:
[000beb0c]                           dc.b $00
[000beb0d]                           dc.b $00
[000beb0e]                           dc.b $00
[000beb0f]                           dc.b $00
[000beb10] 00030172                  dc.l edst_ok
[000beb14] 00049b7c                  dc.l Aob_delete
[000beb18] 000be7f1                  dc.l title
[000beb1c] 000be7df                  dc.l help_title
[000beb20]                           dc.b $00
[000beb21]                           dc.b $00
[000beb22]                           dc.b $00
[000beb23]                           dc.b $00
