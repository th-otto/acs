
edus_ok:
[0002f376] 48e7 003e                 movem.l    a2-a6,-(a7)
[0002f37a] 4fef ffdc                 lea.l      -36(a7),a7
[0002f37e] 2079 0010 1f12            movea.l    ACSblk,a0
[0002f384] 2268 0258                 movea.l    600(a0),a1
[0002f388] 2451                      movea.l    (a1),a2
[0002f38a] 2669 0014                 movea.l    20(a1),a3
[0002f38e] 206a 0004                 movea.l    4(a2),a0
[0002f392] 2868 0004                 movea.l    4(a0),a4
[0002f396] 322a 000a                 move.w     10(a2),d1
[0002f39a] 48c1                      ext.l      d1
[0002f39c] 2001                      move.l     d1,d0
[0002f39e] e788                      lsl.l      #3,d0
[0002f3a0] 9081                      sub.l      d1,d0
[0002f3a2] e788                      lsl.l      #3,d0
[0002f3a4] d9c0                      adda.l     d0,a4
[0002f3a6] 2eac 0014                 move.l     20(a4),(a7)
[0002f3aa] 4def 0004                 lea.l      4(a7),a6
[0002f3ae] 224e                      movea.l    a6,a1
[0002f3b0] 7003                      moveq.l    #3,d0
[0002f3b2] 41eb 0168                 lea.l      360(a3),a0
[0002f3b6] 4eb9 0005 e010            jsr        Auo_boxed
[0002f3bc] 43ee 0004                 lea.l      4(a6),a1
[0002f3c0] 7003                      moveq.l    #3,d0
[0002f3c2] 41eb 0198                 lea.l      408(a3),a0
[0002f3c6] 4eb9 0005 e010            jsr        Auo_boxed
[0002f3cc] 2056                      movea.l    (a6),a0
[0002f3ce] 4eb9 0004 3a92            jsr        Ast_isEmpty
[0002f3d4] 4a40                      tst.w      d0
[0002f3d6] 660e                      bne.s      edus_ok_1
[0002f3d8] 206e 0004                 movea.l    4(a6),a0
[0002f3dc] 4eb9 0004 3a92            jsr        Ast_isEmpty
[0002f3e2] 4a40                      tst.w      d0
[0002f3e4] 6712                      beq.s      edus_ok_2
edus_ok_1:
[0002f3e6] 41f9 000b cd74            lea.l      ERR_MUST,a0
[0002f3ec] 7001                      moveq.l    #1,d0
[0002f3ee] 4eb9 0005 17fe            jsr        Awi_alert
[0002f3f4] 6000 0082                 bra        edus_ok_3
edus_ok_2:
[0002f3f8] 43ee 0008                 lea.l      8(a6),a1
[0002f3fc] 7003                      moveq.l    #3,d0
[0002f3fe] 41eb 01c8                 lea.l      456(a3),a0
[0002f402] 4eb9 0005 e010            jsr        Auo_boxed
[0002f408] 43ee 000c                 lea.l      12(a6),a1
[0002f40c] 7003                      moveq.l    #3,d0
[0002f40e] 41eb 01f8                 lea.l      504(a3),a0
[0002f412] 4eb9 0005 e010            jsr        Auo_boxed
[0002f418] 43ee 0010                 lea.l      16(a6),a1
[0002f41c] 7003                      moveq.l    #3,d0
[0002f41e] 41eb 0228                 lea.l      552(a3),a0
[0002f422] 4eb9 0005 e010            jsr        Auo_boxed
[0002f428] 43ee 0014                 lea.l      20(a6),a1
[0002f42c] 7003                      moveq.l    #3,d0
[0002f42e] 41eb 0258                 lea.l      600(a3),a0
[0002f432] 4eb9 0005 e010            jsr        Auo_boxed
[0002f438] 43ee 0018                 lea.l      24(a6),a1
[0002f43c] 7003                      moveq.l    #3,d0
[0002f43e] 41eb 0288                 lea.l      648(a3),a0
[0002f442] 4eb9 0005 e010            jsr        Auo_boxed
[0002f448] 43ee 001c                 lea.l      28(a6),a1
[0002f44c] 7003                      moveq.l    #3,d0
[0002f44e] 41eb 02a0                 lea.l      672(a3),a0
[0002f452] 4eb9 0005 e010            jsr        Auo_boxed
[0002f458] 4856                      pea.l      (a6)
[0002f45a] 226f 0004                 movea.l    4(a7),a1
[0002f45e] 2052                      movea.l    (a2),a0
[0002f460] 4eb9 0003 39be            jsr        change_user
[0002f466] 584f                      addq.w     #4,a7
[0002f468] 2a48                      movea.l    a0,a5
[0002f46a] 200d                      move.l     a5,d0
[0002f46c] 6704                      beq.s      edus_ok_4
[0002f46e] 2940 0014                 move.l     d0,20(a4)
edus_ok_4:
[0002f472] 4eb9 0002 d91e            jsr        ed_abort
edus_ok_3:
[0002f478] 4fef 0024                 lea.l      36(a7),a7
[0002f47c] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[0002f480] 4e75                      rts

edus_list:
[0002f482] 2f0a                      move.l     a2,-(a7)
[0002f484] 2f0b                      move.l     a3,-(a7)
[0002f486] 2079 0010 1f12            movea.l    ACSblk,a0
[0002f48c] 2468 0258                 movea.l    600(a0),a2
[0002f490] 2052                      movea.l    (a2),a0
[0002f492] 006a 0004 0054            ori.w      #$0004,84(a2)
[0002f498] 47f9 000c 2ade            lea.l      list_reference,a3
[0002f49e] 2690                      move.l     (a0),(a3)
[0002f4a0] 2250                      movea.l    (a0),a1
[0002f4a2] 2769 003c 0004            move.l     60(a1),4(a3)
[0002f4a8] 204b                      movea.l    a3,a0
[0002f4aa] 2279 000c 1880            movea.l    $000C1880,a1
[0002f4b0] 4e91                      jsr        (a1)
[0002f4b2] 026a fffb 0054            andi.w     #$FFFB,84(a2)
[0002f4b8] 265f                      movea.l    (a7)+,a3
[0002f4ba] 245f                      movea.l    (a7)+,a2
[0002f4bc] 4e75                      rts

