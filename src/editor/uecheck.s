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
[00028fae] 6706                      beq.s      $00028FB6
[00028fb0] 0093 0000 0001            ori.l      #$00000001,(a3)
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
[00028ff0] 43f9 000b 6f4c            lea.l      $000B6F4C,a1
[00028ff6] 303c 2329                 move.w     #$2329,d0
[00028ffa] 266a 0004                 movea.l    4(a2),a3
[00028ffe] 4e93                      jsr        (a3)
[00029000] 43f9 000b 6f9c            lea.l      $000B6F9C,a1
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
[00029024] 671c                      beq.s      $00029042
[00029026] 1212                      move.b     (a2),d1
[00029028] 6718                      beq.s      $00029042
[0002902a] 204a                      movea.l    a2,a0
[0002902c] 4eb9 0007 69b0            jsr        $000769B0
[00029032] 2600                      move.l     d0,d3
[00029034] 5643                      addq.w     #3,d3
[00029036] 2079 0010 1f12            movea.l    ACSblk,a0
[0002903c] c7e8 0012                 muls.w     18(a0),d3
[00029040] 600a                      bra.s      $0002904C
[00029042] 2079 0010 1f12            movea.l    ACSblk,a0
[00029048] 3628 0014                 move.w     20(a0),d3
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
[0002906c] 41f9 000b 6cd0            lea.l      $000B6CD0,a0
[00029072] 4eb9 0004 9a5c            jsr        $00049A5C
[00029078] 2448                      movea.l    a0,a2
[0002907a] 200a                      move.l     a2,d0
[0002907c] 6606                      bne.s      $00029084
[0002907e] 91c8                      suba.l     a0,a0
[00029080] 6000 012e                 bra        $000291B0
[00029084] 7008                      moveq.l    #8,d0
[00029086] 224a                      movea.l    a2,a1
[00029088] 2079 0010 1f12            movea.l    ACSblk,a0
[0002908e] 2068 0258                 movea.l    600(a0),a0
[00029092] 4eb9 0002 f23c            jsr        $0002F23C
[00029098] 700d                      moveq.l    #13,d0
[0002909a] 224a                      movea.l    a2,a1
[0002909c] 2079 0010 1f12            movea.l    ACSblk,a0
[000290a2] 2068 0258                 movea.l    600(a0),a0
[000290a6] 4eb9 0002 f23c            jsr        $0002F23C
[000290ac] 700f                      moveq.l    #15,d0
[000290ae] 224a                      movea.l    a2,a1
[000290b0] 2079 0010 1f12            movea.l    ACSblk,a0
[000290b6] 2068 0258                 movea.l    600(a0),a0
[000290ba] 4eb9 0002 f23c            jsr        $0002F23C
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
[000290e6] 4eb9 0007 594a            jsr        $0007594A
[000290ec] 584f                      addq.w     #4,a7
[000290ee] 2957 0004                 move.l     (a7),4(a4)
[000290f2] 0c6d 0002 0008            cmpi.w     #$0002,8(a5)
[000290f8] 6610                      bne.s      $0002910A
[000290fa] 226d 000a                 movea.l    10(a5),a1
[000290fe] 7008                      moveq.l    #8,d0
[00029100] 204a                      movea.l    a2,a0
[00029102] 4eb9 0004 afe0            jsr        $0004AFE0
[00029108] 6020                      bra.s      $0002912A
[0002910a] 43f9 000b 6ff1            lea.l      $000B6FF1,a1
[00029110] 7004                      moveq.l    #4,d0
[00029112] 204b                      movea.l    a3,a0
[00029114] 2c6c 0008                 movea.l    8(a4),a6
[00029118] 4e96                      jsr        (a6)
[0002911a] 43f9 000b 6ff1            lea.l      $000B6FF1,a1
[00029120] 7008                      moveq.l    #8,d0
[00029122] 204a                      movea.l    a2,a0
[00029124] 4eb9 0004 afe0            jsr        $0004AFE0
[0002912a] 7001                      moveq.l    #1,d0
[0002912c] c097                      and.l      (a7),d0
[0002912e] 6708                      beq.s      $00029138
[00029130] 006a 0001 00e2            ori.w      #$0001,226(a2)
[00029136] 6006                      bra.s      $0002913E
[00029138] 026a fffe 00e2            andi.w     #$FFFE,226(a2)
[0002913e] 206a 0144                 movea.l    324(a2),a0
[00029142] 2968 000c 0018            move.l     12(a0),24(a4)
[00029148] 206d 0026                 movea.l    38(a5),a0
[0002914c] 4eb9 0004 3a92            jsr        $00043A92
[00029152] 4a40                      tst.w      d0
[00029154] 6712                      beq.s      $00029168
[00029156] 43f9 000b 6ff1            lea.l      $000B6FF1,a1
[0002915c] 700d                      moveq.l    #13,d0
[0002915e] 204a                      movea.l    a2,a0
[00029160] 4eb9 0004 afe0            jsr        $0004AFE0
[00029166] 600e                      bra.s      $00029176
[00029168] 226d 0026                 movea.l    38(a5),a1
[0002916c] 700d                      moveq.l    #13,d0
[0002916e] 204a                      movea.l    a2,a0
[00029170] 4eb9 0004 afe0            jsr        $0004AFE0
[00029176] 206a 0174                 movea.l    372(a2),a0
[0002917a] 2968 000c 001c            move.l     12(a0),28(a4)
[00029180] 206d 002a                 movea.l    42(a5),a0
[00029184] 4eb9 0004 3a92            jsr        $00043A92
[0002918a] 4a40                      tst.w      d0
[0002918c] 6712                      beq.s      $000291A0
[0002918e] 43f9 000b 6ff1            lea.l      $000B6FF1,a1
[00029194] 700f                      moveq.l    #15,d0
[00029196] 204a                      movea.l    a2,a0
[00029198] 4eb9 0004 afe0            jsr        $0004AFE0
[0002919e] 600e                      bra.s      $000291AE
[000291a0] 226d 002a                 movea.l    42(a5),a1
[000291a4] 700f                      moveq.l    #15,d0
[000291a6] 204a                      movea.l    a2,a0
[000291a8] 4eb9 0004 afe0            jsr        $0004AFE0
[000291ae] 204a                      movea.l    a2,a0
[000291b0] 584f                      addq.w     #4,a7
[000291b2] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[000291b6] 4e75                      rts
test_it:
[000291b8] 2f0a                      move.l     a2,-(a7)
[000291ba] 2f0b                      move.l     a3,-(a7)
[000291bc] 2648                      movea.l    a0,a3
[000291be] 2449                      movea.l    a1,a2
[000291c0] 22bc 0005 93fc            move.l     #$000593FC,(a1)
[000291c6] 486a 0004                 pea.l      4(a2)
[000291ca] 43f9 000b 7008            lea.l      $000B7008,a1
[000291d0] 2050                      movea.l    (a0),a0
[000291d2] 4eb9 0007 594a            jsr        $0007594A
[000291d8] 584f                      addq.w     #4,a7
[000291da] 257c 0005 9318 0008       move.l     #$00059318,8(a2)
[000291e2] 0c6b 0002 0008            cmpi.w     #$0002,8(a3)
[000291e8] 6608                      bne.s      $000291F2
[000291ea] 256b 000a 000c            move.l     10(a3),12(a2)
[000291f0] 6004                      bra.s      $000291F6
[000291f2] 42aa 000c                 clr.l      12(a2)
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
[00029250] 49f9 000f f5e6            lea.l      $000FF5E6,a4
[00029256] 2f2d 0004                 move.l     4(a5),-(a7)
[0002925a] 43f9 000b 7008            lea.l      $000B7008,a1
[00029260] 204c                      movea.l    a4,a0
[00029262] 4eb9 0007 5680            jsr        $00075680
[00029268] 584f                      addq.w     #4,a7
[0002926a] 4bef 0004                 lea.l      4(a7),a5
[0002926e] 2a8c                      move.l     a4,(a5)
[00029270] 2b7c 000b 6ffd 0004       move.l     #$000B6FFD,4(a5)
[00029278] 43d7                      lea.l      (a7),a1
[0002927a] 7003                      moveq.l    #3,d0
[0002927c] 41eb 00c0                 lea.l      192(a3),a0
[00029280] 4eb9 0005 e010            jsr        $0005E010
[00029286] 2057                      movea.l    (a7),a0
[00029288] 1010                      move.b     (a0),d0
[0002928a] 6724                      beq.s      $000292B0
[0002928c] 4eb9 0007 69b0            jsr        $000769B0
[00029292] 5680                      addq.l     #3,d0
[00029294] 2052                      movea.l    (a2),a0
[00029296] 3228 0012                 move.w     18(a0),d1
[0002929a] 48c1                      ext.l      d1
[0002929c] 4eb9 0007 7676            jsr        $00077676
[000292a2] 2600                      move.l     d0,d3
[000292a4] 3b7c 0002 0008            move.w     #$0002,8(a5)
[000292aa] 2b57 000a                 move.l     (a7),10(a5)
[000292ae] 600e                      bra.s      $000292BE
[000292b0] 2052                      movea.l    (a2),a0
[000292b2] 3628 0014                 move.w     20(a0),d3
[000292b6] 426d 0008                 clr.w      8(a5)
[000292ba] 42ad 000a                 clr.l      10(a5)
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
[000292ea] 4eb9 0005 e010            jsr        $0005E010
[000292f0] 206d 0026                 movea.l    38(a5),a0
[000292f4] 4eb9 0004 3a92            jsr        $00043A92
[000292fa] 4a40                      tst.w      d0
[000292fc] 6704                      beq.s      $00029302
[000292fe] 42ad 0026                 clr.l      38(a5)
[00029302] 43ed 002a                 lea.l      42(a5),a1
[00029306] 7003                      moveq.l    #3,d0
[00029308] 41eb 0168                 lea.l      360(a3),a0
[0002930c] 4eb9 0005 e010            jsr        $0005E010
[00029312] 206d 002a                 movea.l    42(a5),a0
[00029316] 4eb9 0004 3a92            jsr        $00043A92
[0002931c] 4a40                      tst.w      d0
[0002931e] 6704                      beq.s      $00029324
[00029320] 42ad 002a                 clr.l      42(a5)
[00029324] 2052                      movea.l    (a2),a0
[00029326] 3228 0014                 move.w     20(a0),d1
[0002932a] 3003                      move.w     d3,d0
[0002932c] 204d                      movea.l    a5,a0
[0002932e] 2279 000b 6f8c            movea.l    $000B6F8C,a1
[00029334] 2269 0004                 movea.l    4(a1),a1
[00029338] 4e91                      jsr        (a1)
[0002933a] 6100 fed2                 bsr        $0002920E
[0002933e] 4fef 0032                 lea.l      50(a7),a7
[00029342] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00029346] 4e75                      rts
