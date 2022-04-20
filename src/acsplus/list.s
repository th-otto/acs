
AddItem:
[0003f92e] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0003f932] 2448                      movea.l    a0,a2
[0003f934] 7600                      moveq.l    #0,d3
[0003f936] 2650                      movea.l    (a0),a3
[0003f938] 2849                      movea.l    a1,a4
[0003f93a] 202b 0090                 move.l     144(a3),d0
[0003f93e] 675e                      beq.s      AddItem_1
[0003f940] 6002                      bra.s      AddItem_2
AddItem_4:
[0003f942] 5283                      addq.l     #1,d3
AddItem_2:
[0003f944] b6ab 0090                 cmp.l      144(a3),d3
[0003f948] 6c28                      bge.s      AddItem_3
[0003f94a] 2f13                      move.l     (a3),-(a7)
[0003f94c] 224c                      movea.l    a4,a1
[0003f94e] 2f09                      move.l     a1,-(a7)
[0003f950] 2003                      move.l     d3,d0
[0003f952] 222b 0084                 move.l     132(a3),d1
[0003f956] 4eb9 0007 76f0            jsr        _lmul
[0003f95c] 206b 0094                 movea.l    148(a3),a0
[0003f960] d1c0                      adda.l     d0,a0
[0003f962] 2a6b 00a4                 movea.l    164(a3),a5
[0003f966] 225f                      movea.l    (a7)+,a1
[0003f968] 4e95                      jsr        (a5)
[0003f96a] 584f                      addq.w     #4,a7
[0003f96c] 3800                      move.w     d0,d4
[0003f96e] 5240                      addq.w     #1,d0
[0003f970] 67d0                      beq.s      AddItem_4
AddItem_3:
[0003f972] b87c fffe                 cmp.w      #$FFFE,d4
[0003f976] 6604                      bne.s      AddItem_5
[0003f978] 262b 0090                 move.l     144(a3),d3
AddItem_5:
[0003f97c] b6ab 0090                 cmp.l      144(a3),d3
[0003f980] 6c1c                      bge.s      AddItem_1
[0003f982] 4a44                      tst.w      d4
[0003f984] 6618                      bne.s      AddItem_1
[0003f986] 2053                      movea.l    (a3),a0
[0003f988] 7003                      moveq.l    #3,d0
[0003f98a] 226b 00b4                 movea.l    180(a3),a1
[0003f98e] 4e91                      jsr        (a1)
[0003f990] 5340                      subq.w     #1,d0
[0003f992] 6654                      bne.s      AddItem_6
[0003f994] 2003                      move.l     d3,d0
[0003f996] 204a                      movea.l    a2,a0
[0003f998] 4eb9 0003 fad0            jsr        DeleteItem
AddItem_1:
[0003f99e] 7001                      moveq.l    #1,d0
[0003f9a0] d0ab 0090                 add.l      144(a3),d0
[0003f9a4] b0ab 0088                 cmp.l      136(a3),d0
[0003f9a8] 6f00 00a2                 ble        AddItem_7
[0003f9ac] 202b 0084                 move.l     132(a3),d0
[0003f9b0] 222b 0088                 move.l     136(a3),d1
[0003f9b4] d2ab 008c                 add.l      140(a3),d1
[0003f9b8] 4eb9 0007 76f0            jsr        _lmul
[0003f9be] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003f9c4] 2848                      movea.l    a0,a4
[0003f9c6] 200c                      move.l     a4,d0
[0003f9c8] 6624                      bne.s      AddItem_8
[0003f9ca] 2053                      movea.l    (a3),a0
[0003f9cc] 7001                      moveq.l    #1,d0
[0003f9ce] 226b 00b4                 movea.l    180(a3),a1
[0003f9d2] 4e91                      jsr        (a1)
[0003f9d4] 4a40                      tst.w      d0
[0003f9d6] 6610                      bne.s      AddItem_6
[0003f9d8] 91c8                      suba.l     a0,a0
[0003f9da] 7003                      moveq.l    #3,d0
[0003f9dc] 2279 0010 1f12            movea.l    ACSblk,a1
[0003f9e2] 2269 03d6                 movea.l    982(a1),a1
[0003f9e6] 4e91                      jsr        (a1)
AddItem_6:
[0003f9e8] 4240                      clr.w      d0
[0003f9ea] 6000 00de                 bra        AddItem_9
AddItem_8:
[0003f9ee] 202b 008c                 move.l     140(a3),d0
[0003f9f2] 222b 0084                 move.l     132(a3),d1
[0003f9f6] 4eb9 0007 76f0            jsr        _lmul
[0003f9fc] 2200                      move.l     d0,d1
[0003f9fe] 2f01                      move.l     d1,-(a7)
[0003fa00] 202b 0084                 move.l     132(a3),d0
[0003fa04] 222b 0088                 move.l     136(a3),d1
[0003fa08] 4eb9 0007 76f0            jsr        _lmul
[0003fa0e] 41f4 0800                 lea.l      0(a4,d0.l),a0
[0003fa12] 4240                      clr.w      d0
[0003fa14] 221f                      move.l     (a7)+,d1
[0003fa16] 4eb9 0007 712e            jsr        memset
[0003fa1c] 202b 0084                 move.l     132(a3),d0
[0003fa20] 222b 0088                 move.l     136(a3),d1
[0003fa24] 4eb9 0007 76f0            jsr        _lmul
[0003fa2a] 226b 0094                 movea.l    148(a3),a1
[0003fa2e] 204c                      movea.l    a4,a0
[0003fa30] 4eb9 0007 6f44            jsr        memcpy
[0003fa36] 206b 0094                 movea.l    148(a3),a0
[0003fa3a] 4eb9 0004 7e26            jsr        Ax_free
[0003fa40] 274c 0094                 move.l     a4,148(a3)
[0003fa44] 202b 008c                 move.l     140(a3),d0
[0003fa48] d1ab 0088                 add.l      d0,136(a3)
AddItem_7:
[0003fa4c] b6ab 0090                 cmp.l      144(a3),d3
[0003fa50] 6c44                      bge.s      AddItem_10
[0003fa52] 202b 0090                 move.l     144(a3),d0
[0003fa56] 9083                      sub.l      d3,d0
[0003fa58] 222b 0084                 move.l     132(a3),d1
[0003fa5c] 4eb9 0007 76f0            jsr        _lmul
[0003fa62] 2f00                      move.l     d0,-(a7)
[0003fa64] 2003                      move.l     d3,d0
[0003fa66] 222b 0084                 move.l     132(a3),d1
[0003fa6a] 4eb9 0007 76f0            jsr        _lmul
[0003fa70] 226b 0094                 movea.l    148(a3),a1
[0003fa74] d3c0                      adda.l     d0,a1
[0003fa76] 2f09                      move.l     a1,-(a7)
[0003fa78] 7001                      moveq.l    #1,d0
[0003fa7a] d083                      add.l      d3,d0
[0003fa7c] 222b 0084                 move.l     132(a3),d1
[0003fa80] 4eb9 0007 76f0            jsr        _lmul
[0003fa86] 206b 0094                 movea.l    148(a3),a0
[0003fa8a] d1c0                      adda.l     d0,a0
[0003fa8c] 225f                      movea.l    (a7)+,a1
[0003fa8e] 201f                      move.l     (a7)+,d0
[0003fa90] 4eb9 0007 6f44            jsr        memcpy
AddItem_10:
[0003fa96] 202b 0084                 move.l     132(a3),d0
[0003fa9a] 224c                      movea.l    a4,a1
[0003fa9c] 2f00                      move.l     d0,-(a7)
[0003fa9e] 2f09                      move.l     a1,-(a7)
[0003faa0] 2003                      move.l     d3,d0
[0003faa2] 222b 0084                 move.l     132(a3),d1
[0003faa6] 4eb9 0007 76f0            jsr        _lmul
[0003faac] 206b 0094                 movea.l    148(a3),a0
[0003fab0] d1c0                      adda.l     d0,a0
[0003fab2] 225f                      movea.l    (a7)+,a1
[0003fab4] 201f                      move.l     (a7)+,d0
[0003fab6] 4eb9 0007 6f44            jsr        memcpy
[0003fabc] 52ab 0090                 addq.l     #1,144(a3)
[0003fac0] 00ab 0000 0001 009c       ori.l      #$00000001,156(a3)
[0003fac8] 7001                      moveq.l    #1,d0
AddItem_9:
[0003faca] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0003face] 4e75                      rts

DeleteItem:
[0003fad0] 2f03                      move.l     d3,-(a7)
[0003fad2] 2f0a                      move.l     a2,-(a7)
[0003fad4] 2600                      move.l     d0,d3
[0003fad6] 2450                      movea.l    (a0),a2
[0003fad8] b0aa 0090                 cmp.l      144(a2),d0
[0003fadc] 6c04                      bge.s      DeleteItem_1
[0003fade] 4a80                      tst.l      d0
[0003fae0] 6a0e                      bpl.s      DeleteItem_2
DeleteItem_1:
[0003fae2] 2052                      movea.l    (a2),a0
[0003fae4] 7002                      moveq.l    #2,d0
[0003fae6] 226a 00b4                 movea.l    180(a2),a1
[0003faea] 4e91                      jsr        (a1)
[0003faec] 4240                      clr.w      d0
[0003faee] 6054                      bra.s      DeleteItem_3
DeleteItem_2:
[0003faf0] 202a 0084                 move.l     132(a2),d0
[0003faf4] 222a 0090                 move.l     144(a2),d1
[0003faf8] 9283                      sub.l      d3,d1
[0003fafa] 5381                      subq.l     #1,d1
[0003fafc] 4eb9 0007 76f0            jsr        _lmul
[0003fb02] 2f00                      move.l     d0,-(a7)
[0003fb04] 7001                      moveq.l    #1,d0
[0003fb06] d083                      add.l      d3,d0
[0003fb08] 222a 0084                 move.l     132(a2),d1
[0003fb0c] 4eb9 0007 76f0            jsr        _lmul
[0003fb12] 226a 0094                 movea.l    148(a2),a1
[0003fb16] d3c0                      adda.l     d0,a1
[0003fb18] 2f09                      move.l     a1,-(a7)
[0003fb1a] 2003                      move.l     d3,d0
[0003fb1c] 222a 0084                 move.l     132(a2),d1
[0003fb20] 4eb9 0007 76f0            jsr        _lmul
[0003fb26] 206a 0094                 movea.l    148(a2),a0
[0003fb2a] d1c0                      adda.l     d0,a0
[0003fb2c] 225f                      movea.l    (a7)+,a1
[0003fb2e] 201f                      move.l     (a7)+,d0
[0003fb30] 4eb9 0007 6f44            jsr        memcpy
[0003fb36] 53aa 0090                 subq.l     #1,144(a2)
[0003fb3a] 00aa 0000 0001 009c       ori.l      #$00000001,156(a2)
[0003fb42] 7001                      moveq.l    #1,d0
DeleteItem_3:
[0003fb44] 245f                      movea.l    (a7)+,a2
[0003fb46] 261f                      move.l     (a7)+,d3
[0003fb48] 4e75                      rts

GetItem:
[0003fb4a] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0003fb4e] 2600                      move.l     d0,d3
[0003fb50] 2649                      movea.l    a1,a3
[0003fb52] 2450                      movea.l    (a0),a2
[0003fb54] b0aa 0090                 cmp.l      144(a2),d0
[0003fb58] 6c04                      bge.s      GetItem_1
[0003fb5a] 4a80                      tst.l      d0
[0003fb5c] 6a0e                      bpl.s      GetItem_2
GetItem_1:
[0003fb5e] 2052                      movea.l    (a2),a0
[0003fb60] 7002                      moveq.l    #2,d0
[0003fb62] 226a 00b4                 movea.l    180(a2),a1
[0003fb66] 4e91                      jsr        (a1)
[0003fb68] 4240                      clr.w      d0
[0003fb6a] 6024                      bra.s      GetItem_3
GetItem_2:
[0003fb6c] 202a 0084                 move.l     132(a2),d0
[0003fb70] 2f00                      move.l     d0,-(a7)
[0003fb72] 2003                      move.l     d3,d0
[0003fb74] 222a 0084                 move.l     132(a2),d1
[0003fb78] 4eb9 0007 76f0            jsr        _lmul
[0003fb7e] 226a 0094                 movea.l    148(a2),a1
[0003fb82] d3c0                      adda.l     d0,a1
[0003fb84] 204b                      movea.l    a3,a0
[0003fb86] 201f                      move.l     (a7)+,d0
[0003fb88] 4eb9 0007 6f44            jsr        memcpy
[0003fb8e] 7001                      moveq.l    #1,d0
GetItem_3:
[0003fb90] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0003fb94] 4e75                      rts

ReplaceItem:
[0003fb96] 2f0a                      move.l     a2,-(a7)
[0003fb98] 2f0b                      move.l     a3,-(a7)
[0003fb9a] 2448                      movea.l    a0,a2
[0003fb9c] 2649                      movea.l    a1,a3
[0003fb9e] 6100 ff30                 bsr        DeleteItem
[0003fba2] 4a40                      tst.w      d0
[0003fba4] 6710                      beq.s      ReplaceItem_1
[0003fba6] 224b                      movea.l    a3,a1
[0003fba8] 204a                      movea.l    a2,a0
[0003fbaa] 6100 fd82                 bsr        AddItem
[0003fbae] 4a40                      tst.w      d0
[0003fbb0] 6704                      beq.s      ReplaceItem_1
[0003fbb2] 7001                      moveq.l    #1,d0
[0003fbb4] 6002                      bra.s      ReplaceItem_2
ReplaceItem_1:
[0003fbb6] 4240                      clr.w      d0
ReplaceItem_2:
[0003fbb8] 265f                      movea.l    (a7)+,a3
[0003fbba] 245f                      movea.l    (a7)+,a2
[0003fbbc] 4e75                      rts

UpdateList:
[0003fbbe] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0003fbc2] 4fef fdfe                 lea.l      -514(a7),a7
[0003fbc6] 2448                      movea.l    a0,a2
[0003fbc8] 2650                      movea.l    (a0),a3
[0003fbca] 93c9                      suba.l     a1,a1
[0003fbcc] 303c 00e2                 move.w     #$00E2,d0
[0003fbd0] 206a 0014                 movea.l    20(a2),a0
[0003fbd4] 4eb9 0003 8e52            jsr        Auo_editor
[0003fbda] 93c9                      suba.l     a1,a1
[0003fbdc] 303c 00ce                 move.w     #$00CE,d0
[0003fbe0] 206a 0014                 movea.l    20(a2),a0
[0003fbe4] 4eb9 0003 8e52            jsr        Auo_editor
[0003fbea] 7600                      moveq.l    #0,d3
[0003fbec] 6048                      bra.s      UpdateList_1
UpdateList_3:
[0003fbee] 2003                      move.l     d3,d0
[0003fbf0] 222b 0084                 move.l     132(a3),d1
[0003fbf4] 4eb9 0007 76f0            jsr        _lmul
[0003fbfa] 286b 0094                 movea.l    148(a3),a4
[0003fbfe] d9c0                      adda.l     d0,a4
[0003fc00] 2f13                      move.l     (a3),-(a7)
[0003fc02] 224c                      movea.l    a4,a1
[0003fc04] 41ef 0004                 lea.l      4(a7),a0
[0003fc08] 2a6b 00b8                 movea.l    184(a3),a5
[0003fc0c] 4e95                      jsr        (a5)
[0003fc0e] 584f                      addq.w     #4,a7
[0003fc10] 4a83                      tst.l      d3
[0003fc12] 6710                      beq.s      UpdateList_2
[0003fc14] 93c9                      suba.l     a1,a1
[0003fc16] 303c 00cb                 move.w     #$00CB,d0
[0003fc1a] 206a 0014                 movea.l    20(a2),a0
[0003fc1e] 4eb9 0003 8e52            jsr        Auo_editor
UpdateList_2:
[0003fc24] 43d7                      lea.l      (a7),a1
[0003fc26] 303c 00cc                 move.w     #$00CC,d0
[0003fc2a] 206a 0014                 movea.l    20(a2),a0
[0003fc2e] 4eb9 0003 8e52            jsr        Auo_editor
[0003fc34] 5283                      addq.l     #1,d3
UpdateList_1:
[0003fc36] b6ab 0090                 cmp.l      144(a3),d3
[0003fc3a] 6db2                      blt.s      UpdateList_3
[0003fc3c] 93c9                      suba.l     a1,a1
[0003fc3e] 7006                      moveq.l    #6,d0
[0003fc40] 206a 0014                 movea.l    20(a2),a0
[0003fc44] 4eb9 0003 8e52            jsr        Auo_editor
[0003fc4a] 93c9                      suba.l     a1,a1
[0003fc4c] 303c 00e6                 move.w     #$00E6,d0
[0003fc50] 206a 0014                 movea.l    20(a2),a0
[0003fc54] 4eb9 0003 8e52            jsr        Auo_editor
[0003fc5a] 7001                      moveq.l    #1,d0
[0003fc5c] 4fef 0202                 lea.l      514(a7),a7
[0003fc60] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0003fc64] 4e75                      rts

full_list:
[0003fc66] 48e7 0038                 movem.l    a2-a4,-(a7)
[0003fc6a] 2448                      movea.l    a0,a2
[0003fc6c] 47ea 0024                 lea.l      36(a2),a3
[0003fc70] 49ea 002c                 lea.l      44(a2),a4
[0003fc74] 7001                      moveq.l    #1,d0
[0003fc76] c06a 0056                 and.w      86(a2),d0
[0003fc7a] 6724                      beq.s      full_list_1
[0003fc7c] 3694                      move.w     (a4),(a3)
[0003fc7e] 376c 0002 0002            move.w     2(a4),2(a3)
[0003fc84] 376c 0004 0004            move.w     4(a4),4(a3)
[0003fc8a] 376c 0006 0006            move.w     6(a4),6(a3)
[0003fc90] 224c                      movea.l    a4,a1
[0003fc92] 4eb9 0004 084e            jsr        size_list
[0003fc98] 026a fffe 0056            andi.w     #$FFFE,86(a2)
[0003fc9e] 602a                      bra.s      full_list_2
full_list_1:
[0003fca0] 3893                      move.w     (a3),(a4)
[0003fca2] 396b 0002 0002            move.w     2(a3),2(a4)
[0003fca8] 396b 0004 0004            move.w     4(a3),4(a4)
[0003fcae] 396b 0006 0006            move.w     6(a3),6(a4)
[0003fcb4] 2279 0010 1f12            movea.l    ACSblk,a1
[0003fcba] 5049                      addq.w     #8,a1
[0003fcbc] 204a                      movea.l    a2,a0
[0003fcbe] 4eb9 0004 084e            jsr        size_list
[0003fcc4] 006a 0001 0056            ori.w      #$0001,86(a2)
full_list_2:
[0003fcca] 3f2b 0006                 move.w     6(a3),-(a7)
[0003fcce] 3f2b 0004                 move.w     4(a3),-(a7)
[0003fcd2] 3f2b 0002                 move.w     2(a3),-(a7)
[0003fcd6] 3f13                      move.w     (a3),-(a7)
[0003fcd8] 7205                      moveq.l    #5,d1
[0003fcda] 302a 0020                 move.w     32(a2),d0
[0003fcde] 4eb9 0007 1656            jsr        wind_set
[0003fce4] 504f                      addq.w     #8,a7
[0003fce6] 4eb9 0004 6d70            jsr        Aev_mess
[0003fcec] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0003fcf0] 4e75                      rts

