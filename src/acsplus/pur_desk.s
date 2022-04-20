Apd_close:
[00039e02] 48e7 002c                 movem.l    a2/a4-a5,-(a7)
[00039e06] 554f                      subq.w     #2,a7
[00039e08] 95ca                      suba.l     a2,a2
[00039e0a] 4bf9 0010 1f12            lea.l      ACSblk,a5
[00039e10] 42a7                      clr.l      -(a7)
[00039e12] 42a7                      clr.l      -(a7)
[00039e14] 42a7                      clr.l      -(a7)
[00039e16] 486f 000c                 pea.l      12(a7)
[00039e1a] 720a                      moveq.l    #10,d1
[00039e1c] 4240                      clr.w      d0
[00039e1e] 4eb9 0007 14ea            jsr        $000714EA
[00039e24] 4fef 0010                 lea.l      16(a7),a7
[00039e28] 3017                      move.w     (a7),d0
[00039e2a] 4eb9 0004 e5ea            jsr        $0004E5EA
[00039e30] 2848                      movea.l    a0,a4
[00039e32] 4eb9 0004 e608            jsr        $0004E608
[00039e38] b9c8                      cmpa.l     a0,a4
[00039e3a] 6608                      bne.s      $00039E44
[00039e3c] 2055                      movea.l    (a5),a0
[00039e3e] 3028 0236                 move.w     566(a0),d0
[00039e42] 6652                      bne.s      $00039E96
[00039e44] 200c                      move.l     a4,d0
[00039e46] 674e                      beq.s      $00039E96
[00039e48] 7204                      moveq.l    #4,d1
[00039e4a] c26c 0054                 and.w      84(a4),d1
[00039e4e] 671c                      beq.s      $00039E6C
[00039e50] 7402                      moveq.l    #2,d2
[00039e52] c46c 0022                 and.w      34(a4),d2
[00039e56] 6614                      bne.s      $00039E6C
[00039e58] 200a                      move.l     a2,d0
[00039e5a] 6604                      bne.s      $00039E60
[00039e5c] 244c                      movea.l    a4,a2
[00039e5e] 6004                      bra.s      $00039E64
[00039e60] b9ca                      cmpa.l     a2,a4
[00039e62] 6732                      beq.s      $00039E96
[00039e64] 4eb9 0004 f068            jsr        $0004F068
[00039e6a] 609e                      bra.s      $00039E0A
[00039e6c] 7001                      moveq.l    #1,d0
[00039e6e] c06c 0054                 and.w      84(a4),d0
[00039e72] 660c                      bne.s      $00039E80
[00039e74] 2055                      movea.l    (a5),a0
[00039e76] 2268 023c                 movea.l    572(a0),a1
[00039e7a] 2229 0034                 move.l     52(a1),d1
[00039e7e] 670a                      beq.s      $00039E8A
[00039e80] 204c                      movea.l    a4,a0
[00039e82] 226c 0072                 movea.l    114(a4),a1
[00039e86] 4e91                      jsr        (a1)
[00039e88] 600c                      bra.s      $00039E96
[00039e8a] 93c9                      suba.l     a1,a1
[00039e8c] 7002                      moveq.l    #2,d0
[00039e8e] 204c                      movea.l    a4,a0
[00039e90] 246c 0004                 movea.l    4(a4),a2
[00039e94] 4e92                      jsr        (a2)
[00039e96] 544f                      addq.w     #2,a7
[00039e98] 4cdf 3400                 movem.l    (a7)+,a2/a4-a5
[00039e9c] 4e75                      rts
Apd_delete:
[00039e9e] 2f0a                      move.l     a2,-(a7)
[00039ea0] 2f0b                      move.l     a3,-(a7)
[00039ea2] 554f                      subq.w     #2,a7
[00039ea4] 2079 0010 1f12            movea.l    ACSblk,a0
[00039eaa] 3028 0246                 move.w     582(a0),d0
[00039eae] 663e                      bne.s      $00039EEE
[00039eb0] 42a7                      clr.l      -(a7)
[00039eb2] 42a7                      clr.l      -(a7)
[00039eb4] 42a7                      clr.l      -(a7)
[00039eb6] 486f 000c                 pea.l      12(a7)
[00039eba] 720a                      moveq.l    #10,d1
[00039ebc] 4240                      clr.w      d0
[00039ebe] 4eb9 0007 14ea            jsr        $000714EA
[00039ec4] 4fef 0010                 lea.l      16(a7),a7
[00039ec8] 3017                      move.w     (a7),d0
[00039eca] 4eb9 0004 e5ea            jsr        $0004E5EA
[00039ed0] 2448                      movea.l    a0,a2
[00039ed2] 200a                      move.l     a2,d0
[00039ed4] 6736                      beq.s      $00039F0C
[00039ed6] 4eb9 0004 e608            jsr        $0004E608
[00039edc] b5c8                      cmpa.l     a0,a2
[00039ede] 672c                      beq.s      $00039F0C
[00039ee0] 93c9                      suba.l     a1,a1
[00039ee2] 7002                      moveq.l    #2,d0
[00039ee4] 204a                      movea.l    a2,a0
[00039ee6] 266a 0004                 movea.l    4(a2),a3
[00039eea] 4e93                      jsr        (a3)
[00039eec] 601e                      bra.s      $00039F0C
[00039eee] 2079 0010 1f12            movea.l    ACSblk,a0
[00039ef4] 2268 0258                 movea.l    600(a0),a1
[00039ef8] 2468 0240                 movea.l    576(a0),a2
[00039efc] b3ca                      cmpa.l     a2,a1
[00039efe] 670c                      beq.s      $00039F0C
[00039f00] 700b                      moveq.l    #11,d0
[00039f02] 266a 0004                 movea.l    4(a2),a3
[00039f06] 204a                      movea.l    a2,a0
[00039f08] 93c9                      suba.l     a1,a1
[00039f0a] 4e93                      jsr        (a3)
[00039f0c] 544f                      addq.w     #2,a7
[00039f0e] 265f                      movea.l    (a7)+,a3
[00039f10] 245f                      movea.l    (a7)+,a2
[00039f12] 4e75                      rts
Apd_info:
[00039f14] 2f0a                      move.l     a2,-(a7)
[00039f16] 2f0b                      move.l     a3,-(a7)
[00039f18] 45f9 0010 1f12            lea.l      ACSblk,a2
[00039f1e] 2052                      movea.l    (a2),a0
[00039f20] 3028 0246                 move.w     582(a0),d0
[00039f24] 6608                      bne.s      $00039F2E
[00039f26] 2068 029c                 movea.l    668(a0),a0
[00039f2a] 4e90                      jsr        (a0)
[00039f2c] 601e                      bra.s      $00039F4C
[00039f2e] 2052                      movea.l    (a2),a0
[00039f30] 2268 0258                 movea.l    600(a0),a1
[00039f34] 2668 0240                 movea.l    576(a0),a3
[00039f38] b3cb                      cmpa.l     a3,a1
[00039f3a] 6710                      beq.s      $00039F4C
[00039f3c] b7c9                      cmpa.l     a1,a3
[00039f3e] 670c                      beq.s      $00039F4C
[00039f40] 700f                      moveq.l    #15,d0
[00039f42] 246b 0004                 movea.l    4(a3),a2
[00039f46] 204b                      movea.l    a3,a0
[00039f48] 93c9                      suba.l     a1,a1
[00039f4a] 4e92                      jsr        (a2)
[00039f4c] 265f                      movea.l    (a7)+,a3
[00039f4e] 245f                      movea.l    (a7)+,a2
[00039f50] 4e75                      rts
Apd_list:
[00039f52] 2f0a                      move.l     a2,-(a7)
[00039f54] 2f0b                      move.l     a3,-(a7)
[00039f56] 554f                      subq.w     #2,a7
[00039f58] 42a7                      clr.l      -(a7)
[00039f5a] 42a7                      clr.l      -(a7)
[00039f5c] 42a7                      clr.l      -(a7)
[00039f5e] 486f 000c                 pea.l      12(a7)
[00039f62] 720a                      moveq.l    #10,d1
[00039f64] 4240                      clr.w      d0
[00039f66] 4eb9 0007 14ea            jsr        $000714EA
[00039f6c] 4fef 0010                 lea.l      16(a7),a7
[00039f70] 3017                      move.w     (a7),d0
[00039f72] 4eb9 0004 e5ea            jsr        $0004E5EA
[00039f78] 2448                      movea.l    a0,a2
[00039f7a] 4eb9 0004 ef2a            jsr        $0004EF2A
[00039f80] 2648                      movea.l    a0,a3
[00039f82] b5c8                      cmpa.l     a0,a2
[00039f84] 6608                      bne.s      $00039F8E
[00039f86] 4eb9 0004 ef2a            jsr        $0004EF2A
[00039f8c] 2648                      movea.l    a0,a3
[00039f8e] 200a                      move.l     a2,d0
[00039f90] 6714                      beq.s      $00039FA6
[00039f92] 6008                      bra.s      $00039F9C
[00039f94] 4eb9 0004 ef2a            jsr        $0004EF2A
[00039f9a] 2648                      movea.l    a0,a3
[00039f9c] b7ca                      cmpa.l     a2,a3
[00039f9e] 6706                      beq.s      $00039FA6
[00039fa0] 302b 0020                 move.w     32(a3),d0
[00039fa4] 6fee                      ble.s      $00039F94
[00039fa6] 200b                      move.l     a3,d0
[00039fa8] 670e                      beq.s      $00039FB8
[00039faa] 322b 0020                 move.w     32(a3),d1
[00039fae] 6f08                      ble.s      $00039FB8
[00039fb0] 204b                      movea.l    a3,a0
[00039fb2] 4eb9 0004 f0ca            jsr        $0004F0CA
[00039fb8] 544f                      addq.w     #2,a7
[00039fba] 265f                      movea.l    (a7)+,a3
[00039fbc] 245f                      movea.l    (a7)+,a2
[00039fbe] 4e75                      rts
Apd_module:
[00039fc0] 2039 000c 2f70            move.l     $000C2F70,d0
[00039fc6] 6708                      beq.s      $00039FD0
[00039fc8] 2040                      movea.l    d0,a0
[00039fca] 4eb9 0004 f0ca            jsr        $0004F0CA
[00039fd0] 4e75                      rts
Apd_new:
[00039fd2] 91c8                      suba.l     a0,a0
[00039fd4] 4eb9 0003 a240            jsr        $0003A240
[00039fda] 4e75                      rts
Apd_open:
[00039fdc] 2f0a                      move.l     a2,-(a7)
[00039fde] 2f0b                      move.l     a3,-(a7)
[00039fe0] 2079 0010 1f12            movea.l    ACSblk,a0
[00039fe6] 3028 0246                 move.w     582(a0),d0
[00039fea] 6e0a                      bgt.s      $00039FF6
[00039fec] 91c8                      suba.l     a0,a0
[00039fee] 4eb9 0003 a240            jsr        $0003A240
[00039ff4] 601c                      bra.s      $0003A012
[00039ff6] 2079 0010 1f12            movea.l    ACSblk,a0
[00039ffc] 2468 0240                 movea.l    576(a0),a2
[0003a000] b5e8 0258                 cmpa.l     600(a0),a2
[0003a004] 670c                      beq.s      $0003A012
[0003a006] 93c9                      suba.l     a1,a1
[0003a008] 700a                      moveq.l    #10,d0
[0003a00a] 266a 0004                 movea.l    4(a2),a3
[0003a00e] 204a                      movea.l    a2,a0
[0003a010] 4e93                      jsr        (a3)
[0003a012] 265f                      movea.l    (a7)+,a3
[0003a014] 245f                      movea.l    (a7)+,a2
[0003a016] 4e75                      rts
Apd_quit:
[0003a018] 2079 0010 1f12            movea.l    ACSblk,a0
[0003a01e] 2068 02a0                 movea.l    672(a0),a0
[0003a022] 4e90                      jsr        (a0)
[0003a024] 4e75                      rts
open_one_file:
[0003a026] 2f0a                      move.l     a2,-(a7)
[0003a028] 2f0b                      move.l     a3,-(a7)
[0003a02a] 4fef ff00                 lea.l      -256(a7),a7
[0003a02e] 2448                      movea.l    a0,a2
[0003a030] 2649                      movea.l    a1,a3
[0003a032] 43f9 000c 3f20            lea.l      $000C3F20,a1
[0003a038] 41d7                      lea.l      (a7),a0
[0003a03a] 303c 00ff                 move.w     #$00FF,d0
[0003a03e] 10d9                      move.b     (a1)+,(a0)+
[0003a040] 51c8 fffc                 dbf        d0,$0003A03E
[0003a044] 200a                      move.l     a2,d0
[0003a046] 672c                      beq.s      $0003A074
[0003a048] 222a 0114                 move.l     276(a2),d1
[0003a04c] 6726                      beq.s      $0003A074
[0003a04e] 204b                      movea.l    a3,a0
[0003a050] 4eb9 0004 3a92            jsr        $00043A92
[0003a056] 4a40                      tst.w      d0
[0003a058] 660a                      bne.s      $0003A064
[0003a05a] 224b                      movea.l    a3,a1
[0003a05c] 41d7                      lea.l      (a7),a0
[0003a05e] 4eb9 0004 7aaa            jsr        $00047AAA
[0003a064] 200b                      move.l     a3,d0
[0003a066] 6704                      beq.s      $0003A06C
[0003a068] 41d7                      lea.l      (a7),a0
[0003a06a] 6002                      bra.s      $0003A06E
[0003a06c] 91c8                      suba.l     a0,a0
[0003a06e] 226a 0114                 movea.l    276(a2),a1
[0003a072] 4e91                      jsr        (a1)
[0003a074] 4fef 0100                 lea.l      256(a7),a7
[0003a078] 265f                      movea.l    (a7)+,a3
[0003a07a] 245f                      movea.l    (a7)+,a2
[0003a07c] 4e75                      rts
open_files:
[0003a07e] 48e7 0038                 movem.l    a2-a4,-(a7)
[0003a082] 2448                      movea.l    a0,a2
[0003a084] 2849                      movea.l    a1,a4
[0003a086] 200a                      move.l     a2,d0
[0003a088] 674e                      beq.s      $0003A0D8
[0003a08a] 222a 0114                 move.l     276(a2),d1
[0003a08e] 6748                      beq.s      $0003A0D8
[0003a090] 97cb                      suba.l     a3,a3
[0003a092] 2049                      movea.l    a1,a0
[0003a094] 4eb9 0004 7b12            jsr        $00047B12
[0003a09a] 2648                      movea.l    a0,a3
[0003a09c] 200b                      move.l     a3,d0
[0003a09e] 6730                      beq.s      $0003A0D0
[0003a0a0] 226b 0038                 movea.l    56(a3),a1
[0003a0a4] 4e91                      jsr        (a1)
[0003a0a6] 4a80                      tst.l      d0
[0003a0a8] 6f14                      ble.s      $0003A0BE
[0003a0aa] 487a ff7a                 pea.l      $0003A026(pc)
[0003a0ae] 42a7                      clr.l      -(a7)
[0003a0b0] 224a                      movea.l    a2,a1
[0003a0b2] 204b                      movea.l    a3,a0
[0003a0b4] 286b 0040                 movea.l    64(a3),a4
[0003a0b8] 4e94                      jsr        (a4)
[0003a0ba] 504f                      addq.w     #8,a7
[0003a0bc] 6008                      bra.s      $0003A0C6
[0003a0be] 93c9                      suba.l     a1,a1
[0003a0c0] 204a                      movea.l    a2,a0
[0003a0c2] 6100 ff62                 bsr        $0003A026
[0003a0c6] 204b                      movea.l    a3,a0
[0003a0c8] 4eb9 0006 2aa6            jsr        $00062AA6
[0003a0ce] 6008                      bra.s      $0003A0D8
[0003a0d0] 93c9                      suba.l     a1,a1
[0003a0d2] 204a                      movea.l    a2,a0
[0003a0d4] 6100 ff50                 bsr        $0003A026
[0003a0d8] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0003a0dc] 4e75                      rts
OpenDraggedFiles:
[0003a0de] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0003a0e2] 2a48                      movea.l    a0,a5
[0003a0e4] 2279 0010 1f12            movea.l    ACSblk,a1
[0003a0ea] 2469 0240                 movea.l    576(a1),a2
[0003a0ee] 0c69 0001 0246            cmpi.w     #$0001,582(a1)
[0003a0f4] 6d00 0090                 blt        $0003A186
[0003a0f8] 4eb9 0004 4840            jsr        $00044840
[0003a0fe] 6000 0078                 bra.w      $0003A178
[0003a102] 3003                      move.w     d3,d0
[0003a104] c07c 1000                 and.w      #$1000,d0
[0003a108] 6720                      beq.s      $0003A12A
[0003a10a] 222a 0018                 move.l     24(a2),d1
[0003a10e] 6716                      beq.s      $0003A126
[0003a110] 3003                      move.w     d3,d0
[0003a112] c07c 0fff                 and.w      #$0FFF,d0
[0003a116] 48c0                      ext.l      d0
[0003a118] 2400                      move.l     d0,d2
[0003a11a] d482                      add.l      d2,d2
[0003a11c] d480                      add.l      d0,d2
[0003a11e] e78a                      lsl.l      #3,d2
[0003a120] 2641                      movea.l    d1,a3
[0003a122] d7c2                      adda.l     d2,a3
[0003a124] 6002                      bra.s      $0003A128
[0003a126] 97cb                      suba.l     a3,a3
[0003a128] 601a                      bra.s      $0003A144
[0003a12a] 202a 0014                 move.l     20(a2),d0
[0003a12e] 6712                      beq.s      $0003A142
[0003a130] 3403                      move.w     d3,d2
[0003a132] 48c2                      ext.l      d2
[0003a134] 2202                      move.l     d2,d1
[0003a136] d281                      add.l      d1,d1
[0003a138] d282                      add.l      d2,d1
[0003a13a] e789                      lsl.l      #3,d1
[0003a13c] 2640                      movea.l    d0,a3
[0003a13e] d7c1                      adda.l     d1,a3
[0003a140] 6002                      bra.s      $0003A144
[0003a142] 97cb                      suba.l     a3,a3
[0003a144] 200b                      move.l     a3,d0
[0003a146] 6718                      beq.s      $0003A160
[0003a148] 7220                      moveq.l    #32,d1
[0003a14a] c26b 0008                 and.w      8(a3),d1
[0003a14e] 6610                      bne.s      $0003A160
[0003a150] 342b 0020                 move.w     32(a3),d2
[0003a154] c47c 8000                 and.w      #$8000,d2
[0003a158] 6706                      beq.s      $0003A160
[0003a15a] 49eb 0018                 lea.l      24(a3),a4
[0003a15e] 6002                      bra.s      $0003A162
[0003a160] 99cc                      suba.l     a4,a4
[0003a162] 200c                      move.l     a4,d0
[0003a164] 6712                      beq.s      $0003A178
[0003a166] 0c6c 0014 0016            cmpi.w     #$0014,22(a4)
[0003a16c] 660a                      bne.s      $0003A178
[0003a16e] 226c 000c                 movea.l    12(a4),a1
[0003a172] 204d                      movea.l    a5,a0
[0003a174] 6100 ff08                 bsr        $0003A07E
[0003a178] 4eb9 0004 484c            jsr        $0004484C
[0003a17e] 3600                      move.w     d0,d3
[0003a180] 5240                      addq.w     #1,d0
[0003a182] 6600 ff7e                 bne        $0003A102
[0003a186] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0003a18a] 4e75                      rts
CheckDraggedFiles:
[0003a18c] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0003a190] 2648                      movea.l    a0,a3
[0003a192] 2279 0010 1f12            movea.l    ACSblk,a1
[0003a198] 2469 0240                 movea.l    576(a1),a2
[0003a19c] 0c69 0001 0246            cmpi.w     #$0001,582(a1)
[0003a1a2] 6c08                      bge.s      $0003A1AC
[0003a1a4] 4250                      clr.w      (a0)
[0003a1a6] 4240                      clr.w      d0
[0003a1a8] 6000 0090                 bra        $0003A23A
[0003a1ac] 4eb9 0004 4840            jsr        $00044840
[0003a1b2] 6000 0074                 bra.w      $0003A228
[0003a1b6] 3003                      move.w     d3,d0
[0003a1b8] c07c 1000                 and.w      #$1000,d0
[0003a1bc] 6720                      beq.s      $0003A1DE
[0003a1be] 222a 0018                 move.l     24(a2),d1
[0003a1c2] 6716                      beq.s      $0003A1DA
[0003a1c4] 3003                      move.w     d3,d0
[0003a1c6] c07c 0fff                 and.w      #$0FFF,d0
[0003a1ca] 48c0                      ext.l      d0
[0003a1cc] 2400                      move.l     d0,d2
[0003a1ce] d482                      add.l      d2,d2
[0003a1d0] d480                      add.l      d0,d2
[0003a1d2] e78a                      lsl.l      #3,d2
[0003a1d4] 2841                      movea.l    d1,a4
[0003a1d6] d9c2                      adda.l     d2,a4
[0003a1d8] 6002                      bra.s      $0003A1DC
[0003a1da] 99cc                      suba.l     a4,a4
[0003a1dc] 601a                      bra.s      $0003A1F8
[0003a1de] 202a 0014                 move.l     20(a2),d0
[0003a1e2] 6712                      beq.s      $0003A1F6
[0003a1e4] 3403                      move.w     d3,d2
[0003a1e6] 48c2                      ext.l      d2
[0003a1e8] 2202                      move.l     d2,d1
[0003a1ea] d281                      add.l      d1,d1
[0003a1ec] d282                      add.l      d2,d1
[0003a1ee] e789                      lsl.l      #3,d1
[0003a1f0] 2840                      movea.l    d0,a4
[0003a1f2] d9c1                      adda.l     d1,a4
[0003a1f4] 6002                      bra.s      $0003A1F8
[0003a1f6] 99cc                      suba.l     a4,a4
[0003a1f8] 200c                      move.l     a4,d0
[0003a1fa] 6718                      beq.s      $0003A214
[0003a1fc] 7220                      moveq.l    #32,d1
[0003a1fe] c26c 0008                 and.w      8(a4),d1
[0003a202] 6610                      bne.s      $0003A214
[0003a204] 342c 0020                 move.w     32(a4),d2
[0003a208] c47c 8000                 and.w      #$8000,d2
[0003a20c] 6706                      beq.s      $0003A214
[0003a20e] 4bec 0018                 lea.l      24(a4),a5
[0003a212] 6002                      bra.s      $0003A216
[0003a214] 9bcd                      suba.l     a5,a5
[0003a216] 200d                      move.l     a5,d0
[0003a218] 670e                      beq.s      $0003A228
[0003a21a] 0c6d 0014 0016            cmpi.w     #$0014,22(a5)
[0003a220] 6606                      bne.s      $0003A228
[0003a222] 36bc 0001                 move.w     #$0001,(a3)
[0003a226] 6010                      bra.s      $0003A238
[0003a228] 4eb9 0004 484c            jsr        $0004484C
[0003a22e] 3600                      move.w     d0,d3
[0003a230] 5240                      addq.w     #1,d0
[0003a232] 6600 ff82                 bne.w      $0003A1B6
[0003a236] 4253                      clr.w      (a3)
[0003a238] 7001                      moveq.l    #1,d0
[0003a23a] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0003a23e] 4e75                      rts
new_call:
[0003a240] 2f0a                      move.l     a2,-(a7)
[0003a242] 2f0b                      move.l     a3,-(a7)
[0003a244] 2648                      movea.l    a0,a3
[0003a246] 2039 000c 2f70            move.l     $000C2F70,d0
[0003a24c] 670c                      beq.s      $0003A25A
[0003a24e] 2240                      movea.l    d0,a1
[0003a250] 2451                      movea.l    (a1),a2
[0003a252] 204a                      movea.l    a2,a0
[0003a254] 224b                      movea.l    a3,a1
[0003a256] 6100 fe26                 bsr        $0003A07E
[0003a25a] 265f                      movea.l    (a7)+,a3
[0003a25c] 245f                      movea.l    (a7)+,a2
[0003a25e] 4e75                      rts
build_work:
[0003a260] 48e7 103e                 movem.l    d3/a2-a6,-(a7)
[0003a264] 5d4f                      subq.w     #6,a7
[0003a266] 426f 0004                 clr.w      4(a7)
[0003a26a] 203c 0000 3018            move.l     #$00003018,d0
[0003a270] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003a276] 2648                      movea.l    a0,a3
[0003a278] 284b                      movea.l    a3,a4
[0003a27a] 200c                      move.l     a4,d0
[0003a27c] 6700 009a                 beq        $0003A318
[0003a280] 45f9 000c 3ca4            lea.l      $000C3CA4,a2
[0003a286] 7018                      moveq.l    #24,d0
[0003a288] 224a                      movea.l    a2,a1
[0003a28a] 204c                      movea.l    a4,a0
[0003a28c] 4eb9 0007 6f44            jsr        $00076F44
[0003a292] 4bea 0018                 lea.l      24(a2),a5
[0003a296] 49ec 0018                 lea.l      24(a4),a4
[0003a29a] 4243                      clr.w      d3
[0003a29c] 6000 00aa                 bra        $0003A348
[0003a2a0] 7018                      moveq.l    #24,d0
[0003a2a2] 224d                      movea.l    a5,a1
[0003a2a4] 204c                      movea.l    a4,a0
[0003a2a6] 4eb9 0007 6f44            jsr        $00076F44
[0003a2ac] 7018                      moveq.l    #24,d0
[0003a2ae] 43ed 0018                 lea.l      24(a5),a1
[0003a2b2] 41ec 0018                 lea.l      24(a4),a0
[0003a2b6] 4eb9 0007 6f44            jsr        $00076F44
[0003a2bc] 102c 0007                 move.b     7(a4),d0
[0003a2c0] 4880                      ext.w      d0
[0003a2c2] 907c 0018                 sub.w      #$0018,d0
[0003a2c6] 670a                      beq.s      $0003A2D2
[0003a2c8] 5f40                      subq.w     #7,d0
[0003a2ca] 6738                      beq.s      $0003A304
[0003a2cc] 5540                      subq.w     #2,d0
[0003a2ce] 6734                      beq.s      $0003A304
[0003a2d0] 6042                      bra.s      $0003A314
[0003a2d2] 206c 000c                 movea.l    12(a4),a0
[0003a2d6] 4eb9 0004 a1f0            jsr        $0004A1F0
[0003a2dc] 2448                      movea.l    a0,a2
[0003a2de] 2e88                      move.l     a0,(a7)
[0003a2e0] 2948 000c                 move.l     a0,12(a4)
[0003a2e4] 200a                      move.l     a2,d0
[0003a2e6] 672c                      beq.s      $0003A314
[0003a2e8] 222a 0008                 move.l     8(a2),d1
[0003a2ec] 6726                      beq.s      $0003A314
[0003a2ee] 43ef 0004                 lea.l      4(a7),a1
[0003a2f2] 2c41                      movea.l    d1,a6
[0003a2f4] 204c                      movea.l    a4,a0
[0003a2f6] 7001                      moveq.l    #1,d0
[0003a2f8] 4e96                      jsr        (a6)
[0003a2fa] 0c6f ffff 0004            cmpi.w     #$FFFF,4(a7)
[0003a300] 6716                      beq.s      $0003A318
[0003a302] 6010                      bra.s      $0003A314
[0003a304] 206c 000c                 movea.l    12(a4),a0
[0003a308] 4eb9 0004 9e38            jsr        $00049E38
[0003a30e] 2e88                      move.l     a0,(a7)
[0003a310] 2948 000c                 move.l     a0,12(a4)
[0003a314] 2017                      move.l     (a7),d0
[0003a316] 6606                      bne.s      $0003A31E
[0003a318] 91c8                      suba.l     a0,a0
[0003a31a] 6000 007e                 bra.w      $0003A39A
[0003a31e] 006c 0080 0008            ori.w      #$0080,8(a4)
[0003a324] 026c ffdf 0008            andi.w     #$FFDF,8(a4)
[0003a32a] 026c ffdf 0020            andi.w     #$FFDF,32(a4)
[0003a330] 70ff                      moveq.l    #-1,d0
[0003a332] 3940 0004                 move.w     d0,4(a4)
[0003a336] 3940 0002                 move.w     d0,2(a4)
[0003a33a] 3203                      move.w     d3,d1
[0003a33c] d241                      add.w      d1,d1
[0003a33e] 5641                      addq.w     #3,d1
[0003a340] 3881                      move.w     d1,(a4)
[0003a342] 49ec 0030                 lea.l      48(a4),a4
[0003a346] 5243                      addq.w     #1,d3
[0003a348] b67c 0100                 cmp.w      #$0100,d3
[0003a34c] 6d00 ff52                 blt        $0003A2A0
[0003a350] 49ec ffd0                 lea.l      -48(a4),a4
[0003a354] 006c 0020 0020            ori.w      #$0020,32(a4)
[0003a35a] 4254                      clr.w      (a4)
[0003a35c] 36bc ffff                 move.w     #$FFFF,(a3)
[0003a360] 377c 0001 0002            move.w     #$0001,2(a3)
[0003a366] 377c 01ff 0004            move.w     #$01FF,4(a3)
[0003a36c] 376c 0016 0016            move.w     22(a4),22(a3)
[0003a372] 0c6d 000c 0014            cmpi.w     #$000C,20(a5)
[0003a378] 6c04                      bge.s      $0003A37E
[0003a37a] 700c                      moveq.l    #12,d0
[0003a37c] 6004                      bra.s      $0003A382
[0003a37e] 302d 0014                 move.w     20(a5),d0
[0003a382] 3740 0014                 move.w     d0,20(a3)
[0003a386] 7201                      moveq.l    #1,d1
[0003a388] 3741 002a                 move.w     d1,42(a3)
[0003a38c] 3741 0028                 move.w     d1,40(a3)
[0003a390] 204b                      movea.l    a3,a0
[0003a392] 4eb9 0004 a25e            jsr        $0004A25E
[0003a398] 204b                      movea.l    a3,a0
[0003a39a] 5c4f                      addq.w     #6,a7
[0003a39c] 4cdf 7c08                 movem.l    (a7)+,d3/a2-a6
[0003a3a0] 4e75                      rts
click_modwin:
[0003a3a2] 2f0a                      move.l     a2,-(a7)
[0003a3a4] 2f0b                      move.l     a3,-(a7)
[0003a3a6] 45f9 0010 1f12            lea.l      ACSblk,a2
[0003a3ac] 2052                      movea.l    (a2),a0
[0003a3ae] 3228 0260                 move.w     608(a0),d1
[0003a3b2] 48c1                      ext.l      d1
[0003a3b4] 2001                      move.l     d1,d0
[0003a3b6] d080                      add.l      d0,d0
[0003a3b8] d081                      add.l      d1,d0
[0003a3ba] e788                      lsl.l      #3,d0
[0003a3bc] 2068 025c                 movea.l    604(a0),a0
[0003a3c0] 41f0 0818                 lea.l      24(a0,d0.l),a0
[0003a3c4] 2668 000c                 movea.l    12(a0),a3
[0003a3c8] 240b                      move.l     a3,d2
[0003a3ca] 6700 00ae                 beq        $0003A47A
[0003a3ce] 342b 0020                 move.w     32(a3),d2
[0003a3d2] 6f00 007c                 ble.w      $0003A450
[0003a3d6] 2252                      movea.l    (a2),a1
[0003a3d8] 2069 025c                 movea.l    604(a1),a0
[0003a3dc] 3230 080a                 move.w     10(a0,d0.l),d1
[0003a3e0] c27c 4000                 and.w      #$4000,d1
[0003a3e4] 676a                      beq.s      $0003A450
[0003a3e6] 3429 0008                 move.w     8(a1),d2
[0003a3ea] 3029 000c                 move.w     12(a1),d0
[0003a3ee] e240                      asr.w      #1,d0
[0003a3f0] d069 0008                 add.w      8(a1),d0
[0003a3f4] 322b 0028                 move.w     40(a3),d1
[0003a3f8] e241                      asr.w      #1,d1
[0003a3fa] 9041                      sub.w      d1,d0
[0003a3fc] b440                      cmp.w      d0,d2
[0003a3fe] 6f02                      ble.s      $0003A402
[0003a400] 6014                      bra.s      $0003A416
[0003a402] 2052                      movea.l    (a2),a0
[0003a404] 3428 000c                 move.w     12(a0),d2
[0003a408] e242                      asr.w      #1,d2
[0003a40a] d468 0008                 add.w      8(a0),d2
[0003a40e] 302b 0028                 move.w     40(a3),d0
[0003a412] e240                      asr.w      #1,d0
[0003a414] 9440                      sub.w      d0,d2
[0003a416] 3742 0024                 move.w     d2,36(a3)
[0003a41a] 2052                      movea.l    (a2),a0
[0003a41c] 3028 000a                 move.w     10(a0),d0
[0003a420] 3228 000e                 move.w     14(a0),d1
[0003a424] e241                      asr.w      #1,d1
[0003a426] d268 000a                 add.w      10(a0),d1
[0003a42a] 342b 002a                 move.w     42(a3),d2
[0003a42e] e242                      asr.w      #1,d2
[0003a430] 9242                      sub.w      d2,d1
[0003a432] b041                      cmp.w      d1,d0
[0003a434] 6f02                      ble.s      $0003A438
[0003a436] 6014                      bra.s      $0003A44C
[0003a438] 2052                      movea.l    (a2),a0
[0003a43a] 3028 000e                 move.w     14(a0),d0
[0003a43e] e240                      asr.w      #1,d0
[0003a440] d068 000a                 add.w      10(a0),d0
[0003a444] 322b 002a                 move.w     42(a3),d1
[0003a448] e241                      asr.w      #1,d1
[0003a44a] 9041                      sub.w      d1,d0
[0003a44c] 3740 0026                 move.w     d0,38(a3)
[0003a450] 302b 0020                 move.w     32(a3),d0
[0003a454] 6f1c                      ble.s      $0003A472
[0003a456] 006b 0010 0056            ori.w      #$0010,86(a3)
[0003a45c] 43eb 0024                 lea.l      36(a3),a1
[0003a460] 204b                      movea.l    a3,a0
[0003a462] 246b 0086                 movea.l    134(a3),a2
[0003a466] 4e92                      jsr        (a2)
[0003a468] 204b                      movea.l    a3,a0
[0003a46a] 226b 006e                 movea.l    110(a3),a1
[0003a46e] 4e91                      jsr        (a1)
[0003a470] 6008                      bra.s      $0003A47A
[0003a472] 204b                      movea.l    a3,a0
[0003a474] 4eb9 0004 f0ca            jsr        $0004F0CA
[0003a47a] 265f                      movea.l    (a7)+,a3
[0003a47c] 245f                      movea.l    (a7)+,a2
[0003a47e] 4e75                      rts
drag_modwin:
[0003a480] 2f0a                      move.l     a2,-(a7)
[0003a482] 2f0b                      move.l     a3,-(a7)
[0003a484] 2079 0010 1f12            movea.l    ACSblk,a0
[0003a48a] 3228 0260                 move.w     608(a0),d1
[0003a48e] 48c1                      ext.l      d1
[0003a490] 2001                      move.l     d1,d0
[0003a492] d080                      add.l      d0,d0
[0003a494] d081                      add.l      d1,d0
[0003a496] e788                      lsl.l      #3,d0
[0003a498] 2068 025c                 movea.l    604(a0),a0
[0003a49c] 41f0 0818                 lea.l      24(a0,d0.l),a0
[0003a4a0] 2468 000c                 movea.l    12(a0),a2
[0003a4a4] 240a                      move.l     a2,d2
[0003a4a6] 670c                      beq.s      $0003A4B4
[0003a4a8] 93c9                      suba.l     a1,a1
[0003a4aa] 266a 0004                 movea.l    4(a2),a3
[0003a4ae] 204a                      movea.l    a2,a0
[0003a4b0] 7010                      moveq.l    #16,d0
[0003a4b2] 4e93                      jsr        (a3)
[0003a4b4] 265f                      movea.l    (a7)+,a3
[0003a4b6] 245f                      movea.l    (a7)+,a2
[0003a4b8] 4e75                      rts
mod_deldrag:
[0003a4ba] 2f0a                      move.l     a2,-(a7)
[0003a4bc] 93c9                      suba.l     a1,a1
[0003a4be] 700b                      moveq.l    #11,d0
[0003a4c0] 2079 0010 1f12            movea.l    ACSblk,a0
[0003a4c6] 2068 0240                 movea.l    576(a0),a0
[0003a4ca] 2479 0010 1f12            movea.l    ACSblk,a2
[0003a4d0] 246a 0240                 movea.l    576(a2),a2
[0003a4d4] 246a 0004                 movea.l    4(a2),a2
[0003a4d8] 4e92                      jsr        (a2)
[0003a4da] 245f                      movea.l    (a7)+,a2
[0003a4dc] 4e75                      rts
mod_delete:
[0003a4de] 2f0a                      move.l     a2,-(a7)
[0003a4e0] 93c9                      suba.l     a1,a1
[0003a4e2] 700b                      moveq.l    #11,d0
[0003a4e4] 2079 0010 1f12            movea.l    ACSblk,a0
[0003a4ea] 2068 0258                 movea.l    600(a0),a0
[0003a4ee] 2479 0010 1f12            movea.l    ACSblk,a2
[0003a4f4] 246a 0258                 movea.l    600(a2),a2
[0003a4f8] 246a 0004                 movea.l    4(a2),a2
[0003a4fc] 4e92                      jsr        (a2)
[0003a4fe] 245f                      movea.l    (a7)+,a2
[0003a500] 4e75                      rts
mod_info:
[0003a502] 2f0a                      move.l     a2,-(a7)
[0003a504] 93c9                      suba.l     a1,a1
[0003a506] 700f                      moveq.l    #15,d0
[0003a508] 2079 0010 1f12            movea.l    ACSblk,a0
[0003a50e] 2068 0258                 movea.l    600(a0),a0
[0003a512] 2479 0010 1f12            movea.l    ACSblk,a2
[0003a518] 246a 0258                 movea.l    600(a2),a2
[0003a51c] 246a 0004                 movea.l    4(a2),a2
[0003a520] 4e92                      jsr        (a2)
[0003a522] 245f                      movea.l    (a7)+,a2
[0003a524] 4e75                      rts
mod_infodrag:
[0003a526] 2f0a                      move.l     a2,-(a7)
[0003a528] 93c9                      suba.l     a1,a1
[0003a52a] 700f                      moveq.l    #15,d0
[0003a52c] 2079 0010 1f12            movea.l    ACSblk,a0
[0003a532] 2068 0240                 movea.l    576(a0),a0
[0003a536] 2479 0010 1f12            movea.l    ACSblk,a2
[0003a53c] 246a 0240                 movea.l    576(a2),a2
[0003a540] 246a 0004                 movea.l    4(a2),a2
[0003a544] 4e92                      jsr        (a2)
[0003a546] 245f                      movea.l    (a7)+,a2
[0003a548] 4e75                      rts
load_mod:
[0003a54a] 2f0a                      move.l     a2,-(a7)
[0003a54c] 2f0b                      move.l     a3,-(a7)
[0003a54e] 2648                      movea.l    a0,a3
[0003a550] 2449                      movea.l    a1,a2
[0003a552] 2049                      movea.l    a1,a0
[0003a554] 4eb9 0006 312a            jsr        $0006312A
[0003a55a] 224a                      movea.l    a2,a1
[0003a55c] 41eb 0004                 lea.l      4(a3),a0
[0003a560] 4eb9 0007 6950            jsr        $00076950
[0003a566] 265f                      movea.l    (a7)+,a3
[0003a568] 245f                      movea.l    (a7)+,a2
[0003a56a] 4e75                      rts
mod_load:
[0003a56c] 48e7 0038                 movem.l    a2-a4,-(a7)
[0003a570] 4fef ff00                 lea.l      -256(a7),a7
[0003a574] 2079 0010 1f12            movea.l    ACSblk,a0
[0003a57a] 2268 0258                 movea.l    600(a0),a1
[0003a57e] 2451                      movea.l    (a1),a2
[0003a580] 43ea 0004                 lea.l      4(a2),a1
[0003a584] 41d7                      lea.l      (a7),a0
[0003a586] 4eb9 0007 6950            jsr        $00076950
[0003a58c] 42a7                      clr.l      -(a7)
[0003a58e] 4879 000c 4040            pea.l      $000C4040
[0003a594] 7201                      moveq.l    #1,d1
[0003a596] 4240                      clr.w      d0
[0003a598] 43ef 0008                 lea.l      8(a7),a1
[0003a59c] 41f9 000c 2ffd            lea.l      $000C2FFD,a0
[0003a5a2] 4eb9 0006 08a6            jsr        $000608A6
[0003a5a8] 504f                      addq.w     #8,a7
[0003a5aa] 2648                      movea.l    a0,a3
[0003a5ac] 200b                      move.l     a3,d0
[0003a5ae] 6718                      beq.s      $0003A5C8
[0003a5b0] 487a ff98                 pea.l      $0003A54A(pc)
[0003a5b4] 42a7                      clr.l      -(a7)
[0003a5b6] 224a                      movea.l    a2,a1
[0003a5b8] 286b 0040                 movea.l    64(a3),a4
[0003a5bc] 4e94                      jsr        (a4)
[0003a5be] 504f                      addq.w     #8,a7
[0003a5c0] 204b                      movea.l    a3,a0
[0003a5c2] 4eb9 0006 2aa6            jsr        $00062AA6
[0003a5c8] 4fef 0100                 lea.l      256(a7),a7
[0003a5cc] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0003a5d0] 4e75                      rts
modul_close:
[0003a5d2] 2f0a                      move.l     a2,-(a7)
[0003a5d4] 2f0b                      move.l     a3,-(a7)
[0003a5d6] 2448                      movea.l    a0,a2
[0003a5d8] 006a 0100 0056            ori.w      #$0100,86(a2)
[0003a5de] 2650                      movea.l    (a0),a3
[0003a5e0] 7008                      moveq.l    #8,d0
[0003a5e2] 43ea 0024                 lea.l      36(a2),a1
[0003a5e6] 41eb 0106                 lea.l      262(a3),a0
[0003a5ea] 4eb9 0007 6f44            jsr        $00076F44
[0003a5f0] 204a                      movea.l    a2,a0
[0003a5f2] 4eb9 0005 013e            jsr        $0005013E
[0003a5f8] 026a feff 0056            andi.w     #$FEFF,86(a2)
[0003a5fe] 265f                      movea.l    (a7)+,a3
[0003a600] 245f                      movea.l    (a7)+,a2
[0003a602] 4e75                      rts
modul_make:
[0003a604] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[0003a608] 554f                      subq.w     #2,a7
[0003a60a] 7600                      moveq.l    #0,d3
[0003a60c] 203c 0000 0118            move.l     #$00000118,d0
[0003a612] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003a618] 2448                      movea.l    a0,a2
[0003a61a] 4df9 0010 1f12            lea.l      ACSblk,a6
[0003a620] 200a                      move.l     a2,d0
[0003a622] 6700 0174                 beq        $0003A798
[0003a626] 223c 0000 0118            move.l     #$00000118,d1
[0003a62c] 204a                      movea.l    a2,a0
[0003a62e] 4240                      clr.w      d0
[0003a630] 4eb9 0007 712e            jsr        $0007712E
[0003a636] 47f9 000c 4040            lea.l      $000C4040,a3
[0003a63c] 41eb 0008                 lea.l      8(a3),a0
[0003a640] 4eb9 0004 7066            jsr        $00047066
[0003a646] 4240                      clr.w      d0
[0003a648] 4eb9 0007 29f0            jsr        $000729F0
[0003a64e] 2800                      move.l     d0,d4
[0003a650] 4a80                      tst.l      d0
[0003a652] 6a14                      bpl.s      $0003A668
[0003a654] 41eb 000e                 lea.l      14(a3),a0
[0003a658] 4eb9 0004 7066            jsr        $00047066
[0003a65e] 4240                      clr.w      d0
[0003a660] 4eb9 0007 29f0            jsr        $000729F0
[0003a666] 2800                      move.l     d0,d4
[0003a668] 4a84                      tst.l      d4
[0003a66a] 6f1a                      ble.s      $0003A686
[0003a66c] 204a                      movea.l    a2,a0
[0003a66e] 223c 0000 0114            move.l     #$00000114,d1
[0003a674] 3004                      move.w     d4,d0
[0003a676] 4eb9 0007 2a02            jsr        $00072A02
[0003a67c] 2600                      move.l     d0,d3
[0003a67e] 3004                      move.w     d4,d0
[0003a680] 4eb9 0007 29ae            jsr        $000729AE
[0003a686] 49f9 000c 3e7e            lea.l      $000C3E7E,a4
[0003a68c] 206c ffa8                 movea.l    -88(a4),a0
[0003a690] b1fc 000c 3013            cmpa.l     #$000C3013,a0
[0003a696] 6704                      beq.s      $0003A69C
[0003a698] 2948 004a                 move.l     a0,74(a4)
[0003a69c] 204c                      movea.l    a4,a0
[0003a69e] 4eb9 0004 f41a            jsr        $0004F41A
[0003a6a4] 2a48                      movea.l    a0,a5
[0003a6a6] 294d f0f2                 move.l     a5,-3854(a4)
[0003a6aa] 200d                      move.l     a5,d0
[0003a6ac] 6700 00e2                 beq        $0003A790
[0003a6b0] 7204                      moveq.l    #4,d1
[0003a6b2] d283                      add.l      d3,d1
[0003a6b4] b2bc 0000 0118            cmp.l      #$00000118,d1
[0003a6ba] 660a                      bne.s      $0003A6C6
[0003a6bc] 0c92 5044 534b            cmpi.l     #$5044534B,(a2)
[0003a6c2] 6700 00a4                 beq        $0003A768
[0003a6c6] 223c 0000 0118            move.l     #$00000118,d1
[0003a6cc] 4240                      clr.w      d0
[0003a6ce] 204a                      movea.l    a2,a0
[0003a6d0] 4eb9 0007 712e            jsr        $0007712E
[0003a6d6] 2056                      movea.l    (a6),a0
[0003a6d8] 2268 023c                 movea.l    572(a0),a1
[0003a6dc] 3569 000e 0112            move.w     14(a1),274(a2)
[0003a6e2] 2056                      movea.l    (a6),a0
[0003a6e4] 1028 02d6                 move.b     726(a0),d0
[0003a6e8] 6712                      beq.s      $0003A6FC
[0003a6ea] 2248                      movea.l    a0,a1
[0003a6ec] 43e9 02d6                 lea.l      726(a1),a1
[0003a6f0] 41ea 0004                 lea.l      4(a2),a0
[0003a6f4] 4eb9 0007 6950            jsr        $00076950
[0003a6fa] 600e                      bra.s      $0003A70A
[0003a6fc] 43eb 0014                 lea.l      20(a3),a1
[0003a700] 41ea 0004                 lea.l      4(a2),a0
[0003a704] 4eb9 0007 6950            jsr        $00076950
[0003a70a] 0c2a 0043 0004            cmpi.b     #$43,4(a2)
[0003a710] 6c22                      bge.s      $0003A734
[0003a712] 4eb9 0007 2902            jsr        $00072902
[0003a718] 4eb9 0007 2978            jsr        $00072978
[0003a71e] c0bc 0000 0004            and.l      #$00000004,d0
[0003a724] 670e                      beq.s      $0003A734
[0003a726] 43eb 0018                 lea.l      24(a3),a1
[0003a72a] 41ea 0004                 lea.l      4(a2),a0
[0003a72e] 4eb9 0007 6950            jsr        $00076950
[0003a734] 2056                      movea.l    (a6),a0
[0003a736] 3028 0008                 move.w     8(a0),d0
[0003a73a] d068 0012                 add.w      18(a0),d0
[0003a73e] 3540 0106                 move.w     d0,262(a2)
[0003a742] 2056                      movea.l    (a6),a0
[0003a744] 3228 0008                 move.w     8(a0),d1
[0003a748] d268 0012                 add.w      18(a0),d1
[0003a74c] 3541 0106                 move.w     d1,262(a2)
[0003a750] 2056                      movea.l    (a6),a0
[0003a752] 3028 000c                 move.w     12(a0),d0
[0003a756] e240                      asr.w      #1,d0
[0003a758] 3540 010a                 move.w     d0,266(a2)
[0003a75c] 2056                      movea.l    (a6),a0
[0003a75e] 3228 000e                 move.w     14(a0),d1
[0003a762] e241                      asr.w      #1,d1
[0003a764] 3541 010c                 move.w     d1,268(a2)
[0003a768] 24bc 5044 534b            move.l     #$5044534B,(a2)
[0003a76e] 426a 0104                 clr.w      260(a2)
[0003a772] 297c 000c 300a 004a       move.l     #$000C300A,74(a4)
[0003a77a] 2a8a                      move.l     a2,(a5)
[0003a77c] 6100 fae2                 bsr        $0003A260
[0003a780] 2b48 0014                 move.l     a0,20(a5)
[0003a784] 2008                      move.l     a0,d0
[0003a786] 6616                      bne.s      $0003A79E
[0003a788] 204d                      movea.l    a5,a0
[0003a78a] 4eb9 0005 0330            jsr        $00050330
[0003a790] 204a                      movea.l    a2,a0
[0003a792] 4eb9 0004 7e26            jsr        $00047E26
[0003a798] 91c8                      suba.l     a0,a0
[0003a79a] 6000 009e                 bra        $0003A83A
[0003a79e] 7008                      moveq.l    #8,d0
[0003a7a0] 43ea 0106                 lea.l      262(a2),a1
[0003a7a4] 41ed 0024                 lea.l      36(a5),a0
[0003a7a8] 4eb9 0007 6f44            jsr        $00076F44
[0003a7ae] 302d 0024                 move.w     36(a5),d0
[0003a7b2] 2056                      movea.l    (a6),a0
[0003a7b4] 3228 0008                 move.w     8(a0),d1
[0003a7b8] d268 000c                 add.w      12(a0),d1
[0003a7bc] b041                      cmp.w      d1,d0
[0003a7be] 6f0c                      ble.s      $0003A7CC
[0003a7c0] 3428 0008                 move.w     8(a0),d2
[0003a7c4] d468 0012                 add.w      18(a0),d2
[0003a7c8] 3b42 0024                 move.w     d2,36(a5)
[0003a7cc] 302d 0026                 move.w     38(a5),d0
[0003a7d0] 2056                      movea.l    (a6),a0
[0003a7d2] 3228 000a                 move.w     10(a0),d1
[0003a7d6] d268 000e                 add.w      14(a0),d1
[0003a7da] b041                      cmp.w      d1,d0
[0003a7dc] 6f0c                      ble.s      $0003A7EA
[0003a7de] 3428 000a                 move.w     10(a0),d2
[0003a7e2] d468 0014                 add.w      20(a0),d2
[0003a7e6] 3b42 0024                 move.w     d2,36(a5)
[0003a7ea] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0003a7f0] 206d 0014                 movea.l    20(a5),a0
[0003a7f4] 4868 0016                 pea.l      22(a0)
[0003a7f8] 4868 0014                 pea.l      20(a0)
[0003a7fc] 3f2d 002a                 move.w     42(a5),-(a7)
[0003a800] 3f2d 0028                 move.w     40(a5),-(a7)
[0003a804] 3f2d 0026                 move.w     38(a5),-(a7)
[0003a808] 43ef 0012                 lea.l      18(a7),a1
[0003a80c] 41ef 0012                 lea.l      18(a7),a0
[0003a810] 342d 0024                 move.w     36(a5),d2
[0003a814] 322d 0022                 move.w     34(a5),d1
[0003a818] 7001                      moveq.l    #1,d0
[0003a81a] 4eb9 0006 d60a            jsr        $0006D60A
[0003a820] 4fef 0012                 lea.l      18(a7),a7
[0003a824] 202d 0018                 move.l     24(a5),d0
[0003a828] 670e                      beq.s      $0003A838
[0003a82a] 2040                      movea.l    d0,a0
[0003a82c] 3228 0016                 move.w     22(a0),d1
[0003a830] 226d 0014                 movea.l    20(a5),a1
[0003a834] 9369 0016                 sub.w      d1,22(a1)
[0003a838] 204d                      movea.l    a5,a0
[0003a83a] 544f                      addq.w     #2,a7
[0003a83c] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[0003a840] 4e75                      rts
modul_serv:
[0003a842] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[0003a846] 4fef fff2                 lea.l      -14(a7),a7
[0003a84a] 2448                      movea.l    a0,a2
[0003a84c] 3600                      move.w     d0,d3
[0003a84e] 2f49 000a                 move.l     a1,10(a7)
[0003a852] 2f50 0006                 move.l     (a0),6(a7)
[0003a856] 47f9 0010 1f12            lea.l      ACSblk,a3
[0003a85c] 3003                      move.w     d3,d0
[0003a85e] b07c 0030                 cmp.w      #$0030,d0
[0003a862] 6700 0300                 beq        $0003AB64
[0003a866] 6e4a                      bgt.s      $0003A8B2
[0003a868] b07c 001b                 cmp.w      #$001B,d0
[0003a86c] 6200 0392                 bhi        $0003AC00
[0003a870] d040                      add.w      d0,d0
[0003a872] 303b 0006                 move.w     $0003A87A(pc,d0.w),d0
[0003a876] 4efb 0002                 jmp        $0003A87A(pc,d0.w)
J28:
[0003a87a] 0386                      dc.w $0386   ; $0003ac00-$0003a87a
[0003a87c] 0386                      dc.w $0386   ; $0003ac00-$0003a87a
[0003a87e] 0062                      dc.w $0062   ; $0003a8dc-$0003a87a
[0003a880] 0386                      dc.w $0386   ; $0003ac00-$0003a87a
[0003a882] 0386                      dc.w $0386   ; $0003ac00-$0003a87a
[0003a884] 0386                      dc.w $0386   ; $0003ac00-$0003a87a
[0003a886] 0386                      dc.w $0386   ; $0003ac00-$0003a87a
[0003a888] 0386                      dc.w $0386   ; $0003ac00-$0003a87a
[0003a88a] 0386                      dc.w $0386   ; $0003ac00-$0003a87a
[0003a88c] 0386                      dc.w $0386   ; $0003ac00-$0003a87a
[0003a88e] 0176                      dc.w $0176   ; $0003a9f0-$0003a87a
[0003a890] 0176                      dc.w $0176   ; $0003a9f0-$0003a87a
[0003a892] 0386                      dc.w $0386   ; $0003ac00-$0003a87a
[0003a894] 0386                      dc.w $0386   ; $0003ac00-$0003a87a
[0003a896] 0386                      dc.w $0386   ; $0003ac00-$0003a87a
[0003a898] 0176                      dc.w $0176   ; $0003a9f0-$0003a87a
[0003a89a] 013a                      dc.w $013a   ; $0003a9b4-$0003a87a
[0003a89c] 0122                      dc.w $0122   ; $0003a99c-$0003a87a
[0003a89e] 0386                      dc.w $0386   ; $0003ac00-$0003a87a
[0003a8a0] 0386                      dc.w $0386   ; $0003ac00-$0003a87a
[0003a8a2] 0386                      dc.w $0386   ; $0003ac00-$0003a87a
[0003a8a4] 0386                      dc.w $0386   ; $0003ac00-$0003a87a
[0003a8a6] 0386                      dc.w $0386   ; $0003ac00-$0003a87a
[0003a8a8] 0386                      dc.w $0386   ; $0003ac00-$0003a87a
[0003a8aa] 0386                      dc.w $0386   ; $0003ac00-$0003a87a
[0003a8ac] 0386                      dc.w $0386   ; $0003ac00-$0003a87a
[0003a8ae] 0386                      dc.w $0386   ; $0003ac00-$0003a87a
[0003a8b0] 0316                      dc.w $0316   ; $0003ab90-$0003a87a
[0003a8b2] 907c                      dc.w $907c   ; $000338f6-$0003a87a
[0003a8b4] 0064                      dc.w $0064   ; $0003a8de-$0003a87a
[0003a8b6] b07c                      dc.w $b07c   ; $000358f6-$0003a87a
[0003a8b8] 0009                      dc.w $0009   ; $0003a883-$0003a87a
[0003a8ba] 6200 0344                 bhi        $0003AC00
[0003a8be] d040                      add.w      d0,d0
[0003a8c0] 303b 0006                 move.w     $0003A8C8(pc,d0.w),d0
[0003a8c4] 4efb 0002                 jmp        $0003A8C8(pc,d0.w)
J29:
[0003a8c8] 028c                      dc.w $028c   ; $0003ab54-$0003a8c8
[0003a8ca] 0268                      dc.w $0268   ; $0003ab30-$0003a8c8
[0003a8cc] 0244                      dc.w $0244   ; $0003ab0c-$0003a8c8
[0003a8ce] 0256                      dc.w $0256   ; $0003ab1e-$0003a8c8
[0003a8d0] 0200                      dc.w $0200   ; $0003aac8-$0003a8c8
[0003a8d2] 0100                      dc.w $0100   ; $0003a9c8-$0003a8c8
[0003a8d4] 0338                      dc.w $0338   ; $0003ac00-$0003a8c8
[0003a8d6] 0338                      dc.w $0338   ; $0003ac00-$0003a8c8
[0003a8d8] 0338                      dc.w $0338   ; $0003ac00-$0003a8c8
[0003a8da] 0278                      dc.w $0278   ; $0003ab40-$0003a8c8
[0003a8dc] 2053                      dc.w $2053   ; $0003c91b-$0003a8c8
[0003a8de] 3028                      dc.w $3028   ; $0003d8f0-$0003a8c8
[0003a8e0] 023a                      dc.w $023a   ; $0003ab02-$0003a8c8
[0003a8e2] 6700                      dc.w $6700   ; $00040fc8-$0003a8c8
[0003a8e4] 00ae                      dc.w $00ae   ; $0003a976-$0003a8c8
[0003a8e6] 322a                      dc.w $322a   ; $0003daf2-$0003a8c8
[0003a8e8] 0020                      dc.w $0020   ; $0003a8e8-$0003a8c8
[0003a8ea] 6f42                      ble.s      $0003A92E
[0003a8ec] 342a 0056                 move.w     86(a2),d2
[0003a8f0] c47c 0800                 and.w      #$0800,d2
[0003a8f4] 6716                      beq.s      $0003A90C
[0003a8f6] 43ea 002c                 lea.l      44(a2),a1
[0003a8fa] 206f 0006                 movea.l    6(a7),a0
[0003a8fe] 41e8 0106                 lea.l      262(a0),a0
[0003a902] 7008                      moveq.l    #8,d0
[0003a904] 4eb9 0007 6f44            jsr        $00076F44
[0003a90a] 6014                      bra.s      $0003A920
[0003a90c] 7008                      moveq.l    #8,d0
[0003a90e] 43ea 0024                 lea.l      36(a2),a1
[0003a912] 206f 0006                 movea.l    6(a7),a0
[0003a916] 41e8 0106                 lea.l      262(a0),a0
[0003a91a] 4eb9 0007 6f44            jsr        $00076F44
[0003a920] 206f 0006                 movea.l    6(a7),a0
[0003a924] 00a8 0000 0001 010e       ori.l      #$00000001,270(a0)
[0003a92c] 600c                      bra.s      $0003A93A
[0003a92e] 206f 0006                 movea.l    6(a7),a0
[0003a932] 02a8 ffff fffe 010e       andi.l     #$FFFFFFFE,270(a0)
[0003a93a] 41f9 000c 4048            lea.l      $000C4048,a0
[0003a940] 4eb9 0004 7066            jsr        $00047066
[0003a946] 4240                      clr.w      d0
[0003a948] 4eb9 0007 29be            jsr        $000729BE
[0003a94e] 2800                      move.l     d0,d4
[0003a950] 4a80                      tst.l      d0
[0003a952] 6f1a                      ble.s      $0003A96E
[0003a954] 206f 0006                 movea.l    6(a7),a0
[0003a958] 223c 0000 0114            move.l     #$00000114,d1
[0003a95e] 3004                      move.w     d4,d0
[0003a960] 4eb9 0007 2a8e            jsr        $00072A8E
[0003a966] 3004                      move.w     d4,d0
[0003a968] 4eb9 0007 29ae            jsr        $000729AE
[0003a96e] 206a 0014                 movea.l    20(a2),a0
[0003a972] 4eb9 0004 7e26            jsr        $00047E26
[0003a978] 42aa 0014                 clr.l      20(a2)
[0003a97c] 206f 0006                 movea.l    6(a7),a0
[0003a980] 4eb9 0004 7e26            jsr        $00047E26
[0003a986] 204a                      movea.l    a2,a0
[0003a988] 4eb9 0005 0330            jsr        $00050330
[0003a98e] 6000 0280                 bra        $0003AC10
[0003a992] 204a                      movea.l    a2,a0
[0003a994] 6100 fc3c                 bsr        $0003A5D2
[0003a998] 6000 0276                 bra        $0003AC10
[0003a99c] 206f 0006                 movea.l    6(a7),a0
[0003a9a0] 2028 0114                 move.l     276(a0),d0
[0003a9a4] 6700 026a                 beq        $0003AC10
[0003a9a8] 206f 000a                 movea.l    10(a7),a0
[0003a9ac] 6100 f7de                 bsr        $0003A18C
[0003a9b0] 6000 025e                 bra        $0003AC10
[0003a9b4] 206f 0006                 movea.l    6(a7),a0
[0003a9b8] 2028 0114                 move.l     276(a0),d0
[0003a9bc] 6700 0252                 beq        $0003AC10
[0003a9c0] 6100 f71c                 bsr        $0003A0DE
[0003a9c4] 6000 024a                 bra        $0003AC10
[0003a9c8] 202f 000a                 move.l     10(a7),d0
[0003a9cc] 6700 0242                 beq        $0003AC10
[0003a9d0] 222a 0014                 move.l     20(a2),d1
[0003a9d4] 6700 023a                 beq        $0003AC10
[0003a9d8] 2040                      movea.l    d0,a0
[0003a9da] 2241                      movea.l    d1,a1
[0003a9dc] 3368 0006 0006            move.w     6(a0),6(a1)
[0003a9e2] 226a 0014                 movea.l    20(a2),a1
[0003a9e6] 2368 000c 000c            move.l     12(a0),12(a1)
[0003a9ec] 6000 0222                 bra        $0003AC10
[0003a9f0] 302a 0056                 move.w     86(a2),d0
[0003a9f4] c07c 0800                 and.w      #$0800,d0
[0003a9f8] 6706                      beq.s      $0003AA00
[0003a9fa] 4240                      clr.w      d0
[0003a9fc] 6000 0214                 bra        $0003AC12
[0003aa00] 2053                      movea.l    (a3),a0
[0003aa02] 3028 0246                 move.w     582(a0),d0
[0003aa06] 6706                      beq.s      $0003AA0E
[0003aa08] b5e8 0240                 cmpa.l     576(a0),a2
[0003aa0c] 670c                      beq.s      $0003AA1A
[0003aa0e] 2053                      movea.l    (a3),a0
[0003aa10] 2068 029c                 movea.l    668(a0),a0
[0003aa14] 4e90                      jsr        (a0)
[0003aa16] 6000 01f8                 bra        $0003AC10
[0003aa1a] 2053                      movea.l    (a3),a0
[0003aa1c] 3828 0246                 move.w     582(a0),d4
[0003aa20] 3004                      move.w     d4,d0
[0003aa22] 48c0                      ext.l      d0
[0003aa24] d080                      add.l      d0,d0
[0003aa26] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003aa2c] 2648                      movea.l    a0,a3
[0003aa2e] 284b                      movea.l    a3,a4
[0003aa30] 200c                      move.l     a4,d0
[0003aa32] 6700 01dc                 beq        $0003AC10
[0003aa36] 4eb9 0004 4840            jsr        $00044840
[0003aa3c] 6002                      bra.s      $0003AA40
[0003aa3e] 36c5                      move.w     d5,(a3)+
[0003aa40] 4eb9 0004 484c            jsr        $0004484C
[0003aa46] 3a00                      move.w     d0,d5
[0003aa48] 6af4                      bpl.s      $0003AA3E
[0003aa4a] 43f9 0003 b212            lea.l      $0003B212,a1
[0003aa50] 7202                      moveq.l    #2,d1
[0003aa52] 3004                      move.w     d4,d0
[0003aa54] 48c0                      ext.l      d0
[0003aa56] 204c                      movea.l    a4,a0
[0003aa58] 4eb9 0007 5314            jsr        $00075314
[0003aa5e] 4245                      clr.w      d5
[0003aa60] 6056                      bra.s      $0003AAB8
[0003aa62] 3205                      move.w     d5,d1
[0003aa64] 48c1                      ext.l      d1
[0003aa66] d281                      add.l      d1,d1
[0003aa68] 3434 1800                 move.w     0(a4,d1.l),d2
[0003aa6c] 48c2                      ext.l      d2
[0003aa6e] 2002                      move.l     d2,d0
[0003aa70] d080                      add.l      d0,d0
[0003aa72] d082                      add.l      d2,d0
[0003aa74] e788                      lsl.l      #3,d0
[0003aa76] 266a 0014                 movea.l    20(a2),a3
[0003aa7a] 47f3 0818                 lea.l      24(a3,d0.l),a3
[0003aa7e] 0c6b 0001 0016            cmpi.w     #$0001,22(a3)
[0003aa84] 6630                      bne.s      $0003AAB6
[0003aa86] 3034 1800                 move.w     0(a4,d1.l),d0
[0003aa8a] 204a                      movea.l    a2,a0
[0003aa8c] 4eb9 0004 492a            jsr        $0004492A
[0003aa92] 266b 000c                 movea.l    12(a3),a3
[0003aa96] b67c 000b                 cmp.w      #$000B,d3
[0003aa9a] 660e                      bne.s      $0003AAAA
[0003aa9c] 93c9                      suba.l     a1,a1
[0003aa9e] 7002                      moveq.l    #2,d0
[0003aaa0] 204b                      movea.l    a3,a0
[0003aaa2] 2a6b 0004                 movea.l    4(a3),a5
[0003aaa6] 4e95                      jsr        (a5)
[0003aaa8] 600c                      bra.s      $0003AAB6
[0003aaaa] 93c9                      suba.l     a1,a1
[0003aaac] 3003                      move.w     d3,d0
[0003aaae] 204b                      movea.l    a3,a0
[0003aab0] 2a6b 0004                 movea.l    4(a3),a5
[0003aab4] 4e95                      jsr        (a5)
[0003aab6] 5245                      addq.w     #1,d5
[0003aab8] b845                      cmp.w      d5,d4
[0003aaba] 6ea6                      bgt.s      $0003AA62
[0003aabc] 204c                      movea.l    a4,a0
[0003aabe] 4eb9 0004 7e26            jsr        $00047E26
[0003aac4] 6000 014a                 bra        $0003AC10
[0003aac8] 206f 000a                 movea.l    10(a7),a0
[0003aacc] 226f 0006                 movea.l    6(a7),a1
[0003aad0] 2350 0114                 move.l     (a0),276(a1)
[0003aad4] 3039 000c 2f74            move.w     $000C2F74,d0
[0003aada] 6700 0134                 beq        $0003AC10
[0003aade] 2229 0114                 move.l     276(a1),d1
[0003aae2] 6614                      bne.s      $0003AAF8
[0003aae4] 4eb9 0004 e608            jsr        $0004E608
[0003aaea] 2068 005e                 movea.l    94(a0),a0
[0003aaee] 0068 0008 01a2            ori.w      #$0008,418(a0)
[0003aaf4] 6000 011a                 bra        $0003AC10
[0003aaf8] 4eb9 0004 e608            jsr        $0004E608
[0003aafe] 2068 005e                 movea.l    94(a0),a0
[0003ab02] 0268 fff7 01a2            andi.w     #$FFF7,418(a0)
[0003ab08] 6000 0106                 bra        $0003AC10
[0003ab0c] 206f 000a                 movea.l    10(a7),a0
[0003ab10] 3010                      move.w     (a0),d0
[0003ab12] 204a                      movea.l    a2,a0
[0003ab14] 4eb9 0003 adf6            jsr        $0003ADF6
[0003ab1a] 6000 00f4                 bra        $0003AC10
[0003ab1e] 206f 000a                 movea.l    10(a7),a0
[0003ab22] 3010                      move.w     (a0),d0
[0003ab24] 204a                      movea.l    a2,a0
[0003ab26] 4eb9 0003 ae4a            jsr        $0003AE4A
[0003ab2c] 6000 00e2                 bra        $0003AC10
[0003ab30] 226f 000a                 movea.l    10(a7),a1
[0003ab34] 204a                      movea.l    a2,a0
[0003ab36] 4eb9 0003 af68            jsr        $0003AF68
[0003ab3c] 6000 00d2                 bra        $0003AC10
[0003ab40] 7201                      moveq.l    #1,d1
[0003ab42] 206f 000a                 movea.l    10(a7),a0
[0003ab46] 3010                      move.w     (a0),d0
[0003ab48] 204a                      movea.l    a2,a0
[0003ab4a] 4eb9 0003 b13a            jsr        $0003B13A
[0003ab50] 6000 00be                 bra        $0003AC10
[0003ab54] 226f 000a                 movea.l    10(a7),a1
[0003ab58] 204a                      movea.l    a2,a0
[0003ab5a] 4eb9 0003 aef6            jsr        $0003AEF6
[0003ab60] 6000 00ae                 bra        $0003AC10
[0003ab64] 206f 0006                 movea.l    6(a7),a0
[0003ab68] 2028 0114                 move.l     276(a0),d0
[0003ab6c] 6700 00a2                 beq        $0003AC10
[0003ab70] 222f 000a                 move.l     10(a7),d1
[0003ab74] 6700 009a                 beq        $0003AC10
[0003ab78] 487a f4ac                 pea.l      $0003A026(pc)
[0003ab7c] 42a7                      clr.l      -(a7)
[0003ab7e] 2248                      movea.l    a0,a1
[0003ab80] 2641                      movea.l    d1,a3
[0003ab82] 266b 0040                 movea.l    64(a3),a3
[0003ab86] 2041                      movea.l    d1,a0
[0003ab88] 4e93                      jsr        (a3)
[0003ab8a] 504f                      addq.w     #8,a7
[0003ab8c] 6000 0082                 bra        $0003AC10
[0003ab90] 206f 000a                 movea.l    10(a7),a0
[0003ab94] 0c50 4711                 cmpi.w     #$4711,(a0)
[0003ab98] 6666                      bne.s      $0003AC00
[0003ab9a] 2668 0006                 movea.l    6(a0),a3
[0003ab9e] 200b                      move.l     a3,d0
[0003aba0] 675e                      beq.s      $0003AC00
[0003aba2] 1013                      move.b     (a3),d0
[0003aba4] 675a                      beq.s      $0003AC00
[0003aba6] 204b                      movea.l    a3,a0
[0003aba8] 4eb9 0004 36d6            jsr        Ast_create
[0003abae] 2848                      movea.l    a0,a4
[0003abb0] 200c                      move.l     a4,d0
[0003abb2] 674c                      beq.s      $0003AC00
[0003abb4] 43f9 000c 405c            lea.l      $000C405C,a1
[0003abba] 2f09                      move.l     a1,-(a7)
[0003abbc] 41ef 0004                 lea.l      4(a7),a0
[0003abc0] 224c                      movea.l    a4,a1
[0003abc2] 4eb9 0004 7286            jsr        $00047286
[0003abc8] 225f                      movea.l    (a7)+,a1
[0003abca] 4eb9 0004 38ac            jsr        $000438AC
[0003abd0] 4a40                      tst.w      d0
[0003abd2] 6712                      beq.s      $0003ABE6
[0003abd4] 43f9 000c 405f            lea.l      $000C405F,a1
[0003abda] 41d7                      lea.l      (a7),a0
[0003abdc] 4eb9 0004 38ac            jsr        $000438AC
[0003abe2] 4a40                      tst.w      d0
[0003abe4] 660a                      bne.s      $0003ABF0
[0003abe6] 204c                      movea.l    a4,a0
[0003abe8] 4eb9 0006 312a            jsr        $0006312A
[0003abee] 6006                      bra.s      $0003ABF6
[0003abf0] 204c                      movea.l    a4,a0
[0003abf2] 6100 f64c                 bsr        $0003A240
[0003abf6] 204c                      movea.l    a4,a0
[0003abf8] 4eb9 0004 371c            jsr        $0004371C
[0003abfe] 6010                      bra.s      $0003AC10
[0003ac00] 226f 000a                 movea.l    10(a7),a1
[0003ac04] 3003                      move.w     d3,d0
[0003ac06] 204a                      movea.l    a2,a0
[0003ac08] 4eb9 0005 1276            jsr        $00051276
[0003ac0e] 6002                      bra.s      $0003AC12
[0003ac10] 7001                      moveq.l    #1,d0
[0003ac12] 4fef 000e                 lea.l      14(a7),a7
[0003ac16] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[0003ac1a] 4e75                      rts
pd_make:
[0003ac1c] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0003ac20] 4fef fef2                 lea.l      -270(a7),a7
[0003ac24] 95ca                      suba.l     a2,a2
[0003ac26] 49f9 000c 3ddc            lea.l      $000C3DDC,a4
[0003ac2c] 206c 005e                 movea.l    94(a4),a0
[0003ac30] b1fc 000c 3914            cmpa.l     #$000C3914,a0
[0003ac36] 6652                      bne.s      $0003AC8A
[0003ac38] 2648                      movea.l    a0,a3
[0003ac3a] 382b 0004                 move.w     4(a3),d4
[0003ac3e] 48c4                      ext.l      d4
[0003ac40] 2604                      move.l     d4,d3
[0003ac42] d683                      add.l      d3,d3
[0003ac44] d684                      add.l      d4,d3
[0003ac46] e78b                      lsl.l      #3,d3
[0003ac48] 3633 3802                 move.w     2(a3,d3.l),d3
[0003ac4c] 48c3                      ext.l      d3
[0003ac4e] 2403                      move.l     d3,d2
[0003ac50] d482                      add.l      d2,d2
[0003ac52] d483                      add.l      d3,d2
[0003ac54] e78a                      lsl.l      #3,d2
[0003ac56] 3433 2802                 move.w     2(a3,d2.l),d2
[0003ac5a] 48c2                      ext.l      d2
[0003ac5c] 2202                      move.l     d2,d1
[0003ac5e] d281                      add.l      d1,d1
[0003ac60] d282                      add.l      d2,d1
[0003ac62] e789                      lsl.l      #3,d1
[0003ac64] 3233 1800                 move.w     0(a3,d1.l),d1
[0003ac68] 48c1                      ext.l      d1
[0003ac6a] 2001                      move.l     d1,d0
[0003ac6c] d080                      add.l      d0,d0
[0003ac6e] d081                      add.l      d1,d0
[0003ac70] e788                      lsl.l      #3,d0
[0003ac72] d7c0                      adda.l     d0,a3
[0003ac74] 377c 0018 0006            move.w     #$0018,6(a3)
[0003ac7a] 006b 2000 000a            ori.w      #$2000,10(a3)
[0003ac80] 277c 000c 4020 000c       move.l     #$000C4020,12(a3)
[0003ac88] 6004                      bra.s      $0003AC8E
[0003ac8a] 426c f198                 clr.w      -3688(a4)
[0003ac8e] 2079 0010 1f12            movea.l    ACSblk,a0
[0003ac94] 3028 0236                 move.w     566(a0),d0
[0003ac98] 6732                      beq.s      $0003ACCC
[0003ac9a] 3228 0238                 move.w     568(a0),d1
[0003ac9e] 660e                      bne.s      $0003ACAE
[0003aca0] 242c 0014                 move.l     20(a4),d2
[0003aca4] 6608                      bne.s      $0003ACAE
[0003aca6] 297c 000c 3c8c 0014       move.l     #$000C3C8C,20(a4)
[0003acae] 204c                      movea.l    a4,a0
[0003acb0] 4eb9 0004 f41a            jsr        $0004F41A
[0003acb6] 2648                      movea.l    a0,a3
[0003acb8] 200b                      move.l     a3,d0
[0003acba] 6724                      beq.s      $0003ACE0
[0003acbc] 226c 00aa                 movea.l    170(a4),a1
[0003acc0] 91c8                      suba.l     a0,a0
[0003acc2] 4e91                      jsr        (a1)
[0003acc4] 2688                      move.l     a0,(a3)
[0003acc6] 6720                      beq.s      $0003ACE8
[0003acc8] 2450                      movea.l    (a0),a2
[0003acca] 601c                      bra.s      $0003ACE8
[0003accc] 296c 005e 0100            move.l     94(a4),256(a4)
[0003acd2] 91c8                      suba.l     a0,a0
[0003acd4] 226c 00aa                 movea.l    170(a4),a1
[0003acd8] 4e91                      jsr        (a1)
[0003acda] 2648                      movea.l    a0,a3
[0003acdc] 200b                      move.l     a3,d0
[0003acde] 6606                      bne.s      $0003ACE6
[0003ace0] 91c8                      suba.l     a0,a0
[0003ace2] 6000 00ba                 bra        $0003AD9E
[0003ace6] 2453                      movea.l    (a3),a2
[0003ace8] 200a                      move.l     a2,d0
[0003acea] 6700 00b0                 beq        $0003AD9C
[0003acee] 49ef 000e                 lea.l      14(a7),a4
[0003acf2] 43ea 0004                 lea.l      4(a2),a1
[0003acf6] 204c                      movea.l    a4,a0
[0003acf8] 4eb9 0007 6950            jsr        $00076950
[0003acfe] 0c14 0043                 cmpi.b     #$43,(a4)
[0003ad02] 6c18                      bge.s      $0003AD1C
[0003ad04] 4eb9 0007 2902            jsr        $00072902
[0003ad0a] 4eb9 0007 2978            jsr        $00072978
[0003ad10] c0bc 0000 0004            and.l      #$00000004,d0
[0003ad16] 6704                      beq.s      $0003AD1C
[0003ad18] 18bc 0043                 move.b     #$43,(a4)
[0003ad1c] 705c                      moveq.l    #92,d0
[0003ad1e] 204c                      movea.l    a4,a0
[0003ad20] 4eb9 0007 68e2            jsr        $000768E2
[0003ad26] 2f48 0004                 move.l     a0,4(a7)
[0003ad2a] 670a                      beq.s      $0003AD36
[0003ad2c] 1028 0001                 move.b     1(a0),d0
[0003ad30] 6704                      beq.s      $0003AD36
[0003ad32] 4228 0001                 clr.b      1(a0)
[0003ad36] 204c                      movea.l    a4,a0
[0003ad38] 4eb9 0004 7896            jsr        $00047896
[0003ad3e] 2a48                      movea.l    a0,a5
[0003ad40] 2e8d                      move.l     a5,(a7)
[0003ad42] 200d                      move.l     a5,d0
[0003ad44] 673a                      beq.s      $0003AD80
[0003ad46] 602c                      bra.s      $0003AD74
[0003ad48] 43f9 000c 405f            lea.l      $000C405F,a1
[0003ad4e] 2f09                      move.l     a1,-(a7)
[0003ad50] 2255                      movea.l    (a5),a1
[0003ad52] 41ef 000c                 lea.l      12(a7),a0
[0003ad56] 4eb9 0004 7286            jsr        $00047286
[0003ad5c] 225f                      movea.l    (a7)+,a1
[0003ad5e] 4eb9 0004 38ac            jsr        $000438AC
[0003ad64] 4a40                      tst.w      d0
[0003ad66] 6608                      bne.s      $0003AD70
[0003ad68] 2055                      movea.l    (a5),a0
[0003ad6a] 4eb9 0006 312a            jsr        $0006312A
[0003ad70] 2a6d 0004                 movea.l    4(a5),a5
[0003ad74] 200d                      move.l     a5,d0
[0003ad76] 66d0                      bne.s      $0003AD48
[0003ad78] 2057                      movea.l    (a7),a0
[0003ad7a] 4eb9 0004 795e            jsr        $0004795E
[0003ad80] 7001                      moveq.l    #1,d0
[0003ad82] c0aa 010e                 and.l      270(a2),d0
[0003ad86] 6714                      beq.s      $0003AD9C
[0003ad88] 2079 0010 1f12            movea.l    ACSblk,a0
[0003ad8e] 3228 0236                 move.w     566(a0),d1
[0003ad92] 6708                      beq.s      $0003AD9C
[0003ad94] 2053                      movea.l    (a3),a0
[0003ad96] 4eb9 0004 f69e            jsr        $0004F69E
[0003ad9c] 204b                      movea.l    a3,a0
[0003ad9e] 4fef 010e                 lea.l      270(a7),a7
[0003ada2] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0003ada6] 4e75                      rts
pd_serv:
[0003ada8] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0003adac] 2448                      movea.l    a0,a2
[0003adae] 3600                      move.w     d0,d3
[0003adb0] 2849                      movea.l    a1,a4
[0003adb2] 2650                      movea.l    (a0),a3
[0003adb4] 5540                      subq.w     #2,d0
[0003adb6] 6702                      beq.s      $0003ADBA
[0003adb8] 6026                      bra.s      $0003ADE0
[0003adba] 2079 0010 1f12            movea.l    ACSblk,a0
[0003adc0] 3028 0236                 move.w     566(a0),d0
[0003adc4] 6710                      beq.s      $0003ADD6
[0003adc6] 3228 023a                 move.w     570(a0),d1
[0003adca] 6722                      beq.s      $0003ADEE
[0003adcc] 204a                      movea.l    a2,a0
[0003adce] 4eb9 0005 0330            jsr        $00050330
[0003add4] 6018                      bra.s      $0003ADEE
[0003add6] 204a                      movea.l    a2,a0
[0003add8] 4eb9 0005 013e            jsr        $0005013E
[0003adde] 600e                      bra.s      $0003ADEE
[0003ade0] 224c                      movea.l    a4,a1
[0003ade2] 3003                      move.w     d3,d0
[0003ade4] 204b                      movea.l    a3,a0
[0003ade6] 246b 0004                 movea.l    4(a3),a2
[0003adea] 4e92                      jsr        (a2)
[0003adec] 6002                      bra.s      $0003ADF0
[0003adee] 7001                      moveq.l    #1,d0
[0003adf0] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0003adf4] 4e75                      rts
ghost_icon:
[0003adf6] 3f03                      move.w     d3,-(a7)
[0003adf8] 2f0a                      move.l     a2,-(a7)
[0003adfa] 2448                      movea.l    a0,a2
[0003adfc] 3600                      move.w     d0,d3
[0003adfe] 2050                      movea.l    (a0),a0
[0003ae00] 4a40                      tst.w      d0
[0003ae02] 6b40                      bmi.s      $0003AE44
[0003ae04] 3228 0104                 move.w     260(a0),d1
[0003ae08] 673a                      beq.s      $0003AE44
[0003ae0a] 48c0                      ext.l      d0
[0003ae0c] 2400                      move.l     d0,d2
[0003ae0e] d482                      add.l      d2,d2
[0003ae10] d480                      add.l      d0,d2
[0003ae12] e78a                      lsl.l      #3,d2
[0003ae14] 206a 0014                 movea.l    20(a2),a0
[0003ae18] d1c2                      adda.l     d2,a0
[0003ae1a] 0268 cffa 0008            andi.w     #$CFFA,8(a0)
[0003ae20] 0068 0040 0008            ori.w      #$0040,8(a0)
[0003ae26] 0268 fffe 000a            andi.w     #$FFFE,10(a0)
[0003ae2c] 2068 000c                 movea.l    12(a0),a0
[0003ae30] 20a8 0004                 move.l     4(a0),(a0)
[0003ae34] 42a8 0022                 clr.l      34(a0)
[0003ae38] 7201                      moveq.l    #1,d1
[0003ae3a] 204a                      movea.l    a2,a0
[0003ae3c] 3003                      move.w     d3,d0
[0003ae3e] 4eb9 0003 b13a            jsr        $0003B13A
[0003ae44] 245f                      movea.l    (a7)+,a2
[0003ae46] 361f                      move.w     (a7)+,d3
[0003ae48] 4e75                      rts
norm_icon:
[0003ae4a] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0003ae4e] 2448                      movea.l    a0,a2
[0003ae50] 3600                      move.w     d0,d3
[0003ae52] 2050                      movea.l    (a0),a0
[0003ae54] 4a40                      tst.w      d0
[0003ae56] 6b00 0098                 bmi        $0003AEF0
[0003ae5a] 3228 0104                 move.w     260(a0),d1
[0003ae5e] 6700 0090                 beq        $0003AEF0
[0003ae62] 48c0                      ext.l      d0
[0003ae64] 2400                      move.l     d0,d2
[0003ae66] d482                      add.l      d2,d2
[0003ae68] d480                      add.l      d0,d2
[0003ae6a] e78a                      lsl.l      #3,d2
[0003ae6c] 266a 0014                 movea.l    20(a2),a3
[0003ae70] d7c2                      adda.l     d2,a3
[0003ae72] 49eb 0018                 lea.l      24(a3),a4
[0003ae76] 026b ef3f 0008            andi.w     #$EF3F,8(a3)
[0003ae7c] 006b 2005 0008            ori.w      #$2005,8(a3)
[0003ae82] 026b fffe 000a            andi.w     #$FFFE,10(a3)
[0003ae88] 222c 0010                 move.l     16(a4),d1
[0003ae8c] 6720                      beq.s      $0003AEAE
[0003ae8e] 2241                      movea.l    d1,a1
[0003ae90] 206b 000c                 movea.l    12(a3),a0
[0003ae94] 7026                      moveq.l    #38,d0
[0003ae96] 4eb9 0007 6f44            jsr        $00076F44
[0003ae9c] 303c 00ff                 move.w     #$00FF,d0
[0003aea0] 206c 0010                 movea.l    16(a4),a0
[0003aea4] c068 000c                 and.w      12(a0),d0
[0003aea8] 3940 000a                 move.w     d0,10(a4)
[0003aeac] 6024                      bra.s      $0003AED2
[0003aeae] 7026                      moveq.l    #38,d0
[0003aeb0] 43f9 000c 3860            lea.l      $000C3860,a1
[0003aeb6] 206b 000c                 movea.l    12(a3),a0
[0003aeba] 4eb9 0007 6f44            jsr        $00076F44
[0003aec0] 206c 000c                 movea.l    12(a4),a0
[0003aec4] 226b 000c                 movea.l    12(a3),a1
[0003aec8] 2368 004a 0008            move.l     74(a0),8(a1)
[0003aece] 426c 000a                 clr.w      10(a4)
[0003aed2] 7010                      moveq.l    #16,d0
[0003aed4] 206c 000c                 movea.l    12(a4),a0
[0003aed8] c068 0054                 and.w      84(a0),d0
[0003aedc] 6706                      beq.s      $0003AEE4
[0003aede] 006b 1000 0008            ori.w      #$1000,8(a3)
[0003aee4] 7201                      moveq.l    #1,d1
[0003aee6] 3003                      move.w     d3,d0
[0003aee8] 204a                      movea.l    a2,a0
[0003aeea] 4eb9 0003 b13a            jsr        $0003B13A
[0003aef0] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0003aef4] 4e75                      rts
place_icon:
[0003aef6] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0003aefa] 2448                      movea.l    a0,a2
[0003aefc] 2849                      movea.l    a1,a4
[0003aefe] 2650                      movea.l    (a0),a3
[0003af00] 0c6b 0100 0104            cmpi.w     #$0100,260(a3)
[0003af06] 6c54                      bge.s      $0003AF5C
[0003af08] 362b 0104                 move.w     260(a3),d3
[0003af0c] d643                      add.w      d3,d3
[0003af0e] 5243                      addq.w     #1,d3
[0003af10] 3203                      move.w     d3,d1
[0003af12] 48c1                      ext.l      d1
[0003af14] 2001                      move.l     d1,d0
[0003af16] d080                      add.l      d0,d0
[0003af18] d081                      add.l      d1,d0
[0003af1a] e788                      lsl.l      #3,d0
[0003af1c] 206a 0014                 movea.l    20(a2),a0
[0003af20] d1c0                      adda.l     d0,a0
[0003af22] 0268 ff7f 0008            andi.w     #$FF7F,8(a0)
[0003af28] 41e8 0018                 lea.l      24(a0),a0
[0003af2c] 317c 0001 0016            move.w     #$0001,22(a0)
[0003af32] 20bc 0003 a3a2            move.l     #$0003A3A2,(a0)
[0003af38] 217c 0003 a480 0004       move.l     #$0003A480,4(a0)
[0003af40] 2149 000c                 move.l     a1,12(a0)
[0003af44] 216c 005a 0010            move.l     90(a4),16(a0)
[0003af4a] 3943 0058                 move.w     d3,88(a4)
[0003af4e] 526b 0104                 addq.w     #1,260(a3)
[0003af52] 204a                      movea.l    a2,a0
[0003af54] 3003                      move.w     d3,d0
[0003af56] 6100 fef2                 bsr        $0003AE4A
[0003af5a] 6006                      bra.s      $0003AF62
[0003af5c] 397c ffff 0058            move.w     #$FFFF,88(a4)
[0003af62] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0003af66] 4e75                      rts
rem_icon:
[0003af68] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[0003af6c] 514f                      subq.w     #8,a7
[0003af6e] 2648                      movea.l    a0,a3
[0003af70] 2f49 0004                 move.l     a1,4(a7)
[0003af74] 3611                      move.w     (a1),d3
[0003af76] 2e90                      move.l     (a0),(a7)
[0003af78] 4a43                      tst.w      d3
[0003af7a] 6b00 01b6                 bmi        $0003B132
[0003af7e] 2257                      movea.l    (a7),a1
[0003af80] 3029 0104                 move.w     260(a1),d0
[0003af84] 6700 01ac                 beq        $0003B132
[0003af88] 3403                      move.w     d3,d2
[0003af8a] 48c2                      ext.l      d2
[0003af8c] 2202                      move.l     d2,d1
[0003af8e] d281                      add.l      d1,d1
[0003af90] d282                      add.l      d2,d1
[0003af92] e789                      lsl.l      #3,d1
[0003af94] 206b 0014                 movea.l    20(a3),a0
[0003af98] 3830 1800                 move.w     0(a0,d1.l),d4
[0003af9c] 226f 0004                 movea.l    4(a7),a1
[0003afa0] 3011                      move.w     (a1),d0
[0003afa2] 4eb9 0004 af6c            jsr        $0004AF6C
[0003afa8] 3a00                      move.w     d0,d5
[0003afaa] 6000 009e                 bra        $0003B04A
[0003afae] 7026                      moveq.l    #38,d0
[0003afb0] 3404                      move.w     d4,d2
[0003afb2] 48c2                      ext.l      d2
[0003afb4] 2202                      move.l     d2,d1
[0003afb6] d281                      add.l      d1,d1
[0003afb8] d282                      add.l      d2,d1
[0003afba] e789                      lsl.l      #3,d1
[0003afbc] 206b 0014                 movea.l    20(a3),a0
[0003afc0] 2270 180c                 movea.l    12(a0,d1.l),a1
[0003afc4] 3403                      move.w     d3,d2
[0003afc6] 48c2                      ext.l      d2
[0003afc8] 2202                      move.l     d2,d1
[0003afca] d281                      add.l      d1,d1
[0003afcc] d282                      add.l      d2,d1
[0003afce] e789                      lsl.l      #3,d1
[0003afd0] 2070 180c                 movea.l    12(a0,d1.l),a0
[0003afd4] 4eb9 0007 6f44            jsr        $00076F44
[0003afda] 3204                      move.w     d4,d1
[0003afdc] 48c1                      ext.l      d1
[0003afde] 2001                      move.l     d1,d0
[0003afe0] d080                      add.l      d0,d0
[0003afe2] d081                      add.l      d1,d0
[0003afe4] e788                      lsl.l      #3,d0
[0003afe6] 206b 0014                 movea.l    20(a3),a0
[0003afea] 3203                      move.w     d3,d1
[0003afec] 48c1                      ext.l      d1
[0003afee] 2401                      move.l     d1,d2
[0003aff0] d482                      add.l      d2,d2
[0003aff2] d481                      add.l      d1,d2
[0003aff4] e78a                      lsl.l      #3,d2
[0003aff6] 226b 0014                 movea.l    20(a3),a1
[0003affa] 33b0 0808 2808            move.w     8(a0,d0.l),8(a1,d2.l)
[0003b000] 206b 0014                 movea.l    20(a3),a0
[0003b004] 226b 0014                 movea.l    20(a3),a1
[0003b008] 33b0 080a 280a            move.w     10(a0,d0.l),10(a1,d2.l)
[0003b00e] 2a6b 0014                 movea.l    20(a3),a5
[0003b012] 4bf5 2818                 lea.l      24(a5,d2.l),a5
[0003b016] 246b 0014                 movea.l    20(a3),a2
[0003b01a] 45f2 0818                 lea.l      24(a2,d0.l),a2
[0003b01e] 286a 000c                 movea.l    12(a2),a4
[0003b022] 2b4c 000c                 move.l     a4,12(a5)
[0003b026] 2b6a 0010 0010            move.l     16(a2),16(a5)
[0003b02c] 220c                      move.l     a4,d1
[0003b02e] 6704                      beq.s      $0003B034
[0003b030] 556c 0058                 subq.w     #2,88(a4)
[0003b034] 3604                      move.w     d4,d3
[0003b036] 3203                      move.w     d3,d1
[0003b038] 48c1                      ext.l      d1
[0003b03a] 2001                      move.l     d1,d0
[0003b03c] d080                      add.l      d0,d0
[0003b03e] d081                      add.l      d1,d0
[0003b040] e788                      lsl.l      #3,d0
[0003b042] 206b 0014                 movea.l    20(a3),a0
[0003b046] 3830 0800                 move.w     0(a0,d0.l),d4
[0003b04a] 4a45                      tst.w      d5
[0003b04c] 6b20                      bmi.s      $0003B06E
[0003b04e] ba44                      cmp.w      d4,d5
[0003b050] 671c                      beq.s      $0003B06E
[0003b052] 303c 0080                 move.w     #$0080,d0
[0003b056] 3404                      move.w     d4,d2
[0003b058] 48c2                      ext.l      d2
[0003b05a] 2202                      move.l     d2,d1
[0003b05c] d281                      add.l      d1,d1
[0003b05e] d282                      add.l      d2,d1
[0003b060] e789                      lsl.l      #3,d1
[0003b062] 206b 0014                 movea.l    20(a3),a0
[0003b066] c070 1808                 and.w      8(a0,d1.l),d0
[0003b06a] 6700 ff42                 beq        $0003AFAE
[0003b06e] 3203                      move.w     d3,d1
[0003b070] 48c1                      ext.l      d1
[0003b072] 2001                      move.l     d1,d0
[0003b074] d080                      add.l      d0,d0
[0003b076] d081                      add.l      d1,d0
[0003b078] e788                      lsl.l      #3,d0
[0003b07a] 286b 0014                 movea.l    20(a3),a4
[0003b07e] d9c0                      adda.l     d0,a4
[0003b080] 006c 0080 0008            ori.w      #$0080,8(a4)
[0003b086] 4bec 0018                 lea.l      24(a4),a5
[0003b08a] 426d 0016                 clr.w      22(a5)
[0003b08e] 7400                      moveq.l    #0,d2
[0003b090] 2b42 0010                 move.l     d2,16(a5)
[0003b094] 2b42 000c                 move.l     d2,12(a5)
[0003b098] 2b42 0004                 move.l     d2,4(a5)
[0003b09c] 2a82                      move.l     d2,(a5)
[0003b09e] 2057                      movea.l    (a7),a0
[0003b0a0] 5368 0104                 subq.w     #1,260(a0)
[0003b0a4] 2279 0010 1f12            movea.l    ACSblk,a1
[0003b0aa] 3429 023a                 move.w     570(a1),d2
[0003b0ae] 6600 007a                 bne.w      $0003B12A
[0003b0b2] 3028 0104                 move.w     260(a0),d0
[0003b0b6] 6760                      beq.s      $0003B118
[0003b0b8] 246f 0004                 movea.l    4(a7),a2
[0003b0bc] 3612                      move.w     (a2),d3
[0003b0be] 3403                      move.w     d3,d2
[0003b0c0] 48c2                      ext.l      d2
[0003b0c2] 2202                      move.l     d2,d1
[0003b0c4] d281                      add.l      d1,d1
[0003b0c6] d282                      add.l      d2,d1
[0003b0c8] e789                      lsl.l      #3,d1
[0003b0ca] 286b 0014                 movea.l    20(a3),a4
[0003b0ce] 3834 1800                 move.w     0(a4,d1.l),d4
[0003b0d2] 6022                      bra.s      $0003B0F6
[0003b0d4] 4241                      clr.w      d1
[0003b0d6] 3003                      move.w     d3,d0
[0003b0d8] 204b                      movea.l    a3,a0
[0003b0da] 4eb9 0003 b13a            jsr        $0003B13A
[0003b0e0] 3604                      move.w     d4,d3
[0003b0e2] 3203                      move.w     d3,d1
[0003b0e4] 48c1                      ext.l      d1
[0003b0e6] 2001                      move.l     d1,d0
[0003b0e8] d080                      add.l      d0,d0
[0003b0ea] d081                      add.l      d1,d0
[0003b0ec] e788                      lsl.l      #3,d0
[0003b0ee] 206b 0014                 movea.l    20(a3),a0
[0003b0f2] 3830 0800                 move.w     0(a0,d0.l),d4
[0003b0f6] 4a45                      tst.w      d5
[0003b0f8] 6b1e                      bmi.s      $0003B118
[0003b0fa] ba44                      cmp.w      d4,d5
[0003b0fc] 671a                      beq.s      $0003B118
[0003b0fe] 303c 0080                 move.w     #$0080,d0
[0003b102] 3403                      move.w     d3,d2
[0003b104] 48c2                      ext.l      d2
[0003b106] 2202                      move.l     d2,d1
[0003b108] d281                      add.l      d1,d1
[0003b10a] d282                      add.l      d2,d1
[0003b10c] e789                      lsl.l      #3,d1
[0003b10e] 206b 0014                 movea.l    20(a3),a0
[0003b112] c070 1808                 and.w      8(a0,d1.l),d0
[0003b116] 67bc                      beq.s      $0003B0D4
[0003b118] 006b 0010 0056            ori.w      #$0010,86(a3)
[0003b11e] 43eb 0024                 lea.l      36(a3),a1
[0003b122] 204b                      movea.l    a3,a0
[0003b124] 246b 0086                 movea.l    134(a3),a2
[0003b128] 4e92                      jsr        (a2)
[0003b12a] 206f 0004                 movea.l    4(a7),a0
[0003b12e] 30bc ffff                 move.w     #$FFFF,(a0)
[0003b132] 504f                      addq.w     #8,a7
[0003b134] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[0003b138] 4e75                      rts
update_icon:
[0003b13a] 48e7 0838                 movem.l    d4/a2-a4,-(a7)
[0003b13e] 2448                      movea.l    a0,a2
[0003b140] 3801                      move.w     d1,d4
[0003b142] 2050                      movea.l    (a0),a0
[0003b144] 4a40                      tst.w      d0
[0003b146] 6b00 00c4                 bmi        $0003B20C
[0003b14a] 3428 0104                 move.w     260(a0),d2
[0003b14e] 6700 00bc                 beq        $0003B20C
[0003b152] 48c0                      ext.l      d0
[0003b154] 2200                      move.l     d0,d1
[0003b156] d281                      add.l      d1,d1
[0003b158] d280                      add.l      d0,d1
[0003b15a] e789                      lsl.l      #3,d1
[0003b15c] 266a 0014                 movea.l    20(a2),a3
[0003b160] d7c1                      adda.l     d1,a3
[0003b162] 49eb 0018                 lea.l      24(a3),a4
[0003b166] 242c 0010                 move.l     16(a4),d2
[0003b16a] 6736                      beq.s      $0003B1A2
[0003b16c] 2042                      movea.l    d2,a0
[0003b16e] 3228 0016                 move.w     22(a0),d1
[0003b172] b26b 0014                 cmp.w      20(a3),d1
[0003b176] 6c2a                      bge.s      $0003B1A2
[0003b178] 3028 0018                 move.w     24(a0),d0
[0003b17c] b06b 0016                 cmp.w      22(a3),d0
[0003b180] 6c20                      bge.s      $0003B1A2
[0003b182] 2242                      movea.l    d2,a1
[0003b184] 206b 000c                 movea.l    12(a3),a0
[0003b188] 7026                      moveq.l    #38,d0
[0003b18a] 4eb9 0007 6f44            jsr        $00076F44
[0003b190] 303c 00ff                 move.w     #$00FF,d0
[0003b194] 206c 0010                 movea.l    16(a4),a0
[0003b198] c068 000c                 and.w      12(a0),d0
[0003b19c] 3940 000a                 move.w     d0,10(a4)
[0003b1a0] 602c                      bra.s      $0003B1CE
[0003b1a2] 7026                      moveq.l    #38,d0
[0003b1a4] 43f9 000c 3860            lea.l      $000C3860,a1
[0003b1aa] 206b 000c                 movea.l    12(a3),a0
[0003b1ae] 4eb9 0007 6f44            jsr        $00076F44
[0003b1b4] 206c 000c                 movea.l    12(a4),a0
[0003b1b8] 2068 004a                 movea.l    74(a0),a0
[0003b1bc] 4eb9 0004 36d6            jsr        Ast_create
[0003b1c2] 226b 000c                 movea.l    12(a3),a1
[0003b1c6] 2348 0008                 move.l     a0,8(a1)
[0003b1ca] 426c 000a                 clr.w      10(a4)
[0003b1ce] 302b 0008                 move.w     8(a3),d0
[0003b1d2] c07c 2000                 and.w      #$2000,d0
[0003b1d6] 660c                      bne.s      $0003B1E4
[0003b1d8] 206b 000c                 movea.l    12(a3),a0
[0003b1dc] 20a8 0004                 move.l     4(a0),(a0)
[0003b1e0] 42a8 0022                 clr.l      34(a0)
[0003b1e4] 204b                      movea.l    a3,a0
[0003b1e6] 4eb9 0004 a34e            jsr        $0004A34E
[0003b1ec] 302a 0056                 move.w     86(a2),d0
[0003b1f0] c07c 0800                 and.w      #$0800,d0
[0003b1f4] 6616                      bne.s      $0003B20C
[0003b1f6] 4a44                      tst.w      d4
[0003b1f8] 6712                      beq.s      $0003B20C
[0003b1fa] 006a 0010 0056            ori.w      #$0010,86(a2)
[0003b200] 43ea 0024                 lea.l      36(a2),a1
[0003b204] 204a                      movea.l    a2,a0
[0003b206] 266a 0086                 movea.l    134(a2),a3
[0003b20a] 4e93                      jsr        (a3)
[0003b20c] 4cdf 1c10                 movem.l    (a7)+,d4/a2-a4
[0003b210] 4e75                      rts
sort_obnr:
[0003b212] 3010                      move.w     (a0),d0
[0003b214] b051                      cmp.w      (a1),d0
[0003b216] 6c04                      bge.s      $0003B21C
[0003b218] 7001                      moveq.l    #1,d0
[0003b21a] 4e75                      rts
[0003b21c] 3010                      move.w     (a0),d0
[0003b21e] b051                      cmp.w      (a1),d0
[0003b220] 6f04                      ble.s      $0003B226
[0003b222] 70ff                      moveq.l    #-1,d0
[0003b224] 4e75                      rts
[0003b226] 4240                      clr.w      d0
[0003b228] 4e75                      rts
purGEMScript:
[0003b22a] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0003b22e] 2848                      movea.l    a0,a4
[0003b230] 3600                      move.w     d0,d3
[0003b232] 2449                      movea.l    a1,a2
[0003b234] 266f 0014                 movea.l    20(a7),a3
[0003b238] 43f9 000c 4063            lea.l      $000C4063,a1
[0003b23e] 2052                      movea.l    (a2),a0
[0003b240] 4eb9 0004 38ac            jsr        $000438AC
[0003b246] 4a40                      tst.w      d0
[0003b248] 6628                      bne.s      $0003B272
[0003b24a] 2053                      movea.l    (a3),a0
[0003b24c] 2050                      movea.l    (a0),a0
[0003b24e] 4eb9 0004 371c            jsr        $0004371C
[0003b254] 2079 0010 1f12            movea.l    ACSblk,a0
[0003b25a] 41e8 0220                 lea.l      544(a0),a0
[0003b25e] 4eb9 0004 36d6            jsr        Ast_create
[0003b264] 2253                      movea.l    (a3),a1
[0003b266] 2288                      move.l     a0,(a1)
[0003b268] 377c 0001 0004            move.w     #$0001,4(a3)
[0003b26e] 4240                      clr.w      d0
[0003b270] 6010                      bra.s      $0003B282
[0003b272] 2f0b                      move.l     a3,-(a7)
[0003b274] 224a                      movea.l    a2,a1
[0003b276] 3003                      move.w     d3,d0
[0003b278] 204c                      movea.l    a4,a0
[0003b27a] 4eb9 0005 2328            jsr        $00052328
[0003b280] 584f                      addq.w     #4,a7
[0003b282] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0003b286] 4e75                      rts
