Awi_diaend:
[0004b286] 2f0a                      move.l     a2,-(a7)
[0004b288] 2f0b                      move.l     a3,-(a7)
[0004b28a] 4fef fff6                 lea.l      -10(a7),a7
[0004b28e] 45f9 000d 3d64            lea.l      $000D3D64,a2
[0004b294] 2012                      move.l     (a2),d0
[0004b296] 6700 009a                 beq        $0004B332
[0004b29a] 4857                      pea.l      (a7)
[0004b29c] 486f 0006                 pea.l      6(a7)
[0004b2a0] 43ef 000e                 lea.l      14(a7),a1
[0004b2a4] 2040                      movea.l    d0,a0
[0004b2a6] 4eb9 0004 c4a6            jsr        $0004C4A6
[0004b2ac] 504f                      addq.w     #8,a7
[0004b2ae] 4a40                      tst.w      d0
[0004b2b0] 6700 0080                 beq        $0004B332
[0004b2b4] 7002                      moveq.l    #2,d0
[0004b2b6] 2052                      movea.l    (a2),a0
[0004b2b8] c068 0056                 and.w      86(a0),d0
[0004b2bc] 6774                      beq.s      $0004B332
[0004b2be] 3417                      move.w     (a7),d2
[0004b2c0] 48c2                      ext.l      d2
[0004b2c2] 2202                      move.l     d2,d1
[0004b2c4] d281                      add.l      d1,d1
[0004b2c6] d282                      add.l      d2,d1
[0004b2c8] e789                      lsl.l      #3,d1
[0004b2ca] 226f 0006                 movea.l    6(a7),a1
[0004b2ce] 2671 180c                 movea.l    12(a1,d1.l),a3
[0004b2d2] 0268 fffd 0056            andi.w     #$FFFD,86(a0)
[0004b2d8] 2552 0004                 move.l     (a2),4(a2)
[0004b2dc] 2052                      movea.l    (a2),a0
[0004b2de] 3028 001c                 move.w     28(a0),d0
[0004b2e2] 3540 000c                 move.w     d0,12(a2)
[0004b2e6] 3200                      move.w     d0,d1
[0004b2e8] c27c 1000                 and.w      #$1000,d1
[0004b2ec] 670a                      beq.s      $0004B2F8
[0004b2ee] 2052                      movea.l    (a2),a0
[0004b2f0] 2568 0018 0008            move.l     24(a0),8(a2)
[0004b2f6] 6008                      bra.s      $0004B300
[0004b2f8] 2052                      movea.l    (a2),a0
[0004b2fa] 2568 0014 0008            move.l     20(a0),8(a2)
[0004b300] 70ff                      moveq.l    #-1,d0
[0004b302] 2052                      movea.l    (a2),a0
[0004b304] 3140 001e                 move.w     d0,30(a0)
[0004b308] 2052                      movea.l    (a2),a0
[0004b30a] 3140 001c                 move.w     d0,28(a0)
[0004b30e] 2052                      movea.l    (a2),a0
[0004b310] 4268 0052                 clr.w      82(a0)
[0004b314] 4292                      clr.l      (a2)
[0004b316] 93c9                      suba.l     a1,a1
[0004b318] 7006                      moveq.l    #6,d0
[0004b31a] 3417                      move.w     (a7),d2
[0004b31c] 48c2                      ext.l      d2
[0004b31e] 2202                      move.l     d2,d1
[0004b320] d281                      add.l      d1,d1
[0004b322] d282                      add.l      d2,d1
[0004b324] e789                      lsl.l      #3,d1
[0004b326] 206f 0006                 movea.l    6(a7),a0
[0004b32a] d1c1                      adda.l     d1,a0
[0004b32c] 246b 0008                 movea.l    8(a3),a2
[0004b330] 4e92                      jsr        (a2)
[0004b332] 4fef 000a                 lea.l      10(a7),a7
[0004b336] 265f                      movea.l    (a7)+,a3
[0004b338] 245f                      movea.l    (a7)+,a2
[0004b33a] 4e75                      rts
Awi_diastart:
[0004b33c] 48e7 003c                 movem.l    a2-a5,-(a7)
[0004b340] 4fef ffe6                 lea.l      -26(a7),a7
[0004b344] 3ebc ffff                 move.w     #$FFFF,(a7)
[0004b348] 42a7                      clr.l      -(a7)
[0004b34a] 42a7                      clr.l      -(a7)
[0004b34c] 42a7                      clr.l      -(a7)
[0004b34e] 486f 0012                 pea.l      18(a7)
[0004b352] 720a                      moveq.l    #10,d1
[0004b354] 4240                      clr.w      d0
[0004b356] 4eb9 0007 14ea            jsr        $000714EA
[0004b35c] 4fef 0010                 lea.l      16(a7),a7
[0004b360] 302f 0006                 move.w     6(a7),d0
[0004b364] 6f00 01aa                 ble        $0004B510
[0004b368] 4eb9 0004 e5ea            jsr        $0004E5EA
[0004b36e] 2648                      movea.l    a0,a3
[0004b370] 200b                      move.l     a3,d0
[0004b372] 6700 019c                 beq        $0004B510
[0004b376] 7002                      moveq.l    #2,d0
[0004b378] c06b 0056                 and.w      86(a3),d0
[0004b37c] 6600 0192                 bne        $0004B510
[0004b380] 49f9 000d 3d68            lea.l      $000D3D68,a4
[0004b386] 302b 001c                 move.w     28(a3),d0
[0004b38a] 6a4e                      bpl.s      $0004B3DA
[0004b38c] b7d4                      cmpa.l     (a4),a3
[0004b38e] 664a                      bne.s      $0004B3DA
[0004b390] 206b 0014                 movea.l    20(a3),a0
[0004b394] b1ec 0004                 cmpa.l     4(a4),a0
[0004b398] 6618                      bne.s      $0004B3B2
[0004b39a] 7208                      moveq.l    #8,d1
[0004b39c] 302c 0008                 move.w     8(a4),d0
[0004b3a0] 48c0                      ext.l      d0
[0004b3a2] 2400                      move.l     d0,d2
[0004b3a4] d482                      add.l      d2,d2
[0004b3a6] d480                      add.l      d0,d2
[0004b3a8] e78a                      lsl.l      #3,d2
[0004b3aa] c270 2808                 and.w      8(a0,d2.l),d1
[0004b3ae] 672a                      beq.s      $0004B3DA
[0004b3b0] 6024                      bra.s      $0004B3D6
[0004b3b2] 206b 0018                 movea.l    24(a3),a0
[0004b3b6] b1ec 0004                 cmpa.l     4(a4),a0
[0004b3ba] 661e                      bne.s      $0004B3DA
[0004b3bc] 7008                      moveq.l    #8,d0
[0004b3be] 342c 0008                 move.w     8(a4),d2
[0004b3c2] c47c 0fff                 and.w      #$0FFF,d2
[0004b3c6] 48c2                      ext.l      d2
[0004b3c8] 2202                      move.l     d2,d1
[0004b3ca] d281                      add.l      d1,d1
[0004b3cc] d282                      add.l      d2,d1
[0004b3ce] e789                      lsl.l      #3,d1
[0004b3d0] c070 1808                 and.w      8(a0,d1.l),d0
[0004b3d4] 6704                      beq.s      $0004B3DA
[0004b3d6] 3eac 0008                 move.w     8(a4),(a7)
[0004b3da] 3017                      move.w     (a7),d0
[0004b3dc] 6f28                      ble.s      $0004B406
[0004b3de] 322c 0008                 move.w     8(a4),d1
[0004b3e2] c27c 1000                 and.w      #$1000,d1
[0004b3e6] 6712                      beq.s      $0004B3FA
[0004b3e8] 342c 0008                 move.w     8(a4),d2
[0004b3ec] c47c 0fff                 and.w      #$0FFF,d2
[0004b3f0] 3e82                      move.w     d2,(a7)
[0004b3f2] 2f6b 0018 000c            move.l     24(a3),12(a7)
[0004b3f8] 6026                      bra.s      $0004B420
[0004b3fa] 3eac 0008                 move.w     8(a4),(a7)
[0004b3fe] 2f6b 0014 000c            move.l     20(a3),12(a7)
[0004b404] 601a                      bra.s      $0004B420
[0004b406] 4857                      pea.l      (a7)
[0004b408] 486f 000c                 pea.l      12(a7)
[0004b40c] 43ef 0014                 lea.l      20(a7),a1
[0004b410] 204b                      movea.l    a3,a0
[0004b412] 4eb9 0004 c4a6            jsr        $0004C4A6
[0004b418] 504f                      addq.w     #8,a7
[0004b41a] 4a40                      tst.w      d0
[0004b41c] 6700 00f2                 beq        $0004B510
[0004b420] 3217                      move.w     (a7),d1
[0004b422] 48c1                      ext.l      d1
[0004b424] 2001                      move.l     d1,d0
[0004b426] d080                      add.l      d0,d0
[0004b428] d081                      add.l      d1,d0
[0004b42a] e788                      lsl.l      #3,d0
[0004b42c] 206f 000c                 movea.l    12(a7),a0
[0004b430] 2a70 080c                 movea.l    12(a0,d0.l),a5
[0004b434] 006b 0002 0056            ori.w      #$0002,86(a3)
[0004b43a] 294b fffc                 move.l     a3,-4(a4)
[0004b43e] 206f 000c                 movea.l    12(a7),a0
[0004b442] b1eb 0014                 cmpa.l     20(a3),a0
[0004b446] 6606                      bne.s      $0004B44E
[0004b448] 3757 001c                 move.w     (a7),28(a3)
[0004b44c] 600a                      bra.s      $0004B458
[0004b44e] 3017                      move.w     (a7),d0
[0004b450] 807c 1000                 or.w       #$1000,d0
[0004b454] 3740 001c                 move.w     d0,28(a3)
[0004b458] 49ef 0010                 lea.l      16(a7),a4
[0004b45c] 288b                      move.l     a3,(a4)
[0004b45e] 206f 000c                 movea.l    12(a7),a0
[0004b462] b1eb 0014                 cmpa.l     20(a3),a0
[0004b466] 661c                      bne.s      $0004B484
[0004b468] 3217                      move.w     (a7),d1
[0004b46a] 48c1                      ext.l      d1
[0004b46c] 2001                      move.l     d1,d0
[0004b46e] d080                      add.l      d0,d0
[0004b470] d081                      add.l      d1,d0
[0004b472] e788                      lsl.l      #3,d0
[0004b474] 226b 0014                 movea.l    20(a3),a1
[0004b478] d3c0                      adda.l     d0,a1
[0004b47a] 2949 0004                 move.l     a1,4(a4)
[0004b47e] 3957 0008                 move.w     (a7),8(a4)
[0004b482] 6024                      bra.s      $0004B4A8
[0004b484] 3217                      move.w     (a7),d1
[0004b486] c27c 0fff                 and.w      #$0FFF,d1
[0004b48a] 48c1                      ext.l      d1
[0004b48c] 2001                      move.l     d1,d0
[0004b48e] d080                      add.l      d0,d0
[0004b490] d081                      add.l      d1,d0
[0004b492] e788                      lsl.l      #3,d0
[0004b494] 206b 0018                 movea.l    24(a3),a0
[0004b498] d1c0                      adda.l     d0,a0
[0004b49a] 2948 0004                 move.l     a0,4(a4)
[0004b49e] 3417                      move.w     (a7),d2
[0004b4a0] 847c 1000                 or.w       #$1000,d2
[0004b4a4] 3942 0008                 move.w     d2,8(a4)
[0004b4a8] 224c                      movea.l    a4,a1
[0004b4aa] 7009                      moveq.l    #9,d0
[0004b4ac] 3417                      move.w     (a7),d2
[0004b4ae] 48c2                      ext.l      d2
[0004b4b0] 2202                      move.l     d2,d1
[0004b4b2] d281                      add.l      d1,d1
[0004b4b4] d282                      add.l      d2,d1
[0004b4b6] e789                      lsl.l      #3,d1
[0004b4b8] 206f 000c                 movea.l    12(a7),a0
[0004b4bc] d1c1                      adda.l     d1,a0
[0004b4be] 246d 0008                 movea.l    8(a5),a2
[0004b4c2] 4e92                      jsr        (a2)
[0004b4c4] 302b 001e                 move.w     30(a3),d0
[0004b4c8] 6a2a                      bpl.s      $0004B4F4
[0004b4ca] 426f 0002                 clr.w      2(a7)
[0004b4ce] 3f7c ffff 0004            move.w     #$FFFF,4(a7)
[0004b4d4] 43ef 0002                 lea.l      2(a7),a1
[0004b4d8] 3417                      move.w     (a7),d2
[0004b4da] 48c2                      ext.l      d2
[0004b4dc] 2202                      move.l     d2,d1
[0004b4de] d281                      add.l      d1,d1
[0004b4e0] d282                      add.l      d2,d1
[0004b4e2] e789                      lsl.l      #3,d1
[0004b4e4] 206f 000c                 movea.l    12(a7),a0
[0004b4e8] d1c1                      adda.l     d1,a0
[0004b4ea] 246d 0008                 movea.l    8(a5),a2
[0004b4ee] 303c 02c2                 move.w     #$02C2,d0
[0004b4f2] 4e92                      jsr        (a2)
[0004b4f4] 93c9                      suba.l     a1,a1
[0004b4f6] 7006                      moveq.l    #6,d0
[0004b4f8] 3417                      move.w     (a7),d2
[0004b4fa] 48c2                      ext.l      d2
[0004b4fc] 2202                      move.l     d2,d1
[0004b4fe] d281                      add.l      d1,d1
[0004b500] d282                      add.l      d2,d1
[0004b502] e789                      lsl.l      #3,d1
[0004b504] 206f 000c                 movea.l    12(a7),a0
[0004b508] d1c1                      adda.l     d1,a0
[0004b50a] 246d 0008                 movea.l    8(a5),a2
[0004b50e] 4e92                      jsr        (a2)
[0004b510] 4fef 001a                 lea.l      26(a7),a7
[0004b514] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0004b518] 4e75                      rts
Awi_self0:
[0004b51a] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[0004b51e] 2848                      movea.l    a0,a4
[0004b520] 2449                      movea.l    a1,a2
[0004b522] 3a00                      move.w     d0,d5
[0004b524] 76ff                      moveq.l    #-1,d3
[0004b526] 4a43                      tst.w      d3
[0004b528] 6a04                      bpl.s      $0004B52E
[0004b52a] 4244                      clr.w      d4
[0004b52c] 6010                      bra.s      $0004B53E
[0004b52e] 3203                      move.w     d3,d1
[0004b530] 48c1                      ext.l      d1
[0004b532] 2001                      move.l     d1,d0
[0004b534] d080                      add.l      d0,d0
[0004b536] d081                      add.l      d1,d0
[0004b538] e788                      lsl.l      #3,d0
[0004b53a] 3832 0802                 move.w     2(a2,d0.l),d4
[0004b53e] 4a44                      tst.w      d4
[0004b540] 6a3a                      bpl.s      $0004B57C
[0004b542] 3203                      move.w     d3,d1
[0004b544] 48c1                      ext.l      d1
[0004b546] 2001                      move.l     d1,d0
[0004b548] d080                      add.l      d0,d0
[0004b54a] d081                      add.l      d1,d0
[0004b54c] e788                      lsl.l      #3,d0
[0004b54e] 3832 0800                 move.w     0(a2,d0.l),d4
[0004b552] 6012                      bra.s      $0004B566
[0004b554] 3604                      move.w     d4,d3
[0004b556] 3204                      move.w     d4,d1
[0004b558] 48c1                      ext.l      d1
[0004b55a] 2001                      move.l     d1,d0
[0004b55c] d080                      add.l      d0,d0
[0004b55e] d081                      add.l      d1,d0
[0004b560] e788                      lsl.l      #3,d0
[0004b562] 3832 0800                 move.w     0(a2,d0.l),d4
[0004b566] 4a44                      tst.w      d4
[0004b568] 6b12                      bmi.s      $0004B57C
[0004b56a] 3204                      move.w     d4,d1
[0004b56c] 48c1                      ext.l      d1
[0004b56e] 2001                      move.l     d1,d0
[0004b570] d080                      add.l      d0,d0
[0004b572] d081                      add.l      d1,d0
[0004b574] e788                      lsl.l      #3,d0
[0004b576] b672 0804                 cmp.w      4(a2,d0.l),d3
[0004b57a] 67d8                      beq.s      $0004B554
[0004b57c] 4a44                      tst.w      d4
[0004b57e] 6b46                      bmi.s      $0004B5C6
[0004b580] 3204                      move.w     d4,d1
[0004b582] 48c1                      ext.l      d1
[0004b584] 2001                      move.l     d1,d0
[0004b586] d080                      add.l      d0,d0
[0004b588] d081                      add.l      d1,d0
[0004b58a] e788                      lsl.l      #3,d0
[0004b58c] 0c32 0018 0807            cmpi.b     #$18,7(a2,d0.l)
[0004b592] 662c                      bne.s      $0004B5C0
[0004b594] 2672 080c                 movea.l    12(a2,d0.l),a3
[0004b598] 240b                      move.l     a3,d2
[0004b59a] 6724                      beq.s      $0004B5C0
[0004b59c] 242b 0008                 move.l     8(a3),d2
[0004b5a0] 671e                      beq.s      $0004B5C0
[0004b5a2] 41f2 0800                 lea.l      0(a2,d0.l),a0
[0004b5a6] 2948 0004                 move.l     a0,4(a4)
[0004b5aa] 3404                      move.w     d4,d2
[0004b5ac] 8445                      or.w       d5,d2
[0004b5ae] 3942 0008                 move.w     d2,8(a4)
[0004b5b2] 224c                      movea.l    a4,a1
[0004b5b4] 206c 0004                 movea.l    4(a4),a0
[0004b5b8] 2a6b 0008                 movea.l    8(a3),a5
[0004b5bc] 7009                      moveq.l    #9,d0
[0004b5be] 4e95                      jsr        (a5)
[0004b5c0] 3604                      move.w     d4,d3
[0004b5c2] 6000 ff62                 bra        $0004B526
[0004b5c6] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[0004b5ca] 4e75                      rts
Awi_uoself:
[0004b5cc] 2f0a                      move.l     a2,-(a7)
[0004b5ce] 4fef fff6                 lea.l      -10(a7),a7
[0004b5d2] 2448                      movea.l    a0,a2
[0004b5d4] 2e88                      move.l     a0,(a7)
[0004b5d6] 202a 0018                 move.l     24(a2),d0
[0004b5da] 670c                      beq.s      $0004B5E8
[0004b5dc] 2240                      movea.l    d0,a1
[0004b5de] 41d7                      lea.l      (a7),a0
[0004b5e0] 303c 1000                 move.w     #$1000,d0
[0004b5e4] 6100 ff34                 bsr        $0004B51A
[0004b5e8] 202a 0014                 move.l     20(a2),d0
[0004b5ec] 670a                      beq.s      $0004B5F8
[0004b5ee] 2240                      movea.l    d0,a1
[0004b5f0] 41d7                      lea.l      (a7),a0
[0004b5f2] 4240                      clr.w      d0
[0004b5f4] 6100 ff24                 bsr        $0004B51A
[0004b5f8] 4fef 000a                 lea.l      10(a7),a7
[0004b5fc] 245f                      movea.l    (a7)+,a2
[0004b5fe] 4e75                      rts
Awi_obchange:
[0004b600] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[0004b604] 4fef ffea                 lea.l      -22(a7),a7
[0004b608] 2a48                      movea.l    a0,a5
[0004b60a] 3600                      move.w     d0,d3
[0004b60c] 3a01                      move.w     d1,d5
[0004b60e] 342d 0056                 move.w     86(a5),d2
[0004b612] c47c 2800                 and.w      #$2800,d2
[0004b616] 670c                      beq.s      $0004B624
[0004b618] 4240                      clr.w      d0
[0004b61a] 4eb9 0004 b846            jsr        $0004B846
[0004b620] 6000 021a                 bra        $0004B83C
[0004b624] 3003                      move.w     d3,d0
[0004b626] c07c 1000                 and.w      #$1000,d0
[0004b62a] 6712                      beq.s      $0004B63E
[0004b62c] 246d 0018                 movea.l    24(a5),a2
[0004b630] 220a                      move.l     a2,d1
[0004b632] 6700 0208                 beq        $0004B83C
[0004b636] 3803                      move.w     d3,d4
[0004b638] c87c 0fff                 and.w      #$0FFF,d4
[0004b63c] 600c                      bra.s      $0004B64A
[0004b63e] 246d 0014                 movea.l    20(a5),a2
[0004b642] 200a                      move.l     a2,d0
[0004b644] 6700 01f6                 beq        $0004B83C
[0004b648] 3803                      move.w     d3,d4
[0004b64a] 3204                      move.w     d4,d1
[0004b64c] 48c1                      ext.l      d1
[0004b64e] 2001                      move.l     d1,d0
[0004b650] d080                      add.l      d0,d0
[0004b652] d081                      add.l      d1,d0
[0004b654] e788                      lsl.l      #3,d0
[0004b656] 47f2 0800                 lea.l      0(a2,d0.l),a3
[0004b65a] ba7c ffff                 cmp.w      #$FFFF,d5
[0004b65e] 6604                      bne.s      $0004B664
[0004b660] 3a2b 000a                 move.w     10(a3),d5
[0004b664] 0c2b 0021 0007            cmpi.b     #$21,7(a3)
[0004b66a] 6612                      bne.s      $0004B67E
[0004b66c] 3745 000a                 move.w     d5,10(a3)
[0004b670] 3003                      move.w     d3,d0
[0004b672] 204d                      movea.l    a5,a0
[0004b674] 4eb9 0004 b846            jsr        $0004B846
[0004b67a] 6000 01c0                 bra        $0004B83C
[0004b67e] 3f6d 0034 000e            move.w     52(a5),14(a7)
[0004b684] 3f6d 0038 0012            move.w     56(a5),18(a7)
[0004b68a] 3003                      move.w     d3,d0
[0004b68c] c07c 1000                 and.w      #$1000,d0
[0004b690] 6714                      beq.s      $0004B6A6
[0004b692] 322d 0036                 move.w     54(a5),d1
[0004b696] d26a 0012                 add.w      18(a2),d1
[0004b69a] 3f41 0010                 move.w     d1,16(a7)
[0004b69e] 3f6a 0016 0014            move.w     22(a2),20(a7)
[0004b6a4] 600c                      bra.s      $0004B6B2
[0004b6a6] 3f6d 0036 0010            move.w     54(a5),16(a7)
[0004b6ac] 3f6d 003a 0014            move.w     58(a5),20(a7)
[0004b6b2] 302b 000a                 move.w     10(a3),d0
[0004b6b6] bb40                      eor.w      d5,d0
[0004b6b8] c07c 0008                 and.w      #$0008,d0
[0004b6bc] 6704                      beq.s      $0004B6C2
[0004b6be] 3745 000a                 move.w     d5,10(a3)
[0004b6c2] 3c2b 000a                 move.w     10(a3),d6
[0004b6c6] 3f6d 0020 0004            move.w     32(a5),4(a7)
[0004b6cc] 302f 0004                 move.w     4(a7),d0
[0004b6d0] 6b00 0166                 bmi        $0004B838
[0004b6d4] 4bed 0034                 lea.l      52(a5),a5
[0004b6d8] 3f6a 0010 0002            move.w     16(a2),2(a7)
[0004b6de] 3eaa 0012                 move.w     18(a2),(a7)
[0004b6e2] 3215                      move.w     (a5),d1
[0004b6e4] d36a 0010                 add.w      d1,16(a2)
[0004b6e8] 322d 0002                 move.w     2(a5),d1
[0004b6ec] d36a 0012                 add.w      d1,18(a2)
[0004b6f0] 2279 000d 99d6            movea.l    $000D99D6,a1
[0004b6f6] 91c8                      suba.l     a0,a0
[0004b6f8] 303c 0100                 move.w     #$0100,d0
[0004b6fc] 4eb9 0006 c914            jsr        $0006C914
[0004b702] 49ef 0006                 lea.l      6(a7),a4
[0004b706] 486c 0006                 pea.l      6(a4)
[0004b70a] 486c 0004                 pea.l      4(a4)
[0004b70e] 486c 0002                 pea.l      2(a4)
[0004b712] 4854                      pea.l      (a4)
[0004b714] 720b                      moveq.l    #11,d1
[0004b716] 302f 0014                 move.w     20(a7),d0
[0004b71a] 4eb9 0007 14ea            jsr        $000714EA
[0004b720] 4fef 0010                 lea.l      16(a7),a7
[0004b724] 6000 00ee                 bra        $0004B814
[0004b728] 43ef 000e                 lea.l      14(a7),a1
[0004b72c] 204c                      movea.l    a4,a0
[0004b72e] 4eb9 0005 f94a            jsr        $0005F94A
[0004b734] 302c 0004                 move.w     4(a4),d0
[0004b738] 6700 00bc                 beq        $0004B7F6
[0004b73c] 3203                      move.w     d3,d1
[0004b73e] c27c 1000                 and.w      #$1000,d1
[0004b742] 6730                      beq.s      $0004B774
[0004b744] 3e2c 0002                 move.w     2(a4),d7
[0004b748] de6c 0006                 add.w      6(a4),d7
[0004b74c] be6d 0002                 cmp.w      2(a5),d7
[0004b750] 6f4a                      ble.s      $0004B79C
[0004b752] 41f9 000d 3d7c            lea.l      $000D3D7C,a0
[0004b758] 2279 0010 1f12            movea.l    ACSblk,a1
[0004b75e] 2269 03d6                 movea.l    982(a1),a1
[0004b762] 7001                      moveq.l    #1,d0
[0004b764] 4e91                      jsr        (a1)
[0004b766] 302d 0002                 move.w     2(a5),d0
[0004b76a] 906c 0002                 sub.w      2(a4),d0
[0004b76e] 3940 0006                 move.w     d0,6(a4)
[0004b772] 6028                      bra.s      $0004B79C
[0004b774] 3e2c 0002                 move.w     2(a4),d7
[0004b778] 9e6d 0002                 sub.w      2(a5),d7
[0004b77c] 4a47                      tst.w      d7
[0004b77e] 6a1c                      bpl.s      $0004B79C
[0004b780] 41f9 000d 3d7c            lea.l      $000D3D7C,a0
[0004b786] 7001                      moveq.l    #1,d0
[0004b788] 2279 0010 1f12            movea.l    ACSblk,a1
[0004b78e] 2269 03d6                 movea.l    982(a1),a1
[0004b792] 4e91                      jsr        (a1)
[0004b794] 9f6c 0002                 sub.w      d7,2(a4)
[0004b798] df6c 0006                 add.w      d7,6(a4)
[0004b79c] 302c 0006                 move.w     6(a4),d0
[0004b7a0] 6f54                      ble.s      $0004B7F6
[0004b7a2] bc45                      cmp.w      d5,d6
[0004b7a4] 6622                      bne.s      $0004B7C8
[0004b7a6] 3f00                      move.w     d0,-(a7)
[0004b7a8] 3f2c 0004                 move.w     4(a4),-(a7)
[0004b7ac] 3f2c 0002                 move.w     2(a4),-(a7)
[0004b7b0] 2279 000d 99d6            movea.l    $000D99D6,a1
[0004b7b6] 3414                      move.w     (a4),d2
[0004b7b8] 7208                      moveq.l    #8,d1
[0004b7ba] 204a                      movea.l    a2,a0
[0004b7bc] 3004                      move.w     d4,d0
[0004b7be] 4eb9 0006 b93c            jsr        $0006B93C
[0004b7c4] 5c4f                      addq.w     #6,a7
[0004b7c6] 602e                      bra.s      $0004B7F6
[0004b7c8] 3746 000a                 move.w     d6,10(a3)
[0004b7cc] 7001                      moveq.l    #1,d0
[0004b7ce] 3f00                      move.w     d0,-(a7)
[0004b7d0] 3f05                      move.w     d5,-(a7)
[0004b7d2] 3f2c 0006                 move.w     6(a4),-(a7)
[0004b7d6] 3f2c 0004                 move.w     4(a4),-(a7)
[0004b7da] 3f2c 0002                 move.w     2(a4),-(a7)
[0004b7de] 2279 000d 99d6            movea.l    $000D99D6,a1
[0004b7e4] 3414                      move.w     (a4),d2
[0004b7e6] 4241                      clr.w      d1
[0004b7e8] 204a                      movea.l    a2,a0
[0004b7ea] 3004                      move.w     d4,d0
[0004b7ec] 4eb9 0006 bc5c            jsr        $0006BC5C
[0004b7f2] 4fef 000a                 lea.l      10(a7),a7
[0004b7f6] 486c 0006                 pea.l      6(a4)
[0004b7fa] 486c 0004                 pea.l      4(a4)
[0004b7fe] 486c 0002                 pea.l      2(a4)
[0004b802] 4854                      pea.l      (a4)
[0004b804] 720c                      moveq.l    #12,d1
[0004b806] 302f 0014                 move.w     20(a7),d0
[0004b80a] 4eb9 0007 14ea            jsr        $000714EA
[0004b810] 4fef 0010                 lea.l      16(a7),a7
[0004b814] 302c 0004                 move.w     4(a4),d0
[0004b818] 6e00 ff0e                 bgt        $0004B728
[0004b81c] 2279 000d 99d6            movea.l    $000D99D6,a1
[0004b822] 91c8                      suba.l     a0,a0
[0004b824] 303c 0101                 move.w     #$0101,d0
[0004b828] 4eb9 0006 c914            jsr        $0006C914
[0004b82e] 356f 0002 0010            move.w     2(a7),16(a2)
[0004b834] 3557 0012                 move.w     (a7),18(a2)
[0004b838] 3745 000a                 move.w     d5,10(a3)
[0004b83c] 4fef 0016                 lea.l      22(a7),a7
[0004b840] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[0004b844] 4e75                      rts
Awi_obredraw:
[0004b846] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0004b84a] 514f                      subq.w     #8,a7
[0004b84c] 2648                      movea.l    a0,a3
[0004b84e] 3600                      move.w     d0,d3
[0004b850] 43f9 000d 3d72            lea.l      $000D3D72,a1
[0004b856] 41d7                      lea.l      (a7),a0
[0004b858] 20d9                      move.l     (a1)+,(a0)+
[0004b85a] 20d9                      move.l     (a1)+,(a0)+
[0004b85c] 322b 0056                 move.w     86(a3),d1
[0004b860] c27c 2800                 and.w      #$2800,d1
[0004b864] 6654                      bne.s      $0004B8BA
[0004b866] 7408                      moveq.l    #8,d2
[0004b868] c46b 0056                 and.w      86(a3),d2
[0004b86c] 6714                      beq.s      $0004B882
[0004b86e] 2079 0010 1f12            movea.l    ACSblk,a0
[0004b874] 2268 025c                 movea.l    604(a0),a1
[0004b878] 41d7                      lea.l      (a7),a0
[0004b87a] 4eb9 0004 a3be            jsr        $0004A3BE
[0004b880] 6038                      bra.s      $0004B8BA
[0004b882] 3003                      move.w     d3,d0
[0004b884] c07c 1000                 and.w      #$1000,d0
[0004b888] 6714                      beq.s      $0004B89E
[0004b88a] 3003                      move.w     d3,d0
[0004b88c] c07c 0fff                 and.w      #$0FFF,d0
[0004b890] 226b 0018                 movea.l    24(a3),a1
[0004b894] 41d7                      lea.l      (a7),a0
[0004b896] 4eb9 0004 a3be            jsr        $0004A3BE
[0004b89c] 600e                      bra.s      $0004B8AC
[0004b89e] 3003                      move.w     d3,d0
[0004b8a0] 226b 0014                 movea.l    20(a3),a1
[0004b8a4] 41d7                      lea.l      (a7),a0
[0004b8a6] 4eb9 0004 a3be            jsr        $0004A3BE
[0004b8ac] 302b 0034                 move.w     52(a3),d0
[0004b8b0] d157                      add.w      d0,(a7)
[0004b8b2] 322b 0036                 move.w     54(a3),d1
[0004b8b6] d36f 0002                 add.w      d1,2(a7)
[0004b8ba] 43d7                      lea.l      (a7),a1
[0004b8bc] 204b                      movea.l    a3,a0
[0004b8be] 246b 006a                 movea.l    106(a3),a2
[0004b8c2] 4e92                      jsr        (a2)
[0004b8c4] 504f                      addq.w     #8,a7
[0004b8c6] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0004b8ca] 4e75                      rts
Awi_redraw:
[0004b8cc] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[0004b8d0] 4fef ffee                 lea.l      -18(a7),a7
[0004b8d4] 2448                      movea.l    a0,a2
[0004b8d6] 2f49 000e                 move.l     a1,14(a7)
[0004b8da] 3f6a 0020 000c            move.w     32(a2),12(a7)
[0004b8e0] 6b00 0360                 bmi        $0004BC42
[0004b8e4] 266a 0014                 movea.l    20(a2),a3
[0004b8e8] 200b                      move.l     a3,d0
[0004b8ea] 6700 0356                 beq        $0004BC42
[0004b8ee] 302a 0056                 move.w     86(a2),d0
[0004b8f2] c07c 2000                 and.w      #$2000,d0
[0004b8f6] 6600 034a                 bne        $0004BC42
[0004b8fa] 322a 0056                 move.w     86(a2),d1
[0004b8fe] c27c 0800                 and.w      #$0800,d1
[0004b902] 6726                      beq.s      $0004B92A
[0004b904] 3429 0004                 move.w     4(a1),d2
[0004b908] b46b 0014                 cmp.w      20(a3),d2
[0004b90c] 6e0a                      bgt.s      $0004B918
[0004b90e] 3029 0006                 move.w     6(a1),d0
[0004b912] b06b 0016                 cmp.w      22(a3),d0
[0004b916] 6f12                      ble.s      $0004B92A
[0004b918] 204a                      movea.l    a2,a0
[0004b91a] 4eb9 0005 117c            jsr        $0005117C
[0004b920] 4eb9 0004 6d70            jsr        $00046D70
[0004b926] 266a 0014                 movea.l    20(a2),a3
[0004b92a] 302a 0056                 move.w     86(a2),d0
[0004b92e] c07c 0800                 and.w      #$0800,d0
[0004b932] 6700 00fa                 beq        $0004BA2E
[0004b936] 322a 0020                 move.w     32(a2),d1
[0004b93a] e549                      lsl.w      #2,d1
[0004b93c] 41f9 0010 73ea            lea.l      $001073EA,a0
[0004b942] 2670 1000                 movea.l    0(a0,d1.w),a3
[0004b946] 240b                      move.l     a3,d2
[0004b948] 6700 00e4                 beq        $0004BA2E
[0004b94c] 226f 000e                 movea.l    14(a7),a1
[0004b950] 4869 0006                 pea.l      6(a1)
[0004b954] 4869 0004                 pea.l      4(a1)
[0004b958] 4869 0002                 pea.l      2(a1)
[0004b95c] 2f09                      move.l     a1,-(a7)
[0004b95e] 302a 0020                 move.w     32(a2),d0
[0004b962] 7204                      moveq.l    #4,d1
[0004b964] 4eb9 0007 14ea            jsr        $000714EA
[0004b96a] 4fef 0010                 lea.l      16(a7),a7
[0004b96e] 206f 000e                 movea.l    14(a7),a0
[0004b972] 3750 0010                 move.w     (a0),16(a3)
[0004b976] 3768 0002 0012            move.w     2(a0),18(a3)
[0004b97c] 2279 000d 99d6            movea.l    $000D99D6,a1
[0004b982] 303c 0100                 move.w     #$0100,d0
[0004b986] 91c8                      suba.l     a0,a0
[0004b988] 4eb9 0006 c914            jsr        $0006C914
[0004b98e] 486f 0006                 pea.l      6(a7)
[0004b992] 486f 0008                 pea.l      8(a7)
[0004b996] 486f 000a                 pea.l      10(a7)
[0004b99a] 486f 000c                 pea.l      12(a7)
[0004b99e] 720b                      moveq.l    #11,d1
[0004b9a0] 302a 0020                 move.w     32(a2),d0
[0004b9a4] 4eb9 0007 14ea            jsr        $000714EA
[0004b9aa] 4fef 0010                 lea.l      16(a7),a7
[0004b9ae] 605c                      bra.s      $0004BA0C
[0004b9b0] 226f 000e                 movea.l    14(a7),a1
[0004b9b4] 41d7                      lea.l      (a7),a0
[0004b9b6] 4eb9 0005 f94a            jsr        $0005F94A
[0004b9bc] 302f 0004                 move.w     4(a7),d0
[0004b9c0] 6606                      bne.s      $0004B9C8
[0004b9c2] 322f 0006                 move.w     6(a7),d1
[0004b9c6] 6724                      beq.s      $0004B9EC
[0004b9c8] 3f2f 0006                 move.w     6(a7),-(a7)
[0004b9cc] 3f2f 0006                 move.w     6(a7),-(a7)
[0004b9d0] 3f2f 0006                 move.w     6(a7),-(a7)
[0004b9d4] 2279 000d 99d6            movea.l    $000D99D6,a1
[0004b9da] 342f 0006                 move.w     6(a7),d2
[0004b9de] 7206                      moveq.l    #6,d1
[0004b9e0] 4240                      clr.w      d0
[0004b9e2] 204b                      movea.l    a3,a0
[0004b9e4] 4eb9 0006 b93c            jsr        $0006B93C
[0004b9ea] 5c4f                      addq.w     #6,a7
[0004b9ec] 486f 0006                 pea.l      6(a7)
[0004b9f0] 486f 0008                 pea.l      8(a7)
[0004b9f4] 486f 000a                 pea.l      10(a7)
[0004b9f8] 486f 000c                 pea.l      12(a7)
[0004b9fc] 720c                      moveq.l    #12,d1
[0004b9fe] 302a 0020                 move.w     32(a2),d0
[0004ba02] 4eb9 0007 14ea            jsr        $000714EA
[0004ba08] 4fef 0010                 lea.l      16(a7),a7
[0004ba0c] 302f 0004                 move.w     4(a7),d0
[0004ba10] 6706                      beq.s      $0004BA18
[0004ba12] 322f 0006                 move.w     6(a7),d1
[0004ba16] 6698                      bne.s      $0004B9B0
[0004ba18] 2279 000d 99d6            movea.l    $000D99D6,a1
[0004ba1e] 91c8                      suba.l     a0,a0
[0004ba20] 303c 0101                 move.w     #$0101,d0
[0004ba24] 4eb9 0006 c914            jsr        $0006C914
[0004ba2a] 6000 0216                 bra        $0004BC42
[0004ba2e] 7010                      moveq.l    #16,d0
[0004ba30] c06a 0056                 and.w      86(a2),d0
[0004ba34] 670e                      beq.s      $0004BA44
[0004ba36] 41ea 0024                 lea.l      36(a2),a0
[0004ba3a] 2f48 000e                 move.l     a0,14(a7)
[0004ba3e] 026a ffef 0056            andi.w     #$FFEF,86(a2)
[0004ba44] 3f6b 0010 000a            move.w     16(a3),10(a7)
[0004ba4a] 3f6b 0012 0008            move.w     18(a3),8(a7)
[0004ba50] 4bea 0034                 lea.l      52(a2),a5
[0004ba54] 3015                      move.w     (a5),d0
[0004ba56] d16b 0010                 add.w      d0,16(a3)
[0004ba5a] 302d 0002                 move.w     2(a5),d0
[0004ba5e] d16b 0012                 add.w      d0,18(a3)
[0004ba62] 2279 000d 99d6            movea.l    $000D99D6,a1
[0004ba68] 91c8                      suba.l     a0,a0
[0004ba6a] 303c 0100                 move.w     #$0100,d0
[0004ba6e] 4eb9 0006 c914            jsr        $0006C914
[0004ba74] 486f 0006                 pea.l      6(a7)
[0004ba78] 486f 0008                 pea.l      8(a7)
[0004ba7c] 486f 000a                 pea.l      10(a7)
[0004ba80] 486f 000c                 pea.l      12(a7)
[0004ba84] 720b                      moveq.l    #11,d1
[0004ba86] 302f 001c                 move.w     28(a7),d0
[0004ba8a] 4eb9 0007 14ea            jsr        $000714EA
[0004ba90] 4fef 0010                 lea.l      16(a7),a7
[0004ba94] 6000 0178                 bra        $0004BC0E
[0004ba98] 226f 000e                 movea.l    14(a7),a1
[0004ba9c] 41d7                      lea.l      (a7),a0
[0004ba9e] 4eb9 0005 f94a            jsr        $0005F94A
[0004baa4] 302f 0004                 move.w     4(a7),d0
[0004baa8] 6608                      bne.s      $0004BAB2
[0004baaa] 322f 0006                 move.w     6(a7),d1
[0004baae] 6700 013e                 beq        $0004BBEE
[0004bab2] 3c2f 0002                 move.w     2(a7),d6
[0004bab6] 9c6d 0002                 sub.w      2(a5),d6
[0004baba] 4a46                      tst.w      d6
[0004babc] 6a00 0108                 bpl        $0004BBC6
[0004bac0] 286a 005e                 movea.l    94(a2),a4
[0004bac4] 200c                      move.l     a4,d0
[0004bac6] 6700 0084                 beq        $0004BB4C
[0004baca] 322c 0002                 move.w     2(a4),d1
[0004bace] 48c1                      ext.l      d1
[0004bad0] 2001                      move.l     d1,d0
[0004bad2] d080                      add.l      d0,d0
[0004bad4] d081                      add.l      d1,d0
[0004bad6] e788                      lsl.l      #3,d0
[0004bad8] 3e34 0802                 move.w     2(a4,d0.l),d7
[0004badc] 3007                      move.w     d7,d0
[0004bade] 48c0                      ext.l      d0
[0004bae0] 2400                      move.l     d0,d2
[0004bae2] d482                      add.l      d2,d2
[0004bae4] d480                      add.l      d0,d2
[0004bae6] e78a                      lsl.l      #3,d2
[0004bae8] 0c74 0003 2802            cmpi.w     #$0003,2(a4,d2.l)
[0004baee] 6636                      bne.s      $0004BB26
[0004baf0] 39ac 0048 2802            move.w     72(a4),2(a4,d2.l)
[0004baf6] 3e2c 0004                 move.w     4(a4),d7
[0004bafa] 3407                      move.w     d7,d2
[0004bafc] 48c2                      ext.l      d2
[0004bafe] 2202                      move.l     d2,d1
[0004bb00] d281                      add.l      d1,d1
[0004bb02] d282                      add.l      d2,d1
[0004bb04] e789                      lsl.l      #3,d1
[0004bb06] 3234 1802                 move.w     2(a4,d1.l),d1
[0004bb0a] 48c1                      ext.l      d1
[0004bb0c] 2001                      move.l     d1,d0
[0004bb0e] d080                      add.l      d0,d0
[0004bb10] d081                      add.l      d1,d0
[0004bb12] e788                      lsl.l      #3,d0
[0004bb14] 3207                      move.w     d7,d1
[0004bb16] 48c1                      ext.l      d1
[0004bb18] 2401                      move.l     d1,d2
[0004bb1a] d482                      add.l      d2,d2
[0004bb1c] d481                      add.l      d1,d2
[0004bb1e] e78a                      lsl.l      #3,d2
[0004bb20] 39b4 0800 2802            move.w     0(a4,d0.l),2(a4,d2.l)
[0004bb26] 3f2f 0006                 move.w     6(a7),-(a7)
[0004bb2a] 3f2f 0006                 move.w     6(a7),-(a7)
[0004bb2e] 3f2f 0006                 move.w     6(a7),-(a7)
[0004bb32] 2279 000d 99d6            movea.l    $000D99D6,a1
[0004bb38] 342f 0006                 move.w     6(a7),d2
[0004bb3c] 7206                      moveq.l    #6,d1
[0004bb3e] 302c 0002                 move.w     2(a4),d0
[0004bb42] 204c                      movea.l    a4,a0
[0004bb44] 4eb9 0006 b93c            jsr        $0006B93C
[0004bb4a] 5c4f                      addq.w     #6,a7
[0004bb4c] 286a 0018                 movea.l    24(a2),a4
[0004bb50] 200c                      move.l     a4,d0
[0004bb52] 676a                      beq.s      $0004BBBE
[0004bb54] 3e2c 0012                 move.w     18(a4),d7
[0004bb58] de6d 0002                 add.w      2(a5),d7
[0004bb5c] be6f 0002                 cmp.w      2(a7),d7
[0004bb60] 6c04                      bge.s      $0004BB66
[0004bb62] 3e2f 0002                 move.w     2(a7),d7
[0004bb66] 382f 0002                 move.w     2(a7),d4
[0004bb6a] d86f 0006                 add.w      6(a7),d4
[0004bb6e] b86d 0002                 cmp.w      2(a5),d4
[0004bb72] 6f04                      ble.s      $0004BB78
[0004bb74] 382d 0002                 move.w     2(a5),d4
[0004bb78] be44                      cmp.w      d4,d7
[0004bb7a] 6c42                      bge.s      $0004BBBE
[0004bb7c] 3a2c 0010                 move.w     16(a4),d5
[0004bb80] 362c 0012                 move.w     18(a4),d3
[0004bb84] 3015                      move.w     (a5),d0
[0004bb86] d16c 0010                 add.w      d0,16(a4)
[0004bb8a] 302d 0002                 move.w     2(a5),d0
[0004bb8e] d16c 0012                 add.w      d0,18(a4)
[0004bb92] 3004                      move.w     d4,d0
[0004bb94] 9047                      sub.w      d7,d0
[0004bb96] 3f00                      move.w     d0,-(a7)
[0004bb98] 3f2f 0006                 move.w     6(a7),-(a7)
[0004bb9c] 3f07                      move.w     d7,-(a7)
[0004bb9e] 2279 000d 99d6            movea.l    $000D99D6,a1
[0004bba4] 342f 0006                 move.w     6(a7),d2
[0004bba8] 7206                      moveq.l    #6,d1
[0004bbaa] 204c                      movea.l    a4,a0
[0004bbac] 4240                      clr.w      d0
[0004bbae] 4eb9 0006 b93c            jsr        $0006B93C
[0004bbb4] 5c4f                      addq.w     #6,a7
[0004bbb6] 3945 0010                 move.w     d5,16(a4)
[0004bbba] 3943 0012                 move.w     d3,18(a4)
[0004bbbe] 9d6f 0002                 sub.w      d6,2(a7)
[0004bbc2] dd6f 0006                 add.w      d6,6(a7)
[0004bbc6] 302f 0006                 move.w     6(a7),d0
[0004bbca] 6f22                      ble.s      $0004BBEE
[0004bbcc] 3f00                      move.w     d0,-(a7)
[0004bbce] 3f2f 0006                 move.w     6(a7),-(a7)
[0004bbd2] 3f2f 0006                 move.w     6(a7),-(a7)
[0004bbd6] 2279 000d 99d6            movea.l    $000D99D6,a1
[0004bbdc] 342f 0006                 move.w     6(a7),d2
[0004bbe0] 7206                      moveq.l    #6,d1
[0004bbe2] 204b                      movea.l    a3,a0
[0004bbe4] 4240                      clr.w      d0
[0004bbe6] 4eb9 0006 b93c            jsr        $0006B93C
[0004bbec] 5c4f                      addq.w     #6,a7
[0004bbee] 486f 0006                 pea.l      6(a7)
[0004bbf2] 486f 0008                 pea.l      8(a7)
[0004bbf6] 486f 000a                 pea.l      10(a7)
[0004bbfa] 486f 000c                 pea.l      12(a7)
[0004bbfe] 720c                      moveq.l    #12,d1
[0004bc00] 302f 001c                 move.w     28(a7),d0
[0004bc04] 4eb9 0007 14ea            jsr        $000714EA
[0004bc0a] 4fef 0010                 lea.l      16(a7),a7
[0004bc0e] 302f 0004                 move.w     4(a7),d0
[0004bc12] 6708                      beq.s      $0004BC1C
[0004bc14] 322f 0006                 move.w     6(a7),d1
[0004bc18] 6600 fe7e                 bne        $0004BA98
[0004bc1c] 2279 000d 99d6            movea.l    $000D99D6,a1
[0004bc22] 91c8                      suba.l     a0,a0
[0004bc24] 303c 0101                 move.w     #$0101,d0
[0004bc28] 4eb9 0006 c914            jsr        $0006C914
[0004bc2e] 206a 0014                 movea.l    20(a2),a0
[0004bc32] 316f 000a 0010            move.w     10(a7),16(a0)
[0004bc38] 206a 0014                 movea.l    20(a2),a0
[0004bc3c] 316f 0008 0012            move.w     8(a7),18(a0)
[0004bc42] 4fef 0012                 lea.l      18(a7),a7
[0004bc46] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[0004bc4a] 4e75                      rts
next_arrow:
[0004bc4c] 2f0a                      move.l     a2,-(a7)
[0004bc4e] 4fef ffee                 lea.l      -18(a7),a7
[0004bc52] 45ef 0010                 lea.l      16(a7),a2
[0004bc56] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0004bc5c] 4852                      pea.l      (a2)
[0004bc5e] 4852                      pea.l      (a2)
[0004bc60] 4852                      pea.l      (a2)
[0004bc62] 4852                      pea.l      (a2)
[0004bc64] 4852                      pea.l      (a2)
[0004bc66] 7005                      moveq.l    #5,d0
[0004bc68] 2f00                      move.l     d0,-(a7)
[0004bc6a] 4267                      clr.w      -(a7)
[0004bc6c] 4267                      clr.w      -(a7)
[0004bc6e] 4267                      clr.w      -(a7)
[0004bc70] 4267                      clr.w      -(a7)
[0004bc72] 4267                      clr.w      -(a7)
[0004bc74] 4267                      clr.w      -(a7)
[0004bc76] 4267                      clr.w      -(a7)
[0004bc78] 4267                      clr.w      -(a7)
[0004bc7a] 4267                      clr.w      -(a7)
[0004bc7c] 4267                      clr.w      -(a7)
[0004bc7e] 4267                      clr.w      -(a7)
[0004bc80] 224a                      movea.l    a2,a1
[0004bc82] 41ef 0032                 lea.l      50(a7),a0
[0004bc86] 4242                      clr.w      d2
[0004bc88] 4241                      clr.w      d1
[0004bc8a] 7030                      moveq.l    #48,d0
[0004bc8c] 4eb9 0006 af70            jsr        $0006AF70
[0004bc92] 4fef 0032                 lea.l      50(a7),a7
[0004bc96] c07c 0010                 and.w      #$0010,d0
[0004bc9a] 6722                      beq.s      $0004BCBE
[0004bc9c] 0c57 0018                 cmpi.w     #$0018,(a7)
[0004bca0] 6604                      bne.s      $0004BCA6
[0004bca2] 7001                      moveq.l    #1,d0
[0004bca4] 601a                      bra.s      $0004BCC0
[0004bca6] 2279 000d 99d6            movea.l    $000D99D6,a1
[0004bcac] 41d7                      lea.l      (a7),a0
[0004bcae] 7210                      moveq.l    #16,d1
[0004bcb0] 2479 0010 1f12            movea.l    ACSblk,a2
[0004bcb6] 3012                      move.w     (a2),d0
[0004bcb8] 4eb9 0006 a818            jsr        $0006A818
[0004bcbe] 4240                      clr.w      d0
[0004bcc0] 4fef 0012                 lea.l      18(a7),a7
[0004bcc4] 245f                      movea.l    (a7)+,a2
[0004bcc6] 4e75                      rts
Awi_arrowed:
[0004bcc8] 48e7 1e30                 movem.l    d3-d6/a2-a3,-(a7)
[0004bccc] 4fef fff4                 lea.l      -12(a7),a7
[0004bcd0] 2448                      movea.l    a0,a2
[0004bcd2] 3f40 000a                 move.w     d0,10(a7)
[0004bcd6] 3a01                      move.w     d1,d5
[0004bcd8] 342a 0020                 move.w     32(a2),d2
[0004bcdc] 6f00 0202                 ble        $0004BEE0
[0004bce0] 302a 0048                 move.w     72(a2),d0
[0004bce4] 807c ff00                 or.w       #$FF00,d0
[0004bce8] 322a 0048                 move.w     72(a2),d1
[0004bcec] e041                      asr.w      #8,d1
[0004bcee] 266a 0014                 movea.l    20(a2),a3
[0004bcf2] 3400                      move.w     d0,d2
[0004bcf4] 4642                      not.w      d2
[0004bcf6] d56b 0014                 add.w      d2,20(a3)
[0004bcfa] c16b 0014                 and.w      d0,20(a3)
[0004bcfe] 3401                      move.w     d1,d2
[0004bd00] 4642                      not.w      d2
[0004bd02] d56b 0016                 add.w      d2,22(a3)
[0004bd06] c36b 0016                 and.w      d1,22(a3)
[0004bd0a] 3400                      move.w     d0,d2
[0004bd0c] 4442                      neg.w      d2
[0004bd0e] 3f42 0006                 move.w     d2,6(a7)
[0004bd12] 3001                      move.w     d1,d0
[0004bd14] 4440                      neg.w      d0
[0004bd16] 3f40 0004                 move.w     d0,4(a7)
[0004bd1a] 322a 0038                 move.w     56(a2),d1
[0004bd1e] 926b 0014                 sub.w      20(a3),d1
[0004bd22] 3e81                      move.w     d1,(a7)
[0004bd24] 3c2a 003a                 move.w     58(a2),d6
[0004bd28] 9c6b 0016                 sub.w      22(a3),d6
[0004bd2c] 342f 000a                 move.w     10(a7),d2
[0004bd30] b47c 0007                 cmp.w      #$0007,d2
[0004bd34] 6258                      bhi.s      $0004BD8E
[0004bd36] d442                      add.w      d2,d2
[0004bd38] 343b 2006                 move.w     $0004BD40(pc,d2.w),d2
[0004bd3c] 4efb 2002                 jmp        $0004BD40(pc,d2.w)
J40:
[0004bd40] 0010                      dc.w $0010   ; $0004bd50-$0004bd40
[0004bd42] 0010                      dc.w $0010   ; $0004bd50-$0004bd40
[0004bd44] 0034                      dc.w $0034   ; $0004bd74-$0004bd40
[0004bd46] 0034                      dc.w $0034   ; $0004bd74-$0004bd40
[0004bd48] 0010                      dc.w $0010   ; $0004bd50-$0004bd40
[0004bd4a] 0010                      dc.w $0010   ; $0004bd50-$0004bd40
[0004bd4c] 0018                      dc.w $0018   ; $0004bd58-$0004bd40
[0004bd4e] 0018                      dc.w $0018   ; $0004bd58-$0004bd40
[0004bd50] 3f7c 0001 0002            move.w     #$0001,2(a7)
[0004bd56] 6036                      bra.s      $0004BD8E
[0004bd58] 203c 0000 03e8            move.l     #$000003E8,d0
[0004bd5e] 322a 0040                 move.w     64(a2),d1
[0004bd62] 48c1                      ext.l      d1
[0004bd64] 4eb9 0007 773a            jsr        $0007773A
[0004bd6a] e880                      asr.l      #4,d0
[0004bd6c] 5440                      addq.w     #2,d0
[0004bd6e] 3f40 0002                 move.w     d0,2(a7)
[0004bd72] 601a                      bra.s      $0004BD8E
[0004bd74] 203c 0000 03e8            move.l     #$000003E8,d0
[0004bd7a] 322a 0042                 move.w     66(a2),d1
[0004bd7e] 48c1                      ext.l      d1
[0004bd80] 4eb9 0007 773a            jsr        $0007773A
[0004bd86] e880                      asr.l      #4,d0
[0004bd88] 5440                      addq.w     #2,d0
[0004bd8a] 3f40 0002                 move.w     d0,2(a7)
[0004bd8e] 3f6f 0002 0008            move.w     2(a7),8(a7)
[0004bd94] 362b 0010                 move.w     16(a3),d3
[0004bd98] 382b 0012                 move.w     18(a3),d4
[0004bd9c] 302f 000a                 move.w     10(a7),d0
[0004bda0] b07c 0007                 cmp.w      #$0007,d0
[0004bda4] 6200 00ac                 bhi        $0004BE52
[0004bda8] d040                      add.w      d0,d0
[0004bdaa] 303b 0006                 move.w     $0004BDB2(pc,d0.w),d0
[0004bdae] 4efb 0002                 jmp        $0004BDB2(pc,d0.w)
J41:
[0004bdb2] 0010                      dc.w $0010   ; $0004bdc2-$0004bdb2
[0004bdb4] 0024                      dc.w $0024   ; $0004bdd6-$0004bdb2
[0004bdb6] 0036                      dc.w $0036   ; $0004bde8-$0004bdb2
[0004bdb8] 0048                      dc.w $0048   ; $0004bdfa-$0004bdb2
[0004bdba] 005a                      dc.w $005a   ; $0004be0c-$0004bdb2
[0004bdbc] 006c                      dc.w $006c   ; $0004be1e-$0004bdb2
[0004bdbe] 007e                      dc.w $007e   ; $0004be30-$0004bdb2
[0004bdc0] 0090                      dc.w $0090   ; $0004be42-$0004bdb2
[0004bdc2] 4a44                      tst.w      d4
[0004bdc4] 6700 0108                 beq        $0004BECE
[0004bdc8] 302a 003a                 move.w     58(a2),d0
[0004bdcc] c1c5                      muls.w     d5,d0
[0004bdce] d16b 0012                 add.w      d0,18(a3)
[0004bdd2] 6000 007e                 bra.w      $0004BE52
[0004bdd6] bc44                      cmp.w      d4,d6
[0004bdd8] 6700 00f4                 beq        $0004BECE
[0004bddc] 302a 003a                 move.w     58(a2),d0
[0004bde0] c1c5                      muls.w     d5,d0
[0004bde2] 916b 0012                 sub.w      d0,18(a3)
[0004bde6] 606a                      bra.s      $0004BE52
[0004bde8] 4a44                      tst.w      d4
[0004bdea] 6700 00e2                 beq        $0004BECE
[0004bdee] 302f 0004                 move.w     4(a7),d0
[0004bdf2] c1c5                      muls.w     d5,d0
[0004bdf4] d16b 0012                 add.w      d0,18(a3)
[0004bdf8] 6058                      bra.s      $0004BE52
[0004bdfa] bc44                      cmp.w      d4,d6
[0004bdfc] 6700 00d0                 beq        $0004BECE
[0004be00] 302f 0004                 move.w     4(a7),d0
[0004be04] c1c5                      muls.w     d5,d0
[0004be06] 916b 0012                 sub.w      d0,18(a3)
[0004be0a] 6046                      bra.s      $0004BE52
[0004be0c] 4a43                      tst.w      d3
[0004be0e] 6700 00be                 beq        $0004BECE
[0004be12] 302a 0038                 move.w     56(a2),d0
[0004be16] c1c5                      muls.w     d5,d0
[0004be18] d16b 0010                 add.w      d0,16(a3)
[0004be1c] 6034                      bra.s      $0004BE52
[0004be1e] b657                      cmp.w      (a7),d3
[0004be20] 6700 00ac                 beq        $0004BECE
[0004be24] 302a 0038                 move.w     56(a2),d0
[0004be28] c1c5                      muls.w     d5,d0
[0004be2a] 916b 0010                 sub.w      d0,16(a3)
[0004be2e] 6022                      bra.s      $0004BE52
[0004be30] 4a43                      tst.w      d3
[0004be32] 6700 009a                 beq        $0004BECE
[0004be36] 302f 0006                 move.w     6(a7),d0
[0004be3a] c1c5                      muls.w     d5,d0
[0004be3c] d16b 0010                 add.w      d0,16(a3)
[0004be40] 6010                      bra.s      $0004BE52
[0004be42] b657                      cmp.w      (a7),d3
[0004be44] 6700 0088                 beq        $0004BECE
[0004be48] 302f 0006                 move.w     6(a7),d0
[0004be4c] c1c5                      muls.w     d5,d0
[0004be4e] 916b 0010                 sub.w      d0,16(a3)
[0004be52] 302b 0010                 move.w     16(a3),d0
[0004be56] 6f04                      ble.s      $0004BE5C
[0004be58] 426b 0010                 clr.w      16(a3)
[0004be5c] 302b 0010                 move.w     16(a3),d0
[0004be60] b057                      cmp.w      (a7),d0
[0004be62] 6c04                      bge.s      $0004BE68
[0004be64] 3757 0010                 move.w     (a7),16(a3)
[0004be68] 302b 0012                 move.w     18(a3),d0
[0004be6c] 6f04                      ble.s      $0004BE72
[0004be6e] 426b 0012                 clr.w      18(a3)
[0004be72] bc6b 0012                 cmp.w      18(a3),d6
[0004be76] 6f04                      ble.s      $0004BE7C
[0004be78] 3746 0012                 move.w     d6,18(a3)
[0004be7c] 302b 0010                 move.w     16(a3),d0
[0004be80] 4440                      neg.w      d0
[0004be82] 322f 0006                 move.w     6(a7),d1
[0004be86] 4441                      neg.w      d1
[0004be88] c041                      and.w      d1,d0
[0004be8a] 4440                      neg.w      d0
[0004be8c] 3740 0010                 move.w     d0,16(a3)
[0004be90] 342b 0012                 move.w     18(a3),d2
[0004be94] 4442                      neg.w      d2
[0004be96] 302f 0004                 move.w     4(a7),d0
[0004be9a] 4440                      neg.w      d0
[0004be9c] c440                      and.w      d0,d2
[0004be9e] 4442                      neg.w      d2
[0004bea0] 3742 0012                 move.w     d2,18(a3)
[0004bea4] 536f 0008                 subq.w     #1,8(a7)
[0004bea8] 660e                      bne.s      $0004BEB8
[0004beaa] 204a                      movea.l    a2,a0
[0004beac] 4eb9 0005 080a            jsr        $0005080A
[0004beb2] 3f6f 0002 0008            move.w     2(a7),8(a7)
[0004beb8] 3204                      move.w     d4,d1
[0004beba] 3003                      move.w     d3,d0
[0004bebc] 204a                      movea.l    a2,a0
[0004bebe] 4eb9 0004 d468            jsr        $0004D468
[0004bec4] 6100 fd86                 bsr        $0004BC4C
[0004bec8] 4a40                      tst.w      d0
[0004beca] 6600 fec8                 bne        $0004BD94
[0004bece] 302f 0008                 move.w     8(a7),d0
[0004bed2] b06f 0002                 cmp.w      2(a7),d0
[0004bed6] 6708                      beq.s      $0004BEE0
[0004bed8] 204a                      movea.l    a2,a0
[0004beda] 4eb9 0005 080a            jsr        $0005080A
[0004bee0] 4fef 000c                 lea.l      12(a7),a7
[0004bee4] 4cdf 0c78                 movem.l    (a7)+,d3-d6/a2-a3
[0004bee8] 4e75                      rts
Awi_hslid:
[0004beea] 48e7 1820                 movem.l    d3-d4/a2,-(a7)
[0004beee] 2448                      movea.l    a0,a2
[0004bef0] 3800                      move.w     d0,d4
[0004bef2] 322a 0020                 move.w     32(a2),d1
[0004bef6] 6f58                      ble.s      $0004BF50
[0004bef8] 226a 0014                 movea.l    20(a2),a1
[0004befc] 3629 0010                 move.w     16(a1),d3
[0004bf00] 48c0                      ext.l      d0
[0004bf02] 3229 0014                 move.w     20(a1),d1
[0004bf06] 926a 0038                 sub.w      56(a2),d1
[0004bf0a] 48c1                      ext.l      d1
[0004bf0c] 4eb9 0007 76f0            jsr        $000776F0
[0004bf12] 223c ffff fc18            move.l     #$FFFFFC18,d1
[0004bf18] 4eb9 0007 773a            jsr        $0007773A
[0004bf1e] 322a 0048                 move.w     72(a2),d1
[0004bf22] 827c ff00                 or.w       #$FF00,d1
[0004bf26] c041                      and.w      d1,d0
[0004bf28] b043                      cmp.w      d3,d0
[0004bf2a] 6724                      beq.s      $0004BF50
[0004bf2c] 206a 0014                 movea.l    20(a2),a0
[0004bf30] 3140 0010                 move.w     d0,16(a0)
[0004bf34] 206a 0014                 movea.l    20(a2),a0
[0004bf38] 3828 0012                 move.w     18(a0),d4
[0004bf3c] 204a                      movea.l    a2,a0
[0004bf3e] 4eb9 0005 080a            jsr        $0005080A
[0004bf44] 3204                      move.w     d4,d1
[0004bf46] 3003                      move.w     d3,d0
[0004bf48] 204a                      movea.l    a2,a0
[0004bf4a] 4eb9 0004 d468            jsr        $0004D468
[0004bf50] 4cdf 0418                 movem.l    (a7)+,d3-d4/a2
[0004bf54] 4e75                      rts
Awi_vslid:
[0004bf56] 48e7 1820                 movem.l    d3-d4/a2,-(a7)
[0004bf5a] 2448                      movea.l    a0,a2
[0004bf5c] 3800                      move.w     d0,d4
[0004bf5e] 322a 0020                 move.w     32(a2),d1
[0004bf62] 6f56                      ble.s      $0004BFBA
[0004bf64] 226a 0014                 movea.l    20(a2),a1
[0004bf68] 3629 0012                 move.w     18(a1),d3
[0004bf6c] 48c0                      ext.l      d0
[0004bf6e] 3229 0016                 move.w     22(a1),d1
[0004bf72] 926a 003a                 sub.w      58(a2),d1
[0004bf76] 48c1                      ext.l      d1
[0004bf78] 4eb9 0007 76f0            jsr        $000776F0
[0004bf7e] 223c ffff fc18            move.l     #$FFFFFC18,d1
[0004bf84] 4eb9 0007 773a            jsr        $0007773A
[0004bf8a] 322a 0048                 move.w     72(a2),d1
[0004bf8e] e041                      asr.w      #8,d1
[0004bf90] c041                      and.w      d1,d0
[0004bf92] b043                      cmp.w      d3,d0
[0004bf94] 6724                      beq.s      $0004BFBA
[0004bf96] 206a 0014                 movea.l    20(a2),a0
[0004bf9a] 3140 0012                 move.w     d0,18(a0)
[0004bf9e] 206a 0014                 movea.l    20(a2),a0
[0004bfa2] 3828 0010                 move.w     16(a0),d4
[0004bfa6] 204a                      movea.l    a2,a0
[0004bfa8] 4eb9 0005 080a            jsr        $0005080A
[0004bfae] 3203                      move.w     d3,d1
[0004bfb0] 3004                      move.w     d4,d0
[0004bfb2] 204a                      movea.l    a2,a0
[0004bfb4] 4eb9 0004 d468            jsr        $0004D468
[0004bfba] 4cdf 0418                 movem.l    (a7)+,d3-d4/a2
[0004bfbe] 4e75                      rts
Awi_wheeled:
[0004bfc0] 48e7 1f38                 movem.l    d3-d7/a2-a4,-(a7)
[0004bfc4] 514f                      subq.w     #8,a7
[0004bfc6] 2448                      movea.l    a0,a2
[0004bfc8] 2849                      movea.l    a1,a4
[0004bfca] 3800                      move.w     d0,d4
[0004bfcc] 3a01                      move.w     d1,d5
[0004bfce] 4246                      clr.w      d6
[0004bfd0] 4eb9 0004 1ef0            jsr        $00041EF0
[0004bfd6] 3600                      move.w     d0,d3
[0004bfd8] 42a7                      clr.l      -(a7)
[0004bfda] 93c9                      suba.l     a1,a1
[0004bfdc] 3205                      move.w     d5,d1
[0004bfde] 204a                      movea.l    a2,a0
[0004bfe0] 3004                      move.w     d4,d0
[0004bfe2] 4eb9 0005 1f2c            jsr        $00051F2C
[0004bfe8] 584f                      addq.w     #4,a7
[0004bfea] 2008                      move.l     a0,d0
[0004bfec] 4e71                      nop
[0004bfee] 4a46                      tst.w      d6
[0004bff0] 6600 01a2                 bne        $0004C194
[0004bff4] 4244                      clr.w      d4
[0004bff6] 3a04                      move.w     d4,d5
[0004bff8] 47ef 0002                 lea.l      2(a7),a3
[0004bffc] 4853                      pea.l      (a3)
[0004bffe] 7210                      moveq.l    #16,d1
[0004c000] 302a 0020                 move.w     32(a2),d0
[0004c004] 4eb9 0007 14ea            jsr        $000714EA
[0004c00a] 584f                      addq.w     #4,a7
[0004c00c] 4857                      pea.l      (a7)
[0004c00e] 720f                      moveq.l    #15,d1
[0004c010] 302a 0020                 move.w     32(a2),d0
[0004c014] 4eb9 0007 14ea            jsr        $000714EA
[0004c01a] 584f                      addq.w     #4,a7
[0004c01c] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0004c022] 486f 0008                 pea.l      8(a7)
[0004c026] 486f 000e                 pea.l      14(a7)
[0004c02a] 43ef 0010                 lea.l      16(a7),a1
[0004c02e] 41ef 0010                 lea.l      16(a7),a0
[0004c032] 7008                      moveq.l    #8,d0
[0004c034] 4eb9 0006 aad2            jsr        $0006AAD2
[0004c03a] 4fef 000c                 lea.l      12(a7),a7
[0004c03e] 4a40                      tst.w      d0
[0004c040] 6700 0084                 beq        $0004C0C6
[0004c044] 7003                      moveq.l    #3,d0
[0004c046] c06f 0006                 and.w      6(a7),d0
[0004c04a] 5740                      subq.w     #3,d0
[0004c04c] 6600 0078                 bne.w      $0004C0C6
[0004c050] 3214                      move.w     (a4),d1
[0004c052] 6f16                      ble.s      $0004C06A
[0004c054] 343c 0080                 move.w     #$0080,d2
[0004c058] c46a 0022                 and.w      34(a2),d2
[0004c05c] 670c                      beq.s      $0004C06A
[0004c05e] 0c53 03e8                 cmpi.w     #$03E8,(a3)
[0004c062] 6c06                      bge.s      $0004C06A
[0004c064] 7a02                      moveq.l    #2,d5
[0004c066] 3c01                      move.w     d1,d6
[0004c068] 6018                      bra.s      $0004C082
[0004c06a] 3014                      move.w     (a4),d0
[0004c06c] 6a14                      bpl.s      $0004C082
[0004c06e] 7240                      moveq.l    #64,d1
[0004c070] c26a 0022                 and.w      34(a2),d1
[0004c074] 670c                      beq.s      $0004C082
[0004c076] 0c53 03e8                 cmpi.w     #$03E8,(a3)
[0004c07a] 6c06                      bge.s      $0004C082
[0004c07c] 7a03                      moveq.l    #3,d5
[0004c07e] 3c00                      move.w     d0,d6
[0004c080] 4446                      neg.w      d6
[0004c082] 302c 0002                 move.w     2(a4),d0
[0004c086] 6f18                      ble.s      $0004C0A0
[0004c088] 322a 0022                 move.w     34(a2),d1
[0004c08c] c27c 0400                 and.w      #$0400,d1
[0004c090] 670e                      beq.s      $0004C0A0
[0004c092] 0c57 03e8                 cmpi.w     #$03E8,(a7)
[0004c096] 6c08                      bge.s      $0004C0A0
[0004c098] 7807                      moveq.l    #7,d4
[0004c09a] 3e00                      move.w     d0,d7
[0004c09c] 6000 00ce                 bra        $0004C16C
[0004c0a0] 302c 0002                 move.w     2(a4),d0
[0004c0a4] 6a00 00c6                 bpl        $0004C16C
[0004c0a8] 322a 0022                 move.w     34(a2),d1
[0004c0ac] c27c 0200                 and.w      #$0200,d1
[0004c0b0] 6700 00ba                 beq        $0004C16C
[0004c0b4] 0c57 03e8                 cmpi.w     #$03E8,(a7)
[0004c0b8] 6c00 00b2                 bge        $0004C16C
[0004c0bc] 7806                      moveq.l    #6,d4
[0004c0be] 3e00                      move.w     d0,d7
[0004c0c0] 4447                      neg.w      d7
[0004c0c2] 6000 00a8                 bra        $0004C16C
[0004c0c6] 3014                      move.w     (a4),d0
[0004c0c8] 6f1c                      ble.s      $0004C0E6
[0004c0ca] 323c 0080                 move.w     #$0080,d1
[0004c0ce] c26a 0022                 and.w      34(a2),d1
[0004c0d2] 6712                      beq.s      $0004C0E6
[0004c0d4] 3403                      move.w     d3,d2
[0004c0d6] c47c 0400                 and.w      #$0400,d2
[0004c0da] 6700 0072                 beq.w      $0004C14E
[0004c0de] 0c53 03e8                 cmpi.w     #$03E8,(a3)
[0004c0e2] 6d00 006a                 blt.w      $0004C14E
[0004c0e6] 3014                      move.w     (a4),d0
[0004c0e8] 6a1a                      bpl.s      $0004C104
[0004c0ea] 7240                      moveq.l    #64,d1
[0004c0ec] c26a 0022                 and.w      34(a2),d1
[0004c0f0] 6712                      beq.s      $0004C104
[0004c0f2] 3403                      move.w     d3,d2
[0004c0f4] c47c 0400                 and.w      #$0400,d2
[0004c0f8] 6700 006c                 beq.w      $0004C166
[0004c0fc] 0c53 03e8                 cmpi.w     #$03E8,(a3)
[0004c100] 6d00 0064                 blt.w      $0004C166
[0004c104] 3014                      move.w     (a4),d0
[0004c106] 6f16                      ble.s      $0004C11E
[0004c108] 322a 0022                 move.w     34(a2),d1
[0004c10c] c27c 0400                 and.w      #$0400,d1
[0004c110] 670c                      beq.s      $0004C11E
[0004c112] 0c57 03e8                 cmpi.w     #$03E8,(a7)
[0004c116] 6c06                      bge.s      $0004C11E
[0004c118] 7807                      moveq.l    #7,d4
[0004c11a] 3e00                      move.w     d0,d7
[0004c11c] 604e                      bra.s      $0004C16C
[0004c11e] 3014                      move.w     (a4),d0
[0004c120] 6a18                      bpl.s      $0004C13A
[0004c122] 322a 0022                 move.w     34(a2),d1
[0004c126] c27c 0200                 and.w      #$0200,d1
[0004c12a] 670e                      beq.s      $0004C13A
[0004c12c] 0c57 03e8                 cmpi.w     #$03E8,(a7)
[0004c130] 6c08                      bge.s      $0004C13A
[0004c132] 7806                      moveq.l    #6,d4
[0004c134] 3e00                      move.w     d0,d7
[0004c136] 4447                      neg.w      d7
[0004c138] 6032                      bra.s      $0004C16C
[0004c13a] 3014                      move.w     (a4),d0
[0004c13c] 6f16                      ble.s      $0004C154
[0004c13e] 323c 0080                 move.w     #$0080,d1
[0004c142] c26a 0022                 and.w      34(a2),d1
[0004c146] 670c                      beq.s      $0004C154
[0004c148] 0c53 03e8                 cmpi.w     #$03E8,(a3)
[0004c14c] 6c06                      bge.s      $0004C154
[0004c14e] 7a02                      moveq.l    #2,d5
[0004c150] 3c14                      move.w     (a4),d6
[0004c152] 6018                      bra.s      $0004C16C
[0004c154] 3014                      move.w     (a4),d0
[0004c156] 6a14                      bpl.s      $0004C16C
[0004c158] 7240                      moveq.l    #64,d1
[0004c15a] c26a 0022                 and.w      34(a2),d1
[0004c15e] 670c                      beq.s      $0004C16C
[0004c160] 0c53 03e8                 cmpi.w     #$03E8,(a3)
[0004c164] 6c06                      bge.s      $0004C16C
[0004c166] 7a03                      moveq.l    #3,d5
[0004c168] 3c14                      move.w     (a4),d6
[0004c16a] 4446                      neg.w      d6
[0004c16c] 4a44                      tst.w      d4
[0004c16e] 6710                      beq.s      $0004C180
[0004c170] 4a47                      tst.w      d7
[0004c172] 670c                      beq.s      $0004C180
[0004c174] 3207                      move.w     d7,d1
[0004c176] 3004                      move.w     d4,d0
[0004c178] 204a                      movea.l    a2,a0
[0004c17a] 226a 007a                 movea.l    122(a2),a1
[0004c17e] 4e91                      jsr        (a1)
[0004c180] 4a45                      tst.w      d5
[0004c182] 6710                      beq.s      $0004C194
[0004c184] 4a46                      tst.w      d6
[0004c186] 670c                      beq.s      $0004C194
[0004c188] 3206                      move.w     d6,d1
[0004c18a] 3005                      move.w     d5,d0
[0004c18c] 204a                      movea.l    a2,a0
[0004c18e] 226a 007a                 movea.l    122(a2),a1
[0004c192] 4e91                      jsr        (a1)
[0004c194] 7001                      moveq.l    #1,d0
[0004c196] 504f                      addq.w     #8,a7
[0004c198] 4cdf 1cf8                 movem.l    (a7)+,d3-d7/a2-a4
[0004c19c] 4e75                      rts
Awi_obview:
[0004c19e] 48e7 1c38                 movem.l    d3-d5/a2-a4,-(a7)
[0004c1a2] 5d4f                      subq.w     #6,a7
[0004c1a4] 2448                      movea.l    a0,a2
[0004c1a6] 302a 0020                 move.w     32(a2),d0
[0004c1aa] 6f00 01f2                 ble        $0004C39E
[0004c1ae] 4240                      clr.w      d0
[0004c1b0] 266a 0014                 movea.l    20(a2),a3
[0004c1b4] 342a 0022                 move.w     34(a2),d2
[0004c1b8] c47c 01c0                 and.w      #$01C0,d2
[0004c1bc] b47c 01c0                 cmp.w      #$01C0,d2
[0004c1c0] 6604                      bne.s      $0004C1C6
[0004c1c2] 7201                      moveq.l    #1,d1
[0004c1c4] 6002                      bra.s      $0004C1C8
[0004c1c6] 4241                      clr.w      d1
[0004c1c8] 362a 0022                 move.w     34(a2),d3
[0004c1cc] c67c 0e00                 and.w      #$0E00,d3
[0004c1d0] b67c 0e00                 cmp.w      #$0E00,d3
[0004c1d4] 6604                      bne.s      $0004C1DA
[0004c1d6] 7401                      moveq.l    #1,d2
[0004c1d8] 6002                      bra.s      $0004C1DC
[0004c1da] 4242                      clr.w      d2
[0004c1dc] 362a 0048                 move.w     72(a2),d3
[0004c1e0] 867c ff00                 or.w       #$FF00,d3
[0004c1e4] 4443                      neg.w      d3
[0004c1e6] d643                      add.w      d3,d3
[0004c1e8] d769 0004                 add.w      d3,4(a1)
[0004c1ec] 362a 0048                 move.w     72(a2),d3
[0004c1f0] e043                      asr.w      #8,d3
[0004c1f2] 4443                      neg.w      d3
[0004c1f4] d643                      add.w      d3,d3
[0004c1f6] d769 0006                 add.w      d3,6(a1)
[0004c1fa] 3f6b 0010 0004            move.w     16(a3),4(a7)
[0004c200] 3f6b 0012 0002            move.w     18(a3),2(a7)
[0004c206] 3a2a 0038                 move.w     56(a2),d5
[0004c20a] 3eaa 003a                 move.w     58(a2),(a7)
[0004c20e] 4a42                      tst.w      d2
[0004c210] 670a                      beq.s      $0004C21C
[0004c212] 3611                      move.w     (a1),d3
[0004c214] 6a06                      bpl.s      $0004C21C
[0004c216] 976b 0010                 sub.w      d3,16(a3)
[0004c21a] 7001                      moveq.l    #1,d0
[0004c21c] 4a41                      tst.w      d1
[0004c21e] 670c                      beq.s      $0004C22C
[0004c220] 3629 0002                 move.w     2(a1),d3
[0004c224] 6a06                      bpl.s      $0004C22C
[0004c226] 976b 0012                 sub.w      d3,18(a3)
[0004c22a] 7001                      moveq.l    #1,d0
[0004c22c] 4a42                      tst.w      d2
[0004c22e] 670e                      beq.s      $0004C23E
[0004c230] ba69 0004                 cmp.w      4(a1),d5
[0004c234] 6c08                      bge.s      $0004C23E
[0004c236] 3569 0004 0038            move.w     4(a1),56(a2)
[0004c23c] 7001                      moveq.l    #1,d0
[0004c23e] 4a41                      tst.w      d1
[0004c240] 670e                      beq.s      $0004C250
[0004c242] 3629 0006                 move.w     6(a1),d3
[0004c246] b657                      cmp.w      (a7),d3
[0004c248] 6f06                      ble.s      $0004C250
[0004c24a] 3543 003a                 move.w     d3,58(a2)
[0004c24e] 7001                      moveq.l    #1,d0
[0004c250] 3811                      move.w     (a1),d4
[0004c252] d869 0004                 add.w      4(a1),d4
[0004c256] 986a 0038                 sub.w      56(a2),d4
[0004c25a] 4a42                      tst.w      d2
[0004c25c] 670a                      beq.s      $0004C268
[0004c25e] 4a44                      tst.w      d4
[0004c260] 6f06                      ble.s      $0004C268
[0004c262] 996b 0010                 sub.w      d4,16(a3)
[0004c266] 7001                      moveq.l    #1,d0
[0004c268] 3829 0002                 move.w     2(a1),d4
[0004c26c] d869 0006                 add.w      6(a1),d4
[0004c270] 986a 003a                 sub.w      58(a2),d4
[0004c274] 4a41                      tst.w      d1
[0004c276] 670a                      beq.s      $0004C282
[0004c278] 4a44                      tst.w      d4
[0004c27a] 6f06                      ble.s      $0004C282
[0004c27c] 996b 0012                 sub.w      d4,18(a3)
[0004c280] 7001                      moveq.l    #1,d0
[0004c282] 4a40                      tst.w      d0
[0004c284] 6700 0118                 beq        $0004C39E
[0004c288] 4243                      clr.w      d3
[0004c28a] 286a 005e                 movea.l    94(a2),a4
[0004c28e] 200c                      move.l     a4,d0
[0004c290] 6712                      beq.s      $0004C2A4
[0004c292] 322c 0002                 move.w     2(a4),d1
[0004c296] 48c1                      ext.l      d1
[0004c298] 2001                      move.l     d1,d0
[0004c29a] d080                      add.l      d0,d0
[0004c29c] d081                      add.l      d1,d0
[0004c29e] e788                      lsl.l      #3,d0
[0004c2a0] d674 0816                 add.w      22(a4,d0.l),d3
[0004c2a4] 226a 0018                 movea.l    24(a2),a1
[0004c2a8] 2009                      move.l     a1,d0
[0004c2aa] 6704                      beq.s      $0004C2B0
[0004c2ac] d669 0016                 add.w      22(a1),d3
[0004c2b0] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0004c2b6] 486a 002a                 pea.l      42(a2)
[0004c2ba] 486a 0028                 pea.l      40(a2)
[0004c2be] 302a 003a                 move.w     58(a2),d0
[0004c2c2] d043                      add.w      d3,d0
[0004c2c4] 3f00                      move.w     d0,-(a7)
[0004c2c6] 3f2a 0038                 move.w     56(a2),-(a7)
[0004c2ca] 322a 0036                 move.w     54(a2),d1
[0004c2ce] 9243                      sub.w      d3,d1
[0004c2d0] 3f01                      move.w     d1,-(a7)
[0004c2d2] 43ea 0026                 lea.l      38(a2),a1
[0004c2d6] 41ea 0024                 lea.l      36(a2),a0
[0004c2da] 342a 0034                 move.w     52(a2),d2
[0004c2de] 322a 0022                 move.w     34(a2),d1
[0004c2e2] 4240                      clr.w      d0
[0004c2e4] 4eb9 0006 d60a            jsr        $0006D60A
[0004c2ea] 4fef 0012                 lea.l      18(a7),a7
[0004c2ee] 302b 0010                 move.w     16(a3),d0
[0004c2f2] 4440                      neg.w      d0
[0004c2f4] 322a 0048                 move.w     72(a2),d1
[0004c2f8] 827c ff00                 or.w       #$FF00,d1
[0004c2fc] c041                      and.w      d1,d0
[0004c2fe] 4440                      neg.w      d0
[0004c300] 3740 0010                 move.w     d0,16(a3)
[0004c304] 322b 0012                 move.w     18(a3),d1
[0004c308] 4441                      neg.w      d1
[0004c30a] 342a 0048                 move.w     72(a2),d2
[0004c30e] e042                      asr.w      #8,d2
[0004c310] c242                      and.w      d2,d1
[0004c312] 4441                      neg.w      d1
[0004c314] 3741 0012                 move.w     d1,18(a3)
[0004c318] 204a                      movea.l    a2,a0
[0004c31a] 4eb9 0005 080a            jsr        $0005080A
[0004c320] 302b 0010                 move.w     16(a3),d0
[0004c324] b06f 0004                 cmp.w      4(a7),d0
[0004c328] 6618                      bne.s      $0004C342
[0004c32a] 322b 0012                 move.w     18(a3),d1
[0004c32e] b26f 0002                 cmp.w      2(a7),d1
[0004c332] 660e                      bne.s      $0004C342
[0004c334] ba6a 0038                 cmp.w      56(a2),d5
[0004c338] 6608                      bne.s      $0004C342
[0004c33a] 342a 003a                 move.w     58(a2),d2
[0004c33e] b457                      cmp.w      (a7),d2
[0004c340] 675c                      beq.s      $0004C39E
[0004c342] 006a 0010 0056            ori.w      #$0010,86(a2)
[0004c348] 3f2a 002a                 move.w     42(a2),-(a7)
[0004c34c] 3f2a 0028                 move.w     40(a2),-(a7)
[0004c350] 3f2a 0026                 move.w     38(a2),-(a7)
[0004c354] 3f2a 0024                 move.w     36(a2),-(a7)
[0004c358] 7205                      moveq.l    #5,d1
[0004c35a] 302a 0020                 move.w     32(a2),d0
[0004c35e] 4eb9 0007 1656            jsr        $00071656
[0004c364] 504f                      addq.w     #8,a7
[0004c366] 2079 0010 1f12            movea.l    ACSblk,a0
[0004c36c] 2268 0280                 movea.l    640(a0),a1
[0004c370] 0c51 0300                 cmpi.w     #$0300,(a1)
[0004c374] 6f0e                      ble.s      $0004C384
[0004c376] 0c51 0400                 cmpi.w     #$0400,(a1)
[0004c37a] 6c08                      bge.s      $0004C384
[0004c37c] 204a                      movea.l    a2,a0
[0004c37e] 4eb9 0004 f61c            jsr        $0004F61C
[0004c384] 4eb9 0004 6d70            jsr        $00046D70
[0004c38a] 7010                      moveq.l    #16,d0
[0004c38c] c06a 0056                 and.w      86(a2),d0
[0004c390] 670c                      beq.s      $0004C39E
[0004c392] 43ea 0024                 lea.l      36(a2),a1
[0004c396] 204a                      movea.l    a2,a0
[0004c398] 266a 006a                 movea.l    106(a2),a3
[0004c39c] 4e93                      jsr        (a3)
[0004c39e] 5c4f                      addq.w     #6,a7
[0004c3a0] 4cdf 1c38                 movem.l    (a7)+,d3-d5/a2-a4
[0004c3a4] 4e75                      rts
Aob_chdef:
[0004c3a6] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[0004c3aa] 2648                      movea.l    a0,a3
[0004c3ac] 2449                      movea.l    a1,a2
[0004c3ae] 7202                      moveq.l    #2,d1
[0004c3b0] 70ff                      moveq.l    #-1,d0
[0004c3b2] 2049                      movea.l    a1,a0
[0004c3b4] 4eb9 0004 aeca            jsr        $0004AECA
[0004c3ba] 3600                      move.w     d0,d3
[0004c3bc] 6b54                      bmi.s      $0004C412
[0004c3be] 323c 4000                 move.w     #$4000,d1
[0004c3c2] 204a                      movea.l    a2,a0
[0004c3c4] 4eb9 0004 aeca            jsr        $0004AECA
[0004c3ca] 3800                      move.w     d0,d4
[0004c3cc] 4a40                      tst.w      d0
[0004c3ce] 6b14                      bmi.s      $0004C3E4
[0004c3d0] 323c 0080                 move.w     #$0080,d1
[0004c3d4] 48c0                      ext.l      d0
[0004c3d6] 2400                      move.l     d0,d2
[0004c3d8] d482                      add.l      d2,d2
[0004c3da] d480                      add.l      d0,d2
[0004c3dc] e78a                      lsl.l      #3,d2
[0004c3de] c272 2808                 and.w      8(a2,d2.l),d1
[0004c3e2] 6710                      beq.s      $0004C3F4
[0004c3e4] 323c 4000                 move.w     #$4000,d1
[0004c3e8] 70ff                      moveq.l    #-1,d0
[0004c3ea] 204a                      movea.l    a2,a0
[0004c3ec] 4eb9 0004 aeca            jsr        $0004AECA
[0004c3f2] 3800                      move.w     d0,d4
[0004c3f4] 4a44                      tst.w      d4
[0004c3f6] 6b1a                      bmi.s      $0004C412
[0004c3f8] 303c 0080                 move.w     #$0080,d0
[0004c3fc] 3404                      move.w     d4,d2
[0004c3fe] 48c2                      ext.l      d2
[0004c400] 2202                      move.l     d2,d1
[0004c402] d281                      add.l      d1,d1
[0004c404] d282                      add.l      d2,d1
[0004c406] e789                      lsl.l      #3,d1
[0004c408] c072 1808                 and.w      8(a2,d1.l),d0
[0004c40c] 6604                      bne.s      $0004C412
[0004c40e] b843                      cmp.w      d3,d4
[0004c410] 6606                      bne.s      $0004C418
[0004c412] 4240                      clr.w      d0
[0004c414] 6000 008a                 bra        $0004C4A0
[0004c418] 4a43                      tst.w      d3
[0004c41a] 6b12                      bmi.s      $0004C42E
[0004c41c] 3203                      move.w     d3,d1
[0004c41e] 48c1                      ext.l      d1
[0004c420] 2001                      move.l     d1,d0
[0004c422] d080                      add.l      d0,d0
[0004c424] d081                      add.l      d1,d0
[0004c426] e788                      lsl.l      #3,d0
[0004c428] 0272 fffd 0808            andi.w     #$FFFD,8(a2,d0.l)
[0004c42e] 3204                      move.w     d4,d1
[0004c430] 48c1                      ext.l      d1
[0004c432] 2001                      move.l     d1,d0
[0004c434] d080                      add.l      d0,d0
[0004c436] d081                      add.l      d1,d0
[0004c438] e788                      lsl.l      #3,d0
[0004c43a] 0072 0002 0808            ori.w      #$0002,8(a2,d0.l)
[0004c440] 2079 0010 1f12            movea.l    ACSblk,a0
[0004c446] 214a 025c                 move.l     a2,604(a0)
[0004c44a] b5eb 0018                 cmpa.l     24(a3),a2
[0004c44e] 662c                      bne.s      $0004C47C
[0004c450] 3003                      move.w     d3,d0
[0004c452] 807c 1000                 or.w       #$1000,d0
[0004c456] 204b                      movea.l    a3,a0
[0004c458] 6100 f3ec                 bsr        $0004B846
[0004c45c] 3404                      move.w     d4,d2
[0004c45e] 48c2                      ext.l      d2
[0004c460] 2002                      move.l     d2,d0
[0004c462] d080                      add.l      d0,d0
[0004c464] d082                      add.l      d2,d0
[0004c466] e788                      lsl.l      #3,d0
[0004c468] 3232 080a                 move.w     10(a2,d0.l),d1
[0004c46c] 3004                      move.w     d4,d0
[0004c46e] 807c 1000                 or.w       #$1000,d0
[0004c472] 204b                      movea.l    a3,a0
[0004c474] 226b 0066                 movea.l    102(a3),a1
[0004c478] 4e91                      jsr        (a1)
[0004c47a] 6022                      bra.s      $0004C49E
[0004c47c] 3003                      move.w     d3,d0
[0004c47e] 204b                      movea.l    a3,a0
[0004c480] 6100 f3c4                 bsr        $0004B846
[0004c484] 3404                      move.w     d4,d2
[0004c486] 48c2                      ext.l      d2
[0004c488] 2002                      move.l     d2,d0
[0004c48a] d080                      add.l      d0,d0
[0004c48c] d082                      add.l      d2,d0
[0004c48e] e788                      lsl.l      #3,d0
[0004c490] 3232 080a                 move.w     10(a2,d0.l),d1
[0004c494] 204b                      movea.l    a3,a0
[0004c496] 226b 0066                 movea.l    102(a3),a1
[0004c49a] 3004                      move.w     d4,d0
[0004c49c] 4e91                      jsr        (a1)
[0004c49e] 7001                      moveq.l    #1,d0
[0004c4a0] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[0004c4a4] 4e75                      rts
Awi_find_edit:
[0004c4a6] 48e7 103e                 movem.l    d3/a2-a6,-(a7)
[0004c4aa] 2448                      movea.l    a0,a2
[0004c4ac] 2a49                      movea.l    a1,a5
[0004c4ae] 2c6f 0020                 movea.l    32(a7),a6
[0004c4b2] 362a 001c                 move.w     28(a2),d3
[0004c4b6] 4a43                      tst.w      d3
[0004c4b8] 6b3e                      bmi.s      $0004C4F8
[0004c4ba] 3003                      move.w     d3,d0
[0004c4bc] c07c 1000                 and.w      #$1000,d0
[0004c4c0] 6706                      beq.s      $0004C4C8
[0004c4c2] 266a 0018                 movea.l    24(a2),a3
[0004c4c6] 6004                      bra.s      $0004C4CC
[0004c4c8] 266a 0014                 movea.l    20(a2),a3
[0004c4cc] 200b                      move.l     a3,d0
[0004c4ce] 6726                      beq.s      $0004C4F6
[0004c4d0] 3403                      move.w     d3,d2
[0004c4d2] c47c 0fff                 and.w      #$0FFF,d2
[0004c4d6] 48c2                      ext.l      d2
[0004c4d8] 2202                      move.l     d2,d1
[0004c4da] d281                      add.l      d1,d1
[0004c4dc] d282                      add.l      d2,d1
[0004c4de] e789                      lsl.l      #3,d1
[0004c4e0] 0c33 0018 1807            cmpi.b     #$18,7(a3,d1.l)
[0004c4e6] 660e                      bne.s      $0004C4F6
[0004c4e8] 2873 180c                 movea.l    12(a3,d1.l),a4
[0004c4ec] 200c                      move.l     a4,d0
[0004c4ee] 6706                      beq.s      $0004C4F6
[0004c4f0] 202c 0008                 move.l     8(a4),d0
[0004c4f4] 6602                      bne.s      $0004C4F8
[0004c4f6] 76ff                      moveq.l    #-1,d3
[0004c4f8] 4a43                      tst.w      d3
[0004c4fa] 6a34                      bpl.s      $0004C530
[0004c4fc] 202a 0014                 move.l     20(a2),d0
[0004c500] 672e                      beq.s      $0004C530
[0004c502] 7208                      moveq.l    #8,d1
[0004c504] 2040                      movea.l    d0,a0
[0004c506] 70ff                      moveq.l    #-1,d0
[0004c508] 4eb9 0004 aeca            jsr        $0004AECA
[0004c50e] 3600                      move.w     d0,d3
[0004c510] 6a1e                      bpl.s      $0004C530
[0004c512] 222a 0018                 move.l     24(a2),d1
[0004c516] 6718                      beq.s      $0004C530
[0004c518] 2041                      movea.l    d1,a0
[0004c51a] 70ff                      moveq.l    #-1,d0
[0004c51c] 7208                      moveq.l    #8,d1
[0004c51e] 4eb9 0004 aeca            jsr        $0004AECA
[0004c524] 3600                      move.w     d0,d3
[0004c526] 867c 1000                 or.w       #$1000,d3
[0004c52a] 6b04                      bmi.s      $0004C530
[0004c52c] 867c 1000                 or.w       #$1000,d3
[0004c530] 4a43                      tst.w      d3
[0004c532] 6f54                      ble.s      $0004C588
[0004c534] 3003                      move.w     d3,d0
[0004c536] c07c 1000                 and.w      #$1000,d0
[0004c53a] 6716                      beq.s      $0004C552
[0004c53c] 2aaa 0018                 move.l     24(a2),(a5)
[0004c540] 206f 001c                 movea.l    28(a7),a0
[0004c544] 20aa 0014                 move.l     20(a2),(a0)
[0004c548] 3203                      move.w     d3,d1
[0004c54a] c27c 0fff                 and.w      #$0FFF,d1
[0004c54e] 3c81                      move.w     d1,(a6)
[0004c550] 600e                      bra.s      $0004C560
[0004c552] 2aaa 0014                 move.l     20(a2),(a5)
[0004c556] 206f 001c                 movea.l    28(a7),a0
[0004c55a] 20aa 0018                 move.l     24(a2),(a0)
[0004c55e] 3c83                      move.w     d3,(a6)
[0004c560] 3216                      move.w     (a6),d1
[0004c562] 48c1                      ext.l      d1
[0004c564] 2001                      move.l     d1,d0
[0004c566] d080                      add.l      d0,d0
[0004c568] d081                      add.l      d1,d0
[0004c56a] e788                      lsl.l      #3,d0
[0004c56c] 2055                      movea.l    (a5),a0
[0004c56e] 0c30 0018 0807            cmpi.b     #$18,7(a0,d0.l)
[0004c574] 6612                      bne.s      $0004C588
[0004c576] 2870 080c                 movea.l    12(a0,d0.l),a4
[0004c57a] 240c                      move.l     a4,d2
[0004c57c] 670a                      beq.s      $0004C588
[0004c57e] 242c 0008                 move.l     8(a4),d2
[0004c582] 6704                      beq.s      $0004C588
[0004c584] 7001                      moveq.l    #1,d0
[0004c586] 600e                      bra.s      $0004C596
[0004c588] 7000                      moveq.l    #0,d0
[0004c58a] 206f 001c                 movea.l    28(a7),a0
[0004c58e] 2080                      move.l     d0,(a0)
[0004c590] 2a80                      move.l     d0,(a5)
[0004c592] 4256                      clr.w      (a6)
[0004c594] 4240                      clr.w      d0
[0004c596] 4cdf 7c08                 movem.l    (a7)+,d3/a2-a6
[0004c59a] 4e75                      rts
Awi_char:
[0004c59c] 48e7 0038                 movem.l    a2-a4,-(a7)
[0004c5a0] 554f                      subq.w     #2,a7
[0004c5a2] 2448                      movea.l    a0,a2
[0004c5a4] 2649                      movea.l    a1,a3
[0004c5a6] 41f9 000d 3d7a            lea.l      $000D3D7A,a0
[0004c5ac] 43d7                      lea.l      (a7),a1
[0004c5ae] 12d8                      move.b     (a0)+,(a1)+
[0004c5b0] 12d8                      move.b     (a0)+,(a1)+
[0004c5b2] 1e80                      move.b     d0,(a7)
[0004c5b4] 43d7                      lea.l      (a7),a1
[0004c5b6] 204b                      movea.l    a3,a0
[0004c5b8] 286a 0008                 movea.l    8(a2),a4
[0004c5bc] 303c 02c0                 move.w     #$02C0,d0
[0004c5c0] 4e94                      jsr        (a4)
[0004c5c2] 544f                      addq.w     #2,a7
[0004c5c4] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0004c5c8] 4e75                      rts
Awi_firstedit:
[0004c5ca] 3f03                      move.w     d3,-(a7)
[0004c5cc] 2f0a                      move.l     a2,-(a7)
[0004c5ce] 2448                      movea.l    a0,a2
[0004c5d0] 202a 0018                 move.l     24(a2),d0
[0004c5d4] 6716                      beq.s      $0004C5EC
[0004c5d6] 7208                      moveq.l    #8,d1
[0004c5d8] 2040                      movea.l    d0,a0
[0004c5da] 70ff                      moveq.l    #-1,d0
[0004c5dc] 4eb9 0004 aeca            jsr        $0004AECA
[0004c5e2] 3600                      move.w     d0,d3
[0004c5e4] 6f06                      ble.s      $0004C5EC
[0004c5e6] 807c 1000                 or.w       #$1000,d0
[0004c5ea] 6016                      bra.s      $0004C602
[0004c5ec] 7208                      moveq.l    #8,d1
[0004c5ee] 70ff                      moveq.l    #-1,d0
[0004c5f0] 206a 0014                 movea.l    20(a2),a0
[0004c5f4] 4eb9 0004 aeca            jsr        $0004AECA
[0004c5fa] 3600                      move.w     d0,d3
[0004c5fc] 6f02                      ble.s      $0004C600
[0004c5fe] 6002                      bra.s      $0004C602
[0004c600] 70ff                      moveq.l    #-1,d0
[0004c602] 245f                      movea.l    (a7)+,a2
[0004c604] 361f                      move.w     (a7)+,d3
[0004c606] 4e75                      rts
Awi_lastedit:
[0004c608] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[0004c60c] 2648                      movea.l    a0,a3
[0004c60e] 95ca                      suba.l     a2,a2
[0004c610] 202b 0014                 move.l     20(a3),d0
[0004c614] 6716                      beq.s      $0004C62C
[0004c616] 7208                      moveq.l    #8,d1
[0004c618] 2040                      movea.l    d0,a0
[0004c61a] 70ff                      moveq.l    #-1,d0
[0004c61c] 4eb9 0004 aeca            jsr        $0004AECA
[0004c622] 4a40                      tst.w      d0
[0004c624] 6f06                      ble.s      $0004C62C
[0004c626] 246b 0014                 movea.l    20(a3),a2
[0004c62a] 6004                      bra.s      $0004C630
[0004c62c] 246b 0018                 movea.l    24(a3),a2
[0004c630] 200a                      move.l     a2,d0
[0004c632] 672c                      beq.s      $0004C660
[0004c634] 76ff                      moveq.l    #-1,d3
[0004c636] 3803                      move.w     d3,d4
[0004c638] 7208                      moveq.l    #8,d1
[0004c63a] 3004                      move.w     d4,d0
[0004c63c] 204a                      movea.l    a2,a0
[0004c63e] 4eb9 0004 aeca            jsr        $0004AECA
[0004c644] 3600                      move.w     d0,d3
[0004c646] 4a40                      tst.w      d0
[0004c648] 6eec                      bgt.s      $0004C636
[0004c64a] 4a44                      tst.w      d4
[0004c64c] 6f12                      ble.s      $0004C660
[0004c64e] b5eb 0018                 cmpa.l     24(a3),a2
[0004c652] 6608                      bne.s      $0004C65C
[0004c654] 3004                      move.w     d4,d0
[0004c656] 807c 1000                 or.w       #$1000,d0
[0004c65a] 6002                      bra.s      $0004C65E
[0004c65c] 3004                      move.w     d4,d0
[0004c65e] 6002                      bra.s      $0004C662
[0004c660] 70ff                      moveq.l    #-1,d0
[0004c662] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[0004c666] 4e75                      rts
Awi_focuschg:
[0004c668] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0004c66c] 4fef fff6                 lea.l      -10(a7),a7
[0004c670] 2648                      movea.l    a0,a3
[0004c672] 3600                      move.w     d0,d3
[0004c674] 3f41 0008                 move.w     d1,8(a7)
[0004c678] 45ef 0008                 lea.l      8(a7),a2
[0004c67c] 3012                      move.w     (a2),d0
[0004c67e] 6f00 0072                 ble.w      $0004C6F2
[0004c682] c07c 1000                 and.w      #$1000,d0
[0004c686] 6706                      beq.s      $0004C68E
[0004c688] 286b 0018                 movea.l    24(a3),a4
[0004c68c] 6004                      bra.s      $0004C692
[0004c68e] 286b 0014                 movea.l    20(a3),a4
[0004c692] 224a                      movea.l    a2,a1
[0004c694] 7008                      moveq.l    #8,d0
[0004c696] 204b                      movea.l    a3,a0
[0004c698] 2a6b 0004                 movea.l    4(a3),a5
[0004c69c] 4e95                      jsr        (a5)
[0004c69e] 4a40                      tst.w      d0
[0004c6a0] 6708                      beq.s      $0004C6AA
[0004c6a2] b652                      cmp.w      (a2),d3
[0004c6a4] 6604                      bne.s      $0004C6AA
[0004c6a6] 4240                      clr.w      d0
[0004c6a8] 604a                      bra.s      $0004C6F4
[0004c6aa] 6100 ebda                 bsr        $0004B286
[0004c6ae] 3752 001c                 move.w     (a2),28(a3)
[0004c6b2] 3012                      move.w     (a2),d0
[0004c6b4] c07c 0fff                 and.w      #$0FFF,d0
[0004c6b8] 224c                      movea.l    a4,a1
[0004c6ba] 41d7                      lea.l      (a7),a0
[0004c6bc] 4eb9 0004 a3be            jsr        $0004A3BE
[0004c6c2] 3017                      move.w     (a7),d0
[0004c6c4] 6b1a                      bmi.s      $0004C6E0
[0004c6c6] 322f 0002                 move.w     2(a7),d1
[0004c6ca] 6b14                      bmi.s      $0004C6E0
[0004c6cc] d06f 0004                 add.w      4(a7),d0
[0004c6d0] b06b 0038                 cmp.w      56(a3),d0
[0004c6d4] 6c0a                      bge.s      $0004C6E0
[0004c6d6] d26f 0006                 add.w      6(a7),d1
[0004c6da] b26b 003a                 cmp.w      58(a3),d1
[0004c6de] 6d0e                      blt.s      $0004C6EE
[0004c6e0] 43d7                      lea.l      (a7),a1
[0004c6e2] 204b                      movea.l    a3,a0
[0004c6e4] 6100 fab8                 bsr        $0004C19E
[0004c6e8] 4eb9 0004 6d70            jsr        $00046D70
[0004c6ee] 6100 ec4c                 bsr        $0004B33C
[0004c6f2] 7001                      moveq.l    #1,d0
[0004c6f4] 4fef 000a                 lea.l      10(a7),a7
[0004c6f8] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0004c6fc] 4e75                      rts
Awi_newsel:
[0004c6fe] 3f04                      move.w     d4,-(a7)
[0004c700] 2f0a                      move.l     a2,-(a7)
[0004c702] 514f                      subq.w     #8,a7
[0004c704] 2448                      movea.l    a0,a2
[0004c706] 3801                      move.w     d1,d4
[0004c708] 4a40                      tst.w      d0
[0004c70a] 6f08                      ble.s      $0004C714
[0004c70c] 4eb9 0004 492a            jsr        $0004492A
[0004c712] 6006                      bra.s      $0004C71A
[0004c714] 4eb9 0004 4a26            jsr        $00044A26
[0004c71a] 3004                      move.w     d4,d0
[0004c71c] 204a                      movea.l    a2,a0
[0004c71e] 4eb9 0004 487c            jsr        $0004487C
[0004c724] 3004                      move.w     d4,d0
[0004c726] 226a 0014                 movea.l    20(a2),a1
[0004c72a] 41d7                      lea.l      (a7),a0
[0004c72c] 4eb9 0004 a3be            jsr        $0004A3BE
[0004c732] 43d7                      lea.l      (a7),a1
[0004c734] 204a                      movea.l    a2,a0
[0004c736] 6100 fa66                 bsr        $0004C19E
[0004c73a] 504f                      addq.w     #8,a7
[0004c73c] 245f                      movea.l    (a7)+,a2
[0004c73e] 381f                      move.w     (a7)+,d4
[0004c740] 4e75                      rts
Awi_prevsel:
[0004c742] 48e7 1f20                 movem.l    d3-d7/a2,-(a7)
[0004c746] 3a00                      move.w     d0,d5
[0004c748] 3e01                      move.w     d1,d7
[0004c74a] 76ff                      moveq.l    #-1,d3
[0004c74c] 2468 0014                 movea.l    20(a0),a2
[0004c750] 3c2a 0002                 move.w     2(a2),d6
[0004c754] 382a 0004                 move.w     4(a2),d4
[0004c758] 3004                      move.w     d4,d0
[0004c75a] 48c0                      ext.l      d0
[0004c75c] 2400                      move.l     d0,d2
[0004c75e] d482                      add.l      d2,d2
[0004c760] d480                      add.l      d0,d2
[0004c762] e78a                      lsl.l      #3,d2
[0004c764] 3232 2808                 move.w     8(a2,d2.l),d1
[0004c768] c27c 8000                 and.w      #$8000,d1
[0004c76c] 6702                      beq.s      $0004C770
[0004c76e] 5344                      subq.w     #1,d4
[0004c770] b846                      cmp.w      d6,d4
[0004c772] 6606                      bne.s      $0004C77A
[0004c774] 3006                      move.w     d6,d0
[0004c776] 6000 007e                 bra.w      $0004C7F6
[0004c77a] ba44                      cmp.w      d4,d5
[0004c77c] 6c06                      bge.s      $0004C784
[0004c77e] 4a45                      tst.w      d5
[0004c780] 6702                      beq.s      $0004C784
[0004c782] 3805                      move.w     d5,d4
[0004c784] 605e                      bra.s      $0004C7E4
[0004c786] 7001                      moveq.l    #1,d0
[0004c788] 3406                      move.w     d6,d2
[0004c78a] 48c2                      ext.l      d2
[0004c78c] 2202                      move.l     d2,d1
[0004c78e] d281                      add.l      d1,d1
[0004c790] d282                      add.l      d2,d1
[0004c792] e789                      lsl.l      #3,d1
[0004c794] c072 1808                 and.w      8(a2,d1.l),d0
[0004c798] 6736                      beq.s      $0004C7D0
[0004c79a] 303c 0080                 move.w     #$0080,d0
[0004c79e] c072 1808                 and.w      8(a2,d1.l),d0
[0004c7a2] 662c                      bne.s      $0004C7D0
[0004c7a4] 4a47                      tst.w      d7
[0004c7a6] 6726                      beq.s      $0004C7CE
[0004c7a8] 4a45                      tst.w      d5
[0004c7aa] 6722                      beq.s      $0004C7CE
[0004c7ac] 3005                      move.w     d5,d0
[0004c7ae] 48c0                      ext.l      d0
[0004c7b0] 2400                      move.l     d0,d2
[0004c7b2] d482                      add.l      d2,d2
[0004c7b4] d480                      add.l      d0,d2
[0004c7b6] e78a                      lsl.l      #3,d2
[0004c7b8] 3232 2810                 move.w     16(a2,d2.l),d1
[0004c7bc] 3006                      move.w     d6,d0
[0004c7be] 48c0                      ext.l      d0
[0004c7c0] 2400                      move.l     d0,d2
[0004c7c2] d482                      add.l      d2,d2
[0004c7c4] d480                      add.l      d0,d2
[0004c7c6] e78a                      lsl.l      #3,d2
[0004c7c8] b272 2810                 cmp.w      16(a2,d2.l),d1
[0004c7cc] 6602                      bne.s      $0004C7D0
[0004c7ce] 3606                      move.w     d6,d3
[0004c7d0] 3206                      move.w     d6,d1
[0004c7d2] 48c1                      ext.l      d1
[0004c7d4] 2001                      move.l     d1,d0
[0004c7d6] d080                      add.l      d0,d0
[0004c7d8] d081                      add.l      d1,d0
[0004c7da] e788                      lsl.l      #3,d0
[0004c7dc] 3c32 0800                 move.w     0(a2,d0.l),d6
[0004c7e0] 4a46                      tst.w      d6
[0004c7e2] 6710                      beq.s      $0004C7F4
[0004c7e4] 4a45                      tst.w      d5
[0004c7e6] 6704                      beq.s      $0004C7EC
[0004c7e8] b846                      cmp.w      d6,d4
[0004c7ea] 6e9a                      bgt.s      $0004C786
[0004c7ec] 4a45                      tst.w      d5
[0004c7ee] 6604                      bne.s      $0004C7F4
[0004c7f0] b846                      cmp.w      d6,d4
[0004c7f2] 6c92                      bge.s      $0004C786
[0004c7f4] 3003                      move.w     d3,d0
[0004c7f6] 4cdf 04f8                 movem.l    (a7)+,d3-d7/a2
[0004c7fa] 4e75                      rts
Awi_nextsel:
[0004c7fc] 48e7 1f20                 movem.l    d3-d7/a2,-(a7)
[0004c800] 3a00                      move.w     d0,d5
[0004c802] 3e01                      move.w     d1,d7
[0004c804] 2468 0014                 movea.l    20(a0),a2
[0004c808] 362a 0002                 move.w     2(a2),d3
[0004c80c] 382a 0004                 move.w     4(a2),d4
[0004c810] 3004                      move.w     d4,d0
[0004c812] 48c0                      ext.l      d0
[0004c814] 2400                      move.l     d0,d2
[0004c816] d482                      add.l      d2,d2
[0004c818] d480                      add.l      d0,d2
[0004c81a] e78a                      lsl.l      #3,d2
[0004c81c] 3232 2808                 move.w     8(a2,d2.l),d1
[0004c820] c27c 8000                 and.w      #$8000,d1
[0004c824] 6702                      beq.s      $0004C828
[0004c826] 5344                      subq.w     #1,d4
[0004c828] b843                      cmp.w      d3,d4
[0004c82a] 6606                      bne.s      $0004C832
[0004c82c] 3003                      move.w     d3,d0
[0004c82e] 6000 007c                 bra.w      $0004C8AC
[0004c832] 4a45                      tst.w      d5
[0004c834] 6718                      beq.s      $0004C84E
[0004c836] ba43                      cmp.w      d3,d5
[0004c838] 6f02                      ble.s      $0004C83C
[0004c83a] 3605                      move.w     d5,d3
[0004c83c] 3203                      move.w     d3,d1
[0004c83e] 48c1                      ext.l      d1
[0004c840] 2001                      move.l     d1,d0
[0004c842] d080                      add.l      d0,d0
[0004c844] d081                      add.l      d1,d0
[0004c846] e788                      lsl.l      #3,d0
[0004c848] 3c32 0800                 move.w     0(a2,d0.l),d6
[0004c84c] 6058                      bra.s      $0004C8A6
[0004c84e] 3c03                      move.w     d3,d6
[0004c850] 6054                      bra.s      $0004C8A6
[0004c852] 7001                      moveq.l    #1,d0
[0004c854] 3406                      move.w     d6,d2
[0004c856] 48c2                      ext.l      d2
[0004c858] 2202                      move.l     d2,d1
[0004c85a] d281                      add.l      d1,d1
[0004c85c] d282                      add.l      d2,d1
[0004c85e] e789                      lsl.l      #3,d1
[0004c860] c072 1808                 and.w      8(a2,d1.l),d0
[0004c864] 672c                      beq.s      $0004C892
[0004c866] 363c 0080                 move.w     #$0080,d3
[0004c86a] c672 1808                 and.w      8(a2,d1.l),d3
[0004c86e] 6622                      bne.s      $0004C892
[0004c870] 4a47                      tst.w      d7
[0004c872] 671a                      beq.s      $0004C88E
[0004c874] 4a45                      tst.w      d5
[0004c876] 6716                      beq.s      $0004C88E
[0004c878] 3405                      move.w     d5,d2
[0004c87a] 48c2                      ext.l      d2
[0004c87c] 2002                      move.l     d2,d0
[0004c87e] d080                      add.l      d0,d0
[0004c880] d082                      add.l      d2,d0
[0004c882] e788                      lsl.l      #3,d0
[0004c884] 3632 0810                 move.w     16(a2,d0.l),d3
[0004c888] b672 1810                 cmp.w      16(a2,d1.l),d3
[0004c88c] 6604                      bne.s      $0004C892
[0004c88e] 3006                      move.w     d6,d0
[0004c890] 601a                      bra.s      $0004C8AC
[0004c892] 3206                      move.w     d6,d1
[0004c894] 48c1                      ext.l      d1
[0004c896] 2001                      move.l     d1,d0
[0004c898] d080                      add.l      d0,d0
[0004c89a] d081                      add.l      d1,d0
[0004c89c] e788                      lsl.l      #3,d0
[0004c89e] 3c32 0800                 move.w     0(a2,d0.l),d6
[0004c8a2] 4a46                      tst.w      d6
[0004c8a4] 6704                      beq.s      $0004C8AA
[0004c8a6] b846                      cmp.w      d6,d4
[0004c8a8] 6ca8                      bge.s      $0004C852
[0004c8aa] 70ff                      moveq.l    #-1,d0
[0004c8ac] 4cdf 04f8                 movem.l    (a7)+,d3-d7/a2
[0004c8b0] 4e75                      rts
Awi_help:
[0004c8b2] 2f0a                      move.l     a2,-(a7)
[0004c8b4] 2f0b                      move.l     a3,-(a7)
[0004c8b6] 514f                      subq.w     #8,a7
[0004c8b8] 2448                      movea.l    a0,a2
[0004c8ba] 2f6a 009a 0004            move.l     154(a2),4(a7)
[0004c8c0] 2eaa 009e                 move.l     158(a2),(a7)
[0004c8c4] 43d7                      lea.l      (a7),a1
[0004c8c6] 7029                      moveq.l    #41,d0
[0004c8c8] 266a 0004                 movea.l    4(a2),a3
[0004c8cc] 4e93                      jsr        (a3)
[0004c8ce] 206f 0004                 movea.l    4(a7),a0
[0004c8d2] 4eb9 0004 3a92            jsr        $00043A92
[0004c8d8] 4a40                      tst.w      d0
[0004c8da] 6648                      bne.s      $0004C924
[0004c8dc] 2057                      movea.l    (a7),a0
[0004c8de] 4eb9 0004 3a92            jsr        $00043A92
[0004c8e4] 4a40                      tst.w      d0
[0004c8e6] 662a                      bne.s      $0004C912
[0004c8e8] 2257                      movea.l    (a7),a1
[0004c8ea] 2079 0010 1f12            movea.l    ACSblk,a0
[0004c8f0] 41e8 0220                 lea.l      544(a0),a0
[0004c8f4] 4eb9 0004 38ac            jsr        $000438AC
[0004c8fa] 4a40                      tst.w      d0
[0004c8fc] 6714                      beq.s      $0004C912
[0004c8fe] 2f0a                      move.l     a2,-(a7)
[0004c900] 226f 0008                 movea.l    8(a7),a1
[0004c904] 206f 0004                 movea.l    4(a7),a0
[0004c908] 4eb9 0005 86e2            jsr        $000586E2
[0004c90e] 584f                      addq.w     #4,a7
[0004c910] 6014                      bra.s      $0004C926
[0004c912] 2f0a                      move.l     a2,-(a7)
[0004c914] 226f 0008                 movea.l    8(a7),a1
[0004c918] 91c8                      suba.l     a0,a0
[0004c91a] 4eb9 0005 86e2            jsr        $000586E2
[0004c920] 584f                      addq.w     #4,a7
[0004c922] 6002                      bra.s      $0004C926
[0004c924] 4240                      clr.w      d0
[0004c926] 504f                      addq.w     #8,a7
[0004c928] 265f                      movea.l    (a7)+,a3
[0004c92a] 245f                      movea.l    (a7)+,a2
[0004c92c] 4e75                      rts
Awi_keyACWork:
[0004c92e] 48e7 1c30                 movem.l    d3-d5/a2-a3,-(a7)
[0004c932] 2648                      movea.l    a0,a3
[0004c934] 3a00                      move.w     d0,d5
[0004c936] 3801                      move.w     d1,d4
[0004c938] 76ff                      moveq.l    #-1,d3
[0004c93a] 3404                      move.w     d4,d2
[0004c93c] c47c 8c00                 and.w      #$8C00,d2
[0004c940] 6600 00bc                 bne        $0004C9FE
[0004c944] 3004                      move.w     d4,d0
[0004c946] c07c 00ff                 and.w      #$00FF,d0
[0004c94a] 4eb9 0007 725e            jsr        $0007725E
[0004c950] 4a40                      tst.w      d0
[0004c952] 6700 00aa                 beq        $0004C9FE
[0004c956] 3004                      move.w     d4,d0
[0004c958] c07c 00ff                 and.w      #$00FF,d0
[0004c95c] 4eb9 0007 71ee            jsr        $000771EE
[0004c962] 4a40                      tst.w      d0
[0004c964] 6700 0098                 beq        $0004C9FE
[0004c968] 45f9 0010 1f12            lea.l      ACSblk,a2
[0004c96e] 7002                      moveq.l    #2,d0
[0004c970] 2052                      movea.l    (a2),a0
[0004c972] c068 04fc                 and.w      1276(a0),d0
[0004c976] 671e                      beq.s      $0004C996
[0004c978] 7208                      moveq.l    #8,d1
[0004c97a] c268 04fc                 and.w      1276(a0),d1
[0004c97e] 6716                      beq.s      $0004C996
[0004c980] 4a43                      tst.w      d3
[0004c982] 6a12                      bpl.s      $0004C996
[0004c984] 3204                      move.w     d4,d1
[0004c986] 827c 8400                 or.w       #$8400,d1
[0004c98a] 204b                      movea.l    a3,a0
[0004c98c] 3005                      move.w     d5,d0
[0004c98e] 4eb9 0004 a79a            jsr        $0004A79A
[0004c994] 3600                      move.w     d0,d3
[0004c996] 7001                      moveq.l    #1,d0
[0004c998] 2052                      movea.l    (a2),a0
[0004c99a] c068 04fc                 and.w      1276(a0),d0
[0004c99e] 6716                      beq.s      $0004C9B6
[0004c9a0] 4a43                      tst.w      d3
[0004c9a2] 6a12                      bpl.s      $0004C9B6
[0004c9a4] 3204                      move.w     d4,d1
[0004c9a6] 827c 8800                 or.w       #$8800,d1
[0004c9aa] 204b                      movea.l    a3,a0
[0004c9ac] 3005                      move.w     d5,d0
[0004c9ae] 4eb9 0004 a79a            jsr        $0004A79A
[0004c9b4] 3600                      move.w     d0,d3
[0004c9b6] 7002                      moveq.l    #2,d0
[0004c9b8] 2052                      movea.l    (a2),a0
[0004c9ba] c068 04fc                 and.w      1276(a0),d0
[0004c9be] 671e                      beq.s      $0004C9DE
[0004c9c0] 7208                      moveq.l    #8,d1
[0004c9c2] c268 04fc                 and.w      1276(a0),d1
[0004c9c6] 6616                      bne.s      $0004C9DE
[0004c9c8] 4a43                      tst.w      d3
[0004c9ca] 6a12                      bpl.s      $0004C9DE
[0004c9cc] 3204                      move.w     d4,d1
[0004c9ce] 827c 8400                 or.w       #$8400,d1
[0004c9d2] 204b                      movea.l    a3,a0
[0004c9d4] 3005                      move.w     d5,d0
[0004c9d6] 4eb9 0004 a79a            jsr        $0004A79A
[0004c9dc] 3600                      move.w     d0,d3
[0004c9de] 7004                      moveq.l    #4,d0
[0004c9e0] 2052                      movea.l    (a2),a0
[0004c9e2] c068 04fc                 and.w      1276(a0),d0
[0004c9e6] 6716                      beq.s      $0004C9FE
[0004c9e8] 4a43                      tst.w      d3
[0004c9ea] 6a12                      bpl.s      $0004C9FE
[0004c9ec] 3204                      move.w     d4,d1
[0004c9ee] 827c 8c00                 or.w       #$8C00,d1
[0004c9f2] 204b                      movea.l    a3,a0
[0004c9f4] 3005                      move.w     d5,d0
[0004c9f6] 4eb9 0004 a79a            jsr        $0004A79A
[0004c9fc] 3600                      move.w     d0,d3
[0004c9fe] 3003                      move.w     d3,d0
[0004ca00] 4cdf 0c38                 movem.l    (a7)+,d3-d5/a2-a3
[0004ca04] 4e75                      rts
Awi_keyACTool:
[0004ca06] 48e7 1c30                 movem.l    d3-d5/a2-a3,-(a7)
[0004ca0a] 2648                      movea.l    a0,a3
[0004ca0c] 3a00                      move.w     d0,d5
[0004ca0e] 3801                      move.w     d1,d4
[0004ca10] 76ff                      moveq.l    #-1,d3
[0004ca12] 3404                      move.w     d4,d2
[0004ca14] c47c 8c00                 and.w      #$8C00,d2
[0004ca18] 6600 00c0                 bne        $0004CADA
[0004ca1c] 3004                      move.w     d4,d0
[0004ca1e] c07c 00ff                 and.w      #$00FF,d0
[0004ca22] 4eb9 0007 725e            jsr        $0007725E
[0004ca28] 4a40                      tst.w      d0
[0004ca2a] 6700 00ae                 beq        $0004CADA
[0004ca2e] 3004                      move.w     d4,d0
[0004ca30] c07c 00ff                 and.w      #$00FF,d0
[0004ca34] 4eb9 0007 71ee            jsr        $000771EE
[0004ca3a] 4a40                      tst.w      d0
[0004ca3c] 6700 009c                 beq        $0004CADA
[0004ca40] 45f9 0010 1f12            lea.l      ACSblk,a2
[0004ca46] 7020                      moveq.l    #32,d0
[0004ca48] 2052                      movea.l    (a2),a0
[0004ca4a] c068 04fc                 and.w      1276(a0),d0
[0004ca4e] 6720                      beq.s      $0004CA70
[0004ca50] 323c 0080                 move.w     #$0080,d1
[0004ca54] c268 04fc                 and.w      1276(a0),d1
[0004ca58] 6716                      beq.s      $0004CA70
[0004ca5a] 4a43                      tst.w      d3
[0004ca5c] 6a12                      bpl.s      $0004CA70
[0004ca5e] 3204                      move.w     d4,d1
[0004ca60] 827c 8400                 or.w       #$8400,d1
[0004ca64] 204b                      movea.l    a3,a0
[0004ca66] 3005                      move.w     d5,d0
[0004ca68] 4eb9 0004 a734            jsr        $0004A734
[0004ca6e] 3600                      move.w     d0,d3
[0004ca70] 7010                      moveq.l    #16,d0
[0004ca72] 2052                      movea.l    (a2),a0
[0004ca74] c068 04fc                 and.w      1276(a0),d0
[0004ca78] 6716                      beq.s      $0004CA90
[0004ca7a] 4a43                      tst.w      d3
[0004ca7c] 6a12                      bpl.s      $0004CA90
[0004ca7e] 3204                      move.w     d4,d1
[0004ca80] 827c 8800                 or.w       #$8800,d1
[0004ca84] 204b                      movea.l    a3,a0
[0004ca86] 3005                      move.w     d5,d0
[0004ca88] 4eb9 0004 a734            jsr        $0004A734
[0004ca8e] 3600                      move.w     d0,d3
[0004ca90] 7020                      moveq.l    #32,d0
[0004ca92] 2052                      movea.l    (a2),a0
[0004ca94] c068 04fc                 and.w      1276(a0),d0
[0004ca98] 6720                      beq.s      $0004CABA
[0004ca9a] 323c 0080                 move.w     #$0080,d1
[0004ca9e] c268 04fc                 and.w      1276(a0),d1
[0004caa2] 6616                      bne.s      $0004CABA
[0004caa4] 4a43                      tst.w      d3
[0004caa6] 6a12                      bpl.s      $0004CABA
[0004caa8] 3204                      move.w     d4,d1
[0004caaa] 827c 8400                 or.w       #$8400,d1
[0004caae] 204b                      movea.l    a3,a0
[0004cab0] 3005                      move.w     d5,d0
[0004cab2] 4eb9 0004 a734            jsr        $0004A734
[0004cab8] 3600                      move.w     d0,d3
[0004caba] 7040                      moveq.l    #64,d0
[0004cabc] 2052                      movea.l    (a2),a0
[0004cabe] c068 04fc                 and.w      1276(a0),d0
[0004cac2] 6716                      beq.s      $0004CADA
[0004cac4] 4a43                      tst.w      d3
[0004cac6] 6a12                      bpl.s      $0004CADA
[0004cac8] 3204                      move.w     d4,d1
[0004caca] 827c 8c00                 or.w       #$8C00,d1
[0004cace] 204b                      movea.l    a3,a0
[0004cad0] 3005                      move.w     d5,d0
[0004cad2] 4eb9 0004 a734            jsr        $0004A734
[0004cad8] 3600                      move.w     d0,d3
[0004cada] 3003                      move.w     d3,d0
[0004cadc] 4cdf 0c38                 movem.l    (a7)+,d3-d5/a2-a3
[0004cae0] 4e75                      rts
Awi_keyACSwitch:
[0004cae2] 48e7 1c20                 movem.l    d3-d5/a2,-(a7)
[0004cae6] 2448                      movea.l    a0,a2
[0004cae8] 3a00                      move.w     d0,d5
[0004caea] 3801                      move.w     d1,d4
[0004caec] 76ff                      moveq.l    #-1,d3
[0004caee] c27c 0c00                 and.w      #$0C00,d1
[0004caf2] 664c                      bne.s      $0004CB40
[0004caf4] 4a43                      tst.w      d3
[0004caf6] 6a18                      bpl.s      $0004CB10
[0004caf8] 2279 0010 1f12            movea.l    ACSblk,a1
[0004cafe] 3429 04fc                 move.w     1276(a1),d2
[0004cb02] c47c 0100                 and.w      #$0100,d2
[0004cb06] 6708                      beq.s      $0004CB10
[0004cb08] 3204                      move.w     d4,d1
[0004cb0a] 6100 fefa                 bsr        $0004CA06
[0004cb0e] 3600                      move.w     d0,d3
[0004cb10] 4a43                      tst.w      d3
[0004cb12] 6a0c                      bpl.s      $0004CB20
[0004cb14] 3204                      move.w     d4,d1
[0004cb16] 3005                      move.w     d5,d0
[0004cb18] 204a                      movea.l    a2,a0
[0004cb1a] 6100 fe12                 bsr        $0004C92E
[0004cb1e] 3600                      move.w     d0,d3
[0004cb20] 4a43                      tst.w      d3
[0004cb22] 6a1c                      bpl.s      $0004CB40
[0004cb24] 2079 0010 1f12            movea.l    ACSblk,a0
[0004cb2a] 3028 04fc                 move.w     1276(a0),d0
[0004cb2e] c07c 0100                 and.w      #$0100,d0
[0004cb32] 660c                      bne.s      $0004CB40
[0004cb34] 3204                      move.w     d4,d1
[0004cb36] 204a                      movea.l    a2,a0
[0004cb38] 3005                      move.w     d5,d0
[0004cb3a] 6100 feca                 bsr        $0004CA06
[0004cb3e] 3600                      move.w     d0,d3
[0004cb40] 3003                      move.w     d3,d0
[0004cb42] 4cdf 0438                 movem.l    (a7)+,d3-d5/a2
[0004cb46] 4e75                      rts
Awi_keysend:
[0004cb48] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[0004cb4c] 4fef feda                 lea.l      -294(a7),a7
[0004cb50] 2448                      movea.l    a0,a2
[0004cb52] 3f40 0122                 move.w     d0,290(a7)
[0004cb56] 3801                      move.w     d1,d4
[0004cb58] 3f7c ffff 011e            move.w     #$FFFF,286(a7)
[0004cb5e] 47ef 0012                 lea.l      18(a7),a3
[0004cb62] 49ef 0120                 lea.l      288(a7),a4
[0004cb66] 302a 0056                 move.w     86(a2),d0
[0004cb6a] c07c 0800                 and.w      #$0800,d0
[0004cb6e] 6600 043c                 bne        $0004CFAC
[0004cb72] 72ff                      moveq.l    #-1,d1
[0004cb74] c204                      and.b      d4,d1
[0004cb76] b23c 000e                 cmp.b      #$0E,d1
[0004cb7a] 660a                      bne.s      $0004CB86
[0004cb7c] 204a                      movea.l    a2,a0
[0004cb7e] 6100 fd32                 bsr        $0004C8B2
[0004cb82] 6000 08d6                 bra        $0004D45A
[0004cb86] 7008                      moveq.l    #8,d0
[0004cb88] c06a 0054                 and.w      84(a2),d0
[0004cb8c] 6700 02f8                 beq        $0004CE86
[0004cb90] 322a 001c                 move.w     28(a2),d1
[0004cb94] 6a00 02f0                 bpl        $0004CE86
[0004cb98] 26aa 0014                 move.l     20(a2),(a3)
[0004cb9c] 2413                      move.l     (a3),d2
[0004cb9e] 6700 040c                 beq        $0004CFAC
[0004cba2] 4a41                      tst.w      d1
[0004cba4] 6f0c                      ble.s      $0004CBB2
[0004cba6] c27c 1000                 and.w      #$1000,d1
[0004cbaa] 6706                      beq.s      $0004CBB2
[0004cbac] 4eb9 0004 4a26            jsr        $00044A26
[0004cbb2] 3a2a 001c                 move.w     28(a2),d5
[0004cbb6] ca7c 0fff                 and.w      #$0FFF,d5
[0004cbba] 3885                      move.w     d5,(a4)
[0004cbbc] 4bef 001a                 lea.l      26(a7),a5
[0004cbc0] 4a44                      tst.w      d4
[0004cbc2] 6a00 0242                 bpl        $0004CE06
[0004cbc6] 1004                      move.b     d4,d0
[0004cbc8] 4880                      ext.w      d0
[0004cbca] b07c 000f                 cmp.w      #$000F,d0
[0004cbce] 6200 022e                 bhi        $0004CDFE
[0004cbd2] d040                      add.w      d0,d0
[0004cbd4] 303b 0006                 move.w     $0004CBDC(pc,d0.w),d0
[0004cbd8] 4efb 0002                 jmp        $0004CBDC(pc,d0.w)
J42:
[0004cbdc] 0222                      dc.w $0222   ; $0004cdfe-$0004cbdc
[0004cbde] 0102                      dc.w $0102   ; $0004ccde-$0004cbdc
[0004cbe0] 012e                      dc.w $012e   ; $0004cd0a-$0004cbdc
[0004cbe2] 00d6                      dc.w $00d6   ; $0004ccb2-$0004cbdc
[0004cbe4] 00a8                      dc.w $00a8   ; $0004cc84-$0004cbdc
[0004cbe6] 0222                      dc.w $0222   ; $0004cdfe-$0004cbdc
[0004cbe8] 0222                      dc.w $0222   ; $0004cdfe-$0004cbdc
[0004cbea] 016c                      dc.w $016c   ; $0004cd48-$0004cbdc
[0004cbec] 0222                      dc.w $0222   ; $0004cdfe-$0004cbdc
[0004cbee] 0222                      dc.w $0222   ; $0004cdfe-$0004cbdc
[0004cbf0] 002a                      dc.w $002a   ; $0004cc06-$0004cbdc
[0004cbf2] 0222                      dc.w $0222   ; $0004cdfe-$0004cbdc
[0004cbf4] 016c                      dc.w $016c   ; $0004cd48-$0004cbdc
[0004cbf6] 002a                      dc.w $002a   ; $0004cc06-$0004cbdc
[0004cbf8] 0222                      dc.w $0222   ; $0004cdfe-$0004cbdc
[0004cbfa] 0020                      dc.w $0020   ; $0004cbfc-$0004cbdc
[0004cbfc] 4eb9 0004 4a26            jsr        $00044A26
[0004cc02] 6000 0856                 bra        $0004D45A
[0004cc06] 2079 0010 1f12            movea.l    ACSblk,a0
[0004cc0c] b5e8 0240                 cmpa.l     576(a0),a2
[0004cc10] 6600 039a                 bne        $0004CFAC
[0004cc14] 41e8 0266                 lea.l      614(a0),a0
[0004cc18] 2279 0010 1f12            movea.l    ACSblk,a1
[0004cc1e] 3029 0010                 move.w     16(a1),d0
[0004cc22] 4eb9 0006 7044            jsr        $00067044
[0004cc28] 4eb9 0004 4840            jsr        $00044840
[0004cc2e] 603e                      bra.s      $0004CC6E
[0004cc30] 3214                      move.w     (a4),d1
[0004cc32] 48c1                      ext.l      d1
[0004cc34] 2001                      move.l     d1,d0
[0004cc36] d080                      add.l      d0,d0
[0004cc38] d081                      add.l      d1,d0
[0004cc3a] e788                      lsl.l      #3,d0
[0004cc3c] 2053                      movea.l    (a3),a0
[0004cc3e] 0070 4000 080a            ori.w      #$4000,10(a0,d0.l)
[0004cc44] 3014                      move.w     (a4),d0
[0004cc46] 2253                      movea.l    (a3),a1
[0004cc48] 204a                      movea.l    a2,a0
[0004cc4a] 4eb9 0004 a7fe            jsr        $0004A7FE
[0004cc50] 3214                      move.w     (a4),d1
[0004cc52] 48c1                      ext.l      d1
[0004cc54] 2001                      move.l     d1,d0
[0004cc56] d080                      add.l      d0,d0
[0004cc58] d081                      add.l      d1,d0
[0004cc5a] e788                      lsl.l      #3,d0
[0004cc5c] 2053                      movea.l    (a3),a0
[0004cc5e] 0270 bfff 080a            andi.w     #$BFFF,10(a0,d0.l)
[0004cc64] 3014                      move.w     (a4),d0
[0004cc66] 204a                      movea.l    a2,a0
[0004cc68] 4eb9 0004 492a            jsr        $0004492A
[0004cc6e] 4eb9 0004 484c            jsr        $0004484C
[0004cc74] 3880                      move.w     d0,(a4)
[0004cc76] 6b00 07e2                 bmi        $0004D45A
[0004cc7a] c07c 1000                 and.w      #$1000,d0
[0004cc7e] 67b0                      beq.s      $0004CC30
[0004cc80] 6000 07d8                 bra        $0004D45A
[0004cc84] 2079 0010 1f12            movea.l    ACSblk,a0
[0004cc8a] b5e8 0240                 cmpa.l     576(a0),a2
[0004cc8e] 6610                      bne.s      $0004CCA0
[0004cc90] 4eb9 0004 4840            jsr        $00044840
[0004cc96] 4eb9 0004 484c            jsr        $0004484C
[0004cc9c] 3880                      move.w     d0,(a4)
[0004cc9e] 6002                      bra.s      $0004CCA2
[0004cca0] 4254                      clr.w      (a4)
[0004cca2] 4241                      clr.w      d1
[0004cca4] 3014                      move.w     (a4),d0
[0004cca6] 204a                      movea.l    a2,a0
[0004cca8] 6100 fa98                 bsr        $0004C742
[0004ccac] 3c00                      move.w     d0,d6
[0004ccae] 6000 0084                 bra        $0004CD34
[0004ccb2] 2079 0010 1f12            movea.l    ACSblk,a0
[0004ccb8] b5e8 0240                 cmpa.l     576(a0),a2
[0004ccbc] 6610                      bne.s      $0004CCCE
[0004ccbe] 4eb9 0004 4840            jsr        $00044840
[0004ccc4] 4eb9 0004 484c            jsr        $0004484C
[0004ccca] 3880                      move.w     d0,(a4)
[0004cccc] 6002                      bra.s      $0004CCD0
[0004ccce] 4254                      clr.w      (a4)
[0004ccd0] 4241                      clr.w      d1
[0004ccd2] 3014                      move.w     (a4),d0
[0004ccd4] 204a                      movea.l    a2,a0
[0004ccd6] 6100 fb24                 bsr        $0004C7FC
[0004ccda] 3c00                      move.w     d0,d6
[0004ccdc] 6056                      bra.s      $0004CD34
[0004ccde] 2079 0010 1f12            movea.l    ACSblk,a0
[0004cce4] b5e8 0240                 cmpa.l     576(a0),a2
[0004cce8] 6610                      bne.s      $0004CCFA
[0004ccea] 4eb9 0004 4840            jsr        $00044840
[0004ccf0] 4eb9 0004 484c            jsr        $0004484C
[0004ccf6] 3880                      move.w     d0,(a4)
[0004ccf8] 6002                      bra.s      $0004CCFC
[0004ccfa] 4254                      clr.w      (a4)
[0004ccfc] 7201                      moveq.l    #1,d1
[0004ccfe] 3014                      move.w     (a4),d0
[0004cd00] 204a                      movea.l    a2,a0
[0004cd02] 6100 fa3e                 bsr        $0004C742
[0004cd06] 3c00                      move.w     d0,d6
[0004cd08] 602a                      bra.s      $0004CD34
[0004cd0a] 2079 0010 1f12            movea.l    ACSblk,a0
[0004cd10] b5e8 0240                 cmpa.l     576(a0),a2
[0004cd14] 6610                      bne.s      $0004CD26
[0004cd16] 4eb9 0004 4840            jsr        $00044840
[0004cd1c] 4eb9 0004 484c            jsr        $0004484C
[0004cd22] 3880                      move.w     d0,(a4)
[0004cd24] 6002                      bra.s      $0004CD28
[0004cd26] 4254                      clr.w      (a4)
[0004cd28] 7201                      moveq.l    #1,d1
[0004cd2a] 3014                      move.w     (a4),d0
[0004cd2c] 204a                      movea.l    a2,a0
[0004cd2e] 6100 facc                 bsr        $0004C7FC
[0004cd32] 3c00                      move.w     d0,d6
[0004cd34] 4a46                      tst.w      d6
[0004cd36] 6f00 0274                 ble        $0004CFAC
[0004cd3a] 3206                      move.w     d6,d1
[0004cd3c] 3014                      move.w     (a4),d0
[0004cd3e] 204a                      movea.l    a2,a0
[0004cd40] 6100 f9bc                 bsr        $0004C6FE
[0004cd44] 6000 0714                 bra        $0004D45A
[0004cd48] b83c 000c                 cmp.b      #$0C,d4
[0004cd4c] 6608                      bne.s      $0004CD56
[0004cd4e] 3004                      move.w     d4,d0
[0004cd50] c07c 0300                 and.w      #$0300,d0
[0004cd54] 670e                      beq.s      $0004CD64
[0004cd56] b83c 0007                 cmp.b      #$07,d4
[0004cd5a] 660c                      bne.s      $0004CD68
[0004cd5c] 3004                      move.w     d4,d0
[0004cd5e] c07c 0300                 and.w      #$0300,d0
[0004cd62] 6704                      beq.s      $0004CD68
[0004cd64] 7001                      moveq.l    #1,d0
[0004cd66] 6002                      bra.s      $0004CD6A
[0004cd68] 4240                      clr.w      d0
[0004cd6a] 3f40 0124                 move.w     d0,292(a7)
[0004cd6e] 2079 0010 1f12            movea.l    ACSblk,a0
[0004cd74] b5e8 0240                 cmpa.l     576(a0),a2
[0004cd78] 6660                      bne.s      $0004CDDA
[0004cd7a] 4a40                      tst.w      d0
[0004cd7c] 6708                      beq.s      $0004CD86
[0004cd7e] 2253                      movea.l    (a3),a1
[0004cd80] 38a9 0002                 move.w     2(a1),(a4)
[0004cd84] 601e                      bra.s      $0004CDA4
[0004cd86] 2053                      movea.l    (a3),a0
[0004cd88] 38a8 0004                 move.w     4(a0),(a4)
[0004cd8c] 3214                      move.w     (a4),d1
[0004cd8e] 48c1                      ext.l      d1
[0004cd90] 2001                      move.l     d1,d0
[0004cd92] d080                      add.l      d0,d0
[0004cd94] d081                      add.l      d1,d0
[0004cd96] e788                      lsl.l      #3,d0
[0004cd98] 3430 0808                 move.w     8(a0,d0.l),d2
[0004cd9c] c47c 8000                 and.w      #$8000,d2
[0004cda0] 6702                      beq.s      $0004CDA4
[0004cda2] 5354                      subq.w     #1,(a4)
[0004cda4] 3014                      move.w     (a4),d0
[0004cda6] 6f00 0204                 ble        $0004CFAC
[0004cdaa] 7201                      moveq.l    #1,d1
[0004cdac] 48c0                      ext.l      d0
[0004cdae] 2400                      move.l     d0,d2
[0004cdb0] d482                      add.l      d2,d2
[0004cdb2] d480                      add.l      d0,d2
[0004cdb4] e78a                      lsl.l      #3,d2
[0004cdb6] 2053                      movea.l    (a3),a0
[0004cdb8] c270 2808                 and.w      8(a0,d2.l),d1
[0004cdbc] 6700 01ee                 beq        $0004CFAC
[0004cdc0] 323c 0080                 move.w     #$0080,d1
[0004cdc4] c270 2808                 and.w      8(a0,d2.l),d1
[0004cdc8] 6600 01e2                 bne        $0004CFAC
[0004cdcc] 3214                      move.w     (a4),d1
[0004cdce] 70ff                      moveq.l    #-1,d0
[0004cdd0] 204a                      movea.l    a2,a0
[0004cdd2] 6100 f92a                 bsr        $0004C6FE
[0004cdd6] 6000 0682                 bra        $0004D45A
[0004cdda] 302f 0124                 move.w     292(a7),d0
[0004cdde] 670e                      beq.s      $0004CDEE
[0004cde0] 204a                      movea.l    a2,a0
[0004cde2] 226a 0082                 movea.l    130(a2),a1
[0004cde6] 4240                      clr.w      d0
[0004cde8] 4e91                      jsr        (a1)
[0004cdea] 6000 066e                 bra        $0004D45A
[0004cdee] 303c 03e8                 move.w     #$03E8,d0
[0004cdf2] 204a                      movea.l    a2,a0
[0004cdf4] 226a 0082                 movea.l    130(a2),a1
[0004cdf8] 4e91                      jsr        (a1)
[0004cdfa] 6000 065e                 bra        $0004D45A
[0004cdfe] 38bc ffff                 move.w     #$FFFF,(a4)
[0004ce02] 6000 0656                 bra        $0004D45A
[0004ce06] 2053                      movea.l    (a3),a0
[0004ce08] 38a8 0002                 move.w     2(a0),(a4)
[0004ce0c] 6070                      bra.s      $0004CE7E
[0004ce0e] 303c 0080                 move.w     #$0080,d0
[0004ce12] 3414                      move.w     (a4),d2
[0004ce14] 48c2                      ext.l      d2
[0004ce16] 2202                      move.l     d2,d1
[0004ce18] d281                      add.l      d1,d1
[0004ce1a] d282                      add.l      d2,d1
[0004ce1c] e789                      lsl.l      #3,d1
[0004ce1e] 2053                      movea.l    (a3),a0
[0004ce20] c070 1808                 and.w      8(a0,d1.l),d0
[0004ce24] 6646                      bne.s      $0004CE6C
[0004ce26] 224d                      movea.l    a5,a1
[0004ce28] 3014                      move.w     (a4),d0
[0004ce2a] 4eb9 0004 b154            jsr        $0004B154
[0004ce30] 3e00                      move.w     d0,d7
[0004ce32] 6f38                      ble.s      $0004CE6C
[0004ce34] 4243                      clr.w      d3
[0004ce36] 6002                      bra.s      $0004CE3A
[0004ce38] 5243                      addq.w     #1,d3
[0004ce3a] 1035 3000                 move.b     0(a5,d3.w),d0
[0004ce3e] 4880                      ext.w      d0
[0004ce40] 4eb9 0007 71ee            jsr        $000771EE
[0004ce46] 4a40                      tst.w      d0
[0004ce48] 6604                      bne.s      $0004CE4E
[0004ce4a] be43                      cmp.w      d3,d7
[0004ce4c] 6eea                      bgt.s      $0004CE38
[0004ce4e] be43                      cmp.w      d3,d7
[0004ce50] 6f1a                      ble.s      $0004CE6C
[0004ce52] 1004                      move.b     d4,d0
[0004ce54] 4eb9 0004 372c            jsr        $0004372C
[0004ce5a] 1f00                      move.b     d0,-(a7)
[0004ce5c] 1035 3000                 move.b     0(a5,d3.w),d0
[0004ce60] 4eb9 0004 372c            jsr        $0004372C
[0004ce66] b01f                      cmp.b      (a7)+,d0
[0004ce68] 6700 ff62                 beq        $0004CDCC
[0004ce6c] 3214                      move.w     (a4),d1
[0004ce6e] 48c1                      ext.l      d1
[0004ce70] 2001                      move.l     d1,d0
[0004ce72] d080                      add.l      d0,d0
[0004ce74] d081                      add.l      d1,d0
[0004ce76] e788                      lsl.l      #3,d0
[0004ce78] 2053                      movea.l    (a3),a0
[0004ce7a] 38b0 0800                 move.w     0(a0,d0.l),(a4)
[0004ce7e] 3014                      move.w     (a4),d0
[0004ce80] 6e8c                      bgt.s      $0004CE0E
[0004ce82] 6000 05d6                 bra        $0004D45A
[0004ce86] 4bef 000e                 lea.l      14(a7),a5
[0004ce8a] 4854                      pea.l      (a4)
[0004ce8c] 4855                      pea.l      (a5)
[0004ce8e] 224b                      movea.l    a3,a1
[0004ce90] 204a                      movea.l    a2,a0
[0004ce92] 6100 f612                 bsr        $0004C4A6
[0004ce96] 504f                      addq.w     #8,a7
[0004ce98] 3a14                      move.w     (a4),d5
[0004ce9a] 2013                      move.l     (a3),d0
[0004ce9c] 661a                      bne.s      $0004CEB8
[0004ce9e] 26aa 0014                 move.l     20(a2),(a3)
[0004cea2] 2013                      move.l     (a3),d0
[0004cea4] 660e                      bne.s      $0004CEB4
[0004cea6] 26aa 0018                 move.l     24(a2),(a3)
[0004ceaa] 2013                      move.l     (a3),d0
[0004ceac] 6700 00fe                 beq        $0004CFAC
[0004ceb0] 4295                      clr.l      (a5)
[0004ceb2] 6004                      bra.s      $0004CEB8
[0004ceb4] 2aaa 0018                 move.l     24(a2),(a5)
[0004ceb8] b83c 000d                 cmp.b      #$0D,d4
[0004cebc] 6708                      beq.s      $0004CEC6
[0004cebe] b83c 000a                 cmp.b      #$0A,d4
[0004cec2] 6600 007c                 bne.w      $0004CF40
[0004cec6] 7202                      moveq.l    #2,d1
[0004cec8] 70ff                      moveq.l    #-1,d0
[0004ceca] 2053                      movea.l    (a3),a0
[0004cecc] 4eb9 0004 aeca            jsr        $0004AECA
[0004ced2] 3c00                      move.w     d0,d6
[0004ced4] 4a40                      tst.w      d0
[0004ced6] 6b16                      bmi.s      $0004CEEE
[0004ced8] 323c 0080                 move.w     #$0080,d1
[0004cedc] 48c0                      ext.l      d0
[0004cede] 2400                      move.l     d0,d2
[0004cee0] d482                      add.l      d2,d2
[0004cee2] d480                      add.l      d0,d2
[0004cee4] e78a                      lsl.l      #3,d2
[0004cee6] 2053                      movea.l    (a3),a0
[0004cee8] c270 2808                 and.w      8(a0,d2.l),d1
[0004ceec] 6740                      beq.s      $0004CF2E
[0004ceee] 2015                      move.l     (a5),d0
[0004cef0] 6700 00ba                 beq        $0004CFAC
[0004cef4] 7202                      moveq.l    #2,d1
[0004cef6] 2040                      movea.l    d0,a0
[0004cef8] 70ff                      moveq.l    #-1,d0
[0004cefa] 4eb9 0004 aeca            jsr        $0004AECA
[0004cf00] 3c00                      move.w     d0,d6
[0004cf02] 4a40                      tst.w      d0
[0004cf04] 6b00 00a6                 bmi        $0004CFAC
[0004cf08] 323c 0080                 move.w     #$0080,d1
[0004cf0c] 48c0                      ext.l      d0
[0004cf0e] 2400                      move.l     d0,d2
[0004cf10] d482                      add.l      d2,d2
[0004cf12] d480                      add.l      d0,d2
[0004cf14] e78a                      lsl.l      #3,d2
[0004cf16] 2053                      movea.l    (a3),a0
[0004cf18] c270 2808                 and.w      8(a0,d2.l),d1
[0004cf1c] 6600 008e                 bne        $0004CFAC
[0004cf20] 2255                      movea.l    (a5),a1
[0004cf22] 204a                      movea.l    a2,a0
[0004cf24] 3006                      move.w     d6,d0
[0004cf26] 4eb9 0004 a7fe            jsr        $0004A7FE
[0004cf2c] 600c                      bra.s      $0004CF3A
[0004cf2e] 3006                      move.w     d6,d0
[0004cf30] 2253                      movea.l    (a3),a1
[0004cf32] 204a                      movea.l    a2,a0
[0004cf34] 4eb9 0004 a7fe            jsr        $0004A7FE
[0004cf3a] 3006                      move.w     d6,d0
[0004cf3c] 6000 0520                 bra        $0004D45E
[0004cf40] b83c 0009                 cmp.b      #$09,d4
[0004cf44] 6642                      bne.s      $0004CF88
[0004cf46] 3004                      move.w     d4,d0
[0004cf48] c07c 0400                 and.w      #$0400,d0
[0004cf4c] 6728                      beq.s      $0004CF76
[0004cf4e] 2253                      movea.l    (a3),a1
[0004cf50] 204a                      movea.l    a2,a0
[0004cf52] 6100 f452                 bsr        $0004C3A6
[0004cf56] 4a40                      tst.w      d0
[0004cf58] 6714                      beq.s      $0004CF6E
[0004cf5a] 2015                      move.l     (a5),d0
[0004cf5c] 6700 04fc                 beq        $0004D45A
[0004cf60] 2240                      movea.l    d0,a1
[0004cf62] 204a                      movea.l    a2,a0
[0004cf64] 6100 f440                 bsr        $0004C3A6
[0004cf68] 4a40                      tst.w      d0
[0004cf6a] 6600 04ee                 bne        $0004D45A
[0004cf6e] 536f 011e                 subq.w     #1,286(a7)
[0004cf72] 6000 04e6                 bra        $0004D45A
[0004cf76] 3004                      move.w     d4,d0
[0004cf78] c07c 0300                 and.w      #$0300,d0
[0004cf7c] 6706                      beq.s      $0004CF84
[0004cf7e] 383c 8001                 move.w     #$8001,d4
[0004cf82] 6004                      bra.s      $0004CF88
[0004cf84] 383c 8002                 move.w     #$8002,d4
[0004cf88] 4854                      pea.l      (a4)
[0004cf8a] 4855                      pea.l      (a5)
[0004cf8c] 224b                      movea.l    a3,a1
[0004cf8e] 204a                      movea.l    a2,a0
[0004cf90] 6100 f514                 bsr        $0004C4A6
[0004cf94] 504f                      addq.w     #8,a7
[0004cf96] 4a40                      tst.w      d0
[0004cf98] 6622                      bne.s      $0004CFBC
[0004cf9a] 3204                      move.w     d4,d1
[0004cf9c] 302f 0122                 move.w     290(a7),d0
[0004cfa0] 204a                      movea.l    a2,a0
[0004cfa2] 6100 fb3e                 bsr        $0004CAE2
[0004cfa6] 3880                      move.w     d0,(a4)
[0004cfa8] 4a40                      tst.w      d0
[0004cfaa] 6a0a                      bpl.s      $0004CFB6
[0004cfac] 70ff                      moveq.l    #-1,d0
[0004cfae] d06f 011e                 add.w      286(a7),d0
[0004cfb2] 6000 04aa                 bra        $0004D45E
[0004cfb6] 3014                      move.w     (a4),d0
[0004cfb8] 6000 04a4                 bra        $0004D45E
[0004cfbc] 3214                      move.w     (a4),d1
[0004cfbe] 48c1                      ext.l      d1
[0004cfc0] 2001                      move.l     d1,d0
[0004cfc2] d080                      add.l      d0,d0
[0004cfc4] d081                      add.l      d1,d0
[0004cfc6] e788                      lsl.l      #3,d0
[0004cfc8] 2053                      movea.l    (a3),a0
[0004cfca] 2a70 080c                 movea.l    12(a0,d0.l),a5
[0004cfce] b5f9 000d 3d64            cmpa.l     $000D3D64,a2
[0004cfd4] 6704                      beq.s      $0004CFDA
[0004cfd6] 6100 e2ae                 bsr        $0004B286
[0004cfda] 2f4a 0004                 move.l     a2,4(a7)
[0004cfde] 3214                      move.w     (a4),d1
[0004cfe0] 48c1                      ext.l      d1
[0004cfe2] 2001                      move.l     d1,d0
[0004cfe4] d080                      add.l      d0,d0
[0004cfe6] d081                      add.l      d1,d0
[0004cfe8] e788                      lsl.l      #3,d0
[0004cfea] 2053                      movea.l    (a3),a0
[0004cfec] d1c0                      adda.l     d0,a0
[0004cfee] 2f48 0008                 move.l     a0,8(a7)
[0004cff2] 3f54 000c                 move.w     (a4),12(a7)
[0004cff6] 43ef 0004                 lea.l      4(a7),a1
[0004cffa] 2c6d 0008                 movea.l    8(a5),a6
[0004cffe] 7009                      moveq.l    #9,d0
[0004d000] 4e96                      jsr        (a6)
[0004d002] 4a44                      tst.w      d4
[0004d004] 6a00 0422                 bpl        $0004D428
[0004d008] 1004                      move.b     d4,d0
[0004d00a] 4880                      ext.w      d0
[0004d00c] b07c 001f                 cmp.w      #$001F,d0
[0004d010] 6700 01d0                 beq        $0004D1E2
[0004d014] 6e4a                      bgt.s      $0004D060
[0004d016] b07c 001b                 cmp.w      #$001B,d0
[0004d01a] 6200 040c                 bhi        $0004D428
[0004d01e] d040                      add.w      d0,d0
[0004d020] 303b 0006                 move.w     $0004D028(pc,d0.w),d0
[0004d024] 4efb 0002                 jmp        $0004D028(pc,d0.w)
J43:
[0004d028] 0400                      dc.w $0400   ; $0004d428-$0004d028
[0004d02a] 022c                      dc.w $022c   ; $0004d254-$0004d028
[0004d02c] 0264                      dc.w $0264   ; $0004d28c-$0004d028
[0004d02e] 006e                      dc.w $006e   ; $0004d096-$0004d028
[0004d030] 00dc                      dc.w $00dc   ; $0004d104-$0004d028
[0004d032] 0400                      dc.w $0400   ; $0004d428-$0004d028
[0004d034] 0400                      dc.w $0400   ; $0004d428-$0004d028
[0004d036] 0400                      dc.w $0400   ; $0004d428-$0004d028
[0004d038] 014a                      dc.w $014a   ; $0004d172-$0004d028
[0004d03a] 0400                      dc.w $0400   ; $0004d428-$0004d028
[0004d03c] 0400                      dc.w $0400   ; $0004d428-$0004d028
[0004d03e] 02ae                      dc.w $02ae   ; $0004d2d6-$0004d028
[0004d040] 0400                      dc.w $0400   ; $0004d428-$0004d028
[0004d042] 0400                      dc.w $0400   ; $0004d428-$0004d028
[0004d044] 0400                      dc.w $0400   ; $0004d428-$0004d028
[0004d046] 0400                      dc.w $0400   ; $0004d428-$0004d028
[0004d048] 0400                      dc.w $0400   ; $0004d428-$0004d028
[0004d04a] 0400                      dc.w $0400   ; $0004d428-$0004d028
[0004d04c] 0400                      dc.w $0400   ; $0004d428-$0004d028
[0004d04e] 0400                      dc.w $0400   ; $0004d428-$0004d028
[0004d050] 0400                      dc.w $0400   ; $0004d428-$0004d028
[0004d052] 0400                      dc.w $0400   ; $0004d428-$0004d028
[0004d054] 0400                      dc.w $0400   ; $0004d428-$0004d028
[0004d056] 0400                      dc.w $0400   ; $0004d428-$0004d028
[0004d058] 0400                      dc.w $0400   ; $0004d428-$0004d028
[0004d05a] 0400                      dc.w $0400   ; $0004d428-$0004d028
[0004d05c] 0400                      dc.w $0400   ; $0004d428-$0004d028
[0004d05e] 020c                      dc.w $020c   ; $0004d234-$0004d028
[0004d060] b07c                      dc.w $b07c   ; $000480a4-$0004d028
[0004d062] 0063                      dc.w $0063   ; $0004d08b-$0004d028
[0004d064] 6700                      dc.w $6700   ; $00053728-$0004d028
[0004d066] 0290                      dc.w $0290   ; $0004d2b8-$0004d028
[0004d068] 6e1a                      dc.w $6e1a   ; $00053e42-$0004d028
[0004d06a] 907c                      dc.w $907c   ; $000460a4-$0004d028
[0004d06c] 0043                      dc.w $0043   ; $0004d06b-$0004d028
[0004d06e] 6700 0286                 beq        $0004D2F6
[0004d072] 907c 0013                 sub.w      #$0013,d0
[0004d076] 6700 0362                 beq        $0004D3DA
[0004d07a] 5540                      subq.w     #2,d0
[0004d07c] 6700 0278                 beq        $0004D2F6
[0004d080] 6000 03a6                 bra        $0004D428
[0004d084] 907c 0076                 sub.w      #$0076,d0
[0004d088] 6700 0350                 beq        $0004D3DA
[0004d08c] 5540                      subq.w     #2,d0
[0004d08e] 6700 0266                 beq        $0004D2F6
[0004d092] 6000 0394                 bra        $0004D428
[0004d096] 3004                      move.w     d4,d0
[0004d098] c07c 0300                 and.w      #$0300,d0
[0004d09c] 671e                      beq.s      $0004D0BC
[0004d09e] 93c9                      suba.l     a1,a1
[0004d0a0] 3414                      move.w     (a4),d2
[0004d0a2] 48c2                      ext.l      d2
[0004d0a4] 2202                      move.l     d2,d1
[0004d0a6] d281                      add.l      d1,d1
[0004d0a8] d282                      add.l      d2,d1
[0004d0aa] e789                      lsl.l      #3,d1
[0004d0ac] 2053                      movea.l    (a3),a0
[0004d0ae] d1c1                      adda.l     d1,a0
[0004d0b0] 2c6d 0008                 movea.l    8(a5),a6
[0004d0b4] 700f                      moveq.l    #15,d0
[0004d0b6] 4e96                      jsr        (a6)
[0004d0b8] 6000 0386                 bra        $0004D440
[0004d0bc] 3004                      move.w     d4,d0
[0004d0be] c07c 0400                 and.w      #$0400,d0
[0004d0c2] 6720                      beq.s      $0004D0E4
[0004d0c4] 93c9                      suba.l     a1,a1
[0004d0c6] 3414                      move.w     (a4),d2
[0004d0c8] 48c2                      ext.l      d2
[0004d0ca] 2202                      move.l     d2,d1
[0004d0cc] d281                      add.l      d1,d1
[0004d0ce] d282                      add.l      d2,d1
[0004d0d0] e789                      lsl.l      #3,d1
[0004d0d2] 2053                      movea.l    (a3),a0
[0004d0d4] d1c1                      adda.l     d1,a0
[0004d0d6] 2c6d 0008                 movea.l    8(a5),a6
[0004d0da] 303c 02be                 move.w     #$02BE,d0
[0004d0de] 4e96                      jsr        (a6)
[0004d0e0] 6000 035e                 bra        $0004D440
[0004d0e4] 93c9                      suba.l     a1,a1
[0004d0e6] 303c 02bc                 move.w     #$02BC,d0
[0004d0ea] 3414                      move.w     (a4),d2
[0004d0ec] 48c2                      ext.l      d2
[0004d0ee] 2202                      move.l     d2,d1
[0004d0f0] d281                      add.l      d1,d1
[0004d0f2] d282                      add.l      d2,d1
[0004d0f4] e789                      lsl.l      #3,d1
[0004d0f6] 2053                      movea.l    (a3),a0
[0004d0f8] d1c1                      adda.l     d1,a0
[0004d0fa] 2c6d 0008                 movea.l    8(a5),a6
[0004d0fe] 4e96                      jsr        (a6)
[0004d100] 6000 033e                 bra        $0004D440
[0004d104] 3004                      move.w     d4,d0
[0004d106] c07c 0300                 and.w      #$0300,d0
[0004d10a] 671e                      beq.s      $0004D12A
[0004d10c] 93c9                      suba.l     a1,a1
[0004d10e] 3414                      move.w     (a4),d2
[0004d110] 48c2                      ext.l      d2
[0004d112] 2202                      move.l     d2,d1
[0004d114] d281                      add.l      d1,d1
[0004d116] d282                      add.l      d2,d1
[0004d118] e789                      lsl.l      #3,d1
[0004d11a] 2053                      movea.l    (a3),a0
[0004d11c] d1c1                      adda.l     d1,a0
[0004d11e] 2c6d 0008                 movea.l    8(a5),a6
[0004d122] 700e                      moveq.l    #14,d0
[0004d124] 4e96                      jsr        (a6)
[0004d126] 6000 0318                 bra        $0004D440
[0004d12a] 3004                      move.w     d4,d0
[0004d12c] c07c 0400                 and.w      #$0400,d0
[0004d130] 6720                      beq.s      $0004D152
[0004d132] 93c9                      suba.l     a1,a1
[0004d134] 3414                      move.w     (a4),d2
[0004d136] 48c2                      ext.l      d2
[0004d138] 2202                      move.l     d2,d1
[0004d13a] d281                      add.l      d1,d1
[0004d13c] d282                      add.l      d2,d1
[0004d13e] e789                      lsl.l      #3,d1
[0004d140] 2053                      movea.l    (a3),a0
[0004d142] d1c1                      adda.l     d1,a0
[0004d144] 2c6d 0008                 movea.l    8(a5),a6
[0004d148] 303c 02bf                 move.w     #$02BF,d0
[0004d14c] 4e96                      jsr        (a6)
[0004d14e] 6000 02f0                 bra        $0004D440
[0004d152] 93c9                      suba.l     a1,a1
[0004d154] 303c 02bd                 move.w     #$02BD,d0
[0004d158] 3414                      move.w     (a4),d2
[0004d15a] 48c2                      ext.l      d2
[0004d15c] 2202                      move.l     d2,d1
[0004d15e] d281                      add.l      d1,d1
[0004d160] d282                      add.l      d2,d1
[0004d162] e789                      lsl.l      #3,d1
[0004d164] 2053                      movea.l    (a3),a0
[0004d166] d1c1                      adda.l     d1,a0
[0004d168] 2c6d 0008                 movea.l    8(a5),a6
[0004d16c] 4e96                      jsr        (a6)
[0004d16e] 6000 02d0                 bra        $0004D440
[0004d172] 3004                      move.w     d4,d0
[0004d174] c07c 0300                 and.w      #$0300,d0
[0004d178] 6720                      beq.s      $0004D19A
[0004d17a] 93c9                      suba.l     a1,a1
[0004d17c] 3414                      move.w     (a4),d2
[0004d17e] 48c2                      ext.l      d2
[0004d180] 2202                      move.l     d2,d1
[0004d182] d281                      add.l      d1,d1
[0004d184] d282                      add.l      d2,d1
[0004d186] e789                      lsl.l      #3,d1
[0004d188] 2053                      movea.l    (a3),a0
[0004d18a] d1c1                      adda.l     d1,a0
[0004d18c] 2c6d 0008                 movea.l    8(a5),a6
[0004d190] 303c 02c6                 move.w     #$02C6,d0
[0004d194] 4e96                      jsr        (a6)
[0004d196] 6000 02a8                 bra        $0004D440
[0004d19a] 3004                      move.w     d4,d0
[0004d19c] c07c 0400                 and.w      #$0400,d0
[0004d1a0] 6720                      beq.s      $0004D1C2
[0004d1a2] 93c9                      suba.l     a1,a1
[0004d1a4] 3414                      move.w     (a4),d2
[0004d1a6] 48c2                      ext.l      d2
[0004d1a8] 2202                      move.l     d2,d1
[0004d1aa] d281                      add.l      d1,d1
[0004d1ac] d282                      add.l      d2,d1
[0004d1ae] e789                      lsl.l      #3,d1
[0004d1b0] 2053                      movea.l    (a3),a0
[0004d1b2] d1c1                      adda.l     d1,a0
[0004d1b4] 2c6d 0008                 movea.l    8(a5),a6
[0004d1b8] 303c 02c5                 move.w     #$02C5,d0
[0004d1bc] 4e96                      jsr        (a6)
[0004d1be] 6000 0280                 bra        $0004D440
[0004d1c2] 93c9                      suba.l     a1,a1
[0004d1c4] 303c 02c4                 move.w     #$02C4,d0
[0004d1c8] 3414                      move.w     (a4),d2
[0004d1ca] 48c2                      ext.l      d2
[0004d1cc] 2202                      move.l     d2,d1
[0004d1ce] d281                      add.l      d1,d1
[0004d1d0] d282                      add.l      d2,d1
[0004d1d2] e789                      lsl.l      #3,d1
[0004d1d4] 2053                      movea.l    (a3),a0
[0004d1d6] d1c1                      adda.l     d1,a0
[0004d1d8] 2c6d 0008                 movea.l    8(a5),a6
[0004d1dc] 4e96                      jsr        (a6)
[0004d1de] 6000 0260                 bra        $0004D440
[0004d1e2] 3004                      move.w     d4,d0
[0004d1e4] c07c 0300                 and.w      #$0300,d0
[0004d1e8] 6720                      beq.s      $0004D20A
[0004d1ea] 93c9                      suba.l     a1,a1
[0004d1ec] 3414                      move.w     (a4),d2
[0004d1ee] 48c2                      ext.l      d2
[0004d1f0] 2202                      move.l     d2,d1
[0004d1f2] d281                      add.l      d1,d1
[0004d1f4] d282                      add.l      d2,d1
[0004d1f6] e789                      lsl.l      #3,d1
[0004d1f8] 2053                      movea.l    (a3),a0
[0004d1fa] d1c1                      adda.l     d1,a0
[0004d1fc] 2c6d 0008                 movea.l    8(a5),a6
[0004d200] 303c 02c9                 move.w     #$02C9,d0
[0004d204] 4e96                      jsr        (a6)
[0004d206] 6000 0238                 bra        $0004D440
[0004d20a] 3004                      move.w     d4,d0
[0004d20c] c07c 0400                 and.w      #$0400,d0
[0004d210] 6700 0188                 beq        $0004D39A
[0004d214] 93c9                      suba.l     a1,a1
[0004d216] 3414                      move.w     (a4),d2
[0004d218] 48c2                      ext.l      d2
[0004d21a] 2202                      move.l     d2,d1
[0004d21c] d281                      add.l      d1,d1
[0004d21e] d282                      add.l      d2,d1
[0004d220] e789                      lsl.l      #3,d1
[0004d222] 2053                      movea.l    (a3),a0
[0004d224] d1c1                      adda.l     d1,a0
[0004d226] 2c6d 0008                 movea.l    8(a5),a6
[0004d22a] 303c 02c8                 move.w     #$02C8,d0
[0004d22e] 4e96                      jsr        (a6)
[0004d230] 6000 020e                 bra        $0004D440
[0004d234] 93c9                      suba.l     a1,a1
[0004d236] 303c 02ca                 move.w     #$02CA,d0
[0004d23a] 3414                      move.w     (a4),d2
[0004d23c] 48c2                      ext.l      d2
[0004d23e] 2202                      move.l     d2,d1
[0004d240] d281                      add.l      d1,d1
[0004d242] d282                      add.l      d2,d1
[0004d244] e789                      lsl.l      #3,d1
[0004d246] 2053                      movea.l    (a3),a0
[0004d248] d1c1                      adda.l     d1,a0
[0004d24a] 2c6d 0008                 movea.l    8(a5),a6
[0004d24e] 4e96                      jsr        (a6)
[0004d250] 6000 01ee                 bra        $0004D440
[0004d254] 7cff                      moveq.l    #-1,d6
[0004d256] 3004                      move.w     d4,d0
[0004d258] c07c 0300                 and.w      #$0300,d0
[0004d25c] 670c                      beq.s      $0004D26A
[0004d25e] 204a                      movea.l    a2,a0
[0004d260] 6100 f368                 bsr        $0004C5CA
[0004d264] 3c00                      move.w     d0,d6
[0004d266] 6056                      bra.s      $0004D2BE
[0004d268] 3c05                      move.w     d5,d6
[0004d26a] 7208                      moveq.l    #8,d1
[0004d26c] 3006                      move.w     d6,d0
[0004d26e] 2053                      movea.l    (a3),a0
[0004d270] 4eb9 0004 aeca            jsr        $0004AECA
[0004d276] 3a00                      move.w     d0,d5
[0004d278] 6f04                      ble.s      $0004D27E
[0004d27a] b054                      cmp.w      (a4),d0
[0004d27c] 6dea                      blt.s      $0004D268
[0004d27e] 4a46                      tst.w      d6
[0004d280] 6a30                      bpl.s      $0004D2B2
[0004d282] 204a                      movea.l    a2,a0
[0004d284] 6100 f382                 bsr        $0004C608
[0004d288] 3c00                      move.w     d0,d6
[0004d28a] 6026                      bra.s      $0004D2B2
[0004d28c] 7cff                      moveq.l    #-1,d6
[0004d28e] 3004                      move.w     d4,d0
[0004d290] c07c 0300                 and.w      #$0300,d0
[0004d294] 670a                      beq.s      $0004D2A0
[0004d296] 204a                      movea.l    a2,a0
[0004d298] 6100 f36e                 bsr        $0004C608
[0004d29c] 3c00                      move.w     d0,d6
[0004d29e] 601e                      bra.s      $0004D2BE
[0004d2a0] 7208                      moveq.l    #8,d1
[0004d2a2] 3014                      move.w     (a4),d0
[0004d2a4] 2053                      movea.l    (a3),a0
[0004d2a6] 4eb9 0004 aeca            jsr        $0004AECA
[0004d2ac] 3c00                      move.w     d0,d6
[0004d2ae] 4a40                      tst.w      d0
[0004d2b0] 6bac                      bmi.s      $0004D25E
[0004d2b2] 206a 0018                 movea.l    24(a2),a0
[0004d2b6] b1d3                      cmpa.l     (a3),a0
[0004d2b8] 6604                      bne.s      $0004D2BE
[0004d2ba] 8c7c 1000                 or.w       #$1000,d6
[0004d2be] 3206                      move.w     d6,d1
[0004d2c0] 3014                      move.w     (a4),d0
[0004d2c2] 204a                      movea.l    a2,a0
[0004d2c4] 6100 f3a2                 bsr        $0004C668
[0004d2c8] 4a40                      tst.w      d0
[0004d2ca] 6600 0174                 bne        $0004D440
[0004d2ce] 536f 011e                 subq.w     #1,286(a7)
[0004d2d2] 6000 016c                 bra        $0004D440
[0004d2d6] 93c9                      suba.l     a1,a1
[0004d2d8] 303c 02cc                 move.w     #$02CC,d0
[0004d2dc] 3414                      move.w     (a4),d2
[0004d2de] 48c2                      ext.l      d2
[0004d2e0] 2202                      move.l     d2,d1
[0004d2e2] d281                      add.l      d1,d1
[0004d2e4] d282                      add.l      d2,d1
[0004d2e6] e789                      lsl.l      #3,d1
[0004d2e8] 2053                      movea.l    (a3),a0
[0004d2ea] d1c1                      adda.l     d1,a0
[0004d2ec] 246d 0008                 movea.l    8(a5),a2
[0004d2f0] 4e92                      jsr        (a2)
[0004d2f2] 6000 014c                 bra        $0004D440
[0004d2f6] 3004                      move.w     d4,d0
[0004d2f8] c07c 0400                 and.w      #$0400,d0
[0004d2fc] 6700 012a                 beq        $0004D428
[0004d300] 43ef 0016                 lea.l      22(a7),a1
[0004d304] 3414                      move.w     (a4),d2
[0004d306] 48c2                      ext.l      d2
[0004d308] 2202                      move.l     d2,d1
[0004d30a] d281                      add.l      d1,d1
[0004d30c] d282                      add.l      d2,d1
[0004d30e] e789                      lsl.l      #3,d1
[0004d310] 2053                      movea.l    (a3),a0
[0004d312] d1c1                      adda.l     d1,a0
[0004d314] 246d 0008                 movea.l    8(a5),a2
[0004d318] 7003                      moveq.l    #3,d0
[0004d31a] 4e92                      jsr        (a2)
[0004d31c] 4a40                      tst.w      d0
[0004d31e] 6700 0108                 beq        $0004D428
[0004d322] 43ef 011a                 lea.l      282(a7),a1
[0004d326] 303c 02c3                 move.w     #$02C3,d0
[0004d32a] 3414                      move.w     (a4),d2
[0004d32c] 48c2                      ext.l      d2
[0004d32e] 2202                      move.l     d2,d1
[0004d330] d281                      add.l      d1,d1
[0004d332] d282                      add.l      d2,d1
[0004d334] e789                      lsl.l      #3,d1
[0004d336] 2053                      movea.l    (a3),a0
[0004d338] d1c1                      adda.l     d1,a0
[0004d33a] 246d 0008                 movea.l    8(a5),a2
[0004d33e] 4e92                      jsr        (a2)
[0004d340] 4a40                      tst.w      d0
[0004d342] 6700 00e4                 beq        $0004D428
[0004d346] 3004                      move.w     d4,d0
[0004d348] c07c 0300                 and.w      #$0300,d0
[0004d34c] 6608                      bne.s      $0004D356
[0004d34e] 91c8                      suba.l     a0,a0
[0004d350] 4eb9 0005 faca            jsr        $0005FACA
[0004d356] 3004                      move.w     d4,d0
[0004d358] c07c 0300                 and.w      #$0300,d0
[0004d35c] 6704                      beq.s      $0004D362
[0004d35e] 7201                      moveq.l    #1,d1
[0004d360] 6002                      bra.s      $0004D364
[0004d362] 4241                      clr.w      d1
[0004d364] 3f01                      move.w     d1,-(a7)
[0004d366] 206f 0018                 movea.l    24(a7),a0
[0004d36a] 4eb9 0007 69b0            jsr        $000769B0
[0004d370] 226f 0018                 movea.l    24(a7),a1
[0004d374] 41f9 000d 3d87            lea.l      $000D3D87,a0
[0004d37a] 321f                      move.w     (a7)+,d1
[0004d37c] 4eb9 0005 fd30            jsr        $0005FD30
[0004d382] b83c 0078                 cmp.b      #$78,d4
[0004d386] 6708                      beq.s      $0004D390
[0004d388] b83c 0058                 cmp.b      #$58,d4
[0004d38c] 6600 00b2                 bne        $0004D440
[0004d390] 302f 011c                 move.w     284(a7),d0
[0004d394] b06f 011a                 cmp.w      282(a7),d0
[0004d398] 6f20                      ble.s      $0004D3BA
[0004d39a] 93c9                      suba.l     a1,a1
[0004d39c] 303c 02c7                 move.w     #$02C7,d0
[0004d3a0] 3414                      move.w     (a4),d2
[0004d3a2] 48c2                      ext.l      d2
[0004d3a4] 2202                      move.l     d2,d1
[0004d3a6] d281                      add.l      d1,d1
[0004d3a8] d282                      add.l      d2,d1
[0004d3aa] e789                      lsl.l      #3,d1
[0004d3ac] 2053                      movea.l    (a3),a0
[0004d3ae] d1c1                      adda.l     d1,a0
[0004d3b0] 246d 0008                 movea.l    8(a5),a2
[0004d3b4] 4e92                      jsr        (a2)
[0004d3b6] 6000 0088                 bra        $0004D440
[0004d3ba] 43f9 000d 3d86            lea.l      $000D3D86,a1
[0004d3c0] 7004                      moveq.l    #4,d0
[0004d3c2] 3414                      move.w     (a4),d2
[0004d3c4] 48c2                      ext.l      d2
[0004d3c6] 2202                      move.l     d2,d1
[0004d3c8] d281                      add.l      d1,d1
[0004d3ca] d282                      add.l      d2,d1
[0004d3cc] e789                      lsl.l      #3,d1
[0004d3ce] 2053                      movea.l    (a3),a0
[0004d3d0] d1c1                      adda.l     d1,a0
[0004d3d2] 246d 0008                 movea.l    8(a5),a2
[0004d3d6] 4e92                      jsr        (a2)
[0004d3d8] 6066                      bra.s      $0004D440
[0004d3da] 3004                      move.w     d4,d0
[0004d3dc] c07c 0400                 and.w      #$0400,d0
[0004d3e0] 6746                      beq.s      $0004D428
[0004d3e2] 4857                      pea.l      (a7)
[0004d3e4] 43ef 001a                 lea.l      26(a7),a1
[0004d3e8] 41f9 000d 3d87            lea.l      $000D3D87,a0
[0004d3ee] 4eb9 0005 fbba            jsr        $0005FBBA
[0004d3f4] 584f                      addq.w     #4,a7
[0004d3f6] 4a40                      tst.w      d0
[0004d3f8] 672e                      beq.s      $0004D428
[0004d3fa] 2017                      move.l     (a7),d0
[0004d3fc] 6f1e                      ble.s      $0004D41C
[0004d3fe] 226f 0016                 movea.l    22(a7),a1
[0004d402] 3414                      move.w     (a4),d2
[0004d404] 48c2                      ext.l      d2
[0004d406] 2202                      move.l     d2,d1
[0004d408] d281                      add.l      d1,d1
[0004d40a] d282                      add.l      d2,d1
[0004d40c] e789                      lsl.l      #3,d1
[0004d40e] 2053                      movea.l    (a3),a0
[0004d410] d1c1                      adda.l     d1,a0
[0004d412] 246d 0008                 movea.l    8(a5),a2
[0004d416] 303c 02c1                 move.w     #$02C1,d0
[0004d41a] 4e92                      jsr        (a2)
[0004d41c] 206f 0016                 movea.l    22(a7),a0
[0004d420] 4eb9 0004 7e26            jsr        $00047E26
[0004d426] 6018                      bra.s      $0004D440
[0004d428] 1004                      move.b     d4,d0
[0004d42a] 3414                      move.w     (a4),d2
[0004d42c] 48c2                      ext.l      d2
[0004d42e] 2202                      move.l     d2,d1
[0004d430] d281                      add.l      d1,d1
[0004d432] d282                      add.l      d2,d1
[0004d434] e789                      lsl.l      #3,d1
[0004d436] 2253                      movea.l    (a3),a1
[0004d438] d3c1                      adda.l     d1,a1
[0004d43a] 204d                      movea.l    a5,a0
[0004d43c] 6100 f15e                 bsr        $0004C59C
[0004d440] 93c9                      suba.l     a1,a1
[0004d442] 7005                      moveq.l    #5,d0
[0004d444] 3414                      move.w     (a4),d2
[0004d446] 48c2                      ext.l      d2
[0004d448] 2202                      move.l     d2,d1
[0004d44a] d281                      add.l      d1,d1
[0004d44c] d282                      add.l      d2,d1
[0004d44e] e789                      lsl.l      #3,d1
[0004d450] 2053                      movea.l    (a3),a0
[0004d452] d1c1                      adda.l     d1,a0
[0004d454] 246d 0008                 movea.l    8(a5),a2
[0004d458] 4e92                      jsr        (a2)
[0004d45a] 302f 011e                 move.w     286(a7),d0
[0004d45e] 4fef 0126                 lea.l      294(a7),a7
[0004d462] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[0004d466] 4e75                      rts
Awi_scroll:
[0004d468] 48e7 1c3e                 movem.l    d3-d5/a2-a6,-(a7)
[0004d46c] 4fef ffe0                 lea.l      -32(a7),a7
[0004d470] 2448                      movea.l    a0,a2
[0004d472] 362a 0020                 move.w     32(a2),d3
[0004d476] 4a43                      tst.w      d3
[0004d478] 6b00 01da                 bmi        $0004D654
[0004d47c] 3800                      move.w     d0,d4
[0004d47e] 226a 0014                 movea.l    20(a2),a1
[0004d482] 9869 0010                 sub.w      16(a1),d4
[0004d486] 3a01                      move.w     d1,d5
[0004d488] 9a69 0012                 sub.w      18(a1),d5
[0004d48c] 47ef 0008                 lea.l      8(a7),a3
[0004d490] 303c 0080                 move.w     #$0080,d0
[0004d494] c06a 0054                 and.w      84(a2),d0
[0004d498] 6600 0078                 bne.w      $0004D512
[0004d49c] b86a 0038                 cmp.w      56(a2),d4
[0004d4a0] 6c70                      bge.s      $0004D512
[0004d4a2] 322a 0038                 move.w     56(a2),d1
[0004d4a6] 4441                      neg.w      d1
[0004d4a8] b841                      cmp.w      d1,d4
[0004d4aa] 6f66                      ble.s      $0004D512
[0004d4ac] ba6a 003a                 cmp.w      58(a2),d5
[0004d4b0] 6c60                      bge.s      $0004D512
[0004d4b2] 342a 003a                 move.w     58(a2),d2
[0004d4b6] 4442                      neg.w      d2
[0004d4b8] ba42                      cmp.w      d2,d5
[0004d4ba] 6f56                      ble.s      $0004D512
[0004d4bc] 486b 0006                 pea.l      6(a3)
[0004d4c0] 486b 0004                 pea.l      4(a3)
[0004d4c4] 486b 0002                 pea.l      2(a3)
[0004d4c8] 4853                      pea.l      (a3)
[0004d4ca] 3003                      move.w     d3,d0
[0004d4cc] 720b                      moveq.l    #11,d1
[0004d4ce] 4eb9 0007 14ea            jsr        $000714EA
[0004d4d4] 4fef 0010                 lea.l      16(a7),a7
[0004d4d8] 302b 0004                 move.w     4(a3),d0
[0004d4dc] 6700 0176                 beq        $0004D654
[0004d4e0] 322b 0006                 move.w     6(a3),d1
[0004d4e4] 6700 016e                 beq        $0004D654
[0004d4e8] 486f 0006                 pea.l      6(a7)
[0004d4ec] 486f 0008                 pea.l      8(a7)
[0004d4f0] 486f 000a                 pea.l      10(a7)
[0004d4f4] 486f 000c                 pea.l      12(a7)
[0004d4f8] 3003                      move.w     d3,d0
[0004d4fa] 720c                      moveq.l    #12,d1
[0004d4fc] 4eb9 0007 14ea            jsr        $000714EA
[0004d502] 4fef 0010                 lea.l      16(a7),a7
[0004d506] 302f 0004                 move.w     4(a7),d0
[0004d50a] 6606                      bne.s      $0004D512
[0004d50c] 322f 0006                 move.w     6(a7),d1
[0004d510] 6710                      beq.s      $0004D522
[0004d512] 43ea 0034                 lea.l      52(a2),a1
[0004d516] 204a                      movea.l    a2,a0
[0004d518] 286a 006a                 movea.l    106(a2),a4
[0004d51c] 4e94                      jsr        (a4)
[0004d51e] 6000 0134                 bra        $0004D654
[0004d522] 49f9 0010 1f12            lea.l      ACSblk,a4
[0004d528] 2254                      movea.l    (a4),a1
[0004d52a] 5049                      addq.w     #8,a1
[0004d52c] 204b                      movea.l    a3,a0
[0004d52e] 4eb9 0005 f94a            jsr        $0005F94A
[0004d534] 43ea 0034                 lea.l      52(a2),a1
[0004d538] 204b                      movea.l    a3,a0
[0004d53a] 4eb9 0005 f94a            jsr        $0005F94A
[0004d540] 302b 0004                 move.w     4(a3),d0
[0004d544] 6700 010e                 beq        $0004D654
[0004d548] 322b 0006                 move.w     6(a3),d1
[0004d54c] 6700 0106                 beq        $0004D654
[0004d550] 4bef 0010                 lea.l      16(a7),a5
[0004d554] 3013                      move.w     (a3),d0
[0004d556] 3b40 0008                 move.w     d0,8(a5)
[0004d55a] 3a80                      move.w     d0,(a5)
[0004d55c] 322b 0002                 move.w     2(a3),d1
[0004d560] 3b41 000a                 move.w     d1,10(a5)
[0004d564] 3b41 0002                 move.w     d1,2(a5)
[0004d568] 3013                      move.w     (a3),d0
[0004d56a] d06b 0004                 add.w      4(a3),d0
[0004d56e] 5340                      subq.w     #1,d0
[0004d570] 3b40 000c                 move.w     d0,12(a5)
[0004d574] 3b40 0004                 move.w     d0,4(a5)
[0004d578] 322b 0002                 move.w     2(a3),d1
[0004d57c] d26b 0006                 add.w      6(a3),d1
[0004d580] 5341                      subq.w     #1,d1
[0004d582] 3b41 000e                 move.w     d1,14(a5)
[0004d586] 3b41 0006                 move.w     d1,6(a5)
[0004d58a] 4a44                      tst.w      d4
[0004d58c] 6728                      beq.s      $0004D5B6
[0004d58e] 4a44                      tst.w      d4
[0004d590] 6f14                      ble.s      $0004D5A6
[0004d592] d955                      add.w      d4,(a5)
[0004d594] 996d 000c                 sub.w      d4,12(a5)
[0004d598] 7001                      moveq.l    #1,d0
[0004d59a] d06d 000c                 add.w      12(a5),d0
[0004d59e] 3680                      move.w     d0,(a3)
[0004d5a0] 3744 0004                 move.w     d4,4(a3)
[0004d5a4] 6010                      bra.s      $0004D5B6
[0004d5a6] d96d 0004                 add.w      d4,4(a5)
[0004d5aa] 996d 0008                 sub.w      d4,8(a5)
[0004d5ae] 3004                      move.w     d4,d0
[0004d5b0] 4440                      neg.w      d0
[0004d5b2] 3740 0004                 move.w     d0,4(a3)
[0004d5b6] 4a45                      tst.w      d5
[0004d5b8] 672c                      beq.s      $0004D5E6
[0004d5ba] 4a45                      tst.w      d5
[0004d5bc] 6f18                      ble.s      $0004D5D6
[0004d5be] db6d 0002                 add.w      d5,2(a5)
[0004d5c2] 9b6d 000e                 sub.w      d5,14(a5)
[0004d5c6] 7001                      moveq.l    #1,d0
[0004d5c8] d06d 000e                 add.w      14(a5),d0
[0004d5cc] 3740 0002                 move.w     d0,2(a3)
[0004d5d0] 3745 0006                 move.w     d5,6(a3)
[0004d5d4] 6010                      bra.s      $0004D5E6
[0004d5d6] db6d 0006                 add.w      d5,6(a5)
[0004d5da] 9b6d 000a                 sub.w      d5,10(a5)
[0004d5de] 3005                      move.w     d5,d0
[0004d5e0] 4440                      neg.w      d0
[0004d5e2] 3740 0006                 move.w     d0,6(a3)
[0004d5e6] 3015                      move.w     (a5),d0
[0004d5e8] b06d 0004                 cmp.w      4(a5),d0
[0004d5ec] 6e5c                      bgt.s      $0004D64A
[0004d5ee] 322d 0002                 move.w     2(a5),d1
[0004d5f2] b26d 0006                 cmp.w      6(a5),d1
[0004d5f6] 6e52                      bgt.s      $0004D64A
[0004d5f8] 204d                      movea.l    a5,a0
[0004d5fa] 2254                      movea.l    (a4),a1
[0004d5fc] 3029 0010                 move.w     16(a1),d0
[0004d600] 4241                      clr.w      d1
[0004d602] 4eb9 0006 3f60            jsr        $00063F60
[0004d608] 2279 000d 99d6            movea.l    $000D99D6,a1
[0004d60e] 91c8                      suba.l     a0,a0
[0004d610] 303c 0100                 move.w     #$0100,d0
[0004d614] 4eb9 0006 c914            jsr        $0006C914
[0004d61a] 2054                      movea.l    (a4),a0
[0004d61c] 4868 026a                 pea.l      618(a0)
[0004d620] 2248                      movea.l    a0,a1
[0004d622] 43e9 026a                 lea.l      618(a1),a1
[0004d626] 204d                      movea.l    a5,a0
[0004d628] 7203                      moveq.l    #3,d1
[0004d62a] 2c54                      movea.l    (a4),a6
[0004d62c] 302e 0010                 move.w     16(a6),d0
[0004d630] 4eb9 0006 65ce            jsr        $000665CE
[0004d636] 584f                      addq.w     #4,a7
[0004d638] 2279 000d 99d6            movea.l    $000D99D6,a1
[0004d63e] 91c8                      suba.l     a0,a0
[0004d640] 303c 0101                 move.w     #$0101,d0
[0004d644] 4eb9 0006 c914            jsr        $0006C914
[0004d64a] 224b                      movea.l    a3,a1
[0004d64c] 204a                      movea.l    a2,a0
[0004d64e] 286a 006a                 movea.l    106(a2),a4
[0004d652] 4e94                      jsr        (a4)
[0004d654] 4fef 0020                 lea.l      32(a7),a7
[0004d658] 4cdf 7c38                 movem.l    (a7)+,d3-d5/a2-a6
[0004d65c] 4e75                      rts
Aob_flags:
[0004d65e] 48e7 1c30                 movem.l    d3-d5/a2-a3,-(a7)
[0004d662] 2648                      movea.l    a0,a3
[0004d664] 3600                      move.w     d0,d3
[0004d666] 3a01                      move.w     d1,d5
[0004d668] 3802                      move.w     d2,d4
[0004d66a] 95ca                      suba.l     a2,a2
[0004d66c] c07c 1000                 and.w      #$1000,d0
[0004d670] 671c                      beq.s      $0004D68E
[0004d672] 242b 0018                 move.l     24(a3),d2
[0004d676] 672c                      beq.s      $0004D6A4
[0004d678] 3003                      move.w     d3,d0
[0004d67a] c07c 0fff                 and.w      #$0FFF,d0
[0004d67e] 48c0                      ext.l      d0
[0004d680] 2200                      move.l     d0,d1
[0004d682] d281                      add.l      d1,d1
[0004d684] d280                      add.l      d0,d1
[0004d686] e789                      lsl.l      #3,d1
[0004d688] 2442                      movea.l    d2,a2
[0004d68a] d5c1                      adda.l     d1,a2
[0004d68c] 6016                      bra.s      $0004D6A4
[0004d68e] 202b 0014                 move.l     20(a3),d0
[0004d692] 6710                      beq.s      $0004D6A4
[0004d694] 3403                      move.w     d3,d2
[0004d696] 48c2                      ext.l      d2
[0004d698] 2202                      move.l     d2,d1
[0004d69a] d281                      add.l      d1,d1
[0004d69c] d282                      add.l      d2,d1
[0004d69e] e789                      lsl.l      #3,d1
[0004d6a0] 2440                      movea.l    d0,a2
[0004d6a2] d5c1                      adda.l     d1,a2
[0004d6a4] 200a                      move.l     a2,d0
[0004d6a6] 6732                      beq.s      $0004D6DA
[0004d6a8] 4a44                      tst.w      d4
[0004d6aa] 6706                      beq.s      $0004D6B2
[0004d6ac] 8b6a 0008                 or.w       d5,8(a2)
[0004d6b0] 6008                      bra.s      $0004D6BA
[0004d6b2] 3005                      move.w     d5,d0
[0004d6b4] 4640                      not.w      d0
[0004d6b6] c16a 0008                 and.w      d0,8(a2)
[0004d6ba] 302b 0020                 move.w     32(a3),d0
[0004d6be] 6b14                      bmi.s      $0004D6D4
[0004d6c0] 7220                      moveq.l    #32,d1
[0004d6c2] c26b 0056                 and.w      86(a3),d1
[0004d6c6] 660c                      bne.s      $0004D6D4
[0004d6c8] 204b                      movea.l    a3,a0
[0004d6ca] 226b 0066                 movea.l    102(a3),a1
[0004d6ce] 3003                      move.w     d3,d0
[0004d6d0] 72ff                      moveq.l    #-1,d1
[0004d6d2] 4e91                      jsr        (a1)
[0004d6d4] 302a 0008                 move.w     8(a2),d0
[0004d6d8] 6002                      bra.s      $0004D6DC
[0004d6da] 4240                      clr.w      d0
[0004d6dc] 4cdf 0c38                 movem.l    (a7)+,d3-d5/a2-a3
[0004d6e0] 4e75                      rts
Aob_state:
[0004d6e2] 48e7 1c30                 movem.l    d3-d5/a2-a3,-(a7)
[0004d6e6] 2648                      movea.l    a0,a3
[0004d6e8] 3600                      move.w     d0,d3
[0004d6ea] 3a01                      move.w     d1,d5
[0004d6ec] 3802                      move.w     d2,d4
[0004d6ee] 95ca                      suba.l     a2,a2
[0004d6f0] c07c 1000                 and.w      #$1000,d0
[0004d6f4] 671c                      beq.s      $0004D712
[0004d6f6] 222b 0018                 move.l     24(a3),d1
[0004d6fa] 6730                      beq.s      $0004D72C
[0004d6fc] 3003                      move.w     d3,d0
[0004d6fe] c07c 0fff                 and.w      #$0FFF,d0
[0004d702] 48c0                      ext.l      d0
[0004d704] 2400                      move.l     d0,d2
[0004d706] d482                      add.l      d2,d2
[0004d708] d480                      add.l      d0,d2
[0004d70a] e78a                      lsl.l      #3,d2
[0004d70c] 2441                      movea.l    d1,a2
[0004d70e] d5c2                      adda.l     d2,a2
[0004d710] 601a                      bra.s      $0004D72C
[0004d712] 202b 0014                 move.l     20(a3),d0
[0004d716] 6714                      beq.s      $0004D72C
[0004d718] 3403                      move.w     d3,d2
[0004d71a] c47c 0fff                 and.w      #$0FFF,d2
[0004d71e] 48c2                      ext.l      d2
[0004d720] 2202                      move.l     d2,d1
[0004d722] d281                      add.l      d1,d1
[0004d724] d282                      add.l      d2,d1
[0004d726] e789                      lsl.l      #3,d1
[0004d728] 2440                      movea.l    d0,a2
[0004d72a] d5c1                      adda.l     d1,a2
[0004d72c] 200a                      move.l     a2,d0
[0004d72e] 6732                      beq.s      $0004D762
[0004d730] 4a44                      tst.w      d4
[0004d732] 6706                      beq.s      $0004D73A
[0004d734] 8b6a 000a                 or.w       d5,10(a2)
[0004d738] 6008                      bra.s      $0004D742
[0004d73a] 3005                      move.w     d5,d0
[0004d73c] 4640                      not.w      d0
[0004d73e] c16a 000a                 and.w      d0,10(a2)
[0004d742] 302b 0020                 move.w     32(a3),d0
[0004d746] 6b14                      bmi.s      $0004D75C
[0004d748] 7220                      moveq.l    #32,d1
[0004d74a] c26b 0056                 and.w      86(a3),d1
[0004d74e] 660c                      bne.s      $0004D75C
[0004d750] 204b                      movea.l    a3,a0
[0004d752] 226b 0066                 movea.l    102(a3),a1
[0004d756] 3003                      move.w     d3,d0
[0004d758] 72ff                      moveq.l    #-1,d1
[0004d75a] 4e91                      jsr        (a1)
[0004d75c] 302a 000a                 move.w     10(a2),d0
[0004d760] 6002                      bra.s      $0004D764
[0004d762] 4240                      clr.w      d0
[0004d764] 4cdf 0c38                 movem.l    (a7)+,d3-d5/a2-a3
[0004d768] 4e75                      rts
Aob_service:
[0004d76a] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0004d76e] 2448                      movea.l    a0,a2
[0004d770] 3600                      move.w     d0,d3
[0004d772] 3801                      move.w     d1,d4
[0004d774] 2849                      movea.l    a1,a4
[0004d776] 2279 0010 1f12            movea.l    ACSblk,a1
[0004d77c] 2069 023c                 movea.l    572(a1),a0
[0004d780] 3428 000e                 move.w     14(a0),d2
[0004d784] c47c 0200                 and.w      #$0200,d2
[0004d788] 6604                      bne.s      $0004D78E
[0004d78a] 200a                      move.l     a2,d0
[0004d78c] 675a                      beq.s      $0004D7E8
[0004d78e] 3203                      move.w     d3,d1
[0004d790] c27c 0fff                 and.w      #$0FFF,d1
[0004d794] 48c1                      ext.l      d1
[0004d796] 2001                      move.l     d1,d0
[0004d798] d080                      add.l      d0,d0
[0004d79a] d081                      add.l      d1,d0
[0004d79c] e788                      lsl.l      #3,d0
[0004d79e] d5c0                      adda.l     d0,a2
[0004d7a0] 2079 0010 1f12            movea.l    ACSblk,a0
[0004d7a6] 2268 023c                 movea.l    572(a0),a1
[0004d7aa] 3429 000e                 move.w     14(a1),d2
[0004d7ae] c47c 0200                 and.w      #$0200,d2
[0004d7b2] 6608                      bne.s      $0004D7BC
[0004d7b4] 0c2a 0018 0007            cmpi.b     #$18,7(a2)
[0004d7ba] 662c                      bne.s      $0004D7E8
[0004d7bc] 266a 000c                 movea.l    12(a2),a3
[0004d7c0] 2079 0010 1f12            movea.l    ACSblk,a0
[0004d7c6] 2268 023c                 movea.l    572(a0),a1
[0004d7ca] 3029 000e                 move.w     14(a1),d0
[0004d7ce] c07c 0200                 and.w      #$0200,d0
[0004d7d2] 6606                      bne.s      $0004D7DA
[0004d7d4] 222b 0008                 move.l     8(a3),d1
[0004d7d8] 670e                      beq.s      $0004D7E8
[0004d7da] 224c                      movea.l    a4,a1
[0004d7dc] 3004                      move.w     d4,d0
[0004d7de] 204a                      movea.l    a2,a0
[0004d7e0] 2a6b 0008                 movea.l    8(a3),a5
[0004d7e4] 4e95                      jsr        (a5)
[0004d7e6] 6002                      bra.s      $0004D7EA
[0004d7e8] 4240                      clr.w      d0
[0004d7ea] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0004d7ee] 4e75                      rts
Awi_observice:
[0004d7f0] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[0004d7f4] 2448                      movea.l    a0,a2
[0004d7f6] 3600                      move.w     d0,d3
[0004d7f8] 3801                      move.w     d1,d4
[0004d7fa] 2649                      movea.l    a1,a3
[0004d7fc] 2079 0010 1f12            movea.l    ACSblk,a0
[0004d802] 2268 023c                 movea.l    572(a0),a1
[0004d806] 3429 000e                 move.w     14(a1),d2
[0004d80a] c47c 0200                 and.w      #$0200,d2
[0004d80e] 6604                      bne.s      $0004D814
[0004d810] 200a                      move.l     a2,d0
[0004d812] 6728                      beq.s      $0004D83C
[0004d814] 3003                      move.w     d3,d0
[0004d816] c07c 1000                 and.w      #$1000,d0
[0004d81a] 6710                      beq.s      $0004D82C
[0004d81c] 224b                      movea.l    a3,a1
[0004d81e] 3204                      move.w     d4,d1
[0004d820] 206a 0018                 movea.l    24(a2),a0
[0004d824] 3003                      move.w     d3,d0
[0004d826] 6100 ff42                 bsr        $0004D76A
[0004d82a] 6012                      bra.s      $0004D83E
[0004d82c] 224b                      movea.l    a3,a1
[0004d82e] 3204                      move.w     d4,d1
[0004d830] 3003                      move.w     d3,d0
[0004d832] 206a 0014                 movea.l    20(a2),a0
[0004d836] 6100 ff32                 bsr        $0004D76A
[0004d83a] 6002                      bra.s      $0004D83E
[0004d83c] 4240                      clr.w      d0
[0004d83e] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[0004d842] 4e75                      rts
Aob_visible:
[0004d844] 48e7 1820                 movem.l    d3-d4/a2,-(a7)
[0004d848] 2448                      movea.l    a0,a2
[0004d84a] 7601                      moveq.l    #1,d3
[0004d84c] 3800                      move.w     d0,d4
[0004d84e] 6024                      bra.s      $0004D874
[0004d850] 303c 0080                 move.w     #$0080,d0
[0004d854] 3404                      move.w     d4,d2
[0004d856] 48c2                      ext.l      d2
[0004d858] 2202                      move.l     d2,d1
[0004d85a] d281                      add.l      d1,d1
[0004d85c] d282                      add.l      d2,d1
[0004d85e] e789                      lsl.l      #3,d1
[0004d860] c072 1808                 and.w      8(a2,d1.l),d0
[0004d864] 6702                      beq.s      $0004D868
[0004d866] 4243                      clr.w      d3
[0004d868] 3004                      move.w     d4,d0
[0004d86a] 204a                      movea.l    a2,a0
[0004d86c] 4eb9 0004 af6c            jsr        $0004AF6C
[0004d872] 3800                      move.w     d0,d4
[0004d874] 4a44                      tst.w      d4
[0004d876] 6b04                      bmi.s      $0004D87C
[0004d878] 4a43                      tst.w      d3
[0004d87a] 66d4                      bne.s      $0004D850
[0004d87c] 3003                      move.w     d3,d0
[0004d87e] 4cdf 0418                 movem.l    (a7)+,d3-d4/a2
[0004d882] 4e75                      rts
Awi_obvisible:
[0004d884] 3f03                      move.w     d3,-(a7)
[0004d886] 2f0a                      move.l     a2,-(a7)
[0004d888] 2448                      movea.l    a0,a2
[0004d88a] 3600                      move.w     d0,d3
[0004d88c] 220a                      move.l     a2,d1
[0004d88e] 6714                      beq.s      $0004D8A4
[0004d890] 4a40                      tst.w      d0
[0004d892] 6b10                      bmi.s      $0004D8A4
[0004d894] 342a 0020                 move.w     32(a2),d2
[0004d898] 6b0a                      bmi.s      $0004D8A4
[0004d89a] 322a 0056                 move.w     86(a2),d1
[0004d89e] c27c 3800                 and.w      #$3800,d1
[0004d8a2] 6704                      beq.s      $0004D8A8
[0004d8a4] 4240                      clr.w      d0
[0004d8a6] 6026                      bra.s      $0004D8CE
[0004d8a8] 3003                      move.w     d3,d0
[0004d8aa] c07c 1000                 and.w      #$1000,d0
[0004d8ae] 6714                      beq.s      $0004D8C4
[0004d8b0] 222a 0018                 move.l     24(a2),d1
[0004d8b4] 670e                      beq.s      $0004D8C4
[0004d8b6] 3003                      move.w     d3,d0
[0004d8b8] c07c 0fff                 and.w      #$0FFF,d0
[0004d8bc] 2041                      movea.l    d1,a0
[0004d8be] 6100 ff84                 bsr.w      $0004D844
[0004d8c2] 600a                      bra.s      $0004D8CE
[0004d8c4] 3003                      move.w     d3,d0
[0004d8c6] 206a 0014                 movea.l    20(a2),a0
[0004d8ca] 6100 ff78                 bsr        $0004D844
[0004d8ce] 245f                      movea.l    (a7)+,a2
[0004d8d0] 361f                      move.w     (a7)+,d3
[0004d8d2] 4e75                      rts
