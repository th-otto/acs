Awi_keys:
[0005ef2c] 4eb9 0004 cb48            jsr        $0004CB48
[0005ef32] b07c ffff                 cmp.w      #$FFFF,d0
[0005ef36] 6c04                      bge.s      $0005EF3C
[0005ef38] 72ff                      moveq.l    #-1,d1
[0005ef3a] 6002                      bra.s      $0005EF3E
[0005ef3c] 3200                      move.w     d0,d1
[0005ef3e] 3001                      move.w     d1,d0
[0005ef40] 4e75                      rts
Awi_nokey:
[0005ef42] 2f0a                      move.l     a2,-(a7)
[0005ef44] 2448                      movea.l    a0,a2
[0005ef46] 4a41                      tst.w      d1
[0005ef48] 6a14                      bpl.s      $0005EF5E
[0005ef4a] 1001                      move.b     d1,d0
[0005ef4c] 4880                      ext.w      d0
[0005ef4e] 907c 000e                 sub.w      #$000E,d0
[0005ef52] 6702                      beq.s      $0005EF56
[0005ef54] 6008                      bra.s      $0005EF5E
[0005ef56] 204a                      movea.l    a2,a0
[0005ef58] 4eb9 0004 c8b2            jsr        $0004C8B2
[0005ef5e] 70ff                      moveq.l    #-1,d0
[0005ef60] 245f                      movea.l    (a7)+,a2
[0005ef62] 4e75                      rts
Aob_within:
[0005ef64] b050                      cmp.w      (a0),d0
[0005ef66] 6d1c                      blt.s      $0005EF84
[0005ef68] b268 0002                 cmp.w      2(a0),d1
[0005ef6c] 6d16                      blt.s      $0005EF84
[0005ef6e] 3410                      move.w     (a0),d2
[0005ef70] d468 0004                 add.w      4(a0),d2
[0005ef74] b042                      cmp.w      d2,d0
[0005ef76] 6c0c                      bge.s      $0005EF84
[0005ef78] 3028 0002                 move.w     2(a0),d0
[0005ef7c] d068 0006                 add.w      6(a0),d0
[0005ef80] b240                      cmp.w      d0,d1
[0005ef82] 6d04                      blt.s      $0005EF88
[0005ef84] 4240                      clr.w      d0
[0005ef86] 4e75                      rts
[0005ef88] 7001                      moveq.l    #1,d0
[0005ef8a] 4e75                      rts
alert_str:
[0005ef8c] 48e7 0038                 movem.l    a2-a4,-(a7)
[0005ef90] 4fef ff00                 lea.l      -256(a7),a7
[0005ef94] 2648                      movea.l    a0,a3
[0005ef96] 2849                      movea.l    a1,a4
[0005ef98] 45d7                      lea.l      (a7),a2
[0005ef9a] 6014                      bra.s      $0005EFB0
[0005ef9c] 0c13 0025                 cmpi.b     #$25,(a3)
[0005efa0] 660c                      bne.s      $0005EFAE
[0005efa2] 0c2b 0073 0001            cmpi.b     #$73,1(a3)
[0005efa8] 6604                      bne.s      $0005EFAE
[0005efaa] 544b                      addq.w     #2,a3
[0005efac] 6006                      bra.s      $0005EFB4
[0005efae] 14db                      move.b     (a3)+,(a2)+
[0005efb0] 1013                      move.b     (a3),d0
[0005efb2] 66e8                      bne.s      $0005EF9C
[0005efb4] 4212                      clr.b      (a2)
[0005efb6] 701e                      moveq.l    #30,d0
[0005efb8] 224c                      movea.l    a4,a1
[0005efba] 204a                      movea.l    a2,a0
[0005efbc] 4eb9 0007 69da            jsr        $000769DA
[0005efc2] 224b                      movea.l    a3,a1
[0005efc4] 204a                      movea.l    a2,a0
[0005efc6] 4eb9 0007 6886            jsr        $00076886
[0005efcc] 41d7                      lea.l      (a7),a0
[0005efce] 7001                      moveq.l    #1,d0
[0005efd0] 4eb9 0005 17fe            jsr        $000517FE
[0005efd6] 4fef 0100                 lea.l      256(a7),a7
[0005efda] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0005efde] 4e75                      rts
dia_obchange:
[0005efe0] 48e7 1834                 movem.l    d3-d4/a2-a3/a5,-(a7)
[0005efe4] 514f                      subq.w     #8,a7
[0005efe6] 2a48                      movea.l    a0,a5
[0005efe8] 3600                      move.w     d0,d3
[0005efea] 3801                      move.w     d1,d4
[0005efec] 2279 0010 1f12            movea.l    ACSblk,a1
[0005eff2] 2469 025c                 movea.l    604(a1),a2
[0005eff6] 48c0                      ext.l      d0
[0005eff8] 2400                      move.l     d0,d2
[0005effa] d482                      add.l      d2,d2
[0005effc] d480                      add.l      d0,d2
[0005effe] e78a                      lsl.l      #3,d2
[0005f000] 47f2 2800                 lea.l      0(a2,d2.l),a3
[0005f004] 41d7                      lea.l      (a7),a0
[0005f006] 224a                      movea.l    a2,a1
[0005f008] 3003                      move.w     d3,d0
[0005f00a] 4eb9 0004 a3be            jsr        $0004A3BE
[0005f010] 0c2b 0021 0007            cmpi.b     #$21,7(a3)
[0005f016] 660c                      bne.s      $0005F024
[0005f018] 3003                      move.w     d3,d0
[0005f01a] 204d                      movea.l    a5,a0
[0005f01c] 4eb9 0004 b846            jsr        $0004B846
[0005f022] 605e                      bra.s      $0005F082
[0005f024] b87c ffff                 cmp.w      #$FFFF,d4
[0005f028] 6706                      beq.s      $0005F030
[0005f02a] b86b 000a                 cmp.w      10(a3),d4
[0005f02e] 6626                      bne.s      $0005F056
[0005f030] 3f2f 0006                 move.w     6(a7),-(a7)
[0005f034] 3f2f 0006                 move.w     6(a7),-(a7)
[0005f038] 3f2f 0006                 move.w     6(a7),-(a7)
[0005f03c] 2279 000d 99d6            movea.l    $000D99D6,a1
[0005f042] 342f 0006                 move.w     6(a7),d2
[0005f046] 7206                      moveq.l    #6,d1
[0005f048] 3003                      move.w     d3,d0
[0005f04a] 204a                      movea.l    a2,a0
[0005f04c] 4eb9 0006 b93c            jsr        $0006B93C
[0005f052] 5c4f                      addq.w     #6,a7
[0005f054] 602c                      bra.s      $0005F082
[0005f056] 7001                      moveq.l    #1,d0
[0005f058] 3f00                      move.w     d0,-(a7)
[0005f05a] 3f04                      move.w     d4,-(a7)
[0005f05c] 3f2f 000a                 move.w     10(a7),-(a7)
[0005f060] 3f2f 000a                 move.w     10(a7),-(a7)
[0005f064] 3f2f 000a                 move.w     10(a7),-(a7)
[0005f068] 2279 000d 99d6            movea.l    $000D99D6,a1
[0005f06e] 342f 000a                 move.w     10(a7),d2
[0005f072] 4241                      clr.w      d1
[0005f074] 204a                      movea.l    a2,a0
[0005f076] 3003                      move.w     d3,d0
[0005f078] 4eb9 0006 bc5c            jsr        $0006BC5C
[0005f07e] 4fef 000a                 lea.l      10(a7),a7
[0005f082] 504f                      addq.w     #8,a7
[0005f084] 4cdf 2c18                 movem.l    (a7)+,d3-d4/a2-a3/a5
[0005f088] 4e75                      rts
dia_redraw:
[0005f08a] 2f0a                      move.l     a2,-(a7)
[0005f08c] 2449                      movea.l    a1,a2
[0005f08e] 3f2a 0006                 move.w     6(a2),-(a7)
[0005f092] 3f2a 0004                 move.w     4(a2),-(a7)
[0005f096] 3f2a 0002                 move.w     2(a2),-(a7)
[0005f09a] 3411                      move.w     (a1),d2
[0005f09c] 7206                      moveq.l    #6,d1
[0005f09e] 4240                      clr.w      d0
[0005f0a0] 2079 0010 1f12            movea.l    ACSblk,a0
[0005f0a6] 2068 025c                 movea.l    604(a0),a0
[0005f0aa] 2279 000d 99d6            movea.l    $000D99D6,a1
[0005f0b0] 4eb9 0006 b93c            jsr        $0006B93C
[0005f0b6] 5c4f                      addq.w     #6,a7
[0005f0b8] 245f                      movea.l    (a7)+,a2
[0005f0ba] 4e75                      rts
Aform_do:
[0005f0bc] 48e7 1c3e                 movem.l    d3-d5/a2-a6,-(a7)
[0005f0c0] 4fef fff6                 lea.l      -10(a7),a7
[0005f0c4] 2648                      movea.l    a0,a3
[0005f0c6] 2a49                      movea.l    a1,a5
[0005f0c8] 426f 0006                 clr.w      6(a7)
[0005f0cc] 49f9 0010 1f12            lea.l      ACSblk,a4
[0005f0d2] 2054                      movea.l    (a4),a0
[0005f0d4] 214b 025c                 move.l     a3,604(a0)
[0005f0d8] 45ef 0008                 lea.l      8(a7),a2
[0005f0dc] 3015                      move.w     (a5),d0
[0005f0de] 6e10                      bgt.s      $0005F0F0
[0005f0e0] 7208                      moveq.l    #8,d1
[0005f0e2] 204b                      movea.l    a3,a0
[0005f0e4] 4240                      clr.w      d0
[0005f0e6] 4eb9 0004 aeca            jsr        $0004AECA
[0005f0ec] 3480                      move.w     d0,(a2)
[0005f0ee] 6002                      bra.s      $0005F0F2
[0005f0f0] 3495                      move.w     (a5),(a2)
[0005f0f2] 4255                      clr.w      (a5)
[0005f0f4] 3012                      move.w     (a2),d0
[0005f0f6] 6e02                      bgt.s      $0005F0FA
[0005f0f8] 4252                      clr.w      (a2)
[0005f0fa] 7601                      moveq.l    #1,d3
[0005f0fc] 6000 03a8                 bra        $0005F4A6
[0005f100] 3012                      move.w     (a2),d0
[0005f102] 6736                      beq.s      $0005F13A
[0005f104] 3215                      move.w     (a5),d1
[0005f106] b240                      cmp.w      d0,d1
[0005f108] 6730                      beq.s      $0005F13A
[0005f10a] 3a80                      move.w     d0,(a5)
[0005f10c] 4252                      clr.w      (a2)
[0005f10e] 7208                      moveq.l    #8,d1
[0005f110] 48c0                      ext.l      d0
[0005f112] 2400                      move.l     d0,d2
[0005f114] d482                      add.l      d2,d2
[0005f116] d480                      add.l      d0,d2
[0005f118] e78a                      lsl.l      #3,d2
[0005f11a] c273 2808                 and.w      8(a3,d2.l),d1
[0005f11e] 671a                      beq.s      $0005F13A
[0005f120] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0005f126] 43ef 0008                 lea.l      8(a7),a1
[0005f12a] 3015                      move.w     (a5),d0
[0005f12c] 204b                      movea.l    a3,a0
[0005f12e] 4241                      clr.w      d1
[0005f130] 7401                      moveq.l    #1,d2
[0005f132] 4eb9 0006 bb32            jsr        $0006BB32
[0005f138] 584f                      addq.w     #4,a7
[0005f13a] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0005f140] 2054                      movea.l    (a4),a0
[0005f142] 4868 02cc                 pea.l      716(a0)
[0005f146] 4868 02ce                 pea.l      718(a0)
[0005f14a] 4868 0266                 pea.l      614(a0)
[0005f14e] 4868 02ca                 pea.l      714(a0)
[0005f152] 4868 0264                 pea.l      612(a0)
[0005f156] 42a7                      clr.l      -(a7)
[0005f158] 4267                      clr.w      -(a7)
[0005f15a] 4267                      clr.w      -(a7)
[0005f15c] 4267                      clr.w      -(a7)
[0005f15e] 4267                      clr.w      -(a7)
[0005f160] 4267                      clr.w      -(a7)
[0005f162] 4267                      clr.w      -(a7)
[0005f164] 4267                      clr.w      -(a7)
[0005f166] 4267                      clr.w      -(a7)
[0005f168] 4267                      clr.w      -(a7)
[0005f16a] 4267                      clr.w      -(a7)
[0005f16c] 3f28 02c8                 move.w     712(a0),-(a7)
[0005f170] 2248                      movea.l    a0,a1
[0005f172] 43e9 0262                 lea.l      610(a1),a1
[0005f176] 3428 02c6                 move.w     710(a0),d2
[0005f17a] 3228 02d0                 move.w     720(a0),d1
[0005f17e] 7003                      moveq.l    #3,d0
[0005f180] 91c8                      suba.l     a0,a0
[0005f182] 4eb9 0006 af70            jsr        $0006AF70
[0005f188] 4fef 0032                 lea.l      50(a7),a7
[0005f18c] 3800                      move.w     d0,d4
[0005f18e] 2054                      movea.l    (a4),a0
[0005f190] 3228 0266                 move.w     614(a0),d1
[0005f194] 3028 02ce                 move.w     718(a0),d0
[0005f198] 4eb9 0004 1e3e            jsr        $00041E3E
[0005f19e] 2054                      movea.l    (a4),a0
[0005f1a0] 3140 02ce                 move.w     d0,718(a0)
[0005f1a4] 7201                      moveq.l    #1,d1
[0005f1a6] c244                      and.w      d4,d1
[0005f1a8] 6700 01f8                 beq        $0005F3A2
[0005f1ac] 2254                      movea.l    (a4),a1
[0005f1ae] 43e9 02ce                 lea.l      718(a1),a1
[0005f1b2] 2054                      movea.l    (a4),a0
[0005f1b4] 41e8 0266                 lea.l      614(a0),a0
[0005f1b8] 2c54                      movea.l    (a4),a6
[0005f1ba] 2c6e 02b6                 movea.l    694(a6),a6
[0005f1be] 4e96                      jsr        (a6)
[0005f1c0] 2254                      movea.l    (a4),a1
[0005f1c2] 43e9 02ce                 lea.l      718(a1),a1
[0005f1c6] 2054                      movea.l    (a4),a0
[0005f1c8] 41e8 0266                 lea.l      614(a0),a0
[0005f1cc] 2c54                      movea.l    (a4),a6
[0005f1ce] 2c6e 02c2                 movea.l    706(a6),a6
[0005f1d2] 4e96                      jsr        (a6)
[0005f1d4] 2054                      movea.l    (a4),a0
[0005f1d6] 3028 02ce                 move.w     718(a0),d0
[0005f1da] 6700 01c6                 beq        $0005F3A2
[0005f1de] 4244                      clr.w      d4
[0005f1e0] 3200                      move.w     d0,d1
[0005f1e2] 3028 0266                 move.w     614(a0),d0
[0005f1e6] 204b                      movea.l    a3,a0
[0005f1e8] 4eb9 0004 adcc            jsr        $0004ADCC
[0005f1ee] 4a40                      tst.w      d0
[0005f1f0] 6b1c                      bmi.s      $0005F20E
[0005f1f2] 3480                      move.w     d0,(a2)
[0005f1f4] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0005f1fa] 224a                      movea.l    a2,a1
[0005f1fc] 7201                      moveq.l    #1,d1
[0005f1fe] 204b                      movea.l    a3,a0
[0005f200] 4eb9 0006 c06e            jsr        $0006C06E
[0005f206] 584f                      addq.w     #4,a7
[0005f208] 3600                      move.w     d0,d3
[0005f20a] 6000 0196                 bra        $0005F3A2
[0005f20e] 2054                      movea.l    (a4),a0
[0005f210] 3028 02ce                 move.w     718(a0),d0
[0005f214] c07c 0400                 and.w      #$0400,d0
[0005f218] 6726                      beq.s      $0005F240
[0005f21a] 3228 02ce                 move.w     718(a0),d1
[0005f21e] c27c 1f00                 and.w      #$1F00,d1
[0005f222] b041                      cmp.w      d1,d0
[0005f224] 661a                      bne.s      $0005F240
[0005f226] 0c28 0009 02cf            cmpi.b     #$09,719(a0)
[0005f22c] 6612                      bne.s      $0005F240
[0005f22e] 224b                      movea.l    a3,a1
[0005f230] 2068 0258                 movea.l    600(a0),a0
[0005f234] 4eb9 0004 c3a6            jsr        $0004C3A6
[0005f23a] 4a40                      tst.w      d0
[0005f23c] 6600 0164                 bne        $0005F3A2
[0005f240] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0005f246] 486f 000a                 pea.l      10(a7)
[0005f24a] 224a                      movea.l    a2,a1
[0005f24c] 2f09                      move.l     a1,-(a7)
[0005f24e] 2054                      movea.l    (a4),a0
[0005f250] 3028 02ce                 move.w     718(a0),d0
[0005f254] 4eb9 0004 1ec2            jsr        $00041EC2
[0005f25a] 3400                      move.w     d0,d2
[0005f25c] 3215                      move.w     (a5),d1
[0005f25e] 3015                      move.w     (a5),d0
[0005f260] 204b                      movea.l    a3,a0
[0005f262] 225f                      movea.l    (a7)+,a1
[0005f264] 4eb9 0006 bfda            jsr        $0006BFDA
[0005f26a] 504f                      addq.w     #8,a7
[0005f26c] 3600                      move.w     d0,d3
[0005f26e] 7220                      moveq.l    #32,d1
[0005f270] 3015                      move.w     (a5),d0
[0005f272] 48c0                      ext.l      d0
[0005f274] 2400                      move.l     d0,d2
[0005f276] d482                      add.l      d2,d2
[0005f278] d480                      add.l      d0,d2
[0005f27a] e78a                      lsl.l      #3,d2
[0005f27c] c273 2808                 and.w      8(a3,d2.l),d1
[0005f280] 6708                      beq.s      $0005F28A
[0005f282] 3052                      movea.w    (a2),a0
[0005f284] b0d5                      cmpa.w     (a5),a0
[0005f286] 6f02                      ble.s      $0005F28A
[0005f288] 3495                      move.w     (a5),(a2)
[0005f28a] 302f 0006                 move.w     6(a7),d0
[0005f28e] 6700 0112                 beq        $0005F3A2
[0005f292] 7208                      moveq.l    #8,d1
[0005f294] 3015                      move.w     (a5),d0
[0005f296] 48c0                      ext.l      d0
[0005f298] 2400                      move.l     d0,d2
[0005f29a] d482                      add.l      d2,d2
[0005f29c] d480                      add.l      d0,d2
[0005f29e] e78a                      lsl.l      #3,d2
[0005f2a0] c273 2808                 and.w      8(a3,d2.l),d1
[0005f2a4] 6700 00fc                 beq        $0005F3A2
[0005f2a8] 2054                      movea.l    (a4),a0
[0005f2aa] 1228 02cf                 move.b     719(a0),d1
[0005f2ae] 4881                      ext.w      d1
[0005f2b0] 4a41                      tst.w      d1
[0005f2b2] 6700 00ee                 beq        $0005F3A2
[0005f2b6] 5741                      subq.w     #3,d1
[0005f2b8] 6768                      beq.s      $0005F322
[0005f2ba] 5341                      subq.w     #1,d1
[0005f2bc] 6704                      beq.s      $0005F2C2
[0005f2be] 6000 00a4                 bra        $0005F364
[0005f2c2] 2054                      movea.l    (a4),a0
[0005f2c4] 3028 02ce                 move.w     718(a0),d0
[0005f2c8] c07c 8300                 and.w      #$8300,d0
[0005f2cc] 6754                      beq.s      $0005F322
[0005f2ce] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0005f2d4] 7403                      moveq.l    #3,d2
[0005f2d6] 43ef 0008                 lea.l      8(a7),a1
[0005f2da] 4241                      clr.w      d1
[0005f2dc] 3015                      move.w     (a5),d0
[0005f2de] 204b                      movea.l    a3,a0
[0005f2e0] 4eb9 0006 bb32            jsr        $0006BB32
[0005f2e6] 584f                      addq.w     #4,a7
[0005f2e8] 3215                      move.w     (a5),d1
[0005f2ea] 48c1                      ext.l      d1
[0005f2ec] 2001                      move.l     d1,d0
[0005f2ee] d080                      add.l      d0,d0
[0005f2f0] d081                      add.l      d1,d0
[0005f2f2] e788                      lsl.l      #3,d0
[0005f2f4] 2073 080c                 movea.l    12(a3,d0.l),a0
[0005f2f8] 2e90                      move.l     (a0),(a7)
[0005f2fa] 2257                      movea.l    (a7),a1
[0005f2fc] 1a11                      move.b     (a1),d5
[0005f2fe] 4211                      clr.b      (a1)
[0005f300] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0005f306] 7401                      moveq.l    #1,d2
[0005f308] 43ef 0008                 lea.l      8(a7),a1
[0005f30c] 4241                      clr.w      d1
[0005f30e] 3015                      move.w     (a5),d0
[0005f310] 204b                      movea.l    a3,a0
[0005f312] 4eb9 0006 bb32            jsr        $0006BB32
[0005f318] 584f                      addq.w     #4,a7
[0005f31a] 2057                      movea.l    (a7),a0
[0005f31c] 1085                      move.b     d5,(a0)
[0005f31e] 6000 0082                 bra        $0005F3A2
[0005f322] 2054                      movea.l    (a4),a0
[0005f324] 3028 02ce                 move.w     718(a0),d0
[0005f328] c07c 8300                 and.w      #$8300,d0
[0005f32c] 6736                      beq.s      $0005F364
[0005f32e] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0005f334] 7403                      moveq.l    #3,d2
[0005f336] 43ef 0008                 lea.l      8(a7),a1
[0005f33a] 4241                      clr.w      d1
[0005f33c] 3015                      move.w     (a5),d0
[0005f33e] 204b                      movea.l    a3,a0
[0005f340] 4eb9 0006 bb32            jsr        $0006BB32
[0005f346] 584f                      addq.w     #4,a7
[0005f348] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0005f34e] 7401                      moveq.l    #1,d2
[0005f350] 43ef 0008                 lea.l      8(a7),a1
[0005f354] 4241                      clr.w      d1
[0005f356] 3015                      move.w     (a5),d0
[0005f358] 204b                      movea.l    a3,a0
[0005f35a] 4eb9 0006 bb32            jsr        $0006BB32
[0005f360] 584f                      addq.w     #4,a7
[0005f362] 603e                      bra.s      $0005F3A2
[0005f364] 7008                      moveq.l    #8,d0
[0005f366] 3415                      move.w     (a5),d2
[0005f368] 48c2                      ext.l      d2
[0005f36a] 2202                      move.l     d2,d1
[0005f36c] d281                      add.l      d1,d1
[0005f36e] d282                      add.l      d2,d1
[0005f370] e789                      lsl.l      #3,d1
[0005f372] c073 1808                 and.w      8(a3,d1.l),d0
[0005f376] 672a                      beq.s      $0005F3A2
[0005f378] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0005f37e] 43ef 0008                 lea.l      8(a7),a1
[0005f382] 2f09                      move.l     a1,-(a7)
[0005f384] 2054                      movea.l    (a4),a0
[0005f386] 3028 02ce                 move.w     718(a0),d0
[0005f38a] 4eb9 0004 1ec2            jsr        $00041EC2
[0005f390] 3200                      move.w     d0,d1
[0005f392] 3015                      move.w     (a5),d0
[0005f394] 204b                      movea.l    a3,a0
[0005f396] 225f                      movea.l    (a7)+,a1
[0005f398] 7402                      moveq.l    #2,d2
[0005f39a] 4eb9 0006 bb32            jsr        $0006BB32
[0005f3a0] 584f                      addq.w     #4,a7
[0005f3a2] 7002                      moveq.l    #2,d0
[0005f3a4] c044                      and.w      d4,d0
[0005f3a6] 6700 00c4                 beq        $0005F46C
[0005f3aa] 2254                      movea.l    (a4),a1
[0005f3ac] 43e9 02cc                 lea.l      716(a1),a1
[0005f3b0] 2054                      movea.l    (a4),a0
[0005f3b2] 41e8 02ca                 lea.l      714(a0),a0
[0005f3b6] 2c54                      movea.l    (a4),a6
[0005f3b8] 2c6e 02ba                 movea.l    698(a6),a6
[0005f3bc] 4e96                      jsr        (a6)
[0005f3be] 2054                      movea.l    (a4),a0
[0005f3c0] 3f28 0264                 move.w     612(a0),-(a7)
[0005f3c4] 2279 000d 99d6            movea.l    $000D99D6,a1
[0005f3ca] 3428 0262                 move.w     610(a0),d2
[0005f3ce] 7206                      moveq.l    #6,d1
[0005f3d0] 4240                      clr.w      d0
[0005f3d2] 204b                      movea.l    a3,a0
[0005f3d4] 4eb9 0006 b9c6            jsr        $0006B9C6
[0005f3da] 544f                      addq.w     #2,a7
[0005f3dc] 3480                      move.w     d0,(a2)
[0005f3de] 5240                      addq.w     #1,d0
[0005f3e0] 665a                      bne.s      $0005F43C
[0005f3e2] 4252                      clr.w      (a2)
[0005f3e4] 2054                      movea.l    (a4),a0
[0005f3e6] 0c68 0002 02cc            cmpi.w     #$0002,716(a0)
[0005f3ec] 6606                      bne.s      $0005F3F4
[0005f3ee] 4243                      clr.w      d3
[0005f3f0] 6000 007a                 bra.w      $0005F46C
[0005f3f4] 3a2b 000a                 move.w     10(a3),d5
[0005f3f8] 7004                      moveq.l    #4,d0
[0005f3fa] 2054                      movea.l    (a4),a0
[0005f3fc] 2268 023c                 movea.l    572(a0),a1
[0005f400] c069 000e                 and.w      14(a1),d0
[0005f404] 670c                      beq.s      $0005F412
[0005f406] 7207                      moveq.l    #7,d1
[0005f408] 7002                      moveq.l    #2,d0
[0005f40a] 4eb9 0007 284a            jsr        $0007284A
[0005f410] 605a                      bra.s      $0005F46C
[0005f412] 2279 000d 99d6            movea.l    $000D99D6,a1
[0005f418] 7401                      moveq.l    #1,d2
[0005f41a] 8445                      or.w       d5,d2
[0005f41c] 3205                      move.w     d5,d1
[0005f41e] 4240                      clr.w      d0
[0005f420] 204b                      movea.l    a3,a0
[0005f422] 4eb9 0006 c67c            jsr        $0006C67C
[0005f428] 4a40                      tst.w      d0
[0005f42a] 6640                      bne.s      $0005F46C
[0005f42c] 3205                      move.w     d5,d1
[0005f42e] 4240                      clr.w      d0
[0005f430] 2054                      movea.l    (a4),a0
[0005f432] 2068 0258                 movea.l    600(a0),a0
[0005f436] 6100 fba8                 bsr        $0005EFE0
[0005f43a] 6030                      bra.s      $0005F46C
[0005f43c] 7008                      moveq.l    #8,d0
[0005f43e] 3412                      move.w     (a2),d2
[0005f440] 48c2                      ext.l      d2
[0005f442] 2202                      move.l     d2,d1
[0005f444] d281                      add.l      d1,d1
[0005f446] d282                      add.l      d2,d1
[0005f448] e789                      lsl.l      #3,d1
[0005f44a] c073 180a                 and.w      10(a3,d1.l),d0
[0005f44e] 661a                      bne.s      $0005F46A
[0005f450] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0005f456] 224a                      movea.l    a2,a1
[0005f458] 204b                      movea.l    a3,a0
[0005f45a] 3012                      move.w     (a2),d0
[0005f45c] 7201                      moveq.l    #1,d1
[0005f45e] 4eb9 0006 c06e            jsr        $0006C06E
[0005f464] 584f                      addq.w     #4,a7
[0005f466] 3600                      move.w     d0,d3
[0005f468] 6002                      bra.s      $0005F46C
[0005f46a] 4252                      clr.w      (a2)
[0005f46c] 4a43                      tst.w      d3
[0005f46e] 6708                      beq.s      $0005F478
[0005f470] 3012                      move.w     (a2),d0
[0005f472] 6732                      beq.s      $0005F4A6
[0005f474] b055                      cmp.w      (a5),d0
[0005f476] 672e                      beq.s      $0005F4A6
[0005f478] 7008                      moveq.l    #8,d0
[0005f47a] 3415                      move.w     (a5),d2
[0005f47c] 48c2                      ext.l      d2
[0005f47e] 2202                      move.l     d2,d1
[0005f480] d281                      add.l      d1,d1
[0005f482] d282                      add.l      d2,d1
[0005f484] e789                      lsl.l      #3,d1
[0005f486] c073 1808                 and.w      8(a3,d1.l),d0
[0005f48a] 671a                      beq.s      $0005F4A6
[0005f48c] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0005f492] 43ef 0008                 lea.l      8(a7),a1
[0005f496] 3015                      move.w     (a5),d0
[0005f498] 204b                      movea.l    a3,a0
[0005f49a] 4241                      clr.w      d1
[0005f49c] 7403                      moveq.l    #3,d2
[0005f49e] 4eb9 0006 bb32            jsr        $0006BB32
[0005f4a4] 584f                      addq.w     #4,a7
[0005f4a6] 4a43                      tst.w      d3
[0005f4a8] 6600 fc56                 bne        $0005F100
[0005f4ac] 2054                      movea.l    (a4),a0
[0005f4ae] 0c68 0002 02cc            cmpi.w     #$0002,716(a0)
[0005f4b4] 6614                      bne.s      $0005F4CA
[0005f4b6] 3212                      move.w     (a2),d1
[0005f4b8] 48c1                      ext.l      d1
[0005f4ba] 2001                      move.l     d1,d0
[0005f4bc] d080                      add.l      d0,d0
[0005f4be] d081                      add.l      d1,d0
[0005f4c0] e788                      lsl.l      #3,d0
[0005f4c2] 0073 4000 080a            ori.w      #$4000,10(a3,d0.l)
[0005f4c8] 6012                      bra.s      $0005F4DC
[0005f4ca] 3212                      move.w     (a2),d1
[0005f4cc] 48c1                      ext.l      d1
[0005f4ce] 2001                      move.l     d1,d0
[0005f4d0] d080                      add.l      d0,d0
[0005f4d2] d081                      add.l      d1,d0
[0005f4d4] e788                      lsl.l      #3,d0
[0005f4d6] 0273 bfff 080a            andi.w     #$BFFF,10(a3,d0.l)
[0005f4dc] 3012                      move.w     (a2),d0
[0005f4de] 4fef 000a                 lea.l      10(a7),a7
[0005f4e2] 4cdf 7c38                 movem.l    (a7)+,d3-d5/a2-a6
[0005f4e6] 4e75                      rts
Act_save:
[0005f4e8] 2f0a                      move.l     a2,-(a7)
[0005f4ea] 2448                      movea.l    a0,a2
[0005f4ec] 41f9 0010 1f12            lea.l      ACSblk,a0
[0005f4f2] 2250                      movea.l    (a0),a1
[0005f4f4] 24a9 0258                 move.l     600(a1),(a2)
[0005f4f8] 2250                      movea.l    (a0),a1
[0005f4fa] 2569 025c 0004            move.l     604(a1),4(a2)
[0005f500] 2250                      movea.l    (a0),a1
[0005f502] 3569 0260 0008            move.w     608(a1),8(a2)
[0005f508] 2250                      movea.l    (a0),a1
[0005f50a] 3569 0262 000a            move.w     610(a1),10(a2)
[0005f510] 2250                      movea.l    (a0),a1
[0005f512] 3569 0264 000c            move.w     612(a1),12(a2)
[0005f518] 2250                      movea.l    (a0),a1
[0005f51a] 3569 0266 000e            move.w     614(a1),14(a2)
[0005f520] 41ea 0012                 lea.l      18(a2),a0
[0005f524] 4eb9 0004 99ce            jsr        $000499CE
[0005f52a] 3540 0010                 move.w     d0,16(a2)
[0005f52e] 245f                      movea.l    (a7)+,a2
[0005f530] 4e75                      rts
Act_restore:
[0005f532] 2f0a                      move.l     a2,-(a7)
[0005f534] 2448                      movea.l    a0,a2
[0005f536] 41f9 0010 1f12            lea.l      ACSblk,a0
[0005f53c] 2250                      movea.l    (a0),a1
[0005f53e] 2352 0258                 move.l     (a2),600(a1)
[0005f542] 2250                      movea.l    (a0),a1
[0005f544] 236a 0004 025c            move.l     4(a2),604(a1)
[0005f54a] 2250                      movea.l    (a0),a1
[0005f54c] 336a 0008 0260            move.w     8(a2),608(a1)
[0005f552] 2250                      movea.l    (a0),a1
[0005f554] 336a 000a 0262            move.w     10(a2),610(a1)
[0005f55a] 2250                      movea.l    (a0),a1
[0005f55c] 336a 000c 0264            move.w     12(a2),612(a1)
[0005f562] 2250                      movea.l    (a0),a1
[0005f564] 336a 000e 0266            move.w     14(a2),614(a1)
[0005f56a] 41ea 0012                 lea.l      18(a2),a0
[0005f56e] 302a 0010                 move.w     16(a2),d0
[0005f572] 4eb9 0004 9a14            jsr        $00049A14
[0005f578] 245f                      movea.l    (a7)+,a2
[0005f57a] 4e75                      rts
A_isModDia:
[0005f57c] 3039 000d 5026            move.w     $000D5026,d0
[0005f582] 6f04                      ble.s      $0005F588
[0005f584] 7001                      moveq.l    #1,d0
[0005f586] 4e75                      rts
[0005f588] 4240                      clr.w      d0
[0005f58a] 4e75                      rts
A_exdialog:
[0005f58c] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0005f590] 4fef ffc4                 lea.l      -60(a7),a7
[0005f594] 2448                      movea.l    a0,a2
[0005f596] 3800                      move.w     d0,d4
[0005f598] 4eb9 0004 63f4            jsr        $000463F4
[0005f59e] 41ef 0020                 lea.l      32(a7),a0
[0005f5a2] 6100 ff44                 bsr        $0005F4E8
[0005f5a6] 204a                      movea.l    a2,a0
[0005f5a8] 4eb9 0004 a25e            jsr        $0004A25E
[0005f5ae] 47f9 0010 1f12            lea.l      ACSblk,a3
[0005f5b4] 2053                      movea.l    (a3),a0
[0005f5b6] 2268 0258                 movea.l    600(a0),a1
[0005f5ba] 2f69 006a 001c            move.l     106(a1),28(a7)
[0005f5c0] 2f69 0066 0018            move.l     102(a1),24(a7)
[0005f5c6] 3629 0056                 move.w     86(a1),d3
[0005f5ca] 7008                      moveq.l    #8,d0
[0005f5cc] 43e9 0034                 lea.l      52(a1),a1
[0005f5d0] 41ef 0008                 lea.l      8(a7),a0
[0005f5d4] 4eb9 0007 6f44            jsr        $00076F44
[0005f5da] 4240                      clr.w      d0
[0005f5dc] 2053                      movea.l    (a3),a0
[0005f5de] 2268 0258                 movea.l    600(a0),a1
[0005f5e2] 3340 0036                 move.w     d0,54(a1)
[0005f5e6] 2053                      movea.l    (a3),a0
[0005f5e8] 2268 0258                 movea.l    600(a0),a1
[0005f5ec] 3340 0034                 move.w     d0,52(a1)
[0005f5f0] 2053                      movea.l    (a3),a0
[0005f5f2] 3228 0008                 move.w     8(a0),d1
[0005f5f6] d268 000c                 add.w      12(a0),d1
[0005f5fa] 2268 0258                 movea.l    600(a0),a1
[0005f5fe] 3341 0038                 move.w     d1,56(a1)
[0005f602] 2053                      movea.l    (a3),a0
[0005f604] 3028 000a                 move.w     10(a0),d0
[0005f608] d068 000e                 add.w      14(a0),d0
[0005f60c] 2268 0258                 movea.l    600(a0),a1
[0005f610] 3340 003a                 move.w     d0,58(a1)
[0005f614] 2053                      movea.l    (a3),a0
[0005f616] 2268 0258                 movea.l    600(a0),a1
[0005f61a] 237c 0005 f08a 006a       move.l     #$0005F08A,106(a1)
[0005f622] 2053                      movea.l    (a3),a0
[0005f624] 2268 0258                 movea.l    600(a0),a1
[0005f628] 237c 0005 efe0 0066       move.l     #$0005EFE0,102(a1)
[0005f630] 2053                      movea.l    (a3),a0
[0005f632] 2268 0258                 movea.l    600(a0),a1
[0005f636] 0069 0008 0056            ori.w      #$0008,86(a1)
[0005f63c] 4257                      clr.w      (a7)
[0005f63e] 4bef 0010                 lea.l      16(a7),a5
[0005f642] 4a44                      tst.w      d4
[0005f644] 6700 007e                 beq.w      $0005F6C4
[0005f648] 7010                      moveq.l    #16,d0
[0005f64a] 2053                      movea.l    (a3),a0
[0005f64c] 2268 023c                 movea.l    572(a0),a1
[0005f650] c069 000e                 and.w      14(a1),d0
[0005f654] 6722                      beq.s      $0005F678
[0005f656] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0005f65c] 486d 0006                 pea.l      6(a5)
[0005f660] 486d 0004                 pea.l      4(a5)
[0005f664] 486d 0002                 pea.l      2(a5)
[0005f668] 224d                      movea.l    a5,a1
[0005f66a] 204a                      movea.l    a2,a0
[0005f66c] 4eb9 0006 bf48            jsr        $0006BF48
[0005f672] 4fef 0010                 lea.l      16(a7),a7
[0005f676] 605e                      bra.s      $0005F6D6
[0005f678] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0005f67e] 486f 0006                 pea.l      6(a7)
[0005f682] 486f 000a                 pea.l      10(a7)
[0005f686] 43ef 0044                 lea.l      68(a7),a1
[0005f68a] 41ef 0046                 lea.l      70(a7),a0
[0005f68e] 4eb9 0006 c978            jsr        $0006C978
[0005f694] 4fef 000c                 lea.l      12(a7),a7
[0005f698] 026f ffc0 003a            andi.w     #$FFC0,58(a7)
[0005f69e] 026f ffc0 0038            andi.w     #$FFC0,56(a7)
[0005f6a4] 302f 003a                 move.w     58(a7),d0
[0005f6a8] 322a 0014                 move.w     20(a2),d1
[0005f6ac] e241                      asr.w      #1,d1
[0005f6ae] 9041                      sub.w      d1,d0
[0005f6b0] 3a80                      move.w     d0,(a5)
[0005f6b2] 342f 0038                 move.w     56(a7),d2
[0005f6b6] 382a 0016                 move.w     22(a2),d4
[0005f6ba] e244                      asr.w      #1,d4
[0005f6bc] 9444                      sub.w      d4,d2
[0005f6be] 3b42 0002                 move.w     d2,2(a5)
[0005f6c2] 6012                      bra.s      $0005F6D6
[0005f6c4] 70f8                      moveq.l    #-8,d0
[0005f6c6] d06a 0010                 add.w      16(a2),d0
[0005f6ca] 3a80                      move.w     d0,(a5)
[0005f6cc] 72f8                      moveq.l    #-8,d1
[0005f6ce] d26a 0012                 add.w      18(a2),d1
[0005f6d2] 3b41 0002                 move.w     d1,2(a5)
[0005f6d6] 7008                      moveq.l    #8,d0
[0005f6d8] d06a 0014                 add.w      20(a2),d0
[0005f6dc] 3b40 0004                 move.w     d0,4(a5)
[0005f6e0] 7208                      moveq.l    #8,d1
[0005f6e2] d26a 0016                 add.w      22(a2),d1
[0005f6e6] 3b41 0006                 move.w     d1,6(a5)
[0005f6ea] 5279 000d 5026            addq.w     #1,$000D5026
[0005f6f0] 7003                      moveq.l    #3,d0
[0005f6f2] 4eb9 0005 1e1c            jsr        $00051E1C
[0005f6f8] 4240                      clr.w      d0
[0005f6fa] 4eb9 0004 fe36            jsr        $0004FE36
[0005f700] 2253                      movea.l    (a3),a1
[0005f702] 5049                      addq.w     #8,a1
[0005f704] 204d                      movea.l    a5,a0
[0005f706] 4eb9 0005 f8fe            jsr        $0005F8FE
[0005f70c] 7004                      moveq.l    #4,d0
[0005f70e] d055                      add.w      (a5),d0
[0005f710] 3540 0010                 move.w     d0,16(a2)
[0005f714] 7204                      moveq.l    #4,d1
[0005f716] d26d 0002                 add.w      2(a5),d1
[0005f71a] 3541 0012                 move.w     d1,18(a2)
[0005f71e] 204d                      movea.l    a5,a0
[0005f720] 4eb9 0004 a548            jsr        $0004A548
[0005f726] 2f48 0004                 move.l     a0,4(a7)
[0005f72a] 2253                      movea.l    (a3),a1
[0005f72c] 3f29 000e                 move.w     14(a1),-(a7)
[0005f730] 3f29 000c                 move.w     12(a1),-(a7)
[0005f734] 3f29 000a                 move.w     10(a1),-(a7)
[0005f738] 3429 0008                 move.w     8(a1),d2
[0005f73c] 7206                      moveq.l    #6,d1
[0005f73e] 4240                      clr.w      d0
[0005f740] 204a                      movea.l    a2,a0
[0005f742] 2279 000d 99d6            movea.l    $000D99D6,a1
[0005f748] 4eb9 0006 b93c            jsr        $0006B93C
[0005f74e] 5c4f                      addq.w     #6,a7
[0005f750] 4244                      clr.w      d4
[0005f752] 43d7                      lea.l      (a7),a1
[0005f754] 204a                      movea.l    a2,a0
[0005f756] 6100 f964                 bsr        $0005F0BC
[0005f75a] 3800                      move.w     d0,d4
[0005f75c] 48c0                      ext.l      d0
[0005f75e] 2200                      move.l     d0,d1
[0005f760] d281                      add.l      d1,d1
[0005f762] d280                      add.l      d0,d1
[0005f764] e789                      lsl.l      #3,d1
[0005f766] 3432 1808                 move.w     8(a2,d1.l),d2
[0005f76a] c47c 2000                 and.w      #$2000,d2
[0005f76e] 6600 0092                 bne        $0005F802
[0005f772] 49f2 1818                 lea.l      24(a2,d1.l),a4
[0005f776] 7020                      moveq.l    #32,d0
[0005f778] c072 1808                 and.w      8(a2,d1.l),d0
[0005f77c] 6668                      bne.s      $0005F7E6
[0005f77e] 342c 0008                 move.w     8(a4),d2
[0005f782] c47c 8000                 and.w      #$8000,d2
[0005f786] 675e                      beq.s      $0005F7E6
[0005f788] 2014                      move.l     (a4),d0
[0005f78a] 675a                      beq.s      $0005F7E6
[0005f78c] 2053                      movea.l    (a3),a0
[0005f78e] 214a 025c                 move.l     a2,604(a0)
[0005f792] 2053                      movea.l    (a3),a0
[0005f794] 3144 0260                 move.w     d4,608(a0)
[0005f798] 2053                      movea.l    (a3),a0
[0005f79a] 4268 0268                 clr.w      616(a0)
[0005f79e] 2054                      movea.l    (a4),a0
[0005f7a0] 4e90                      jsr        (a0)
[0005f7a2] 7001                      moveq.l    #1,d0
[0005f7a4] 3404                      move.w     d4,d2
[0005f7a6] 48c2                      ext.l      d2
[0005f7a8] 2202                      move.l     d2,d1
[0005f7aa] d281                      add.l      d1,d1
[0005f7ac] d282                      add.l      d2,d1
[0005f7ae] e789                      lsl.l      #3,d1
[0005f7b0] c072 1808                 and.w      8(a2,d1.l),d0
[0005f7b4] 6724                      beq.s      $0005F7DA
[0005f7b6] 7040                      moveq.l    #64,d0
[0005f7b8] c072 1808                 and.w      8(a2,d1.l),d0
[0005f7bc] 661c                      bne.s      $0005F7DA
[0005f7be] 7401                      moveq.l    #1,d2
[0005f7c0] c472 180a                 and.w      10(a2,d1.l),d2
[0005f7c4] 6714                      beq.s      $0005F7DA
[0005f7c6] 3232 180a                 move.w     10(a2,d1.l),d1
[0005f7ca] c27c fffe                 and.w      #$FFFE,d1
[0005f7ce] 2053                      movea.l    (a3),a0
[0005f7d0] 2068 0258                 movea.l    600(a0),a0
[0005f7d4] 3004                      move.w     d4,d0
[0005f7d6] 6100 f808                 bsr        $0005EFE0
[0005f7da] 2053                      movea.l    (a3),a0
[0005f7dc] 3028 0268                 move.w     616(a0),d0
[0005f7e0] 6620                      bne.s      $0005F802
[0005f7e2] 6000 ff6e                 bra        $0005F752
[0005f7e6] 3204                      move.w     d4,d1
[0005f7e8] 48c1                      ext.l      d1
[0005f7ea] 2001                      move.l     d1,d0
[0005f7ec] d080                      add.l      d0,d0
[0005f7ee] d081                      add.l      d1,d0
[0005f7f0] e788                      lsl.l      #3,d0
[0005f7f2] 3432 0808                 move.w     8(a2,d0.l),d2
[0005f7f6] c47c 2047                 and.w      #$2047,d2
[0005f7fa] b47c 0040                 cmp.w      #$0040,d2
[0005f7fe] 6700 ff52                 beq        $0005F752
[0005f802] 3204                      move.w     d4,d1
[0005f804] 48c1                      ext.l      d1
[0005f806] 2001                      move.l     d1,d0
[0005f808] d080                      add.l      d0,d0
[0005f80a] d081                      add.l      d1,d0
[0005f80c] e788                      lsl.l      #3,d0
[0005f80e] 0272 fffe 080a            andi.w     #$FFFE,10(a2,d0.l)
[0005f814] 224d                      movea.l    a5,a1
[0005f816] 206f 0004                 movea.l    4(a7),a0
[0005f81a] 4eb9 0004 a64c            jsr        $0004A64C
[0005f820] 4a44                      tst.w      d4
[0005f822] 660a                      bne.s      $0005F82E
[0005f824] 302a 000a                 move.w     10(a2),d0
[0005f828] c07c 4000                 and.w      #$4000,d0
[0005f82c] 6658                      bne.s      $0005F886
[0005f82e] 3204                      move.w     d4,d1
[0005f830] 48c1                      ext.l      d1
[0005f832] 2001                      move.l     d1,d0
[0005f834] d080                      add.l      d0,d0
[0005f836] d081                      add.l      d1,d0
[0005f838] e788                      lsl.l      #3,d0
[0005f83a] 3432 0808                 move.w     8(a2,d0.l),d2
[0005f83e] c47c 2000                 and.w      #$2000,d2
[0005f842] 6742                      beq.s      $0005F886
[0005f844] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0005f84a] 2053                      movea.l    (a3),a0
[0005f84c] 3f28 000e                 move.w     14(a0),-(a7)
[0005f850] 3f28 000c                 move.w     12(a0),-(a7)
[0005f854] 3f28 000a                 move.w     10(a0),-(a7)
[0005f858] 3f28 0008                 move.w     8(a0),-(a7)
[0005f85c] 3f2a 0012                 move.w     18(a2),-(a7)
[0005f860] 43ed 0002                 lea.l      2(a5),a1
[0005f864] 204d                      movea.l    a5,a0
[0005f866] 342a 0010                 move.w     16(a2),d2
[0005f86a] 322a 0016                 move.w     22(a2),d1
[0005f86e] 302a 0014                 move.w     20(a2),d0
[0005f872] 4eb9 0006 c3fe            jsr        $0006C3FE
[0005f878] 4fef 000e                 lea.l      14(a7),a7
[0005f87c] 5955                      subq.w     #4,(a5)
[0005f87e] 596d 0002                 subq.w     #4,2(a5)
[0005f882] 6000 fe7c                 bra        $0005F700
[0005f886] 2053                      movea.l    (a3),a0
[0005f888] 4268 0268                 clr.w      616(a0)
[0005f88c] 7002                      moveq.l    #2,d0
[0005f88e] 4eb9 0005 1e1c            jsr        $00051E1C
[0005f894] 5379 000d 5026            subq.w     #1,$000D5026
[0005f89a] 2053                      movea.l    (a3),a0
[0005f89c] 2268 0258                 movea.l    600(a0),a1
[0005f8a0] 236f 001c 006a            move.l     28(a7),106(a1)
[0005f8a6] 2053                      movea.l    (a3),a0
[0005f8a8] 2268 0258                 movea.l    600(a0),a1
[0005f8ac] 236f 0018 0066            move.l     24(a7),102(a1)
[0005f8b2] 2053                      movea.l    (a3),a0
[0005f8b4] 2268 0258                 movea.l    600(a0),a1
[0005f8b8] 3343 0056                 move.w     d3,86(a1)
[0005f8bc] 7008                      moveq.l    #8,d0
[0005f8be] 43ef 0008                 lea.l      8(a7),a1
[0005f8c2] 2053                      movea.l    (a3),a0
[0005f8c4] 2068 0258                 movea.l    600(a0),a0
[0005f8c8] 41e8 0034                 lea.l      52(a0),a0
[0005f8cc] 4eb9 0007 6f44            jsr        $00076F44
[0005f8d2] 41ef 0020                 lea.l      32(a7),a0
[0005f8d6] 6100 fc5a                 bsr        $0005F532
[0005f8da] 7001                      moveq.l    #1,d0
[0005f8dc] 4eb9 0004 fe36            jsr        $0004FE36
[0005f8e2] 3004                      move.w     d4,d0
[0005f8e4] 4fef 003c                 lea.l      60(a7),a7
[0005f8e8] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0005f8ec] 4e75                      rts
A_dialog:
[0005f8ee] 7001                      moveq.l    #1,d0
[0005f8f0] 6100 fc9a                 bsr        $0005F58C
[0005f8f4] 4e75                      rts
A_dialog2:
[0005f8f6] 4240                      clr.w      d0
[0005f8f8] 6100 fc92                 bsr        $0005F58C
[0005f8fc] 4e75                      rts
fitin:
[0005f8fe] 3010                      move.w     (a0),d0
[0005f900] b051                      cmp.w      (a1),d0
[0005f902] 6c02                      bge.s      $0005F906
[0005f904] 3091                      move.w     (a1),(a0)
[0005f906] 3028 0002                 move.w     2(a0),d0
[0005f90a] b069 0002                 cmp.w      2(a1),d0
[0005f90e] 6c06                      bge.s      $0005F916
[0005f910] 3169 0002 0002            move.w     2(a1),2(a0)
[0005f916] 3010                      move.w     (a0),d0
[0005f918] d068 0004                 add.w      4(a0),d0
[0005f91c] 3211                      move.w     (a1),d1
[0005f91e] d269 0004                 add.w      4(a1),d1
[0005f922] b041                      cmp.w      d1,d0
[0005f924] 6f06                      ble.s      $0005F92C
[0005f926] 9268 0004                 sub.w      4(a0),d1
[0005f92a] 3081                      move.w     d1,(a0)
[0005f92c] 3028 0002                 move.w     2(a0),d0
[0005f930] d068 0006                 add.w      6(a0),d0
[0005f934] 3229 0002                 move.w     2(a1),d1
[0005f938] d269 0006                 add.w      6(a1),d1
[0005f93c] b041                      cmp.w      d1,d0
[0005f93e] 6f08                      ble.s      $0005F948
[0005f940] 9268 0006                 sub.w      6(a0),d1
[0005f944] 3141 0002                 move.w     d1,2(a0)
[0005f948] 4e75                      rts
intersect:
[0005f94a] 3010                      move.w     (a0),d0
[0005f94c] d068 0004                 add.w      4(a0),d0
[0005f950] 3211                      move.w     (a1),d1
[0005f952] d269 0004                 add.w      4(a1),d1
[0005f956] b041                      cmp.w      d1,d0
[0005f958] 6c02                      bge.s      $0005F95C
[0005f95a] 6006                      bra.s      $0005F962
[0005f95c] 3011                      move.w     (a1),d0
[0005f95e] d069 0004                 add.w      4(a1),d0
[0005f962] 3228 0002                 move.w     2(a0),d1
[0005f966] d268 0006                 add.w      6(a0),d1
[0005f96a] 3429 0002                 move.w     2(a1),d2
[0005f96e] d469 0006                 add.w      6(a1),d2
[0005f972] b242                      cmp.w      d2,d1
[0005f974] 6c02                      bge.s      $0005F978
[0005f976] 6008                      bra.s      $0005F980
[0005f978] 3229 0002                 move.w     2(a1),d1
[0005f97c] d269 0006                 add.w      6(a1),d1
[0005f980] 3410                      move.w     (a0),d2
[0005f982] b451                      cmp.w      (a1),d2
[0005f984] 6f02                      ble.s      $0005F988
[0005f986] 6002                      bra.s      $0005F98A
[0005f988] 3411                      move.w     (a1),d2
[0005f98a] 3082                      move.w     d2,(a0)
[0005f98c] 3428 0002                 move.w     2(a0),d2
[0005f990] b469 0002                 cmp.w      2(a1),d2
[0005f994] 6f02                      ble.s      $0005F998
[0005f996] 6004                      bra.s      $0005F99C
[0005f998] 3429 0002                 move.w     2(a1),d2
[0005f99c] 3142 0002                 move.w     d2,2(a0)
[0005f9a0] 3240                      movea.w    d0,a1
[0005f9a2] 92d0                      suba.w     (a0),a1
[0005f9a4] 3149 0004                 move.w     a1,4(a0)
[0005f9a8] 3001                      move.w     d1,d0
[0005f9aa] 9068 0002                 sub.w      2(a0),d0
[0005f9ae] 3140 0006                 move.w     d0,6(a0)
[0005f9b2] 3228 0004                 move.w     4(a0),d1
[0005f9b6] 6f04                      ble.s      $0005F9BC
[0005f9b8] 4a40                      tst.w      d0
[0005f9ba] 6e0e                      bgt.s      $0005F9CA
[0005f9bc] 4240                      clr.w      d0
[0005f9be] 3140 0006                 move.w     d0,6(a0)
[0005f9c2] 3140 0004                 move.w     d0,4(a0)
[0005f9c6] 4240                      clr.w      d0
[0005f9c8] 4e75                      rts
[0005f9ca] 7001                      moveq.l    #1,d0
[0005f9cc] 4e75                      rts
xywh2array:
[0005f9ce] 30d1                      move.w     (a1),(a0)+
[0005f9d0] 30e9 0002                 move.w     2(a1),(a0)+
[0005f9d4] 3011                      move.w     (a1),d0
[0005f9d6] d069 0004                 add.w      4(a1),d0
[0005f9da] 5340                      subq.w     #1,d0
[0005f9dc] 30c0                      move.w     d0,(a0)+
[0005f9de] 3029 0002                 move.w     2(a1),d0
[0005f9e2] d069 0006                 add.w      6(a1),d0
[0005f9e6] 5340                      subq.w     #1,d0
[0005f9e8] 3080                      move.w     d0,(a0)
[0005f9ea] 4e75                      rts
array2xywh:
[0005f9ec] 3091                      move.w     (a1),(a0)
[0005f9ee] 3169 0002 0002            move.w     2(a1),2(a0)
[0005f9f4] 3029 0004                 move.w     4(a1),d0
[0005f9f8] 9050                      sub.w      (a0),d0
[0005f9fa] 5240                      addq.w     #1,d0
[0005f9fc] 3140 0004                 move.w     d0,4(a0)
[0005fa00] 3229 0006                 move.w     6(a1),d1
[0005fa04] 9268 0002                 sub.w      2(a0),d1
[0005fa08] 5241                      addq.w     #1,d1
[0005fa0a] 3141 0006                 move.w     d1,6(a0)
[0005fa0e] 4e75                      rts
scrp_chg:
[0005fa10] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0005fa14] 4fef ffe2                 lea.l      -30(a7),a7
[0005fa18] 3600                      move.w     d0,d3
[0005fa1a] 45ef 000e                 lea.l      14(a7),a2
[0005fa1e] 41f9 000d 5028            lea.l      $000D5028,a0
[0005fa24] 224a                      movea.l    a2,a1
[0005fa26] 700f                      moveq.l    #15,d0
[0005fa28] 12d8                      move.b     (a0)+,(a1)+
[0005fa2a] 51c8 fffc                 dbf        d0,$0005FA28
[0005fa2e] 47ef 000a                 lea.l      10(a7),a3
[0005fa32] 36bc ffff                 move.w     #$FFFF,(a3)
[0005fa36] 34bc 0050                 move.w     #$0050,(a2)
[0005fa3a] 2079 0010 1f12            movea.l    ACSblk,a0
[0005fa40] 3550 0004                 move.w     (a0),4(a2)
[0005fa44] 70ff                      moveq.l    #-1,d0
[0005fa46] 204a                      movea.l    a2,a0
[0005fa48] 4eb9 0005 4186            jsr        $00054186
[0005fa4e] 2079 0010 1f12            movea.l    ACSblk,a0
[0005fa54] 2268 0280                 movea.l    640(a0),a1
[0005fa58] 0c51 0400                 cmpi.w     #$0400,(a1)
[0005fa5c] 6c0a                      bge.s      $0005FA68
[0005fa5e] 0c79 0200 0010 2620       cmpi.w     #$0200,$00102620
[0005fa66] 6d24                      blt.s      $0005FA8C
[0005fa68] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0005fa6e] 4853                      pea.l      (a3)
[0005fa70] 43ef 0014                 lea.l      20(a7),a1
[0005fa74] 41ef 0008                 lea.l      8(a7),a0
[0005fa78] 7002                      moveq.l    #2,d0
[0005fa7a] 4eb9 0006 aa02            jsr        $0006AA02
[0005fa80] 504f                      addq.w     #8,a7
[0005fa82] 4a40                      tst.w      d0
[0005fa84] 6614                      bne.s      $0005FA9A
[0005fa86] 36bc ffff                 move.w     #$FFFF,(a3)
[0005fa8a] 600e                      bra.s      $0005FA9A
[0005fa8c] 2079 0010 1f12            movea.l    ACSblk,a0
[0005fa92] 3028 0238                 move.w     568(a0),d0
[0005fa96] 6602                      bne.s      $0005FA9A
[0005fa98] 4253                      clr.w      (a3)
[0005fa9a] 3013                      move.w     (a3),d0
[0005fa9c] 6b18                      bmi.s      $0005FAB6
[0005fa9e] 34bc 0048                 move.w     #$0048,(a2)
[0005faa2] 3543 0006                 move.w     d3,6(a2)
[0005faa6] 2279 000d 99d6            movea.l    $000D99D6,a1
[0005faac] 204a                      movea.l    a2,a0
[0005faae] 7210                      moveq.l    #16,d1
[0005fab0] 4eb9 0006 a818            jsr        $0006A818
[0005fab6] 91c8                      suba.l     a0,a0
[0005fab8] 701c                      moveq.l    #28,d0
[0005faba] 4eb9 0004 ef62            jsr        $0004EF62
[0005fac0] 4fef 001e                 lea.l      30(a7),a7
[0005fac4] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0005fac8] 4e75                      rts
Ascrp_clear:
[0005faca] 48e7 003c                 movem.l    a2-a5,-(a7)
[0005face] 4fef fe80                 lea.l      -384(a7),a7
[0005fad2] 2448                      movea.l    a0,a2
[0005fad4] 43f9 000d 5038            lea.l      $000D5038,a1
[0005fada] 41ef 0100                 lea.l      256(a7),a0
[0005fade] 707f                      moveq.l    #127,d0
[0005fae0] 10d9                      move.b     (a1)+,(a0)+
[0005fae2] 51c8 fffc                 dbf        d0,$0005FAE0
[0005fae6] 97cb                      suba.l     a3,a3
[0005fae8] 2079 0010 1f12            movea.l    ACSblk,a0
[0005faee] 1028 0356                 move.b     854(a0),d0
[0005faf2] 6700 00bc                 beq        $0005FBB0
[0005faf6] 4eb9 0004 9902            jsr        $00049902
[0005fafc] 2079 0010 1f12            movea.l    ACSblk,a0
[0005fb02] 41e8 0356                 lea.l      854(a0),a0
[0005fb06] 4eb9 0004 70f8            jsr        $000470F8
[0005fb0c] d12f 0100                 add.b      d0,256(a7)
[0005fb10] 2279 0010 1f12            movea.l    ACSblk,a1
[0005fb16] 43e9 0356                 lea.l      854(a1),a1
[0005fb1a] 41ef 0102                 lea.l      258(a7),a0
[0005fb1e] 4eb9 0004 712c            jsr        $0004712C
[0005fb24] 41ef 0100                 lea.l      256(a7),a0
[0005fb28] 4eb9 0004 7896            jsr        $00047896
[0005fb2e] 2648                      movea.l    a0,a3
[0005fb30] 284b                      movea.l    a3,a4
[0005fb32] 200c                      move.l     a4,d0
[0005fb34] 6700 0074                 beq.w      $0005FBAA
[0005fb38] 4bef 0080                 lea.l      128(a7),a5
[0005fb3c] 6052                      bra.s      $0005FB90
[0005fb3e] 2254                      movea.l    (a4),a1
[0005fb40] 204d                      movea.l    a5,a0
[0005fb42] 4eb9 0004 71de            jsr        $000471DE
[0005fb48] 4eb9 0004 3740            jsr        $00043740
[0005fb4e] 2254                      movea.l    (a4),a1
[0005fb50] 41d7                      lea.l      (a7),a0
[0005fb52] 4eb9 0004 7286            jsr        $00047286
[0005fb58] 43f9 000d 5145            lea.l      $000D5145,a1
[0005fb5e] 204d                      movea.l    a5,a0
[0005fb60] 4eb9 0007 6c72            jsr        $00076C72
[0005fb66] 4a40                      tst.w      d0
[0005fb68] 6622                      bne.s      $0005FB8C
[0005fb6a] 200a                      move.l     a2,d0
[0005fb6c] 6712                      beq.s      $0005FB80
[0005fb6e] 1212                      move.b     (a2),d1
[0005fb70] 670e                      beq.s      $0005FB80
[0005fb72] 224a                      movea.l    a2,a1
[0005fb74] 41d7                      lea.l      (a7),a0
[0005fb76] 4eb9 0007 68fe            jsr        $000768FE
[0005fb7c] 4a40                      tst.w      d0
[0005fb7e] 660c                      bne.s      $0005FB8C
[0005fb80] 2054                      movea.l    (a4),a0
[0005fb82] 4eb9 0007 29d0            jsr        $000729D0
[0005fb88] 4a80                      tst.l      d0
[0005fb8a] 6608                      bne.s      $0005FB94
[0005fb8c] 286c 0004                 movea.l    4(a4),a4
[0005fb90] 200c                      move.l     a4,d0
[0005fb92] 66aa                      bne.s      $0005FB3E
[0005fb94] 204b                      movea.l    a3,a0
[0005fb96] 4eb9 0004 795e            jsr        $0004795E
[0005fb9c] 102f 0100                 move.b     256(a7),d0
[0005fba0] 4880                      ext.w      d0
[0005fba2] d07c ffbf                 add.w      #$FFBF,d0
[0005fba6] 6100 fe68                 bsr        $0005FA10
[0005fbaa] 4eb9 0004 9940            jsr        $00049940
[0005fbb0] 4fef 0180                 lea.l      384(a7),a7
[0005fbb4] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0005fbb8] 4e75                      rts
Ascrp_get:
[0005fbba] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[0005fbbe] 4fef fe7c                 lea.l      -388(a7),a7
[0005fbc2] 2648                      movea.l    a0,a3
[0005fbc4] 2a49                      movea.l    a1,a5
[0005fbc6] 246f 01a4                 movea.l    420(a7),a2
[0005fbca] 49ef 0104                 lea.l      260(a7),a4
[0005fbce] 41f9 000d 50b8            lea.l      $000D50B8,a0
[0005fbd4] 224c                      movea.l    a4,a1
[0005fbd6] 707f                      moveq.l    #127,d0
[0005fbd8] 12d8                      move.b     (a0)+,(a1)+
[0005fbda] 51c8 fffc                 dbf        d0,$0005FBD8
[0005fbde] 4297                      clr.l      (a7)
[0005fbe0] 4243                      clr.w      d3
[0005fbe2] 2079 0010 1f12            movea.l    ACSblk,a0
[0005fbe8] 1028 0356                 move.b     854(a0),d0
[0005fbec] 6700 0136                 beq        $0005FD24
[0005fbf0] 4eb9 0004 9902            jsr        $00049902
[0005fbf6] 200b                      move.l     a3,d0
[0005fbf8] 6708                      beq.s      $0005FC02
[0005fbfa] 204b                      movea.l    a3,a0
[0005fbfc] 4eb9 0004 3740            jsr        $00043740
[0005fc02] 2079 0010 1f12            movea.l    ACSblk,a0
[0005fc08] 41e8 0356                 lea.l      854(a0),a0
[0005fc0c] 4eb9 0004 70f8            jsr        $000470F8
[0005fc12] d114                      add.b      d0,(a4)
[0005fc14] 2279 0010 1f12            movea.l    ACSblk,a1
[0005fc1a] 43e9 0356                 lea.l      854(a1),a1
[0005fc1e] 41ec 0002                 lea.l      2(a4),a0
[0005fc22] 4eb9 0004 712c            jsr        $0004712C
[0005fc28] 204c                      movea.l    a4,a0
[0005fc2a] 4eb9 0004 7896            jsr        $00047896
[0005fc30] 2e88                      move.l     a0,(a7)
[0005fc32] 2848                      movea.l    a0,a4
[0005fc34] 200c                      move.l     a4,d0
[0005fc36] 6700 00e6                 beq        $0005FD1E
[0005fc3a] 4def 0004                 lea.l      4(a7),a6
[0005fc3e] 6056                      bra.s      $0005FC96
[0005fc40] 2254                      movea.l    (a4),a1
[0005fc42] 41ef 0084                 lea.l      132(a7),a0
[0005fc46] 4eb9 0004 71de            jsr        $000471DE
[0005fc4c] 4eb9 0004 3740            jsr        $00043740
[0005fc52] 2254                      movea.l    (a4),a1
[0005fc54] 204e                      movea.l    a6,a0
[0005fc56] 4eb9 0004 7286            jsr        $00047286
[0005fc5c] 4eb9 0004 3740            jsr        $00043740
[0005fc62] 43f9 000d 5145            lea.l      $000D5145,a1
[0005fc68] 41ef 0084                 lea.l      132(a7),a0
[0005fc6c] 4eb9 0004 38ac            jsr        $000438AC
[0005fc72] 4a40                      tst.w      d0
[0005fc74] 661c                      bne.s      $0005FC92
[0005fc76] 200b                      move.l     a3,d0
[0005fc78] 6720                      beq.s      $0005FC9A
[0005fc7a] 1213                      move.b     (a3),d1
[0005fc7c] 671c                      beq.s      $0005FC9A
[0005fc7e] b23c 002a                 cmp.b      #$2A,d1
[0005fc82] 6716                      beq.s      $0005FC9A
[0005fc84] 224b                      movea.l    a3,a1
[0005fc86] 204e                      movea.l    a6,a0
[0005fc88] 4eb9 0004 38ac            jsr        $000438AC
[0005fc8e] 4a40                      tst.w      d0
[0005fc90] 6708                      beq.s      $0005FC9A
[0005fc92] 286c 0004                 movea.l    4(a4),a4
[0005fc96] 200c                      move.l     a4,d0
[0005fc98] 66a6                      bne.s      $0005FC40
[0005fc9a] 200c                      move.l     a4,d0
[0005fc9c] 6700 0078                 beq.w      $0005FD16
[0005fca0] 2054                      movea.l    (a4),a0
[0005fca2] 4eb9 0004 73bc            jsr        $000473BC
[0005fca8] 2480                      move.l     d0,(a2)
[0005fcaa] 220d                      move.l     a5,d1
[0005fcac] 6604                      bne.s      $0005FCB2
[0005fcae] 7601                      moveq.l    #1,d3
[0005fcb0] 6056                      bra.s      $0005FD08
[0005fcb2] 7001                      moveq.l    #1,d0
[0005fcb4] d092                      add.l      (a2),d0
[0005fcb6] 4eb9 0004 7cc8            jsr        Ax_malloc
[0005fcbc] 2a88                      move.l     a0,(a5)
[0005fcbe] 2008                      move.l     a0,d0
[0005fcc0] 6746                      beq.s      $0005FD08
[0005fcc2] 2054                      movea.l    (a4),a0
[0005fcc4] 4240                      clr.w      d0
[0005fcc6] 4eb9 0007 29f0            jsr        $000729F0
[0005fccc] 2800                      move.l     d0,d4
[0005fcce] 4a80                      tst.l      d0
[0005fcd0] 6a0a                      bpl.s      $0005FCDC
[0005fcd2] 2055                      movea.l    (a5),a0
[0005fcd4] 4eb9 0004 7e26            jsr        $00047E26
[0005fcda] 602c                      bra.s      $0005FD08
[0005fcdc] 2055                      movea.l    (a5),a0
[0005fcde] 2212                      move.l     (a2),d1
[0005fce0] 3004                      move.w     d4,d0
[0005fce2] 4eb9 0007 2a02            jsr        $00072A02
[0005fce8] b092                      cmp.l      (a2),d0
[0005fcea] 670a                      beq.s      $0005FCF6
[0005fcec] 2055                      movea.l    (a5),a0
[0005fcee] 4eb9 0004 7e26            jsr        $00047E26
[0005fcf4] 600a                      bra.s      $0005FD00
[0005fcf6] 2012                      move.l     (a2),d0
[0005fcf8] 2055                      movea.l    (a5),a0
[0005fcfa] 4230 0800                 clr.b      0(a0,d0.l)
[0005fcfe] 7601                      moveq.l    #1,d3
[0005fd00] 3004                      move.w     d4,d0
[0005fd02] 4eb9 0007 29ae            jsr        $000729AE
[0005fd08] 200b                      move.l     a3,d0
[0005fd0a] 670a                      beq.s      $0005FD16
[0005fd0c] 2254                      movea.l    (a4),a1
[0005fd0e] 204b                      movea.l    a3,a0
[0005fd10] 4eb9 0004 7286            jsr        $00047286
[0005fd16] 2057                      movea.l    (a7),a0
[0005fd18] 4eb9 0004 795e            jsr        $0004795E
[0005fd1e] 4eb9 0004 9940            jsr        $00049940
[0005fd24] 3003                      move.w     d3,d0
[0005fd26] 4fef 0184                 lea.l      388(a7),a7
[0005fd2a] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[0005fd2e] 4e75                      rts
Ascrp_put:
[0005fd30] 48e7 1f38                 movem.l    d3-d7/a2-a4,-(a7)
[0005fd34] 4fef ff00                 lea.l      -256(a7),a7
[0005fd38] 2448                      movea.l    a0,a2
[0005fd3a] 2849                      movea.l    a1,a4
[0005fd3c] 2e00                      move.l     d0,d7
[0005fd3e] 3a01                      move.w     d1,d5
[0005fd40] 7601                      moveq.l    #1,d3
[0005fd42] 2079 0010 1f12            movea.l    ACSblk,a0
[0005fd48] 1428 0356                 move.b     854(a0),d2
[0005fd4c] 6700 00f0                 beq        $0005FE3E
[0005fd50] 1212                      move.b     (a2),d1
[0005fd52] 6700 00ea                 beq        $0005FE3E
[0005fd56] 47ef 0080                 lea.l      128(a7),a3
[0005fd5a] 2f0a                      move.l     a2,-(a7)
[0005fd5c] 4879 000d 514b            pea.l      $000D514B
[0005fd62] 2279 0010 1f12            movea.l    ACSblk,a1
[0005fd68] 43e9 0356                 lea.l      854(a1),a1
[0005fd6c] 41ef 0008                 lea.l      8(a7),a0
[0005fd70] 4eb9 0004 712c            jsr        $0004712C
[0005fd76] 2248                      movea.l    a0,a1
[0005fd78] 2f09                      move.l     a1,-(a7)
[0005fd7a] 2079 0010 1f12            movea.l    ACSblk,a0
[0005fd80] 41e8 0356                 lea.l      854(a0),a0
[0005fd84] 4eb9 0004 70f8            jsr        $000470F8
[0005fd8a] 204b                      movea.l    a3,a0
[0005fd8c] 225f                      movea.l    (a7)+,a1
[0005fd8e] 4eb9 0004 72d6            jsr        $000472D6
[0005fd94] 504f                      addq.w     #8,a7
[0005fd96] 4eb9 0004 9902            jsr        $00049902
[0005fd9c] 204b                      movea.l    a3,a0
[0005fd9e] 4eb9 0004 73bc            jsr        $000473BC
[0005fda4] 2800                      move.l     d0,d4
[0005fda6] 72ff                      moveq.l    #-1,d1
[0005fda8] b280                      cmp.l      d0,d1
[0005fdaa] 6606                      bne.s      $0005FDB2
[0005fdac] 4240                      clr.w      d0
[0005fdae] 6000 0090                 bra        $0005FE40
[0005fdb2] 4a45                      tst.w      d5
[0005fdb4] 6724                      beq.s      $0005FDDA
[0005fdb6] 4a84                      tst.l      d4
[0005fdb8] 6b32                      bmi.s      $0005FDEC
[0005fdba] 7002                      moveq.l    #2,d0
[0005fdbc] 204b                      movea.l    a3,a0
[0005fdbe] 4eb9 0007 29f0            jsr        $000729F0
[0005fdc4] 2c00                      move.l     d0,d6
[0005fdc6] 6b32                      bmi.s      $0005FDFA
[0005fdc8] 7402                      moveq.l    #2,d2
[0005fdca] 3206                      move.w     d6,d1
[0005fdcc] 7000                      moveq.l    #0,d0
[0005fdce] 4eb9 0007 2a2e            jsr        $00072A2E
[0005fdd4] b880                      cmp.l      d0,d4
[0005fdd6] 6724                      beq.s      $0005FDFC
[0005fdd8] 6020                      bra.s      $0005FDFA
[0005fdda] 4a84                      tst.l      d4
[0005fddc] 6b0e                      bmi.s      $0005FDEC
[0005fdde] 204b                      movea.l    a3,a0
[0005fde0] 4eb9 0007 29d0            jsr        $000729D0
[0005fde6] 4a80                      tst.l      d0
[0005fde8] 6702                      beq.s      $0005FDEC
[0005fdea] 4243                      clr.w      d3
[0005fdec] 4240                      clr.w      d0
[0005fdee] 204b                      movea.l    a3,a0
[0005fdf0] 4eb9 0007 29be            jsr        $000729BE
[0005fdf6] 2c00                      move.l     d0,d6
[0005fdf8] 6a02                      bpl.s      $0005FDFC
[0005fdfa] 4243                      clr.w      d3
[0005fdfc] 4a43                      tst.w      d3
[0005fdfe] 6738                      beq.s      $0005FE38
[0005fe00] 204c                      movea.l    a4,a0
[0005fe02] 2207                      move.l     d7,d1
[0005fe04] 3006                      move.w     d6,d0
[0005fe06] 4eb9 0007 2a8e            jsr        $00072A8E
[0005fe0c] be80                      cmp.l      d0,d7
[0005fe0e] 6714                      beq.s      $0005FE24
[0005fe10] 3006                      move.w     d6,d0
[0005fe12] 4eb9 0007 29ae            jsr        $000729AE
[0005fe18] 204b                      movea.l    a3,a0
[0005fe1a] 4eb9 0007 29d0            jsr        $000729D0
[0005fe20] 4243                      clr.w      d3
[0005fe22] 6014                      bra.s      $0005FE38
[0005fe24] 3006                      move.w     d6,d0
[0005fe26] 4eb9 0007 29ae            jsr        $000729AE
[0005fe2c] 1013                      move.b     (a3),d0
[0005fe2e] 4880                      ext.w      d0
[0005fe30] d07c ffbf                 add.w      #$FFBF,d0
[0005fe34] 6100 fbda                 bsr        $0005FA10
[0005fe38] 4eb9 0004 9940            jsr        $00049940
[0005fe3e] 3003                      move.w     d3,d0
[0005fe40] 4fef 0100                 lea.l      256(a7),a7
[0005fe44] 4cdf 1cf8                 movem.l    (a7)+,d3-d7/a2-a4
[0005fe48] 4e75                      rts