selline:
[0003fcf2] 2f0a                      move.l     a2,-(a7)
[0003fcf4] 2f0b                      move.l     a3,-(a7)
[0003fcf6] 4fef fff0                 lea.l      -16(a7),a7
[0003fcfa] 2448                      movea.l    a0,a2
[0003fcfc] 2f40 000c                 move.l     d0,12(a7)
[0003fd00] 2649                      movea.l    a1,a3
[0003fd02] 4a80                      tst.l      d0
[0003fd04] 6a12                      bpl.s      selline_1
[0003fd06] 43ef 000c                 lea.l      12(a7),a1
[0003fd0a] 303c 00e9                 move.w     #$00E9,d0
[0003fd0e] 4eb9 0003 8e52            jsr        Auo_editor
[0003fd14] 53af 000c                 subq.l     #1,12(a7)
selline_1:
[0003fd18] 202f 000c                 move.l     12(a7),d0
[0003fd1c] 2740 0008                 move.l     d0,8(a3)
[0003fd20] 2680                      move.l     d0,(a3)
[0003fd22] 2e80                      move.l     d0,(a7)
[0003fd24] 43d7                      lea.l      (a7),a1
[0003fd26] 204a                      movea.l    a2,a0
[0003fd28] 303c 00ca                 move.w     #$00CA,d0
[0003fd2c] 4eb9 0003 8e52            jsr        Auo_editor
[0003fd32] 42ab 0004                 clr.l      4(a3)
[0003fd36] 276f 0004 000c            move.l     4(a7),12(a3)
[0003fd3c] 4fef 0010                 lea.l      16(a7),a7
[0003fd40] 265f                      movea.l    (a7)+,a3
[0003fd42] 245f                      movea.l    (a7)+,a2
[0003fd44] 4e75                      rts

key_list:
[0003fd46] 48e7 181c                 movem.l    d3-d4/a3-a5,-(a7)
[0003fd4a] 4fef fff0                 lea.l      -16(a7),a7
[0003fd4e] 2648                      movea.l    a0,a3
[0003fd50] 3800                      move.w     d0,d4
[0003fd52] 3601                      move.w     d1,d3
[0003fd54] 43f9 000c 963e            lea.l      $000C963E,a1
[0003fd5a] 41d7                      lea.l      (a7),a0
[0003fd5c] 740f                      moveq.l    #15,d2
key_list_1:
[0003fd5e] 10d9                      move.b     (a1)+,(a0)+
[0003fd60] 51ca fffc                 dbf        d2,key_list_1
[0003fd64] 2853                      movea.l    (a3),a4
[0003fd66] b63c 000e                 cmp.b      #$0E,d3
[0003fd6a] 660e                      bne.s      key_list_2
[0003fd6c] 2054                      movea.l    (a4),a0
[0003fd6e] 226c 00b4                 movea.l    180(a4),a1
[0003fd72] 7004                      moveq.l    #4,d0
[0003fd74] 4e91                      jsr        (a1)
[0003fd76] 6000 0128                 bra        key_list_3
key_list_2:
[0003fd7a] 202c 0090                 move.l     144(a4),d0
[0003fd7e] 6700 00d8                 beq        key_list_4
[0003fd82] 2079 0010 1f12            movea.l    ACSblk,a0
[0003fd88] 214b 0258                 move.l     a3,600(a0)
[0003fd8c] 2a6b 0014                 movea.l    20(a3),a5
[0003fd90] 43d7                      lea.l      (a7),a1
[0003fd92] 303c 00e3                 move.w     #$00E3,d0
[0003fd96] 204d                      movea.l    a5,a0
[0003fd98] 4eb9 0003 8e52            jsr        Auo_editor
[0003fd9e] 1003                      move.b     d3,d0
[0003fda0] 4880                      ext.w      d0
[0003fda2] b07c 000f                 cmp.w      #$000F,d0
[0003fda6] 6200 00a2                 bhi        key_list_5
[0003fdaa] d040                      add.w      d0,d0
[0003fdac] 303b 0006                 move.w     $0003FDB4(pc,d0.w),d0
[0003fdb0] 4efb 0002                 jmp        $0003FDB4(pc,d0.w)
J33:
[0003fdb4] 0096                      dc.w $0096   ; key_list_5-J33
[0003fdb6] 0020                      dc.w $0020   ; key_list_6-J33
[0003fdb8] 002e                      dc.w $002e   ; key_list_7-J33
[0003fdba] 0096                      dc.w $0096   ; key_list_5-J33
[0003fdbc] 0096                      dc.w $0096   ; key_list_5-J33
[0003fdbe] 0096                      dc.w $0096   ; key_list_5-J33
[0003fdc0] 0096                      dc.w $0096   ; key_list_5-J33
[0003fdc2] 0096                      dc.w $0096   ; key_list_5-J33
[0003fdc4] 0096                      dc.w $0096   ; key_list_5-J33
[0003fdc6] 0096                      dc.w $0096   ; key_list_5-J33
[0003fdc8] 0096                      dc.w $0096   ; key_list_5-J33
[0003fdca] 0096                      dc.w $0096   ; key_list_5-J33
[0003fdcc] 0062                      dc.w $0062   ; key_list_8-J33
[0003fdce] 0076                      dc.w $0076   ; key_list_9-J33
[0003fdd0] 0096                      dc.w $0096   ; key_list_5-J33
[0003fdd2] 0082                      dc.w $0082   ; key_list_10-J33
key_list_6:
[0003fdd4] 2017                      move.l     (a7),d0
[0003fdd6] 6f32                      ble.s      key_list_11
[0003fdd8] 5397                      subq.l     #1,(a7)
[0003fdda] 53af 0008                 subq.l     #1,8(a7)
[0003fdde] 6000 0096                 bra        key_list_12
key_list_7:
[0003fde2] 2017                      move.l     (a7),d0
[0003fde4] 6b38                      bmi.s      key_list_13
[0003fde6] 72ff                      moveq.l    #-1,d1
[0003fde8] d2ac 0090                 add.l      144(a4),d1
[0003fdec] b081                      cmp.l      d1,d0
[0003fdee] 6c2e                      bge.s      key_list_13
[0003fdf0] 5297                      addq.l     #1,(a7)
[0003fdf2] 2017                      move.l     (a7),d0
[0003fdf4] b0ac 0090                 cmp.l      144(a4),d0
[0003fdf8] 6c24                      bge.s      key_list_13
[0003fdfa] 52af 0008                 addq.l     #1,8(a7)
[0003fdfe] 202f 0008                 move.l     8(a7),d0
[0003fe02] b0ac 0090                 cmp.l      144(a4),d0
[0003fe06] 6d00 006e                 blt.w      key_list_12
key_list_11:
[0003fe0a] 43d7                      lea.l      (a7),a1
[0003fe0c] 70ff                      moveq.l    #-1,d0
[0003fe0e] 204d                      movea.l    a5,a0
[0003fe10] 6100 fee0                 bsr        selline
[0003fe14] 6060                      bra.s      key_list_12
key_list_8:
[0003fe16] 3003                      move.w     d3,d0
[0003fe18] c07c 0300                 and.w      #$0300,d0
[0003fe1c] 66ec                      bne.s      key_list_11
key_list_13:
[0003fe1e] 43d7                      lea.l      (a7),a1
[0003fe20] 7000                      moveq.l    #0,d0
[0003fe22] 204d                      movea.l    a5,a0
[0003fe24] 6100 fecc                 bsr        selline
[0003fe28] 604c                      bra.s      key_list_12
key_list_9:
[0003fe2a] 2017                      move.l     (a7),d0
[0003fe2c] 6b1c                      bmi.s      key_list_5
[0003fe2e] 4eb9 0004 0336            jsr        list_open
[0003fe34] 604e                      bra.s      key_list_14
key_list_10:
[0003fe36] 2017                      move.l     (a7),d0
[0003fe38] 6b10                      bmi.s      key_list_5
[0003fe3a] 93c9                      suba.l     a1,a1
[0003fe3c] 204d                      movea.l    a5,a0
[0003fe3e] 303c 00e2                 move.w     #$00E2,d0
[0003fe42] 4eb9 0003 8e52            jsr        Auo_editor
[0003fe48] 603a                      bra.s      key_list_14
key_list_5:
[0003fe4a] 2054                      movea.l    (a4),a0
[0003fe4c] 3003                      move.w     d3,d0
[0003fe4e] 226c 00b0                 movea.l    176(a4),a1
[0003fe52] 4e91                      jsr        (a1)
[0003fe54] 2e80                      move.l     d0,(a7)
[0003fe56] 6a0e                      bpl.s      key_list_15
key_list_4:
[0003fe58] 3203                      move.w     d3,d1
[0003fe5a] 3004                      move.w     d4,d0
[0003fe5c] 204b                      movea.l    a3,a0
[0003fe5e] 4eb9 0005 ef2c            jsr        Awi_keys
[0003fe64] 603c                      bra.s      key_list_16
key_list_15:
[0003fe66] 2017                      move.l     (a7),d0
[0003fe68] b0ac 0090                 cmp.l      144(a4),d0
[0003fe6c] 6c9c                      bge.s      key_list_11
[0003fe6e] 43d7                      lea.l      (a7),a1
[0003fe70] 204d                      movea.l    a5,a0
[0003fe72] 6100 fe7e                 bsr        selline
key_list_12:
[0003fe76] 43d7                      lea.l      (a7),a1
[0003fe78] 303c 00e4                 move.w     #$00E4,d0
[0003fe7c] 204d                      movea.l    a5,a0
[0003fe7e] 4eb9 0003 8e52            jsr        Auo_editor
key_list_14:
[0003fe84] 93c9                      suba.l     a1,a1
[0003fe86] 303c 00db                 move.w     #$00DB,d0
[0003fe8a] 204d                      movea.l    a5,a0
[0003fe8c] 4eb9 0003 8e52            jsr        Auo_editor
[0003fe92] 93c9                      suba.l     a1,a1
[0003fe94] 303c 00e6                 move.w     #$00E6,d0
[0003fe98] 204d                      movea.l    a5,a0
[0003fe9a] 4eb9 0003 8e52            jsr        Auo_editor
key_list_3:
[0003fea0] 70ff                      moveq.l    #-1,d0
key_list_16:
[0003fea2] 4fef 0010                 lea.l      16(a7),a7
[0003fea6] 4cdf 3818                 movem.l    (a7)+,d3-d4/a3-a5
[0003feaa] 4e75                      rts

list_acc:
[0003feac] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0003feb0] 4243                      clr.w      d3
[0003feb2] 45f9 0010 1f12            lea.l      ACSblk,a2
[0003feb8] 2052                      movea.l    (a2),a0
[0003feba] 3028 0246                 move.w     582(a0),d0
[0003febe] 6700 0088                 beq        list_acc_1
[0003fec2] 2268 0258                 movea.l    600(a0),a1
[0003fec6] 2651                      movea.l    (a1),a3
[0003fec8] 4eb9 0004 4840            jsr        Adr_start
[0003fece] 6060                      bra.s      list_acc_2
list_acc_5:
[0003fed0] 3004                      move.w     d4,d0
[0003fed2] c07c 1000                 and.w      #$1000,d0
[0003fed6] 6720                      beq.s      list_acc_3
[0003fed8] 3404                      move.w     d4,d2
[0003feda] c47c 0fff                 and.w      #$0FFF,d2
[0003fede] 48c2                      ext.l      d2
[0003fee0] 2202                      move.l     d2,d1
[0003fee2] d281                      add.l      d1,d1
[0003fee4] d282                      add.l      d2,d1
[0003fee6] e789                      lsl.l      #3,d1
[0003fee8] 2052                      movea.l    (a2),a0
[0003feea] 2268 0240                 movea.l    576(a0),a1
[0003feee] 2869 0018                 movea.l    24(a1),a4
[0003fef2] 49f4 1818                 lea.l      24(a4,d1.l),a4
[0003fef6] 601a                      bra.s      list_acc_4
list_acc_3:
[0003fef8] 3204                      move.w     d4,d1
[0003fefa] 48c1                      ext.l      d1
[0003fefc] 2001                      move.l     d1,d0
[0003fefe] d080                      add.l      d0,d0
[0003ff00] d081                      add.l      d1,d0
[0003ff02] e788                      lsl.l      #3,d0
[0003ff04] 2052                      movea.l    (a2),a0
[0003ff06] 2268 0240                 movea.l    576(a0),a1
[0003ff0a] 2869 0014                 movea.l    20(a1),a4
[0003ff0e] 49f4 0818                 lea.l      24(a4,d0.l),a4
list_acc_4:
[0003ff12] 2253                      movea.l    (a3),a1
[0003ff14] 204c                      movea.l    a4,a0
[0003ff16] 2a6b 00a0                 movea.l    160(a3),a5
[0003ff1a] 4e95                      jsr        (a5)
[0003ff1c] 5340                      subq.w     #1,d0
[0003ff1e] 6610                      bne.s      list_acc_2
[0003ff20] 7601                      moveq.l    #1,d3
[0003ff22] 3004                      move.w     d4,d0
[0003ff24] 2052                      movea.l    (a2),a0
[0003ff26] 2068 0240                 movea.l    576(a0),a0
[0003ff2a] 4eb9 0004 492a            jsr        Adr_del
list_acc_2:
[0003ff30] 4eb9 0004 484c            jsr        Adr_next
[0003ff36] 3800                      move.w     d0,d4
[0003ff38] 6a96                      bpl.s      list_acc_5
[0003ff3a] 4a43                      tst.w      d3
[0003ff3c] 670a                      beq.s      list_acc_1
[0003ff3e] 2052                      movea.l    (a2),a0
[0003ff40] 2068 0258                 movea.l    600(a0),a0
[0003ff44] 6100 fc78                 bsr        UpdateList
list_acc_1:
[0003ff48] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0003ff4c] 4e75                      rts

list_click:
[0003ff4e] 48e7 003e                 movem.l    a2-a6,-(a7)
[0003ff52] 4fef ffdc                 lea.l      -36(a7),a7
[0003ff56] 41f9 000c 964e            lea.l      $000C964E,a0
[0003ff5c] 43ef 0014                 lea.l      20(a7),a1
[0003ff60] 700f                      moveq.l    #15,d0
list_click_1:
[0003ff62] 12d8                      move.b     (a0)+,(a1)+
[0003ff64] 51c8 fffc                 dbf        d0,list_click_1
[0003ff68] 41f9 000c 965e            lea.l      $000C965E,a0
[0003ff6e] 43ef 0004                 lea.l      4(a7),a1
[0003ff72] 700f                      moveq.l    #15,d0
list_click_2:
[0003ff74] 12d8                      move.b     (a0)+,(a1)+
[0003ff76] 51c8 fffc                 dbf        d0,list_click_2
[0003ff7a] 47f9 0010 1f12            lea.l      ACSblk,a3
[0003ff80] 2053                      movea.l    (a3),a0
[0003ff82] 2268 0258                 movea.l    600(a0),a1
[0003ff86] 2851                      movea.l    (a1),a4
[0003ff88] 202c 0090                 move.l     144(a4),d0
[0003ff8c] 6700 01f0                 beq        list_click_3
[0003ff90] 43ef 0014                 lea.l      20(a7),a1
[0003ff94] 3428 0260                 move.w     608(a0),d2
[0003ff98] 48c2                      ext.l      d2
[0003ff9a] 2202                      move.l     d2,d1
[0003ff9c] d281                      add.l      d1,d1
[0003ff9e] d282                      add.l      d2,d1
[0003ffa0] e789                      lsl.l      #3,d1
[0003ffa2] 2068 025c                 movea.l    604(a0),a0
[0003ffa6] d1c1                      adda.l     d1,a0
[0003ffa8] 303c 00e3                 move.w     #$00E3,d0
[0003ffac] 4eb9 0003 8e52            jsr        Auo_editor
[0003ffb2] 202f 0014                 move.l     20(a7),d0
[0003ffb6] 6b00 0156                 bmi        list_click_4
[0003ffba] 2053                      movea.l    (a3),a0
[0003ffbc] 0c68 0002 02ca            cmpi.w     #$0002,714(a0)
[0003ffc2] 6600 014a                 bne        list_click_4
[0003ffc6] 202c 0084                 move.l     132(a4),d0
[0003ffca] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003ffd0] 2e88                      move.l     a0,(a7)
[0003ffd2] 6620                      bne.s      list_click_5
[0003ffd4] 2054                      movea.l    (a4),a0
[0003ffd6] 7001                      moveq.l    #1,d0
[0003ffd8] 226c 00b4                 movea.l    180(a4),a1
[0003ffdc] 4e91                      jsr        (a1)
[0003ffde] 4a40                      tst.w      d0
[0003ffe0] 6600 01be                 bne        list_click_6
[0003ffe4] 91c8                      suba.l     a0,a0
[0003ffe6] 7003                      moveq.l    #3,d0
[0003ffe8] 2253                      movea.l    (a3),a1
[0003ffea] 2269 03d6                 movea.l    982(a1),a1
[0003ffee] 4e91                      jsr        (a1)
[0003fff0] 6000 01ae                 bra        list_click_6
list_click_5:
[0003fff4] 202c 0084                 move.l     132(a4),d0
[0003fff8] 2f00                      move.l     d0,-(a7)
[0003fffa] 202f 0018                 move.l     24(a7),d0
[0003fffe] 222c 0084                 move.l     132(a4),d1
[00040002] 4eb9 0007 76f0            jsr        _lmul
[00040008] 226c 0094                 movea.l    148(a4),a1
[0004000c] d3c0                      adda.l     d0,a1
[0004000e] 206f 0004                 movea.l    4(a7),a0
[00040012] 201f                      move.l     (a7)+,d0
[00040014] 4eb9 0007 6f44            jsr        memcpy
[0004001a] 2053                      movea.l    (a3),a0
[0004001c] 2268 0258                 movea.l    600(a0),a1
[00040020] 2469 0014                 movea.l    20(a1),a2
[00040024] 45ea 0030                 lea.l      48(a2),a2
[00040028] 4bea 0018                 lea.l      24(a2),a5
[0004002c] 2f14                      move.l     (a4),-(a7)
[0004002e] 2c6c 00a8                 movea.l    168(a4),a6
[00040032] 204d                      movea.l    a5,a0
[00040034] 226f 0004                 movea.l    4(a7),a1
[00040038] 4e96                      jsr        (a6)
[0004003a] 584f                      addq.w     #4,a7
[0004003c] 5340                      subq.w     #1,d0
[0004003e] 6600 00c2                 bne        list_click_7
[00040042] 302d 0016                 move.w     22(a5),d0
[00040046] 6700 00ba                 beq        list_click_7
[0004004a] 2053                      movea.l    (a3),a0
[0004004c] 3228 0012                 move.w     18(a0),d1
[00040050] d241                      add.w      d1,d1
[00040052] 3541 0014                 move.w     d1,20(a2)
[00040056] 2053                      movea.l    (a3),a0
[00040058] 3568 0014 0016            move.w     20(a0),22(a2)
[0004005e] 2053                      movea.l    (a3),a0
[00040060] 3028 0262                 move.w     610(a0),d0
[00040064] 2268 0258                 movea.l    600(a0),a1
[00040068] 9069 0034                 sub.w      52(a1),d0
[0004006c] 9068 0012                 sub.w      18(a0),d0
[00040070] 3540 0010                 move.w     d0,16(a2)
[00040074] 2053                      movea.l    (a3),a0
[00040076] 3228 0264                 move.w     612(a0),d1
[0004007a] 2268 0258                 movea.l    600(a0),a1
[0004007e] 9269 0036                 sub.w      54(a1),d1
[00040082] 3428 0014                 move.w     20(a0),d2
[00040086] e242                      asr.w      #1,d2
[00040088] 9242                      sub.w      d2,d1
[0004008a] 3541 0012                 move.w     d1,18(a2)
[0004008e] 026a ff7f 0008            andi.w     #$FF7F,8(a2)
[00040094] 7002                      moveq.l    #2,d0
[00040096] 2053                      movea.l    (a3),a0
[00040098] 2068 0258                 movea.l    600(a0),a0
[0004009c] 4eb9 0004 487c            jsr        Adr_add
[000400a2] 2053                      movea.l    (a3),a0
[000400a4] 3228 0264                 move.w     612(a0),d1
[000400a8] 3028 0262                 move.w     610(a0),d0
[000400ac] 4eb9 0004 557a            jsr        Adr_drag
[000400b2] 7002                      moveq.l    #2,d0
[000400b4] 2053                      movea.l    (a3),a0
[000400b6] 2068 0258                 movea.l    600(a0),a0
[000400ba] 4eb9 0004 492a            jsr        Adr_del
[000400c0] 4240                      clr.w      d0
[000400c2] 3540 0016                 move.w     d0,22(a2)
[000400c6] 3540 0014                 move.w     d0,20(a2)
[000400ca] 3540 0012                 move.w     d0,18(a2)
[000400ce] 3540 0010                 move.w     d0,16(a2)
[000400d2] 006a 0080 0008            ori.w      #$0080,8(a2)
[000400d8] 202d 000c                 move.l     12(a5),d0
[000400dc] 6708                      beq.s      list_click_8
[000400de] 2040                      movea.l    d0,a0
[000400e0] 4eb9 0004 7e26            jsr        Ax_free
list_click_8:
[000400e6] 202d 0010                 move.l     16(a5),d0
[000400ea] 6708                      beq.s      list_click_9
[000400ec] 2040                      movea.l    d0,a0
[000400ee] 4eb9 0004 7e26            jsr        Ax_free
list_click_9:
[000400f4] 7000                      moveq.l    #0,d0
[000400f6] 2b40 0010                 move.l     d0,16(a5)
[000400fa] 2b40 000c                 move.l     d0,12(a5)
[000400fe] 426d 0016                 clr.w      22(a5)
list_click_7:
[00040102] 2057                      movea.l    (a7),a0
[00040104] 4eb9 0004 7e26            jsr        Ax_free
[0004010a] 6000 0094                 bra        list_click_6
list_click_4:
[0004010e] 4eb9 0003 9a96            jsr        Aus_editor
[00040114] 2053                      movea.l    (a3),a0
[00040116] 3228 0260                 move.w     608(a0),d1
[0004011a] 48c1                      ext.l      d1
[0004011c] 2001                      move.l     d1,d0
[0004011e] d080                      add.l      d0,d0
[00040120] d081                      add.l      d1,d0
[00040122] e788                      lsl.l      #3,d0
[00040124] 2268 025c                 movea.l    604(a0),a1
[00040128] 3431 080a                 move.w     10(a1,d0.l),d2
[0004012c] c47c 4000                 and.w      #$4000,d2
[00040130] 676e                      beq.s      list_click_6
[00040132] 43ef 0004                 lea.l      4(a7),a1
[00040136] 2068 025c                 movea.l    604(a0),a0
[0004013a] d1c0                      adda.l     d0,a0
[0004013c] 303c 00e3                 move.w     #$00E3,d0
[00040140] 4eb9 0003 8e52            jsr        Auo_editor
[00040146] 202f 0014                 move.l     20(a7),d0
[0004014a] 6b2a                      bmi.s      list_click_10
[0004014c] 222f 0004                 move.l     4(a7),d1
[00040150] 6a24                      bpl.s      list_click_10
[00040152] 43ef 0014                 lea.l      20(a7),a1
[00040156] 2053                      movea.l    (a3),a0
[00040158] 3028 0260                 move.w     608(a0),d0
[0004015c] 48c0                      ext.l      d0
[0004015e] 2400                      move.l     d0,d2
[00040160] d482                      add.l      d2,d2
[00040162] d480                      add.l      d0,d2
[00040164] e78a                      lsl.l      #3,d2
[00040166] 2068 025c                 movea.l    604(a0),a0
[0004016a] d1c2                      adda.l     d2,a0
[0004016c] 303c 00e4                 move.w     #$00E4,d0
[00040170] 4eb9 0003 8e52            jsr        Auo_editor
list_click_10:
[00040176] 4eb9 0004 0336            jsr        list_open
[0004017c] 6022                      bra.s      list_click_6
list_click_3:
[0004017e] 93c9                      suba.l     a1,a1
[00040180] 303c 00e2                 move.w     #$00E2,d0
[00040184] 2053                      movea.l    (a3),a0
[00040186] 3428 0260                 move.w     608(a0),d2
[0004018a] 48c2                      ext.l      d2
[0004018c] 2202                      move.l     d2,d1
[0004018e] d281                      add.l      d1,d1
[00040190] d282                      add.l      d2,d1
[00040192] e789                      lsl.l      #3,d1
[00040194] 2068 025c                 movea.l    604(a0),a0
[00040198] d1c1                      adda.l     d1,a0
[0004019a] 4eb9 0003 8e52            jsr        Auo_editor
list_click_6:
[000401a0] 4fef 0024                 lea.l      36(a7),a7
[000401a4] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[000401a8] 4e75                      rts

