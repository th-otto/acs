make_a_window:
[0002a0aa] 4eb9 0004 f41a            jsr        $0004F41A
[0002a0b0] 2008                      move.l     a0,d0
[0002a0b2] 6604                      bne.s      $0002A0B8
[0002a0b4] 91c8                      suba.l     a0,a0
[0002a0b6] 4e71                      nop
[0002a0b8] 4e75                      rts
close_uc:
[0002a0ba] 2f0a                      move.l     a2,-(a7)
[0002a0bc] 2448                      movea.l    a0,a2
[0002a0be] 5379 000b cca2            subq.w     #1,$000BCCA2
[0002a0c4] 3039 000b cca2            move.w     $000BCCA2,d0
[0002a0ca] 6e18                      bgt.s      $0002A0E4
[0002a0cc] 2279 000a f0de            movea.l    $000AF0DE,a1
[0002a0d2] 3229 0020                 move.w     32(a1),d1
[0002a0d6] 6b0c                      bmi.s      $0002A0E4
[0002a0d8] 2269 0072                 movea.l    114(a1),a1
[0002a0dc] 2079 000a f0de            movea.l    $000AF0DE,a0
[0002a0e2] 4e91                      jsr        (a1)
[0002a0e4] 302a 0020                 move.w     32(a2),d0
[0002a0e8] 6b08                      bmi.s      $0002A0F2
[0002a0ea] 204a                      movea.l    a2,a0
[0002a0ec] 4eb9 0005 013e            jsr        $0005013E
[0002a0f2] 245f                      movea.l    (a7)+,a2
[0002a0f4] 4e75                      rts
close_me:
[0002a0f6] 2f0a                      move.l     a2,-(a7)
[0002a0f8] 2f0b                      move.l     a3,-(a7)
[0002a0fa] 2448                      movea.l    a0,a2
[0002a0fc] 2650                      movea.l    (a0),a3
[0002a0fe] 0c6b 0001 0008            cmpi.w     #$0001,8(a3)
[0002a104] 6706                      beq.s      $0002A10C
[0002a106] 202a 0014                 move.l     20(a2),d0
[0002a10a] 6608                      bne.s      $0002A114
[0002a10c] 204a                      movea.l    a2,a0
[0002a10e] 6100 ffaa                 bsr.w      $0002A0BA
[0002a112] 6010                      bra.s      $0002A124
[0002a114] 2079 0010 1f12            movea.l    ACSblk,a0
[0002a11a] 214a 0258                 move.l     a2,600(a0)
[0002a11e] 206b 001a                 movea.l    26(a3),a0
[0002a122] 4e90                      jsr        (a0)
[0002a124] 265f                      movea.l    (a7)+,a3
[0002a126] 245f                      movea.l    (a7)+,a2
[0002a128] 4e75                      rts
open_me:
[0002a12a] 2f0a                      move.l     a2,-(a7)
[0002a12c] 2448                      movea.l    a0,a2
[0002a12e] 3039 000b cca2            move.w     $000BCCA2,d0
[0002a134] 6616                      bne.s      $0002A14C
[0002a136] 2279 000a f0de            movea.l    $000AF0DE,a1
[0002a13c] 2269 000c                 movea.l    12(a1),a1
[0002a140] 2079 000a f0de            movea.l    $000AF0DE,a0
[0002a146] 4e91                      jsr        (a1)
[0002a148] 4a40                      tst.w      d0
[0002a14a] 6618                      bne.s      $0002A164
[0002a14c] 5279 000b cca2            addq.w     #1,$000BCCA2
[0002a152] 204a                      movea.l    a2,a0
[0002a154] 4eb9 0004 f69e            jsr        $0004F69E
[0002a15a] 5240                      addq.w     #1,d0
[0002a15c] 660a                      bne.s      $0002A168
[0002a15e] 204a                      movea.l    a2,a0
[0002a160] 6100 ff58                 bsr        $0002A0BA
[0002a164] 70ff                      moveq.l    #-1,d0
[0002a166] 600a                      bra.s      $0002A172
[0002a168] 204a                      movea.l    a2,a0
[0002a16a] 4eb9 0002 3714            jsr        $00023714
[0002a170] 4240                      clr.w      d0
[0002a172] 245f                      movea.l    (a7)+,a2
[0002a174] 4e75                      rts
top_me:
[0002a176] 2f0a                      move.l     a2,-(a7)
[0002a178] 2448                      movea.l    a0,a2
[0002a17a] 3039 000b cca2            move.w     $000BCCA2,d0
[0002a180] 6714                      beq.s      $0002A196
[0002a182] 2079 000a f0de            movea.l    $000AF0DE,a0
[0002a188] 4eb9 0004 f0ca            jsr        $0004F0CA
[0002a18e] 204a                      movea.l    a2,a0
[0002a190] 4eb9 0002 3714            jsr        $00023714
[0002a196] 204a                      movea.l    a2,a0
[0002a198] 4eb9 0005 0454            jsr        $00050454
[0002a19e] 245f                      movea.l    (a7)+,a2
[0002a1a0] 4e75                      rts
move_me:
[0002a1a2] 2f0b                      move.l     a3,-(a7)
[0002a1a4] 2648                      movea.l    a0,a3
[0002a1a6] 4eb9 0005 07bc            jsr        $000507BC
[0002a1ac] 204b                      movea.l    a3,a0
[0002a1ae] 4eb9 0002 3714            jsr        $00023714
[0002a1b4] 265f                      movea.l    (a7)+,a3
[0002a1b6] 4e75                      rts
key_me:
[0002a1b8] 48e7 1820                 movem.l    d3-d4/a2,-(a7)
[0002a1bc] 2448                      movea.l    a0,a2
[0002a1be] 3800                      move.w     d0,d4
[0002a1c0] 3601                      move.w     d1,d3
[0002a1c2] 2050                      movea.l    (a0),a0
[0002a1c4] 2408                      move.l     a0,d2
[0002a1c6] 6700 0090                 beq        $0002A258
[0002a1ca] 0c68 0001 0008            cmpi.w     #$0001,8(a0)
[0002a1d0] 6600 0086                 bne        $0002A258
[0002a1d4] 72ff                      moveq.l    #-1,d1
[0002a1d6] c203                      and.b      d3,d1
[0002a1d8] b23c 000e                 cmp.b      #$0E,d1
[0002a1dc] 675a                      beq.s      $0002A238
[0002a1de] 4a43                      tst.w      d3
[0002a1e0] 6f60                      ble.s      $0002A242
[0002a1e2] 2079 0010 1f12            movea.l    ACSblk,a0
[0002a1e8] 214a 0258                 move.l     a2,600(a0)
[0002a1ec] 1001                      move.b     d1,d0
[0002a1ee] 4eb9 0004 372c            jsr        $0004372C
[0002a1f4] 4880                      ext.w      d0
[0002a1f6] b07c 0050                 cmp.w      #$0050,d0
[0002a1fa] 6734                      beq.s      $0002A230
[0002a1fc] 6e0e                      bgt.s      $0002A20C
[0002a1fe] 907c 000e                 sub.w      #$000E,d0
[0002a202] 6734                      beq.s      $0002A238
[0002a204] 907c 0038                 sub.w      #$0038,d0
[0002a208] 6716                      beq.s      $0002A220
[0002a20a] 6044                      bra.s      $0002A250
[0002a20c] 907c 0052                 sub.w      #$0052,d0
[0002a210] 6706                      beq.s      $0002A218
[0002a212] 5340                      subq.w     #1,d0
[0002a214] 6712                      beq.s      $0002A228
[0002a216] 6038                      bra.s      $0002A250
[0002a218] 4eb9 0002 dac2            jsr        $0002DAC2
[0002a21e] 6034                      bra.s      $0002A254
[0002a220] 4eb9 0002 ddaa            jsr        $0002DDAA
[0002a226] 602c                      bra.s      $0002A254
[0002a228] 4eb9 0002 def8            jsr        $0002DEF8
[0002a22e] 6024                      bra.s      $0002A254
[0002a230] 4eb9 0002 ec5e            jsr        $0002EC5E
[0002a236] 601c                      bra.s      $0002A254
[0002a238] 204a                      movea.l    a2,a0
[0002a23a] 4eb9 0004 c8b2            jsr        $0004C8B2
[0002a240] 6012                      bra.s      $0002A254
[0002a242] b63c 0009                 cmp.b      #$09,d3
[0002a246] 6608                      bne.s      $0002A250
[0002a248] 4eb9 0002 ccd4            jsr        $0002CCD4
[0002a24e] 6004                      bra.s      $0002A254
[0002a250] 70ff                      moveq.l    #-1,d0
[0002a252] 6010                      bra.s      $0002A264
[0002a254] 4240                      clr.w      d0
[0002a256] 600c                      bra.s      $0002A264
[0002a258] 3203                      move.w     d3,d1
[0002a25a] 3004                      move.w     d4,d0
[0002a25c] 204a                      movea.l    a2,a0
[0002a25e] 4eb9 0005 ef2c            jsr        $0005EF2C
[0002a264] 4cdf 0418                 movem.l    (a7)+,d3-d4/a2
[0002a268] 4e75                      rts
eded_info:
[0002a26a] 2079 0010 1f12            movea.l    ACSblk,a0
[0002a270] 2068 0258                 movea.l    600(a0),a0
[0002a274] 4eb9 0002 a28a            jsr        $0002A28A
[0002a27a] 4e75                      rts
eded_parts:
[0002a27c] 2079 000a f0de            movea.l    $000AF0DE,a0
[0002a282] 4eb9 0004 f0ca            jsr        $0004F0CA
[0002a288] 4e75                      rts
ed_info:
[0002a28a] 48e7 0038                 movem.l    a2-a4,-(a7)
[0002a28e] 4fef fff6                 lea.l      -10(a7),a7
[0002a292] 2450                      movea.l    (a0),a2
[0002a294] 266a 0004                 movea.l    4(a2),a3
[0002a298] 41f9 000b c834            lea.l      $000BC834,a0
[0002a29e] 2279 000b c83c            movea.l    $000BC83C,a1
[0002a2a4] 4e91                      jsr        (a1)
[0002a2a6] 2848                      movea.l    a0,a4
[0002a2a8] 200c                      move.l     a4,d0
[0002a2aa] 6760                      beq.s      $0002A30C
[0002a2ac] 2252                      movea.l    (a2),a1
[0002a2ae] 2269 0008                 movea.l    8(a1),a1
[0002a2b2] 206c 0014                 movea.l    20(a4),a0
[0002a2b6] 7004                      moveq.l    #4,d0
[0002a2b8] 4eb9 0004 afe0            jsr        $0004AFE0
[0002a2be] 43eb 0016                 lea.l      22(a3),a1
[0002a2c2] 7005                      moveq.l    #5,d0
[0002a2c4] 206c 0014                 movea.l    20(a4),a0
[0002a2c8] 4eb9 0004 afe0            jsr        $0004AFE0
[0002a2ce] 202b 000e                 move.l     14(a3),d0
[0002a2d2] 7238                      moveq.l    #56,d1
[0002a2d4] 4eb9 0007 769e            jsr        $0007769E
[0002a2da] 2f00                      move.l     d0,-(a7)
[0002a2dc] 43f9 000b cd44            lea.l      $000BCD44,a1
[0002a2e2] 41ef 0004                 lea.l      4(a7),a0
[0002a2e6] 4eb9 0007 5680            jsr        $00075680
[0002a2ec] 584f                      addq.w     #4,a7
[0002a2ee] 43d7                      lea.l      (a7),a1
[0002a2f0] 7006                      moveq.l    #6,d0
[0002a2f2] 206c 0014                 movea.l    20(a4),a0
[0002a2f6] 4eb9 0004 afe0            jsr        $0004AFE0
[0002a2fc] 204c                      movea.l    a4,a0
[0002a2fe] 4eb9 0005 1292            jsr        $00051292
[0002a304] 204c                      movea.l    a4,a0
[0002a306] 4eb9 0005 0330            jsr        $00050330
[0002a30c] 4fef 000a                 lea.l      10(a7),a7
[0002a310] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0002a314] 4e75                      rts
eded_keys:
[0002a316] 48e7 1c38                 movem.l    d3-d5/a2-a4,-(a7)
[0002a31a] 4fef ffdc                 lea.l      -36(a7),a7
[0002a31e] 2079 0010 1f12            movea.l    ACSblk,a0
[0002a324] 2268 0258                 movea.l    600(a0),a1
[0002a328] 2f51 0020                 move.l     (a1),32(a7)
[0002a32c] 206f 0020                 movea.l    32(a7),a0
[0002a330] 2868 0004                 movea.l    4(a0),a4
[0002a334] 266c 0004                 movea.l    4(a4),a3
[0002a338] 202c 000e                 move.l     14(a4),d0
[0002a33c] 7238                      moveq.l    #56,d1
[0002a33e] 4eb9 0007 769e            jsr        $0007769E
[0002a344] 2600                      move.l     d0,d3
[0002a346] 4244                      clr.w      d4
[0002a348] 6000 00ce                 bra        $0002A418
[0002a34c] 102b 000f                 move.b     15(a3),d0
[0002a350] 4880                      ext.w      d0
[0002a352] 907c 0015                 sub.w      #$0015,d0
[0002a356] b07c 000b                 cmp.w      #$000B,d0
[0002a35a] 6234                      bhi.s      $0002A390
[0002a35c] d040                      add.w      d0,d0
[0002a35e] 303b 0006                 move.w     $0002A366(pc,d0.w),d0
[0002a362] 4efb 0002                 jmp        $0002A366(pc,d0.w)
J15:
[0002a366] 001e                      dc.w $001e   ; $0002a384-$0002a366
[0002a368] 001e                      dc.w $001e   ; $0002a384-$0002a366
[0002a36a] 002a                      dc.w $002a   ; $0002a390-$0002a366
[0002a36c] 002a                      dc.w $002a   ; $0002a390-$0002a366
[0002a36e] 002a                      dc.w $002a   ; $0002a390-$0002a366
[0002a370] 0018                      dc.w $0018   ; $0002a37e-$0002a366
[0002a372] 002a                      dc.w $002a   ; $0002a390-$0002a366
[0002a374] 0018                      dc.w $0018   ; $0002a37e-$0002a366
[0002a376] 002a                      dc.w $002a   ; $0002a390-$0002a366
[0002a378] 002a                      dc.w $002a   ; $0002a390-$0002a366
[0002a37a] 002a                      dc.w $002a   ; $0002a390-$0002a366
[0002a37c] 0018                      dc.w $0018   ; $0002a37e-$0002a366
[0002a37e] 286b 0014                 movea.l    20(a3),a4
[0002a382] 600e                      bra.s      $0002A392
[0002a384] 206b 0014                 movea.l    20(a3),a0
[0002a388] 2068 0004                 movea.l    4(a0),a0
[0002a38c] 2850                      movea.l    (a0),a4
[0002a38e] 6002                      bra.s      $0002A392
[0002a390] 99cc                      suba.l     a4,a4
[0002a392] 200c                      move.l     a4,d0
[0002a394] 6700 007c                 beq.w      $0002A412
[0002a398] 246c 0004                 movea.l    4(a4),a2
[0002a39c] 204a                      movea.l    a2,a0
[0002a39e] 4eb9 0007 69b0            jsr        $000769B0
[0002a3a4] 2a00                      move.l     d0,d5
[0002a3a6] ba7c 001e                 cmp.w      #$001E,d5
[0002a3aa] 6f06                      ble.s      $0002A3B2
[0002a3ac] 9a7c 001e                 sub.w      #$001E,d5
[0002a3b0] 6002                      bra.s      $0002A3B4
[0002a3b2] 4245                      clr.w      d5
[0002a3b4] 4217                      clr.b      (a7)
[0002a3b6] 701e                      moveq.l    #30,d0
[0002a3b8] 43f2 5000                 lea.l      0(a2,d5.w),a1
[0002a3bc] 41d7                      lea.l      (a7),a0
[0002a3be] 4eb9 0007 69da            jsr        $000769DA
[0002a3c4] 4eb9 0007 69b0            jsr        $000769B0
[0002a3ca] 3a00                      move.w     d0,d5
[0002a3cc] 6002                      bra.s      $0002A3D0
[0002a3ce] 5345                      subq.w     #1,d5
[0002a3d0] 4a45                      tst.w      d5
[0002a3d2] 6f08                      ble.s      $0002A3DC
[0002a3d4] 0c37 0020 50ff            cmpi.b     #$20,-1(a7,d5.w)
[0002a3da] 67f2                      beq.s      $0002A3CE
[0002a3dc] 4a45                      tst.w      d5
[0002a3de] 6732                      beq.s      $0002A412
[0002a3e0] 4237 5000                 clr.b      0(a7,d5.w)
[0002a3e4] 7020                      moveq.l    #32,d0
[0002a3e6] 41d7                      lea.l      (a7),a0
[0002a3e8] 4eb9 0007 68e2            jsr        $000768E2
[0002a3ee] 2448                      movea.l    a0,a2
[0002a3f0] 200a                      move.l     a2,d0
[0002a3f2] 671e                      beq.s      $0002A412
[0002a3f4] 41ea 0001                 lea.l      1(a2),a0
[0002a3f8] 4eb9 0003 1908            jsr        $00031908
[0002a3fe] 3a00                      move.w     d0,d5
[0002a400] 6710                      beq.s      $0002A412
[0002a402] 206f 0020                 movea.l    32(a7),a0
[0002a406] 2250                      movea.l    (a0),a1
[0002a408] 0069 0001 0006            ori.w      #$0001,6(a1)
[0002a40e] 3740 002a                 move.w     d0,42(a3)
[0002a412] 47eb 0038                 lea.l      56(a3),a3
[0002a416] 5244                      addq.w     #1,d4
[0002a418] b644                      cmp.w      d4,d3
[0002a41a] 6e00 ff30                 bgt        $0002A34C
[0002a41e] 4fef 0024                 lea.l      36(a7),a7
[0002a422] 4cdf 1c38                 movem.l    (a7)+,d3-d5/a2-a4
[0002a426] 4e75                      rts
click_ans:
[0002a428] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0002a42c] 3600                      move.w     d0,d3
[0002a42e] 2650                      movea.l    (a0),a3
[0002a430] 41f9 000b cb5e            lea.l      $000BCB5E,a0
[0002a436] 2279 000b cb66            movea.l    $000BCB66,a1
[0002a43c] 4e91                      jsr        (a1)
[0002a43e] 2448                      movea.l    a0,a2
[0002a440] 200a                      move.l     a2,d0
[0002a442] 6606                      bne.s      $0002A44A
[0002a444] 4240                      clr.w      d0
[0002a446] 6000 00c4                 bra        $0002A50C
[0002a44a] 705c                      moveq.l    #92,d0
[0002a44c] 2053                      movea.l    (a3),a0
[0002a44e] 2068 0008                 movea.l    8(a0),a0
[0002a452] 4eb9 0007 68e2            jsr        $000768E2
[0002a458] 2248                      movea.l    a0,a1
[0002a45a] 5249                      addq.w     #1,a1
[0002a45c] 7003                      moveq.l    #3,d0
[0002a45e] 206a 0014                 movea.l    20(a2),a0
[0002a462] 4eb9 0004 afe0            jsr        $0004AFE0
[0002a468] 226b 0004                 movea.l    4(a3),a1
[0002a46c] 43e9 0016                 lea.l      22(a1),a1
[0002a470] 7005                      moveq.l    #5,d0
[0002a472] 206a 0014                 movea.l    20(a2),a0
[0002a476] 4eb9 0004 afe0            jsr        $0004AFE0
[0002a47c] 206b 0004                 movea.l    4(a3),a0
[0002a480] 2668 0004                 movea.l    4(a0),a3
[0002a484] 3203                      move.w     d3,d1
[0002a486] e241                      asr.w      #1,d1
[0002a488] 48c1                      ext.l      d1
[0002a48a] 2001                      move.l     d1,d0
[0002a48c] e788                      lsl.l      #3,d0
[0002a48e] 9081                      sub.l      d1,d0
[0002a490] e788                      lsl.l      #3,d0
[0002a492] 2873 0820                 movea.l    32(a3,d0.l),a4
[0002a496] 240c                      move.l     a4,d2
[0002a498] 6614                      bne.s      $0002A4AE
[0002a49a] 43f9 000b cd49            lea.l      $000BCD49,a1
[0002a4a0] 206a 0014                 movea.l    20(a2),a0
[0002a4a4] 7007                      moveq.l    #7,d0
[0002a4a6] 4eb9 0004 afe0            jsr        $0004AFE0
[0002a4ac] 6010                      bra.s      $0002A4BE
[0002a4ae] 43ec 0016                 lea.l      22(a4),a1
[0002a4b2] 7007                      moveq.l    #7,d0
[0002a4b4] 206a 0014                 movea.l    20(a2),a0
[0002a4b8] 4eb9 0004 afe0            jsr        $0004AFE0
[0002a4be] 3203                      move.w     d3,d1
[0002a4c0] e241                      asr.w      #1,d1
[0002a4c2] 48c1                      ext.l      d1
[0002a4c4] 2001                      move.l     d1,d0
[0002a4c6] e788                      lsl.l      #3,d0
[0002a4c8] 9081                      sub.l      d1,d0
[0002a4ca] e788                      lsl.l      #3,d0
[0002a4cc] 2873 0800                 movea.l    0(a3,d0.l),a4
[0002a4d0] 240c                      move.l     a4,d2
[0002a4d2] 6614                      bne.s      $0002A4E8
[0002a4d4] 43f9 000b cd49            lea.l      $000BCD49,a1
[0002a4da] 206a 0014                 movea.l    20(a2),a0
[0002a4de] 7009                      moveq.l    #9,d0
[0002a4e0] 4eb9 0004 afe0            jsr        $0004AFE0
[0002a4e6] 6010                      bra.s      $0002A4F8
[0002a4e8] 43ec 0016                 lea.l      22(a4),a1
[0002a4ec] 7009                      moveq.l    #9,d0
[0002a4ee] 206a 0014                 movea.l    20(a2),a0
[0002a4f2] 4eb9 0004 afe0            jsr        $0004AFE0
[0002a4f8] 204a                      movea.l    a2,a0
[0002a4fa] 4eb9 0005 1292            jsr        $00051292
[0002a500] 3600                      move.w     d0,d3
[0002a502] 204a                      movea.l    a2,a0
[0002a504] 4eb9 0005 0330            jsr        $00050330
[0002a50a] 3003                      move.w     d3,d0
[0002a50c] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0002a510] 4e75                      rts
try_click:
[0002a512] 48e7 0038                 movem.l    a2-a4,-(a7)
[0002a516] 45f9 0010 1f12            lea.l      ACSblk,a2
[0002a51c] 2052                      movea.l    (a2),a0
[0002a51e] 2668 0258                 movea.l    600(a0),a3
[0002a522] 2868 025c                 movea.l    604(a0),a4
[0002a526] 3028 0260                 move.w     608(a0),d0
[0002a52a] 204b                      movea.l    a3,a0
[0002a52c] 6100 fefa                 bsr        $0002A428
[0002a530] b07c 000a                 cmp.w      #$000A,d0
[0002a534] 671c                      beq.s      $0002A552
[0002a536] b9eb 0014                 cmpa.l     20(a3),a4
[0002a53a] 6706                      beq.s      $0002A542
[0002a53c] b9eb 005e                 cmpa.l     94(a3),a4
[0002a540] 6608                      bne.s      $0002A54A
[0002a542] 4eb9 0002 d91e            jsr        $0002D91E
[0002a548] 6008                      bra.s      $0002A552
[0002a54a] 2052                      movea.l    (a2),a0
[0002a54c] 317c 0001 0268            move.w     #$0001,616(a0)
[0002a552] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0002a556] 4e75                      rts
try_drag:
[0002a558] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0002a55c] 2079 0010 1f12            movea.l    ACSblk,a0
[0002a562] 2268 0258                 movea.l    600(a0),a1
[0002a566] 2651                      movea.l    (a1),a3
[0002a568] 3628 0260                 move.w     608(a0),d3
[0002a56c] 41f9 000b cc00            lea.l      $000BCC00,a0
[0002a572] 2279 000b cc08            movea.l    $000BCC08,a1
[0002a578] 4e91                      jsr        (a1)
[0002a57a] 2448                      movea.l    a0,a2
[0002a57c] 200a                      move.l     a2,d0
[0002a57e] 6700 00e0                 beq        $0002A660
[0002a582] 705c                      moveq.l    #92,d0
[0002a584] 2253                      movea.l    (a3),a1
[0002a586] 2069 0008                 movea.l    8(a1),a0
[0002a58a] 4eb9 0007 68e2            jsr        $000768E2
[0002a590] 2248                      movea.l    a0,a1
[0002a592] 5249                      addq.w     #1,a1
[0002a594] 7003                      moveq.l    #3,d0
[0002a596] 206a 0014                 movea.l    20(a2),a0
[0002a59a] 4eb9 0004 afe0            jsr        $0004AFE0
[0002a5a0] 226b 0004                 movea.l    4(a3),a1
[0002a5a4] 43e9 0016                 lea.l      22(a1),a1
[0002a5a8] 7005                      moveq.l    #5,d0
[0002a5aa] 206a 0014                 movea.l    20(a2),a0
[0002a5ae] 4eb9 0004 afe0            jsr        $0004AFE0
[0002a5b4] 206b 0004                 movea.l    4(a3),a0
[0002a5b8] 2668 0004                 movea.l    4(a0),a3
[0002a5bc] 3203                      move.w     d3,d1
[0002a5be] e241                      asr.w      #1,d1
[0002a5c0] 48c1                      ext.l      d1
[0002a5c2] 2001                      move.l     d1,d0
[0002a5c4] e788                      lsl.l      #3,d0
[0002a5c6] 9081                      sub.l      d1,d0
[0002a5c8] e788                      lsl.l      #3,d0
[0002a5ca] 2873 0824                 movea.l    36(a3,d0.l),a4
[0002a5ce] 240c                      move.l     a4,d2
[0002a5d0] 6614                      bne.s      $0002A5E6
[0002a5d2] 43f9 000b cd49            lea.l      $000BCD49,a1
[0002a5d8] 206a 0014                 movea.l    20(a2),a0
[0002a5dc] 7007                      moveq.l    #7,d0
[0002a5de] 4eb9 0004 afe0            jsr        $0004AFE0
[0002a5e4] 6010                      bra.s      $0002A5F6
[0002a5e6] 43ec 0016                 lea.l      22(a4),a1
[0002a5ea] 7007                      moveq.l    #7,d0
[0002a5ec] 206a 0014                 movea.l    20(a2),a0
[0002a5f0] 4eb9 0004 afe0            jsr        $0004AFE0
[0002a5f6] 3203                      move.w     d3,d1
[0002a5f8] e241                      asr.w      #1,d1
[0002a5fa] 48c1                      ext.l      d1
[0002a5fc] 2001                      move.l     d1,d0
[0002a5fe] e788                      lsl.l      #3,d0
[0002a600] 9081                      sub.l      d1,d0
[0002a602] e788                      lsl.l      #3,d0
[0002a604] 2873 0800                 movea.l    0(a3,d0.l),a4
[0002a608] 240c                      move.l     a4,d2
[0002a60a] 6614                      bne.s      $0002A620
[0002a60c] 43f9 000b cd49            lea.l      $000BCD49,a1
[0002a612] 206a 0014                 movea.l    20(a2),a0
[0002a616] 7009                      moveq.l    #9,d0
[0002a618] 4eb9 0004 afe0            jsr        $0004AFE0
[0002a61e] 6010                      bra.s      $0002A630
[0002a620] 43ec 0016                 lea.l      22(a4),a1
[0002a624] 7009                      moveq.l    #9,d0
[0002a626] 206a 0014                 movea.l    20(a2),a0
[0002a62a] 4eb9 0004 afe0            jsr        $0004AFE0
[0002a630] 204a                      movea.l    a2,a0
[0002a632] 4eb9 0005 1292            jsr        $00051292
[0002a638] 3600                      move.w     d0,d3
[0002a63a] 204a                      movea.l    a2,a0
[0002a63c] 4eb9 0005 0330            jsr        $00050330
[0002a642] b67c 000a                 cmp.w      #$000A,d3
[0002a646] 6612                      bne.s      $0002A65A
[0002a648] 2079 0010 1f12            movea.l    ACSblk,a0
[0002a64e] 4268 024a                 clr.w      586(a0)
[0002a652] 4eb9 0004 4a26            jsr        $00044A26
[0002a658] 6006                      bra.s      $0002A660
[0002a65a] 4eb9 0002 d91e            jsr        $0002D91E
[0002a660] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0002a664] 4e75                      rts
fix_cicon:
[0002a666] 48e7 0038                 movem.l    a2-a4,-(a7)
[0002a66a] 2648                      movea.l    a0,a3
[0002a66c] 7052                      moveq.l    #82,d0
[0002a66e] 4eb9 0004 7cc8            jsr        Ax_malloc
[0002a674] 2448                      movea.l    a0,a2
[0002a676] 200a                      move.l     a2,d0
[0002a678] 6700 008a                 beq        $0002A704
[0002a67c] 224b                      movea.l    a3,a1
[0002a67e] 7052                      moveq.l    #82,d0
[0002a680] 4eb9 0007 6f44            jsr        $00076F44
[0002a686] 200b                      move.l     a3,d0
[0002a688] d192                      add.l      d0,(a2)
[0002a68a] d1aa 0004                 add.l      d0,4(a2)
[0002a68e] 206a 0008                 movea.l    8(a2),a0
[0002a692] 2068 0004                 movea.l    4(a0),a0
[0002a696] 4eb9 0004 36d6            jsr        Ast_create
[0002a69c] 2548 0008                 move.l     a0,8(a2)
[0002a6a0] 99cc                      suba.l     a4,a4
[0002a6a2] 302b 0026                 move.w     38(a3),d0
[0002a6a6] 6712                      beq.s      $0002A6BA
[0002a6a8] 2279 0010 1f12            movea.l    ACSblk,a1
[0002a6ae] 0c69 0004 001c            cmpi.w     #$0004,28(a1)
[0002a6b4] 6d04                      blt.s      $0002A6BA
[0002a6b6] 49ea 0026                 lea.l      38(a2),a4
[0002a6ba] 302b 003c                 move.w     60(a3),d0
[0002a6be] 6712                      beq.s      $0002A6D2
[0002a6c0] 2079 0010 1f12            movea.l    ACSblk,a0
[0002a6c6] 0c68 0008 001c            cmpi.w     #$0008,28(a0)
[0002a6cc] 6d04                      blt.s      $0002A6D2
[0002a6ce] 49ea 003c                 lea.l      60(a2),a4
[0002a6d2] 254c 0022                 move.l     a4,34(a2)
[0002a6d6] 200c                      move.l     a4,d0
[0002a6d8] 6772                      beq.s      $0002A74C
[0002a6da] 206c 0006                 movea.l    6(a4),a0
[0002a6de] 2968 0004 0006            move.l     4(a0),6(a4)
[0002a6e4] 2f0a                      move.l     a2,-(a7)
[0002a6e6] 3014                      move.w     (a4),d0
[0002a6e8] 226c 0006                 movea.l    6(a4),a1
[0002a6ec] 206c 0002                 movea.l    2(a4),a0
[0002a6f0] 2068 0004                 movea.l    4(a0),a0
[0002a6f4] 4eb9 0001 4a3e            jsr        $00014A3E
[0002a6fa] 584f                      addq.w     #4,a7
[0002a6fc] 2948 0002                 move.l     a0,2(a4)
[0002a700] 2008                      move.l     a0,d0
[0002a702] 6604                      bne.s      $0002A708
[0002a704] 91c8                      suba.l     a0,a0
[0002a706] 6046                      bra.s      $0002A74E
[0002a708] 202c 000a                 move.l     10(a4),d0
[0002a70c] 6734                      beq.s      $0002A742
[0002a70e] 2f0a                      move.l     a2,-(a7)
[0002a710] 3014                      move.w     (a4),d0
[0002a712] 206c 000e                 movea.l    14(a4),a0
[0002a716] 2268 0004                 movea.l    4(a0),a1
[0002a71a] 266c 000a                 movea.l    10(a4),a3
[0002a71e] 206b 0004                 movea.l    4(a3),a0
[0002a722] 4eb9 0001 4a3e            jsr        $00014A3E
[0002a728] 584f                      addq.w     #4,a7
[0002a72a] 2948 000a                 move.l     a0,10(a4)
[0002a72e] 2008                      move.l     a0,d0
[0002a730] 670c                      beq.s      $0002A73E
[0002a732] 226c 000e                 movea.l    14(a4),a1
[0002a736] 2969 0004 000e            move.l     4(a1),14(a4)
[0002a73c] 6004                      bra.s      $0002A742
[0002a73e] 42ac 000e                 clr.l      14(a4)
[0002a742] 2079 0010 1f12            movea.l    ACSblk,a0
[0002a748] 38a8 001c                 move.w     28(a0),(a4)
[0002a74c] 204a                      movea.l    a2,a0
[0002a74e] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0002a752] 4e75                      rts
try:
[0002a754] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0002a758] 4fef ffe4                 lea.l      -28(a7),a7
[0002a75c] 2a48                      movea.l    a0,a5
[0002a75e] 2f49 0018                 move.l     a1,24(a7)
[0002a762] 202d 000e                 move.l     14(a5),d0
[0002a766] 7238                      moveq.l    #56,d1
[0002a768] 4eb9 0007 769e            jsr        $0007769E
[0002a76e] 2600                      move.l     d0,d3
[0002a770] 3203                      move.w     d3,d1
[0002a772] d241                      add.w      d1,d1
[0002a774] 48c1                      ext.l      d1
[0002a776] 2001                      move.l     d1,d0
[0002a778] d080                      add.l      d0,d0
[0002a77a] d081                      add.l      d1,d0
[0002a77c] e788                      lsl.l      #3,d0
[0002a77e] 4eb9 0004 7cc8            jsr        Ax_malloc
[0002a784] 2448                      movea.l    a0,a2
[0002a786] 2e88                      move.l     a0,(a7)
[0002a788] 200a                      move.l     a2,d0
[0002a78a] 6700 01c4                 beq        $0002A950
[0002a78e] 4eb9 0004 4a26            jsr        $00044A26
[0002a794] 226f 0018                 movea.l    24(a7),a1
[0002a798] 204d                      movea.l    a5,a0
[0002a79a] 4eb9 0002 b1f0            jsr        $0002B1F0
[0002a7a0] 2f6d 0004 000a            move.l     4(a5),10(a7)
[0002a7a6] 4244                      clr.w      d4
[0002a7a8] 6000 01be                 bra        $0002A968
[0002a7ac] 7030                      moveq.l    #48,d0
[0002a7ae] 226f 000a                 movea.l    10(a7),a1
[0002a7b2] 5049                      addq.w     #8,a1
[0002a7b4] 204a                      movea.l    a2,a0
[0002a7b6] 4eb9 0007 6f44            jsr        $00076F44
[0002a7bc] 026a dfff 000a            andi.w     #$DFFF,10(a2)
[0002a7c2] 3012                      move.w     (a2),d0
[0002a7c4] 6b02                      bmi.s      $0002A7C8
[0002a7c6] e3d2                      lsl.w      (a2)
[0002a7c8] 302a 0002                 move.w     2(a2),d0
[0002a7cc] 6b04                      bmi.s      $0002A7D2
[0002a7ce] e3ea 0002                 lsl.w      2(a2)
[0002a7d2] 302a 0004                 move.w     4(a2),d0
[0002a7d6] 6b04                      bmi.s      $0002A7DC
[0002a7d8] e3ea 0004                 lsl.w      4(a2)
[0002a7dc] 47ea 0018                 lea.l      24(a2),a3
[0002a7e0] 26bc 0002 a512            move.l     #$0002A512,(a3)
[0002a7e6] 277c 0002 a558 0004       move.l     #$0002A558,4(a3)
[0002a7ee] 102a 0007                 move.b     7(a2),d0
[0002a7f2] 4880                      ext.w      d0
[0002a7f4] 907c 0015                 sub.w      #$0015,d0
[0002a7f8] b07c 000c                 cmp.w      #$000C,d0
[0002a7fc] 6200 015c                 bhi        $0002A95A
[0002a800] d040                      add.w      d0,d0
[0002a802] 303b 0006                 move.w     $0002A80A(pc,d0.w),d0
[0002a806] 4efb 0002                 jmp        $0002A80A(pc,d0.w)
J16:
[0002a80a] 001a                      dc.w $001a   ; $0002a824-$0002a80a
[0002a80c] 001a                      dc.w $001a   ; $0002a824-$0002a80a
[0002a80e] 0092                      dc.w $0092   ; $0002a89c-$0002a80a
[0002a810] 00c4                      dc.w $00c4   ; $0002a8ce-$0002a80a
[0002a812] 0150                      dc.w $0150   ; $0002a95a-$0002a80a
[0002a814] 011e                      dc.w $011e   ; $0002a928-$0002a80a
[0002a816] 0150                      dc.w $0150   ; $0002a95a-$0002a80a
[0002a818] 011e                      dc.w $011e   ; $0002a928-$0002a80a
[0002a81a] 001a                      dc.w $001a   ; $0002a824-$0002a80a
[0002a81c] 001a                      dc.w $001a   ; $0002a824-$0002a80a
[0002a81e] 0132                      dc.w $0132   ; $0002a93c-$0002a80a
[0002a820] 011e                      dc.w $011e   ; $0002a928-$0002a80a
[0002a822] 0132                      dc.w $0132   ; $0002a93c-$0002a80a
[0002a824] 286a 000c                 movea.l    12(a2),a4
[0002a828] 701c                      moveq.l    #28,d0
[0002a82a] 4eb9 0004 7cc8            jsr        Ax_malloc
[0002a830] 2a48                      movea.l    a0,a5
[0002a832] 200d                      move.l     a5,d0
[0002a834] 6700 011a                 beq        $0002A950
[0002a838] 226c 0004                 movea.l    4(a4),a1
[0002a83c] 701c                      moveq.l    #28,d0
[0002a83e] 4eb9 0007 6f44            jsr        $00076F44
[0002a844] 2055                      movea.l    (a5),a0
[0002a846] 2068 0004                 movea.l    4(a0),a0
[0002a84a] 4eb9 0004 36d6            jsr        Ast_create
[0002a850] 2a88                      move.l     a0,(a5)
[0002a852] 226d 0004                 movea.l    4(a5),a1
[0002a856] 2069 0004                 movea.l    4(a1),a0
[0002a85a] 4eb9 0004 36d6            jsr        Ast_create
[0002a860] 2b48 0004                 move.l     a0,4(a5)
[0002a864] 226d 0008                 movea.l    8(a5),a1
[0002a868] 2069 0004                 movea.l    4(a1),a0
[0002a86c] 4eb9 0004 36d6            jsr        Ast_create
[0002a872] 2b48 0008                 move.l     a0,8(a5)
[0002a876] 2055                      movea.l    (a5),a0
[0002a878] 4eb9 0007 69b0            jsr        $000769B0
[0002a87e] 5240                      addq.w     #1,d0
[0002a880] 3b40 0018                 move.w     d0,24(a5)
[0002a884] 206d 0004                 movea.l    4(a5),a0
[0002a888] 4eb9 0007 69b0            jsr        $000769B0
[0002a88e] 5240                      addq.w     #1,d0
[0002a890] 3b40 001a                 move.w     d0,26(a5)
[0002a894] 254d 000c                 move.l     a5,12(a2)
[0002a898] 6000 00c0                 bra        $0002A95A
[0002a89c] 286a 000c                 movea.l    12(a2),a4
[0002a8a0] 700e                      moveq.l    #14,d0
[0002a8a2] 4eb9 0004 7cc8            jsr        Ax_malloc
[0002a8a8] 2a48                      movea.l    a0,a5
[0002a8aa] 200d                      move.l     a5,d0
[0002a8ac] 6700 00a2                 beq        $0002A950
[0002a8b0] 226c 0004                 movea.l    4(a4),a1
[0002a8b4] 700e                      moveq.l    #14,d0
[0002a8b6] 4eb9 0007 6f44            jsr        $00076F44
[0002a8bc] 206c 0004                 movea.l    4(a4),a0
[0002a8c0] 41e8 000e                 lea.l      14(a0),a0
[0002a8c4] 2a88                      move.l     a0,(a5)
[0002a8c6] 254d 000c                 move.l     a5,12(a2)
[0002a8ca] 6000 008e                 bra        $0002A95A
[0002a8ce] 286a 000c                 movea.l    12(a2),a4
[0002a8d2] 7020                      moveq.l    #32,d0
[0002a8d4] 4eb9 0004 7cc8            jsr        Ax_malloc
[0002a8da] 2a48                      movea.l    a0,a5
[0002a8dc] 200d                      move.l     a5,d0
[0002a8de] 6770                      beq.s      $0002A950
[0002a8e0] 224d                      movea.l    a5,a1
[0002a8e2] 204c                      movea.l    a4,a0
[0002a8e4] 4eb9 0002 b184            jsr        $0002B184
[0002a8ea] 254d 000c                 move.l     a5,12(a2)
[0002a8ee] 202d 0008                 move.l     8(a5),d0
[0002a8f2] 6766                      beq.s      $0002A95A
[0002a8f4] 3f7c 0001 0008            move.w     #$0001,8(a7)
[0002a8fa] 43ef 0008                 lea.l      8(a7),a1
[0002a8fe] 204a                      movea.l    a2,a0
[0002a900] 2640                      movea.l    d0,a3
[0002a902] 7001                      moveq.l    #1,d0
[0002a904] 4e93                      jsr        (a3)
[0002a906] 2f6f 0018 000e            move.l     24(a7),14(a7)
[0002a90c] 2f4a 0012                 move.l     a2,18(a7)
[0002a910] 3004                      move.w     d4,d0
[0002a912] d040                      add.w      d0,d0
[0002a914] 3f40 0016                 move.w     d0,22(a7)
[0002a918] 43ef 000e                 lea.l      14(a7),a1
[0002a91c] 204a                      movea.l    a2,a0
[0002a91e] 266d 0008                 movea.l    8(a5),a3
[0002a922] 7009                      moveq.l    #9,d0
[0002a924] 4e93                      jsr        (a3)
[0002a926] 6032                      bra.s      $0002A95A
[0002a928] 286a 000c                 movea.l    12(a2),a4
[0002a92c] 206c 0004                 movea.l    4(a4),a0
[0002a930] 4eb9 0004 36d6            jsr        Ast_create
[0002a936] 2548 000c                 move.l     a0,12(a2)
[0002a93a] 601e                      bra.s      $0002A95A
[0002a93c] 286a 000c                 movea.l    12(a2),a4
[0002a940] 206c 0004                 movea.l    4(a4),a0
[0002a944] 6100 fd20                 bsr        $0002A666
[0002a948] 2f48 0004                 move.l     a0,4(a7)
[0002a94c] 2008                      move.l     a0,d0
[0002a94e] 6604                      bne.s      $0002A954
[0002a950] 91c8                      suba.l     a0,a0
[0002a952] 602e                      bra.s      $0002A982
[0002a954] 256f 0004 000c            move.l     4(a7),12(a2)
[0002a95a] 45ea 0030                 lea.l      48(a2),a2
[0002a95e] 06af 0000 0038 000a       addi.l     #$00000038,10(a7)
[0002a966] 5244                      addq.w     #1,d4
[0002a968] b644                      cmp.w      d4,d3
[0002a96a] 6e00 fe40                 bgt        $0002A7AC
[0002a96e] 45ea ffe8                 lea.l      -24(a2),a2
[0002a972] 006a 0020 0008            ori.w      #$0020,8(a2)
[0002a978] 2057                      movea.l    (a7),a0
[0002a97a] 4eb9 0004 a25e            jsr        $0004A25E
[0002a980] 2057                      movea.l    (a7),a0
[0002a982] 4fef 001c                 lea.l      28(a7),a7
[0002a986] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0002a98a] 4e75                      rts
eded_try:
[0002a98c] 48e7 003c                 movem.l    a2-a5,-(a7)
[0002a990] 514f                      subq.w     #8,a7
[0002a992] 2079 0010 1f12            movea.l    ACSblk,a0
[0002a998] 2468 0258                 movea.l    600(a0),a2
[0002a99c] 2a52                      movea.l    (a2),a5
[0002a99e] 2f55 0004                 move.l     (a5),4(a7)
[0002a9a2] 286d 0004                 movea.l    4(a5),a4
[0002a9a6] 224a                      movea.l    a2,a1
[0002a9a8] 206d 0004                 movea.l    4(a5),a0
[0002a9ac] 6100 fda6                 bsr        $0002A754
[0002a9b0] 2a48                      movea.l    a0,a5
[0002a9b2] 200d                      move.l     a5,d0
[0002a9b4] 6700 011c                 beq        $0002AAD2
[0002a9b8] 43ec 0016                 lea.l      22(a4),a1
[0002a9bc] 206f 0004                 movea.l    4(a7),a0
[0002a9c0] 2068 0018                 movea.l    24(a0),a0
[0002a9c4] 4eb9 0003 1a5c            jsr        $00031A5C
[0002a9ca] b9c8                      cmpa.l     a0,a4
[0002a9cc] 666e                      bne.s      $0002AA3C
[0002a9ce] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0002a9d4] 486f 0006                 pea.l      6(a7)
[0002a9d8] 486f 0008                 pea.l      8(a7)
[0002a9dc] 43ef 000c                 lea.l      12(a7),a1
[0002a9e0] 41ef 000c                 lea.l      12(a7),a0
[0002a9e4] 4eb9 0006 c978            jsr        $0006C978
[0002a9ea] 4fef 000c                 lea.l      12(a7),a7
[0002a9ee] 7004                      moveq.l    #4,d0
[0002a9f0] c06f 0002                 and.w      2(a7),d0
[0002a9f4] 671c                      beq.s      $0002AA12
[0002a9f6] 204a                      movea.l    a2,a0
[0002a9f8] 226a 0010                 movea.l    16(a2),a1
[0002a9fc] 4e91                      jsr        (a1)
[0002a9fe] 204d                      movea.l    a5,a0
[0002aa00] 4eb9 0005 f8ee            jsr        $0005F8EE
[0002aa06] 204d                      movea.l    a5,a0
[0002aa08] 4eb9 0004 9b7c            jsr        $00049B7C
[0002aa0e] 6000 00c2                 bra        $0002AAD2
[0002aa12] 42a7                      clr.l      -(a7)
[0002aa14] 42a7                      clr.l      -(a7)
[0002aa16] 42a7                      clr.l      -(a7)
[0002aa18] 4879 0004 9b7c            pea.l      $00049B7C
[0002aa1e] 4879 0002 d91e            pea.l      $0002D91E
[0002aa24] 4879 000b 89cb            pea.l      $000B89CB
[0002aa2a] 224d                      movea.l    a5,a1
[0002aa2c] 204a                      movea.l    a2,a0
[0002aa2e] 4eb9 0002 db2a            jsr        $0002DB2A
[0002aa34] 4fef 0018                 lea.l      24(a7),a7
[0002aa38] 6000 0098                 bra        $0002AAD2
[0002aa3c] 43ec 0016                 lea.l      22(a4),a1
[0002aa40] 206f 0004                 movea.l    4(a7),a0
[0002aa44] 2068 001c                 movea.l    28(a0),a0
[0002aa48] 4eb9 0003 1a5c            jsr        $00031A5C
[0002aa4e] b9c8                      cmpa.l     a0,a4
[0002aa50] 6648                      bne.s      $0002AA9A
[0002aa52] 41f9 000b c57c            lea.l      $000BC57C,a0
[0002aa58] 4eb9 0004 9a5c            jsr        $00049A5C
[0002aa5e] 2648                      movea.l    a0,a3
[0002aa60] 376a 0038 0014            move.w     56(a2),20(a3)
[0002aa66] 376a 003a 0016            move.w     58(a2),22(a3)
[0002aa6c] 006b 8000 000a            ori.w      #$8000,10(a3)
[0002aa72] 42a7                      clr.l      -(a7)
[0002aa74] 42a7                      clr.l      -(a7)
[0002aa76] 2f0d                      move.l     a5,-(a7)
[0002aa78] 4879 0004 9b7c            pea.l      $00049B7C
[0002aa7e] 4879 0002 d91e            pea.l      $0002D91E
[0002aa84] 4879 000b 89cb            pea.l      $000B89CB
[0002aa8a] 224b                      movea.l    a3,a1
[0002aa8c] 204a                      movea.l    a2,a0
[0002aa8e] 4eb9 0002 db2a            jsr        $0002DB2A
[0002aa94] 4fef 0018                 lea.l      24(a7),a7
[0002aa98] 6038                      bra.s      $0002AAD2
[0002aa9a] 43ec 0016                 lea.l      22(a4),a1
[0002aa9e] 206f 0004                 movea.l    4(a7),a0
[0002aaa2] 2068 0020                 movea.l    32(a0),a0
[0002aaa6] 4eb9 0003 1a5c            jsr        $00031A5C
[0002aaac] b9c8                      cmpa.l     a0,a4
[0002aaae] 6622                      bne.s      $0002AAD2
[0002aab0] 204a                      movea.l    a2,a0
[0002aab2] 226a 0010                 movea.l    16(a2),a1
[0002aab6] 4e91                      jsr        (a1)
[0002aab8] 4eb9 0004 9940            jsr        $00049940
[0002aabe] 72ff                      moveq.l    #-1,d1
[0002aac0] 70ff                      moveq.l    #-1,d0
[0002aac2] 224d                      movea.l    a5,a1
[0002aac4] 204a                      movea.l    a2,a0
[0002aac6] 4eb9 0004 948a            jsr        $0004948A
[0002aacc] 4eb9 0004 9902            jsr        $00049902
[0002aad2] 504f                      addq.w     #8,a7
[0002aad4] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0002aad8] 4e75                      rts
ed_init:
[0002aada] 48e7 1e3e                 movem.l    d3-d6/a2-a6,-(a7)
[0002aade] 4fef ffe4                 lea.l      -28(a7),a7
[0002aae2] 2f48 0018                 move.l     a0,24(a7)
[0002aae6] 2279 0010 1f12            movea.l    ACSblk,a1
[0002aaec] 2069 0240                 movea.l    576(a1),a0
[0002aaf0] b1ef 0018                 cmpa.l     24(a7),a0
[0002aaf4] 6606                      bne.s      $0002AAFC
[0002aaf6] 4eb9 0004 4a26            jsr        $00044A26
[0002aafc] 206f 0018                 movea.l    24(a7),a0
[0002ab00] 2f50 000a                 move.l     (a0),10(a7)
[0002ab04] 226f 000a                 movea.l    10(a7),a1
[0002ab08] 2869 0004                 movea.l    4(a1),a4
[0002ab0c] 2f6c 0004 0006            move.l     4(a4),6(a7)
[0002ab12] 202c 000e                 move.l     14(a4),d0
[0002ab16] 7238                      moveq.l    #56,d1
[0002ab18] 4eb9 0007 769e            jsr        $0007769E
[0002ab1e] 2600                      move.l     d0,d3
[0002ab20] 206f 0018                 movea.l    24(a7),a0
[0002ab24] 2a68 0014                 movea.l    20(a0),a5
[0002ab28] 4244                      clr.w      d4
[0002ab2a] 3a04                      move.w     d4,d5
[0002ab2c] 200d                      move.l     a5,d0
[0002ab2e] 6710                      beq.s      $0002AB40
[0002ab30] 3a2d 0010                 move.w     16(a5),d5
[0002ab34] 382d 0012                 move.w     18(a5),d4
[0002ab38] 204d                      movea.l    a5,a0
[0002ab3a] 4eb9 0004 9b7c            jsr        $00049B7C
[0002ab40] 206f 000a                 movea.l    10(a7),a0
[0002ab44] 317c 0001 0008            move.w     #$0001,8(a0)
[0002ab4a] 3203                      move.w     d3,d1
[0002ab4c] d241                      add.w      d1,d1
[0002ab4e] d243                      add.w      d3,d1
[0002ab50] 5241                      addq.w     #1,d1
[0002ab52] 48c1                      ext.l      d1
[0002ab54] 2001                      move.l     d1,d0
[0002ab56] d080                      add.l      d0,d0
[0002ab58] d081                      add.l      d1,d0
[0002ab5a] e788                      lsl.l      #3,d0
[0002ab5c] 4eb9 0004 7cc8            jsr        Ax_malloc
[0002ab62] 2a48                      movea.l    a0,a5
[0002ab64] 226f 0018                 movea.l    24(a7),a1
[0002ab68] 2348 0014                 move.l     a0,20(a1)
[0002ab6c] 200d                      move.l     a5,d0
[0002ab6e] 6700 01b8                 beq        $0002AD28
[0002ab72] 43f9 000b cd2c            lea.l      $000BCD2C,a1
[0002ab78] 204d                      movea.l    a5,a0
[0002ab7a] 7018                      moveq.l    #24,d0
[0002ab7c] 4eb9 0007 6f44            jsr        $00076F44
[0002ab82] 47ed 0018                 lea.l      24(a5),a3
[0002ab86] 23cc 000b cd00            move.l     a4,$000BCD00
[0002ab8c] 4246                      clr.w      d6
[0002ab8e] 6000 024a                 bra        $0002ADDA
[0002ab92] 3006                      move.w     d6,d0
[0002ab94] 48c0                      ext.l      d0
[0002ab96] 23c0 000b cd04            move.l     d0,$000BCD04
[0002ab9c] 43f9 000b ccc4            lea.l      $000BCCC4,a1
[0002aba2] 204b                      movea.l    a3,a0
[0002aba4] 7048                      moveq.l    #72,d0
[0002aba6] 4eb9 0007 6f44            jsr        $00076F44
[0002abac] 7018                      moveq.l    #24,d0
[0002abae] 3406                      move.w     d6,d2
[0002abb0] 48c2                      ext.l      d2
[0002abb2] 2202                      move.l     d2,d1
[0002abb4] e789                      lsl.l      #3,d1
[0002abb6] 9282                      sub.l      d2,d1
[0002abb8] e789                      lsl.l      #3,d1
[0002abba] 226f 0006                 movea.l    6(a7),a1
[0002abbe] 43f1 1808                 lea.l      8(a1,d1.l),a1
[0002abc2] 204b                      movea.l    a3,a0
[0002abc4] 4eb9 0007 6f44            jsr        $00076F44
[0002abca] 102b 0007                 move.b     7(a3),d0
[0002abce] 4880                      ext.w      d0
[0002abd0] 907c 0015                 sub.w      #$0015,d0
[0002abd4] b07c 000c                 cmp.w      #$000C,d0
[0002abd8] 6200 0158                 bhi        $0002AD32
[0002abdc] d040                      add.w      d0,d0
[0002abde] 303b 0006                 move.w     $0002ABE6(pc,d0.w),d0
[0002abe2] 4efb 0002                 jmp        $0002ABE6(pc,d0.w)
J17:
[0002abe6] 001a                      dc.w $001a   ; $0002ac00-$0002abe6
[0002abe8] 001a                      dc.w $001a   ; $0002ac00-$0002abe6
[0002abea] 0092                      dc.w $0092   ; $0002ac78-$0002abe6
[0002abec] 00c4                      dc.w $00c4   ; $0002acaa-$0002abe6
[0002abee] 014c                      dc.w $014c   ; $0002ad32-$0002abe6
[0002abf0] 011e                      dc.w $011e   ; $0002ad04-$0002abe6
[0002abf2] 014c                      dc.w $014c   ; $0002ad32-$0002abe6
[0002abf4] 011e                      dc.w $011e   ; $0002ad04-$0002abe6
[0002abf6] 001a                      dc.w $001a   ; $0002ac00-$0002abe6
[0002abf8] 001a                      dc.w $001a   ; $0002ac00-$0002abe6
[0002abfa] 0132                      dc.w $0132   ; $0002ad18-$0002abe6
[0002abfc] 011e                      dc.w $011e   ; $0002ad04-$0002abe6
[0002abfe] 0132                      dc.w $0132   ; $0002ad18-$0002abe6
[0002ac00] 246b 000c                 movea.l    12(a3),a2
[0002ac04] 701c                      moveq.l    #28,d0
[0002ac06] 4eb9 0004 7cc8            jsr        Ax_malloc
[0002ac0c] 2848                      movea.l    a0,a4
[0002ac0e] 200c                      move.l     a4,d0
[0002ac10] 6700 0116                 beq        $0002AD28
[0002ac14] 226a 0004                 movea.l    4(a2),a1
[0002ac18] 701c                      moveq.l    #28,d0
[0002ac1a] 4eb9 0007 6f44            jsr        $00076F44
[0002ac20] 2054                      movea.l    (a4),a0
[0002ac22] 2068 0004                 movea.l    4(a0),a0
[0002ac26] 4eb9 0004 36d6            jsr        Ast_create
[0002ac2c] 2888                      move.l     a0,(a4)
[0002ac2e] 226c 0004                 movea.l    4(a4),a1
[0002ac32] 2069 0004                 movea.l    4(a1),a0
[0002ac36] 4eb9 0004 36d6            jsr        Ast_create
[0002ac3c] 2948 0004                 move.l     a0,4(a4)
[0002ac40] 226c 0008                 movea.l    8(a4),a1
[0002ac44] 2069 0004                 movea.l    4(a1),a0
[0002ac48] 4eb9 0004 36d6            jsr        Ast_create
[0002ac4e] 2948 0008                 move.l     a0,8(a4)
[0002ac52] 2054                      movea.l    (a4),a0
[0002ac54] 4eb9 0007 69b0            jsr        $000769B0
[0002ac5a] 5240                      addq.w     #1,d0
[0002ac5c] 3940 0018                 move.w     d0,24(a4)
[0002ac60] 206c 0004                 movea.l    4(a4),a0
[0002ac64] 4eb9 0007 69b0            jsr        $000769B0
[0002ac6a] 5240                      addq.w     #1,d0
[0002ac6c] 3940 001a                 move.w     d0,26(a4)
[0002ac70] 274c 000c                 move.l     a4,12(a3)
[0002ac74] 6000 00bc                 bra        $0002AD32
[0002ac78] 246b 000c                 movea.l    12(a3),a2
[0002ac7c] 700e                      moveq.l    #14,d0
[0002ac7e] 4eb9 0004 7cc8            jsr        Ax_malloc
[0002ac84] 2848                      movea.l    a0,a4
[0002ac86] 200c                      move.l     a4,d0
[0002ac88] 6700 009e                 beq        $0002AD28
[0002ac8c] 226a 0004                 movea.l    4(a2),a1
[0002ac90] 700e                      moveq.l    #14,d0
[0002ac92] 4eb9 0007 6f44            jsr        $00076F44
[0002ac98] 206a 0004                 movea.l    4(a2),a0
[0002ac9c] 41e8 000e                 lea.l      14(a0),a0
[0002aca0] 2888                      move.l     a0,(a4)
[0002aca2] 274c 000c                 move.l     a4,12(a3)
[0002aca6] 6000 008a                 bra        $0002AD32
[0002acaa] 246b 000c                 movea.l    12(a3),a2
[0002acae] 7020                      moveq.l    #32,d0
[0002acb0] 4eb9 0004 7cc8            jsr        Ax_malloc
[0002acb6] 2848                      movea.l    a0,a4
[0002acb8] 200c                      move.l     a4,d0
[0002acba] 676c                      beq.s      $0002AD28
[0002acbc] 224c                      movea.l    a4,a1
[0002acbe] 204a                      movea.l    a2,a0
[0002acc0] 4eb9 0002 b184            jsr        $0002B184
[0002acc6] 274c 000c                 move.l     a4,12(a3)
[0002acca] 202c 0008                 move.l     8(a4),d0
[0002acce] 6762                      beq.s      $0002AD32
[0002acd0] 3f7c 0001 0004            move.w     #$0001,4(a7)
[0002acd6] 43ef 0004                 lea.l      4(a7),a1
[0002acda] 204b                      movea.l    a3,a0
[0002acdc] 2c40                      movea.l    d0,a6
[0002acde] 7001                      moveq.l    #1,d0
[0002ace0] 4e96                      jsr        (a6)
[0002ace2] 2f6f 0018 000e            move.l     24(a7),14(a7)
[0002ace8] 2f4b 0012                 move.l     a3,18(a7)
[0002acec] 3006                      move.w     d6,d0
[0002acee] d040                      add.w      d0,d0
[0002acf0] 3f40 0016                 move.w     d0,22(a7)
[0002acf4] 43ef 000e                 lea.l      14(a7),a1
[0002acf8] 204b                      movea.l    a3,a0
[0002acfa] 2c6c 0008                 movea.l    8(a4),a6
[0002acfe] 7009                      moveq.l    #9,d0
[0002ad00] 4e96                      jsr        (a6)
[0002ad02] 602e                      bra.s      $0002AD32
[0002ad04] 246b 000c                 movea.l    12(a3),a2
[0002ad08] 206a 0004                 movea.l    4(a2),a0
[0002ad0c] 4eb9 0004 36d6            jsr        Ast_create
[0002ad12] 2748 000c                 move.l     a0,12(a3)
[0002ad16] 601a                      bra.s      $0002AD32
[0002ad18] 246b 000c                 movea.l    12(a3),a2
[0002ad1c] 206a 0004                 movea.l    4(a2),a0
[0002ad20] 6100 f944                 bsr        $0002A666
[0002ad24] 2e88                      move.l     a0,(a7)
[0002ad26] 6606                      bne.s      $0002AD2E
[0002ad28] 70ff                      moveq.l    #-1,d0
[0002ad2a] 6000 011a                 bra        $0002AE46
[0002ad2e] 2757 000c                 move.l     (a7),12(a3)
[0002ad32] 3213                      move.w     (a3),d1
[0002ad34] 3001                      move.w     d1,d0
[0002ad36] d040                      add.w      d0,d0
[0002ad38] d041                      add.w      d1,d0
[0002ad3a] 5240                      addq.w     #1,d0
[0002ad3c] 3740 0018                 move.w     d0,24(a3)
[0002ad40] 3413                      move.w     (a3),d2
[0002ad42] 48c2                      ext.l      d2
[0002ad44] 2202                      move.l     d2,d1
[0002ad46] e789                      lsl.l      #3,d1
[0002ad48] 9282                      sub.l      d2,d1
[0002ad4a] e789                      lsl.l      #3,d1
[0002ad4c] 206f 0006                 movea.l    6(a7),a0
[0002ad50] bc70 180c                 cmp.w      12(a0,d1.l),d6
[0002ad54] 6604                      bne.s      $0002AD5A
[0002ad56] 526b 0018                 addq.w     #1,24(a3)
[0002ad5a] 302b 0002                 move.w     2(a3),d0
[0002ad5e] 6b26                      bmi.s      $0002AD86
[0002ad60] 3200                      move.w     d0,d1
[0002ad62] d241                      add.w      d1,d1
[0002ad64] d240                      add.w      d0,d1
[0002ad66] 5241                      addq.w     #1,d1
[0002ad68] 3741 001a                 move.w     d1,26(a3)
[0002ad6c] 342b 0004                 move.w     4(a3),d2
[0002ad70] 3002                      move.w     d2,d0
[0002ad72] d040                      add.w      d0,d0
[0002ad74] d042                      add.w      d2,d0
[0002ad76] 5440                      addq.w     #2,d0
[0002ad78] 3740 001c                 move.w     d0,28(a3)
[0002ad7c] 72ff                      moveq.l    #-1,d1
[0002ad7e] 3741 0004                 move.w     d1,4(a3)
[0002ad82] 3741 0002                 move.w     d1,2(a3)
[0002ad86] 3006                      move.w     d6,d0
[0002ad88] d040                      add.w      d0,d0
[0002ad8a] d046                      add.w      d6,d0
[0002ad8c] 5440                      addq.w     #2,d0
[0002ad8e] 3680                      move.w     d0,(a3)
[0002ad90] 376b 0010 0028            move.w     16(a3),40(a3)
[0002ad96] 376b 0012 002a            move.w     18(a3),42(a3)
[0002ad9c] 376b 0014 002c            move.w     20(a3),44(a3)
[0002ada2] 376b 0016 002e            move.w     22(a3),46(a3)
[0002ada8] 323c 0080                 move.w     #$0080,d1
[0002adac] c26b 0008                 and.w      8(a3),d1
[0002adb0] 6706                      beq.s      $0002ADB8
[0002adb2] 006b 0080 0020            ori.w      #$0080,32(a3)
[0002adb8] 302b 000a                 move.w     10(a3),d0
[0002adbc] c07c 1000                 and.w      #$1000,d0
[0002adc0] 6706                      beq.s      $0002ADC8
[0002adc2] 006b 1000 0022            ori.w      #$1000,34(a3)
[0002adc8] 026b 06d7 0008            andi.w     #$06D7,8(a3)
[0002adce] 026b 0f3f 000a            andi.w     #$0F3F,10(a3)
[0002add4] 5246                      addq.w     #1,d6
[0002add6] 47eb 0048                 lea.l      72(a3),a3
[0002adda] b646                      cmp.w      d6,d3
[0002addc] 6e00 fdb4                 bgt        $0002AB92
[0002ade0] 47eb ffe8                 lea.l      -24(a3),a3
[0002ade4] 006b 0020 0008            ori.w      #$0020,8(a3)
[0002adea] 426d 0030                 clr.w      48(a5)
[0002adee] 302d 0014                 move.w     20(a5),d0
[0002adf2] e240                      asr.w      #1,d0
[0002adf4] 3b40 0028                 move.w     d0,40(a5)
[0002adf8] 3b40 0040                 move.w     d0,64(a5)
[0002adfc] 322d 0016                 move.w     22(a5),d1
[0002ae00] e241                      asr.w      #1,d1
[0002ae02] 3b41 002a                 move.w     d1,42(a5)
[0002ae06] 3b41 0042                 move.w     d1,66(a5)
[0002ae0a] 302d 002c                 move.w     44(a5),d0
[0002ae0e] d16d 0014                 add.w      d0,20(a5)
[0002ae12] 302d 002e                 move.w     46(a5),d0
[0002ae16] d16d 0016                 add.w      d0,22(a5)
[0002ae1a] 206f 000a                 movea.l    10(a7),a0
[0002ae1e] 3028 0018                 move.w     24(a0),d0
[0002ae22] 6b10                      bmi.s      $0002AE34
[0002ae24] 48c0                      ext.l      d0
[0002ae26] 2200                      move.l     d0,d1
[0002ae28] d281                      add.l      d1,d1
[0002ae2a] d280                      add.l      d0,d1
[0002ae2c] e789                      lsl.l      #3,d1
[0002ae2e] 0075 1800 1808            ori.w      #$1800,8(a5,d1.l)
[0002ae34] 204d                      movea.l    a5,a0
[0002ae36] 4eb9 0004 a25e            jsr        $0004A25E
[0002ae3c] 3b45 0010                 move.w     d5,16(a5)
[0002ae40] 3b44 0012                 move.w     d4,18(a5)
[0002ae44] 4240                      clr.w      d0
[0002ae46] 4fef 001c                 lea.l      28(a7),a7
[0002ae4a] 4cdf 7c78                 movem.l    (a7)+,d3-d6/a2-a6
[0002ae4e] 4e75                      rts
ed_service:
[0002ae50] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0002ae54] 2448                      movea.l    a0,a2
[0002ae56] 3600                      move.w     d0,d3
[0002ae58] 2849                      movea.l    a1,a4
[0002ae5a] 2650                      movea.l    (a0),a3
[0002ae5c] b07c 0012                 cmp.w      #$0012,d0
[0002ae60] 6762                      beq.s      $0002AEC4
[0002ae62] 6e32                      bgt.s      $0002AE96
[0002ae64] b07c 000f                 cmp.w      #$000F,d0
[0002ae68] 6200 00ea                 bhi        $0002AF54
[0002ae6c] d040                      add.w      d0,d0
[0002ae6e] 303b 0006                 move.w     $0002AE76(pc,d0.w),d0
[0002ae72] 4efb 0002                 jmp        $0002AE76(pc,d0.w)
J18:
[0002ae76] 00de                      dc.w $00de   ; $0002af54-$0002ae76
[0002ae78] 00ca                      dc.w $00ca   ; $0002af40-$0002ae76
[0002ae7a] 00a0                      dc.w $00a0   ; $0002af16-$0002ae76
[0002ae7c] 00aa                      dc.w $00aa   ; $0002af20-$0002ae76
[0002ae7e] 00de                      dc.w $00de   ; $0002af54-$0002ae76
[0002ae80] 00de                      dc.w $00de   ; $0002af54-$0002ae76
[0002ae82] 00de                      dc.w $00de   ; $0002af54-$0002ae76
[0002ae84] 00de                      dc.w $00de   ; $0002af54-$0002ae76
[0002ae86] 00de                      dc.w $00de   ; $0002af54-$0002ae76
[0002ae88] 00de                      dc.w $00de   ; $0002af54-$0002ae76
[0002ae8a] 00de                      dc.w $00de   ; $0002af54-$0002ae76
[0002ae8c] 00c0                      dc.w $00c0   ; $0002af36-$0002ae76
[0002ae8e] 00de                      dc.w $00de   ; $0002af54-$0002ae76
[0002ae90] 00de                      dc.w $00de   ; $0002af54-$0002ae76
[0002ae92] 00de                      dc.w $00de   ; $0002af54-$0002ae76
[0002ae94] 00d2                      dc.w $00d2   ; $0002af48-$0002ae76
[0002ae96] 907c                      dc.w $907c   ; $00023ef2-$0002ae76
[0002ae98] 0024                      dc.w $0024   ; $0002ae9a-$0002ae76
[0002ae9a] 6720                      beq.s      $0002AEBC
[0002ae9c] 5340                      subq.w     #1,d0
[0002ae9e] 6714                      beq.s      $0002AEB4
[0002aea0] 907c 03d2                 sub.w      #$03D2,d0
[0002aea4] 6700 00aa                 beq        $0002AF50
[0002aea8] 907c 2319                 sub.w      #$2319,d0
[0002aeac] 6700 007a                 beq.w      $0002AF28
[0002aeb0] 6000 00a2                 bra        $0002AF54
[0002aeb4] 42ac 0002                 clr.l      2(a4)
[0002aeb8] 6000 00a8                 bra        $0002AF62
[0002aebc] 38bc 0001                 move.w     #$0001,(a4)
[0002aec0] 6000 00a0                 bra        $0002AF62
[0002aec4] 204c                      movea.l    a4,a0
[0002aec6] 3039 0007 824a            move.w     $0007824A,d0
[0002aecc] 6716                      beq.s      $0002AEE4
[0002aece] 2279 0010 1f12            movea.l    ACSblk,a1
[0002aed4] 30a9 0012                 move.w     18(a1),(a0)
[0002aed8] 2279 0010 1f12            movea.l    ACSblk,a1
[0002aede] 3169 0014 0002            move.w     20(a1),2(a0)
[0002aee4] 317c 0003 000c            move.w     #$0003,12(a0)
[0002aeea] 317c 000b 000e            move.w     #$000B,14(a0)
[0002aef0] 317c 0003 0010            move.w     #$0003,16(a0)
[0002aef6] 317c 000c 0012            move.w     #$000C,18(a0)
[0002aefc] 317c 0003 0014            move.w     #$0003,20(a0)
[0002af02] 317c 000b 0016            move.w     #$000B,22(a0)
[0002af08] 317c 0003 0018            move.w     #$0003,24(a0)
[0002af0e] 317c 000c 001a            move.w     #$000C,26(a0)
[0002af14] 604c                      bra.s      $0002AF62
[0002af16] 204a                      movea.l    a2,a0
[0002af18] 4eb9 0002 af6a            jsr        $0002AF6A
[0002af1e] 6042                      bra.s      $0002AF62
[0002af20] 204a                      movea.l    a2,a0
[0002af22] 6100 f196                 bsr        $0002A0BA
[0002af26] 603a                      bra.s      $0002AF62
[0002af28] 226b 0004                 movea.l    4(a3),a1
[0002af2c] 204a                      movea.l    a2,a0
[0002af2e] 4eb9 0001 45a2            jsr        $000145A2
[0002af34] 602c                      bra.s      $0002AF62
[0002af36] 204a                      movea.l    a2,a0
[0002af38] 4eb9 0002 c0f8            jsr        $0002C0F8
[0002af3e] 6022                      bra.s      $0002AF62
[0002af40] 4279 000b cca2            clr.w      $000BCCA2
[0002af46] 601a                      bra.s      $0002AF62
[0002af48] 204a                      movea.l    a2,a0
[0002af4a] 6100 f33e                 bsr        $0002A28A
[0002af4e] 6012                      bra.s      $0002AF62
[0002af50] 288a                      move.l     a2,(a4)
[0002af52] 600e                      bra.s      $0002AF62
[0002af54] 224c                      movea.l    a4,a1
[0002af56] 3003                      move.w     d3,d0
[0002af58] 204a                      movea.l    a2,a0
[0002af5a] 4eb9 0005 1276            jsr        $00051276
[0002af60] 6002                      bra.s      $0002AF64
[0002af62] 7001                      moveq.l    #1,d0
[0002af64] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0002af68] 4e75                      rts
ed_term:
[0002af6a] 2f0a                      move.l     a2,-(a7)
[0002af6c] 2f0b                      move.l     a3,-(a7)
[0002af6e] 2448                      movea.l    a0,a2
[0002af70] 2650                      movea.l    (a0),a3
[0002af72] 006a 0100 0056            ori.w      #$0100,86(a2)
[0002af78] 200b                      move.l     a3,d0
[0002af7a] 6772                      beq.s      $0002AFEE
[0002af7c] 0c6b 0002 0008            cmpi.w     #$0002,8(a3)
[0002af82] 6610                      bne.s      $0002AF94
[0002af84] 2279 0010 1f12            movea.l    ACSblk,a1
[0002af8a] 2348 0258                 move.l     a0,600(a1)
[0002af8e] 206b 001a                 movea.l    26(a3),a0
[0002af92] 4e90                      jsr        (a0)
[0002af94] 206b 001e                 movea.l    30(a3),a0
[0002af98] 4eb9 0004 7e26            jsr        $00047E26
[0002af9e] 224a                      movea.l    a2,a1
[0002afa0] 206b 0004                 movea.l    4(a3),a0
[0002afa4] 4eb9 0002 b1f0            jsr        $0002B1F0
[0002afaa] 302a 0056                 move.w     86(a2),d0
[0002afae] c07c 0800                 and.w      #$0800,d0
[0002afb2] 6716                      beq.s      $0002AFCA
[0002afb4] 43ea 002c                 lea.l      44(a2),a1
[0002afb8] 206b 0004                 movea.l    4(a3),a0
[0002afbc] 41e8 003a                 lea.l      58(a0),a0
[0002afc0] 7008                      moveq.l    #8,d0
[0002afc2] 4eb9 0007 6f44            jsr        $00076F44
[0002afc8] 6014                      bra.s      $0002AFDE
[0002afca] 7008                      moveq.l    #8,d0
[0002afcc] 43ea 0024                 lea.l      36(a2),a1
[0002afd0] 206b 0004                 movea.l    4(a3),a0
[0002afd4] 41e8 003a                 lea.l      58(a0),a0
[0002afd8] 4eb9 0007 6f44            jsr        $00076F44
[0002afde] 206b 0004                 movea.l    4(a3),a0
[0002afe2] 42a8 0012                 clr.l      18(a0)
[0002afe6] 204b                      movea.l    a3,a0
[0002afe8] 4eb9 0004 7e26            jsr        $00047E26
[0002afee] 204a                      movea.l    a2,a0
[0002aff0] 4eb9 0005 0330            jsr        $00050330
[0002aff6] 265f                      movea.l    (a7)+,a3
[0002aff8] 245f                      movea.l    (a7)+,a2
[0002affa] 4e75                      rts
set_userdef:
[0002affc] 2f0a                      move.l     a2,-(a7)
[0002affe] 2f0b                      move.l     a3,-(a7)
[0002b000] 2649                      movea.l    a1,a3
[0002b002] 2468 0004                 movea.l    4(a0),a2
[0002b006] 226a 0004                 movea.l    4(a2),a1
[0002b00a] 43e9 0016                 lea.l      22(a1),a1
[0002b00e] 2689                      move.l     a1,(a3)
[0002b010] 226a 0008                 movea.l    8(a2),a1
[0002b014] 43e9 0016                 lea.l      22(a1),a1
[0002b018] 2749 0004                 move.l     a1,4(a3)
[0002b01c] 202a 000c                 move.l     12(a2),d0
[0002b020] 6606                      bne.s      $0002B028
[0002b022] 0268 fffc 0038            andi.w     #$FFFC,56(a0)
[0002b028] 202a 0010                 move.l     16(a2),d0
[0002b02c] 6606                      bne.s      $0002B034
[0002b02e] 0268 fff3 0038            andi.w     #$FFF3,56(a0)
[0002b034] 202a 0014                 move.l     20(a2),d0
[0002b038] 6606                      bne.s      $0002B040
[0002b03a] 0268 ffcf 0038            andi.w     #$FFCF,56(a0)
[0002b040] 7003                      moveq.l    #3,d0
[0002b042] c068 0038                 and.w      56(a0),d0
[0002b046] 3740 0008                 move.w     d0,8(a3)
[0002b04a] 4a40                      tst.w      d0
[0002b04c] 670e                      beq.s      $0002B05C
[0002b04e] 5340                      subq.w     #1,d0
[0002b050] 6710                      beq.s      $0002B062
[0002b052] 5340                      subq.w     #1,d0
[0002b054] 671a                      beq.s      $0002B070
[0002b056] 5340                      subq.w     #1,d0
[0002b058] 6726                      beq.s      $0002B080
[0002b05a] 6038                      bra.s      $0002B094
[0002b05c] 42ab 000a                 clr.l      10(a3)
[0002b060] 6018                      bra.s      $0002B07A
[0002b062] 226a 000c                 movea.l    12(a2),a1
[0002b066] 43e9 0016                 lea.l      22(a1),a1
[0002b06a] 2749 000a                 move.l     a1,10(a3)
[0002b06e] 600a                      bra.s      $0002B07A
[0002b070] 226a 000c                 movea.l    12(a2),a1
[0002b074] 2769 0004 000a            move.l     4(a1),10(a3)
[0002b07a] 42ab 000e                 clr.l      14(a3)
[0002b07e] 6014                      bra.s      $0002B094
[0002b080] 226a 000c                 movea.l    12(a2),a1
[0002b084] 2769 0004 000a            move.l     4(a1),10(a3)
[0002b08a] 226a 000c                 movea.l    12(a2),a1
[0002b08e] 2769 000e 000e            move.l     14(a1),14(a3)
[0002b094] 3028 0038                 move.w     56(a0),d0
[0002b098] e440                      asr.w      #2,d0
[0002b09a] c07c 0003                 and.w      #$0003,d0
[0002b09e] 3740 0012                 move.w     d0,18(a3)
[0002b0a2] 4a40                      tst.w      d0
[0002b0a4] 670e                      beq.s      $0002B0B4
[0002b0a6] 5340                      subq.w     #1,d0
[0002b0a8] 6710                      beq.s      $0002B0BA
[0002b0aa] 5340                      subq.w     #1,d0
[0002b0ac] 671a                      beq.s      $0002B0C8
[0002b0ae] 5340                      subq.w     #1,d0
[0002b0b0] 6726                      beq.s      $0002B0D8
[0002b0b2] 6038                      bra.s      $0002B0EC
[0002b0b4] 42ab 0014                 clr.l      20(a3)
[0002b0b8] 6018                      bra.s      $0002B0D2
[0002b0ba] 226a 0010                 movea.l    16(a2),a1
[0002b0be] 43e9 0016                 lea.l      22(a1),a1
[0002b0c2] 2749 0014                 move.l     a1,20(a3)
[0002b0c6] 600a                      bra.s      $0002B0D2
[0002b0c8] 226a 0010                 movea.l    16(a2),a1
[0002b0cc] 2769 0004 0014            move.l     4(a1),20(a3)
[0002b0d2] 42ab 0018                 clr.l      24(a3)
[0002b0d6] 6014                      bra.s      $0002B0EC
[0002b0d8] 226a 0010                 movea.l    16(a2),a1
[0002b0dc] 2769 0004 0014            move.l     4(a1),20(a3)
[0002b0e2] 226a 0010                 movea.l    16(a2),a1
[0002b0e6] 2769 000e 0018            move.l     14(a1),24(a3)
[0002b0ec] 3028 0038                 move.w     56(a0),d0
[0002b0f0] e840                      asr.w      #4,d0
[0002b0f2] c07c 0003                 and.w      #$0003,d0
[0002b0f6] 3740 001c                 move.w     d0,28(a3)
[0002b0fa] 4a40                      tst.w      d0
[0002b0fc] 670e                      beq.s      $0002B10C
[0002b0fe] 5340                      subq.w     #1,d0
[0002b100] 6710                      beq.s      $0002B112
[0002b102] 5340                      subq.w     #1,d0
[0002b104] 671a                      beq.s      $0002B120
[0002b106] 5340                      subq.w     #1,d0
[0002b108] 6726                      beq.s      $0002B130
[0002b10a] 6038                      bra.s      $0002B144
[0002b10c] 42ab 001e                 clr.l      30(a3)
[0002b110] 6018                      bra.s      $0002B12A
[0002b112] 206a 0014                 movea.l    20(a2),a0
[0002b116] 41e8 0016                 lea.l      22(a0),a0
[0002b11a] 2748 001e                 move.l     a0,30(a3)
[0002b11e] 600a                      bra.s      $0002B12A
[0002b120] 206a 0014                 movea.l    20(a2),a0
[0002b124] 2768 0004 001e            move.l     4(a0),30(a3)
[0002b12a] 42ab 0022                 clr.l      34(a3)
[0002b12e] 6014                      bra.s      $0002B144
[0002b130] 206a 0014                 movea.l    20(a2),a0
[0002b134] 2768 0004 001e            move.l     4(a0),30(a3)
[0002b13a] 206a 0014                 movea.l    20(a2),a0
[0002b13e] 2768 000e 0022            move.l     14(a0),34(a3)
[0002b144] 202a 0018                 move.l     24(a2),d0
[0002b148] 6604                      bne.s      $0002B14E
[0002b14a] 91c8                      suba.l     a0,a0
[0002b14c] 600e                      bra.s      $0002B15C
[0002b14e] 206a 0018                 movea.l    24(a2),a0
[0002b152] 2068 0004                 movea.l    4(a0),a0
[0002b156] 4eb9 0004 36d6            jsr        Ast_create
[0002b15c] 2748 0026                 move.l     a0,38(a3)
[0002b160] 202a 001c                 move.l     28(a2),d0
[0002b164] 6604                      bne.s      $0002B16A
[0002b166] 93c9                      suba.l     a1,a1
[0002b168] 6010                      bra.s      $0002B17A
[0002b16a] 206a 001c                 movea.l    28(a2),a0
[0002b16e] 2068 0004                 movea.l    4(a0),a0
[0002b172] 4eb9 0004 36d6            jsr        Ast_create
[0002b178] 2248                      movea.l    a0,a1
[0002b17a] 2749 002a                 move.l     a1,42(a3)
[0002b17e] 265f                      movea.l    (a7)+,a3
[0002b180] 245f                      movea.l    (a7)+,a2
[0002b182] 4e75                      rts
map_user:
[0002b184] 48e7 003c                 movem.l    a2-a5,-(a7)
[0002b188] 4fef ffd2                 lea.l      -46(a7),a7
[0002b18c] 2648                      movea.l    a0,a3
[0002b18e] 2449                      movea.l    a1,a2
[0002b190] 7220                      moveq.l    #32,d1
[0002b192] 4240                      clr.w      d0
[0002b194] 2049                      movea.l    a1,a0
[0002b196] 4eb9 0007 712e            jsr        $0007712E
[0002b19c] 286b 0004                 movea.l    4(a3),a4
[0002b1a0] 2054                      movea.l    (a4),a0
[0002b1a2] 41e8 0016                 lea.l      22(a0),a0
[0002b1a6] 4eb9 0002 34bc            jsr        $000234BC
[0002b1ac] 2a48                      movea.l    a0,a5
[0002b1ae] 200d                      move.l     a5,d0
[0002b1b0] 6714                      beq.s      $0002B1C6
[0002b1b2] 43d7                      lea.l      (a7),a1
[0002b1b4] 204b                      movea.l    a3,a0
[0002b1b6] 6100 fe44                 bsr        $0002AFFC
[0002b1ba] 224a                      movea.l    a2,a1
[0002b1bc] 41d7                      lea.l      (a7),a0
[0002b1be] 266d 0024                 movea.l    36(a5),a3
[0002b1c2] 4e93                      jsr        (a3)
[0002b1c4] 6020                      bra.s      $0002B1E6
[0002b1c6] 24bc 0002 b50c            move.l     #$0002B50C,(a2)
[0002b1cc] 486a 0004                 pea.l      4(a2)
[0002b1d0] 43f9 000b cd52            lea.l      $000BCD52,a1
[0002b1d6] 206c 0004                 movea.l    4(a4),a0
[0002b1da] 41e8 0016                 lea.l      22(a0),a0
[0002b1de] 4eb9 0007 594a            jsr        $0007594A
[0002b1e4] 584f                      addq.w     #4,a7
[0002b1e6] 4fef 002e                 lea.l      46(a7),a7
[0002b1ea] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0002b1ee] 4e75                      rts
reorg:
[0002b1f0] 48e7 003c                 movem.l    a2-a5,-(a7)
[0002b1f4] 554f                      subq.w     #2,a7
[0002b1f6] 2448                      movea.l    a0,a2
[0002b1f8] 2a49                      movea.l    a1,a5
[0002b1fa] 4257                      clr.w      (a7)
[0002b1fc] 202a 000e                 move.l     14(a2),d0
[0002b200] 4eb9 0004 7cc8            jsr        Ax_malloc
[0002b206] 2648                      movea.l    a0,a3
[0002b208] 200b                      move.l     a3,d0
[0002b20a] 673e                      beq.s      $0002B24A
[0002b20c] 286a 0004                 movea.l    4(a2),a4
[0002b210] 2a55                      movea.l    (a5),a5
[0002b212] 486d 000a                 pea.l      10(a5)
[0002b216] 3f2d 000a                 move.w     10(a5),-(a7)
[0002b21a] 486d 0018                 pea.l      24(a5)
[0002b21e] 486f 000a                 pea.l      10(a7)
[0002b222] 342d 0018                 move.w     24(a5),d2
[0002b226] 72ff                      moveq.l    #-1,d1
[0002b228] 224b                      movea.l    a3,a1
[0002b22a] 4240                      clr.w      d0
[0002b22c] 204c                      movea.l    a4,a0
[0002b22e] 4eb9 0002 b252            jsr        $0002B252
[0002b234] 4fef 000e                 lea.l      14(a7),a7
[0002b238] 254b 0004                 move.l     a3,4(a2)
[0002b23c] 256a 000e 000a            move.l     14(a2),10(a2)
[0002b242] 204c                      movea.l    a4,a0
[0002b244] 4eb9 0004 7e26            jsr        $00047E26
[0002b24a] 544f                      addq.w     #2,a7
[0002b24c] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0002b250] 4e75                      rts
subtree:
[0002b252] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[0002b256] 594f                      subq.w     #4,a7
[0002b258] 2a48                      movea.l    a0,a5
[0002b25a] 3800                      move.w     d0,d4
[0002b25c] 2c49                      movea.l    a1,a6
[0002b25e] 246f 0030                 movea.l    48(a7),a2
[0002b262] 3f41 0002                 move.w     d1,2(a7)
[0002b266] 3e82                      move.w     d2,(a7)
[0002b268] 266f 0034                 movea.l    52(a7),a3
[0002b26c] 3c2f 0038                 move.w     56(a7),d6
[0002b270] 286f 003a                 movea.l    58(a7),a4
[0002b274] 3612                      move.w     (a2),d3
[0002b276] 3004                      move.w     d4,d0
[0002b278] d040                      add.w      d0,d0
[0002b27a] d044                      add.w      d4,d0
[0002b27c] 5440                      addq.w     #2,d0
[0002b27e] 3217                      move.w     (a7),d1
[0002b280] b240                      cmp.w      d0,d1
[0002b282] 660a                      bne.s      $0002B28E
[0002b284] 3403                      move.w     d3,d2
[0002b286] d442                      add.w      d2,d2
[0002b288] d443                      add.w      d3,d2
[0002b28a] 5442                      addq.w     #2,d2
[0002b28c] 3682                      move.w     d2,(a3)
[0002b28e] b846                      cmp.w      d6,d4
[0002b290] 6602                      bne.s      $0002B294
[0002b292] 3883                      move.w     d3,(a4)
[0002b294] 7038                      moveq.l    #56,d0
[0002b296] 3404                      move.w     d4,d2
[0002b298] 48c2                      ext.l      d2
[0002b29a] 2202                      move.l     d2,d1
[0002b29c] e789                      lsl.l      #3,d1
[0002b29e] 9282                      sub.l      d2,d1
[0002b2a0] e789                      lsl.l      #3,d1
[0002b2a2] 43f5 1800                 lea.l      0(a5,d1.l),a1
[0002b2a6] 3403                      move.w     d3,d2
[0002b2a8] 48c2                      ext.l      d2
[0002b2aa] 2202                      move.l     d2,d1
[0002b2ac] e789                      lsl.l      #3,d1
[0002b2ae] 9282                      sub.l      d2,d1
[0002b2b0] e789                      lsl.l      #3,d1
[0002b2b2] 41f6 1800                 lea.l      0(a6,d1.l),a0
[0002b2b6] 4eb9 0007 6f44            jsr        $00076F44
[0002b2bc] 5252                      addq.w     #1,(a2)
[0002b2be] 3204                      move.w     d4,d1
[0002b2c0] 48c1                      ext.l      d1
[0002b2c2] 2001                      move.l     d1,d0
[0002b2c4] e788                      lsl.l      #3,d0
[0002b2c6] 9081                      sub.l      d1,d0
[0002b2c8] e788                      lsl.l      #3,d0
[0002b2ca] 3e35 0808                 move.w     8(a5,d0.l),d7
[0002b2ce] 3a35 080a                 move.w     10(a5,d0.l),d5
[0002b2d2] 4a45                      tst.w      d5
[0002b2d4] 6b3e                      bmi.s      $0002B314
[0002b2d6] 3203                      move.w     d3,d1
[0002b2d8] 48c1                      ext.l      d1
[0002b2da] 2401                      move.l     d1,d2
[0002b2dc] e78a                      lsl.l      #3,d2
[0002b2de] 9481                      sub.l      d1,d2
[0002b2e0] e78a                      lsl.l      #3,d2
[0002b2e2] 3d92 280a                 move.w     (a2),10(a6,d2.l)
[0002b2e6] 2f0c                      move.l     a4,-(a7)
[0002b2e8] 3f06                      move.w     d6,-(a7)
[0002b2ea] 2f0b                      move.l     a3,-(a7)
[0002b2ec] 2f0a                      move.l     a2,-(a7)
[0002b2ee] 224e                      movea.l    a6,a1
[0002b2f0] 204d                      movea.l    a5,a0
[0002b2f2] 3005                      move.w     d5,d0
[0002b2f4] 3203                      move.w     d3,d1
[0002b2f6] 342f 000e                 move.w     14(a7),d2
[0002b2fa] 6100 ff56                 bsr        $0002B252
[0002b2fe] 4fef 000e                 lea.l      14(a7),a7
[0002b302] 3a00                      move.w     d0,d5
[0002b304] 3403                      move.w     d3,d2
[0002b306] 48c2                      ext.l      d2
[0002b308] 2202                      move.l     d2,d1
[0002b30a] e789                      lsl.l      #3,d1
[0002b30c] 9282                      sub.l      d2,d1
[0002b30e] e789                      lsl.l      #3,d1
[0002b310] 3d80 180c                 move.w     d0,12(a6,d1.l)
[0002b314] 4a47                      tst.w      d7
[0002b316] 6b28                      bmi.s      $0002B340
[0002b318] 3203                      move.w     d3,d1
[0002b31a] 48c1                      ext.l      d1
[0002b31c] 2001                      move.l     d1,d0
[0002b31e] e788                      lsl.l      #3,d0
[0002b320] 9081                      sub.l      d1,d0
[0002b322] e788                      lsl.l      #3,d0
[0002b324] 3d92 0808                 move.w     (a2),8(a6,d0.l)
[0002b328] 3a07                      move.w     d7,d5
[0002b32a] 48c5                      ext.l      d5
[0002b32c] 2405                      move.l     d5,d2
[0002b32e] e78a                      lsl.l      #3,d2
[0002b330] 9485                      sub.l      d5,d2
[0002b332] e78a                      lsl.l      #3,d2
[0002b334] b875 280c                 cmp.w      12(a5,d2.l),d4
[0002b338] 6706                      beq.s      $0002B340
[0002b33a] 3807                      move.w     d7,d4
[0002b33c] 6000 ff36                 bra        $0002B274
[0002b340] 3203                      move.w     d3,d1
[0002b342] 48c1                      ext.l      d1
[0002b344] 2001                      move.l     d1,d0
[0002b346] e788                      lsl.l      #3,d0
[0002b348] 9081                      sub.l      d1,d0
[0002b34a] e788                      lsl.l      #3,d0
[0002b34c] 3daf 0002 0808            move.w     2(a7),8(a6,d0.l)
[0002b352] 3003                      move.w     d3,d0
[0002b354] 584f                      addq.w     #4,a7
[0002b356] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[0002b35a] 4e75                      rts
user_control:
[0002b35c] 48e7 2038                 movem.l    d2/a2-a4,-(a7)
[0002b360] 246f 0014                 movea.l    20(a7),a2
[0002b364] 7001                      moveq.l    #1,d0
[0002b366] c06a 0008                 and.w      8(a2),d0
[0002b36a] 660a                      bne.s      $0002B376
[0002b36c] 7201                      moveq.l    #1,d1
[0002b36e] c26a 0006                 and.w      6(a2),d1
[0002b372] 6700 0190                 beq        $0002B504
[0002b376] 47f9 000f f64a            lea.l      $000FF64A,a3
[0002b37c] 376a 0016 0004            move.w     22(a2),4(a3)
[0002b382] 376a 0018 0006            move.w     24(a2),6(a3)
[0002b388] 49f9 0010 1f12            lea.l      ACSblk,a4
[0002b38e] 302b 0004                 move.w     4(a3),d0
[0002b392] 6606                      bne.s      $0002B39A
[0002b394] 322b 0006                 move.w     6(a3),d1
[0002b398] 672c                      beq.s      $0002B3C6
[0002b39a] 36aa 0012                 move.w     18(a2),(a3)
[0002b39e] 376a 0014 0002            move.w     20(a2),2(a3)
[0002b3a4] 70ff                      moveq.l    #-1,d0
[0002b3a6] d053                      add.w      (a3),d0
[0002b3a8] d16b 0004                 add.w      d0,4(a3)
[0002b3ac] 70ff                      moveq.l    #-1,d0
[0002b3ae] d06b 0002                 add.w      2(a3),d0
[0002b3b2] d16b 0006                 add.w      d0,6(a3)
[0002b3b6] 204b                      movea.l    a3,a0
[0002b3b8] 7201                      moveq.l    #1,d1
[0002b3ba] 2254                      movea.l    (a4),a1
[0002b3bc] 3029 0010                 move.w     16(a1),d0
[0002b3c0] 4eb9 0006 3f60            jsr        $00063F60
[0002b3c6] 7203                      moveq.l    #3,d1
[0002b3c8] 2054                      movea.l    (a4),a0
[0002b3ca] 3028 0010                 move.w     16(a0),d0
[0002b3ce] 4eb9 0006 4da0            jsr        $00064DA0
[0002b3d4] 7201                      moveq.l    #1,d1
[0002b3d6] 2054                      movea.l    (a4),a0
[0002b3d8] 3028 0010                 move.w     16(a0),d0
[0002b3dc] 4eb9 0006 4e9a            jsr        $00064E9A
[0002b3e2] 4242                      clr.w      d2
[0002b3e4] 4241                      clr.w      d1
[0002b3e6] 2054                      movea.l    (a4),a0
[0002b3e8] 3028 0010                 move.w     16(a0),d0
[0002b3ec] 4eb9 0006 4f44            jsr        $00064F44
[0002b3f2] 7207                      moveq.l    #7,d1
[0002b3f4] 2054                      movea.l    (a4),a0
[0002b3f6] 3028 0010                 move.w     16(a0),d0
[0002b3fa] 4eb9 0006 4df4            jsr        $00064DF4
[0002b400] 7201                      moveq.l    #1,d1
[0002b402] 2054                      movea.l    (a4),a0
[0002b404] 3028 0010                 move.w     16(a0),d0
[0002b408] 4eb9 0006 4ef0            jsr        $00064EF0
[0002b40e] 36aa 000a                 move.w     10(a2),(a3)
[0002b412] 376a 000c 0002            move.w     12(a2),2(a3)
[0002b418] 3013                      move.w     (a3),d0
[0002b41a] d06a 000e                 add.w      14(a2),d0
[0002b41e] 5340                      subq.w     #1,d0
[0002b420] 3740 0004                 move.w     d0,4(a3)
[0002b424] 322b 0002                 move.w     2(a3),d1
[0002b428] d26a 0010                 add.w      16(a2),d1
[0002b42c] 5341                      subq.w     #1,d1
[0002b42e] 3741 0006                 move.w     d1,6(a3)
[0002b432] 342b 0002                 move.w     2(a3),d2
[0002b436] 3013                      move.w     (a3),d0
[0002b438] 322b 0004                 move.w     4(a3),d1
[0002b43c] 4eb9 0004 4386            jsr        $00044386
[0002b442] 342b 0006                 move.w     6(a3),d2
[0002b446] 322b 0004                 move.w     4(a3),d1
[0002b44a] 3013                      move.w     (a3),d0
[0002b44c] 4eb9 0004 4386            jsr        $00044386
[0002b452] 3413                      move.w     (a3),d2
[0002b454] 322b 0006                 move.w     6(a3),d1
[0002b458] 302b 0002                 move.w     2(a3),d0
[0002b45c] 4eb9 0004 4426            jsr        $00044426
[0002b462] 342b 0004                 move.w     4(a3),d2
[0002b466] 322b 0006                 move.w     6(a3),d1
[0002b46a] 302b 0002                 move.w     2(a3),d0
[0002b46e] 4eb9 0004 4426            jsr        $00044426
[0002b474] 302a 000e                 move.w     14(a2),d0
[0002b478] e640                      asr.w      #3,d0
[0002b47a] 5140                      subq.w     #8,d0
[0002b47c] 6f10                      ble.s      $0002B48E
[0002b47e] 322b 0004                 move.w     4(a3),d1
[0002b482] 342a 000e                 move.w     14(a2),d2
[0002b486] e642                      asr.w      #3,d2
[0002b488] 9242                      sub.w      d2,d1
[0002b48a] 3681                      move.w     d1,(a3)
[0002b48c] 6008                      bra.s      $0002B496
[0002b48e] 70f8                      moveq.l    #-8,d0
[0002b490] d06b 0004                 add.w      4(a3),d0
[0002b494] 3680                      move.w     d0,(a3)
[0002b496] 302a 0010                 move.w     16(a2),d0
[0002b49a] e640                      asr.w      #3,d0
[0002b49c] 5140                      subq.w     #8,d0
[0002b49e] 6f12                      ble.s      $0002B4B2
[0002b4a0] 322b 0006                 move.w     6(a3),d1
[0002b4a4] 342a 0010                 move.w     16(a2),d2
[0002b4a8] e642                      asr.w      #3,d2
[0002b4aa] 9242                      sub.w      d2,d1
[0002b4ac] 3741 0002                 move.w     d1,2(a3)
[0002b4b0] 600a                      bra.s      $0002B4BC
[0002b4b2] 70f8                      moveq.l    #-8,d0
[0002b4b4] d06b 0006                 add.w      6(a3),d0
[0002b4b8] 3740 0002                 move.w     d0,2(a3)
[0002b4bc] 7201                      moveq.l    #1,d1
[0002b4be] 2054                      movea.l    (a4),a0
[0002b4c0] 3028 0010                 move.w     16(a0),d0
[0002b4c4] 4eb9 0006 5390            jsr        $00065390
[0002b4ca] 7201                      moveq.l    #1,d1
[0002b4cc] 2054                      movea.l    (a4),a0
[0002b4ce] 3028 0010                 move.w     16(a0),d0
[0002b4d2] 4eb9 0006 5438            jsr        $00065438
[0002b4d8] 4241                      clr.w      d1
[0002b4da] 2054                      movea.l    (a4),a0
[0002b4dc] 3028 0010                 move.w     16(a0),d0
[0002b4e0] 4eb9 0006 548c            jsr        $0006548C
[0002b4e6] 204b                      movea.l    a3,a0
[0002b4e8] 2254                      movea.l    (a4),a1
[0002b4ea] 3029 0010                 move.w     16(a1),d0
[0002b4ee] 4eb9 0006 455e            jsr        $0006455E
[0002b4f4] 204b                      movea.l    a3,a0
[0002b4f6] 4241                      clr.w      d1
[0002b4f8] 2254                      movea.l    (a4),a1
[0002b4fa] 3029 0010                 move.w     16(a1),d0
[0002b4fe] 4eb9 0006 3f60            jsr        $00063F60
[0002b504] 4240                      clr.w      d0
[0002b506] 4cdf 1c04                 movem.l    (a7)+,d2/a2-a4
[0002b50a] 4e75                      rts
user_dummy:
[0002b50c] 48e7 2028                 movem.l    d2/a2/a4,-(a7)
[0002b510] 514f                      subq.w     #8,a7
[0002b512] 246f 0018                 movea.l    24(a7),a2
[0002b516] 3f6a 0016 0004            move.w     22(a2),4(a7)
[0002b51c] 3f6a 0018 0006            move.w     24(a2),6(a7)
[0002b522] 49f9 0010 1f12            lea.l      ACSblk,a4
[0002b528] 302f 0004                 move.w     4(a7),d0
[0002b52c] 6606                      bne.s      $0002B534
[0002b52e] 322f 0006                 move.w     6(a7),d1
[0002b532] 672c                      beq.s      $0002B560
[0002b534] 3eaa 0012                 move.w     18(a2),(a7)
[0002b538] 3f6a 0014 0002            move.w     20(a2),2(a7)
[0002b53e] 70ff                      moveq.l    #-1,d0
[0002b540] d057                      add.w      (a7),d0
[0002b542] d16f 0004                 add.w      d0,4(a7)
[0002b546] 70ff                      moveq.l    #-1,d0
[0002b548] d06f 0002                 add.w      2(a7),d0
[0002b54c] d16f 0006                 add.w      d0,6(a7)
[0002b550] 41d7                      lea.l      (a7),a0
[0002b552] 7201                      moveq.l    #1,d1
[0002b554] 2254                      movea.l    (a4),a1
[0002b556] 3029 0010                 move.w     16(a1),d0
[0002b55a] 4eb9 0006 3f60            jsr        $00063F60
[0002b560] 7001                      moveq.l    #1,d0
[0002b562] c06a 0008                 and.w      8(a2),d0
[0002b566] 6664                      bne.s      $0002B5CC
[0002b568] 7201                      moveq.l    #1,d1
[0002b56a] c26a 0006                 and.w      6(a2),d1
[0002b56e] 665c                      bne.s      $0002B5CC
[0002b570] 2054                      movea.l    (a4),a0
[0002b572] 3028 0010                 move.w     16(a0),d0
[0002b576] 7203                      moveq.l    #3,d1
[0002b578] 4eb9 0006 4da0            jsr        $00064DA0
[0002b57e] 3eaa 000a                 move.w     10(a2),(a7)
[0002b582] 3f6a 000c 0002            move.w     12(a2),2(a7)
[0002b588] 3017                      move.w     (a7),d0
[0002b58a] d06a 000e                 add.w      14(a2),d0
[0002b58e] 5340                      subq.w     #1,d0
[0002b590] 3f40 0004                 move.w     d0,4(a7)
[0002b594] 322f 0002                 move.w     2(a7),d1
[0002b598] d26a 0010                 add.w      16(a2),d1
[0002b59c] 5341                      subq.w     #1,d1
[0002b59e] 3f41 0006                 move.w     d1,6(a7)
[0002b5a2] 2054                      movea.l    (a4),a0
[0002b5a4] 3028 0010                 move.w     16(a0),d0
[0002b5a8] 7201                      moveq.l    #1,d1
[0002b5aa] 4eb9 0006 5390            jsr        $00065390
[0002b5b0] 7201                      moveq.l    #1,d1
[0002b5b2] 2054                      movea.l    (a4),a0
[0002b5b4] 3028 0010                 move.w     16(a0),d0
[0002b5b8] 4eb9 0006 5438            jsr        $00065438
[0002b5be] 41d7                      lea.l      (a7),a0
[0002b5c0] 2254                      movea.l    (a4),a1
[0002b5c2] 3029 0010                 move.w     16(a1),d0
[0002b5c6] 4eb9 0006 455e            jsr        $0006455E
[0002b5cc] 41d7                      lea.l      (a7),a0
[0002b5ce] 4241                      clr.w      d1
[0002b5d0] 2254                      movea.l    (a4),a1
[0002b5d2] 3029 0010                 move.w     16(a1),d0
[0002b5d6] 4eb9 0006 3f60            jsr        $00063F60
[0002b5dc] 70fe                      moveq.l    #-2,d0
[0002b5de] c06a 0008                 and.w      8(a2),d0
[0002b5e2] 504f                      addq.w     #8,a7
[0002b5e4] 4cdf 1404                 movem.l    (a7)+,d2/a2/a4
[0002b5e8] 4e75                      rts
