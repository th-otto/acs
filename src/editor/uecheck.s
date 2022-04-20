
do3d:
[00028f7c] 2f0a                      move.l     a2,-(a7)
[00028f7e] 2f0b                      move.l     a3,-(a7)
[00028f80] 45f9 0010 1f12            lea.l      ACSblk,a2
[00028f86] 2052                      movea.l    (a2),a0
[00028f88] 2268 025c                 movea.l    604(a0),a1
[00028f8c] 2669 003c                 movea.l    60(a1),a3
[00028f90] 584b                      addq.w     #4,a3
[00028f92] 4293                      clr.l      (a3)
[00028f94] 7001                      moveq.l    #1,d0
[00028f96] 2052                      movea.l    (a2),a0
[00028f98] 3428 0260                 move.w     608(a0),d2
[00028f9c] 48c2                      ext.l      d2
[00028f9e] 2202                      move.l     d2,d1
[00028fa0] d281                      add.l      d1,d1
[00028fa2] d282                      add.l      d2,d1
[00028fa4] e789                      lsl.l      #3,d1
[00028fa6] 2268 025c                 movea.l    604(a0),a1
[00028faa] c071 180a                 and.w      10(a1,d1.l),d0
[00028fae] 6706                      beq.s      do3d_1
[00028fb0] 0093 0000 0001            ori.l      #$00000001,(a3)
do3d_1:
[00028fb6] 72ff                      moveq.l    #-1,d1
[00028fb8] 2052                      movea.l    (a2),a0
[00028fba] 3028 0260                 move.w     608(a0),d0
[00028fbe] 2068 0258                 movea.l    600(a0),a0
[00028fc2] 2252                      movea.l    (a2),a1
[00028fc4] 2669 0258                 movea.l    600(a1),a3
[00028fc8] 226b 0066                 movea.l    102(a3),a1
[00028fcc] 4e91                      jsr        (a1)
[00028fce] 72ff                      moveq.l    #-1,d1
[00028fd0] 7001                      moveq.l    #1,d0
[00028fd2] 2052                      movea.l    (a2),a0
[00028fd4] 2068 0258                 movea.l    600(a0),a0
[00028fd8] 2252                      movea.l    (a2),a1
[00028fda] 2669 0258                 movea.l    600(a1),a3
[00028fde] 226b 0066                 movea.l    102(a3),a1
[00028fe2] 4e91                      jsr        (a1)
[00028fe4] 265f                      movea.l    (a7)+,a3
[00028fe6] 245f                      movea.l    (a7)+,a2
[00028fe8] 4e75                      rts

init_check:
[00028fea] 2f0a                      move.l     a2,-(a7)
[00028fec] 2f0b                      move.l     a3,-(a7)
[00028fee] 2448                      movea.l    a0,a2
[00028ff0] 43f9 000b 6f4c            lea.l      data,a1
[00028ff6] 303c 2329                 move.w     #$2329,d0
[00028ffa] 266a 0004                 movea.l    4(a2),a3
[00028ffe] 4e93                      jsr        (a3)
[00029000] 43f9 000b 6f9c            lea.l      raddata,a1
[00029006] 303c 2329                 move.w     #$2329,d0
[0002900a] 204a                      movea.l    a2,a0
[0002900c] 266a 0004                 movea.l    4(a2),a3
[00029010] 4e93                      jsr        (a3)
[00029012] 265f                      movea.l    (a7)+,a3
[00029014] 245f                      movea.l    (a7)+,a2
[00029016] 4e75                      rts

minsize:
[00029018] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0002901c] 2649                      movea.l    a1,a3
[0002901e] 2468 000c                 movea.l    12(a0),a2
[00029022] 200a                      move.l     a2,d0
[00029024] 671c                      beq.s      minsize_1
[00029026] 1212                      move.b     (a2),d1
[00029028] 6718                      beq.s      minsize_1
[0002902a] 204a                      movea.l    a2,a0
[0002902c] 4eb9 0007 69b0            jsr        strlen
[00029032] 2600                      move.l     d0,d3
[00029034] 5643                      addq.w     #3,d3
[00029036] 2079 0010 1f12            movea.l    ACSblk,a0
[0002903c] c7e8 0012                 muls.w     18(a0),d3
[00029040] 600a                      bra.s      minsize_2
minsize_1:
[00029042] 2079 0010 1f12            movea.l    ACSblk,a0
[00029048] 3628 0014                 move.w     20(a0),d3
minsize_2:
[0002904c] 3683                      move.w     d3,(a3)
[0002904e] 2079 0010 1f12            movea.l    ACSblk,a0
[00029054] 226f 0010                 movea.l    16(a7),a1
[00029058] 32a8 0014                 move.w     20(a0),(a1)
[0002905c] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00029060] 4e75                      rts