list_copy:
[000401aa] 2f0a                      move.l     a2,-(a7)
[000401ac] 4fef fff0                 lea.l      -16(a7),a7
[000401b0] 41f9 000c 966e            lea.l      $000C966E,a0
[000401b6] 43d7                      lea.l      (a7),a1
[000401b8] 700f                      moveq.l    #15,d0
list_copy_1:
[000401ba] 12d8                      move.b     (a0)+,(a1)+
[000401bc] 51c8 fffc                 dbf        d0,list_copy_1
[000401c0] 2079 0010 1f12            movea.l    ACSblk,a0
[000401c6] 2268 0258                 movea.l    600(a0),a1
[000401ca] 2451                      movea.l    (a1),a2
[000401cc] 43d7                      lea.l      (a7),a1
[000401ce] 303c 00e3                 move.w     #$00E3,d0
[000401d2] 2068 0258                 movea.l    600(a0),a0
[000401d6] 2068 0014                 movea.l    20(a0),a0
[000401da] 4eb9 0003 8e52            jsr        Auo_editor
[000401e0] 202a 0084                 move.l     132(a2),d0
[000401e4] 2f00                      move.l     d0,-(a7)
[000401e6] 202f 0004                 move.l     4(a7),d0
[000401ea] 222a 0084                 move.l     132(a2),d1
[000401ee] 4eb9 0007 76f0            jsr        _lmul
[000401f4] 226a 0094                 movea.l    148(a2),a1
[000401f8] d3c0                      adda.l     d0,a1
[000401fa] 206a 0098                 movea.l    152(a2),a0
[000401fe] 201f                      move.l     (a7)+,d0
[00040200] 4eb9 0007 6f44            jsr        memcpy
[00040206] 00aa 0000 0002 009c       ori.l      #$00000002,156(a2)
[0004020e] 93c9                      suba.l     a1,a1
[00040210] 303c 00e6                 move.w     #$00E6,d0
[00040214] 2079 0010 1f12            movea.l    ACSblk,a0
[0004021a] 2468 0258                 movea.l    600(a0),a2
[0004021e] 206a 0014                 movea.l    20(a2),a0
[00040222] 4eb9 0003 8e52            jsr        Auo_editor
[00040228] 4fef 0010                 lea.l      16(a7),a7
[0004022c] 245f                      movea.l    (a7)+,a2
[0004022e] 4e75                      rts

list_cut:
[00040230] 2f0a                      move.l     a2,-(a7)
[00040232] 2f0b                      move.l     a3,-(a7)
[00040234] 4fef fff0                 lea.l      -16(a7),a7
[00040238] 41f9 000c 967e            lea.l      $000C967E,a0
[0004023e] 43d7                      lea.l      (a7),a1
[00040240] 700f                      moveq.l    #15,d0
list_cut_1:
[00040242] 12d8                      move.b     (a0)+,(a1)+
[00040244] 51c8 fffc                 dbf        d0,list_cut_1
[00040248] 45f9 0010 1f12            lea.l      ACSblk,a2
[0004024e] 2052                      movea.l    (a2),a0
[00040250] 2268 0258                 movea.l    600(a0),a1
[00040254] 2651                      movea.l    (a1),a3
[00040256] 43d7                      lea.l      (a7),a1
[00040258] 303c 00e3                 move.w     #$00E3,d0
[0004025c] 2068 0258                 movea.l    600(a0),a0
[00040260] 2068 0014                 movea.l    20(a0),a0
[00040264] 4eb9 0003 8e52            jsr        Auo_editor
[0004026a] 202b 0084                 move.l     132(a3),d0
[0004026e] 2f00                      move.l     d0,-(a7)
[00040270] 202f 0004                 move.l     4(a7),d0
[00040274] 222b 0084                 move.l     132(a3),d1
[00040278] 4eb9 0007 76f0            jsr        _lmul
[0004027e] 226b 0094                 movea.l    148(a3),a1
[00040282] d3c0                      adda.l     d0,a1
[00040284] 206b 0098                 movea.l    152(a3),a0
[00040288] 201f                      move.l     (a7)+,d0
[0004028a] 4eb9 0007 6f44            jsr        memcpy
[00040290] 2017                      move.l     (a7),d0
[00040292] 2052                      movea.l    (a2),a0
[00040294] 2068 0258                 movea.l    600(a0),a0
[00040298] 6100 f836                 bsr        DeleteItem
[0004029c] 00ab 0000 0002 009c       ori.l      #$00000002,156(a3)
[000402a4] 2052                      movea.l    (a2),a0
[000402a6] 2068 0258                 movea.l    600(a0),a0
[000402aa] 6100 f912                 bsr        UpdateList
[000402ae] 4fef 0010                 lea.l      16(a7),a7
[000402b2] 265f                      movea.l    (a7)+,a3
[000402b4] 245f                      movea.l    (a7)+,a2
[000402b6] 4e75                      rts

list_new:
[000402b8] 48e7 003c                 movem.l    a2-a5,-(a7)
[000402bc] 45f9 0010 1f12            lea.l      ACSblk,a2
[000402c2] 2052                      movea.l    (a2),a0
[000402c4] 2268 0258                 movea.l    600(a0),a1
[000402c8] 2651                      movea.l    (a1),a3
[000402ca] 202b 0084                 move.l     132(a3),d0
[000402ce] 4eb9 0004 7cc8            jsr        Ax_malloc
[000402d4] 2848                      movea.l    a0,a4
[000402d6] 200c                      move.l     a4,d0
[000402d8] 661c                      bne.s      list_new_1
[000402da] 2053                      movea.l    (a3),a0
[000402dc] 7001                      moveq.l    #1,d0
[000402de] 226b 00b4                 movea.l    180(a3),a1
[000402e2] 4e91                      jsr        (a1)
[000402e4] 4a40                      tst.w      d0
[000402e6] 6648                      bne.s      list_new_2
[000402e8] 91c8                      suba.l     a0,a0
[000402ea] 7003                      moveq.l    #3,d0
[000402ec] 2252                      movea.l    (a2),a1
[000402ee] 2269 03d6                 movea.l    982(a1),a1
[000402f2] 4e91                      jsr        (a1)
[000402f4] 603a                      bra.s      list_new_2
list_new_1:
[000402f6] 222b 0084                 move.l     132(a3),d1
[000402fa] 4240                      clr.w      d0
[000402fc] 204c                      movea.l    a4,a0
[000402fe] 4eb9 0007 712e            jsr        memset
[00040304] 2253                      movea.l    (a3),a1
[00040306] 204c                      movea.l    a4,a0
[00040308] 2a6b 00ac                 movea.l    172(a3),a5
[0004030c] 4e95                      jsr        (a5)
[0004030e] 5340                      subq.w     #1,d0
[00040310] 660c                      bne.s      list_new_3
[00040312] 224c                      movea.l    a4,a1
[00040314] 2052                      movea.l    (a2),a0
[00040316] 2068 0258                 movea.l    600(a0),a0
[0004031a] 6100 f612                 bsr        AddItem
list_new_3:
[0004031e] 204c                      movea.l    a4,a0
[00040320] 4eb9 0004 7e26            jsr        Ax_free
[00040326] 2052                      movea.l    (a2),a0
[00040328] 2068 0258                 movea.l    600(a0),a0
[0004032c] 6100 f890                 bsr        UpdateList
list_new_2:
[00040330] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00040334] 4e75                      rts

list_open:
[00040336] 48e7 003c                 movem.l    a2-a5,-(a7)
[0004033a] 4fef fff0                 lea.l      -16(a7),a7
[0004033e] 41f9 000c 968e            lea.l      $000C968E,a0
[00040344] 43d7                      lea.l      (a7),a1
[00040346] 700f                      moveq.l    #15,d0
list_open_1:
[00040348] 12d8                      move.b     (a0)+,(a1)+
[0004034a] 51c8 fffc                 dbf        d0,list_open_1
[0004034e] 45f9 0010 1f12            lea.l      ACSblk,a2
[00040354] 2052                      movea.l    (a2),a0
[00040356] 2268 0258                 movea.l    600(a0),a1
[0004035a] 2651                      movea.l    (a1),a3
[0004035c] 43d7                      lea.l      (a7),a1
[0004035e] 303c 00e3                 move.w     #$00E3,d0
[00040362] 2068 0258                 movea.l    600(a0),a0
[00040366] 2068 0014                 movea.l    20(a0),a0
[0004036a] 4eb9 0003 8e52            jsr        Auo_editor
[00040370] 202b 0084                 move.l     132(a3),d0
[00040374] 4eb9 0004 7cc8            jsr        Ax_malloc
[0004037a] 2848                      movea.l    a0,a4
[0004037c] 200c                      move.l     a4,d0
[0004037e] 661c                      bne.s      list_open_2
[00040380] 2053                      movea.l    (a3),a0
[00040382] 7001                      moveq.l    #1,d0
[00040384] 226b 00b4                 movea.l    180(a3),a1
[00040388] 4e91                      jsr        (a1)
[0004038a] 4a40                      tst.w      d0
[0004038c] 6678                      bne.s      list_open_3
[0004038e] 91c8                      suba.l     a0,a0
[00040390] 7003                      moveq.l    #3,d0
[00040392] 2252                      movea.l    (a2),a1
[00040394] 2269 03d6                 movea.l    982(a1),a1
[00040398] 4e91                      jsr        (a1)
[0004039a] 606a                      bra.s      list_open_3
list_open_2:
[0004039c] 202b 0084                 move.l     132(a3),d0
[000403a0] 2f00                      move.l     d0,-(a7)
[000403a2] 202f 0004                 move.l     4(a7),d0
[000403a6] 222b 0084                 move.l     132(a3),d1
[000403aa] 4eb9 0007 76f0            jsr        _lmul
[000403b0] 226b 0094                 movea.l    148(a3),a1
[000403b4] d3c0                      adda.l     d0,a1
[000403b6] 204c                      movea.l    a4,a0
[000403b8] 201f                      move.l     (a7)+,d0
[000403ba] 4eb9 0007 6f44            jsr        memcpy
[000403c0] 2253                      movea.l    (a3),a1
[000403c2] 204c                      movea.l    a4,a0
[000403c4] 2a6b 00ac                 movea.l    172(a3),a5
[000403c8] 4e95                      jsr        (a5)
[000403ca] 5340                      subq.w     #1,d0
[000403cc] 661a                      bne.s      list_open_4
[000403ce] 224c                      movea.l    a4,a1
[000403d0] 2017                      move.l     (a7),d0
[000403d2] 2052                      movea.l    (a2),a0
[000403d4] 2068 0258                 movea.l    600(a0),a0
[000403d8] 6100 f7bc                 bsr        ReplaceItem
[000403dc] 2052                      movea.l    (a2),a0
[000403de] 2068 0258                 movea.l    600(a0),a0
[000403e2] 6100 f7da                 bsr        UpdateList
[000403e6] 6016                      bra.s      list_open_5
list_open_4:
[000403e8] 93c9                      suba.l     a1,a1
[000403ea] 303c 00e6                 move.w     #$00E6,d0
[000403ee] 2052                      movea.l    (a2),a0
[000403f0] 2668 0258                 movea.l    600(a0),a3
[000403f4] 206b 0014                 movea.l    20(a3),a0
[000403f8] 4eb9 0003 8e52            jsr        Auo_editor
list_open_5:
[000403fe] 204c                      movea.l    a4,a0
[00040400] 4eb9 0004 7e26            jsr        Ax_free
list_open_3:
[00040406] 4fef 0010                 lea.l      16(a7),a7
[0004040a] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0004040e] 4e75                      rts

list_paste:
[00040410] 2f0a                      move.l     a2,-(a7)
[00040412] 2079 0010 1f12            movea.l    ACSblk,a0
[00040418] 2268 0258                 movea.l    600(a0),a1
[0004041c] 2451                      movea.l    (a1),a2
[0004041e] 226a 0098                 movea.l    152(a2),a1
[00040422] 2068 0258                 movea.l    600(a0),a0
[00040426] 6100 f506                 bsr        AddItem
[0004042a] 2079 0010 1f12            movea.l    ACSblk,a0
[00040430] 2068 0258                 movea.l    600(a0),a0
[00040434] 6100 f788                 bsr        UpdateList
[00040438] 245f                      movea.l    (a7)+,a2
[0004043a] 4e75                      rts

live_list:
[0004043c] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00040440] 4fef fff0                 lea.l      -16(a7),a7
[00040444] 2448                      movea.l    a0,a2
[00040446] 4243                      clr.w      d3
[00040448] 2650                      movea.l    (a0),a3
[0004044a] 43d7                      lea.l      (a7),a1
[0004044c] 303c 00e3                 move.w     #$00E3,d0
[00040450] 206a 0014                 movea.l    20(a2),a0
[00040454] 4eb9 0003 8e52            jsr        Auo_editor
[0004045a] 2017                      move.l     (a7),d0
[0004045c] 6b28                      bmi.s      live_list_1
[0004045e] 7208                      moveq.l    #8,d1
[00040460] 206a 0018                 movea.l    24(a2),a0
[00040464] c268 0052                 and.w      82(a0),d1
[00040468] 6744                      beq.s      live_list_2
[0004046a] 0268 fff7 0052            andi.w     #$FFF7,82(a0)
[00040470] 206a 0018                 movea.l    24(a2),a0
[00040474] 0268 fff7 0082            andi.w     #$FFF7,130(a0)
[0004047a] 206a 0018                 movea.l    24(a2),a0
[0004047e] 0268 fff7 00b2            andi.w     #$FFF7,178(a0)
[00040484] 6026                      bra.s      live_list_3
live_list_1:
[00040486] 7008                      moveq.l    #8,d0
[00040488] 206a 0018                 movea.l    24(a2),a0
[0004048c] c068 0052                 and.w      82(a0),d0
[00040490] 661c                      bne.s      live_list_2
[00040492] 0068 0008 0052            ori.w      #$0008,82(a0)
[00040498] 206a 0018                 movea.l    24(a2),a0
[0004049c] 0068 0008 0082            ori.w      #$0008,130(a0)
[000404a2] 206a 0018                 movea.l    24(a2),a0
[000404a6] 0068 0008 00b2            ori.w      #$0008,178(a0)
live_list_3:
[000404ac] 7601                      moveq.l    #1,d3
live_list_2:
[000404ae] 7002                      moveq.l    #2,d0
[000404b0] c0ab 009c                 and.l      156(a3),d0
[000404b4] 6714                      beq.s      live_list_4
[000404b6] 7208                      moveq.l    #8,d1
[000404b8] 206a 0018                 movea.l    24(a2),a0
[000404bc] c268 00e2                 and.w      226(a0),d1
[000404c0] 671c                      beq.s      live_list_5
[000404c2] 0268 fff7 00e2            andi.w     #$FFF7,226(a0)
[000404c8] 6012                      bra.s      live_list_6
live_list_4:
[000404ca] 7008                      moveq.l    #8,d0
[000404cc] 206a 0018                 movea.l    24(a2),a0
[000404d0] c068 00e2                 and.w      226(a0),d0
[000404d4] 6608                      bne.s      live_list_5
[000404d6] 0068 0008 00e2            ori.w      #$0008,226(a0)
live_list_6:
[000404dc] 7601                      moveq.l    #1,d3
live_list_5:
[000404de] 4a43                      tst.w      d3
[000404e0] 670e                      beq.s      live_list_7
[000404e2] 72ff                      moveq.l    #-1,d1
[000404e4] 303c 1000                 move.w     #$1000,d0
[000404e8] 204a                      movea.l    a2,a0
[000404ea] 226a 0066                 movea.l    102(a2),a1
[000404ee] 4e91                      jsr        (a1)
live_list_7:
[000404f0] 4fef 0010                 lea.l      16(a7),a7
[000404f4] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[000404f8] 4e75                      rts