accept:
[0002f4be] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0002f4c2] 594f                      subq.w     #4,a7
[0002f4c4] 3800                      move.w     d0,d4
[0002f4c6] 2079 0010 1f12            movea.l    ACSblk,a0
[0002f4cc] 2668 0258                 movea.l    600(a0),a3
[0002f4d0] 286b 0014                 movea.l    20(a3),a4
[0002f4d4] 2a68 0240                 movea.l    576(a0),a5
[0002f4d8] 4268 0248                 clr.w      584(a0)
[0002f4dc] 4eb9 0004 484c            jsr        Adr_next
[0002f4e2] 3600                      move.w     d0,d3
[0002f4e4] 6f74                      ble.s      accept_1
[0002f4e6] 48c0                      ext.l      d0
[0002f4e8] 2200                      move.l     d0,d1
[0002f4ea] d281                      add.l      d1,d1
[0002f4ec] d280                      add.l      d0,d1
[0002f4ee] e789                      lsl.l      #3,d1
[0002f4f0] 246d 0014                 movea.l    20(a5),a2
[0002f4f4] 45f2 1818                 lea.l      24(a2,d1.l),a2
[0002f4f8] 0c6a 271c 0016            cmpi.w     #$271C,22(a2)
[0002f4fe] 6714                      beq.s      accept_2
[0002f500] 4a44                      tst.w      d4
[0002f502] 6756                      beq.s      accept_1
[0002f504] 0c6a 2724 0016            cmpi.w     #$2724,22(a2)
[0002f50a] 6708                      beq.s      accept_2
[0002f50c] 0c6a 271a 0016            cmpi.w     #$271A,22(a2)
[0002f512] 6646                      bne.s      accept_1
accept_2:
[0002f514] 2eaa 000c                 move.l     12(a2),(a7)
[0002f518] 4eb9 0004 b286            jsr        Awi_diaend
[0002f51e] 2257                      movea.l    (a7),a1
[0002f520] 43e9 0016                 lea.l      22(a1),a1
[0002f524] 2079 0010 1f12            movea.l    ACSblk,a0
[0002f52a] 3028 0260                 move.w     608(a0),d0
[0002f52e] 204c                      movea.l    a4,a0
[0002f530] 4eb9 0004 afe0            jsr        Aob_puttext
[0002f536] 72ff                      moveq.l    #-1,d1
[0002f538] 2079 0010 1f12            movea.l    ACSblk,a0
[0002f53e] 3028 0260                 move.w     608(a0),d0
[0002f542] 226b 0066                 movea.l    102(a3),a1
[0002f546] 204b                      movea.l    a3,a0
[0002f548] 4e91                      jsr        (a1)
[0002f54a] 4eb9 0004 b33c            jsr        Awi_diastart
[0002f550] 3003                      move.w     d3,d0
[0002f552] 204d                      movea.l    a5,a0
[0002f554] 4eb9 0004 492a            jsr        Adr_del
accept_1:
[0002f55a] 584f                      addq.w     #4,a7
[0002f55c] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0002f560] 4e75                      rts

edus_ref:
[0002f562] 4240                      clr.w      d0
[0002f564] 6100 ff58                 bsr        accept
[0002f568] 4e75                      rts

edus_ptr:
[0002f56a] 7001                      moveq.l    #1,d0
[0002f56c] 6100 ff50                 bsr        accept
[0002f570] 4e75                      rts

set_user:
[0002f572] 48e7 003c                 movem.l    a2-a5,-(a7)
[0002f576] 4fef fefe                 lea.l      -258(a7),a7
[0002f57a] 2848                      movea.l    a0,a4
[0002f57c] 4bf9 000b d248            lea.l      sm,a5
[0002f582] 41ed fcb8                 lea.l      -840(a5),a0
[0002f586] 4eb9 0004 9a5c            jsr        Aob_create
[0002f58c] 2448                      movea.l    a0,a2
[0002f58e] 200a                      move.l     a2,d0
[0002f590] 6606                      bne.s      set_user_1
[0002f592] 91c8                      suba.l     a0,a0
[0002f594] 6000 0162                 bra        set_user_2
set_user_1:
[0002f598] 286c 0014                 movea.l    20(a4),a4
[0002f59c] 47f9 0010 1f12            lea.l      ACSblk,a3
[0002f5a2] 700f                      moveq.l    #15,d0
[0002f5a4] 224a                      movea.l    a2,a1
[0002f5a6] 2053                      movea.l    (a3),a0
[0002f5a8] 2068 0258                 movea.l    600(a0),a0
[0002f5ac] 4eb9 0002 f23c            jsr        oe_beself
[0002f5b2] 7011                      moveq.l    #17,d0
[0002f5b4] 224a                      movea.l    a2,a1
[0002f5b6] 2053                      movea.l    (a3),a0
[0002f5b8] 2068 0258                 movea.l    600(a0),a0
[0002f5bc] 4eb9 0002 f23c            jsr        oe_beself
[0002f5c2] 7013                      moveq.l    #19,d0
[0002f5c4] 224a                      movea.l    a2,a1
[0002f5c6] 2053                      movea.l    (a3),a0
[0002f5c8] 2068 0258                 movea.l    600(a0),a0
[0002f5cc] 4eb9 0002 f23c            jsr        oe_beself
[0002f5d2] 7015                      moveq.l    #21,d0
[0002f5d4] 224a                      movea.l    a2,a1
[0002f5d6] 2053                      movea.l    (a3),a0
[0002f5d8] 2068 0258                 movea.l    600(a0),a0
[0002f5dc] 4eb9 0002 f23c            jsr        oe_beself
[0002f5e2] 7017                      moveq.l    #23,d0
[0002f5e4] 224a                      movea.l    a2,a1
[0002f5e6] 2053                      movea.l    (a3),a0
[0002f5e8] 2068 0258                 movea.l    600(a0),a0
[0002f5ec] 4eb9 0002 f23c            jsr        oe_beself
[0002f5f2] 7019                      moveq.l    #25,d0
[0002f5f4] 224a                      movea.l    a2,a1
[0002f5f6] 2053                      movea.l    (a3),a0
[0002f5f8] 2068 0258                 movea.l    600(a0),a0
[0002f5fc] 4eb9 0002 f23c            jsr        oe_beself
[0002f602] 701b                      moveq.l    #27,d0
[0002f604] 224a                      movea.l    a2,a1
[0002f606] 2053                      movea.l    (a3),a0
[0002f608] 2068 0258                 movea.l    600(a0),a0
[0002f60c] 4eb9 0002 f23c            jsr        oe_beself
[0002f612] 701c                      moveq.l    #28,d0
[0002f614] 224a                      movea.l    a2,a1
[0002f616] 2053                      movea.l    (a3),a0
[0002f618] 2068 0258                 movea.l    600(a0),a0
[0002f61c] 4eb9 0002 f23c            jsr        oe_beself
[0002f622] 266c 0004                 movea.l    4(a4),a3
[0002f626] 43d7                      lea.l      (a7),a1
[0002f628] 2053                      movea.l    (a3),a0
[0002f62a] 4eb9 0001 3fb6            jsr        set_ref
[0002f630] 43d7                      lea.l      (a7),a1
[0002f632] 7004                      moveq.l    #4,d0
[0002f634] 41ea 0168                 lea.l      360(a2),a0
[0002f638] 4eb9 0005 e010            jsr        Auo_boxed
[0002f63e] 43d7                      lea.l      (a7),a1
[0002f640] 206b 0004                 movea.l    4(a3),a0
[0002f644] 4eb9 0001 3fb6            jsr        set_ref
[0002f64a] 43d7                      lea.l      (a7),a1
[0002f64c] 7004                      moveq.l    #4,d0
[0002f64e] 41ea 0198                 lea.l      408(a2),a0
[0002f652] 4eb9 0005 e010            jsr        Auo_boxed
[0002f658] 43d7                      lea.l      (a7),a1
[0002f65a] 206b 0008                 movea.l    8(a3),a0
[0002f65e] 4eb9 0001 3fb6            jsr        set_ref
[0002f664] 43d7                      lea.l      (a7),a1
[0002f666] 7004                      moveq.l    #4,d0
[0002f668] 41ea 01c8                 lea.l      456(a2),a0
[0002f66c] 4eb9 0005 e010            jsr        Auo_boxed
[0002f672] 43d7                      lea.l      (a7),a1
[0002f674] 206b 000c                 movea.l    12(a3),a0
[0002f678] 4eb9 0001 3fb6            jsr        set_ref
[0002f67e] 43d7                      lea.l      (a7),a1
[0002f680] 7004                      moveq.l    #4,d0
[0002f682] 41ea 01f8                 lea.l      504(a2),a0
[0002f686] 4eb9 0005 e010            jsr        Auo_boxed
[0002f68c] 43d7                      lea.l      (a7),a1
[0002f68e] 206b 0010                 movea.l    16(a3),a0
[0002f692] 4eb9 0001 3fb6            jsr        set_ref
[0002f698] 43d7                      lea.l      (a7),a1
[0002f69a] 7004                      moveq.l    #4,d0
[0002f69c] 41ea 0228                 lea.l      552(a2),a0
[0002f6a0] 4eb9 0005 e010            jsr        Auo_boxed
[0002f6a6] 43d7                      lea.l      (a7),a1
[0002f6a8] 206b 0014                 movea.l    20(a3),a0
[0002f6ac] 4eb9 0001 3fb6            jsr        set_ref
[0002f6b2] 43d7                      lea.l      (a7),a1
[0002f6b4] 7004                      moveq.l    #4,d0
[0002f6b6] 41ea 0258                 lea.l      600(a2),a0
[0002f6ba] 4eb9 0005 e010            jsr        Auo_boxed
[0002f6c0] 43d7                      lea.l      (a7),a1
[0002f6c2] 206b 0018                 movea.l    24(a3),a0
[0002f6c6] 4eb9 0001 3fd8            jsr        set_val
[0002f6cc] 43d7                      lea.l      (a7),a1
[0002f6ce] 7004                      moveq.l    #4,d0
[0002f6d0] 41ea 0288                 lea.l      648(a2),a0
[0002f6d4] 4eb9 0005 e010            jsr        Auo_boxed
[0002f6da] 43d7                      lea.l      (a7),a1
[0002f6dc] 206b 001c                 movea.l    28(a3),a0
[0002f6e0] 4eb9 0001 3fd8            jsr        set_val
[0002f6e6] 43d7                      lea.l      (a7),a1
[0002f6e8] 7004                      moveq.l    #4,d0
[0002f6ea] 41ea 02a0                 lea.l      672(a2),a0
[0002f6ee] 4eb9 0005 e010            jsr        Auo_boxed
[0002f6f4] 2a8a                      move.l     a2,(a5)
[0002f6f6] 204d                      movea.l    a5,a0
set_user_2:
[0002f6f8] 4fef 0102                 lea.l      258(a7),a7
[0002f6fc] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0002f700] 4e75                      rts

	.data