object_tree:
[00029062] 48e7 003e                 movem.l    a2-a6,-(a7)
[00029066] 594f                      subq.w     #4,a7
[00029068] 2a48                      movea.l    a0,a5
[0002906a] 2849                      movea.l    a1,a4
[0002906c] 41f9 000b 6cd0            lea.l      ED_CHECKBOX,a0
[00029072] 4eb9 0004 9a5c            jsr        Aob_create
[00029078] 2448                      movea.l    a0,a2
[0002907a] 200a                      move.l     a2,d0
[0002907c] 6606                      bne.s      object_tree_1
[0002907e] 91c8                      suba.l     a0,a0
[00029080] 6000 012e                 bra        object_tree_2
object_tree_1:
[00029084] 7008                      moveq.l    #8,d0
[00029086] 224a                      movea.l    a2,a1
[00029088] 2079 0010 1f12            movea.l    ACSblk,a0
[0002908e] 2068 0258                 movea.l    600(a0),a0
[00029092] 4eb9 0002 f23c            jsr        oe_beself
[00029098] 700d                      moveq.l    #13,d0
[0002909a] 224a                      movea.l    a2,a1
[0002909c] 2079 0010 1f12            movea.l    ACSblk,a0
[000290a2] 2068 0258                 movea.l    600(a0),a0
[000290a6] 4eb9 0002 f23c            jsr        oe_beself
[000290ac] 700f                      moveq.l    #15,d0
[000290ae] 224a                      movea.l    a2,a1
[000290b0] 2079 0010 1f12            movea.l    ACSblk,a0
[000290b6] 2068 0258                 movea.l    600(a0),a0
[000290ba] 4eb9 0002 f23c            jsr        oe_beself
[000290c0] 47ea 0030                 lea.l      48(a2),a3
[000290c4] 7016                      moveq.l    #22,d0
[000290c6] c06c 0008                 and.w      8(a4),d0
[000290ca] 816b 0008                 or.w       d0,8(a3)
[000290ce] 703f                      moveq.l    #63,d0
[000290d0] c06c 000a                 and.w      10(a4),d0
[000290d4] 816b 000a                 or.w       d0,10(a3)
[000290d8] 286b 000c                 movea.l    12(a3),a4
[000290dc] 4857                      pea.l      (a7)
[000290de] 43f9 000b 7008            lea.l      $000B7008,a1
[000290e4] 2055                      movea.l    (a5),a0
[000290e6] 4eb9 0007 594a            jsr        sscanf
[000290ec] 584f                      addq.w     #4,a7
[000290ee] 2957 0004                 move.l     (a7),4(a4)
[000290f2] 0c6d 0002 0008            cmpi.w     #$0002,8(a5)
[000290f8] 6610                      bne.s      object_tree_3
[000290fa] 226d 000a                 movea.l    10(a5),a1
[000290fe] 7008                      moveq.l    #8,d0
[00029100] 204a                      movea.l    a2,a0
[00029102] 4eb9 0004 afe0            jsr        Aob_puttext
[00029108] 6020                      bra.s      object_tree_4
object_tree_3:
[0002910a] 43f9 000b 6ff1            lea.l      $000B6FF1,a1
[00029110] 7004                      moveq.l    #4,d0
[00029112] 204b                      movea.l    a3,a0
[00029114] 2c6c 0008                 movea.l    8(a4),a6
[00029118] 4e96                      jsr        (a6)
[0002911a] 43f9 000b 6ff1            lea.l      $000B6FF1,a1
[00029120] 7008                      moveq.l    #8,d0
[00029122] 204a                      movea.l    a2,a0
[00029124] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_4:
[0002912a] 7001                      moveq.l    #1,d0
[0002912c] c097                      and.l      (a7),d0
[0002912e] 6708                      beq.s      object_tree_5
[00029130] 006a 0001 00e2            ori.w      #$0001,226(a2)
[00029136] 6006                      bra.s      object_tree_6
object_tree_5:
[00029138] 026a fffe 00e2            andi.w     #$FFFE,226(a2)
object_tree_6:
[0002913e] 206a 0144                 movea.l    324(a2),a0
[00029142] 2968 000c 0018            move.l     12(a0),24(a4)
[00029148] 206d 0026                 movea.l    38(a5),a0
[0002914c] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00029152] 4a40                      tst.w      d0
[00029154] 6712                      beq.s      object_tree_7
[00029156] 43f9 000b 6ff1            lea.l      $000B6FF1,a1
[0002915c] 700d                      moveq.l    #13,d0
[0002915e] 204a                      movea.l    a2,a0
[00029160] 4eb9 0004 afe0            jsr        Aob_puttext
[00029166] 600e                      bra.s      object_tree_8
object_tree_7:
[00029168] 226d 0026                 movea.l    38(a5),a1
[0002916c] 700d                      moveq.l    #13,d0
[0002916e] 204a                      movea.l    a2,a0
[00029170] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_8:
[00029176] 206a 0174                 movea.l    372(a2),a0
[0002917a] 2968 000c 001c            move.l     12(a0),28(a4)
[00029180] 206d 002a                 movea.l    42(a5),a0
[00029184] 4eb9 0004 3a92            jsr        Ast_isEmpty
[0002918a] 4a40                      tst.w      d0
[0002918c] 6712                      beq.s      object_tree_9
[0002918e] 43f9 000b 6ff1            lea.l      $000B6FF1,a1
[00029194] 700f                      moveq.l    #15,d0
[00029196] 204a                      movea.l    a2,a0
[00029198] 4eb9 0004 afe0            jsr        Aob_puttext
[0002919e] 600e                      bra.s      object_tree_10
object_tree_9:
[000291a0] 226d 002a                 movea.l    42(a5),a1
[000291a4] 700f                      moveq.l    #15,d0
[000291a6] 204a                      movea.l    a2,a0
[000291a8] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_10:
[000291ae] 204a                      movea.l    a2,a0
object_tree_2:
[000291b0] 584f                      addq.w     #4,a7
[000291b2] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[000291b6] 4e75                      rts

test_it:
[000291b8] 2f0a                      move.l     a2,-(a7)
[000291ba] 2f0b                      move.l     a3,-(a7)
[000291bc] 2648                      movea.l    a0,a3
[000291be] 2449                      movea.l    a1,a2
[000291c0] 22bc 0005 93fc            move.l     #A_checkbox,(a1)
[000291c6] 486a 0004                 pea.l      4(a2)
[000291ca] 43f9 000b 7008            lea.l      $000B7008,a1
[000291d0] 2050                      movea.l    (a0),a0
[000291d2] 4eb9 0007 594a            jsr        sscanf
[000291d8] 584f                      addq.w     #4,a7
[000291da] 257c 0005 9318 0008       move.l     #Auo_string,8(a2)
[000291e2] 0c6b 0002 0008            cmpi.w     #$0002,8(a3)
[000291e8] 6608                      bne.s      test_it_1
[000291ea] 256b 000a 000c            move.l     10(a3),12(a2)
[000291f0] 6004                      bra.s      test_it_2
test_it_1:
[000291f2] 42aa 000c                 clr.l      12(a2)
test_it_2:
[000291f6] 7000                      moveq.l    #0,d0
[000291f8] 2540 0014                 move.l     d0,20(a2)
[000291fc] 2540 0010                 move.l     d0,16(a2)
[00029200] 42aa 0018                 clr.l      24(a2)
[00029204] 42aa 001c                 clr.l      28(a2)
[00029208] 265f                      movea.l    (a7)+,a3
[0002920a] 245f                      movea.l    (a7)+,a2
[0002920c] 4e75                      rts

abort:
[0002920e] 2079 0010 1f12            movea.l    ACSblk,a0
[00029214] 2268 0258                 movea.l    600(a0),a1
[00029218] 2069 0014                 movea.l    20(a1),a0
[0002921c] 2068 003c                 movea.l    60(a0),a0
[00029220] 42a8 0018                 clr.l      24(a0)
[00029224] 42a8 001c                 clr.l      28(a0)
[00029228] 2079 000b 6f8c            movea.l    $000B6F8C,a0
[0002922e] 2050                      movea.l    (a0),a0
[00029230] 4e90                      jsr        (a0)
[00029232] 4e75                      rts