make_list:
[000404fa] 48e7 003c                 movem.l    a2-a5,-(a7)
[000404fe] 4fef ffe8                 lea.l      -24(a7),a7
[00040502] 47ef 0008                 lea.l      8(a7),a3
[00040506] 2448                      movea.l    a0,a2
[00040508] 200a                      move.l     a2,d0
[0004050a] 6700 010a                 beq        make_list_1
[0004050e] 203c 0000 1c00            move.l     #$00001C00,d0
[00040514] 222a 0090                 move.l     144(a2),d1
[00040518] 4eb9 0007 773a            jsr        _ldiv
[0004051e] 2680                      move.l     d0,(a3)
[00040520] 7202                      moveq.l    #2,d1
[00040522] b280                      cmp.l      d0,d1
[00040524] 6f02                      ble.s      make_list_2
[00040526] 2681                      move.l     d1,(a3)
make_list_2:
[00040528] 23ea 008c 000c 95f6       move.l     140(a2),$000C95F6
[00040530] 203c 0000 00c0            move.l     #$000000C0,d0
[00040536] 4eb9 0004 7cc8            jsr        Ax_malloc
[0004053c] 2848                      movea.l    a0,a4
[0004053e] 200c                      move.l     a4,d0
[00040540] 6700 00d4                 beq        make_list_1
[00040544] 202a 0090                 move.l     144(a2),d0
[00040548] 2213                      move.l     (a3),d1
[0004054a] 4eb9 0007 76f0            jsr        _lmul
[00040550] 4eb9 0004 7cc8            jsr        Ax_malloc
[00040556] 2948 0094                 move.l     a0,148(a4)
[0004055a] 6700 00ba                 beq        make_list_1
[0004055e] 202a 0090                 move.l     144(a2),d0
[00040562] 4eb9 0004 7cc8            jsr        Ax_malloc
[00040568] 2948 0098                 move.l     a0,152(a4)
[0004056c] 6700 00a8                 beq        make_list_1
[00040570] 43ea 0004                 lea.l      4(a2),a1
[00040574] 41ec 0004                 lea.l      4(a4),a0
[00040578] 4eb9 0007 6950            jsr        strcpy
[0004057e] 23c8 000c 95e6            move.l     a0,$000C95E6
[00040584] 2892                      move.l     (a2),(a4)
[00040586] 296a 0094 00a0            move.l     148(a2),160(a4)
[0004058c] 296a 0098 00a4            move.l     152(a2),164(a4)
[00040592] 296a 009c 00a8            move.l     156(a2),168(a4)
[00040598] 296a 00a0 00ac            move.l     160(a2),172(a4)
[0004059e] 296a 00a4 00b0            move.l     164(a2),176(a4)
[000405a4] 296a 00a8 00b4            move.l     168(a2),180(a4)
[000405aa] 296a 00ac 00b8            move.l     172(a2),184(a4)
[000405b0] 296a 00b0 00bc            move.l     176(a2),188(a4)
[000405b6] 42ac 009c                 clr.l      156(a4)
[000405ba] 296a 0090 0084            move.l     144(a2),132(a4)
[000405c0] 42ac 0090                 clr.l      144(a4)
[000405c4] 2013                      move.l     (a3),d0
[000405c6] 2940 008c                 move.l     d0,140(a4)
[000405ca] 2940 0088                 move.l     d0,136(a4)
[000405ce] 202a 0090                 move.l     144(a2),d0
[000405d2] 2213                      move.l     (a3),d1
[000405d4] 4eb9 0007 76f0            jsr        _lmul
[000405da] 2200                      move.l     d0,d1
[000405dc] 206c 0094                 movea.l    148(a4),a0
[000405e0] 4240                      clr.w      d0
[000405e2] 4eb9 0007 712e            jsr        memset
[000405e8] 41f9 000c 959c            lea.l      LIST_WINDOW,a0
[000405ee] 4eb9 0004 f41a            jsr        Awi_create
[000405f4] 2a48                      movea.l    a0,a5
[000405f6] 200d                      move.l     a5,d0
[000405f8] 6622                      bne.s      make_list_3
[000405fa] 206c 0098                 movea.l    152(a4),a0
[000405fe] 4eb9 0004 7e26            jsr        Ax_free
[00040604] 206c 0094                 movea.l    148(a4),a0
[00040608] 4eb9 0004 7e26            jsr        Ax_free
[0004060e] 204c                      movea.l    a4,a0
[00040610] 4eb9 0004 7e26            jsr        Ax_free
make_list_1:
[00040616] 91c8                      suba.l     a0,a0
[00040618] 6000 010e                 bra        make_list_4
make_list_3:
[0004061c] 302a 008a                 move.w     138(a2),d0
[00040620] 6f64                      ble.s      make_list_5
[00040622] 322a 0088                 move.w     136(a2),d1
[00040626] 6f5e                      ble.s      make_list_5
[00040628] 43ea 0084                 lea.l      132(a2),a1
[0004062c] 41ed 0024                 lea.l      36(a5),a0
[00040630] 7008                      moveq.l    #8,d0
[00040632] 4eb9 0007 6f44            jsr        memcpy
[00040638] 2f39 000d 99d6            move.l     _globl,-(a7)
[0004063e] 206d 0014                 movea.l    20(a5),a0
[00040642] 4868 0016                 pea.l      22(a0)
[00040646] 4868 0014                 pea.l      20(a0)
[0004064a] 3f2d 002a                 move.w     42(a5),-(a7)
[0004064e] 3f2d 0028                 move.w     40(a5),-(a7)
[00040652] 3f2d 0026                 move.w     38(a5),-(a7)
[00040656] 43ef 001e                 lea.l      30(a7),a1
[0004065a] 41ef 001e                 lea.l      30(a7),a0
[0004065e] 342d 0024                 move.w     36(a5),d2
[00040662] 322d 0022                 move.w     34(a5),d1
[00040666] 7001                      moveq.l    #1,d0
[00040668] 4eb9 0006 d60a            jsr        mt_wind_calc
[0004066e] 4fef 0012                 lea.l      18(a7),a7
[00040672] 202d 0018                 move.l     24(a5),d0
[00040676] 670e                      beq.s      make_list_5
[00040678] 2040                      movea.l    d0,a0
[0004067a] 3228 0016                 move.w     22(a0),d1
[0004067e] 226d 0014                 movea.l    20(a5),a1
[00040682] 9369 0016                 sub.w      d1,22(a1)
make_list_5:
[00040686] 2a8c                      move.l     a4,(a5)
[00040688] 286d 0014                 movea.l    20(a5),a4
[0004068c] 93c9                      suba.l     a1,a1
[0004068e] 303c 00dd                 move.w     #$00DD,d0
[00040692] 204c                      movea.l    a4,a0
[00040694] 4eb9 0003 8e52            jsr        Auo_editor
[0004069a] 26bc 000f 423f            move.l     #$000F423F,(a3)
[000406a0] 224b                      movea.l    a3,a1
[000406a2] 303c 00cd                 move.w     #$00CD,d0
[000406a6] 204c                      movea.l    a4,a0
[000406a8] 4eb9 0003 8e52            jsr        Auo_editor
[000406ae] 26bc 0000 0200            move.l     #$00000200,(a3)
[000406b4] 224b                      movea.l    a3,a1
[000406b6] 303c 00d2                 move.w     #$00D2,d0
[000406ba] 204c                      movea.l    a4,a0
[000406bc] 4eb9 0003 8e52            jsr        Auo_editor
[000406c2] 93c9                      suba.l     a1,a1
[000406c4] 700e                      moveq.l    #14,d0
[000406c6] 204c                      movea.l    a4,a0
[000406c8] 4eb9 0003 8e52            jsr        Auo_editor
[000406ce] 93c9                      suba.l     a1,a1
[000406d0] 303c 00fd                 move.w     #$00FD,d0
[000406d4] 204c                      movea.l    a4,a0
[000406d6] 4eb9 0003 8e52            jsr        Auo_editor
[000406dc] 2f4d 000e                 move.l     a5,14(a7)
[000406e0] 206d 0014                 movea.l    20(a5),a0
[000406e4] 41e8 0060                 lea.l      96(a0),a0
[000406e8] 2f48 0012                 move.l     a0,18(a7)
[000406ec] 3f7c 0004 0016            move.w     #$0004,22(a7)
[000406f2] 43ef 000e                 lea.l      14(a7),a1
[000406f6] 303c 00c8                 move.w     #$00C8,d0
[000406fa] 204c                      movea.l    a4,a0
[000406fc] 4eb9 0003 8e52            jsr        Auo_editor
[00040702] 2ebc 0004 043c            move.l     #live_list,(a7)
[00040708] 2f4d 0004                 move.l     a5,4(a7)
[0004070c] 43d7                      lea.l      (a7),a1
[0004070e] 303c 00e5                 move.w     #$00E5,d0
[00040712] 204c                      movea.l    a4,a0
[00040714] 4eb9 0003 8e52            jsr        Auo_editor
[0004071a] 93c9                      suba.l     a1,a1
[0004071c] 7006                      moveq.l    #6,d0
[0004071e] 204c                      movea.l    a4,a0
[00040720] 4eb9 0003 8e52            jsr        Auo_editor
[00040726] 204d                      movea.l    a5,a0
make_list_4:
[00040728] 4fef 0018                 lea.l      24(a7),a7
[0004072c] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00040730] 4e75                      rts

serv_list:
[00040732] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00040736] 2448                      movea.l    a0,a2
[00040738] 3600                      move.w     d0,d3
[0004073a] 2849                      movea.l    a1,a4
[0004073c] 2650                      movea.l    (a0),a3
[0004073e] b07c 0193                 cmp.w      #$0193,d0
[00040742] 6700 00ae                 beq        serv_list_1
[00040746] 6e2a                      bgt.s      serv_list_2
[00040748] b07c 0190                 cmp.w      #$0190,d0
[0004074c] 6700 008c                 beq        serv_list_3
[00040750] 6e0e                      bgt.s      serv_list_4
[00040752] 5540                      subq.w     #2,d0
[00040754] 673a                      beq.s      serv_list_5
[00040756] 907c 000d                 sub.w      #$000D,d0
[0004075a] 6770                      beq.s      serv_list_6
[0004075c] 6000 00da                 bra        serv_list_7
serv_list_4:
[00040760] 907c 0191                 sub.w      #$0191,d0
[00040764] 6700 007c                 beq.w      serv_list_8
[00040768] 5340                      subq.w     #1,d0
[0004076a] 6700 007c                 beq.w      serv_list_9
[0004076e] 6000 00c8                 bra        serv_list_7
serv_list_2:
[00040772] 907c 0194                 sub.w      #$0194,d0
[00040776] 6700 0084                 beq        serv_list_10
[0004077a] 5340                      subq.w     #1,d0
[0004077c] 6700 008e                 beq        serv_list_11
[00040780] 5340                      subq.w     #1,d0
[00040782] 6700 009a                 beq        serv_list_12
[00040786] 5340                      subq.w     #1,d0
[00040788] 6700 00a4                 beq        serv_list_13
[0004078c] 6000 00aa                 bra        serv_list_7
serv_list_5:
[00040790] 2053                      movea.l    (a3),a0
[00040792] 226b 00bc                 movea.l    188(a3),a1
[00040796] 4e91                      jsr        (a1)
[00040798] 4a40                      tst.w      d0
[0004079a] 6612                      bne.s      serv_list_14
[0004079c] 2079 0010 1f12            movea.l    ACSblk,a0
[000407a2] 3028 023a                 move.w     570(a0),d0
[000407a6] 6606                      bne.s      serv_list_14
[000407a8] 4240                      clr.w      d0
[000407aa] 6000 009c                 bra        serv_list_15
serv_list_14:
[000407ae] 206b 0094                 movea.l    148(a3),a0
[000407b2] 4eb9 0004 7e26            jsr        Ax_free
[000407b8] 204b                      movea.l    a3,a0
[000407ba] 4eb9 0004 7e26            jsr        Ax_free
[000407c0] 204a                      movea.l    a2,a0
[000407c2] 4eb9 0005 0330            jsr        Awi_delete
[000407c8] 6000 007c                 bra.w      serv_list_16
serv_list_6:
[000407cc] 2053                      movea.l    (a3),a0
[000407ce] 7004                      moveq.l    #4,d0
[000407d0] 226b 00b4                 movea.l    180(a3),a1
[000407d4] 4e91                      jsr        (a1)
[000407d6] 6000 006e                 bra.w      serv_list_16
serv_list_3:
[000407da] 204a                      movea.l    a2,a0
[000407dc] 6100 f3e0                 bsr        UpdateList
[000407e0] 6066                      bra.s      serv_list_15
serv_list_8:
[000407e2] 28ab 0090                 move.l     144(a3),(a4)
[000407e6] 605e                      bra.s      serv_list_16
serv_list_9:
[000407e8] 224c                      movea.l    a4,a1
[000407ea] 204a                      movea.l    a2,a0
[000407ec] 6100 f140                 bsr        AddItem
[000407f0] 6056                      bra.s      serv_list_15
serv_list_1:
[000407f2] 2014                      move.l     (a4),d0
[000407f4] 204a                      movea.l    a2,a0
[000407f6] 6100 f2d8                 bsr        DeleteItem
[000407fa] 604c                      bra.s      serv_list_15
serv_list_10:
[000407fc] 2a4c                      movea.l    a4,a5
[000407fe] 226d 0004                 movea.l    4(a5),a1
[00040802] 2015                      move.l     (a5),d0
[00040804] 204a                      movea.l    a2,a0
[00040806] 6100 f342                 bsr        GetItem
[0004080a] 603c                      bra.s      serv_list_15
serv_list_11:
[0004080c] 7001                      moveq.l    #1,d0
[0004080e] c0ab 009c                 and.l      156(a3),d0
[00040812] 6706                      beq.s      serv_list_17
[00040814] 38bc 0001                 move.w     #$0001,(a4)
[00040818] 602c                      bra.s      serv_list_16
serv_list_17:
[0004081a] 4254                      clr.w      (a4)
[0004081c] 6028                      bra.s      serv_list_16
serv_list_12:
[0004081e] 2a4c                      movea.l    a4,a5
[00040820] 226d 0004                 movea.l    4(a5),a1
[00040824] 2015                      move.l     (a5),d0
[00040826] 204a                      movea.l    a2,a0
[00040828] 6100 f36c                 bsr        ReplaceItem
[0004082c] 601a                      bra.s      serv_list_15
serv_list_13:
[0004082e] 02ab ffff fffe 009c       andi.l     #$FFFFFFFE,156(a3)
[00040836] 600e                      bra.s      serv_list_16
serv_list_7:
[00040838] 224c                      movea.l    a4,a1
[0004083a] 3003                      move.w     d3,d0
[0004083c] 204a                      movea.l    a2,a0
[0004083e] 4eb9 0005 1276            jsr        Awi_service
[00040844] 6002                      bra.s      serv_list_15
serv_list_16:
[00040846] 7001                      moveq.l    #1,d0
serv_list_15:
[00040848] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0004084c] 4e75                      rts

size_list:
[0004084e] 48e7 003c                 movem.l    a2-a5,-(a7)
[00040852] 594f                      subq.w     #4,a7
[00040854] 2648                      movea.l    a0,a3
[00040856] 2449                      movea.l    a1,a2
[00040858] 41f9 0010 1f12            lea.l      ACSblk,a0
[0004085e] 302a 0004                 move.w     4(a2),d0
[00040862] 2250                      movea.l    (a0),a1
[00040864] 3429 0012                 move.w     18(a1),d2
[00040868] 3202                      move.w     d2,d1
[0004086a] e549                      lsl.w      #2,d1
[0004086c] d242                      add.w      d2,d1
[0004086e] b041                      cmp.w      d1,d0
[00040870] 6c04                      bge.s      size_list_1
[00040872] 3541 0004                 move.w     d1,4(a2)
size_list_1:
[00040876] 302a 0006                 move.w     6(a2),d0
[0004087a] 2250                      movea.l    (a0),a1
[0004087c] 3429 0014                 move.w     20(a1),d2
[00040880] 3202                      move.w     d2,d1
[00040882] e549                      lsl.w      #2,d1
[00040884] d242                      add.w      d2,d1
[00040886] b041                      cmp.w      d1,d0
[00040888] 6c04                      bge.s      size_list_2
[0004088a] 3541 0006                 move.w     d1,6(a2)
size_list_2:
[0004088e] 286b 0014                 movea.l    20(a3),a4
[00040892] 2a6b 005e                 movea.l    94(a3),a5
[00040896] 2f39 000d 99d6            move.l     _globl,-(a7)
[0004089c] 486c 0016                 pea.l      22(a4)
[000408a0] 486c 0014                 pea.l      20(a4)
[000408a4] 3f2a 0006                 move.w     6(a2),-(a7)
[000408a8] 3f2a 0004                 move.w     4(a2),-(a7)
[000408ac] 4267                      clr.w      -(a7)
[000408ae] 43ef 0012                 lea.l      18(a7),a1
[000408b2] 41ef 0014                 lea.l      20(a7),a0
[000408b6] 4242                      clr.w      d2
[000408b8] 322b 0022                 move.w     34(a3),d1
[000408bc] 7001                      moveq.l    #1,d0
[000408be] 4eb9 0006 d60a            jsr        mt_wind_calc
[000408c4] 4fef 0012                 lea.l      18(a7),a7
[000408c8] 7007                      moveq.l    #7,d0
[000408ca] d052                      add.w      (a2),d0
[000408cc] c07c fff7                 and.w      #$FFF7,d0
[000408d0] 906f 0002                 sub.w      2(a7),d0
[000408d4] 3480                      move.w     d0,(a2)
[000408d6] 220d                      move.l     a5,d1
[000408d8] 6716                      beq.s      size_list_3
[000408da] 302d 0002                 move.w     2(a5),d0
[000408de] 48c0                      ext.l      d0
[000408e0] 2400                      move.l     d0,d2
[000408e2] d482                      add.l      d2,d2
[000408e4] d480                      add.l      d0,d2
[000408e6] e78a                      lsl.l      #3,d2
[000408e8] 3235 2816                 move.w     22(a5,d2.l),d1
[000408ec] 936c 0016                 sub.w      d1,22(a4)
size_list_3:
[000408f0] 202b 0018                 move.l     24(a3),d0
[000408f4] 670a                      beq.s      size_list_4
[000408f6] 2040                      movea.l    d0,a0
[000408f8] 3228 0016                 move.w     22(a0),d1
[000408fc] 936c 0016                 sub.w      d1,22(a4)
size_list_4:
[00040900] 93c9                      suba.l     a1,a1
[00040902] 303c 00ee                 move.w     #$00EE,d0
[00040906] 204c                      movea.l    a4,a0
[00040908] 4eb9 0003 8e52            jsr        Auo_editor
[0004090e] 93c9                      suba.l     a1,a1
[00040910] 303c 00fd                 move.w     #$00FD,d0
[00040914] 204c                      movea.l    a4,a0
[00040916] 4eb9 0003 8e52            jsr        Auo_editor
[0004091c] 224a                      movea.l    a2,a1
[0004091e] 204b                      movea.l    a3,a0
[00040920] 4eb9 0005 06ca            jsr        Awi_sized
[00040926] 584f                      addq.w     #4,a7
[00040928] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0004092c] 4e75                      rts