ERR_MUST:
[000bcd74]                           dc.b '[3][ | Es mÅssen Werte | eingegeben werden ][ OK ]',0
TEXT_003:
[000bcda7]                           dc.b $4f
[000bcda8]                           dc.w $4b00
TEXT_004:
[000bcdaa]                           dc.b 'Abbruch',0
TEXT_01:
[000bcdb2]                           dc.b 'Code:',0
TEXT_02:
[000bcdb8]                           dc.b 'Parm:',0
TEXT_03:
[000bcdbe]                           dc.b 'Serv:',0
TEXT_04:
[000bcdc4]                           dc.b 'Ptr1:',0
TEXT_05:
[000bcdca]                           dc.b 'Ptr2:',0
TEXT_06:
[000bcdd0]                           dc.b 'Ptr3:',0
TEXT_07:
[000bcdd6]                           dc.b 'Bubb:',0
TEXT_08:
[000bcddc]                           dc.b 'CMen:',0
help_title:
[000bcde2]                           dc.b 'Der USERDEF-Editor',0
title:
[000bcdf5]                           dc.b ' USERBLK -',0
A_3DBUTTON02:
[000bce00] 0005a4e2                  dc.l A_3Dbutton
[000bce04]                           dc.w $21f1
[000bce06]                           dc.w $01f8
[000bce08] 00059318                  dc.l Auo_string
[000bce0c]                           dc.b $00
[000bce0d]                           dc.b $00
[000bce0e]                           dc.b $00
[000bce0f]                           dc.b $00
[000bce10]                           dc.b $00
[000bce11]                           dc.b $00
[000bce12]                           dc.b $00
[000bce13]                           dc.b $00
[000bce14]                           dc.b $00
[000bce15]                           dc.b $00
[000bce16]                           dc.b $00
[000bce17]                           dc.b $00
[000bce18]                           dc.b $00
[000bce19]                           dc.b $00
[000bce1a]                           dc.b $00
[000bce1b]                           dc.b $00
[000bce1c]                           dc.b $00
[000bce1d]                           dc.b $00
[000bce1e]                           dc.b $00
[000bce1f]                           dc.b $00
A_3DBUTTON03:
[000bce20] 0005a4e2                  dc.l A_3Dbutton
[000bce24]                           dc.w $29c1
[000bce26]                           dc.w $0178
[000bce28] 00059318                  dc.l Auo_string
[000bce2c] 000bcdaa                  dc.l TEXT_004
[000bce30]                           dc.b $00
[000bce31]                           dc.b $00
[000bce32]                           dc.b $00
[000bce33]                           dc.b $00
[000bce34]                           dc.b $00
[000bce35]                           dc.b $00
[000bce36]                           dc.b $00
[000bce37]                           dc.b $00
[000bce38]                           dc.b $00
[000bce39]                           dc.b $00
[000bce3a]                           dc.b $00
[000bce3b]                           dc.b $00
[000bce3c]                           dc.b $00
[000bce3d]                           dc.b $00
[000bce3e]                           dc.b $00
[000bce3f]                           dc.b $00
A_3DBUTTON04:
[000bce40] 0005a4e2                  dc.l A_3Dbutton
[000bce44]                           dc.w $29c1
[000bce46]                           dc.w $0178
[000bce48] 00059318                  dc.l Auo_string
[000bce4c] 000bcda7                  dc.l TEXT_003
[000bce50]                           dc.b $00
[000bce51]                           dc.b $00
[000bce52]                           dc.b $00
[000bce53]                           dc.b $00
[000bce54]                           dc.b $00
[000bce55]                           dc.b $00
[000bce56]                           dc.b $00
[000bce57]                           dc.b $00
[000bce58]                           dc.b $00
[000bce59]                           dc.b $00
[000bce5a]                           dc.b $00
[000bce5b]                           dc.b $00
[000bce5c]                           dc.b $00
[000bce5d]                           dc.b $00
[000bce5e]                           dc.b $00
[000bce5f]                           dc.b $00
A_3DBUTTON05:
[000bce60] 0005a4e2                  dc.l A_3Dbutton
[000bce64]                           dc.w $2011
[000bce66]                           dc.w $9178
[000bce68] 00059318                  dc.l Auo_string
[000bce6c]                           dc.b $00
[000bce6d]                           dc.b $00
[000bce6e]                           dc.b $00
[000bce6f]                           dc.b $00
[000bce70]                           dc.b $00
[000bce71]                           dc.b $00
[000bce72]                           dc.b $00
[000bce73]                           dc.b $00
[000bce74]                           dc.b $00
[000bce75]                           dc.b $00
[000bce76]                           dc.b $00
[000bce77]                           dc.b $00
[000bce78]                           dc.b $00
[000bce79]                           dc.b $00
[000bce7a]                           dc.b $00
[000bce7b]                           dc.b $00
[000bce7c]                           dc.b $00
[000bce7d]                           dc.b $00
[000bce7e]                           dc.b $00
[000bce7f]                           dc.b $00
A_BOXED01:
[000bce80] 0005e9d2                  dc.l A_boxed
[000bce84]                           dc.w $9038
[000bce86]                           dc.w $1f12
[000bce88] 0005e010                  dc.l Auo_boxed
[000bce8c]                           dc.b $00
[000bce8d]                           dc.b $00
[000bce8e]                           dc.b $00
[000bce8f]                           dc.b $00
[000bce90]                           dc.b $00
[000bce91]                           dc.b $00
[000bce92]                           dc.b $00
[000bce93]                           dc.b $00
[000bce94]                           dc.b $00
[000bce95]                           dc.b $00
[000bce96]                           dc.b $00
[000bce97]                           dc.b $00
[000bce98]                           dc.b $00
[000bce99]                           dc.b $00
[000bce9a]                           dc.b $00
[000bce9b]                           dc.b $00
[000bce9c]                           dc.b $00
[000bce9d]                           dc.b $00
[000bce9e]                           dc.b $00
[000bce9f]                           dc.b $00
A_BOXED02:
[000bcea0] 0005e9d2                  dc.l A_boxed
[000bcea4]                           dc.w $9038
[000bcea6]                           dc.w $ff12
[000bcea8] 0005e010                  dc.l Auo_boxed
[000bceac]                           dc.b $00
[000bcead]                           dc.b $00
[000bceae]                           dc.b $00
[000bceaf]                           dc.b $00
[000bceb0]                           dc.b $00
[000bceb1]                           dc.b $00
[000bceb2]                           dc.b $00
[000bceb3]                           dc.b $00
[000bceb4]                           dc.b $00
[000bceb5]                           dc.b $00
[000bceb6]                           dc.b $00
[000bceb7]                           dc.b $00
[000bceb8]                           dc.b $00
[000bceb9]                           dc.b $00
[000bceba]                           dc.b $00
[000bcebb]                           dc.b $00
[000bcebc]                           dc.b $00
[000bcebd]                           dc.b $00
[000bcebe]                           dc.b $00
[000bcebf]                           dc.b $00
A_BOXED03:
[000bcec0] 0005e9d2                  dc.l A_boxed
[000bcec4]                           dc.w $9038
[000bcec6]                           dc.w $ff12
[000bcec8] 0005e010                  dc.l Auo_boxed
[000bcecc]                           dc.b $00
[000bcecd]                           dc.b $00
[000bcece]                           dc.b $00
[000bcecf]                           dc.b $00
[000bced0]                           dc.b $00
[000bced1]                           dc.b $00
[000bced2]                           dc.b $00
[000bced3]                           dc.b $00
[000bced4]                           dc.b $00
[000bced5]                           dc.b $00
[000bced6]                           dc.b $00
[000bced7]                           dc.b $00
[000bced8]                           dc.b $00
[000bced9]                           dc.b $00
[000bceda]                           dc.b $00
[000bcedb]                           dc.b $00
[000bcedc]                           dc.b $00
[000bcedd]                           dc.b $00
[000bcede]                           dc.b $00
[000bcedf]                           dc.b $00
A_INNERFRAME02:
[000bcee0] 00059f9c                  dc.l A_innerframe
[000bcee4]                           dc.w $1000
[000bcee6]                           dc.w $8f19
[000bcee8] 00059318                  dc.l Auo_string
[000bceec]                           dc.b $00
[000bceed]                           dc.b $00
[000bceee]                           dc.b $00
[000bceef]                           dc.b $00
[000bcef0]                           dc.b $00
[000bcef1]                           dc.b $00
[000bcef2]                           dc.b $00
[000bcef3]                           dc.b $00
[000bcef4]                           dc.b $00
[000bcef5]                           dc.b $00
[000bcef6]                           dc.b $00
[000bcef7]                           dc.b $00
[000bcef8]                           dc.b $00
[000bcef9]                           dc.b $00
[000bcefa]                           dc.b $00
[000bcefb]                           dc.b $00
[000bcefc]                           dc.b $00
[000bcefd]                           dc.b $00
[000bcefe]                           dc.b $00
[000bceff]                           dc.b $00
ED_USER:
[000bcf00]                           dc.w $ffff
[000bcf02]                           dc.b $00
[000bcf03]                           dc.b $01
[000bcf04]                           dc.b $00
[000bcf05]                           dc.b $21
[000bcf06]                           dc.b $00
[000bcf07]                           dc.b $18
[000bcf08]                           dc.b $00
[000bcf09]                           dc.b $40
[000bcf0a]                           dc.b $00
[000bcf0b]                           dc.b $10
[000bcf0c] 000bce00                  dc.l A_3DBUTTON02
[000bcf10]                           dc.b $00
[000bcf11]                           dc.b $00
[000bcf12]                           dc.b $00
[000bcf13]                           dc.b $00
[000bcf14]                           dc.b $00
[000bcf15]                           dc.b $2a
[000bcf16]                           dc.b $00
[000bcf17]                           dc.b $0d
_01_ED_USER:
[000bcf18]                           dc.b $00
[000bcf19]                           dc.b $1f
[000bcf1a]                           dc.b $00
[000bcf1b]                           dc.b $02
[000bcf1c]                           dc.b $00
[000bcf1d]                           dc.b $1e
[000bcf1e]                           dc.b $00
[000bcf1f]                           dc.b $18
[000bcf20]                           dc.b $00
[000bcf21]                           dc.b $40
[000bcf22]                           dc.b $00
[000bcf23]                           dc.b $00
[000bcf24] 000bcee0                  dc.l A_INNERFRAME02
[000bcf28]                           dc.b $00
[000bcf29]                           dc.b $01
[000bcf2a]                           dc.b $00
[000bcf2b]                           dc.b $00
[000bcf2c]                           dc.b $00
[000bcf2d]                           dc.b $28
[000bcf2e]                           dc.b $00
[000bcf2f]                           dc.b $0a
_02_ED_USER:
[000bcf30]                           dc.b $00
[000bcf31]                           dc.b $04
[000bcf32]                           dc.w $ffff
[000bcf34]                           dc.w $ffff
[000bcf36]                           dc.b $00
[000bcf37]                           dc.b $1c
[000bcf38]                           dc.b $00
[000bcf39]                           dc.b $05
[000bcf3a]                           dc.b $00
[000bcf3b]                           dc.b $00
[000bcf3c] 000bcdb2                  dc.l TEXT_01
[000bcf40]                           dc.b $00
[000bcf41]                           dc.b $01
[000bcf42]                           dc.b $00
[000bcf43]                           dc.b $01
[000bcf44]                           dc.b $00
[000bcf45]                           dc.b $05
[000bcf46]                           dc.b $00
[000bcf47]                           dc.b $01
_02aED_USER:
[000bcf48] 0002f482                  dc.l edus_list
[000bcf4c]                           dc.b $00
[000bcf4d]                           dc.b $00
[000bcf4e]                           dc.b $00
[000bcf4f]                           dc.b $00
[000bcf50]                           dc.w $8000
[000bcf52]                           dc.b $00
[000bcf53]                           dc.b $00
[000bcf54]                           dc.b $00
[000bcf55]                           dc.b $00
[000bcf56]                           dc.b $00
[000bcf57]                           dc.b $00
[000bcf58]                           dc.b $00
[000bcf59]                           dc.b $00
[000bcf5a]                           dc.b $00
[000bcf5b]                           dc.b $00
[000bcf5c]                           dc.b $00
[000bcf5d]                           dc.b $00
[000bcf5e]                           dc.b $00
[000bcf5f]                           dc.b $00
_04_ED_USER:
[000bcf60]                           dc.b $00
[000bcf61]                           dc.b $06
[000bcf62]                           dc.w $ffff
[000bcf64]                           dc.w $ffff
[000bcf66]                           dc.b $00
[000bcf67]                           dc.b $1c
[000bcf68]                           dc.b $00
[000bcf69]                           dc.b $05
[000bcf6a]                           dc.b $00
[000bcf6b]                           dc.b $00
[000bcf6c] 000bcdb8                  dc.l TEXT_02
[000bcf70]                           dc.b $00
[000bcf71]                           dc.b $01
[000bcf72]                           dc.b $00
[000bcf73]                           dc.b $02
[000bcf74]                           dc.b $00
[000bcf75]                           dc.b $05
[000bcf76]                           dc.b $00
[000bcf77]                           dc.b $01
_04aED_USER:
[000bcf78] 0002f482                  dc.l edus_list
[000bcf7c]                           dc.b $00
[000bcf7d]                           dc.b $00
[000bcf7e]                           dc.b $00
[000bcf7f]                           dc.b $00
[000bcf80]                           dc.w $8000
[000bcf82]                           dc.b $00
[000bcf83]                           dc.b $00
[000bcf84]                           dc.b $00
[000bcf85]                           dc.b $00
[000bcf86]                           dc.b $00
[000bcf87]                           dc.b $00
[000bcf88]                           dc.b $00
[000bcf89]                           dc.b $00
[000bcf8a]                           dc.b $00
[000bcf8b]                           dc.b $00
[000bcf8c]                           dc.b $00
[000bcf8d]                           dc.b $00
[000bcf8e]                           dc.b $00
[000bcf8f]                           dc.b $00
_06_ED_USER:
[000bcf90]                           dc.b $00
[000bcf91]                           dc.b $08
[000bcf92]                           dc.w $ffff
[000bcf94]                           dc.w $ffff
[000bcf96]                           dc.b $00
[000bcf97]                           dc.b $1c
[000bcf98]                           dc.b $00
[000bcf99]                           dc.b $05
[000bcf9a]                           dc.b $00
[000bcf9b]                           dc.b $00
[000bcf9c] 000bcdbe                  dc.l TEXT_03
[000bcfa0]                           dc.b $00
[000bcfa1]                           dc.b $01
[000bcfa2]                           dc.b $00
[000bcfa3]                           dc.b $03
[000bcfa4]                           dc.b $00
[000bcfa5]                           dc.b $05
[000bcfa6]                           dc.b $00
[000bcfa7]                           dc.b $01
_06aED_USER:
[000bcfa8] 0002f482                  dc.l edus_list
[000bcfac]                           dc.b $00
[000bcfad]                           dc.b $00
[000bcfae]                           dc.b $00
[000bcfaf]                           dc.b $00
[000bcfb0]                           dc.w $8000
[000bcfb2]                           dc.b $00
[000bcfb3]                           dc.b $00
[000bcfb4]                           dc.b $00
[000bcfb5]                           dc.b $00
[000bcfb6]                           dc.b $00
[000bcfb7]                           dc.b $00
[000bcfb8]                           dc.b $00
[000bcfb9]                           dc.b $00
[000bcfba]                           dc.b $00
[000bcfbb]                           dc.b $00
[000bcfbc]                           dc.b $00
[000bcfbd]                           dc.b $00
[000bcfbe]                           dc.b $00
[000bcfbf]                           dc.b $00
_08_ED_USER:
[000bcfc0]                           dc.b $00
[000bcfc1]                           dc.b $0a
[000bcfc2]                           dc.w $ffff
[000bcfc4]                           dc.w $ffff
[000bcfc6]                           dc.b $00
[000bcfc7]                           dc.b $1c
[000bcfc8]                           dc.b $00
[000bcfc9]                           dc.b $05
[000bcfca]                           dc.b $00
[000bcfcb]                           dc.b $00
[000bcfcc] 000bcdc4                  dc.l TEXT_04
[000bcfd0]                           dc.b $00
[000bcfd1]                           dc.b $01
[000bcfd2]                           dc.b $00
[000bcfd3]                           dc.b $04
[000bcfd4]                           dc.b $00
[000bcfd5]                           dc.b $05
[000bcfd6]                           dc.b $00
[000bcfd7]                           dc.b $01
_08aED_USER:
[000bcfd8] 0002f482                  dc.l edus_list
[000bcfdc]                           dc.b $00
[000bcfdd]                           dc.b $00
[000bcfde]                           dc.b $00
[000bcfdf]                           dc.b $00
[000bcfe0]                           dc.w $8000
[000bcfe2]                           dc.b $00
[000bcfe3]                           dc.b $00
[000bcfe4]                           dc.b $00
[000bcfe5]                           dc.b $00
[000bcfe6]                           dc.b $00
[000bcfe7]                           dc.b $00
[000bcfe8]                           dc.b $00
[000bcfe9]                           dc.b $00
[000bcfea]                           dc.b $00
[000bcfeb]                           dc.b $00
[000bcfec]                           dc.b $00
[000bcfed]                           dc.b $00
[000bcfee]                           dc.b $00
[000bcfef]                           dc.b $00
_10_ED_USER:
[000bcff0]                           dc.b $00
[000bcff1]                           dc.b $0c
[000bcff2]                           dc.w $ffff
[000bcff4]                           dc.w $ffff
[000bcff6]                           dc.b $00
[000bcff7]                           dc.b $1c
[000bcff8]                           dc.b $00
[000bcff9]                           dc.b $05
[000bcffa]                           dc.b $00
[000bcffb]                           dc.b $00
[000bcffc] 000bcdca                  dc.l TEXT_05
[000bd000]                           dc.b $00
[000bd001]                           dc.b $01
[000bd002]                           dc.b $00
[000bd003]                           dc.b $05
[000bd004]                           dc.b $00
[000bd005]                           dc.b $05
[000bd006]                           dc.b $00
[000bd007]                           dc.b $01
_10aED_USER:
[000bd008] 0002f482                  dc.l edus_list
[000bd00c]                           dc.b $00
[000bd00d]                           dc.b $00
[000bd00e]                           dc.b $00
[000bd00f]                           dc.b $00
[000bd010]                           dc.w $8000
[000bd012]                           dc.b $00
[000bd013]                           dc.b $00
[000bd014]                           dc.b $00
[000bd015]                           dc.b $00
[000bd016]                           dc.b $00
[000bd017]                           dc.b $00
[000bd018]                           dc.b $00
[000bd019]                           dc.b $00
[000bd01a]                           dc.b $00
[000bd01b]                           dc.b $00
[000bd01c]                           dc.b $00
[000bd01d]                           dc.b $00
[000bd01e]                           dc.b $00
[000bd01f]                           dc.b $00
_12_ED_USER:
[000bd020]                           dc.b $00
[000bd021]                           dc.b $0e
[000bd022]                           dc.w $ffff
[000bd024]                           dc.w $ffff
[000bd026]                           dc.b $00
[000bd027]                           dc.b $1c
[000bd028]                           dc.b $00
[000bd029]                           dc.b $05
[000bd02a]                           dc.b $00
[000bd02b]                           dc.b $00
[000bd02c] 000bcdd0                  dc.l TEXT_06
[000bd030]                           dc.b $00
[000bd031]                           dc.b $01
[000bd032]                           dc.b $00
[000bd033]                           dc.b $06
[000bd034]                           dc.b $00
[000bd035]                           dc.b $05
[000bd036]                           dc.b $00
[000bd037]                           dc.b $01
_12aED_USER:
[000bd038] 0002f482                  dc.l edus_list
[000bd03c]                           dc.b $00
[000bd03d]                           dc.b $00
[000bd03e]                           dc.b $00
[000bd03f]                           dc.b $00
[000bd040]                           dc.w $8000
[000bd042]                           dc.b $00
[000bd043]                           dc.b $00
[000bd044]                           dc.b $00
[000bd045]                           dc.b $00
[000bd046]                           dc.b $00
[000bd047]                           dc.b $00
[000bd048]                           dc.b $00
[000bd049]                           dc.b $00
[000bd04a]                           dc.b $00
[000bd04b]                           dc.b $00
[000bd04c]                           dc.b $00
[000bd04d]                           dc.b $00
[000bd04e]                           dc.b $00
[000bd04f]                           dc.b $00
_14_ED_USER:
[000bd050]                           dc.b $00
[000bd051]                           dc.b $1d
[000bd052]                           dc.b $00
[000bd053]                           dc.b $0f
[000bd054]                           dc.b $00
[000bd055]                           dc.b $1c
[000bd056]                           dc.b $00
[000bd057]                           dc.b $18
[000bd058]                           dc.b $00
[000bd059]                           dc.b $40
[000bd05a]                           dc.b $00
[000bd05b]                           dc.b $00
[000bd05c] 000bce60                  dc.l A_3DBUTTON05
[000bd060]                           dc.b $00
[000bd061]                           dc.b $07
[000bd062]                           dc.b $00
[000bd063]                           dc.b $01
[000bd064]                           dc.b $00
[000bd065]                           dc.b $1f
[000bd066]                           dc.b $00
[000bd067]                           dc.b $08
_15_ED_USER:
[000bd068]                           dc.b $00
[000bd069]                           dc.b $11
[000bd06a]                           dc.w $ffff
[000bd06c]                           dc.w $ffff
[000bd06e]                           dc.b $00
[000bd06f]                           dc.b $18
[000bd070]                           dc.b $00
[000bd071]                           dc.b $08
[000bd072]                           dc.b $00
[000bd073]                           dc.b $00
[000bd074] 000bce80                  dc.l A_BOXED01
[000bd078]                           dc.b $00
[000bd079]                           dc.b $00
[000bd07a]                           dc.b $00
[000bd07b]                           dc.b $00
[000bd07c]                           dc.b $00
[000bd07d]                           dc.b $1f
[000bd07e]                           dc.b $00
[000bd07f]                           dc.b $01
_15aED_USER:
[000bd080]                           dc.b $00
[000bd081]                           dc.b $00
[000bd082]                           dc.b $00
[000bd083]                           dc.b $00
[000bd084] 0002f562                  dc.l edus_ref
[000bd088]                           dc.w $8000
[000bd08a]                           dc.b $00
[000bd08b]                           dc.b $00
[000bd08c]                           dc.b $00
[000bd08d]                           dc.b $00
[000bd08e]                           dc.b $00
[000bd08f]                           dc.b $00
[000bd090]                           dc.b $00
[000bd091]                           dc.b $00
[000bd092]                           dc.b $00
[000bd093]                           dc.b $00
[000bd094]                           dc.b $00
[000bd095]                           dc.b $00
[000bd096]                           dc.b $00
[000bd097]                           dc.b $00
_17_ED_USER:
[000bd098]                           dc.b $00
[000bd099]                           dc.b $13
[000bd09a]                           dc.w $ffff
[000bd09c]                           dc.w $ffff
[000bd09e]                           dc.b $00
[000bd09f]                           dc.b $18
[000bd0a0]                           dc.b $00
[000bd0a1]                           dc.b $08
[000bd0a2]                           dc.b $00
[000bd0a3]                           dc.b $00
[000bd0a4] 000bce80                  dc.l A_BOXED01
[000bd0a8]                           dc.b $00
[000bd0a9]                           dc.b $00
[000bd0aa]                           dc.b $00
[000bd0ab]                           dc.b $01
[000bd0ac]                           dc.b $00
[000bd0ad]                           dc.b $1f
[000bd0ae]                           dc.b $00
[000bd0af]                           dc.b $01
_17aED_USER:
[000bd0b0]                           dc.b $00
[000bd0b1]                           dc.b $00
[000bd0b2]                           dc.b $00
[000bd0b3]                           dc.b $00
[000bd0b4] 0002f562                  dc.l edus_ref
[000bd0b8]                           dc.w $8000
[000bd0ba]                           dc.b $00
[000bd0bb]                           dc.b $00
[000bd0bc]                           dc.b $00
[000bd0bd]                           dc.b $00
[000bd0be]                           dc.b $00
[000bd0bf]                           dc.b $00
[000bd0c0]                           dc.b $00
[000bd0c1]                           dc.b $00
[000bd0c2]                           dc.b $00
[000bd0c3]                           dc.b $00
[000bd0c4]                           dc.b $00
[000bd0c5]                           dc.b $00
[000bd0c6]                           dc.b $00
[000bd0c7]                           dc.b $00
_19_ED_USER:
[000bd0c8]                           dc.b $00
[000bd0c9]                           dc.b $15
[000bd0ca]                           dc.w $ffff
[000bd0cc]                           dc.w $ffff
[000bd0ce]                           dc.b $00
[000bd0cf]                           dc.b $18
[000bd0d0]                           dc.b $00
[000bd0d1]                           dc.b $08
[000bd0d2]                           dc.b $00
[000bd0d3]                           dc.b $00
[000bd0d4] 000bce80                  dc.l A_BOXED01
[000bd0d8]                           dc.b $00
[000bd0d9]                           dc.b $00
[000bd0da]                           dc.b $00
[000bd0db]                           dc.b $02
[000bd0dc]                           dc.b $00
[000bd0dd]                           dc.b $1f
[000bd0de]                           dc.b $00
[000bd0df]                           dc.b $01
_19aED_USER:
[000bd0e0]                           dc.b $00
[000bd0e1]                           dc.b $00
[000bd0e2]                           dc.b $00
[000bd0e3]                           dc.b $00
[000bd0e4] 0002f562                  dc.l edus_ref
[000bd0e8]                           dc.w $8000
[000bd0ea]                           dc.b $00
[000bd0eb]                           dc.b $00
[000bd0ec]                           dc.b $00
[000bd0ed]                           dc.b $00
[000bd0ee]                           dc.b $00
[000bd0ef]                           dc.b $00
[000bd0f0]                           dc.b $00
[000bd0f1]                           dc.b $00
[000bd0f2]                           dc.b $00
[000bd0f3]                           dc.b $00
[000bd0f4]                           dc.b $00
[000bd0f5]                           dc.b $00
[000bd0f6]                           dc.b $00
[000bd0f7]                           dc.b $00
_21_ED_USER:
[000bd0f8]                           dc.b $00
[000bd0f9]                           dc.b $17
[000bd0fa]                           dc.w $ffff
[000bd0fc]                           dc.w $ffff
[000bd0fe]                           dc.b $00
[000bd0ff]                           dc.b $18
[000bd100]                           dc.b $00
[000bd101]                           dc.b $08
[000bd102]                           dc.b $00
[000bd103]                           dc.b $00
[000bd104] 000bce80                  dc.l A_BOXED01
[000bd108]                           dc.b $00
[000bd109]                           dc.b $00
[000bd10a]                           dc.b $00
[000bd10b]                           dc.b $03
[000bd10c]                           dc.b $00
[000bd10d]                           dc.b $1f
[000bd10e]                           dc.b $00
[000bd10f]                           dc.b $01
_21aED_USER:
[000bd110]                           dc.b $00
[000bd111]                           dc.b $00
[000bd112]                           dc.b $00
[000bd113]                           dc.b $00
[000bd114] 0002f56a                  dc.l edus_ptr
[000bd118]                           dc.w $8000
[000bd11a]                           dc.b $00
[000bd11b]                           dc.b $00
[000bd11c]                           dc.b $00
[000bd11d]                           dc.b $00
[000bd11e]                           dc.b $00
[000bd11f]                           dc.b $00
[000bd120]                           dc.b $00
[000bd121]                           dc.b $00
[000bd122]                           dc.b $00
[000bd123]                           dc.b $00
[000bd124]                           dc.b $00
[000bd125]                           dc.b $00
[000bd126]                           dc.b $00
[000bd127]                           dc.b $00
_23_ED_USER:
[000bd128]                           dc.b $00
[000bd129]                           dc.b $19
[000bd12a]                           dc.w $ffff
[000bd12c]                           dc.w $ffff
[000bd12e]                           dc.b $00
[000bd12f]                           dc.b $18
[000bd130]                           dc.b $00
[000bd131]                           dc.b $08
[000bd132]                           dc.b $00
[000bd133]                           dc.b $00
[000bd134] 000bce80                  dc.l A_BOXED01
[000bd138]                           dc.b $00
[000bd139]                           dc.b $00
[000bd13a]                           dc.b $00
[000bd13b]                           dc.b $04
[000bd13c]                           dc.b $00
[000bd13d]                           dc.b $1f
[000bd13e]                           dc.b $00
[000bd13f]                           dc.b $01
_23aED_USER:
[000bd140]                           dc.b $00
[000bd141]                           dc.b $00
[000bd142]                           dc.b $00
[000bd143]                           dc.b $00
[000bd144] 0002f56a                  dc.l edus_ptr
[000bd148]                           dc.w $8000
[000bd14a]                           dc.b $00
[000bd14b]                           dc.b $00
[000bd14c]                           dc.b $00
[000bd14d]                           dc.b $00
[000bd14e]                           dc.b $00
[000bd14f]                           dc.b $00
[000bd150]                           dc.b $00
[000bd151]                           dc.b $00
[000bd152]                           dc.b $00
[000bd153]                           dc.b $00
[000bd154]                           dc.b $00
[000bd155]                           dc.b $00
[000bd156]                           dc.b $00
[000bd157]                           dc.b $00
_25_ED_USER:
[000bd158]                           dc.b $00
[000bd159]                           dc.b $1b
[000bd15a]                           dc.w $ffff
[000bd15c]                           dc.w $ffff
[000bd15e]                           dc.b $00
[000bd15f]                           dc.b $18
[000bd160]                           dc.b $00
[000bd161]                           dc.b $08
[000bd162]                           dc.b $00
[000bd163]                           dc.b $00
[000bd164] 000bce80                  dc.l A_BOXED01
[000bd168]                           dc.b $00
[000bd169]                           dc.b $00
[000bd16a]                           dc.b $00
[000bd16b]                           dc.b $05
[000bd16c]                           dc.b $00
[000bd16d]                           dc.b $1f
[000bd16e]                           dc.b $00
[000bd16f]                           dc.b $01
_25aED_USER:
[000bd170]                           dc.b $00
[000bd171]                           dc.b $00
[000bd172]                           dc.b $00
[000bd173]                           dc.b $00
[000bd174] 0002f56a                  dc.l edus_ptr
[000bd178]                           dc.w $8000
[000bd17a]                           dc.b $00
[000bd17b]                           dc.b $00
[000bd17c]                           dc.b $00
[000bd17d]                           dc.b $00
[000bd17e]                           dc.b $00
[000bd17f]                           dc.b $00
[000bd180]                           dc.b $00
[000bd181]                           dc.b $00
[000bd182]                           dc.b $00
[000bd183]                           dc.b $00
[000bd184]                           dc.b $00
[000bd185]                           dc.b $00
[000bd186]                           dc.b $00
[000bd187]                           dc.b $00
_27_ED_USER:
[000bd188]                           dc.b $00
[000bd189]                           dc.b $1c
[000bd18a]                           dc.w $ffff
[000bd18c]                           dc.w $ffff
[000bd18e]                           dc.b $00
[000bd18f]                           dc.b $18
[000bd190]                           dc.b $00
[000bd191]                           dc.b $08
[000bd192]                           dc.b $00
[000bd193]                           dc.b $00
[000bd194] 000bcea0                  dc.l A_BOXED02
[000bd198]                           dc.b $00
[000bd199]                           dc.b $00
[000bd19a]                           dc.b $00
[000bd19b]                           dc.b $06
[000bd19c]                           dc.b $00
[000bd19d]                           dc.b $1f
[000bd19e]                           dc.b $00
[000bd19f]                           dc.b $01
_28_ED_USER:
[000bd1a0]                           dc.b $00
[000bd1a1]                           dc.b $0e
[000bd1a2]                           dc.w $ffff
[000bd1a4]                           dc.w $ffff
[000bd1a6]                           dc.b $00
[000bd1a7]                           dc.b $18
[000bd1a8]                           dc.b $00
[000bd1a9]                           dc.b $08
[000bd1aa]                           dc.b $00
[000bd1ab]                           dc.b $00
[000bd1ac] 000bcec0                  dc.l A_BOXED03
[000bd1b0]                           dc.b $00
[000bd1b1]                           dc.b $00
[000bd1b2]                           dc.b $00
[000bd1b3]                           dc.b $07
[000bd1b4]                           dc.b $00
[000bd1b5]                           dc.b $1f
[000bd1b6]                           dc.b $00
[000bd1b7]                           dc.b $01
_29_ED_USER:
[000bd1b8]                           dc.b $00
[000bd1b9]                           dc.b $1e
[000bd1ba]                           dc.w $ffff
[000bd1bc]                           dc.w $ffff
[000bd1be]                           dc.b $00
[000bd1bf]                           dc.b $1c
[000bd1c0]                           dc.b $00
[000bd1c1]                           dc.b $00
[000bd1c2]                           dc.b $00
[000bd1c3]                           dc.b $00
[000bd1c4] 000bcdd6                  dc.l TEXT_07
[000bd1c8]                           dc.b $00
[000bd1c9]                           dc.b $01
[000bd1ca]                           dc.b $00
[000bd1cb]                           dc.b $07
[000bd1cc]                           dc.b $00
[000bd1cd]                           dc.b $05
[000bd1ce]                           dc.b $00
[000bd1cf]                           dc.b $01
_30_ED_USER:
[000bd1d0]                           dc.b $00
[000bd1d1]                           dc.b $01
[000bd1d2]                           dc.w $ffff
[000bd1d4]                           dc.w $ffff
[000bd1d6]                           dc.b $00
[000bd1d7]                           dc.b $1c
[000bd1d8]                           dc.b $00
[000bd1d9]                           dc.b $00
[000bd1da]                           dc.b $00
[000bd1db]                           dc.b $00
[000bd1dc] 000bcddc                  dc.l TEXT_08
[000bd1e0]                           dc.b $00
[000bd1e1]                           dc.b $01
[000bd1e2]                           dc.b $00
[000bd1e3]                           dc.b $08
[000bd1e4]                           dc.b $00
[000bd1e5]                           dc.b $05
[000bd1e6]                           dc.b $00
[000bd1e7]                           dc.b $01
_31_ED_USER:
[000bd1e8]                           dc.b $00
[000bd1e9]                           dc.b $21
[000bd1ea]                           dc.w $ffff
[000bd1ec]                           dc.w $ffff
[000bd1ee]                           dc.b $00
[000bd1ef]                           dc.b $18
[000bd1f0]                           dc.w $4007
[000bd1f2]                           dc.b $00
[000bd1f3]                           dc.b $10
[000bd1f4] 000bce40                  dc.l A_3DBUTTON04
[000bd1f8]                           dc.b $00
[000bd1f9]                           dc.b $08
[000bd1fa]                           dc.b $00
[000bd1fb]                           dc.b $0a
[000bd1fc]                           dc.b $00
[000bd1fd]                           dc.b $0c
[000bd1fe]                           dc.b $00
[000bd1ff]                           dc.b $02
_31aED_USER:
[000bd200] 0002f376                  dc.l edus_ok
[000bd204]                           dc.b $00
[000bd205]                           dc.b $00
[000bd206]                           dc.b $00
[000bd207]                           dc.b $00
[000bd208]                           dc.w $8000
[000bd20a]                           dc.w $884f
[000bd20c]                           dc.b $00
[000bd20d]                           dc.b $00
[000bd20e]                           dc.b $00
[000bd20f]                           dc.b $00
[000bd210]                           dc.b $00
[000bd211]                           dc.b $00
[000bd212]                           dc.b $00
[000bd213]                           dc.b $00
[000bd214]                           dc.b $00
[000bd215]                           dc.b $00
[000bd216]                           dc.b $00
[000bd217]                           dc.b $00
_33_ED_USER:
[000bd218]                           dc.b $00
[000bd219]                           dc.b $00
[000bd21a]                           dc.w $ffff
[000bd21c]                           dc.w $ffff
[000bd21e]                           dc.b $00
[000bd21f]                           dc.b $18
[000bd220]                           dc.w $4005
[000bd222]                           dc.b $00
[000bd223]                           dc.b $10
[000bd224] 000bce20                  dc.l A_3DBUTTON03
[000bd228]                           dc.b $00
[000bd229]                           dc.b $16
[000bd22a]                           dc.b $00
[000bd22b]                           dc.b $0a
[000bd22c]                           dc.b $00
[000bd22d]                           dc.b $0c
[000bd22e]                           dc.b $00
[000bd22f]                           dc.b $02
_33aED_USER:
[000bd230] 0002d91e                  dc.l ed_abort
[000bd234]                           dc.b $00
[000bd235]                           dc.b $00
[000bd236]                           dc.b $00
[000bd237]                           dc.b $00
[000bd238]                           dc.w $8020
[000bd23a]                           dc.w $8841
[000bd23c]                           dc.b $00
[000bd23d]                           dc.b $00
[000bd23e]                           dc.b $00
[000bd23f]                           dc.b $00
[000bd240]                           dc.b $00
[000bd241]                           dc.b $00
[000bd242]                           dc.b $00
[000bd243]                           dc.b $00
[000bd244]                           dc.b $00
[000bd245]                           dc.b $00
[000bd246]                           dc.b $00
[000bd247]                           dc.b $00
sm:
[000bd248]                           dc.b $00
[000bd249]                           dc.b $00
[000bd24a]                           dc.b $00
[000bd24b]                           dc.b $00
[000bd24c] 0002f376                  dc.l edus_ok
[000bd250] 00049b7c                  dc.l Aob_delete
[000bd254] 000bcdf5                  dc.l title
[000bd258] 000bcde2                  dc.l help_title
[000bd25c]                           dc.b $00
[000bd25d]                           dc.b $00
[000bd25e]                           dc.b $00
[000bd25f]                           dc.b $00