ok:
[00029234] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00029238] 4fef ffce                 lea.l      -50(a7),a7
[0002923c] 45f9 0010 1f12            lea.l      ACSblk,a2
[00029242] 2052                      movea.l    (a2),a0
[00029244] 2268 0258                 movea.l    600(a0),a1
[00029248] 2669 0014                 movea.l    20(a1),a3
[0002924c] 2a6b 003c                 movea.l    60(a3),a5
[00029250] 49f9 000f f5e6            lea.l      parm,a4
[00029256] 2f2d 0004                 move.l     4(a5),-(a7)
[0002925a] 43f9 000b 7008            lea.l      $000B7008,a1
[00029260] 204c                      movea.l    a4,a0
[00029262] 4eb9 0007 5680            jsr        sprintf
[00029268] 584f                      addq.w     #4,a7
[0002926a] 4bef 0004                 lea.l      4(a7),a5
[0002926e] 2a8c                      move.l     a4,(a5)
[00029270] 2b7c 000b 6ffd 0004       move.l     #$000B6FFD,4(a5)
[00029278] 43d7                      lea.l      (a7),a1
[0002927a] 7003                      moveq.l    #3,d0
[0002927c] 41eb 00c0                 lea.l      192(a3),a0
[00029280] 4eb9 0005 e010            jsr        Auo_boxed
[00029286] 2057                      movea.l    (a7),a0
[00029288] 1010                      move.b     (a0),d0
[0002928a] 6724                      beq.s      ok_1
[0002928c] 4eb9 0007 69b0            jsr        strlen
[00029292] 5680                      addq.l     #3,d0
[00029294] 2052                      movea.l    (a2),a0
[00029296] 3228 0012                 move.w     18(a0),d1
[0002929a] 48c1                      ext.l      d1
[0002929c] 4eb9 0007 7676            jsr        _ulmul
[000292a2] 2600                      move.l     d0,d3
[000292a4] 3b7c 0002 0008            move.w     #$0002,8(a5)
[000292aa] 2b57 000a                 move.l     (a7),10(a5)
[000292ae] 600e                      bra.s      ok_2
ok_1:
[000292b0] 2052                      movea.l    (a2),a0
[000292b2] 3628 0014                 move.w     20(a0),d3
[000292b6] 426d 0008                 clr.w      8(a5)
[000292ba] 42ad 000a                 clr.l      10(a5)
ok_2:
[000292be] 42ad 000e                 clr.l      14(a5)
[000292c2] 4240                      clr.w      d0
[000292c4] 3b40 001c                 move.w     d0,28(a5)
[000292c8] 3b40 0012                 move.w     d0,18(a5)
[000292cc] 7200                      moveq.l    #0,d1
[000292ce] 2b41 001e                 move.l     d1,30(a5)
[000292d2] 2b41 0014                 move.l     d1,20(a5)
[000292d6] 7000                      moveq.l    #0,d0
[000292d8] 2b40 0022                 move.l     d0,34(a5)
[000292dc] 2b40 0018                 move.l     d0,24(a5)
[000292e0] 43ed 0026                 lea.l      38(a5),a1
[000292e4] 41eb 0138                 lea.l      312(a3),a0
[000292e8] 7003                      moveq.l    #3,d0
[000292ea] 4eb9 0005 e010            jsr        Auo_boxed
[000292f0] 206d 0026                 movea.l    38(a5),a0
[000292f4] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000292fa] 4a40                      tst.w      d0
[000292fc] 6704                      beq.s      ok_3
[000292fe] 42ad 0026                 clr.l      38(a5)
ok_3:
[00029302] 43ed 002a                 lea.l      42(a5),a1
[00029306] 7003                      moveq.l    #3,d0
[00029308] 41eb 0168                 lea.l      360(a3),a0
[0002930c] 4eb9 0005 e010            jsr        Auo_boxed
[00029312] 206d 002a                 movea.l    42(a5),a0
[00029316] 4eb9 0004 3a92            jsr        Ast_isEmpty
[0002931c] 4a40                      tst.w      d0
[0002931e] 6704                      beq.s      ok_4
[00029320] 42ad 002a                 clr.l      42(a5)
ok_4:
[00029324] 2052                      movea.l    (a2),a0
[00029326] 3228 0014                 move.w     20(a0),d1
[0002932a] 3003                      move.w     d3,d0
[0002932c] 204d                      movea.l    a5,a0
[0002932e] 2279 000b 6f8c            movea.l    $000B6F8C,a1
[00029334] 2269 0004                 movea.l    4(a1),a1
[00029338] 4e91                      jsr        (a1)
[0002933a] 6100 fed2                 bsr        abort
[0002933e] 4fef 0032                 lea.l      50(a7),a7
[00029342] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00029346] 4e75                      rts

	.data