vslide_list:
[0004092e] 48e7 0038                 movem.l    a2-a4,-(a7)
[00040932] 554f                      subq.w     #2,a7
[00040934] 3e80                      move.w     d0,(a7)
[00040936] 2468 0014                 movea.l    20(a0),a2
[0004093a] 45ea 0060                 lea.l      96(a2),a2
[0004093e] 266a 000c                 movea.l    12(a2),a3
[00040942] 43d7                      lea.l      (a7),a1
[00040944] 204a                      movea.l    a2,a0
[00040946] 286b 0008                 movea.l    8(a3),a4
[0004094a] 706a                      moveq.l    #106,d0
[0004094c] 4e94                      jsr        (a4)
[0004094e] 93c9                      suba.l     a1,a1
[00040950] 7005                      moveq.l    #5,d0
[00040952] 204a                      movea.l    a2,a0
[00040954] 286b 0008                 movea.l    8(a3),a4
[00040958] 4e94                      jsr        (a4)
[0004095a] 93c9                      suba.l     a1,a1
[0004095c] 7069                      moveq.l    #105,d0
[0004095e] 204a                      movea.l    a2,a0
[00040960] 286b 0008                 movea.l    8(a3),a4
[00040964] 4e94                      jsr        (a4)
[00040966] 544f                      addq.w     #2,a7
[00040968] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0004096c] 4e75                      rts

		.data

TEXT_002:
[000c8ab2]                           dc.b $00
TEXT_01:
[000c8ab3]                           dc.b $00
DATAS_05:
[000c8ab4]                           dc.b $00
[000c8ab5]                           dc.b $00
[000c8ab6]                           dc.b $00
[000c8ab7]                           dc.b $00
[000c8ab8]                           dc.b $00
[000c8ab9]                           dc.b $88
[000c8aba]                           dc.b $00
[000c8abb]                           dc.b $00
[000c8abc]                           dc.w $7dde
[000c8abe]                           dc.w $7dde
[000c8ac0]                           dc.w $7dde
[000c8ac2]                           dc.w $7c9e
[000c8ac4]                           dc.w $7ebe
[000c8ac6]                           dc.w $7e3e
[000c8ac8]                           dc.w $7f7e
[000c8aca]                           dc.b '~>~éx'
[000c8acf]                           dc.b $b6
[000c8ad0]                           dc.w $76b6
[000c8ad2]                           dc.w $76b6
[000c8ad4]                           dc.w $76ce
[000c8ad6]                           dc.w $79fe
[000c8ad8]                           dc.b $00
[000c8ad9]                           dc.b $00
[000c8ada]                           dc.b $00
[000c8adb]                           dc.b $00
[000c8adc]                           dc.w $7dde
[000c8ade]                           dc.w $7dde
[000c8ae0]                           dc.w $7dde
[000c8ae2]                           dc.w $7c9e
[000c8ae4]                           dc.w $7ebe
[000c8ae6]                           dc.w $7e3e
[000c8ae8]                           dc.w $7f7e
[000c8aea]                           dc.b '~>~éx'
[000c8aef]                           dc.b $b6
[000c8af0]                           dc.w $76b6
[000c8af2]                           dc.w $76b6
[000c8af4]                           dc.w $76ce
[000c8af6]                           dc.w $79fe
[000c8af8]                           dc.b $00
[000c8af9]                           dc.b $00
[000c8afa]                           dc.b $00
[000c8afb]                           dc.b $00
[000c8afc]                           dc.w $7ffe
[000c8afe]                           dc.w $7ffe
[000c8b00]                           dc.w $7ffe
[000c8b02]                           dc.w $7ffe
[000c8b04]                           dc.w $7ffe
[000c8b06]                           dc.w $7ffe
[000c8b08]                           dc.w $7ffe
[000c8b0a]                           dc.w $7ffe
[000c8b0c]                           dc.w $7ffe
[000c8b0e]                           dc.w $7ffe
[000c8b10]                           dc.w $7ffe
[000c8b12]                           dc.w $7ffe
[000c8b14]                           dc.w $7ffe
[000c8b16]                           dc.w $7ffe
[000c8b18]                           dc.b $00
[000c8b19]                           dc.b $00
[000c8b1a]                           dc.b $00
[000c8b1b]                           dc.b $01
[000c8b1c]                           dc.b $00
[000c8b1d]                           dc.b $01
[000c8b1e]                           dc.b $00
[000c8b1f]                           dc.b $01
[000c8b20]                           dc.b $00
[000c8b21]                           dc.b $01
[000c8b22]                           dc.b $00
[000c8b23]                           dc.b $01
[000c8b24]                           dc.b $00
[000c8b25]                           dc.b $01
[000c8b26]                           dc.b $00
[000c8b27]                           dc.b $01
[000c8b28]                           dc.b $00
[000c8b29]                           dc.b $01
[000c8b2a]                           dc.b $00
[000c8b2b]                           dc.b $01
[000c8b2c]                           dc.b $00
[000c8b2d]                           dc.b $01
[000c8b2e]                           dc.b $00
[000c8b2f]                           dc.b $01
[000c8b30]                           dc.b $00
[000c8b31]                           dc.b $01
[000c8b32]                           dc.b $00
[000c8b33]                           dc.b $01
[000c8b34]                           dc.b $00
[000c8b35]                           dc.b $01
[000c8b36]                           dc.b $00
[000c8b37]                           dc.b $01
[000c8b38]                           dc.w $ffff
DATAS_06:
[000c8b3a]                           dc.w $ffff
[000c8b3c]                           dc.w $ffff
[000c8b3e]                           dc.w $ffff
[000c8b40]                           dc.w $ffff
[000c8b42]                           dc.w $ffff
[000c8b44]                           dc.w $ffff
[000c8b46]                           dc.w $ffff
[000c8b48]                           dc.w $ffff
[000c8b4a]                           dc.w $ffff
[000c8b4c]                           dc.w $ffff
[000c8b4e]                           dc.w $ffff
[000c8b50]                           dc.w $ffff
[000c8b52]                           dc.w $ffff
[000c8b54]                           dc.w $ffff
[000c8b56]                           dc.w $ffff
[000c8b58]                           dc.w $ffff
DATAS_07:
[000c8b5a]                           dc.b $00
[000c8b5b]                           dc.b $00
[000c8b5c]                           dc.b $00
[000c8b5d]                           dc.b $00
[000c8b5e]                           dc.b $00
[000c8b5f]                           dc.b $94
[000c8b60]                           dc.b $00
[000c8b61]                           dc.b $00
[000c8b62]                           dc.w $7dde
[000c8b64]                           dc.w $7dde
[000c8b66]                           dc.w $7dde
[000c8b68]                           dc.w $7c9e
[000c8b6a]                           dc.w $7ebe
[000c8b6c]                           dc.w $7e3e
[000c8b6e]                           dc.w $7f7e
[000c8b70]                           dc.b '~>~éx'
[000c8b75]                           dc.b $b6
[000c8b76]                           dc.w $76b6
[000c8b78]                           dc.w $76b6
[000c8b7a]                           dc.w $76ce
[000c8b7c]                           dc.w $79fe
[000c8b7e]                           dc.b $00
[000c8b7f]                           dc.b $00
[000c8b80]                           dc.b $00
[000c8b81]                           dc.b $00
[000c8b82]                           dc.w $7dde
[000c8b84]                           dc.w $7dde
[000c8b86]                           dc.w $7dde
[000c8b88]                           dc.w $7c9e
[000c8b8a]                           dc.w $7ebe
[000c8b8c]                           dc.w $7e3e
[000c8b8e]                           dc.w $7f7e
[000c8b90]                           dc.b '~>~éx'
[000c8b95]                           dc.b $b6
[000c8b96]                           dc.w $76b6
[000c8b98]                           dc.w $76b6
[000c8b9a]                           dc.w $76ce
[000c8b9c]                           dc.w $79fe
[000c8b9e]                           dc.b $00
[000c8b9f]                           dc.b $00
[000c8ba0]                           dc.b $00
[000c8ba1]                           dc.b $00
[000c8ba2]                           dc.w $7ffe
[000c8ba4]                           dc.w $7ffe
[000c8ba6]                           dc.w $7ffe
[000c8ba8]                           dc.w $7ffe
[000c8baa]                           dc.w $7ffe
[000c8bac]                           dc.w $7ffe
[000c8bae]                           dc.w $7ffe
[000c8bb0]                           dc.w $7ffe
[000c8bb2]                           dc.w $7ffe
[000c8bb4]                           dc.w $7ffe
[000c8bb6]                           dc.w $7ffe
[000c8bb8]                           dc.w $7ffe
[000c8bba]                           dc.w $7ffe
[000c8bbc]                           dc.w $7ffe
[000c8bbe]                           dc.b $00
[000c8bbf]                           dc.b $00
[000c8bc0]                           dc.w $ffff
[000c8bc2]                           dc.w $8000
[000c8bc4]                           dc.w $8000
[000c8bc6]                           dc.w $8000
[000c8bc8]                           dc.w $8000
[000c8bca]                           dc.w $8000
[000c8bcc]                           dc.w $8000
[000c8bce]                           dc.w $8000
[000c8bd0]                           dc.w $8000
[000c8bd2]                           dc.w $8000
[000c8bd4]                           dc.w $8000
[000c8bd6]                           dc.w $8000
[000c8bd8]                           dc.w $8000
[000c8bda]                           dc.w $8000
[000c8bdc]                           dc.w $8000
[000c8bde]                           dc.w $8000
DATAS_08:
[000c8be0]                           dc.w $ffff
[000c8be2]                           dc.w $ffff
[000c8be4]                           dc.w $ffff
[000c8be6]                           dc.w $ffff
[000c8be8]                           dc.w $ffff
[000c8bea]                           dc.w $ffff
[000c8bec]                           dc.w $ffff
[000c8bee]                           dc.w $ffff
[000c8bf0]                           dc.w $ffff
[000c8bf2]                           dc.w $ffff
[000c8bf4]                           dc.w $ffff
[000c8bf6]                           dc.w $ffff
[000c8bf8]                           dc.w $ffff
[000c8bfa]                           dc.w $ffff
[000c8bfc]                           dc.w $ffff
[000c8bfe]                           dc.w $ffff
DATAS_09:
[000c8c00]                           dc.b $00
[000c8c01]                           dc.b $00
[000c8c02]                           dc.b $00
[000c8c03]                           dc.b $00
[000c8c04]                           dc.b $00
[000c8c05]                           dc.b $88
[000c8c06]                           dc.b $00
[000c8c07]                           dc.b $00
[000c8c08]                           dc.w $7ffe
[000c8c0a]                           dc.w $63fe
[000c8c0c]                           dc.w $62fe
[000c8c0e]                           dc.w $63fe
[000c8c10]                           dc.w $60fe
[000c8c12]                           dc.w $61fe
[000c8c14]                           dc.w $611e
[000c8c16]                           dc.w $6116
[000c8c18]                           dc.w $7f1e
[000c8c1a]                           dc.w $7f06
[000c8c1c]                           dc.w $7f06
[000c8c1e]                           dc.w $7f06
[000c8c20]                           dc.w $7f06
[000c8c22]                           dc.w $7ffe
[000c8c24]                           dc.b $00
[000c8c25]                           dc.b $00
[000c8c26]                           dc.b $00
[000c8c27]                           dc.b $00
[000c8c28]                           dc.w $7ffe
[000c8c2a]                           dc.w $63fe
[000c8c2c]                           dc.w $62fe
[000c8c2e]                           dc.w $63fe
[000c8c30]                           dc.w $60fe
[000c8c32]                           dc.w $61fe
[000c8c34]                           dc.w $611e
[000c8c36]                           dc.w $6116
[000c8c38]                           dc.w $7f1e
[000c8c3a]                           dc.w $7f06
[000c8c3c]                           dc.w $7f06
[000c8c3e]                           dc.w $7f06
[000c8c40]                           dc.w $7f06
[000c8c42]                           dc.w $7ffe
[000c8c44]                           dc.b $00
[000c8c45]                           dc.b $00
[000c8c46]                           dc.b $00
[000c8c47]                           dc.b $00
[000c8c48]                           dc.w $7ffe
[000c8c4a]                           dc.w $63fe
[000c8c4c]                           dc.w $62fe
[000c8c4e]                           dc.w $63fe
[000c8c50]                           dc.w $60fe
[000c8c52]                           dc.w $61fe
[000c8c54]                           dc.w $611e
[000c8c56]                           dc.w $6116
[000c8c58]                           dc.w $7f1e
[000c8c5a]                           dc.w $7f06
[000c8c5c]                           dc.w $7f06
[000c8c5e]                           dc.w $7f06
[000c8c60]                           dc.w $7f06
[000c8c62]                           dc.w $7ffe
[000c8c64]                           dc.b $00
[000c8c65]                           dc.b $00
[000c8c66]                           dc.b $00
[000c8c67]                           dc.b $01
[000c8c68]                           dc.w $3e01
[000c8c6a]                           dc.w $2301
[000c8c6c]                           dc.b '"Å#Å Å!'
[000c8c73]                           dc.b $f1
[000c8c74]                           dc.w $2119
[000c8c76]                           dc.w $2115
[000c8c78]                           dc.w $3f1d
[000c8c7a]                           dc.w $0105
[000c8c7c]                           dc.w $0105
[000c8c7e]                           dc.w $0105
[000c8c80]                           dc.w $0105
[000c8c82]                           dc.w $01fd
[000c8c84]                           dc.w $ffff
DATAS_10:
[000c8c86]                           dc.w $ffff
[000c8c88]                           dc.w $ffff
[000c8c8a]                           dc.w $ffff
[000c8c8c]                           dc.w $ffff
[000c8c8e]                           dc.w $ffff
[000c8c90]                           dc.w $ffff
[000c8c92]                           dc.w $ffff
[000c8c94]                           dc.w $ffff
[000c8c96]                           dc.w $ffff
[000c8c98]                           dc.w $ffff
[000c8c9a]                           dc.w $ffff
[000c8c9c]                           dc.w $ffff
[000c8c9e]                           dc.w $ffff
[000c8ca0]                           dc.w $ffff
[000c8ca2]                           dc.w $ffff
[000c8ca4]                           dc.w $ffff
DATAS_11:
[000c8ca6]                           dc.b $00
[000c8ca7]                           dc.b $00
[000c8ca8]                           dc.b $00
[000c8ca9]                           dc.b $00
[000c8caa]                           dc.b $00
[000c8cab]                           dc.b $88
[000c8cac]                           dc.b $00
[000c8cad]                           dc.b $00
[000c8cae]                           dc.w $7ffe
[000c8cb0]                           dc.w $63fe
[000c8cb2]                           dc.w $62fe
[000c8cb4]                           dc.w $63fe
[000c8cb6]                           dc.w $60fe
[000c8cb8]                           dc.w $61fe
[000c8cba]                           dc.w $611e
[000c8cbc]                           dc.w $6116
[000c8cbe]                           dc.w $7f1e
[000c8cc0]                           dc.w $7f06
[000c8cc2]                           dc.w $7f06
[000c8cc4]                           dc.w $7f06
[000c8cc6]                           dc.w $7f06
[000c8cc8]                           dc.w $7ffe
[000c8cca]                           dc.b $00
[000c8ccb]                           dc.b $00
[000c8ccc]                           dc.b $00
[000c8ccd]                           dc.b $00
[000c8cce]                           dc.w $7ffe
[000c8cd0]                           dc.w $63fe
[000c8cd2]                           dc.w $62fe
[000c8cd4]                           dc.w $63fe
[000c8cd6]                           dc.w $60fe
[000c8cd8]                           dc.w $61fe
[000c8cda]                           dc.w $611e
[000c8cdc]                           dc.w $6116
[000c8cde]                           dc.w $7f1e
[000c8ce0]                           dc.w $7f06
[000c8ce2]                           dc.w $7f06
[000c8ce4]                           dc.w $7f06
[000c8ce6]                           dc.w $7f06
[000c8ce8]                           dc.w $7ffe
[000c8cea]                           dc.b $00
[000c8ceb]                           dc.b $00
[000c8cec]                           dc.b $00
[000c8ced]                           dc.b $00
[000c8cee]                           dc.w $7ffe
[000c8cf0]                           dc.w $63fe
[000c8cf2]                           dc.w $62fe
[000c8cf4]                           dc.w $63fe
[000c8cf6]                           dc.w $60fe
[000c8cf8]                           dc.w $61fe
[000c8cfa]                           dc.w $611e
[000c8cfc]                           dc.w $6116
[000c8cfe]                           dc.w $7f1e
[000c8d00]                           dc.w $7f06
[000c8d02]                           dc.w $7f06
[000c8d04]                           dc.w $7f06
[000c8d06]                           dc.w $7f06
[000c8d08]                           dc.w $7ffe
[000c8d0a]                           dc.b $00
[000c8d0b]                           dc.b $00
[000c8d0c]                           dc.w $ffff
[000c8d0e]                           dc.w $be00
[000c8d10]                           dc.w $a300
[000c8d12]                           dc.w $a280
[000c8d14]                           dc.w $a380
[000c8d16]                           dc.w $a080
[000c8d18]                           dc.w $a1f0
[000c8d1a]                           dc.w $a118
[000c8d1c]                           dc.w $a114
[000c8d1e]                           dc.w $bf1c
[000c8d20]                           dc.w $8104
[000c8d22]                           dc.w $8104
[000c8d24]                           dc.w $8104
[000c8d26]                           dc.w $8104
[000c8d28]                           dc.w $81fc
[000c8d2a]                           dc.w $8000
DATAS_12:
[000c8d2c]                           dc.w $ffff
[000c8d2e]                           dc.w $ffff
[000c8d30]                           dc.w $ffff
[000c8d32]                           dc.w $ffff
[000c8d34]                           dc.w $ffff
[000c8d36]                           dc.w $ffff
[000c8d38]                           dc.w $ffff
[000c8d3a]                           dc.w $ffff
[000c8d3c]                           dc.w $ffff
[000c8d3e]                           dc.w $ffff
[000c8d40]                           dc.w $ffff
[000c8d42]                           dc.w $ffff
[000c8d44]                           dc.w $ffff
[000c8d46]                           dc.w $ffff
[000c8d48]                           dc.w $ffff
[000c8d4a]                           dc.w $ffff
DATAS_13:
[000c8d4c]                           dc.b $00
[000c8d4d]                           dc.b $00
[000c8d4e]                           dc.b $00
[000c8d4f]                           dc.b $00
[000c8d50]                           dc.b $00
[000c8d51]                           dc.b $88
[000c8d52]                           dc.b $00
[000c8d53]                           dc.b $00
[000c8d54]                           dc.w $7ffe
[000c8d56]                           dc.w $7ffe
[000c8d58]                           dc.w $7ffe
[000c8d5a]                           dc.w $7ffe
[000c8d5c]                           dc.w $7ffe
[000c8d5e]                           dc.w $7ffe
[000c8d60]                           dc.w $77fe
[000c8d62]                           dc.w $7ffe
[000c8d64]                           dc.w $7ffe
[000c8d66]                           dc.w $7ffe
[000c8d68]                           dc.w $7ffe
[000c8d6a]                           dc.w $7ffe
[000c8d6c]                           dc.w $7ffe
[000c8d6e]                           dc.w $7ffe
[000c8d70]                           dc.b $00
[000c8d71]                           dc.b $00
[000c8d72]                           dc.b $00
[000c8d73]                           dc.b $00
[000c8d74]                           dc.w $7ffe
[000c8d76]                           dc.w $7ffe
[000c8d78]                           dc.w $7ffe
[000c8d7a]                           dc.w $7ffe
[000c8d7c]                           dc.w $7ffe
[000c8d7e]                           dc.w $7ffe
[000c8d80]                           dc.w $7ffe
[000c8d82]                           dc.w $7ffe
[000c8d84]                           dc.w $7ffe
[000c8d86]                           dc.w $7ffe
[000c8d88]                           dc.w $7ffe
[000c8d8a]                           dc.w $7ffe
[000c8d8c]                           dc.w $7ffe
[000c8d8e]                           dc.w $7ffe
[000c8d90]                           dc.b $00
[000c8d91]                           dc.b $00
[000c8d92]                           dc.b $00
[000c8d93]                           dc.b $00
[000c8d94]                           dc.w $7ffe
[000c8d96]                           dc.w $7ffe
[000c8d98]                           dc.w $7ffe
[000c8d9a]                           dc.w $77fe
[000c8d9c]                           dc.w $6abe
[000c8d9e]                           dc.w $757e
[000c8da0]                           dc.w $6bfe
[000c8da2]                           dc.w $7602
[000c8da4]                           dc.w $6c06
[000c8da6]                           dc.w $780e
[000c8da8]                           dc.w $701e
[000c8daa]                           dc.w $7ffe
[000c8dac]                           dc.w $7ffe
[000c8dae]                           dc.w $7ffe
[000c8db0]                           dc.b $00
[000c8db1]                           dc.b $00
[000c8db2]                           dc.b $00
[000c8db3]                           dc.b $01
[000c8db4]                           dc.b $00
[000c8db5]                           dc.b $01
[000c8db6]                           dc.b $00
[000c8db7]                           dc.b $71
[000c8db8]                           dc.w $1c8b
[000c8dba]                           dc.w $23e7
[000c8dbc]                           dc.b ' / !!'
[000c8dc1]                           dc.b $ff
[000c8dc2]                           dc.w $2203
[000c8dc4]                           dc.w $2405
[000c8dc6]                           dc.w $2809
[000c8dc8]                           dc.w $3011
[000c8dca]                           dc.w $3fe1
[000c8dcc]                           dc.b $00
[000c8dcd]                           dc.b $01
[000c8dce]                           dc.b $00
[000c8dcf]                           dc.b $01
[000c8dd0]                           dc.w $ffff
DATAS_14:
[000c8dd2]                           dc.w $ffff
[000c8dd4]                           dc.w $ffff
[000c8dd6]                           dc.w $ffff
[000c8dd8]                           dc.w $ffff
[000c8dda]                           dc.w $ffff
[000c8ddc]                           dc.w $ffff
[000c8dde]                           dc.w $ffff
[000c8de0]                           dc.w $ffff
[000c8de2]                           dc.w $ffff
[000c8de4]                           dc.w $ffff
[000c8de6]                           dc.w $ffff
[000c8de8]                           dc.w $ffff
[000c8dea]                           dc.w $ffff
[000c8dec]                           dc.w $ffff
[000c8dee]                           dc.w $ffff
[000c8df0]                           dc.w $ffff
DATAS_15:
[000c8df2]                           dc.b $00
[000c8df3]                           dc.b $00
[000c8df4]                           dc.b $00
[000c8df5]                           dc.b $00
[000c8df6]                           dc.b $00
[000c8df7]                           dc.b $8e
[000c8df8]                           dc.b $00
[000c8df9]                           dc.b $00
[000c8dfa]                           dc.w $7ffe
[000c8dfc]                           dc.w $7ffe
[000c8dfe]                           dc.w $7ffe
[000c8e00]                           dc.w $7ffe
[000c8e02]                           dc.w $7ffe
[000c8e04]                           dc.w $7ffe
[000c8e06]                           dc.w $7ffe
[000c8e08]                           dc.w $7ffe
[000c8e0a]                           dc.w $7ffe
[000c8e0c]                           dc.w $7ffe
[000c8e0e]                           dc.w $7ffe
[000c8e10]                           dc.w $7ffe
[000c8e12]                           dc.w $7ffe
[000c8e14]                           dc.w $7ffe
[000c8e16]                           dc.b $00
[000c8e17]                           dc.b $00
[000c8e18]                           dc.b $00
[000c8e19]                           dc.b $00
[000c8e1a]                           dc.w $7ffe
[000c8e1c]                           dc.w $7ffe
[000c8e1e]                           dc.w $7ffe
[000c8e20]                           dc.w $7ffe
[000c8e22]                           dc.w $7ffe
[000c8e24]                           dc.w $7ffe
[000c8e26]                           dc.w $7ffe
[000c8e28]                           dc.w $7ffe
[000c8e2a]                           dc.w $7ffe
[000c8e2c]                           dc.w $7ffe
[000c8e2e]                           dc.w $7ffe
[000c8e30]                           dc.w $7ffe
[000c8e32]                           dc.w $7ffe
[000c8e34]                           dc.w $7ffe
[000c8e36]                           dc.b $00
[000c8e37]                           dc.b $00
[000c8e38]                           dc.b $00
[000c8e39]                           dc.b $00
[000c8e3a]                           dc.w $7ffe
[000c8e3c]                           dc.w $7ffe
[000c8e3e]                           dc.w $7ffe
[000c8e40]                           dc.w $77fe
[000c8e42]                           dc.w $6abe
[000c8e44]                           dc.w $757e
[000c8e46]                           dc.w $6bfe
[000c8e48]                           dc.w $7602
[000c8e4a]                           dc.w $6c06
[000c8e4c]                           dc.w $780e
[000c8e4e]                           dc.w $701e
[000c8e50]                           dc.w $7ffe
[000c8e52]                           dc.w $7ffe
[000c8e54]                           dc.w $7ffe
[000c8e56]                           dc.b $00
[000c8e57]                           dc.b $00
[000c8e58]                           dc.w $ffff
[000c8e5a]                           dc.w $8000
[000c8e5c]                           dc.w $8070
[000c8e5e]                           dc.w $9c8a
[000c8e60]                           dc.w $a3e6
[000c8e62]                           dc.w $a02e
[000c8e64]                           dc.w $a020
[000c8e66]                           dc.w $a1fe
[000c8e68]                           dc.w $a202
[000c8e6a]                           dc.w $a404
[000c8e6c]                           dc.w $a808
[000c8e6e]                           dc.w $b010
[000c8e70]                           dc.w $bfe0
[000c8e72]                           dc.w $8000
[000c8e74]                           dc.w $8000
[000c8e76]                           dc.w $8000
DATAS_16:
[000c8e78]                           dc.w $ffff
[000c8e7a]                           dc.w $ffff
[000c8e7c]                           dc.w $ffff
[000c8e7e]                           dc.w $ffff
[000c8e80]                           dc.w $ffff
[000c8e82]                           dc.w $ffff
[000c8e84]                           dc.w $ffff
[000c8e86]                           dc.w $ffff
[000c8e88]                           dc.w $ffff
[000c8e8a]                           dc.w $ffff
[000c8e8c]                           dc.w $ffff
[000c8e8e]                           dc.w $ffff
[000c8e90]                           dc.w $ffff
[000c8e92]                           dc.w $ffff
[000c8e94]                           dc.w $ffff
[000c8e96]                           dc.w $ffff
DATAS_17:
[000c8e98]                           dc.b $00
[000c8e99]                           dc.b $00
[000c8e9a]                           dc.b $00
[000c8e9b]                           dc.b $00
[000c8e9c]                           dc.b $00
[000c8e9d]                           dc.b $88
[000c8e9e]                           dc.b $00
[000c8e9f]                           dc.b $00
[000c8ea0]                           dc.w $7ffe
[000c8ea2]                           dc.w $7ffe
[000c8ea4]                           dc.w $7ffe
[000c8ea6]                           dc.w $7ffe
[000c8ea8]                           dc.w $7ffe
[000c8eaa]                           dc.w $7ffe
[000c8eac]                           dc.w $7ffe
[000c8eae]                           dc.w $7f1e
[000c8eb0]                           dc.w $7f16
[000c8eb2]                           dc.w $7f1e
[000c8eb4]                           dc.w $7f06
[000c8eb6]                           dc.w $7f06
[000c8eb8]                           dc.w $7f06
[000c8eba]                           dc.w $7ffe
[000c8ebc]                           dc.b $00
[000c8ebd]                           dc.b $00
[000c8ebe]                           dc.b $00
[000c8ebf]                           dc.b $00
[000c8ec0]                           dc.w $7ffe
[000c8ec2]                           dc.w $7ffe
[000c8ec4]                           dc.w $7ffe
[000c8ec6]                           dc.w $781e
[000c8ec8]                           dc.w $7ffe
[000c8eca]                           dc.w $7ffe
[000c8ecc]                           dc.w $7ffe
[000c8ece]                           dc.w $7f1e
[000c8ed0]                           dc.w $7f16
[000c8ed2]                           dc.w $7f1e
[000c8ed4]                           dc.w $7f06
[000c8ed6]                           dc.w $7f06
[000c8ed8]                           dc.w $7f06
[000c8eda]                           dc.w $7ffe
[000c8edc]                           dc.b $00
[000c8edd]                           dc.b $00
[000c8ede]                           dc.b $00
[000c8edf]                           dc.b $00
[000c8ee0]                           dc.w $7ffe
[000c8ee2]                           dc.w $7ffe
[000c8ee4]                           dc.w $57f6
[000c8ee6]                           dc.w $681a
[000c8ee8]                           dc.w $5ff6
[000c8eea]                           dc.w $6aaa
[000c8eec]                           dc.w $55f6
[000c8eee]                           dc.w $6b1a
[000c8ef0]                           dc.w $5516
[000c8ef2]                           dc.w $6b1e
[000c8ef4]                           dc.w $5506
[000c8ef6]                           dc.w $6b06
[000c8ef8]                           dc.w $7f06
[000c8efa]                           dc.w $7ffe
[000c8efc]                           dc.b $00
[000c8efd]                           dc.b $00
[000c8efe]                           dc.b $00
[000c8eff]                           dc.b $01
[000c8f00]                           dc.w $03c1
[000c8f02]                           dc.w $7e7d
[000c8f04]                           dc.w $45a3
[000c8f06]                           dc.w $4813
[000c8f08]                           dc.w $4ff3
[000c8f0a]                           dc.w $4003
[000c8f0c]                           dc.w $41f3
[000c8f0e]                           dc.w $411b
[000c8f10]                           dc.w $4117
[000c8f12]                           dc.w $411f
[000c8f14]                           dc.w $4107
[000c8f16]                           dc.w $4107
[000c8f18]                           dc.w $3f05
[000c8f1a]                           dc.w $01fd
[000c8f1c]                           dc.w $ffff
DATAS_18:
[000c8f1e]                           dc.w $ffff
[000c8f20]                           dc.w $ffff
[000c8f22]                           dc.w $ffff
[000c8f24]                           dc.w $ffff
[000c8f26]                           dc.w $ffff
[000c8f28]                           dc.w $ffff
[000c8f2a]                           dc.w $ffff
[000c8f2c]                           dc.w $ffff
[000c8f2e]                           dc.w $ffff
[000c8f30]                           dc.w $ffff
[000c8f32]                           dc.w $ffff
[000c8f34]                           dc.w $ffff
[000c8f36]                           dc.w $ffff
[000c8f38]                           dc.w $ffff
[000c8f3a]                           dc.w $ffff
[000c8f3c]                           dc.w $ffff
DATAS_19:
[000c8f3e]                           dc.b $00
[000c8f3f]                           dc.b $00
[000c8f40]                           dc.b $00
[000c8f41]                           dc.b $00
[000c8f42]                           dc.b $00
[000c8f43]                           dc.b $88
[000c8f44]                           dc.b $00
[000c8f45]                           dc.b $00
[000c8f46]                           dc.w $7ffe
[000c8f48]                           dc.w $7ffe
[000c8f4a]                           dc.w $7ffe
[000c8f4c]                           dc.w $7ffe
[000c8f4e]                           dc.w $7ffe
[000c8f50]                           dc.w $7ffe
[000c8f52]                           dc.w $7ffe
[000c8f54]                           dc.w $7f1e
[000c8f56]                           dc.w $7f16
[000c8f58]                           dc.w $7f1e
[000c8f5a]                           dc.w $7f06
[000c8f5c]                           dc.w $7f06
[000c8f5e]                           dc.w $7f06
[000c8f60]                           dc.w $7ffe
[000c8f62]                           dc.b $00
[000c8f63]                           dc.b $00
[000c8f64]                           dc.b $00
[000c8f65]                           dc.b $00
[000c8f66]                           dc.w $7ffe
[000c8f68]                           dc.w $7ffe
[000c8f6a]                           dc.w $7ffe
[000c8f6c]                           dc.w $781e
[000c8f6e]                           dc.w $7ffe
[000c8f70]                           dc.w $7ffe
[000c8f72]                           dc.w $7ffe
[000c8f74]                           dc.w $7f1e
[000c8f76]                           dc.w $7f16
[000c8f78]                           dc.w $7f1e
[000c8f7a]                           dc.w $7f06
[000c8f7c]                           dc.w $7f06
[000c8f7e]                           dc.w $7f06
[000c8f80]                           dc.w $7ffe
[000c8f82]                           dc.b $00
[000c8f83]                           dc.b $00
[000c8f84]                           dc.b $00
[000c8f85]                           dc.b $00
[000c8f86]                           dc.w $7ffe
[000c8f88]                           dc.w $7ffe
[000c8f8a]                           dc.w $57f6
[000c8f8c]                           dc.w $681a
[000c8f8e]                           dc.w $5ff6
[000c8f90]                           dc.w $6aaa
[000c8f92]                           dc.w $55f6
[000c8f94]                           dc.w $6b1a
[000c8f96]                           dc.w $5516
[000c8f98]                           dc.w $6b1e
[000c8f9a]                           dc.w $5506
[000c8f9c]                           dc.w $6b06
[000c8f9e]                           dc.w $7f06
[000c8fa0]                           dc.w $7ffe
[000c8fa2]                           dc.b $00
[000c8fa3]                           dc.b $00
[000c8fa4]                           dc.w $ffff
[000c8fa6]                           dc.w $83c0
[000c8fa8]                           dc.w $be7c
[000c8faa]                           dc.w $c5a2
[000c8fac]                           dc.w $c812
[000c8fae]                           dc.w $cff2
[000c8fb0]                           dc.w $c002
[000c8fb2]                           dc.w $c1f2
[000c8fb4]                           dc.w $c11a
[000c8fb6]                           dc.w $c116
[000c8fb8]                           dc.w $c11e
[000c8fba]                           dc.w $c106
[000c8fbc]                           dc.w $c106
[000c8fbe]                           dc.w $bf06
[000c8fc0]                           dc.w $81fc
[000c8fc2]                           dc.w $8000
DATAS_20:
[000c8fc4]                           dc.w $ffff
[000c8fc6]                           dc.w $ffff
[000c8fc8]                           dc.w $ffff
[000c8fca]                           dc.w $ffff
[000c8fcc]                           dc.w $ffff
[000c8fce]                           dc.w $ffff
[000c8fd0]                           dc.w $ffff
[000c8fd2]                           dc.w $ffff
[000c8fd4]                           dc.w $ffff
[000c8fd6]                           dc.w $ffff
[000c8fd8]                           dc.w $ffff
[000c8fda]                           dc.w $ffff
[000c8fdc]                           dc.w $ffff
[000c8fde]                           dc.w $ffff
[000c8fe0]                           dc.w $ffff
[000c8fe2]                           dc.w $ffff
DATAS_21:
[000c8fe4]                           dc.b $00
[000c8fe5]                           dc.b $00
[000c8fe6]                           dc.b $00
[000c8fe7]                           dc.b $00
[000c8fe8]                           dc.b $00
[000c8fe9]                           dc.b $88
[000c8fea]                           dc.b $00
[000c8feb]                           dc.b $00
[000c8fec]                           dc.w $7ffe
[000c8fee]                           dc.w $7ffe
[000c8ff0]                           dc.w $70be
[000c8ff2]                           dc.b 'pûpép'
[000c8ff7]                           dc.b $fe
[000c8ff8]                           dc.w $700e
[000c8ffa]                           dc.w $700e
[000c8ffc]                           dc.w $700e
[000c8ffe]                           dc.w $700e
[000c9000]                           dc.w $700e
[000c9002]                           dc.w $700e
[000c9004]                           dc.w $7ffe
[000c9006]                           dc.w $7ffe
[000c9008]                           dc.b $00
[000c9009]                           dc.b $00
[000c900a]                           dc.b $00
[000c900b]                           dc.b $00
[000c900c]                           dc.w $7ffe
[000c900e]                           dc.w $7ffe
[000c9010]                           dc.w $70be
[000c9012]                           dc.b 'pûpép'
[000c9017]                           dc.b $fe
[000c9018]                           dc.w $700e
[000c901a]                           dc.w $700e
[000c901c]                           dc.w $700e
[000c901e]                           dc.w $700e
[000c9020]                           dc.w $700e
[000c9022]                           dc.w $700e
[000c9024]                           dc.w $7ffe
[000c9026]                           dc.w $7ffe
[000c9028]                           dc.b $00
[000c9029]                           dc.b $00
[000c902a]                           dc.b $00
[000c902b]                           dc.b $00
[000c902c]                           dc.w $7ffe
[000c902e]                           dc.w $7ffe
[000c9030]                           dc.w $70be
[000c9032]                           dc.b 'pûpép'
[000c9037]                           dc.b $fe
[000c9038]                           dc.w $700e
[000c903a]                           dc.w $700e
[000c903c]                           dc.w $700e
[000c903e]                           dc.w $700e
[000c9040]                           dc.w $700e
[000c9042]                           dc.w $700e
[000c9044]                           dc.w $7ffe
[000c9046]                           dc.w $7ffe
[000c9048]                           dc.b $00
[000c9049]                           dc.b $00
[000c904a]                           dc.b $00
[000c904b]                           dc.b $01
[000c904c]                           dc.b $00
[000c904d]                           dc.b $01
[000c904e]                           dc.w $1fc1
[000c9050]                           dc.w $10e1
[000c9052]                           dc.w $10b1
[000c9054]                           dc.w $1099
[000c9056]                           dc.w $10f9
[000c9058]                           dc.w $1009
[000c905a]                           dc.w $1009
[000c905c]                           dc.w $1009
[000c905e]                           dc.w $1009
[000c9060]                           dc.w $1009
[000c9062]                           dc.w $1009
[000c9064]                           dc.w $1ff9
[000c9066]                           dc.b $00
[000c9067]                           dc.b $01
[000c9068]                           dc.w $ffff
DATAS_22:
[000c906a]                           dc.w $ffff
[000c906c]                           dc.w $ffff
[000c906e]                           dc.w $ffff
[000c9070]                           dc.w $ffff
[000c9072]                           dc.w $ffff
[000c9074]                           dc.w $ffff
[000c9076]                           dc.w $ffff
[000c9078]                           dc.w $ffff
[000c907a]                           dc.w $ffff
[000c907c]                           dc.w $ffff
[000c907e]                           dc.w $ffff
[000c9080]                           dc.w $ffff
[000c9082]                           dc.w $ffff
[000c9084]                           dc.w $ffff
[000c9086]                           dc.w $ffff
[000c9088]                           dc.w $ffff
DATAS_23:
[000c908a]                           dc.b $00
[000c908b]                           dc.b $00
[000c908c]                           dc.b $00
[000c908d]                           dc.b $00
[000c908e]                           dc.b $00
[000c908f]                           dc.b $88
[000c9090]                           dc.b $00
[000c9091]                           dc.b $00
[000c9092]                           dc.w $7ffe
[000c9094]                           dc.w $7ffe
[000c9096]                           dc.w $70be
[000c9098]                           dc.b 'pûpép'
[000c909d]                           dc.b $fe
[000c909e]                           dc.w $700e
[000c90a0]                           dc.w $700e
[000c90a2]                           dc.w $700e
[000c90a4]                           dc.w $700e
[000c90a6]                           dc.w $700e
[000c90a8]                           dc.w $700e
[000c90aa]                           dc.w $7ffe
[000c90ac]                           dc.w $7ffe
[000c90ae]                           dc.b $00
[000c90af]                           dc.b $00
[000c90b0]                           dc.b $00
[000c90b1]                           dc.b $00
[000c90b2]                           dc.w $7ffe
[000c90b4]                           dc.w $7ffe
[000c90b6]                           dc.w $70be
[000c90b8]                           dc.b 'pûpép'
[000c90bd]                           dc.b $fe
[000c90be]                           dc.w $700e
[000c90c0]                           dc.w $700e
[000c90c2]                           dc.w $700e
[000c90c4]                           dc.w $700e
[000c90c6]                           dc.w $700e
[000c90c8]                           dc.w $700e
[000c90ca]                           dc.w $7ffe
[000c90cc]                           dc.w $7ffe
[000c90ce]                           dc.b $00
[000c90cf]                           dc.b $00
[000c90d0]                           dc.b $00
[000c90d1]                           dc.b $00
[000c90d2]                           dc.w $7ffe
[000c90d4]                           dc.w $7ffe
[000c90d6]                           dc.w $70be
[000c90d8]                           dc.b 'pûpép'
[000c90dd]                           dc.b $fe
[000c90de]                           dc.w $700e
[000c90e0]                           dc.w $700e
[000c90e2]                           dc.w $700e
[000c90e4]                           dc.w $700e
[000c90e6]                           dc.w $700e
[000c90e8]                           dc.w $700e
[000c90ea]                           dc.w $7ffe
[000c90ec]                           dc.w $7ffe
[000c90ee]                           dc.b $00
[000c90ef]                           dc.b $00
[000c90f0]                           dc.w $ffff
[000c90f2]                           dc.w $8000
[000c90f4]                           dc.w $9fc0
[000c90f6]                           dc.w $90e0
[000c90f8]                           dc.w $90b0
[000c90fa]                           dc.w $9098
[000c90fc]                           dc.w $90f8
[000c90fe]                           dc.w $9008
[000c9100]                           dc.w $9008
[000c9102]                           dc.w $9008
[000c9104]                           dc.w $9008
[000c9106]                           dc.w $9008
[000c9108]                           dc.w $9008
[000c910a]                           dc.w $9ff8
[000c910c]                           dc.w $8000
[000c910e]                           dc.w $8000
DATAS_24:
[000c9110]                           dc.w $ffff
[000c9112]                           dc.w $ffff
[000c9114]                           dc.w $ffff
[000c9116]                           dc.w $ffff
[000c9118]                           dc.w $ffff
[000c911a]                           dc.w $ffff
[000c911c]                           dc.w $ffff
[000c911e]                           dc.w $ffff
[000c9120]                           dc.w $ffff
[000c9122]                           dc.w $ffff
[000c9124]                           dc.w $ffff
[000c9126]                           dc.w $ffff
[000c9128]                           dc.w $ffff
[000c912a]                           dc.w $ffff
[000c912c]                           dc.w $ffff
[000c912e]                           dc.w $ffff
A_3DBUTTON06:
[000c9130] 0005a4e2                  dc.l A_3Dbutton
[000c9134]                           dc.w $29f1
[000c9136]                           dc.w $9178
[000c9138] 00059318                  dc.l Auo_string
[000c913c]                           dc.b $00
[000c913d]                           dc.b $00
[000c913e]                           dc.b $00
[000c913f]                           dc.b $00
[000c9140]                           dc.b $00
[000c9141]                           dc.b $00
[000c9142]                           dc.b $00
[000c9143]                           dc.b $00
[000c9144]                           dc.b $00
[000c9145]                           dc.b $00
[000c9146]                           dc.b $00
[000c9147]                           dc.b $00
[000c9148]                           dc.b $00
[000c9149]                           dc.b $00
[000c914a]                           dc.b $00
[000c914b]                           dc.b $00
[000c914c]                           dc.b $00
[000c914d]                           dc.b $00
[000c914e]                           dc.b $00
[000c914f]                           dc.b $00
A_EDITOR01:
[000c9150] 000362da                  dc.l A_editor
[000c9154]                           dc.b $00
[000c9155]                           dc.b $00
[000c9156]                           dc.b $00
[000c9157]                           dc.b $00
[000c9158] 00038e52                  dc.l Auo_editor
[000c915c]                           dc.b $00
[000c915d]                           dc.b $00
[000c915e]                           dc.b $00
[000c915f]                           dc.b $00
[000c9160]                           dc.b $00
[000c9161]                           dc.b $00
[000c9162]                           dc.b $00
[000c9163]                           dc.b $00
[000c9164]                           dc.b $00
[000c9165]                           dc.b $00
[000c9166]                           dc.b $00
[000c9167]                           dc.b $00
[000c9168]                           dc.b $00
[000c9169]                           dc.b $00
[000c916a]                           dc.b $00
[000c916b]                           dc.b $00
[000c916c]                           dc.b $00
[000c916d]                           dc.b $00
[000c916e]                           dc.b $00
[000c916f]                           dc.b $00
A_SELECT01:
[000c9170] 0005b5a0                  dc.l A_select
[000c9174]                           dc.b $00
[000c9175]                           dc.b $00
[000c9176]                           dc.b $00
[000c9177]                           dc.b $00
[000c9178]                           dc.b $00
[000c9179]                           dc.b $00
[000c917a]                           dc.b $00
[000c917b]                           dc.b $00
[000c917c]                           dc.b $00
[000c917d]                           dc.b $00
[000c917e]                           dc.b $00
[000c917f]                           dc.b $00
[000c9180]                           dc.b $00
[000c9181]                           dc.b $00
[000c9182]                           dc.b $00
[000c9183]                           dc.b $00
[000c9184]                           dc.b $00
[000c9185]                           dc.b $00
[000c9186]                           dc.b $00
[000c9187]                           dc.b $00
[000c9188]                           dc.b $00
[000c9189]                           dc.b $00
[000c918a]                           dc.b $00
[000c918b]                           dc.b $00
[000c918c]                           dc.b $00
[000c918d]                           dc.b $00
[000c918e]                           dc.b $00
[000c918f]                           dc.b $00
A_WISLIDER01:
[000c9190] 00035f08                  dc.l A_wislider
[000c9194]                           dc.b $00
[000c9195]                           dc.b $00
[000c9196]                           dc.b $00
[000c9197]                           dc.b $01
[000c9198] 00035f14                  dc.l Auo_wislider
[000c919c]                           dc.b $00
[000c919d]                           dc.b $00
[000c919e]                           dc.b $00
[000c919f]                           dc.b $00
[000c91a0]                           dc.b $00
[000c91a1]                           dc.b $00
[000c91a2]                           dc.b $00
[000c91a3]                           dc.b $00
[000c91a4]                           dc.b $00
[000c91a5]                           dc.b $00
[000c91a6]                           dc.b $00
[000c91a7]                           dc.b $00
[000c91a8]                           dc.b $00
[000c91a9]                           dc.b $00
[000c91aa]                           dc.b $00
[000c91ab]                           dc.b $00
[000c91ac]                           dc.b $00
[000c91ad]                           dc.b $00
[000c91ae]                           dc.b $00
[000c91af]                           dc.b $00
_C4_IC_COPY:
[000c91b0]                           dc.b $00
[000c91b1]                           dc.b $04
[000c91b2] 000c8c06                  dc.l $000c8c06 ; no symbol found
[000c91b6] 000c8c86                  dc.l DATAS_10
[000c91ba] 000c8cac                  dc.l $000c8cac ; no symbol found
[000c91be] 000c8d2c                  dc.l DATAS_12
[000c91c2]                           dc.b $00
[000c91c3]                           dc.b $00
[000c91c4]                           dc.b $00
[000c91c5]                           dc.b $00
_MSK_IC_COPY:
[000c91c6]                           dc.b $00
[000c91c7]                           dc.b $00
[000c91c8]                           dc.w $7e00
[000c91ca]                           dc.w $7f00
[000c91cc]                           dc.w $7f80
[000c91ce]                           dc.w $7f80
[000c91d0]                           dc.w $7f80
[000c91d2]                           dc.w $7ff8
[000c91d4]                           dc.w $7ffc
[000c91d6]                           dc.w $7ffe
[000c91d8]                           dc.w $7ffe
[000c91da]                           dc.w $01fe
[000c91dc]                           dc.w $01fe
[000c91de]                           dc.w $01fe
[000c91e0]                           dc.w $01fe
[000c91e2]                           dc.w $01fe
[000c91e4]                           dc.b $00
[000c91e5]                           dc.b $00
_DAT_IC_COPY:
[000c91e6]                           dc.b $00
[000c91e7]                           dc.b $00
[000c91e8]                           dc.w $7e00
[000c91ea]                           dc.w $4300
[000c91ec]                           dc.w $4280
[000c91ee]                           dc.w $4380
[000c91f0]                           dc.w $4080
[000c91f2]                           dc.w $41f8
[000c91f4]                           dc.w $410c
[000c91f6]                           dc.w $410a
[000c91f8]                           dc.w $7f0e
[000c91fa]                           dc.w $0102
[000c91fc]                           dc.w $0102
[000c91fe]                           dc.w $0102
[000c9200]                           dc.w $0102
[000c9202]                           dc.w $01fe
[000c9204]                           dc.b $00
[000c9205]                           dc.b $00
IC_COPY:
[000c9206] 000c91c6                  dc.l _MSK_IC_COPY
[000c920a] 000c91e6                  dc.l _DAT_IC_COPY
[000c920e] 000c8ab2                  dc.l TEXT_002
[000c9212]                           dc.w $1000
[000c9214]                           dc.b $00
[000c9215]                           dc.b $06
[000c9216]                           dc.b $00
[000c9217]                           dc.b $06
[000c9218]                           dc.b $00
[000c9219]                           dc.b $00
[000c921a]                           dc.b $00
[000c921b]                           dc.b $00
[000c921c]                           dc.b $00
[000c921d]                           dc.b $10
[000c921e]                           dc.b $00
[000c921f]                           dc.b $10
[000c9220]                           dc.b $00
[000c9221]                           dc.b $06
[000c9222]                           dc.b $00
[000c9223]                           dc.b $06
[000c9224]                           dc.b $00
[000c9225]                           dc.b $00
[000c9226]                           dc.b $00
[000c9227]                           dc.b $00
[000c9228] 000c91b0                  dc.l _C4_IC_COPY
_C4_IC_CUT:
[000c922c]                           dc.b $00
[000c922d]                           dc.b $04
[000c922e] 000c8aba                  dc.l $000c8aba ; no symbol found
[000c9232] 000c8b3a                  dc.l DATAS_06
[000c9236] 000c8b60                  dc.l $000c8b60 ; no symbol found
[000c923a] 000c8be0                  dc.l DATAS_08
[000c923e]                           dc.b $00
[000c923f]                           dc.b $00
[000c9240]                           dc.b $00
[000c9241]                           dc.b $00
_MSK_IC_CUT:
[000c9242]                           dc.w $3ffe
[000c9244]                           dc.w $3ffe
[000c9246]                           dc.w $3ffe
[000c9248]                           dc.w $3ffe
[000c924a]                           dc.w $3ffe
[000c924c]                           dc.w $3ffe
[000c924e]                           dc.w $3ffe
[000c9250]                           dc.w $3ffe
[000c9252]                           dc.w $3ffe
[000c9254]                           dc.w $3ffe
[000c9256]                           dc.w $3ffe
[000c9258]                           dc.w $3ffe
[000c925a]                           dc.w $3ffe
[000c925c]                           dc.w $3ffe
[000c925e]                           dc.w $3ffe
[000c9260]                           dc.w $3ffe
_DAT_IC_CUT:
[000c9262]                           dc.w $3ffe
[000c9264]                           dc.b '""""""#b!B!'
[000c926f]                           dc.b $c2
[000c9270]                           dc.w $2082
[000c9272]                           dc.w $21c2
[000c9274]                           dc.b $27,'r)J)J)J)2&'
[000c927f]                           dc.b $02
[000c9280]                           dc.w $3ffe
IC_CUT:
[000c9282] 000c9242                  dc.l _MSK_IC_CUT
[000c9286] 000c9262                  dc.l _DAT_IC_CUT
[000c928a] 000c8ab2                  dc.l TEXT_002
[000c928e]                           dc.w $1000
[000c9290]                           dc.b $00
[000c9291]                           dc.b $06
[000c9292]                           dc.b $00
[000c9293]                           dc.b $06
[000c9294]                           dc.b $00
[000c9295]                           dc.b $00
[000c9296]                           dc.b $00
[000c9297]                           dc.b $00
[000c9298]                           dc.b $00
[000c9299]                           dc.b $10
[000c929a]                           dc.b $00
[000c929b]                           dc.b $10
[000c929c]                           dc.b $00
[000c929d]                           dc.b $06
[000c929e]                           dc.b $00
[000c929f]                           dc.b $06
[000c92a0]                           dc.b $00
[000c92a1]                           dc.b $00
[000c92a2]                           dc.b $00
[000c92a3]                           dc.b $00
[000c92a4] 000c922c                  dc.l _C4_IC_CUT
_C4_IC_NEW:
[000c92a8]                           dc.b $00
[000c92a9]                           dc.b $04
[000c92aa] 000c8fea                  dc.l $000c8fea ; no symbol found
[000c92ae] 000c906a                  dc.l DATAS_22
[000c92b2] 000c9090                  dc.l $000c9090 ; no symbol found
[000c92b6] 000c9110                  dc.l DATAS_24
[000c92ba]                           dc.b $00
[000c92bb]                           dc.b $00
[000c92bc]                           dc.b $00
[000c92bd]                           dc.b $00
_MSK_IC_NEW:
[000c92be]                           dc.b $00
[000c92bf]                           dc.b $00
[000c92c0]                           dc.w $3fe0
[000c92c2]                           dc.w $3ff0
[000c92c4]                           dc.w $3ff8
[000c92c6]                           dc.w $3ffc
[000c92c8]                           dc.w $3ffc
[000c92ca]                           dc.w $3ffc
[000c92cc]                           dc.w $3ffc
[000c92ce]                           dc.w $3ffc
[000c92d0]                           dc.w $3ffc
[000c92d2]                           dc.w $3ffc
[000c92d4]                           dc.w $3ffc
[000c92d6]                           dc.w $3ffc
[000c92d8]                           dc.w $3ffc
[000c92da]                           dc.w $3ffc
[000c92dc]                           dc.b $00
[000c92dd]                           dc.b $00
_DAT_IC_NEW:
[000c92de]                           dc.b $00
[000c92df]                           dc.b $00
[000c92e0]                           dc.w $3fe0
[000c92e2]                           dc.b ' p X L | '
[000c92eb]                           dc.b $04
[000c92ec]                           dc.w $2004
[000c92ee]                           dc.w $2004
[000c92f0]                           dc.w $2004
[000c92f2]                           dc.w $2004
[000c92f4]                           dc.w $2004
[000c92f6]                           dc.w $2004
[000c92f8]                           dc.w $2004
[000c92fa]                           dc.w $3ffc
[000c92fc]                           dc.b $00
[000c92fd]                           dc.b $00
IC_NEW:
[000c92fe] 000c92be                  dc.l _MSK_IC_NEW
[000c9302] 000c92de                  dc.l _DAT_IC_NEW
[000c9306] 000c8ab2                  dc.l TEXT_002
[000c930a]                           dc.w $1000
[000c930c]                           dc.b $00
[000c930d]                           dc.b $06
[000c930e]                           dc.b $00
[000c930f]                           dc.b $06
[000c9310]                           dc.b $00
[000c9311]                           dc.b $00
[000c9312]                           dc.b $00
[000c9313]                           dc.b $00
[000c9314]                           dc.b $00
[000c9315]                           dc.b $10
[000c9316]                           dc.b $00
[000c9317]                           dc.b $10
[000c9318]                           dc.b $00
[000c9319]                           dc.b $06
[000c931a]                           dc.b $00
[000c931b]                           dc.b $06
[000c931c]                           dc.b $00
[000c931d]                           dc.b $00
[000c931e]                           dc.b $00
[000c931f]                           dc.b $00
[000c9320] 000c92a8                  dc.l _C4_IC_NEW
_C4_IC_OPEN:
[000c9324]                           dc.b $00
[000c9325]                           dc.b $04
[000c9326] 000c8d52                  dc.l $000c8d52 ; no symbol found
[000c932a] 000c8dd2                  dc.l DATAS_14
[000c932e] 000c8df8                  dc.l $000c8df8 ; no symbol found
[000c9332] 000c8e78                  dc.l DATAS_16
[000c9336]                           dc.b $00
[000c9337]                           dc.b $00
[000c9338]                           dc.b $00
[000c9339]                           dc.b $00
_MSK_IC_OPEN:
[000c933a]                           dc.b $00
[000c933b]                           dc.b $00
[000c933c]                           dc.w $01f0
[000c933e]                           dc.w $03f8
[000c9340]                           dc.w $03ff
[000c9342]                           dc.w $3fff
[000c9344]                           dc.w $7fff
[000c9346]                           dc.w $7fff
[000c9348]                           dc.w $7fff
[000c934a]                           dc.w $7ffe
[000c934c]                           dc.w $7ffe
[000c934e]                           dc.w $7ffe
[000c9350]                           dc.w $7ffc
[000c9352]                           dc.w $7ff8
[000c9354]                           dc.w $7ff0
[000c9356]                           dc.w $7fe0
[000c9358]                           dc.b $00
[000c9359]                           dc.b $00
_DAT_IC_OPEN:
[000c935a]                           dc.b $00
[000c935b]                           dc.b $00
[000c935c]                           dc.b $00
[000c935d]                           dc.b $00
[000c935e]                           dc.b $00
[000c935f]                           dc.b $e0
[000c9360]                           dc.w $0110
[000c9362]                           dc.w $3c0a
[000c9364]                           dc.w $4206
[000c9366]                           dc.w $41ce
[000c9368]                           dc.b '@ @ C'
[000c936d]                           dc.b $fc
[000c936e]                           dc.w $4402
[000c9370]                           dc.w $4804
[000c9372]                           dc.w $5008
[000c9374]                           dc.w $6010
[000c9376]                           dc.w $7fe0
[000c9378]                           dc.b $00
[000c9379]                           dc.b $00
IC_OPEN:
[000c937a] 000c933a                  dc.l _MSK_IC_OPEN
[000c937e] 000c935a                  dc.l _DAT_IC_OPEN
[000c9382] 000c8ab2                  dc.l TEXT_002
[000c9386]                           dc.w $1000
[000c9388]                           dc.b $00
[000c9389]                           dc.b $06
[000c938a]                           dc.b $00
[000c938b]                           dc.b $06
[000c938c]                           dc.b $00
[000c938d]                           dc.b $00
[000c938e]                           dc.b $00
[000c938f]                           dc.b $00
[000c9390]                           dc.b $00
[000c9391]                           dc.b $10
[000c9392]                           dc.b $00
[000c9393]                           dc.b $10
[000c9394]                           dc.b $00
[000c9395]                           dc.b $06
[000c9396]                           dc.b $00
[000c9397]                           dc.b $06
[000c9398]                           dc.b $00
[000c9399]                           dc.b $00
[000c939a]                           dc.b $00
[000c939b]                           dc.b $00
[000c939c] 000c9324                  dc.l _C4_IC_OPEN
_C4_IC_PASTE:
[000c93a0]                           dc.b $00
[000c93a1]                           dc.b $04
[000c93a2] 000c8e9e                  dc.l $000c8e9e ; no symbol found
[000c93a6] 000c8f1e                  dc.l DATAS_18
[000c93aa] 000c8f44                  dc.l $000c8f44 ; no symbol found
[000c93ae] 000c8fc4                  dc.l DATAS_20
[000c93b2]                           dc.b $00
[000c93b3]                           dc.b $00
[000c93b4]                           dc.b $00
[000c93b5]                           dc.b $00
_MSK_IC_PASTE:
[000c93b6]                           dc.w $03c0
[000c93b8]                           dc.w $3ffc
[000c93ba]                           dc.w $7ffe
[000c93bc]                           dc.w $7ffe
[000c93be]                           dc.w $7ffe
[000c93c0]                           dc.w $7ffe
[000c93c2]                           dc.w $7ffe
[000c93c4]                           dc.w $7ffe
[000c93c6]                           dc.w $7ffe
[000c93c8]                           dc.w $7ffe
[000c93ca]                           dc.w $7ffe
[000c93cc]                           dc.w $7ffe
[000c93ce]                           dc.w $7ffe
[000c93d0]                           dc.w $3ffe
[000c93d2]                           dc.b $00
[000c93d3]                           dc.b $fe
[000c93d4]                           dc.b $00
[000c93d5]                           dc.b $00
_DAT_IC_PASTE:
[000c93d6]                           dc.w $03c0
[000c93d8]                           dc.w $3e7c
[000c93da]                           dc.w $45a2
[000c93dc]                           dc.w $47e2
[000c93de]                           dc.w $4002
[000c93e0]                           dc.w $4002
[000c93e2]                           dc.w $4002
[000c93e4]                           dc.w $4002
[000c93e6]                           dc.w $40fa
[000c93e8]                           dc.w $408e
[000c93ea]                           dc.w $408a
[000c93ec]                           dc.w $408e
[000c93ee]                           dc.w $4082
[000c93f0]                           dc.w $3f82
[000c93f2]                           dc.b $00
[000c93f3]                           dc.b $fe
[000c93f4]                           dc.b $00
[000c93f5]                           dc.b $00
IC_PASTE:
[000c93f6] 000c93b6                  dc.l _MSK_IC_PASTE
[000c93fa] 000c93d6                  dc.l _DAT_IC_PASTE
[000c93fe] 000c8ab2                  dc.l TEXT_002
[000c9402]                           dc.w $1000
[000c9404]                           dc.b $00
[000c9405]                           dc.b $06
[000c9406]                           dc.b $00
[000c9407]                           dc.b $06
[000c9408]                           dc.b $00
[000c9409]                           dc.b $00
[000c940a]                           dc.b $00
[000c940b]                           dc.b $00
[000c940c]                           dc.b $00
[000c940d]                           dc.b $10
[000c940e]                           dc.b $00
[000c940f]                           dc.b $10
[000c9410]                           dc.b $00
[000c9411]                           dc.b $06
[000c9412]                           dc.b $00
[000c9413]                           dc.b $06
[000c9414]                           dc.b $00
[000c9415]                           dc.b $00
[000c9416]                           dc.b $00
[000c9417]                           dc.b $00
[000c9418] 000c93a0                  dc.l _C4_IC_PASTE
D_LIST:
[000c941c]                           dc.w $ffff
[000c941e]                           dc.b $00
[000c941f]                           dc.b $02
[000c9420]                           dc.b $00
[000c9421]                           dc.b $04
[000c9422]                           dc.b $00
[000c9423]                           dc.b $18
[000c9424]                           dc.w $1840
[000c9426]                           dc.b $00
[000c9427]                           dc.b $00
[000c9428] 000c9150                  dc.l A_EDITOR01
[000c942c]                           dc.b $00
[000c942d]                           dc.b $00
[000c942e]                           dc.b $00
[000c942f]                           dc.b $00
[000c9430]                           dc.b $00
[000c9431]                           dc.b $1e
[000c9432]                           dc.b $00
[000c9433]                           dc.b $0a
_00aD_LIST:
[000c9434] 0003ff4e                  dc.l list_click
[000c9438] 0003feac                  dc.l list_acc
[000c943c]                           dc.w $8000
[000c943e]                           dc.b $00
[000c943f]                           dc.b $00
[000c9440]                           dc.b $00
[000c9441]                           dc.b $00
[000c9442]                           dc.b $00
[000c9443]                           dc.b $00
[000c9444]                           dc.b $00
[000c9445]                           dc.b $00
[000c9446]                           dc.b $00
[000c9447]                           dc.b $00
[000c9448]                           dc.b $00
[000c9449]                           dc.b $00
[000c944a]                           dc.b $00
[000c944b]                           dc.b $00
_02_D_LIST:
[000c944c]                           dc.b $00
[000c944d]                           dc.b $04
[000c944e]                           dc.w $ffff
[000c9450]                           dc.w $ffff
[000c9452]                           dc.b $00
[000c9453]                           dc.b $18
[000c9454]                           dc.w $2000
[000c9456]                           dc.b $00
[000c9457]                           dc.b $00
[000c9458] 000c9170                  dc.l A_SELECT01
[000c945c]                           dc.b $00
[000c945d]                           dc.b $00
[000c945e]                           dc.b $00
[000c945f]                           dc.b $00
[000c9460]                           dc.b $00
[000c9461]                           dc.b $00
[000c9462]                           dc.b $00
[000c9463]                           dc.b $00
_02aD_LIST:
[000c9464]                           dc.b $00
[000c9465]                           dc.b $00
[000c9466]                           dc.b $00
[000c9467]                           dc.b $00
[000c9468]                           dc.b $00
[000c9469]                           dc.b $00
[000c946a]                           dc.b $00
[000c946b]                           dc.b $00
[000c946c]                           dc.w $8000
[000c946e]                           dc.b $00
[000c946f]                           dc.b $00
[000c9470]                           dc.b $00
[000c9471]                           dc.b $00
[000c9472]                           dc.b $00
[000c9473]                           dc.b $00
[000c9474]                           dc.b $00
[000c9475]                           dc.b $00
[000c9476]                           dc.b $00
[000c9477]                           dc.b $00
[000c9478]                           dc.b $00
[000c9479]                           dc.b $00
[000c947a]                           dc.b $00
[000c947b]                           dc.b $00
_04_D_LIST:
[000c947c]                           dc.b $00
[000c947d]                           dc.b $00
[000c947e]                           dc.w $ffff
[000c9480]                           dc.w $ffff
[000c9482]                           dc.b $00
[000c9483]                           dc.b $18
[000c9484]                           dc.b $00
[000c9485]                           dc.b $60
[000c9486]                           dc.b $00
[000c9487]                           dc.b $00
[000c9488] 000c9190                  dc.l A_WISLIDER01
[000c948c]                           dc.b $00
[000c948d]                           dc.b $1c
[000c948e]                           dc.b $00
[000c948f]                           dc.b $00
[000c9490]                           dc.b $00
[000c9491]                           dc.b $00
[000c9492]                           dc.b $00
[000c9493]                           dc.b $00
T_LIST:
[000c9494]                           dc.w $ffff
[000c9496]                           dc.b $00
[000c9497]                           dc.b $01
[000c9498]                           dc.b $00
[000c9499]                           dc.b $09
[000c949a]                           dc.b $00
[000c949b]                           dc.b $18
[000c949c]                           dc.b $00
[000c949d]                           dc.b $40
[000c949e]                           dc.b $00
[000c949f]                           dc.b $00
[000c94a0] 000c9130                  dc.l A_3DBUTTON06
[000c94a4]                           dc.b $00
[000c94a5]                           dc.b $00
[000c94a6]                           dc.b $00
[000c94a7]                           dc.b $00
[000c94a8]                           dc.b $00
[000c94a9]                           dc.b $32
[000c94aa]                           dc.w $1600
_01_T_LIST:
[000c94ac]                           dc.b $00
[000c94ad]                           dc.b $03
[000c94ae]                           dc.w $ffff
[000c94b0]                           dc.w $ffff
[000c94b2]                           dc.b $00
[000c94b3]                           dc.b $1f
[000c94b4]                           dc.b $00
[000c94b5]                           dc.b $05
[000c94b6]                           dc.b $00
[000c94b7]                           dc.b $00
[000c94b8] 000c92fe                  dc.l IC_NEW
[000c94bc]                           dc.w $0300
[000c94be]                           dc.w $0300
[000c94c0]                           dc.w $1000
[000c94c2]                           dc.w $1000
_01aT_LIST:
[000c94c4] 000402b8                  dc.l list_new
[000c94c8]                           dc.b $00
[000c94c9]                           dc.b $00
[000c94ca]                           dc.b $00
[000c94cb]                           dc.b $00
[000c94cc]                           dc.w $8000
[000c94ce]                           dc.w $844e
[000c94d0]                           dc.b $00
[000c94d1]                           dc.b $00
[000c94d2]                           dc.b $00
[000c94d3]                           dc.b $00
[000c94d4]                           dc.b $00
[000c94d5]                           dc.b $00
[000c94d6]                           dc.b $00
[000c94d7]                           dc.b $00
[000c94d8]                           dc.b $00
[000c94d9]                           dc.b $00
[000c94da]                           dc.b $00
[000c94db]                           dc.b $00
_03_T_LIST:
[000c94dc]                           dc.b $00
[000c94dd]                           dc.b $05
[000c94de]                           dc.w $ffff
[000c94e0]                           dc.w $ffff
[000c94e2]                           dc.b $00
[000c94e3]                           dc.b $1f
[000c94e4]                           dc.b $00
[000c94e5]                           dc.b $05
[000c94e6]                           dc.b $00
[000c94e7]                           dc.b $08
[000c94e8] 000c937a                  dc.l IC_OPEN
[000c94ec]                           dc.w $0302
[000c94ee]                           dc.w $0300
[000c94f0]                           dc.w $1000
[000c94f2]                           dc.w $1000
_03aT_LIST:
[000c94f4] 00040336                  dc.l list_open
[000c94f8]                           dc.b $00
[000c94f9]                           dc.b $00
[000c94fa]                           dc.b $00
[000c94fb]                           dc.b $00
[000c94fc]                           dc.w $8000
[000c94fe]                           dc.w $844f
[000c9500]                           dc.b $00
[000c9501]                           dc.b $00
[000c9502]                           dc.b $00
[000c9503]                           dc.b $00
[000c9504]                           dc.b $00
[000c9505]                           dc.b $00
[000c9506]                           dc.b $00
[000c9507]                           dc.b $00
[000c9508]                           dc.b $00
[000c9509]                           dc.b $00
[000c950a]                           dc.b $00
[000c950b]                           dc.b $00
_05_T_LIST:
[000c950c]                           dc.b $00
[000c950d]                           dc.b $07
[000c950e]                           dc.w $ffff
[000c9510]                           dc.w $ffff
[000c9512]                           dc.b $00
[000c9513]                           dc.b $1f
[000c9514]                           dc.b $00
[000c9515]                           dc.b $05
[000c9516]                           dc.b $00
[000c9517]                           dc.b $08
[000c9518] 000c9282                  dc.l IC_CUT
[000c951c]                           dc.w $0306
[000c951e]                           dc.w $0300
[000c9520]                           dc.w $1000
[000c9522]                           dc.w $1000
_05aT_LIST:
[000c9524] 00040230                  dc.l list_cut
[000c9528]                           dc.b $00
[000c9529]                           dc.b $00
[000c952a]                           dc.b $00
[000c952b]                           dc.b $00
[000c952c]                           dc.w $8000
[000c952e]                           dc.w $8458
[000c9530]                           dc.b $00
[000c9531]                           dc.b $00
[000c9532]                           dc.b $00
[000c9533]                           dc.b $00
[000c9534]                           dc.b $00
[000c9535]                           dc.b $00
[000c9536]                           dc.b $00
[000c9537]                           dc.b $00
[000c9538]                           dc.b $00
[000c9539]                           dc.b $00
[000c953a]                           dc.b $00
[000c953b]                           dc.b $00
_07_T_LIST:
[000c953c]                           dc.b $00
[000c953d]                           dc.b $09
[000c953e]                           dc.w $ffff
[000c9540]                           dc.w $ffff
[000c9542]                           dc.b $00
[000c9543]                           dc.b $1f
[000c9544]                           dc.b $00
[000c9545]                           dc.b $05
[000c9546]                           dc.b $00
[000c9547]                           dc.b $08
[000c9548] 000c9206                  dc.l IC_COPY
[000c954c]                           dc.w $0308
[000c954e]                           dc.w $0300
[000c9550]                           dc.w $1000
[000c9552]                           dc.w $1000
_07aT_LIST:
[000c9554] 000401aa                  dc.l list_copy
[000c9558]                           dc.b $00
[000c9559]                           dc.b $00
[000c955a]                           dc.b $00
[000c955b]                           dc.b $00
[000c955c]                           dc.w $8000
[000c955e]                           dc.w $8443
[000c9560]                           dc.b $00
[000c9561]                           dc.b $00
[000c9562]                           dc.b $00
[000c9563]                           dc.b $00
[000c9564]                           dc.b $00
[000c9565]                           dc.b $00
[000c9566]                           dc.b $00
[000c9567]                           dc.b $00
[000c9568]                           dc.b $00
[000c9569]                           dc.b $00
[000c956a]                           dc.b $00
[000c956b]                           dc.b $00
_09_T_LIST:
[000c956c]                           dc.b $00
[000c956d]                           dc.b $00
[000c956e]                           dc.w $ffff
[000c9570]                           dc.w $ffff
[000c9572]                           dc.b $00
[000c9573]                           dc.b $1f
[000c9574]                           dc.b $00
[000c9575]                           dc.b $05
[000c9576]                           dc.b $00
[000c9577]                           dc.b $08
[000c9578] 000c93f6                  dc.l IC_PASTE
[000c957c]                           dc.w $030a
[000c957e]                           dc.w $0300
[000c9580]                           dc.w $1000
[000c9582]                           dc.w $1000
_09aT_LIST:
[000c9584] 00040410                  dc.l list_paste
[000c9588]                           dc.b $00
[000c9589]                           dc.b $00
[000c958a]                           dc.b $00
[000c958b]                           dc.b $00
[000c958c]                           dc.w $8020
[000c958e]                           dc.w $8456
[000c9590]                           dc.b $00
[000c9591]                           dc.b $00
[000c9592]                           dc.b $00
[000c9593]                           dc.b $00
[000c9594]                           dc.b $00
[000c9595]                           dc.b $00
[000c9596]                           dc.b $00
[000c9597]                           dc.b $00
[000c9598]                           dc.b $00
[000c9599]                           dc.b $00
[000c959a]                           dc.b $00
[000c959b]                           dc.b $00
LIST_WINDOW:
[000c959c]                           dc.b $00
[000c959d]                           dc.b $00
[000c959e]                           dc.b $00
[000c959f]                           dc.b $00
[000c95a0] 00040732                  dc.l serv_list
[000c95a4] 000404fa                  dc.l make_list
[000c95a8] 0004f69e                  dc.l Awi_open
[000c95ac] 0004e610                  dc.l Awi_init
[000c95b0] 000c941c                  dc.l D_LIST
[000c95b4] 000c9494                  dc.l T_LIST
[000c95b8]                           dc.b $00
[000c95b9]                           dc.b $00
[000c95ba]                           dc.b $00
[000c95bb]                           dc.b $00
[000c95bc]                           dc.w $ffff
[000c95be]                           dc.w $41ef
[000c95c0]                           dc.b $00
[000c95c1]                           dc.b $00
[000c95c2]                           dc.b $00
[000c95c3]                           dc.b $00
[000c95c4]                           dc.b $00
[000c95c5]                           dc.b $78
[000c95c6]                           dc.b $00
[000c95c7]                           dc.b $32
[000c95c8]                           dc.b $00
[000c95c9]                           dc.b $00
[000c95ca]                           dc.b $00
[000c95cb]                           dc.b $00
[000c95cc]                           dc.b $00
[000c95cd]                           dc.b $00
[000c95ce]                           dc.b $00
[000c95cf]                           dc.b $00
[000c95d0]                           dc.b $00
[000c95d1]                           dc.b $00
[000c95d2]                           dc.b $00
[000c95d3]                           dc.b $00
[000c95d4]                           dc.b $00
[000c95d5]                           dc.b $00
[000c95d6]                           dc.b $00
[000c95d7]                           dc.b $00
[000c95d8]                           dc.w $ffff
[000c95da]                           dc.w $ffff
[000c95dc]                           dc.w $ffff
[000c95de]                           dc.w $ffff
[000c95e0]                           dc.b $00
[000c95e1]                           dc.b $00
[000c95e2]                           dc.b $00
[000c95e3]                           dc.b $00
[000c95e4]                           dc.w $f8f8
[000c95e6] 000c8ab3                  dc.l TEXT_01
[000c95ea] 000c8ab2                  dc.l TEXT_002
[000c95ee]                           dc.w $0000
[000c95f0]                           dc.w $0100
[000c95f2]                           dc.w $0000
[000c95f4]                           dc.w $ffff
[000c95f6]                           dc.b $00
[000c95f7]                           dc.b $00
[000c95f8]                           dc.b $00
[000c95f9]                           dc.b $00
[000c95fa]                           dc.b $00
[000c95fb]                           dc.b $00
[000c95fc]                           dc.b $00
[000c95fd]                           dc.b $00
[000c95fe] 0003fd46                  dc.l key_list
[000c9602] 0004b600                  dc.l Awi_obchange
[000c9606] 0004b8cc                  dc.l Awi_redraw
[000c960a] 00050454                  dc.l Awi_topped
[000c960e] 0005013e                  dc.l Awi_closed
[000c9612] 0003fc66                  dc.l full_list
[000c9616] 0004bcc8                  dc.l Awi_arrowed
[000c961a] 0004beea                  dc.l Awi_hslid
[000c961e] 0004092e                  dc.l vslide_list
[000c9622] 0004084e                  dc.l size_list
[000c9626] 000507bc                  dc.l Awi_moved
[000c962a] 00050f9c                  dc.l Awi_iconify
[000c962e] 0005117c                  dc.l Awi_uniconify
[000c9632] 00052328                  dc.l Awi_gemscript
[000c9636]                           dc.w $0000
[000c9638]                           dc.w $0000
[000c963a]                           dc.w $0000
[000c963c]                           dc.w $0000
xc963e:
[000c963e]                           dc.w $0000
[000c9640]                           dc.w $0000
[000c9642]                           dc.w $0000
[000c9644]                           dc.w $0000
[000c9646]                           dc.w $0000
[000c9648]                           dc.w $0000
[000c964a]                           dc.w $0000
[000c964c]                           dc.w $0000
xc964e:
[000c964e]                           dc.w $0000
[000c9650]                           dc.w $0000
[000c9652]                           dc.w $0000
[000c9654]                           dc.w $0000
[000c9656]                           dc.w $0000
[000c9658]                           dc.w $0000
[000c965a]                           dc.w $0000
[000c965c]                           dc.w $0000
xc965e:
[000c965e]                           dc.w $0000
[000c9660]                           dc.w $0000
[000c9662]                           dc.w $0000
[000c9664]                           dc.w $0000
[000c9666]                           dc.w $0000
[000c9668]                           dc.w $0000
[000c966a]                           dc.w $0000
[000c966c]                           dc.w $0000
xc966e:
[000c966e]                           dc.w $0000
[000c9670]                           dc.w $0000
[000c9672]                           dc.w $0000
[000c9674]                           dc.w $0000
[000c9676]                           dc.w $0000
[000c9678]                           dc.w $0000
[000c967a]                           dc.w $0000
[000c967c]                           dc.w $0000
xc967e:
[000c967e]                           dc.w $0000
[000c9680]                           dc.w $0000
[000c9682]                           dc.w $0000
[000c9684]                           dc.w $0000
[000c9686]                           dc.w $0000
[000c9688]                           dc.w $0000
[000c968a]                           dc.w $0000
[000c968c]                           dc.w $0000
xc968e:
[000c968e]                           dc.w $0000
[000c9690]                           dc.w $0000
[000c9692]                           dc.w $0000
[000c9694]                           dc.w $0000
[000c9696]                           dc.w $0000
[000c9698]                           dc.w $0000
[000c969a]                           dc.w $0000
[000c969c]                           dc.w $0000