BUBBLE_01:
[000b68b0]                           dc.b 'Die énderungen werden Åbernommen und Åberschreiben die alten Einstellungen.',0
BUBBLE_02:
[000b68fc]                           dc.b 'Die énderungen werden verworfen, die alten Einstellungen bleiben erhalten.',0
BUBBLE_03:
[000b6947]                           dc.b 'Hier kann der String, der fÅr BubbleGEM verwendet werden soll, eingegeben werden.',0
BUBBLE_04:
[000b6999]                           dc.b 'Hier kann der String eingegeben werden, der das aufzurufende Context-Popup beschreibt (siehe in der Dokumentation zu Ame_strpopup).',0
BUBBLE_05:
[000b6a1d]                           dc.b 'Hier wird die Beschriftung der Checkbox eingegeben.',0
BUBBLE_06:
[000b6a51]                           dc.b 'Durch diese Checkbox kann die 3D-Darstellung ein- und ausgeschaltet werden. Das Ergebnis wird direkt an der Beispiel-Checkbox oben links dargestellt.',0
TEXT_005:
[000b6ae7]                           dc.b $4f
[000b6ae8]                           dc.w $4b00
TEXT_009:
[000b6aea]                           dc.b 'Abbruch',0
TEXT_02:
[000b6af2]                           dc.b 'Text:',0
TEXT_05:
[000b6af8]                           dc.b 'Sonstiges',0
TEXT_06:
[000b6b02]                           dc.b 'Text',0
TEXT_08:
[000b6b07]                           dc.b '3D-Darstellung (sonst flach)',0
TEXT_09:
[000b6b24]                           dc.b 'BubbleGEM-Text',0
TEXT_16:
[000b6b33]                           dc.b 'Context-Popup',0
help_title:
[000b6b41]                           dc.b 'Der Checkbox-/Radiobutton-Editor',0
title:
[000b6b62]                           dc.b 'CHECKBUTTON -',0
A_3DBUTTON02:
[000b6b70] 0005a4e2                  dc.l A_3Dbutton
[000b6b74]                           dc.w $29f1
[000b6b76]                           dc.w $0178
[000b6b78] 00059318                  dc.l Auo_string
[000b6b7c]                           dc.b $00
[000b6b7d]                           dc.b $00
[000b6b7e]                           dc.b $00
[000b6b7f]                           dc.b $00
[000b6b80]                           dc.b $00
[000b6b81]                           dc.b $00
[000b6b82]                           dc.b $00
[000b6b83]                           dc.b $00
[000b6b84]                           dc.b $00
[000b6b85]                           dc.b $00
[000b6b86]                           dc.b $00
[000b6b87]                           dc.b $00
[000b6b88]                           dc.b $00
[000b6b89]                           dc.b $00
[000b6b8a]                           dc.b $00
[000b6b8b]                           dc.b $00
[000b6b8c]                           dc.b $00
[000b6b8d]                           dc.b $00
[000b6b8e]                           dc.b $00
[000b6b8f]                           dc.b $00
A_3DBUTTON04:
[000b6b90] 0005a4e2                  dc.l A_3Dbutton
[000b6b94]                           dc.w $29c1
[000b6b96]                           dc.w $0178
[000b6b98] 00059318                  dc.l Auo_string
[000b6b9c] 000b6ae7                  dc.l TEXT_005
[000b6ba0]                           dc.b $00
[000b6ba1]                           dc.b $00
[000b6ba2]                           dc.b $00
[000b6ba3]                           dc.b $00
[000b6ba4]                           dc.b $00
[000b6ba5]                           dc.b $00
[000b6ba6]                           dc.b $00
[000b6ba7]                           dc.b $00
[000b6ba8] 000b68b0                  dc.l BUBBLE_01
[000b6bac]                           dc.b $00
[000b6bad]                           dc.b $00
[000b6bae]                           dc.b $00
[000b6baf]                           dc.b $00
A_3DBUTTON05:
[000b6bb0] 0005a4e2                  dc.l A_3Dbutton
[000b6bb4]                           dc.w $21f1
[000b6bb6]                           dc.w $0178
[000b6bb8] 00059318                  dc.l Auo_string
[000b6bbc]                           dc.b $00
[000b6bbd]                           dc.b $00
[000b6bbe]                           dc.b $00
[000b6bbf]                           dc.b $00
[000b6bc0]                           dc.b $00
[000b6bc1]                           dc.b $00
[000b6bc2]                           dc.b $00
[000b6bc3]                           dc.b $00
[000b6bc4]                           dc.b $00
[000b6bc5]                           dc.b $00
[000b6bc6]                           dc.b $00
[000b6bc7]                           dc.b $00
[000b6bc8]                           dc.b $00
[000b6bc9]                           dc.b $00
[000b6bca]                           dc.b $00
[000b6bcb]                           dc.b $00
[000b6bcc]                           dc.b $00
[000b6bcd]                           dc.b $00
[000b6bce]                           dc.b $00
[000b6bcf]                           dc.b $00
A_3DBUTTON06:
[000b6bd0] 0005a4e2                  dc.l A_3Dbutton
[000b6bd4]                           dc.w $29c1
[000b6bd6]                           dc.w $0178
[000b6bd8] 00059318                  dc.l Auo_string
[000b6bdc] 000b6aea                  dc.l TEXT_009
[000b6be0]                           dc.b $00
[000b6be1]                           dc.b $00
[000b6be2]                           dc.b $00
[000b6be3]                           dc.b $00
[000b6be4]                           dc.b $00
[000b6be5]                           dc.b $00
[000b6be6]                           dc.b $00
[000b6be7]                           dc.b $00
[000b6be8] 000b68fc                  dc.l BUBBLE_02
[000b6bec]                           dc.b $00
[000b6bed]                           dc.b $00
[000b6bee]                           dc.b $00
[000b6bef]                           dc.b $00
A_BOXED02:
[000b6bf0] 0005e9d2                  dc.l A_boxed
[000b6bf4]                           dc.w $9000
[000b6bf6]                           dc.w $ff12
[000b6bf8] 0005e010                  dc.l Auo_boxed
[000b6bfc]                           dc.b $00
[000b6bfd]                           dc.b $00
[000b6bfe]                           dc.b $00
[000b6bff]                           dc.b $00
[000b6c00]                           dc.b $00
[000b6c01]                           dc.b $00
[000b6c02]                           dc.b $00
[000b6c03]                           dc.b $00
[000b6c04]                           dc.b $00
[000b6c05]                           dc.b $00
[000b6c06]                           dc.b $00
[000b6c07]                           dc.b $00
[000b6c08] 000b6a1d                  dc.l BUBBLE_05
[000b6c0c]                           dc.b $00
[000b6c0d]                           dc.b $00
[000b6c0e]                           dc.b $00
[000b6c0f]                           dc.b $00
A_BOXED04:
[000b6c10] 0005e9d2                  dc.l A_boxed
[000b6c14]                           dc.w $9038
[000b6c16]                           dc.w $ff12
[000b6c18] 0005e010                  dc.l Auo_boxed
[000b6c1c]                           dc.b $00
[000b6c1d]                           dc.b $00
[000b6c1e]                           dc.b $00
[000b6c1f]                           dc.b $00
[000b6c20]                           dc.b $00
[000b6c21]                           dc.b $00
[000b6c22]                           dc.b $00
[000b6c23]                           dc.b $00
[000b6c24]                           dc.b $00
[000b6c25]                           dc.b $00
[000b6c26]                           dc.b $00
[000b6c27]                           dc.b $00
[000b6c28] 000b6947                  dc.l BUBBLE_03
[000b6c2c]                           dc.b $00
[000b6c2d]                           dc.b $00
[000b6c2e]                           dc.b $00
[000b6c2f]                           dc.b $00
A_BOXED05:
[000b6c30] 0005e9d2                  dc.l A_boxed
[000b6c34]                           dc.w $9038
[000b6c36]                           dc.w $ff12
[000b6c38] 0005e010                  dc.l Auo_boxed
[000b6c3c]                           dc.b $00
[000b6c3d]                           dc.b $00
[000b6c3e]                           dc.b $00
[000b6c3f]                           dc.b $00
[000b6c40]                           dc.b $00
[000b6c41]                           dc.b $00
[000b6c42]                           dc.b $00
[000b6c43]                           dc.b $00
[000b6c44]                           dc.b $00
[000b6c45]                           dc.b $00
[000b6c46]                           dc.b $00
[000b6c47]                           dc.b $00
[000b6c48] 000b6999                  dc.l BUBBLE_04
[000b6c4c]                           dc.b $00
[000b6c4d]                           dc.b $00
[000b6c4e]                           dc.b $00
[000b6c4f]                           dc.b $00
A_CHECKBOX01:
[000b6c50] 000593fc                  dc.l A_checkbox
[000b6c54]                           dc.b $00
[000b6c55]                           dc.b $00
[000b6c56]                           dc.b $00
[000b6c57]                           dc.b $01
[000b6c58] 00059318                  dc.l Auo_string
[000b6c5c] 000b6b07                  dc.l TEXT_08
[000b6c60]                           dc.b $00
[000b6c61]                           dc.b $00
[000b6c62]                           dc.b $00
[000b6c63]                           dc.b $00
[000b6c64]                           dc.b $00
[000b6c65]                           dc.b $00
[000b6c66]                           dc.b $00
[000b6c67]                           dc.b $00
[000b6c68] 000b6a51                  dc.l BUBBLE_06
[000b6c6c]                           dc.b $00
[000b6c6d]                           dc.b $00
[000b6c6e]                           dc.b $00
[000b6c6f]                           dc.b $00
A_CHECKBOX03:
[000b6c70] 000593fc                  dc.l A_checkbox
[000b6c74]                           dc.b $00
[000b6c75]                           dc.b $00
[000b6c76]                           dc.b $00
[000b6c77]                           dc.b $01
[000b6c78] 00059318                  dc.l Auo_string
[000b6c7c] 000b6b02                  dc.l TEXT_06
[000b6c80]                           dc.b $00
[000b6c81]                           dc.b $00
[000b6c82]                           dc.b $00
[000b6c83]                           dc.b $00
[000b6c84]                           dc.b $00
[000b6c85]                           dc.b $00
[000b6c86]                           dc.b $00
[000b6c87]                           dc.b $00
[000b6c88]                           dc.b $00
[000b6c89]                           dc.b $00
[000b6c8a]                           dc.b $00
[000b6c8b]                           dc.b $00
[000b6c8c]                           dc.b $00
[000b6c8d]                           dc.b $00
[000b6c8e]                           dc.b $00
[000b6c8f]                           dc.b $00
A_INNERFRAME02:
[000b6c90] 00059f9c                  dc.l A_innerframe
[000b6c94]                           dc.w $1000
[000b6c96]                           dc.w $8f19
[000b6c98] 00059318                  dc.l Auo_string
[000b6c9c] 000b6af2                  dc.l TEXT_02
[000b6ca0]                           dc.b $00
[000b6ca1]                           dc.b $00
[000b6ca2]                           dc.b $00
[000b6ca3]                           dc.b $00
[000b6ca4]                           dc.b $00
[000b6ca5]                           dc.b $00
[000b6ca6]                           dc.b $00
[000b6ca7]                           dc.b $00
[000b6ca8]                           dc.b $00
[000b6ca9]                           dc.b $00
[000b6caa]                           dc.b $00
[000b6cab]                           dc.b $00
[000b6cac]                           dc.b $00
[000b6cad]                           dc.b $00
[000b6cae]                           dc.b $00
[000b6caf]                           dc.b $00
A_INNERFRAME03:
[000b6cb0] 00059f9c                  dc.l A_innerframe
[000b6cb4]                           dc.w $1800
[000b6cb6]                           dc.w $8f19
[000b6cb8] 00059318                  dc.l Auo_string
[000b6cbc] 000b6af8                  dc.l TEXT_05
[000b6cc0]                           dc.b $00
[000b6cc1]                           dc.b $00
[000b6cc2]                           dc.b $00
[000b6cc3]                           dc.b $00
[000b6cc4]                           dc.b $00
[000b6cc5]                           dc.b $00
[000b6cc6]                           dc.b $00
[000b6cc7]                           dc.b $00
[000b6cc8]                           dc.b $00
[000b6cc9]                           dc.b $00
[000b6cca]                           dc.b $00
[000b6ccb]                           dc.b $00
[000b6ccc]                           dc.b $00
[000b6ccd]                           dc.b $00
[000b6cce]                           dc.b $00
[000b6ccf]                           dc.b $00
ED_CHECKBOX:
[000b6cd0]                           dc.w $ffff
[000b6cd2]                           dc.b $00
[000b6cd3]                           dc.b $01
[000b6cd4]                           dc.b $00
[000b6cd5]                           dc.b $0b
[000b6cd6]                           dc.b $00
[000b6cd7]                           dc.b $18
[000b6cd8]                           dc.b $00
[000b6cd9]                           dc.b $40
[000b6cda]                           dc.b $00
[000b6cdb]                           dc.b $10
[000b6cdc] 000b6bb0                  dc.l A_3DBUTTON05
[000b6ce0]                           dc.b $00
[000b6ce1]                           dc.b $00
[000b6ce2]                           dc.b $00
[000b6ce3]                           dc.b $00
[000b6ce4]                           dc.b $00
[000b6ce5]                           dc.b $28
[000b6ce6]                           dc.b $00
[000b6ce7]                           dc.b $0c
_01_ED_CHECKBOX:
[000b6ce8]                           dc.b $00
[000b6ce9]                           dc.b $03
[000b6cea]                           dc.b $00
[000b6ceb]                           dc.b $02
[000b6cec]                           dc.b $00
[000b6ced]                           dc.b $02
[000b6cee]                           dc.b $00
[000b6cef]                           dc.b $18
[000b6cf0]                           dc.b $00
[000b6cf1]                           dc.b $40
[000b6cf2]                           dc.b $00
[000b6cf3]                           dc.b $00
[000b6cf4] 000b6b70                  dc.l A_3DBUTTON02
[000b6cf8]                           dc.b $00
[000b6cf9]                           dc.b $00
[000b6cfa]                           dc.b $00
[000b6cfb]                           dc.b $00
[000b6cfc]                           dc.b $00
[000b6cfd]                           dc.b $09
[000b6cfe]                           dc.b $00
[000b6cff]                           dc.b $03
_02_ED_CHECKBOX:
[000b6d00]                           dc.b $00
[000b6d01]                           dc.b $01
[000b6d02]                           dc.w $ffff
[000b6d04]                           dc.w $ffff
[000b6d06]                           dc.b $00
[000b6d07]                           dc.b $18
[000b6d08]                           dc.b $00
[000b6d09]                           dc.b $00
[000b6d0a]                           dc.b $00
[000b6d0b]                           dc.b $00
[000b6d0c] 000b6c70                  dc.l A_CHECKBOX03
[000b6d10]                           dc.b $00
[000b6d11]                           dc.b $01
[000b6d12]                           dc.b $00
[000b6d13]                           dc.b $01
[000b6d14]                           dc.b $00
[000b6d15]                           dc.b $07
[000b6d16]                           dc.b $00
[000b6d17]                           dc.b $01
_03_ED_CHECKBOX:
[000b6d18]                           dc.b $00
[000b6d19]                           dc.b $05
[000b6d1a]                           dc.w $ffff
[000b6d1c]                           dc.w $ffff
[000b6d1e]                           dc.b $00
[000b6d1f]                           dc.b $18
[000b6d20]                           dc.w $4007
[000b6d22]                           dc.b $00
[000b6d23]                           dc.b $00
[000b6d24] 000b6b90                  dc.l A_3DBUTTON04
[000b6d28]                           dc.b $00
[000b6d29]                           dc.b $0d
[000b6d2a]                           dc.b $00
[000b6d2b]                           dc.b $01
[000b6d2c]                           dc.b $00
[000b6d2d]                           dc.b $0c
[000b6d2e]                           dc.b $00
[000b6d2f]                           dc.b $02
_03aED_CHECKBOX:
[000b6d30] 00029234                  dc.l ok
[000b6d34]                           dc.b $00
[000b6d35]                           dc.b $00
[000b6d36]                           dc.b $00
[000b6d37]                           dc.b $00
[000b6d38]                           dc.w $8000
[000b6d3a]                           dc.w $884f
[000b6d3c]                           dc.b $00
[000b6d3d]                           dc.b $00
[000b6d3e]                           dc.b $00
[000b6d3f]                           dc.b $00
[000b6d40]                           dc.b $00
[000b6d41]                           dc.b $00
[000b6d42]                           dc.b $00
[000b6d43]                           dc.b $00
[000b6d44]                           dc.b $00
[000b6d45]                           dc.b $00
[000b6d46]                           dc.b $00
[000b6d47]                           dc.b $00
_05_ED_CHECKBOX:
[000b6d48]                           dc.b $00
[000b6d49]                           dc.b $07
[000b6d4a]                           dc.w $ffff
[000b6d4c]                           dc.w $ffff
[000b6d4e]                           dc.b $00
[000b6d4f]                           dc.b $18
[000b6d50]                           dc.w $4005
[000b6d52]                           dc.b $00
[000b6d53]                           dc.b $00
[000b6d54] 000b6bd0                  dc.l A_3DBUTTON06
[000b6d58]                           dc.b $00
[000b6d59]                           dc.b $1b
[000b6d5a]                           dc.b $00
[000b6d5b]                           dc.b $01
[000b6d5c]                           dc.b $00
[000b6d5d]                           dc.b $0c
[000b6d5e]                           dc.b $00
[000b6d5f]                           dc.b $02
_05aED_CHECKBOX:
[000b6d60] 0002920e                  dc.l abort
[000b6d64]                           dc.b $00
[000b6d65]                           dc.b $00
[000b6d66]                           dc.b $00
[000b6d67]                           dc.b $00
[000b6d68]                           dc.w $8000
[000b6d6a]                           dc.w $8841
[000b6d6c]                           dc.b $00
[000b6d6d]                           dc.b $00
[000b6d6e]                           dc.b $00
[000b6d6f]                           dc.b $00
[000b6d70]                           dc.b $00
[000b6d71]                           dc.b $00
[000b6d72]                           dc.b $00
[000b6d73]                           dc.b $00
[000b6d74]                           dc.b $00
[000b6d75]                           dc.b $00
[000b6d76]                           dc.b $00
[000b6d77]                           dc.b $00
_07_ED_CHECKBOX:
[000b6d78]                           dc.b $00
[000b6d79]                           dc.b $09
[000b6d7a]                           dc.b $00
[000b6d7b]                           dc.b $08
[000b6d7c]                           dc.b $00
[000b6d7d]                           dc.b $08
[000b6d7e]                           dc.b $00
[000b6d7f]                           dc.b $18
[000b6d80]                           dc.b $00
[000b6d81]                           dc.b $40
[000b6d82]                           dc.b $00
[000b6d83]                           dc.b $00
[000b6d84] 000b6c90                  dc.l A_INNERFRAME02
[000b6d88]                           dc.b $00
[000b6d89]                           dc.b $01
[000b6d8a]                           dc.b $00
[000b6d8b]                           dc.b $03
[000b6d8c]                           dc.b $00
[000b6d8d]                           dc.b $26
[000b6d8e]                           dc.b $00
[000b6d8f]                           dc.b $03
_08_ED_CHECKBOX:
[000b6d90]                           dc.b $00
[000b6d91]                           dc.b $07
[000b6d92]                           dc.w $ffff
[000b6d94]                           dc.w $ffff
[000b6d96]                           dc.b $00
[000b6d97]                           dc.b $18
[000b6d98]                           dc.b $00
[000b6d99]                           dc.b $08
[000b6d9a]                           dc.b $00
[000b6d9b]                           dc.b $10
[000b6d9c] 000b6bf0                  dc.l A_BOXED02
[000b6da0]                           dc.b $00
[000b6da1]                           dc.b $01
[000b6da2]                           dc.b $00
[000b6da3]                           dc.b $01
[000b6da4]                           dc.b $00
[000b6da5]                           dc.b $24
[000b6da6]                           dc.b $00
[000b6da7]                           dc.b $01
_09_ED_CHECKBOX:
[000b6da8]                           dc.b $00
[000b6da9]                           dc.b $0b
[000b6daa]                           dc.w $ffff
[000b6dac]                           dc.w $ffff
[000b6dae]                           dc.b $00
[000b6daf]                           dc.b $18
[000b6db0]                           dc.b $00
[000b6db1]                           dc.b $41
[000b6db2]                           dc.b $00
[000b6db3]                           dc.b $01
[000b6db4] 000b6c50                  dc.l A_CHECKBOX01
[000b6db8]                           dc.b $00
[000b6db9]                           dc.b $02
[000b6dba]                           dc.b $00
[000b6dbb]                           dc.b $06
[000b6dbc]                           dc.b $00
[000b6dbd]                           dc.b $1f
[000b6dbe]                           dc.b $00
[000b6dbf]                           dc.b $01
_09aED_CHECKBOX:
[000b6dc0] 00028f7c                  dc.l do3d
[000b6dc4]                           dc.b $00
[000b6dc5]                           dc.b $00
[000b6dc6]                           dc.b $00
[000b6dc7]                           dc.b $00
[000b6dc8]                           dc.w $8000
[000b6dca]                           dc.w $8844
[000b6dcc]                           dc.b $00
[000b6dcd]                           dc.b $00
[000b6dce]                           dc.b $00
[000b6dcf]                           dc.b $00
[000b6dd0]                           dc.b $00
[000b6dd1]                           dc.b $00
[000b6dd2]                           dc.b $00
[000b6dd3]                           dc.b $00
[000b6dd4]                           dc.b $00
[000b6dd5]                           dc.b $00
[000b6dd6]                           dc.b $00
[000b6dd7]                           dc.b $00
_11_ED_CHECKBOX:
[000b6dd8]                           dc.b $00
[000b6dd9]                           dc.b $00
[000b6dda]                           dc.b $00
[000b6ddb]                           dc.b $0c
[000b6ddc]                           dc.b $00
[000b6ddd]                           dc.b $0f
[000b6dde]                           dc.b $00
[000b6ddf]                           dc.b $18
[000b6de0]                           dc.b $00
[000b6de1]                           dc.b $40
[000b6de2]                           dc.b $00
[000b6de3]                           dc.b $00
[000b6de4] 000b6cb0                  dc.l A_INNERFRAME03
[000b6de8]                           dc.b $00
[000b6de9]                           dc.b $01
[000b6dea]                           dc.b $00
[000b6deb]                           dc.b $07
[000b6dec]                           dc.b $00
[000b6ded]                           dc.b $26
[000b6dee]                           dc.b $00
[000b6def]                           dc.b $05
_12_ED_CHECKBOX:
[000b6df0]                           dc.b $00
[000b6df1]                           dc.b $0d
[000b6df2]                           dc.w $ffff
[000b6df4]                           dc.w $ffff
[000b6df6]                           dc.b $00
[000b6df7]                           dc.b $1c
[000b6df8]                           dc.b $00
[000b6df9]                           dc.b $00
[000b6dfa]                           dc.b $00
[000b6dfb]                           dc.b $00
[000b6dfc] 000b6b24                  dc.l TEXT_09
[000b6e00]                           dc.b $00
[000b6e01]                           dc.b $01
[000b6e02]                           dc.b $00
[000b6e03]                           dc.b $01
[000b6e04]                           dc.b $00
[000b6e05]                           dc.b $0e
[000b6e06]                           dc.b $00
[000b6e07]                           dc.b $01
_13_ED_CHECKBOX:
[000b6e08]                           dc.b $00
[000b6e09]                           dc.b $0e
[000b6e0a]                           dc.w $ffff
[000b6e0c]                           dc.w $ffff
[000b6e0e]                           dc.b $00
[000b6e0f]                           dc.b $18
[000b6e10]                           dc.b $00
[000b6e11]                           dc.b $08
[000b6e12]                           dc.b $00
[000b6e13]                           dc.b $10
[000b6e14] 000b6c10                  dc.l A_BOXED04
[000b6e18]                           dc.b $00
[000b6e19]                           dc.b $10
[000b6e1a]                           dc.b $00
[000b6e1b]                           dc.b $01
[000b6e1c]                           dc.b $00
[000b6e1d]                           dc.b $15
[000b6e1e]                           dc.b $00
[000b6e1f]                           dc.b $01
_14_ED_CHECKBOX:
[000b6e20]                           dc.b $00
[000b6e21]                           dc.b $0f
[000b6e22]                           dc.w $ffff
[000b6e24]                           dc.w $ffff
[000b6e26]                           dc.b $00
[000b6e27]                           dc.b $1c
[000b6e28]                           dc.b $00
[000b6e29]                           dc.b $00
[000b6e2a]                           dc.b $00
[000b6e2b]                           dc.b $00
[000b6e2c] 000b6b33                  dc.l TEXT_16
[000b6e30]                           dc.b $00
[000b6e31]                           dc.b $01
[000b6e32]                           dc.b $00
[000b6e33]                           dc.b $03
[000b6e34]                           dc.b $00
[000b6e35]                           dc.b $0d
[000b6e36]                           dc.b $00
[000b6e37]                           dc.b $01
_15_ED_CHECKBOX:
[000b6e38]                           dc.b $00
[000b6e39]                           dc.b $0b
[000b6e3a]                           dc.w $ffff
[000b6e3c]                           dc.w $ffff
[000b6e3e]                           dc.b $00
[000b6e3f]                           dc.b $18
[000b6e40]                           dc.b $00
[000b6e41]                           dc.b $28
[000b6e42]                           dc.b $00
[000b6e43]                           dc.b $10
[000b6e44] 000b6c30                  dc.l A_BOXED05
[000b6e48]                           dc.b $00
[000b6e49]                           dc.b $10
[000b6e4a]                           dc.b $00
[000b6e4b]                           dc.b $03
[000b6e4c]                           dc.b $00
[000b6e4d]                           dc.b $15
[000b6e4e]                           dc.b $00
[000b6e4f]                           dc.b $01
aucheck:
[000b6e50] 000593fc                  dc.l A_checkbox
[000b6e54]                           dc.b $00
[000b6e55]                           dc.b $00
[000b6e56]                           dc.b $00
[000b6e57]                           dc.b $01
[000b6e58] 00059318                  dc.l Auo_string
[000b6e5c] 000b6fec                  dc.l $000b6fec ; no symbol found
[000b6e60]                           dc.b $00
[000b6e61]                           dc.b $00
[000b6e62]                           dc.b $00
[000b6e63]                           dc.b $00
[000b6e64]                           dc.b $00
[000b6e65]                           dc.b $00
[000b6e66]                           dc.b $00
[000b6e67]                           dc.b $00
[000b6e68]                           dc.b $00
[000b6e69]                           dc.b $00
[000b6e6a]                           dc.b $00
[000b6e6b]                           dc.b $00
[000b6e6c]                           dc.b $00
[000b6e6d]                           dc.b $00
[000b6e6e]                           dc.b $00
[000b6e6f]                           dc.b $00
auradio:
[000b6e70] 000593fc                  dc.l A_checkbox
[000b6e74]                           dc.b $00
[000b6e75]                           dc.b $00
[000b6e76]                           dc.b $00
[000b6e77]                           dc.b $01
[000b6e78] 00059318                  dc.l Auo_string
[000b6e7c] 000b6ff2                  dc.l $000b6ff2 ; no symbol found
[000b6e80]                           dc.b $00
[000b6e81]                           dc.b $00
[000b6e82]                           dc.b $00
[000b6e83]                           dc.b $00
[000b6e84]                           dc.b $00
[000b6e85]                           dc.b $00
[000b6e86]                           dc.b $00
[000b6e87]                           dc.b $00
[000b6e88]                           dc.b $00
[000b6e89]                           dc.b $00
[000b6e8a]                           dc.b $00
[000b6e8b]                           dc.b $00
[000b6e8c]                           dc.b $00
[000b6e8d]                           dc.b $00
[000b6e8e]                           dc.b $00
[000b6e8f]                           dc.b $00
visual:
[000b6e90]                           dc.w $ffff
[000b6e92]                           dc.w $ffff
[000b6e94]                           dc.w $ffff
[000b6e96]                           dc.b $00
[000b6e97]                           dc.b $18
[000b6e98]                           dc.w $2001
[000b6e9a]                           dc.b $00
[000b6e9b]                           dc.b $10
[000b6e9c] 000b6e50                  dc.l aucheck
[000b6ea0]                           dc.b $00
[000b6ea1]                           dc.b $00
[000b6ea2]                           dc.b $00
[000b6ea3]                           dc.b $00
[000b6ea4]                           dc.b $00
[000b6ea5]                           dc.b $08
[000b6ea6]                           dc.b $00
[000b6ea7]                           dc.b $01
logical:
[000b6ea8]                           dc.w $ffff
[000b6eaa]                           dc.w $ffff
[000b6eac]                           dc.w $ffff
[000b6eae]                           dc.b $00
[000b6eaf]                           dc.b $18
[000b6eb0]                           dc.b $00
[000b6eb1]                           dc.b $01
[000b6eb2]                           dc.b $00
[000b6eb3]                           dc.b $00
[000b6eb4] 000b6e50                  dc.l aucheck
[000b6eb8]                           dc.b $00
[000b6eb9]                           dc.b $00
[000b6eba]                           dc.b $00
[000b6ebb]                           dc.b $00
[000b6ebc]                           dc.b $00
[000b6ebd]                           dc.b $08
[000b6ebe]                           dc.b $00
[000b6ebf]                           dc.b $01
radvisual:
[000b6ec0]                           dc.w $ffff
[000b6ec2]                           dc.w $ffff
[000b6ec4]                           dc.w $ffff
[000b6ec6]                           dc.b $00
[000b6ec7]                           dc.b $18
[000b6ec8]                           dc.w $2011
[000b6eca]                           dc.b $00
[000b6ecb]                           dc.b $10
[000b6ecc] 000b6e70                  dc.l auradio
[000b6ed0]                           dc.b $00
[000b6ed1]                           dc.b $00
[000b6ed2]                           dc.b $00
[000b6ed3]                           dc.b $00
[000b6ed4]                           dc.b $00
[000b6ed5]                           dc.b $08
[000b6ed6]                           dc.b $00
[000b6ed7]                           dc.b $01
radlogical:
[000b6ed8]                           dc.w $ffff
[000b6eda]                           dc.w $ffff
[000b6edc]                           dc.w $ffff
[000b6ede]                           dc.b $00
[000b6edf]                           dc.b $18
[000b6ee0]                           dc.b $00
[000b6ee1]                           dc.b $11
[000b6ee2]                           dc.b $00
[000b6ee3]                           dc.b $00
[000b6ee4] 000b6e70                  dc.l auradio
[000b6ee8]                           dc.b $00
[000b6ee9]                           dc.b $00
[000b6eea]                           dc.b $00
[000b6eeb]                           dc.b $00
[000b6eec]                           dc.b $00
[000b6eed]                           dc.b $08
[000b6eee]                           dc.b $00
[000b6eef]                           dc.b $01
aud:
[000b6ef0] 000b6ff8                  dc.l $000b6ff8 ; no symbol found
[000b6ef4] 000b6ffd                  dc.l $000b6ffd ; no symbol found
[000b6ef8]                           dc.b $00
[000b6ef9]                           dc.b $02
[000b6efa] 000b6fec                  dc.l $000b6fec ; no symbol found
[000b6efe]                           dc.b $00
[000b6eff]                           dc.b $00
[000b6f00]                           dc.b $00
[000b6f01]                           dc.b $00
[000b6f02]                           dc.b $00
[000b6f03]                           dc.b $00
[000b6f04]                           dc.b $00
[000b6f05]                           dc.b $00
[000b6f06]                           dc.b $00
[000b6f07]                           dc.b $00
[000b6f08]                           dc.b $00
[000b6f09]                           dc.b $00
[000b6f0a]                           dc.b $00
[000b6f0b]                           dc.b $00
[000b6f0c]                           dc.b $00
[000b6f0d]                           dc.b $00
[000b6f0e]                           dc.b $00
[000b6f0f]                           dc.b $00
[000b6f10]                           dc.b $00
[000b6f11]                           dc.b $00
[000b6f12]                           dc.b $00
[000b6f13]                           dc.b $00
[000b6f14]                           dc.b $00
[000b6f15]                           dc.b $00
[000b6f16]                           dc.b $00
[000b6f17]                           dc.b $00
[000b6f18]                           dc.b $00
[000b6f19]                           dc.b $00
[000b6f1a]                           dc.b $00
[000b6f1b]                           dc.b $00
[000b6f1c]                           dc.b $00
[000b6f1d]                           dc.b $00
radaud:
[000b6f1e] 000b6ff8                  dc.l $000b6ff8 ; no symbol found
[000b6f22] 000b6ffd                  dc.l $000b6ffd ; no symbol found
[000b6f26]                           dc.b $00
[000b6f27]                           dc.b $02
[000b6f28] 000b6ff2                  dc.l $000b6ff2 ; no symbol found
[000b6f2c]                           dc.b $00
[000b6f2d]                           dc.b $00
[000b6f2e]                           dc.b $00
[000b6f2f]                           dc.b $00
[000b6f30]                           dc.b $00
[000b6f31]                           dc.b $00
[000b6f32]                           dc.b $00
[000b6f33]                           dc.b $00
[000b6f34]                           dc.b $00
[000b6f35]                           dc.b $00
[000b6f36]                           dc.b $00
[000b6f37]                           dc.b $00
[000b6f38]                           dc.b $00
[000b6f39]                           dc.b $00
[000b6f3a]                           dc.b $00
[000b6f3b]                           dc.b $00
[000b6f3c]                           dc.b $00
[000b6f3d]                           dc.b $00
[000b6f3e]                           dc.b $00
[000b6f3f]                           dc.b $00
[000b6f40]                           dc.b $00
[000b6f41]                           dc.b $00
[000b6f42]                           dc.b $00
[000b6f43]                           dc.b $00
[000b6f44]                           dc.b $00
[000b6f45]                           dc.b $00
[000b6f46]                           dc.b $00
[000b6f47]                           dc.b $00
[000b6f48]                           dc.b $00
[000b6f49]                           dc.b $00
[000b6f4a]                           dc.b $00
[000b6f4b]                           dc.b $00
data:
[000b6f4c]                           dc.b 'A_checkbox',0
[000b6f57]                           dc.b $00
[000b6f58]                           dc.b $00
[000b6f59]                           dc.b $00
[000b6f5a]                           dc.b $00
[000b6f5b]                           dc.b $00
[000b6f5c]                           dc.b $00
[000b6f5d]                           dc.b $00
[000b6f5e]                           dc.b $00
[000b6f5f]                           dc.b $00
[000b6f60]                           dc.b $00
[000b6f61]                           dc.b $00
[000b6f62]                           dc.b $00
[000b6f63]                           dc.b $00
[000b6f64]                           dc.b $00
[000b6f65]                           dc.b $00
[000b6f66]                           dc.b $00
[000b6f67]                           dc.b $00
[000b6f68]                           dc.b $00
[000b6f69]                           dc.b $00
[000b6f6a]                           dc.b $00
[000b6f6b]                           dc.b $00
[000b6f6c] 00029062                  dc.l object_tree
[000b6f70] 000291b8                  dc.l test_it
[000b6f74] 00029234                  dc.l ok
[000b6f78] 00049b7c                  dc.l Aob_delete
[000b6f7c] 000b6e90                  dc.l visual
[000b6f80] 000b6ea8                  dc.l logical
[000b6f84] 000b6ef0                  dc.l aud
[000b6f88] 00029018                  dc.l minsize
[000b6f8c]                           dc.b $00
[000b6f8d]                           dc.b $00
[000b6f8e]                           dc.b $00
[000b6f8f]                           dc.b $00
[000b6f90] 000b6b62                  dc.l title
[000b6f94] 000b6b41                  dc.l help_title
[000b6f98]                           dc.b $00
[000b6f99]                           dc.b $00
[000b6f9a]                           dc.b $00
[000b6f9b]                           dc.b $00
raddata:
[000b6f9c]                           dc.b 'A_checkbox',0
[000b6fa7]                           dc.b $00
[000b6fa8]                           dc.b $00
[000b6fa9]                           dc.b $00
[000b6faa]                           dc.b $00
[000b6fab]                           dc.b $00
[000b6fac]                           dc.b $00
[000b6fad]                           dc.b $00
[000b6fae]                           dc.b $00
[000b6faf]                           dc.b $00
[000b6fb0]                           dc.b $00
[000b6fb1]                           dc.b $00
[000b6fb2]                           dc.b $00
[000b6fb3]                           dc.b $00
[000b6fb4]                           dc.b $00
[000b6fb5]                           dc.b $00
[000b6fb6]                           dc.b $00
[000b6fb7]                           dc.b $00
[000b6fb8]                           dc.b $00
[000b6fb9]                           dc.b $00
[000b6fba]                           dc.b $00
[000b6fbb]                           dc.b $00
[000b6fbc] 00029062                  dc.l object_tree
[000b6fc0] 000291b8                  dc.l test_it
[000b6fc4] 00029234                  dc.l ok
[000b6fc8] 00049b7c                  dc.l Aob_delete
[000b6fcc] 000b6ec0                  dc.l radvisual
[000b6fd0] 000b6ed8                  dc.l radlogical
[000b6fd4] 000b6f1e                  dc.l radaud
[000b6fd8] 00029018                  dc.l minsize
[000b6fdc]                           dc.b $00
[000b6fdd]                           dc.b $00
[000b6fde]                           dc.b $00
[000b6fdf]                           dc.b $00
[000b6fe0] 000b6b62                  dc.l title
[000b6fe4] 000b6b41                  dc.l help_title
[000b6fe8]                           dc.b $00
[000b6fe9]                           dc.b $00
[000b6fea]                           dc.b $00
[000b6feb]                           dc.b $00
[000b6fec]                           dc.b 'Check',0
[000b6ff2]                           dc.b 'Radio',0
[000b6ff8]                           dc.b '0x1L',0
[000b6ffd]                           dc.b 'Auo_string',0
[000b7008]                           dc.b '0x%lxL',0
	.even

	.bss

parm: ds.b 32
