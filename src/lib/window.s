
INwindow:
[0004e246] 48e7 0038                 movem.l    a2-a4,-(a7)
[0004e24a] 49f9 000d 3dc8            lea.l      Aroot_wi,a4
[0004e250] 302c ffd2                 move.w     -46(a4),d0
[0004e254] 526c ffd2                 addq.w     #1,-46(a4)
[0004e258] 4a40                      tst.w      d0
[0004e25a] 6600 0162                 bne        INwindow_1
[0004e25e] 45f9 0010 1f12            lea.l      ACSblk,a2
[0004e264] 47f9 0010 6fe2            lea.l      virt_desk,a3
[0004e26a] 2052                      movea.l    (a2),a0
[0004e26c] 2268 023c                 movea.l    572(a0),a1
[0004e270] 36a9 000a                 move.w     10(a1),(a3)
[0004e274] 3028 000a                 move.w     10(a0),d0
[0004e278] b069 000c                 cmp.w      12(a1),d0
[0004e27c] 6f02                      ble.s      INwindow_2
[0004e27e] 600a                      bra.s      INwindow_3
INwindow_2:
[0004e280] 2052                      movea.l    (a2),a0
[0004e282] 2268 023c                 movea.l    572(a0),a1
[0004e286] 3029 000c                 move.w     12(a1),d0
INwindow_3:
[0004e28a] 3740 0002                 move.w     d0,2(a3)
[0004e28e] 2052                      movea.l    (a2),a0
[0004e290] 3228 000c                 move.w     12(a0),d1
[0004e294] 2268 023c                 movea.l    572(a0),a1
[0004e298] 3429 000a                 move.w     10(a1),d2
[0004e29c] d442                      add.w      d2,d2
[0004e29e] 9242                      sub.w      d2,d1
[0004e2a0] 3741 0004                 move.w     d1,4(a3)
[0004e2a4] 3028 000a                 move.w     10(a0),d0
[0004e2a8] d068 000e                 add.w      14(a0),d0
[0004e2ac] 9069 000c                 sub.w      12(a1),d0
[0004e2b0] 906b 0002                 sub.w      2(a3),d0
[0004e2b4] 3740 0006                 move.w     d0,6(a3)
[0004e2b8] 3428 0004                 move.w     4(a0),d2
[0004e2bc] 3202                      move.w     d2,d1
[0004e2be] e549                      lsl.w      #2,d1
[0004e2c0] d242                      add.w      d2,d1
[0004e2c2] 3741 fbc8                 move.w     d1,-1080(a3)
[0004e2c6] 3228 0006                 move.w     6(a0),d1
[0004e2ca] 3001                      move.w     d1,d0
[0004e2cc] d040                      add.w      d0,d0
[0004e2ce] d041                      add.w      d1,d0
[0004e2d0] d040                      add.w      d0,d0
[0004e2d2] 3740 fbca                 move.w     d0,-1078(a3)
[0004e2d6] 41f9 000d 2a22            lea.l      _ICO,a0
[0004e2dc] 4eb9 0004 9a5c            jsr        Aob_create
[0004e2e2] 2748 fff8                 move.l     a0,-8(a3)
[0004e2e6] 2008                      move.l     a0,d0
[0004e2e8] 671e                      beq.s      INwindow_4
[0004e2ea] 4eb9 0004 a25e            jsr        Aob_fix
[0004e2f0] 206b fff8                 movea.l    -8(a3),a0
[0004e2f4] 41e8 0018                 lea.l      24(a0),a0
[0004e2f8] 2748 fffc                 move.l     a0,-4(a3)
[0004e2fc] 2268 000c                 movea.l    12(a0),a1
[0004e300] 2769 0008 fff4            move.l     8(a1),-12(a3)
[0004e306] 600a                      bra.s      INwindow_5
INwindow_4:
[0004e308] 7000                      moveq.l    #0,d0
[0004e30a] 2740 fff4                 move.l     d0,-12(a3)
[0004e30e] 2740 fffc                 move.l     d0,-4(a3)
INwindow_5:
[0004e312] 426b 060a                 clr.w      1546(a3)
[0004e316] 426b 0608                 clr.w      1544(a3)
[0004e31a] 7220                      moveq.l    #32,d1
[0004e31c] 4240                      clr.w      d0
[0004e31e] 41eb fdd4                 lea.l      -556(a3),a0
[0004e322] 4eb9 0007 712e            jsr        memset
[0004e328] 223c 0000 0400            move.l     #$00000400,d1
[0004e32e] 4240                      clr.w      d0
[0004e330] 41eb 0008                 lea.l      8(a3),a0
[0004e334] 4eb9 0007 712e            jsr        memset
[0004e33a] 223c 0000 0200            move.l     #$00000200,d1
[0004e340] 4240                      clr.w      d0
[0004e342] 41eb 0408                 lea.l      1032(a3),a0
[0004e346] 4eb9 0007 712e            jsr        memset
[0004e34c] 223c 0000 0200            move.l     #$00000200,d1
[0004e352] 4240                      clr.w      d0
[0004e354] 41eb fdf4                 lea.l      -524(a3),a0
[0004e358] 4eb9 0007 712e            jsr        memset
[0004e35e] 2052                      movea.l    (a2),a0
[0004e360] 3028 0236                 move.w     566(a0),d0
[0004e364] 6706                      beq.s      INwindow_6
[0004e366] 3228 0238                 move.w     568(a0),d1
[0004e36a] 6710                      beq.s      INwindow_7
INwindow_6:
[0004e36c] 2052                      movea.l    (a2),a0
[0004e36e] 2268 023c                 movea.l    572(a0),a1
[0004e372] 2029 0034                 move.l     52(a1),d0
[0004e376] 6704                      beq.s      INwindow_7
[0004e378] 2640                      movea.l    d0,a3
[0004e37a] 600a                      bra.s      INwindow_8
INwindow_7:
[0004e37c] 2052                      movea.l    (a2),a0
[0004e37e] 2268 023c                 movea.l    572(a0),a1
[0004e382] 2669 0030                 movea.l    48(a1),a3
INwindow_8:
[0004e386] 91c8                      suba.l     a0,a0
[0004e388] 226b 0008                 movea.l    8(a3),a1
[0004e38c] 4e91                      jsr        (a1)
[0004e38e] 2888                      move.l     a0,(a4)
[0004e390] 2008                      move.l     a0,d0
[0004e392] 671e                      beq.s      INwindow_9
[0004e394] 2252                      movea.l    (a2),a1
[0004e396] 3229 0236                 move.w     566(a1),d1
[0004e39a] 6722                      beq.s      INwindow_1
[0004e39c] 3429 0238                 move.w     568(a1),d2
[0004e3a0] 6714                      beq.s      INwindow_10
[0004e3a2] 2028 0014                 move.l     20(a0),d0
[0004e3a6] 670e                      beq.s      INwindow_10
[0004e3a8] 4eb9 0004 f69e            jsr        Awi_open
[0004e3ae] 5240                      addq.w     #1,d0
[0004e3b0] 660c                      bne.s      INwindow_1
INwindow_9:
[0004e3b2] 70ff                      moveq.l    #-1,d0
[0004e3b4] 600a                      bra.s      INwindow_11
INwindow_10:
[0004e3b6] 2054                      movea.l    (a4),a0
[0004e3b8] 4eb9 0004 fffc            jsr        Awi_ropen
INwindow_1:
[0004e3be] 4240                      clr.w      d0
INwindow_11:
[0004e3c0] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0004e3c4] 4e75                      rts

TRwindow:
[0004e3c6] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0004e3ca] 47f9 000d 3dc8            lea.l      Aroot_wi,a3
[0004e3d0] 536b ffd2                 subq.w     #1,-46(a3)
[0004e3d4] 6600 008e                 bne        TRwindow_1
[0004e3d8] 7001                      moveq.l    #1,d0
[0004e3da] 4eb9 0005 1e1c            jsr        Awi_update
[0004e3e0] 49f9 0010 73ea            lea.l      _ACSv_wiicons,a4
[0004e3e6] 362c 0204                 move.w     516(a4),d3
[0004e3ea] 6022                      bra.s      TRwindow_2
TRwindow_4:
[0004e3ec] 3003                      move.w     d3,d0
[0004e3ee] e548                      lsl.w      #2,d0
[0004e3f0] 41ec fc00                 lea.l      -1024(a4),a0
[0004e3f4] 2470 0000                 movea.l    0(a0,d0.w),a2
[0004e3f8] 220a                      move.l     a2,d1
[0004e3fa] 6710                      beq.s      TRwindow_3
[0004e3fc] b293                      cmp.l      (a3),d1
[0004e3fe] 670c                      beq.s      TRwindow_3
[0004e400] 93c9                      suba.l     a1,a1
[0004e402] 2a6a 0004                 movea.l    4(a2),a5
[0004e406] 204a                      movea.l    a2,a0
[0004e408] 7002                      moveq.l    #2,d0
[0004e40a] 4e95                      jsr        (a5)
TRwindow_3:
[0004e40c] 5343                      subq.w     #1,d3
TRwindow_2:
[0004e40e] 4a43                      tst.w      d3
[0004e410] 6ada                      bpl.s      TRwindow_4
[0004e412] 2079 0010 1f12            movea.l    ACSblk,a0
[0004e418] 2068 0298                 movea.l    664(a0),a0
[0004e41c] 4e90                      jsr        (a0)
[0004e41e] 93c9                      suba.l     a1,a1
[0004e420] 7002                      moveq.l    #2,d0
[0004e422] 2053                      movea.l    (a3),a0
[0004e424] 2453                      movea.l    (a3),a2
[0004e426] 246a 0004                 movea.l    4(a2),a2
[0004e42a] 4e92                      jsr        (a2)
[0004e42c] 4243                      clr.w      d3
[0004e42e] 6028                      bra.s      TRwindow_5
TRwindow_7:
[0004e430] 3003                      move.w     d3,d0
[0004e432] e548                      lsl.w      #2,d0
[0004e434] 2234 0000                 move.l     0(a4,d0.w),d1
[0004e438] 671c                      beq.s      TRwindow_6
[0004e43a] 2041                      movea.l    d1,a0
[0004e43c] 2068 0024                 movea.l    36(a0),a0
[0004e440] 4eb9 0004 a094            jsr        Aic_delete
[0004e446] 7048                      moveq.l    #72,d0
[0004e448] 3203                      move.w     d3,d1
[0004e44a] e549                      lsl.w      #2,d1
[0004e44c] 2074 1000                 movea.l    0(a4,d1.w),a0
[0004e450] 4eb9 0004 8140            jsr        Ax_recycle
TRwindow_6:
[0004e456] 5243                      addq.w     #1,d3
TRwindow_5:
[0004e458] b67c 0080                 cmp.w      #$0080,d3
[0004e45c] 6dd2                      blt.s      TRwindow_7
[0004e45e] 4eb9 0004 7ef6            jsr        Ax_release
TRwindow_1:
[0004e464] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0004e468] 4e75                      rts

Awi_ontop:
[0004e46a] 2039 000d 3dcc            move.l     top_window,d0
[0004e470] 6608                      bne.s      Awi_ontop_1
[0004e472] 4eb9 0004 e608            jsr        Awi_root
[0004e478] 4e75                      rts
Awi_ontop_1:
[0004e47a] 2079 000d 3dcc            movea.l    top_window,a0
[0004e480] 4e75                      rts

Awi_setontop:
[0004e482] 23c8 000d 3dcc            move.l     a0,top_window
[0004e488] 2048                      movea.l    a0,a0
[0004e48a] 4e75                      rts

Awi_iconcreate:
[0004e48c] 48e7 003c                 movem.l    a2-a5,-(a7)
[0004e490] 2448                      movea.l    a0,a2
[0004e492] 47f9 0010 73ea            lea.l      _ACSv_wiicons,a3
[0004e498] 302a 0020                 move.w     32(a2),d0
[0004e49c] 6b2a                      bmi.s      Awi_iconcreate_1
[0004e49e] b07c 0080                 cmp.w      #$0080,d0
[0004e4a2] 6c24                      bge.s      Awi_iconcreate_1
[0004e4a4] 222b fbf0                 move.l     -1040(a3),d1
[0004e4a8] 671e                      beq.s      Awi_iconcreate_1
[0004e4aa] e548                      lsl.w      #2,d0
[0004e4ac] 2433 0000                 move.l     0(a3,d0.w),d2
[0004e4b0] 6616                      bne.s      Awi_iconcreate_1
[0004e4b2] 7048                      moveq.l    #72,d0
[0004e4b4] 4eb9 0004 7cc8            jsr        Ax_malloc
[0004e4ba] 2848                      movea.l    a0,a4
[0004e4bc] 302a 0020                 move.w     32(a2),d0
[0004e4c0] e548                      lsl.w      #2,d0
[0004e4c2] 2788 0000                 move.l     a0,0(a3,d0.w)
[0004e4c6] 6604                      bne.s      Awi_iconcreate_2
Awi_iconcreate_1:
[0004e4c8] 4240                      clr.w      d0
[0004e4ca] 605e                      bra.s      Awi_iconcreate_3
Awi_iconcreate_2:
[0004e4cc] 7048                      moveq.l    #72,d0
[0004e4ce] 226b fbf0                 movea.l    -1040(a3),a1
[0004e4d2] 204c                      movea.l    a4,a0
[0004e4d4] 4eb9 0007 6f44            jsr        memcpy
[0004e4da] 2a6a 005a                 movea.l    90(a2),a5
[0004e4de] 200d                      move.l     a5,d0
[0004e4e0] 670e                      beq.s      Awi_iconcreate_4
[0004e4e2] 204d                      movea.l    a5,a0
[0004e4e4] 4eb9 0004 9e38            jsr        Aic_create
[0004e4ea] 2948 0024                 move.l     a0,36(a4)
[0004e4ee] 602e                      bra.s      Awi_iconcreate_5
Awi_iconcreate_4:
[0004e4f0] 202a 004a                 move.l     74(a2),d0
[0004e4f4] 6708                      beq.s      Awi_iconcreate_6
[0004e4f6] 206c 0024                 movea.l    36(a4),a0
[0004e4fa] 2140 0008                 move.l     d0,8(a0)
Awi_iconcreate_6:
[0004e4fe] 206b fbf4                 movea.l    -1036(a3),a0
[0004e502] 2068 000c                 movea.l    12(a0),a0
[0004e506] 4eb9 0004 9e38            jsr        Aic_create
[0004e50c] 2948 0024                 move.l     a0,36(a4)
[0004e510] 226b fbf4                 movea.l    -1036(a3),a1
[0004e514] 2469 000c                 movea.l    12(a1),a2
[0004e518] 256b fbec 0008            move.l     -1044(a3),8(a2)
Awi_iconcreate_5:
[0004e51e] 41ec 0018                 lea.l      24(a4),a0
[0004e522] 4eb9 0004 a34e            jsr        Aob_icon
[0004e528] 7001                      moveq.l    #1,d0
Awi_iconcreate_3:
[0004e52a] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0004e52e] 4e75                      rts

Awi_icondelete:
[0004e530] 2f0a                      move.l     a2,-(a7)
[0004e532] 2f0b                      move.l     a3,-(a7)
[0004e534] 2448                      movea.l    a0,a2
[0004e536] 47f9 0010 73ea            lea.l      _ACSv_wiicons,a3
[0004e53c] 302a 0020                 move.w     32(a2),d0
[0004e540] 6b0e                      bmi.s      Awi_icondelete_1
[0004e542] b07c 0080                 cmp.w      #$0080,d0
[0004e546] 6c08                      bge.s      Awi_icondelete_1
[0004e548] e548                      lsl.w      #2,d0
[0004e54a] 2233 0000                 move.l     0(a3,d0.w),d1
[0004e54e] 6604                      bne.s      Awi_icondelete_2
Awi_icondelete_1:
[0004e550] 4240                      clr.w      d0
[0004e552] 6032                      bra.s      Awi_icondelete_3
Awi_icondelete_2:
[0004e554] 302a 0020                 move.w     32(a2),d0
[0004e558] e548                      lsl.w      #2,d0
[0004e55a] 2073 0000                 movea.l    0(a3,d0.w),a0
[0004e55e] 2068 0024                 movea.l    36(a0),a0
[0004e562] 4eb9 0004 a094            jsr        Aic_delete
[0004e568] 7048                      moveq.l    #72,d0
[0004e56a] 322a 0020                 move.w     32(a2),d1
[0004e56e] e549                      lsl.w      #2,d1
[0004e570] 2073 1000                 movea.l    0(a3,d1.w),a0
[0004e574] 4eb9 0004 8140            jsr        Ax_recycle
[0004e57a] 302a 0020                 move.w     32(a2),d0
[0004e57e] e548                      lsl.w      #2,d0
[0004e580] 42b3 0000                 clr.l      0(a3,d0.w)
[0004e584] 7001                      moveq.l    #1,d0
Awi_icondelete_3:
[0004e586] 265f                      movea.l    (a7)+,a3
[0004e588] 245f                      movea.l    (a7)+,a2
[0004e58a] 4e75                      rts

Awi_invalid:
[0004e58c] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0004e590] 4243                      clr.w      d3
[0004e592] 45f9 0010 6bb6            lea.l      gemmap,a2
[0004e598] 6014                      bra.s      Awi_invalid_1
Awi_invalid_3:
[0004e59a] 3003                      move.w     d3,d0
[0004e59c] e548                      lsl.w      #2,d0
[0004e59e] 2672 0000                 movea.l    0(a2,d0.w),a3
[0004e5a2] 220b                      move.l     a3,d1
[0004e5a4] 6706                      beq.s      Awi_invalid_2
[0004e5a6] 377c ffff 0020            move.w     #$FFFF,32(a3)
Awi_invalid_2:
[0004e5ac] 5243                      addq.w     #1,d3
Awi_invalid_1:
[0004e5ae] b67c 0080                 cmp.w      #$0080,d3
[0004e5b2] 6de6                      blt.s      Awi_invalid_3
[0004e5b4] 4243                      clr.w      d3
[0004e5b6] 6026                      bra.s      Awi_invalid_4
Awi_invalid_6:
[0004e5b8] 3003                      move.w     d3,d0
[0004e5ba] e548                      lsl.w      #2,d0
[0004e5bc] 2672 0000                 movea.l    0(a2,d0.w),a3
[0004e5c0] 42b2 0000                 clr.l      0(a2,d0.w)
[0004e5c4] 220b                      move.l     a3,d1
[0004e5c6] 6714                      beq.s      Awi_invalid_5
[0004e5c8] 204b                      movea.l    a3,a0
[0004e5ca] 4eb9 0005 013e            jsr        Awi_closed
[0004e5d0] 93c9                      suba.l     a1,a1
[0004e5d2] 7003                      moveq.l    #3,d0
[0004e5d4] 204b                      movea.l    a3,a0
[0004e5d6] 286b 0004                 movea.l    4(a3),a4
[0004e5da] 4e94                      jsr        (a4)
Awi_invalid_5:
[0004e5dc] 5243                      addq.w     #1,d3
Awi_invalid_4:
[0004e5de] b67c 0080                 cmp.w      #$0080,d3
[0004e5e2] 6dd4                      blt.s      Awi_invalid_6
[0004e5e4] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0004e5e8] 4e75                      rts

Awi_wid:
[0004e5ea] 4a40                      tst.w      d0
[0004e5ec] 6b06                      bmi.s      Awi_wid_1
[0004e5ee] b07c 0080                 cmp.w      #$0080,d0
[0004e5f2] 6d04                      blt.s      Awi_wid_2
Awi_wid_1:
[0004e5f4] 91c8                      suba.l     a0,a0
[0004e5f6] 4e75                      rts
Awi_wid_2:
[0004e5f8] 3200                      move.w     d0,d1
[0004e5fa] e549                      lsl.w      #2,d1
[0004e5fc] 41f9 0010 6bb6            lea.l      gemmap,a0
[0004e602] 2070 1000                 movea.l    0(a0,d1.w),a0
[0004e606] 4e75                      rts

Awi_root:
[0004e608] 2079 000d 3dc8            movea.l    Aroot_wi,a0
[0004e60e] 4e75                      rts

Awi_init:
[0004e610] 4240                      clr.w      d0
[0004e612] 4e75                      rts

Ash_prog:
[0004e614] 48e7 1e3c                 movem.l    d3-d6/a2-a5,-(a7)
[0004e618] 4fef fc9e                 lea.l      -866(a7),a7
[0004e61c] 2f48 034c                 move.l     a0,844(a7)
[0004e620] 2f49 0348                 move.l     a1,840(a7)
[0004e624] 4243                      clr.w      d3
[0004e626] 3803                      move.w     d3,d4
[0004e628] 7a00                      moveq.l    #0,d5
[0004e62a] 43f9 000d 3de8            lea.l      $000D3DE8,a1
[0004e630] 41ef 00a0                 lea.l      160(a7),a0
[0004e634] 707f                      moveq.l    #127,d0
Ash_prog_1:
[0004e636] 10d9                      move.b     (a1)+,(a0)+
[0004e638] 51c8 fffc                 dbf        d0,Ash_prog_1
[0004e63c] 49ef 0020                 lea.l      32(a7),a4
[0004e640] 41f9 000d 3e68            lea.l      $000D3E68,a0
[0004e646] 224c                      movea.l    a4,a1
[0004e648] 707f                      moveq.l    #127,d0
Ash_prog_2:
[0004e64a] 12d8                      move.b     (a0)+,(a1)+
[0004e64c] 51c8 fffc                 dbf        d0,Ash_prog_2
[0004e650] 42af 0018                 clr.l      24(a7)
[0004e654] 2039 000d 3dac            move.l     exec_com,d0
[0004e65a] 670e                      beq.s      Ash_prog_3
[0004e65c] 2040                      movea.l    d0,a0
[0004e65e] 4eb9 0004 7fa6            jsr        Ax_glfree
[0004e664] 42b9 000d 3dac            clr.l      exec_com
Ash_prog_3:
[0004e66a] 2039 000d 3da8            move.l     exec_path,d0
[0004e670] 670e                      beq.s      Ash_prog_4
[0004e672] 2040                      movea.l    d0,a0
[0004e674] 4eb9 0004 7fa6            jsr        Ax_glfree
[0004e67a] 42b9 000d 3da8            clr.l      exec_path
Ash_prog_4:
[0004e680] 4bf9 0010 1f12            lea.l      ACSblk,a5
[0004e686] 206f 034c                 movea.l    844(a7),a0
[0004e68a] 4eb9 0004 3a92            jsr        Ast_isEmpty
[0004e690] 4a40                      tst.w      d0
[0004e692] 6600 05f2                 bne        Ash_prog_5
[0004e696] 2055                      movea.l    (a5),a0
[0004e698] 2268 023c                 movea.l    572(a0),a1
[0004e69c] 3029 000e                 move.w     14(a1),d0
[0004e6a0] c07c 0200                 and.w      #$0200,d0
[0004e6a4] 6638                      bne.s      Ash_prog_6
[0004e6a6] 204c                      movea.l    a4,a0
[0004e6a8] 226f 034c                 movea.l    844(a7),a1
[0004e6ac] 707f                      moveq.l    #127,d0
[0004e6ae] 4eb9 0007 69da            jsr        strncat
[0004e6b4] 705c                      moveq.l    #92,d0
[0004e6b6] 204c                      movea.l    a4,a0
[0004e6b8] 4eb9 0007 68e2            jsr        strrchr
[0004e6be] 2f48 001c                 move.l     a0,28(a7)
[0004e6c2] 6702                      beq.s      Ash_prog_7
[0004e6c4] 4210                      clr.b      (a0)
Ash_prog_7:
[0004e6c6] 204c                      movea.l    a4,a0
[0004e6c8] 4eb9 0004 70f8            jsr        Af_2drv
[0004e6ce] 4eb9 0007 2978            jsr        Dsetdrv
[0004e6d4] 41ec 0002                 lea.l      2(a4),a0
[0004e6d8] 4eb9 0007 2988            jsr        Dsetpath
Ash_prog_6:
[0004e6de] 49ef 0120                 lea.l      288(a7),a4
[0004e6e2] 226f 034c                 movea.l    844(a7),a1
[0004e6e6] 204c                      movea.l    a4,a0
[0004e6e8] 4eb9 0004 7286            jsr        Af_2ext
[0004e6ee] 4eb9 0004 3740            jsr        Ast_toupper
[0004e6f4] 41f9 000d 3fd2            lea.l      $000D3FD2,a0
[0004e6fa] 4eb9 0005 2908            jsr        Ash_getenv
[0004e700] 2f48 001c                 move.l     a0,28(a7)
[0004e704] 675a                      beq.s      Ash_prog_8
[0004e706] 707f                      moveq.l    #127,d0
[0004e708] 2248                      movea.l    a0,a1
[0004e70a] 41ef 00a0                 lea.l      160(a7),a0
[0004e70e] 4eb9 0007 69da            jsr        strncat
[0004e714] 4eb9 0004 3740            jsr        Ast_toupper
[0004e71a] 422f 011f                 clr.b      287(a7)
[0004e71e] 43f9 000d 3fdc            lea.l      $000D3FDC,a1
[0004e724] 41ef 00a0                 lea.l      160(a7),a0
[0004e728] 4eb9 0007 6a80            jsr        strtok
[0004e72e] 2f48 001c                 move.l     a0,28(a7)
[0004e732] 6026                      bra.s      Ash_prog_9
Ash_prog_11:
[0004e734] 226f 001c                 movea.l    28(a7),a1
[0004e738] 204c                      movea.l    a4,a0
[0004e73a] 4eb9 0007 68fe            jsr        strcmp
[0004e740] 4a40                      tst.w      d0
[0004e742] 6604                      bne.s      Ash_prog_10
[0004e744] 7801                      moveq.l    #1,d4
[0004e746] 6018                      bra.s      Ash_prog_8
Ash_prog_10:
[0004e748] 43f9 000d 3fdc            lea.l      $000D3FDC,a1
[0004e74e] 91c8                      suba.l     a0,a0
[0004e750] 4eb9 0007 6a80            jsr        strtok
[0004e756] 2f48 001c                 move.l     a0,28(a7)
Ash_prog_9:
[0004e75a] 202f 001c                 move.l     28(a7),d0
[0004e75e] 66d4                      bne.s      Ash_prog_11
Ash_prog_8:
[0004e760] 4a44                      tst.w      d4
[0004e762] 6638                      bne.s      Ash_prog_12
[0004e764] 43f9 000d 3fde            lea.l      $000D3FDE,a1
[0004e76a] 204c                      movea.l    a4,a0
[0004e76c] 4eb9 0007 68fe            jsr        strcmp
[0004e772] 4a40                      tst.w      d0
[0004e774] 6724                      beq.s      Ash_prog_13
[0004e776] 43f9 000d 3fe2            lea.l      $000D3FE2,a1
[0004e77c] 204c                      movea.l    a4,a0
[0004e77e] 4eb9 0007 68fe            jsr        strcmp
[0004e784] 4a40                      tst.w      d0
[0004e786] 6712                      beq.s      Ash_prog_13
[0004e788] 43f9 000d 3fe6            lea.l      $000D3FE6,a1
[0004e78e] 204c                      movea.l    a4,a0
[0004e790] 4eb9 0007 68fe            jsr        strcmp
[0004e796] 4a40                      tst.w      d0
[0004e798] 6602                      bne.s      Ash_prog_12
Ash_prog_13:
[0004e79a] 7801                      moveq.l    #1,d4
Ash_prog_12:
[0004e79c] 2055                      movea.l    (a5),a0
[0004e79e] 3028 0238                 move.w     568(a0),d0
[0004e7a2] 676e                      beq.s      Ash_prog_14
[0004e7a4] 2228 04fe                 move.l     1278(a0),d1
[0004e7a8] 6632                      bne.s      Ash_prog_15
[0004e7aa] 2f39 000d 99d6            move.l     _globl,-(a7)
[0004e7b0] 226f 034c                 movea.l    844(a7),a1
[0004e7b4] 7401                      moveq.l    #1,d2
[0004e7b6] 2f09                      move.l     a1,-(a7)
[0004e7b8] 3f02                      move.w     d2,-(a7)
[0004e7ba] 4a44                      tst.w      d4
[0004e7bc] 6704                      beq.s      Ash_prog_16
[0004e7be] 3202                      move.w     d2,d1
[0004e7c0] 6002                      bra.s      Ash_prog_17
Ash_prog_16:
[0004e7c2] 4241                      clr.w      d1
Ash_prog_17:
[0004e7c4] 4240                      clr.w      d0
[0004e7c6] 341f                      move.w     (a7)+,d2
[0004e7c8] 206f 0354                 movea.l    852(a7),a0
[0004e7cc] 225f                      movea.l    (a7)+,a1
[0004e7ce] 4eb9 0006 da26            jsr        mt_shel_write
[0004e7d4] 584f                      addq.w     #4,a7
[0004e7d6] 48c0                      ext.l      d0
[0004e7d8] 6000 05ea                 bra        Ash_prog_18
Ash_prog_15:
[0004e7dc] 2f39 000d 99d6            move.l     _globl,-(a7)
[0004e7e2] 226f 034c                 movea.l    844(a7),a1
[0004e7e6] 206f 0350                 movea.l    848(a7),a0
[0004e7ea] 7464                      moveq.l    #100,d2
[0004e7ec] 2f09                      move.l     a1,-(a7)
[0004e7ee] 2f08                      move.l     a0,-(a7)
[0004e7f0] 3f02                      move.w     d2,-(a7)
[0004e7f2] 4a44                      tst.w      d4
[0004e7f4] 6704                      beq.s      Ash_prog_19
[0004e7f6] 7201                      moveq.l    #1,d1
[0004e7f8] 6002                      bra.s      Ash_prog_20
Ash_prog_19:
[0004e7fa] 4241                      clr.w      d1
Ash_prog_20:
[0004e7fc] 7001                      moveq.l    #1,d0
[0004e7fe] 341f                      move.w     (a7)+,d2
[0004e800] 205f                      movea.l    (a7)+,a0
[0004e802] 225f                      movea.l    (a7)+,a1
[0004e804] 4eb9 0006 da26            jsr        mt_shel_write
[0004e80a] 584f                      addq.w     #4,a7
[0004e80c] 48c0                      ext.l      d0
[0004e80e] 6000 05b4                 bra        Ash_prog_18
Ash_prog_14:
[0004e812] 4eb9 0004 b286            jsr        Awi_diaend
[0004e818] 4eb9 0004 98d8            jsr        Amo_point
[0004e81e] 2055                      movea.l    (a5),a0
[0004e820] 3028 0236                 move.w     566(a0),d0
[0004e824] 6700 03da                 beq        Ash_prog_21
[0004e828] 41d7                      lea.l      (a7),a0
[0004e82a] 4eb9 0005 f4e8            jsr        Act_save
[0004e830] 49ef 0142                 lea.l      322(a7),a4
[0004e834] 42a7                      clr.l      -(a7)
[0004e836] 42a7                      clr.l      -(a7)
[0004e838] 42a7                      clr.l      -(a7)
[0004e83a] 4854                      pea.l      (a4)
[0004e83c] 720a                      moveq.l    #10,d1
[0004e83e] 4240                      clr.w      d0
[0004e840] 4eb9 0007 14ea            jsr        wind_get
[0004e846] 4fef 0010                 lea.l      16(a7),a7
[0004e84a] 3014                      move.w     (a4),d0
[0004e84c] 6100 fd9c                 bsr        Awi_wid
[0004e850] 2f48 0144                 move.l     a0,324(a7)
[0004e854] 7601                      moveq.l    #1,d3
[0004e856] 604c                      bra.s      Ash_prog_22
Ash_prog_24:
[0004e858] 3003                      move.w     d3,d0
[0004e85a] e548                      lsl.w      #2,d0
[0004e85c] 41f9 0010 6bb6            lea.l      gemmap,a0
[0004e862] 2470 0000                 movea.l    0(a0,d0.w),a2
[0004e866] 43ef 0148                 lea.l      328(a7),a1
[0004e86a] 238a 0000                 move.l     a2,0(a1,d0.w)
[0004e86e] 42b0 0000                 clr.l      0(a0,d0.w)
[0004e872] 220a                      move.l     a2,d1
[0004e874] 672c                      beq.s      Ash_prog_23
[0004e876] 38aa 0020                 move.w     32(a2),(a4)
[0004e87a] 3014                      move.w     (a4),d0
[0004e87c] 2079 000d 99d6            movea.l    _globl,a0
[0004e882] 4eb9 0006 d1ba            jsr        mt_wind_close
[0004e888] 2079 000d 99d6            movea.l    _globl,a0
[0004e88e] 3014                      move.w     (a4),d0
[0004e890] 4eb9 0006 d214            jsr        mt_wind_delete
[0004e896] 357c ffff 0020            move.w     #$FFFF,32(a2)
[0004e89c] 4eb9 0004 6d70            jsr        Aev_mess
Ash_prog_23:
[0004e8a2] 5243                      addq.w     #1,d3
Ash_prog_22:
[0004e8a4] b67c 0080                 cmp.w      #$0080,d3
[0004e8a8] 6dae                      blt.s      Ash_prog_24
[0004e8aa] 2079 000d 3dc8            movea.l    Aroot_wi,a0
[0004e8b0] 3028 0020                 move.w     32(a0),d0
[0004e8b4] 6600 009c                 bne        Ash_prog_25
[0004e8b8] 2279 000d 99d6            movea.l    _globl,a1
[0004e8be] 91c8                      suba.l     a0,a0
[0004e8c0] 4240                      clr.w      d0
[0004e8c2] 4eb9 0006 b362            jsr        mt_menu_bar
[0004e8c8] 4267                      clr.w      -(a7)
[0004e8ca] 42a7                      clr.l      -(a7)
[0004e8cc] 720e                      moveq.l    #14,d1
[0004e8ce] 4240                      clr.w      d0
[0004e8d0] 4eb9 0007 1656            jsr        wind_set
[0004e8d6] 5c4f                      addq.w     #6,a7
[0004e8d8] 4a44                      tst.w      d4
[0004e8da] 6776                      beq.s      Ash_prog_25
[0004e8dc] 23ef 034c 000d 3ddc       move.l     844(a7),$000D3DDC
[0004e8e4] 2055                      movea.l    (a5),a0
[0004e8e6] 33e8 000c 000d 3de4       move.w     12(a0),$000D3DE4
[0004e8ee] 70ff                      moveq.l    #-1,d0
[0004e8f0] d068 000a                 add.w      10(a0),d0
[0004e8f4] 33c0 000d 3de6            move.w     d0,$000D3DE6
[0004e8fa] 3f28 000e                 move.w     14(a0),-(a7)
[0004e8fe] 3f28 000c                 move.w     12(a0),-(a7)
[0004e902] 4267                      clr.w      -(a7)
[0004e904] 2279 000d 99d6            movea.l    _globl,a1
[0004e90a] 4242                      clr.w      d2
[0004e90c] 7201                      moveq.l    #1,d1
[0004e90e] 41f9 000d 3dd0            lea.l      topline,a0
[0004e914] 4240                      clr.w      d0
[0004e916] 4eb9 0006 b93c            jsr        mt_objc_draw
[0004e91c] 5c4f                      addq.w     #6,a7
[0004e91e] 2055                      movea.l    (a5),a0
[0004e920] 3f28 000e                 move.w     14(a0),-(a7)
[0004e924] 3f28 000c                 move.w     12(a0),-(a7)
[0004e928] 3f28 000a                 move.w     10(a0),-(a7)
[0004e92c] 3f28 0008                 move.w     8(a0),-(a7)
[0004e930] 3f28 000e                 move.w     14(a0),-(a7)
[0004e934] 3f28 000c                 move.w     12(a0),-(a7)
[0004e938] 3428 000a                 move.w     10(a0),d2
[0004e93c] 3228 0008                 move.w     8(a0),d1
[0004e940] 7003                      moveq.l    #3,d0
[0004e942] 2079 000d 99d6            movea.l    _globl,a0
[0004e948] 4eb9 0006 bde4            jsr        mt_form_dial
[0004e94e] 4fef 000c                 lea.l      12(a7),a7
Ash_prog_25:
[0004e952] 4eb9 0004 6d70            jsr        Aev_mess
[0004e958] 4a44                      tst.w      d4
[0004e95a] 671c                      beq.s      Ash_prog_26
[0004e95c] 2f39 000d 99d6            move.l     _globl,-(a7)
[0004e962] 226f 034c                 movea.l    844(a7),a1
[0004e966] 206f 0350                 movea.l    848(a7),a0
[0004e96a] 4242                      clr.w      d2
[0004e96c] 7201                      moveq.l    #1,d1
[0004e96e] 4240                      clr.w      d0
[0004e970] 4eb9 0006 da26            jsr        mt_shel_write
[0004e976] 584f                      addq.w     #4,a7
Ash_prog_26:
[0004e978] 7010                      moveq.l    #16,d0
[0004e97a] 4eb9 0005 1e1c            jsr        Awi_update
[0004e980] 2079 000d 99d6            movea.l    _globl,a0
[0004e986] 4eb9 0006 aa82            jsr        mt_appl_exit
[0004e98c] 4a44                      tst.w      d4
[0004e98e] 671c                      beq.s      Ash_prog_27
[0004e990] 2f2f 0386                 move.l     902(a7),-(a7)
[0004e994] 226f 034c                 movea.l    844(a7),a1
[0004e998] 206f 0350                 movea.l    848(a7),a0
[0004e99c] 4240                      clr.w      d0
[0004e99e] 4eb9 0007 2b16            jsr        Pexec
[0004e9a4] 584f                      addq.w     #4,a7
[0004e9a6] 2a00                      move.l     d0,d5
[0004e9a8] 6000 016e                 bra        Ash_prog_28
Ash_prog_27:
[0004e9ac] 2279 000d 99d6            movea.l    _globl,a1
[0004e9b2] 91c8                      suba.l     a0,a0
[0004e9b4] 303c 0100                 move.w     #$0100,d0
[0004e9b8] 4eb9 0006 c914            jsr        mt_graf_mouse
[0004e9be] 2055                      movea.l    (a5),a0
[0004e9c0] 3228 000a                 move.w     10(a0),d1
[0004e9c4] 3028 000c                 move.w     12(a0),d0
[0004e9c8] 4eb9 0004 d928            jsr        Abp_create
[0004e9ce] 2f48 0018                 move.l     a0,24(a7)
[0004e9d2] 2008                      move.l     a0,d0
[0004e9d4] 674a                      beq.s      Ash_prog_29
[0004e9d6] 4241                      clr.w      d1
[0004e9d8] 3f41 013c                 move.w     d1,316(a7)
[0004e9dc] 3f41 013a                 move.w     d1,314(a7)
[0004e9e0] 3f41 0134                 move.w     d1,308(a7)
[0004e9e4] 3f41 0132                 move.w     d1,306(a7)
[0004e9e8] 74ff                      moveq.l    #-1,d2
[0004e9ea] 2255                      movea.l    (a5),a1
[0004e9ec] d469 000c                 add.w      12(a1),d2
[0004e9f0] 3f42 013e                 move.w     d2,318(a7)
[0004e9f4] 3f42 0136                 move.w     d2,310(a7)
[0004e9f8] 72ff                      moveq.l    #-1,d1
[0004e9fa] d269 000a                 add.w      10(a1),d1
[0004e9fe] 3f41 0140                 move.w     d1,320(a7)
[0004ea02] 3f41 0138                 move.w     d1,312(a7)
[0004ea06] 2f00                      move.l     d0,-(a7)
[0004ea08] 43e9 026a                 lea.l      618(a1),a1
[0004ea0c] 41ef 0136                 lea.l      310(a7),a0
[0004ea10] 2855                      movea.l    (a5),a4
[0004ea12] 302c 0010                 move.w     16(a4),d0
[0004ea16] 7203                      moveq.l    #3,d1
[0004ea18] 4eb9 0006 65ce            jsr        vro_cpyfm
[0004ea1e] 584f                      addq.w     #4,a7
Ash_prog_29:
[0004ea20] 49ef 012a                 lea.l      298(a7),a4
[0004ea24] 4240                      clr.w      d0
[0004ea26] 3940 0002                 move.w     d0,2(a4)
[0004ea2a] 3880                      move.w     d0,(a4)
[0004ea2c] 2055                      movea.l    (a5),a0
[0004ea2e] 3228 0008                 move.w     8(a0),d1
[0004ea32] d268 000c                 add.w      12(a0),d1
[0004ea36] 5341                      subq.w     #1,d1
[0004ea38] 3941 0004                 move.w     d1,4(a4)
[0004ea3c] 3028 000a                 move.w     10(a0),d0
[0004ea40] d068 000e                 add.w      14(a0),d0
[0004ea44] 5340                      subq.w     #1,d0
[0004ea46] 3940 0006                 move.w     d0,6(a4)
[0004ea4a] 3028 0010                 move.w     16(a0),d0
[0004ea4e] 7201                      moveq.l    #1,d1
[0004ea50] 4eb9 0006 4da0            jsr        vswr_mode
[0004ea56] 4241                      clr.w      d1
[0004ea58] 2055                      movea.l    (a5),a0
[0004ea5a] 3028 0010                 move.w     16(a0),d0
[0004ea5e] 4eb9 0006 5390            jsr        vsf_interior
[0004ea64] 4241                      clr.w      d1
[0004ea66] 2055                      movea.l    (a5),a0
[0004ea68] 3028 0010                 move.w     16(a0),d0
[0004ea6c] 4eb9 0006 548c            jsr        vsf_perimeter
[0004ea72] 204c                      movea.l    a4,a0
[0004ea74] 2255                      movea.l    (a5),a1
[0004ea76] 3029 0010                 move.w     16(a1),d0
[0004ea7a] 4eb9 0006 455e            jsr        v_bar
[0004ea80] 41f9 000d 3fea            lea.l      $000D3FEA,a0
[0004ea86] 4eb9 0007 28d2            jsr        Cconws
[0004ea8c] 2f2f 0386                 move.l     902(a7),-(a7)
[0004ea90] 226f 034c                 movea.l    844(a7),a1
[0004ea94] 206f 0350                 movea.l    848(a7),a0
[0004ea98] 4240                      clr.w      d0
[0004ea9a] 4eb9 0007 2b16            jsr        Pexec
[0004eaa0] 584f                      addq.w     #4,a7
[0004eaa2] 2a00                      move.l     d0,d5
[0004eaa4] 41f9 000d 3fef            lea.l      $000D3FEF,a0
[0004eaaa] 4eb9 0007 28d2            jsr        Cconws
[0004eab0] 7002                      moveq.l    #2,d0
[0004eab2] 2055                      movea.l    (a5),a0
[0004eab4] 2268 023c                 movea.l    572(a0),a1
[0004eab8] c069 000e                 and.w      14(a1),d0
[0004eabc] 671c                      beq.s      Ash_prog_30
[0004eabe] 41f9 000d 3ff2            lea.l      $000D3FF2,a0
[0004eac4] 4eb9 0007 28d2            jsr        Cconws
Ash_prog_31:
[0004eaca] 4eb9 0007 28c4            jsr        Cconis
[0004ead0] 4a40                      tst.w      d0
[0004ead2] 67f6                      beq.s      Ash_prog_31
[0004ead4] 4eb9 0007 28b6            jsr        Cconin
Ash_prog_30:
[0004eada] 202f 0018                 move.l     24(a7),d0
[0004eade] 6726                      beq.s      Ash_prog_32
[0004eae0] 2055                      movea.l    (a5),a0
[0004eae2] 4868 026a                 pea.l      618(a0)
[0004eae6] 2240                      movea.l    d0,a1
[0004eae8] 41ef 0136                 lea.l      310(a7),a0
[0004eaec] 7203                      moveq.l    #3,d1
[0004eaee] 2855                      movea.l    (a5),a4
[0004eaf0] 302c 0010                 move.w     16(a4),d0
[0004eaf4] 4eb9 0006 65ce            jsr        vro_cpyfm
[0004eafa] 584f                      addq.w     #4,a7
[0004eafc] 206f 0018                 movea.l    24(a7),a0
[0004eb00] 4eb9 0004 d996            jsr        Abp_delete
Ash_prog_32:
[0004eb06] 2279 000d 99d6            movea.l    _globl,a1
[0004eb0c] 91c8                      suba.l     a0,a0
[0004eb0e] 303c 0101                 move.w     #$0101,d0
[0004eb12] 4eb9 0006 c914            jsr        mt_graf_mouse
Ash_prog_28:
[0004eb18] 2079 000d 99d6            movea.l    _globl,a0
[0004eb1e] 4eb9 0006 d6c6            jsr        mt_wind_new
[0004eb24] 2079 000d 99d6            movea.l    _globl,a0
[0004eb2a] 4eb9 0006 aa82            jsr        mt_appl_exit
[0004eb30] 2079 000d 99d6            movea.l    _globl,a0
[0004eb36] 4eb9 0006 a74c            jsr        mt_appl_init
[0004eb3c] 2055                      movea.l    (a5),a0
[0004eb3e] 3080                      move.w     d0,(a0)
[0004eb40] 7020                      moveq.l    #32,d0
[0004eb42] 4eb9 0005 1e1c            jsr        Awi_update
[0004eb48] 4267                      clr.w      -(a7)
[0004eb4a] 42a7                      clr.l      -(a7)
[0004eb4c] 720e                      moveq.l    #14,d1
[0004eb4e] 4240                      clr.w      d0
[0004eb50] 4eb9 0007 1656            jsr        wind_set
[0004eb56] 5c4f                      addq.w     #6,a7
[0004eb58] 2479 000d 3dc8            movea.l    Aroot_wi,a2
[0004eb5e] 302a 0020                 move.w     32(a2),d0
[0004eb62] 665c                      bne.s      Ash_prog_33
[0004eb64] 222a 0014                 move.l     20(a2),d1
[0004eb68] 6710                      beq.s      Ash_prog_34
[0004eb6a] 4267                      clr.w      -(a7)
[0004eb6c] 2f01                      move.l     d1,-(a7)
[0004eb6e] 4240                      clr.w      d0
[0004eb70] 720e                      moveq.l    #14,d1
[0004eb72] 4eb9 0007 1656            jsr        wind_set
[0004eb78] 5c4f                      addq.w     #6,a7
Ash_prog_34:
[0004eb7a] 2279 000d 99d6            movea.l    _globl,a1
[0004eb80] 7001                      moveq.l    #1,d0
[0004eb82] 206a 005e                 movea.l    94(a2),a0
[0004eb86] 4eb9 0006 b362            jsr        mt_menu_bar
[0004eb8c] 2055                      movea.l    (a5),a0
[0004eb8e] 3f28 000e                 move.w     14(a0),-(a7)
[0004eb92] 3f28 000c                 move.w     12(a0),-(a7)
[0004eb96] 3f28 000a                 move.w     10(a0),-(a7)
[0004eb9a] 3f28 0008                 move.w     8(a0),-(a7)
[0004eb9e] 3f28 000e                 move.w     14(a0),-(a7)
[0004eba2] 3f28 000c                 move.w     12(a0),-(a7)
[0004eba6] 3428 000a                 move.w     10(a0),d2
[0004ebaa] 3228 0008                 move.w     8(a0),d1
[0004ebae] 7003                      moveq.l    #3,d0
[0004ebb0] 2079 000d 99d6            movea.l    _globl,a0
[0004ebb6] 4eb9 0006 bde4            jsr        mt_form_dial
[0004ebbc] 4fef 000c                 lea.l      12(a7),a7
Ash_prog_33:
[0004ebc0] 7601                      moveq.l    #1,d3
[0004ebc2] 601a                      bra.s      Ash_prog_35
Ash_prog_37:
[0004ebc4] 3003                      move.w     d3,d0
[0004ebc6] e548                      lsl.w      #2,d0
[0004ebc8] 41ef 0148                 lea.l      328(a7),a0
[0004ebcc] 2470 0000                 movea.l    0(a0,d0.w),a2
[0004ebd0] 220a                      move.l     a2,d1
[0004ebd2] 6708                      beq.s      Ash_prog_36
[0004ebd4] 226a 000c                 movea.l    12(a2),a1
[0004ebd8] 204a                      movea.l    a2,a0
[0004ebda] 4e91                      jsr        (a1)
Ash_prog_36:
[0004ebdc] 5243                      addq.w     #1,d3
Ash_prog_35:
[0004ebde] b67c 0080                 cmp.w      #$0080,d3
[0004ebe2] 6de0                      blt.s      Ash_prog_37
[0004ebe4] 202f 0144                 move.l     324(a7),d0
[0004ebe8] 670a                      beq.s      Ash_prog_38
[0004ebea] 2040                      movea.l    d0,a0
[0004ebec] 2240                      movea.l    d0,a1
[0004ebee] 2269 006e                 movea.l    110(a1),a1
[0004ebf2] 4e91                      jsr        (a1)
Ash_prog_38:
[0004ebf4] 41d7                      lea.l      (a7),a0
[0004ebf6] 4eb9 0005 f532            jsr        Act_restore
[0004ebfc] 6000 01b2                 bra        Ash_prog_39
Ash_prog_21:
[0004ec00] 41f9 000d 3ee8            lea.l      $000D3EE8,a0
[0004ec06] 43ef 0352                 lea.l      850(a7),a1
[0004ec0a] 700f                      moveq.l    #15,d0
Ash_prog_40:
[0004ec0c] 12d8                      move.b     (a0)+,(a1)+
[0004ec0e] 51c8 fffc                 dbf        d0,Ash_prog_40
[0004ec12] 7c14                      moveq.l    #20,d6
[0004ec14] 97cb                      suba.l     a3,a3
[0004ec16] 6010                      bra.s      Ash_prog_41
Ash_prog_43:
[0004ec18] 7004                      moveq.l    #4,d0
[0004ec1a] c0ab 0002                 and.l      2(a3),d0
[0004ec1e] 6708                      beq.s      Ash_prog_41
[0004ec20] 7220                      moveq.l    #32,d1
[0004ec22] c26b 000c                 and.w      12(a3),d1
[0004ec26] 660e                      bne.s      Ash_prog_42
Ash_prog_41:
[0004ec28] 204b                      movea.l    a3,a0
[0004ec2a] 4eb9 0005 4250            jsr        Ash_nextdd
[0004ec30] 2648                      movea.l    a0,a3
[0004ec32] 200b                      move.l     a3,d0
[0004ec34] 66e2                      bne.s      Ash_prog_43
Ash_prog_42:
[0004ec36] 200b                      move.l     a3,d0
[0004ec38] 674c                      beq.s      Ash_prog_5
[0004ec3a] 206f 034c                 movea.l    844(a7),a0
[0004ec3e] 4eb9 0007 69b0            jsr        strlen
[0004ec44] 5280                      addq.l     #1,d0
[0004ec46] 4eb9 0004 7f44            jsr        Ax_glmalloc
[0004ec4c] 23c8 000d 3da8            move.l     a0,exec_path
[0004ec52] 6732                      beq.s      Ash_prog_5
[0004ec54] 226f 034c                 movea.l    844(a7),a1
[0004ec58] 4eb9 0007 6950            jsr        strcpy
[0004ec5e] 202f 0348                 move.l     840(a7),d0
[0004ec62] 673a                      beq.s      Ash_prog_44
[0004ec64] 2040                      movea.l    d0,a0
[0004ec66] 4eb9 0007 69b0            jsr        strlen
[0004ec6c] 4eb9 0004 7f44            jsr        Ax_glmalloc
[0004ec72] 23c8 000d 3dac            move.l     a0,exec_com
[0004ec78] 6612                      bne.s      Ash_prog_45
[0004ec7a] 2079 000d 3da8            movea.l    exec_path,a0
[0004ec80] 4eb9 0004 7fa6            jsr        Ax_glfree
Ash_prog_5:
[0004ec86] 70ff                      moveq.l    #-1,d0
[0004ec88] 6000 013a                 bra        Ash_prog_18
Ash_prog_45:
[0004ec8c] 226f 0348                 movea.l    840(a7),a1
[0004ec90] 5249                      addq.w     #1,a1
[0004ec92] 2079 000d 3dac            movea.l    exec_com,a0
[0004ec98] 4eb9 0007 6950            jsr        strcpy
Ash_prog_44:
[0004ec9e] 7010                      moveq.l    #16,d0
[0004eca0] 4eb9 0005 1e1c            jsr        Awi_update
[0004eca6] 4eb9 0004 6d70            jsr        Aev_mess
[0004ecac] 3f7c 4722 0352            move.w     #$4722,850(a7)
[0004ecb2] 2055                      movea.l    (a5),a0
[0004ecb4] 3f50 0354                 move.w     (a0),852(a7)
[0004ecb8] 2039 000d 3da8            move.l     exec_path,d0
[0004ecbe] 7210                      moveq.l    #16,d1
[0004ecc0] e2a0                      asr.l      d1,d0
[0004ecc2] 3f40 0358                 move.w     d0,856(a7)
[0004ecc6] 74ff                      moveq.l    #-1,d2
[0004ecc8] c479 000d 3daa            and.w      $000D3DAA,d2
[0004ecce] 3f42 035a                 move.w     d2,858(a7)
[0004ecd2] 2639 000d 3dac            move.l     exec_com,d3
[0004ecd8] e2a3                      asr.l      d1,d3
[0004ecda] 3f43 035c                 move.w     d3,860(a7)
[0004ecde] 78ff                      moveq.l    #-1,d4
[0004ece0] c879 000d 3dae            and.w      $000D3DAE,d4
[0004ece6] 3f44 035e                 move.w     d4,862(a7)
[0004ecea] 2279 000d 99d6            movea.l    _globl,a1
[0004ecf0] 41ef 0352                 lea.l      850(a7),a0
[0004ecf4] 3013                      move.w     (a3),d0
[0004ecf6] 7210                      moveq.l    #16,d1
[0004ecf8] 4eb9 0006 a818            jsr        mt_appl_write
[0004ecfe] 4a40                      tst.w      d0
[0004ed00] 6700 00a4                 beq        Ash_prog_46
[0004ed04] 47ef 0350                 lea.l      848(a7),a3
[0004ed08] 6000 0094                 bra        Ash_prog_47
Ash_prog_54:
[0004ed0c] 2f39 000d 99d6            move.l     _globl,-(a7)
[0004ed12] 4853                      pea.l      (a3)
[0004ed14] 4853                      pea.l      (a3)
[0004ed16] 4853                      pea.l      (a3)
[0004ed18] 4853                      pea.l      (a3)
[0004ed1a] 4853                      pea.l      (a3)
[0004ed1c] 4878 01f4                 pea.l      ($000001F4).w
[0004ed20] 4267                      clr.w      -(a7)
[0004ed22] 4267                      clr.w      -(a7)
[0004ed24] 4267                      clr.w      -(a7)
[0004ed26] 4267                      clr.w      -(a7)
[0004ed28] 4267                      clr.w      -(a7)
[0004ed2a] 4267                      clr.w      -(a7)
[0004ed2c] 4267                      clr.w      -(a7)
[0004ed2e] 4267                      clr.w      -(a7)
[0004ed30] 4267                      clr.w      -(a7)
[0004ed32] 4267                      clr.w      -(a7)
[0004ed34] 4267                      clr.w      -(a7)
[0004ed36] 224b                      movea.l    a3,a1
[0004ed38] 41ef 0384                 lea.l      900(a7),a0
[0004ed3c] 4242                      clr.w      d2
[0004ed3e] 4241                      clr.w      d1
[0004ed40] 7030                      moveq.l    #48,d0
[0004ed42] 4eb9 0006 af70            jsr        mt_evnt_multi
[0004ed48] 4fef 0032                 lea.l      50(a7),a7
[0004ed4c] c07c 0010                 and.w      #$0010,d0
[0004ed50] 674a                      beq.s      Ash_prog_48
[0004ed52] 0c6f 0029 0352            cmpi.w     #$0029,850(a7)
[0004ed58] 6612                      bne.s      Ash_prog_49
[0004ed5a] 91c8                      suba.l     a0,a0
[0004ed5c] 4eb9 0005 4fcc            jsr        Aev_GetAcClose
[0004ed62] 4eb9 0004 63f4            jsr        Aev_unhidepointer
[0004ed68] 7a00                      moveq.l    #0,d5
[0004ed6a] 603c                      bra.s      Ash_prog_50
Ash_prog_49:
[0004ed6c] 0c6f 4723 0352            cmpi.w     #$4723,850(a7)
[0004ed72] 660e                      bne.s      Ash_prog_51
[0004ed74] 302f 0358                 move.w     856(a7),d0
[0004ed78] 6604                      bne.s      Ash_prog_52
[0004ed7a] 7aff                      moveq.l    #-1,d5
[0004ed7c] 6002                      bra.s      Ash_prog_53
Ash_prog_52:
[0004ed7e] 7a00                      moveq.l    #0,d5
Ash_prog_53:
[0004ed80] 6026                      bra.s      Ash_prog_50
Ash_prog_51:
[0004ed82] 7020                      moveq.l    #32,d0
[0004ed84] 4eb9 0005 1e1c            jsr        Awi_update
[0004ed8a] 41ef 0352                 lea.l      850(a7),a0
[0004ed8e] 4eb9 0005 3ade            jsr        Aev_message
[0004ed94] 7010                      moveq.l    #16,d0
[0004ed96] 4eb9 0005 1e1c            jsr        Awi_update
Ash_prog_48:
[0004ed9c] 5346                      subq.w     #1,d6
Ash_prog_47:
[0004ed9e] 4a46                      tst.w      d6
[0004eda0] 6600 ff6a                 bne        Ash_prog_54
[0004eda4] 6002                      bra.s      Ash_prog_50
Ash_prog_46:
[0004eda6] 7aff                      moveq.l    #-1,d5
Ash_prog_50:
[0004eda8] 7020                      moveq.l    #32,d0
[0004edaa] 4eb9 0005 1e1c            jsr        Awi_update
Ash_prog_39:
[0004edb0] 4eb9 0004 6d70            jsr        Aev_mess
[0004edb6] 4eb9 0004 ad60            jsr        Aev_release
[0004edbc] 4eb9 0004 b33c            jsr        Awi_diastart
[0004edc2] 2005                      move.l     d5,d0
Ash_prog_18:
[0004edc4] 4fef 0362                 lea.l      866(a7),a7
[0004edc8] 4cdf 3c78                 movem.l    (a7)+,d3-d6/a2-a5
[0004edcc] 4e75                      rts

Awi_catch:
[0004edce] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[0004edd2] 514f                      subq.w     #8,a7
[0004edd4] 2448                      movea.l    a0,a2
[0004edd6] 49f9 000d 3d9c            lea.l      cycle,a4
[0004eddc] 41ec 015c                 lea.l      348(a4),a0
[0004ede0] 43d7                      lea.l      (a7),a1
[0004ede2] 12d8                      move.b     (a0)+,(a1)+
[0004ede4] 12d8                      move.b     (a0)+,(a1)+
[0004ede6] 12d8                      move.b     (a0)+,(a1)+
[0004ede8] 12d8                      move.b     (a0)+,(a1)+
[0004edea] 12d8                      move.b     (a0)+,(a1)+
[0004edec] 12d8                      move.b     (a0)+,(a1)+
[0004edee] 12d8                      move.b     (a0)+,(a1)+
[0004edf0] 12d8                      move.b     (a0)+,(a1)+
[0004edf2] 302a 0022                 move.w     34(a2),d0
[0004edf6] c07c 2000                 and.w      #$2000,d0
[0004edfa] 6734                      beq.s      Awi_catch_1
[0004edfc] 2f39 000d 99d6            move.l     _globl,-(a7)
[0004ee02] 486f 000a                 pea.l      10(a7)
[0004ee06] 486f 000c                 pea.l      12(a7)
[0004ee0a] 43ef 000e                 lea.l      14(a7),a1
[0004ee0e] 41ef 000c                 lea.l      12(a7),a0
[0004ee12] 700b                      moveq.l    #11,d0
[0004ee14] 4eb9 0006 aad2            jsr        mt_appl_getinfo
[0004ee1a] 4fef 000c                 lea.l      12(a7),a7
[0004ee1e] 4a40                      tst.w      d0
[0004ee20] 6708                      beq.s      Awi_catch_2
[0004ee22] 7006                      moveq.l    #6,d0
[0004ee24] c06f 0004                 and.w      4(a7),d0
[0004ee28] 6606                      bne.s      Awi_catch_1
Awi_catch_2:
[0004ee2a] 026a dfff 0054            andi.w     #$DFFF,84(a2)
Awi_catch_1:
[0004ee30] 302a 0022                 move.w     34(a2),d0
[0004ee34] c07c 1000                 and.w      #$1000,d0
[0004ee38] 6734                      beq.s      Awi_catch_3
[0004ee3a] 2f39 000d 99d6            move.l     _globl,-(a7)
[0004ee40] 486f 000a                 pea.l      10(a7)
[0004ee44] 486f 000c                 pea.l      12(a7)
[0004ee48] 43ef 000e                 lea.l      14(a7),a1
[0004ee4c] 41ef 000c                 lea.l      12(a7),a0
[0004ee50] 700b                      moveq.l    #11,d0
[0004ee52] 4eb9 0006 aad2            jsr        mt_appl_getinfo
[0004ee58] 4fef 000c                 lea.l      12(a7),a7
[0004ee5c] 4a40                      tst.w      d0
[0004ee5e] 6708                      beq.s      Awi_catch_4
[0004ee60] 7008                      moveq.l    #8,d0
[0004ee62] c06f 0004                 and.w      4(a7),d0
[0004ee66] 6606                      bne.s      Awi_catch_3
Awi_catch_4:
[0004ee68] 026a efff 0054            andi.w     #$EFFF,84(a2)
Awi_catch_3:
[0004ee6e] 4267                      clr.w      -(a7)
[0004ee70] 4267                      clr.w      -(a7)
[0004ee72] 2079 000d 99d6            movea.l    _globl,a0
[0004ee78] 4242                      clr.w      d2
[0004ee7a] 4241                      clr.w      d1
[0004ee7c] 302a 0022                 move.w     34(a2),d0
[0004ee80] 4eb9 0006 d0c6            jsr        mt_wind_create
[0004ee86] 584f                      addq.w     #4,a7
[0004ee88] 3600                      move.w     d0,d3
[0004ee8a] b07c 0080                 cmp.w      #$0080,d0
[0004ee8e] 6c00 0090                 bge        Awi_catch_5
[0004ee92] 4a40                      tst.w      d0
[0004ee94] 6a68                      bpl.s      Awi_catch_6
[0004ee96] 3814                      move.w     (a4),d4
Awi_catch_8:
[0004ee98] 4bf9 0010 6bb6            lea.l      gemmap,a5
[0004ee9e] 7001                      moveq.l    #1,d0
[0004eea0] d054                      add.w      (a4),d0
[0004eea2] c07c 007f                 and.w      #$007F,d0
[0004eea6] 3880                      move.w     d0,(a4)
[0004eea8] e548                      lsl.w      #2,d0
[0004eeaa] 2675 0000                 movea.l    0(a5,d0.w),a3
[0004eeae] 3214                      move.w     (a4),d1
[0004eeb0] 6748                      beq.s      Awi_catch_7
[0004eeb2] 240b                      move.l     a3,d2
[0004eeb4] 6744                      beq.s      Awi_catch_7
[0004eeb6] 7004                      moveq.l    #4,d0
[0004eeb8] c06b 0054                 and.w      84(a3),d0
[0004eebc] 663c                      bne.s      Awi_catch_7
[0004eebe] 322b 0056                 move.w     86(a3),d1
[0004eec2] c27c 0400                 and.w      #$0400,d1
[0004eec6] 6632                      bne.s      Awi_catch_7
[0004eec8] 204b                      movea.l    a3,a0
[0004eeca] 4eb9 0005 013e            jsr        Awi_closed
[0004eed0] 93c9                      suba.l     a1,a1
[0004eed2] 7003                      moveq.l    #3,d0
[0004eed4] 204b                      movea.l    a3,a0
[0004eed6] 2c6b 0004                 movea.l    4(a3),a6
[0004eeda] 4e96                      jsr        (a6)
[0004eedc] 4267                      clr.w      -(a7)
[0004eede] 4267                      clr.w      -(a7)
[0004eee0] 2079 000d 99d6            movea.l    _globl,a0
[0004eee6] 4242                      clr.w      d2
[0004eee8] 4241                      clr.w      d1
[0004eeea] 302a 0022                 move.w     34(a2),d0
[0004eeee] 4eb9 0006 d0c6            jsr        mt_wind_create
[0004eef4] 584f                      addq.w     #4,a7
[0004eef6] 3600                      move.w     d0,d3
[0004eef8] 6004                      bra.s      Awi_catch_6
Awi_catch_7:
[0004eefa] b854                      cmp.w      (a4),d4
[0004eefc] 669a                      bne.s      Awi_catch_8
Awi_catch_6:
[0004eefe] 4a43                      tst.w      d3
[0004ef00] 6b0a                      bmi.s      Awi_catch_9
[0004ef02] b67c 0080                 cmp.w      #$0080,d3
[0004ef06] 6e04                      bgt.s      Awi_catch_9
[0004ef08] 3003                      move.w     d3,d0
[0004ef0a] 6016                      bra.s      Awi_catch_10
Awi_catch_9:
[0004ef0c] 2279 000d 99d6            movea.l    _globl,a1
[0004ef12] 41f9 000c 974b            lea.l      _A_ERR_WINDOW,a0
[0004ef18] 7001                      moveq.l    #1,d0
[0004ef1a] 4eb9 0006 be76            jsr        mt_form_alert
Awi_catch_5:
[0004ef20] 70ff                      moveq.l    #-1,d0
Awi_catch_10:
[0004ef22] 504f                      addq.w     #8,a7
[0004ef24] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[0004ef28] 4e75                      rts

Awi_list:
[0004ef2a] 2f0a                      move.l     a2,-(a7)
[0004ef2c] 4240                      clr.w      d0
Awi_list_4:
[0004ef2e] 43f9 0010 6fea            lea.l      _ACSv_winds,a1
[0004ef34] 41f9 000d 3f00            lea.l      next,a0
[0004ef3a] 3210                      move.w     (a0),d1
[0004ef3c] b269 0604                 cmp.w      1540(a1),d1
[0004ef40] 6f0c                      ble.s      Awi_list_1
[0004ef42] 4250                      clr.w      (a0)
[0004ef44] 4a40                      tst.w      d0
[0004ef46] 6704                      beq.s      Awi_list_2
[0004ef48] 91c8                      suba.l     a0,a0
[0004ef4a] 6012                      bra.s      Awi_list_3
Awi_list_2:
[0004ef4c] 5240                      addq.w     #1,d0
Awi_list_1:
[0004ef4e] 3210                      move.w     (a0),d1
[0004ef50] e549                      lsl.w      #2,d1
[0004ef52] 2471 1000                 movea.l    0(a1,d1.w),a2
[0004ef56] 5250                      addq.w     #1,(a0)
[0004ef58] 220a                      move.l     a2,d1
[0004ef5a] 67d2                      beq.s      Awi_list_4
[0004ef5c] 204a                      movea.l    a2,a0
Awi_list_3:
[0004ef5e] 245f                      movea.l    (a7)+,a2
[0004ef60] 4e75                      rts

Awi_sendall:
[0004ef62] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0004ef66] 3800                      move.w     d0,d4
[0004ef68] 2848                      movea.l    a0,a4
[0004ef6a] 45f9 0010 6fea            lea.l      _ACSv_winds,a2
[0004ef70] 362a 0604                 move.w     1540(a2),d3
[0004ef74] 601a                      bra.s      Awi_sendall_1
Awi_sendall_3:
[0004ef76] 3003                      move.w     d3,d0
[0004ef78] e548                      lsl.w      #2,d0
[0004ef7a] 2672 0000                 movea.l    0(a2,d0.w),a3
[0004ef7e] 220b                      move.l     a3,d1
[0004ef80] 670c                      beq.s      Awi_sendall_2
[0004ef82] 224c                      movea.l    a4,a1
[0004ef84] 204b                      movea.l    a3,a0
[0004ef86] 2a6b 0004                 movea.l    4(a3),a5
[0004ef8a] 3004                      move.w     d4,d0
[0004ef8c] 4e95                      jsr        (a5)
Awi_sendall_2:
[0004ef8e] 5343                      subq.w     #1,d3
Awi_sendall_1:
[0004ef90] 4a43                      tst.w      d3
[0004ef92] 6ae2                      bpl.s      Awi_sendall_3
[0004ef94] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0004ef98] 4e75                      rts

Awi_lateupdate:
[0004ef9a] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0004ef9e] 45f9 0010 6fea            lea.l      _ACSv_winds,a2
[0004efa4] 362a 0604                 move.w     1540(a2),d3
[0004efa8] 6052                      bra.s      Awi_lateupdate_1
Awi_lateupdate_5:
[0004efaa] 3003                      move.w     d3,d0
[0004efac] e548                      lsl.w      #2,d0
[0004efae] 2672 0000                 movea.l    0(a2,d0.w),a3
[0004efb2] 220b                      move.l     a3,d1
[0004efb4] 6744                      beq.s      Awi_lateupdate_2
[0004efb6] 7420                      moveq.l    #32,d2
[0004efb8] c46b 0056                 and.w      86(a3),d2
[0004efbc] 673c                      beq.s      Awi_lateupdate_2
[0004efbe] 026b ffdf 0056            andi.w     #$FFDF,86(a3)
[0004efc4] 342b 0020                 move.w     32(a3),d2
[0004efc8] 6b24                      bmi.s      Awi_lateupdate_3
[0004efca] 026b fffb 0056            andi.w     #$FFFB,86(a3)
[0004efd0] 204b                      movea.l    a3,a0
[0004efd2] 226b 0010                 movea.l    16(a3),a1
[0004efd6] 4e91                      jsr        (a1)
[0004efd8] 7010                      moveq.l    #16,d0
[0004efda] c06b 0056                 and.w      86(a3),d0
[0004efde] 6714                      beq.s      Awi_lateupdate_4
[0004efe0] 43eb 0024                 lea.l      36(a3),a1
[0004efe4] 204b                      movea.l    a3,a0
[0004efe6] 286b 0086                 movea.l    134(a3),a4
[0004efea] 4e94                      jsr        (a4)
[0004efec] 6006                      bra.s      Awi_lateupdate_4
Awi_lateupdate_3:
[0004efee] 006b 0004 0056            ori.w      #$0004,86(a3)
Awi_lateupdate_4:
[0004eff4] 4eb9 0004 7ef6            jsr        Ax_release
Awi_lateupdate_2:
[0004effa] 5343                      subq.w     #1,d3
Awi_lateupdate_1:
[0004effc] 4a43                      tst.w      d3
[0004effe] 6aaa                      bpl.s      Awi_lateupdate_5
[0004f000] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0004f004] 4e75                      rts

Awi_up:
[0004f006] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0004f00a] 554f                      subq.w     #2,a7
[0004f00c] 45f9 000d 3d9c            lea.l      cycle,a2
[0004f012] 3612                      move.w     (a2),d3
Awi_up_3:
[0004f014] 47f9 0010 6bb6            lea.l      gemmap,a3
[0004f01a] 7001                      moveq.l    #1,d0
[0004f01c] d052                      add.w      (a2),d0
[0004f01e] c07c 007f                 and.w      #$007F,d0
[0004f022] 3480                      move.w     d0,(a2)
[0004f024] e548                      lsl.w      #2,d0
[0004f026] 2873 0000                 movea.l    0(a3,d0.w),a4
[0004f02a] 3212                      move.w     (a2),d1
[0004f02c] 672e                      beq.s      Awi_up_1
[0004f02e] 240c                      move.l     a4,d2
[0004f030] 672a                      beq.s      Awi_up_1
[0004f032] 42a7                      clr.l      -(a7)
[0004f034] 42a7                      clr.l      -(a7)
[0004f036] 42a7                      clr.l      -(a7)
[0004f038] 486f 000c                 pea.l      12(a7)
[0004f03c] 4240                      clr.w      d0
[0004f03e] 720a                      moveq.l    #10,d1
[0004f040] 4eb9 0007 14ea            jsr        wind_get
[0004f046] 4fef 0010                 lea.l      16(a7),a7
[0004f04a] 302c 0020                 move.w     32(a4),d0
[0004f04e] b057                      cmp.w      (a7),d0
[0004f050] 670a                      beq.s      Awi_up_1
[0004f052] 204c                      movea.l    a4,a0
[0004f054] 226c 006e                 movea.l    110(a4),a1
[0004f058] 4e91                      jsr        (a1)
[0004f05a] 6004                      bra.s      Awi_up_2
Awi_up_1:
[0004f05c] b652                      cmp.w      (a2),d3
[0004f05e] 66b4                      bne.s      Awi_up_3
Awi_up_2:
[0004f060] 544f                      addq.w     #2,a7
[0004f062] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0004f066] 4e75                      rts

Awi_down:
[0004f068] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0004f06c] 554f                      subq.w     #2,a7
[0004f06e] 45f9 000d 3d9c            lea.l      cycle,a2
[0004f074] 3612                      move.w     (a2),d3
Awi_down_3:
[0004f076] 47f9 0010 6bb6            lea.l      gemmap,a3
[0004f07c] 70ff                      moveq.l    #-1,d0
[0004f07e] d052                      add.w      (a2),d0
[0004f080] c07c 007f                 and.w      #$007F,d0
[0004f084] 3480                      move.w     d0,(a2)
[0004f086] e548                      lsl.w      #2,d0
[0004f088] 2873 0000                 movea.l    0(a3,d0.w),a4
[0004f08c] 3212                      move.w     (a2),d1
[0004f08e] 672e                      beq.s      Awi_down_1
[0004f090] 240c                      move.l     a4,d2
[0004f092] 672a                      beq.s      Awi_down_1
[0004f094] 42a7                      clr.l      -(a7)
[0004f096] 42a7                      clr.l      -(a7)
[0004f098] 42a7                      clr.l      -(a7)
[0004f09a] 486f 000c                 pea.l      12(a7)
[0004f09e] 4240                      clr.w      d0
[0004f0a0] 720a                      moveq.l    #10,d1
[0004f0a2] 4eb9 0007 14ea            jsr        wind_get
[0004f0a8] 4fef 0010                 lea.l      16(a7),a7
[0004f0ac] 302c 0020                 move.w     32(a4),d0
[0004f0b0] b057                      cmp.w      (a7),d0
[0004f0b2] 670a                      beq.s      Awi_down_1
[0004f0b4] 204c                      movea.l    a4,a0
[0004f0b6] 226c 006e                 movea.l    110(a4),a1
[0004f0ba] 4e91                      jsr        (a1)
[0004f0bc] 6004                      bra.s      Awi_down_2
Awi_down_1:
[0004f0be] b652                      cmp.w      (a2),d3
[0004f0c0] 66b4                      bne.s      Awi_down_3
Awi_down_2:
[0004f0c2] 544f                      addq.w     #2,a7
[0004f0c4] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0004f0c8] 4e75                      rts

Awi_show:
[0004f0ca] 2f0a                      move.l     a2,-(a7)
[0004f0cc] 2448                      movea.l    a0,a2
[0004f0ce] 302a 0020                 move.w     32(a2),d0
[0004f0d2] 6f08                      ble.s      Awi_show_1
[0004f0d4] 226a 006e                 movea.l    110(a2),a1
[0004f0d8] 4e91                      jsr        (a1)
[0004f0da] 6008                      bra.s      Awi_show_2
Awi_show_1:
[0004f0dc] 204a                      movea.l    a2,a0
[0004f0de] 226a 000c                 movea.l    12(a2),a1
[0004f0e2] 4e91                      jsr        (a1)
Awi_show_2:
[0004f0e4] 204a                      movea.l    a2,a0
[0004f0e6] 6100 f39a                 bsr        Awi_setontop
[0004f0ea] 245f                      movea.l    (a7)+,a2
[0004f0ec] 4e75                      rts

Awi_selfcreate:
[0004f0ee] 2f0a                      move.l     a2,-(a7)
[0004f0f0] 2448                      movea.l    a0,a2
[0004f0f2] 200a                      move.l     a2,d0
[0004f0f4] 6708                      beq.s      Awi_selfcreate_1
[0004f0f6] 4eb9 0004 f41a            jsr        Awi_create
[0004f0fc] 6002                      bra.s      Awi_selfcreate_2
Awi_selfcreate_1:
[0004f0fe] 91c8                      suba.l     a0,a0
Awi_selfcreate_2:
[0004f100] 245f                      movea.l    (a7)+,a2
[0004f102] 4e75                      rts

MakeModernMenu:
[0004f104] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0004f108] 4fef ffe2                 lea.l      -30(a7),a7
[0004f10c] 2448                      movea.l    a0,a2
[0004f10e] 3ebc 0001                 move.w     #$0001,(a7)
[0004f112] 0c79 ffff 000d 3f42       cmpi.w     #$FFFF,box_trans
[0004f11a] 6640                      bne.s      MakeModernMenu_1
[0004f11c] 47ef 001c                 lea.l      28(a7),a3
[0004f120] 2f39 000d 99d6            move.l     _globl,-(a7)
[0004f126] 4853                      pea.l      (a3)
[0004f128] 4853                      pea.l      (a3)
[0004f12a] 224b                      movea.l    a3,a1
[0004f12c] 41ef 0026                 lea.l      38(a7),a0
[0004f130] 700d                      moveq.l    #13,d0
[0004f132] 4eb9 0006 aad2            jsr        mt_appl_getinfo
[0004f138] 4fef 000c                 lea.l      12(a7),a7
[0004f13c] 4a40                      tst.w      d0
[0004f13e] 6716                      beq.s      MakeModernMenu_2
[0004f140] 7001                      moveq.l    #1,d0
[0004f142] c06f 001a                 and.w      26(a7),d0
[0004f146] 6704                      beq.s      MakeModernMenu_3
[0004f148] 7201                      moveq.l    #1,d1
[0004f14a] 6002                      bra.s      MakeModernMenu_4
MakeModernMenu_3:
[0004f14c] 4241                      clr.w      d1
MakeModernMenu_4:
[0004f14e] 33c1 000d 3f42            move.w     d1,box_trans
[0004f154] 6006                      bra.s      MakeModernMenu_1
MakeModernMenu_2:
[0004f156] 4279 000d 3f42            clr.w      box_trans
MakeModernMenu_1:
[0004f15c] 3039 000d 3f42            move.w     box_trans,d0
[0004f162] 6732                      beq.s      MakeModernMenu_5
[0004f164] 0c6a 0014 0006            cmpi.w     #$0014,6(a2)
[0004f16a] 662a                      bne.s      MakeModernMenu_5
[0004f16c] 026a fff0 000e            andi.w     #$FFF0,14(a2)
[0004f172] 006a 0008 000e            ori.w      #$0008,14(a2)
[0004f178] 026a ff8f 000e            andi.w     #$FF8F,14(a2)
[0004f17e] 006a 0070 000e            ori.w      #$0070,14(a2)
[0004f184] 026a ff7f 000e            andi.w     #$FF7F,14(a2)
[0004f18a] 006a 0080 000e            ori.w      #$0080,14(a2)
[0004f190] 006a 0400 0008            ori.w      #$0400,8(a2)
MakeModernMenu_5:
[0004f196] 7008                      moveq.l    #8,d0
[0004f198] c06a 000a                 and.w      10(a2),d0
[0004f19c] 6700 00d0                 beq        MakeModernMenu_6
[0004f1a0] 0c6a 001c 0006            cmpi.w     #$001C,6(a2)
[0004f1a6] 6600 00c6                 bne        MakeModernMenu_6
[0004f1aa] 266a 000c                 movea.l    12(a2),a3
[0004f1ae] 204b                      movea.l    a3,a0
[0004f1b0] 4eb9 0004 3a92            jsr        Ast_isEmpty
[0004f1b6] 4a40                      tst.w      d0
[0004f1b8] 6704                      beq.s      MakeModernMenu_7
[0004f1ba] 4243                      clr.w      d3
[0004f1bc] 601a                      bra.s      MakeModernMenu_8
MakeModernMenu_7:
[0004f1be] 7601                      moveq.l    #1,d3
[0004f1c0] 600e                      bra.s      MakeModernMenu_9
MakeModernMenu_12:
[0004f1c2] 0c13 002d                 cmpi.b     #$2D,(a3)
[0004f1c6] 6604                      bne.s      MakeModernMenu_10
[0004f1c8] 7601                      moveq.l    #1,d3
[0004f1ca] 6002                      bra.s      MakeModernMenu_11
MakeModernMenu_10:
[0004f1cc] 4243                      clr.w      d3
MakeModernMenu_11:
[0004f1ce] 524b                      addq.w     #1,a3
MakeModernMenu_9:
[0004f1d0] 4a43                      tst.w      d3
[0004f1d2] 6704                      beq.s      MakeModernMenu_8
[0004f1d4] 1013                      move.b     (a3),d0
[0004f1d6] 66ea                      bne.s      MakeModernMenu_12
MakeModernMenu_8:
[0004f1d8] 4a43                      tst.w      d3
[0004f1da] 6700 0092                 beq        MakeModernMenu_6
[0004f1de] 2079 0010 1f12            movea.l    ACSblk,a0
[0004f1e4] 0c68 0010 001a            cmpi.w     #$0010,26(a0)
[0004f1ea] 6d10                      blt.s      MakeModernMenu_13
[0004f1ec] 41f9 000d 3f22            lea.l      dis_arrow_col,a0
[0004f1f2] 4eb9 0004 a1f0            jsr        Aus_create
[0004f1f8] 2848                      movea.l    a0,a4
[0004f1fa] 600e                      bra.s      MakeModernMenu_14
MakeModernMenu_13:
[0004f1fc] 41f9 000d 3f02            lea.l      dis_arrow_mon,a0
[0004f202] 4eb9 0004 a1f0            jsr        Aus_create
[0004f208] 2848                      movea.l    a0,a4
MakeModernMenu_14:
[0004f20a] 200c                      move.l     a4,d0
[0004f20c] 6760                      beq.s      MakeModernMenu_6
[0004f20e] 224a                      movea.l    a2,a1
[0004f210] 41ef 0002                 lea.l      2(a7),a0
[0004f214] 7018                      moveq.l    #24,d0
[0004f216] 4eb9 0007 6f44            jsr        memcpy
[0004f21c] 357c 0018 0006            move.w     #$0018,6(a2)
[0004f222] 254c 000c                 move.l     a4,12(a2)
[0004f226] 202c 0008                 move.l     8(a4),d0
[0004f22a] 670c                      beq.s      MakeModernMenu_15
[0004f22c] 43d7                      lea.l      (a7),a1
[0004f22e] 204a                      movea.l    a2,a0
[0004f230] 2640                      movea.l    d0,a3
[0004f232] 7001                      moveq.l    #1,d0
[0004f234] 4e93                      jsr        (a3)
[0004f236] 6004                      bra.s      MakeModernMenu_16
MakeModernMenu_15:
[0004f238] 3ebc 0001                 move.w     #$0001,(a7)
MakeModernMenu_16:
[0004f23c] 0c57 ffff                 cmpi.w     #$FFFF,(a7)
[0004f240] 6716                      beq.s      MakeModernMenu_17
[0004f242] 302f 000c                 move.w     12(a7),d0
[0004f246] c07c 2000                 and.w      #$2000,d0
[0004f24a] 6622                      bne.s      MakeModernMenu_6
[0004f24c] 206f 000e                 movea.l    14(a7),a0
[0004f250] 4eb9 0004 371c            jsr        Ast_delete
[0004f256] 6016                      bra.s      MakeModernMenu_6
MakeModernMenu_17:
[0004f258] 204c                      movea.l    a4,a0
[0004f25a] 4eb9 0004 a238            jsr        Aus_delete
[0004f260] 7018                      moveq.l    #24,d0
[0004f262] 43ef 0002                 lea.l      2(a7),a1
[0004f266] 204a                      movea.l    a2,a0
[0004f268] 4eb9 0007 6f44            jsr        memcpy
MakeModernMenu_6:
[0004f26e] 7008                      moveq.l    #8,d0
[0004f270] c06a 000a                 and.w      10(a2),d0
[0004f274] 6736                      beq.s      MakeModernMenu_18
[0004f276] 0c6a 0018 0006            cmpi.w     #$0018,6(a2)
[0004f27c] 662e                      bne.s      MakeModernMenu_18
[0004f27e] 206a 000c                 movea.l    12(a2),a0
[0004f282] 2250                      movea.l    (a0),a1
[0004f284] b3fc 0005 b212            cmpa.l     #A_arrows,a1
[0004f28a] 6620                      bne.s      MakeModernMenu_18
[0004f28c] 0ca8 2209 0001 0004       cmpi.l     #$22090001,4(a0)
[0004f294] 6616                      bne.s      MakeModernMenu_18
[0004f296] 2679 0010 1f12            movea.l    ACSblk,a3
[0004f29c] 0c6b 0010 001a            cmpi.w     #$0010,26(a3)
[0004f2a2] 6d08                      blt.s      MakeModernMenu_18
[0004f2a4] 217c 2201 0009 0004       move.l     #$22010009,4(a0)
MakeModernMenu_18:
[0004f2ac] 7020                      moveq.l    #32,d0
[0004f2ae] 204a                      movea.l    a2,a0
[0004f2b0] 45ea 0018                 lea.l      24(a2),a2
[0004f2b4] c068 0008                 and.w      8(a0),d0
[0004f2b8] 6700 fea2                 beq        MakeModernMenu_1
[0004f2bc] 4fef 001e                 lea.l      30(a7),a7
[0004f2c0] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0004f2c4] 4e75                      rts

MakeOldMenu:
[0004f2c6] 2f0a                      move.l     a2,-(a7)
[0004f2c8] 2f0b                      move.l     a3,-(a7)
[0004f2ca] 2448                      movea.l    a0,a2
[0004f2cc] 6100 f33a                 bsr        Awi_root
[0004f2d0] 224a                      movea.l    a2,a1
[0004f2d2] 605e                      bra.s      MakeOldMenu_1
MakeOldMenu_6:
[0004f2d4] 0c69 0014 0006            cmpi.w     #$0014,6(a1)
[0004f2da] 6628                      bne.s      MakeOldMenu_2
[0004f2dc] 2008                      move.l     a0,d0
[0004f2de] 6706                      beq.s      MakeOldMenu_3
[0004f2e0] b5e8 005e                 cmpa.l     94(a0),a2
[0004f2e4] 6718                      beq.s      MakeOldMenu_4
MakeOldMenu_3:
[0004f2e6] 0269 fff0 000e            andi.w     #$FFF0,14(a1)
[0004f2ec] 0269 ff8f 000e            andi.w     #$FF8F,14(a1)
[0004f2f2] 0069 0070 000e            ori.w      #$0070,14(a1)
[0004f2f8] 0269 ff7f 000e            andi.w     #$FF7F,14(a1)
MakeOldMenu_4:
[0004f2fe] 0269 fbff 0008            andi.w     #$FBFF,8(a1)
MakeOldMenu_2:
[0004f304] 7008                      moveq.l    #8,d0
[0004f306] c069 000a                 and.w      10(a1),d0
[0004f30a] 6722                      beq.s      MakeOldMenu_5
[0004f30c] 0c69 0018 0006            cmpi.w     #$0018,6(a1)
[0004f312] 661a                      bne.s      MakeOldMenu_5
[0004f314] 2669 000c                 movea.l    12(a1),a3
[0004f318] 2653                      movea.l    (a3),a3
[0004f31a] b7fc 0005 b212            cmpa.l     #A_arrows,a3
[0004f320] 660c                      bne.s      MakeOldMenu_5
[0004f322] 2669 000c                 movea.l    12(a1),a3
[0004f326] 277c 2209 0001 0004       move.l     #$22090001,4(a3)
MakeOldMenu_5:
[0004f32e] 43e9 0018                 lea.l      24(a1),a1
MakeOldMenu_1:
[0004f332] 7020                      moveq.l    #32,d0
[0004f334] c069 0008                 and.w      8(a1),d0
[0004f338] 679a                      beq.s      MakeOldMenu_6
[0004f33a] 265f                      movea.l    (a7)+,a3
[0004f33c] 245f                      movea.l    (a7)+,a2
[0004f33e] 4e75                      rts

Awi_layout:
[0004f340] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[0004f344] 554f                      subq.w     #2,a7
[0004f346] 3a02                      move.w     d2,d5
[0004f348] 45f9 0010 1f12            lea.l      ACSblk,a2
[0004f34e] b07c ffff                 cmp.w      #$FFFF,d0
[0004f352] 6f1e                      ble.s      Awi_layout_1
[0004f354] 4a40                      tst.w      d0
[0004f356] 670e                      beq.s      Awi_layout_2
[0004f358] 2052                      movea.l    (a2),a0
[0004f35a] 2268 023c                 movea.l    572(a0),a1
[0004f35e] 0269 feff 000e            andi.w     #$FEFF,14(a1)
[0004f364] 600c                      bra.s      Awi_layout_1
Awi_layout_2:
[0004f366] 2052                      movea.l    (a2),a0
[0004f368] 2268 023c                 movea.l    572(a0),a1
[0004f36c] 0069 0100 000e            ori.w      #$0100,14(a1)
Awi_layout_1:
[0004f372] b27c ffff                 cmp.w      #$FFFF,d1
[0004f376] 6f1e                      ble.s      Awi_layout_3
[0004f378] 4a41                      tst.w      d1
[0004f37a] 670e                      beq.s      Awi_layout_4
[0004f37c] 2052                      movea.l    (a2),a0
[0004f37e] 2268 023c                 movea.l    572(a0),a1
[0004f382] 0269 efff 000e            andi.w     #$EFFF,14(a1)
[0004f388] 600c                      bra.s      Awi_layout_3
Awi_layout_4:
[0004f38a] 2052                      movea.l    (a2),a0
[0004f38c] 2268 023c                 movea.l    572(a0),a1
[0004f390] 0069 1000 000e            ori.w      #$1000,14(a1)
Awi_layout_3:
[0004f396] 2052                      movea.l    (a2),a0
[0004f398] 2268 023c                 movea.l    572(a0),a1
[0004f39c] 3029 000e                 move.w     14(a1),d0
[0004f3a0] c07c 1000                 and.w      #$1000,d0
[0004f3a4] 6704                      beq.s      Awi_layout_5
[0004f3a6] 7601                      moveq.l    #1,d3
[0004f3a8] 6002                      bra.s      Awi_layout_6
Awi_layout_5:
[0004f3aa] 4243                      clr.w      d3
Awi_layout_6:
[0004f3ac] 4244                      clr.w      d4
[0004f3ae] 47f9 0010 6fea            lea.l      _ACSv_winds,a3
[0004f3b4] 6042                      bra.s      Awi_layout_7
Awi_layout_11:
[0004f3b6] 3004                      move.w     d4,d0
[0004f3b8] e548                      lsl.w      #2,d0
[0004f3ba] 2873 0000                 movea.l    0(a3,d0.w),a4
[0004f3be] 220c                      move.l     a4,d1
[0004f3c0] 6734                      beq.s      Awi_layout_8
[0004f3c2] 242c 005e                 move.l     94(a4),d2
[0004f3c6] 672e                      beq.s      Awi_layout_8
[0004f3c8] 3ebc 0001                 move.w     #$0001,(a7)
[0004f3cc] 43d7                      lea.l      (a7),a1
[0004f3ce] 204c                      movea.l    a4,a0
[0004f3d0] 2a6c 0004                 movea.l    4(a4),a5
[0004f3d4] 7035                      moveq.l    #53,d0
[0004f3d6] 4e95                      jsr        (a5)
[0004f3d8] 4a40                      tst.w      d0
[0004f3da] 6704                      beq.s      Awi_layout_9
[0004f3dc] 3017                      move.w     (a7),d0
[0004f3de] 6716                      beq.s      Awi_layout_8
Awi_layout_9:
[0004f3e0] 4a43                      tst.w      d3
[0004f3e2] 670a                      beq.s      Awi_layout_10
[0004f3e4] 206c 005e                 movea.l    94(a4),a0
[0004f3e8] 6100 fedc                 bsr        MakeOldMenu
[0004f3ec] 6008                      bra.s      Awi_layout_8
Awi_layout_10:
[0004f3ee] 206c 005e                 movea.l    94(a4),a0
[0004f3f2] 6100 fd10                 bsr        MakeModernMenu
Awi_layout_8:
[0004f3f6] 5244                      addq.w     #1,d4
Awi_layout_7:
[0004f3f8] b87c 0100                 cmp.w      #$0100,d4
[0004f3fc] 6db8                      blt.s      Awi_layout_11
[0004f3fe] 4a45                      tst.w      d5
[0004f400] 6710                      beq.s      Awi_layout_12
[0004f402] 2052                      movea.l    (a2),a0
[0004f404] 5048                      addq.w     #8,a0
[0004f406] 72ff                      moveq.l    #-1,d1
[0004f408] 2252                      movea.l    (a2),a1
[0004f40a] 3011                      move.w     (a1),d0
[0004f40c] 4eb9 0005 5058            jsr        Aev_WmRedraw
Awi_layout_12:
[0004f412] 544f                      addq.w     #2,a7
[0004f414] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[0004f418] 4e75                      rts

Awi_create:
[0004f41a] 48e7 103e                 movem.l    d3/a2-a6,-(a7)
[0004f41e] 2648                      movea.l    a0,a3
[0004f420] 203c 0000 00a2            move.l     #$000000A2,d0
[0004f426] 4eb9 0004 7cc8            jsr        Ax_malloc
[0004f42c] 2448                      movea.l    a0,a2
[0004f42e] 203c 0000 00a2            move.l     #$000000A2,d0
[0004f434] 224b                      movea.l    a3,a1
[0004f436] 4eb9 0007 6f44            jsr        memcpy
[0004f43c] 47f9 0010 1f12            lea.l      ACSblk,a3
[0004f442] 202a 0014                 move.l     20(a2),d0
[0004f446] 6718                      beq.s      Awi_create_1
[0004f448] 2040                      movea.l    d0,a0
[0004f44a] 4eb9 0004 9a5c            jsr        Aob_create
[0004f450] 2548 0014                 move.l     a0,20(a2)
[0004f454] 2008                      move.l     a0,d0
[0004f456] 6700 00a4                 beq        Awi_create_2
[0004f45a] 4eb9 0004 a25e            jsr        Aob_fix
Awi_create_1:
[0004f460] 202a 0018                 move.l     24(a2),d0
[0004f464] 6718                      beq.s      Awi_create_3
[0004f466] 2040                      movea.l    d0,a0
[0004f468] 4eb9 0004 9a5c            jsr        Aob_create
[0004f46e] 2548 0018                 move.l     a0,24(a2)
[0004f472] 2008                      move.l     a0,d0
[0004f474] 6700 007c                 beq.w      Awi_create_4
[0004f478] 4eb9 0004 a25e            jsr        Aob_fix
Awi_create_3:
[0004f47e] 202a 005e                 move.l     94(a2),d0
[0004f482] 6744                      beq.s      Awi_create_5
[0004f484] 2040                      movea.l    d0,a0
[0004f486] 4eb9 0004 9a5c            jsr        Aob_create
[0004f48c] 2548 005e                 move.l     a0,94(a2)
[0004f490] 2008                      move.l     a0,d0
[0004f492] 6754                      beq.s      Awi_create_6
[0004f494] 2253                      movea.l    (a3),a1
[0004f496] 2069 023c                 movea.l    572(a1),a0
[0004f49a] 3228 000e                 move.w     14(a0),d1
[0004f49e] c27c 1000                 and.w      #$1000,d1
[0004f4a2] 6708                      beq.s      Awi_create_7
[0004f4a4] 2040                      movea.l    d0,a0
[0004f4a6] 6100 fe1e                 bsr        MakeOldMenu
[0004f4aa] 6008                      bra.s      Awi_create_8
Awi_create_7:
[0004f4ac] 206a 005e                 movea.l    94(a2),a0
[0004f4b0] 6100 fc52                 bsr        MakeModernMenu
Awi_create_8:
[0004f4b4] 206a 005e                 movea.l    94(a2),a0
[0004f4b8] 4eb9 0004 a25e            jsr        Aob_fix
[0004f4be] 206a 005e                 movea.l    94(a2),a0
[0004f4c2] 4eb9 0004 975e            jsr        Ame_namefix
Awi_create_5:
[0004f4c8] 202a 005a                 move.l     90(a2),d0
[0004f4cc] 6740                      beq.s      Awi_create_9
[0004f4ce] 2040                      movea.l    d0,a0
[0004f4d0] 4eb9 0004 9e38            jsr        Aic_create
[0004f4d6] 2548 005a                 move.l     a0,90(a2)
[0004f4da] 2008                      move.l     a0,d0
[0004f4dc] 6630                      bne.s      Awi_create_9
[0004f4de] 206a 005e                 movea.l    94(a2),a0
[0004f4e2] 4eb9 0004 9b7c            jsr        Aob_delete
Awi_create_6:
[0004f4e8] 206a 0018                 movea.l    24(a2),a0
[0004f4ec] 4eb9 0004 9b7c            jsr        Aob_delete
Awi_create_4:
[0004f4f2] 206a 0014                 movea.l    20(a2),a0
[0004f4f6] 4eb9 0004 9b7c            jsr        Aob_delete
Awi_create_2:
[0004f4fc] 203c 0000 00a2            move.l     #$000000A2,d0
[0004f502] 204a                      movea.l    a2,a0
[0004f504] 4eb9 0004 8140            jsr        Ax_recycle
[0004f50a] 6000 0108                 bra        Awi_create_10
Awi_create_9:
[0004f50e] 204a                      movea.l    a2,a0
[0004f510] 4eb9 0004 b5cc            jsr        Awi_uoself
[0004f516] 202a 004a                 move.l     74(a2),d0
[0004f51a] 670c                      beq.s      Awi_create_11
[0004f51c] 2040                      movea.l    d0,a0
[0004f51e] 4eb9 0004 36d6            jsr        Ast_create
[0004f524] 2548 004a                 move.l     a0,74(a2)
Awi_create_11:
[0004f528] 202a 004e                 move.l     78(a2),d0
[0004f52c] 670c                      beq.s      Awi_create_12
[0004f52e] 2040                      movea.l    d0,a0
[0004f530] 4eb9 0004 36d6            jsr        Ast_create
[0004f536] 2548 004e                 move.l     a0,78(a2)
Awi_create_12:
[0004f53a] 202a 009a                 move.l     154(a2),d0
[0004f53e] 670c                      beq.s      Awi_create_13
[0004f540] 2040                      movea.l    d0,a0
[0004f542] 4eb9 0004 36d6            jsr        Ast_create
[0004f548] 2548 009a                 move.l     a0,154(a2)
Awi_create_13:
[0004f54c] 202a 009e                 move.l     158(a2),d0
[0004f550] 670c                      beq.s      Awi_create_14
[0004f552] 2040                      movea.l    d0,a0
[0004f554] 4eb9 0004 36d6            jsr        Ast_create
[0004f55a] 2548 009e                 move.l     a0,158(a2)
Awi_create_14:
[0004f55e] 357c 0004 0056            move.w     #$0004,86(a2)
[0004f564] 357c ffff 0058            move.w     #$FFFF,88(a2)
[0004f56a] 357c ffff 001c            move.w     #$FFFF,28(a2)
[0004f570] 426a 0052                 clr.w      82(a2)
[0004f574] 4243                      clr.w      d3
[0004f576] 49f9 0010 6fea            lea.l      _ACSv_winds,a4
[0004f57c] 4bf9 000d 3dc8            lea.l      Aroot_wi,a5
[0004f582] 6074                      bra.s      Awi_create_15
Awi_create_20:
[0004f584] 3003                      move.w     d3,d0
[0004f586] e548                      lsl.w      #2,d0
[0004f588] 2234 0000                 move.l     0(a4,d0.w),d1
[0004f58c] 6668                      bne.s      Awi_create_16
[0004f58e] b66c 0604                 cmp.w      1540(a4),d3
[0004f592] 6f04                      ble.s      Awi_create_17
[0004f594] 3943 0604                 move.w     d3,1540(a4)
Awi_create_17:
[0004f598] 3003                      move.w     d3,d0
[0004f59a] e548                      lsl.w      #2,d0
[0004f59c] 298a 0000                 move.l     a2,0(a4,d0.w)
[0004f5a0] 2215                      move.l     (a5),d1
[0004f5a2] 6716                      beq.s      Awi_create_18
[0004f5a4] 7401                      moveq.l    #1,d2
[0004f5a6] c46a 0054                 and.w      84(a2),d2
[0004f5aa] 670e                      beq.s      Awi_create_18
[0004f5ac] 224a                      movea.l    a2,a1
[0004f5ae] 2041                      movea.l    d1,a0
[0004f5b0] 2c41                      movea.l    d1,a6
[0004f5b2] 2c6e 0004                 movea.l    4(a6),a6
[0004f5b6] 7064                      moveq.l    #100,d0
[0004f5b8] 4e96                      jsr        (a6)
Awi_create_18:
[0004f5ba] 302a 0024                 move.w     36(a2),d0
[0004f5be] 2053                      movea.l    (a3),a0
[0004f5c0] c1e8 0012                 muls.w     18(a0),d0
[0004f5c4] 3540 0024                 move.w     d0,36(a2)
[0004f5c8] 322a 0026                 move.w     38(a2),d1
[0004f5cc] 2053                      movea.l    (a3),a0
[0004f5ce] c3e8 0014                 muls.w     20(a0),d1
[0004f5d2] 3541 0026                 move.w     d1,38(a2)
[0004f5d6] 302a 0028                 move.w     40(a2),d0
[0004f5da] 2053                      movea.l    (a3),a0
[0004f5dc] c1e8 0012                 muls.w     18(a0),d0
[0004f5e0] 3540 0028                 move.w     d0,40(a2)
[0004f5e4] 322a 002a                 move.w     42(a2),d1
[0004f5e8] 2053                      movea.l    (a3),a0
[0004f5ea] c3e8 0014                 muls.w     20(a0),d1
[0004f5ee] 3541 002a                 move.w     d1,42(a2)
[0004f5f2] 204a                      movea.l    a2,a0
[0004f5f4] 6020                      bra.s      Awi_create_19
Awi_create_16:
[0004f5f6] 5243                      addq.w     #1,d3
Awi_create_15:
[0004f5f8] b67c 0100                 cmp.w      #$0100,d3
[0004f5fc] 6d00 ff86                 blt.w      Awi_create_20
[0004f600] 2279 000d 99d6            movea.l    _globl,a1
[0004f606] 41f9 000c 97b8            lea.l      _A_ERR_WISLOT,a0
[0004f60c] 7001                      moveq.l    #1,d0
[0004f60e] 4eb9 0006 be76            jsr        mt_form_alert
Awi_create_10:
[0004f614] 91c8                      suba.l     a0,a0
Awi_create_19:
[0004f616] 4cdf 7c08                 movem.l    (a7)+,d3/a2-a6
[0004f61a] 4e75                      rts

Awi_slider:
[0004f61c] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0004f620] 2448                      movea.l    a0,a2
[0004f622] 362a 0020                 move.w     32(a2),d3
[0004f626] 4a43                      tst.w      d3
[0004f628] 6b6e                      bmi.s      Awi_slider_1
[0004f62a] 47ea 003c                 lea.l      60(a2),a3
[0004f62e] 302a 0022                 move.w     34(a2),d0
[0004f632] c07c 0800                 and.w      #$0800,d0
[0004f636] 672a                      beq.s      Awi_slider_2
[0004f638] 4267                      clr.w      -(a7)
[0004f63a] 4267                      clr.w      -(a7)
[0004f63c] 4267                      clr.w      -(a7)
[0004f63e] 3f13                      move.w     (a3),-(a7)
[0004f640] 7208                      moveq.l    #8,d1
[0004f642] 3003                      move.w     d3,d0
[0004f644] 4eb9 0007 1656            jsr        wind_set
[0004f64a] 504f                      addq.w     #8,a7
[0004f64c] 4267                      clr.w      -(a7)
[0004f64e] 4267                      clr.w      -(a7)
[0004f650] 4267                      clr.w      -(a7)
[0004f652] 3f2b 0004                 move.w     4(a3),-(a7)
[0004f656] 720f                      moveq.l    #15,d1
[0004f658] 3003                      move.w     d3,d0
[0004f65a] 4eb9 0007 1656            jsr        wind_set
[0004f660] 504f                      addq.w     #8,a7
Awi_slider_2:
[0004f662] 302a 0022                 move.w     34(a2),d0
[0004f666] c07c 0100                 and.w      #$0100,d0
[0004f66a] 672c                      beq.s      Awi_slider_1
[0004f66c] 4267                      clr.w      -(a7)
[0004f66e] 4267                      clr.w      -(a7)
[0004f670] 4267                      clr.w      -(a7)
[0004f672] 3f2b 0002                 move.w     2(a3),-(a7)
[0004f676] 7209                      moveq.l    #9,d1
[0004f678] 3003                      move.w     d3,d0
[0004f67a] 4eb9 0007 1656            jsr        wind_set
[0004f680] 504f                      addq.w     #8,a7
[0004f682] 4267                      clr.w      -(a7)
[0004f684] 4267                      clr.w      -(a7)
[0004f686] 4267                      clr.w      -(a7)
[0004f688] 3f2b 0006                 move.w     6(a3),-(a7)
[0004f68c] 7210                      moveq.l    #16,d1
[0004f68e] 3003                      move.w     d3,d0
[0004f690] 4eb9 0007 1656            jsr        wind_set
[0004f696] 504f                      addq.w     #8,a7
Awi_slider_1:
[0004f698] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0004f69c] 4e75                      rts

Awi_open:
[0004f69e] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0004f6a2] 4fef ffde                 lea.l      -34(a7),a7
[0004f6a6] 2448                      movea.l    a0,a2
[0004f6a8] 49ef 0008                 lea.l      8(a7),a4
[0004f6ac] 4bf9 000d 3dc8            lea.l      Aroot_wi,a5
[0004f6b2] 41ed 017c                 lea.l      380(a5),a0
[0004f6b6] 224c                      movea.l    a4,a1
[0004f6b8] 22d8                      move.l     (a0)+,(a1)+
[0004f6ba] 22d8                      move.l     (a0)+,(a1)+
[0004f6bc] 302a 0020                 move.w     32(a2),d0
[0004f6c0] 6a00 030e                 bpl        Awi_open_1
[0004f6c4] 7204                      moveq.l    #4,d1
[0004f6c6] c26a 0056                 and.w      86(a2),d1
[0004f6ca] 6712                      beq.s      Awi_open_2
[0004f6cc] 026a fffb 0056            andi.w     #$FFFB,86(a2)
[0004f6d2] 204a                      movea.l    a2,a0
[0004f6d4] 226a 0010                 movea.l    16(a2),a1
[0004f6d8] 4e91                      jsr        (a1)
[0004f6da] 4a40                      tst.w      d0
[0004f6dc] 6612                      bne.s      Awi_open_3
Awi_open_2:
[0004f6de] 026a f7ff 0056            andi.w     #$F7FF,86(a2)
[0004f6e4] 204a                      movea.l    a2,a0
[0004f6e6] 6100 f6e6                 bsr        Awi_catch
[0004f6ea] 3600                      move.w     d0,d3
[0004f6ec] 4a40                      tst.w      d0
[0004f6ee] 6a06                      bpl.s      Awi_open_4
Awi_open_3:
[0004f6f0] 70ff                      moveq.l    #-1,d0
[0004f6f2] 6000 02de                 bra        Awi_open_5
Awi_open_4:
[0004f6f6] 202a 0014                 move.l     20(a2),d0
[0004f6fa] 660e                      bne.s      Awi_open_6
[0004f6fc] 41ed ffe8                 lea.l      -24(a5),a0
[0004f700] 4eb9 0004 9a5c            jsr        Aob_create
[0004f706] 2548 0014                 move.l     a0,20(a2)
Awi_open_6:
[0004f70a] 3543 0020                 move.w     d3,32(a2)
[0004f70e] 3003                      move.w     d3,d0
[0004f710] e548                      lsl.w      #2,d0
[0004f712] 41f9 0010 6bb6            lea.l      gemmap,a0
[0004f718] 218a 0000                 move.l     a2,0(a0,d0.w)
[0004f71c] 322a 0054                 move.w     84(a2),d1
[0004f720] c27c 0100                 and.w      #$0100,d1
[0004f724] 6716                      beq.s      Awi_open_7
[0004f726] 4267                      clr.w      -(a7)
[0004f728] 4267                      clr.w      -(a7)
[0004f72a] 4267                      clr.w      -(a7)
[0004f72c] 7401                      moveq.l    #1,d2
[0004f72e] 3f02                      move.w     d2,-(a7)
[0004f730] 3003                      move.w     d3,d0
[0004f732] 7218                      moveq.l    #24,d1
[0004f734] 4eb9 0007 1656            jsr        wind_set
[0004f73a] 504f                      addq.w     #8,a7
Awi_open_7:
[0004f73c] 4267                      clr.w      -(a7)
[0004f73e] 4267                      clr.w      -(a7)
[0004f740] 2f2a 004a                 move.l     74(a2),-(a7)
[0004f744] 7202                      moveq.l    #2,d1
[0004f746] 3003                      move.w     d3,d0
[0004f748] 4eb9 0007 1656            jsr        wind_set
[0004f74e] 504f                      addq.w     #8,a7
[0004f750] 4267                      clr.w      -(a7)
[0004f752] 4267                      clr.w      -(a7)
[0004f754] 2f2a 004e                 move.l     78(a2),-(a7)
[0004f758] 7203                      moveq.l    #3,d1
[0004f75a] 3003                      move.w     d3,d0
[0004f75c] 4eb9 0007 1656            jsr        wind_set
[0004f762] 504f                      addq.w     #8,a7
[0004f764] 302a 0026                 move.w     38(a2),d0
[0004f768] 6600 00ba                 bne        Awi_open_8
[0004f76c] 7210                      moveq.l    #16,d1
[0004f76e] 2079 0010 1f12            movea.l    ACSblk,a0
[0004f774] 2268 023c                 movea.l    572(a0),a1
[0004f778] c269 000e                 and.w      14(a1),d1
[0004f77c] 6700 0086                 beq        Awi_open_9
[0004f780] 242a 0014                 move.l     20(a2),d2
[0004f784] 6700 007e                 beq.w      Awi_open_9
[0004f788] 2f39 000d 99d6            move.l     _globl,-(a7)
[0004f78e] 486f 000a                 pea.l      10(a7)
[0004f792] 486f 000c                 pea.l      12(a7)
[0004f796] 486f 000e                 pea.l      14(a7)
[0004f79a] 43ef 0010                 lea.l      16(a7),a1
[0004f79e] 2042                      movea.l    d2,a0
[0004f7a0] 4eb9 0006 bf48            jsr        mt_form_center
[0004f7a6] 4fef 0010                 lea.l      16(a7),a7
[0004f7aa] 4240                      clr.w      d0
[0004f7ac] 206a 0014                 movea.l    20(a2),a0
[0004f7b0] 3140 0012                 move.w     d0,18(a0)
[0004f7b4] 206a 0014                 movea.l    20(a2),a0
[0004f7b8] 3140 0010                 move.w     d0,16(a0)
[0004f7bc] 222a 0018                 move.l     24(a2),d1
[0004f7c0] 670a                      beq.s      Awi_open_10
[0004f7c2] 2041                      movea.l    d1,a0
[0004f7c4] 3428 0016                 move.w     22(a0),d2
[0004f7c8] 956f 0002                 sub.w      d2,2(a7)
Awi_open_10:
[0004f7cc] 2f39 000d 99d6            move.l     _globl,-(a7)
[0004f7d2] 486f 0014                 pea.l      20(a7)
[0004f7d6] 486f 0018                 pea.l      24(a7)
[0004f7da] 3f2f 0012                 move.w     18(a7),-(a7)
[0004f7de] 3f2f 0012                 move.w     18(a7),-(a7)
[0004f7e2] 3f2f 0012                 move.w     18(a7),-(a7)
[0004f7e6] 43ea 0026                 lea.l      38(a2),a1
[0004f7ea] 41ea 0024                 lea.l      36(a2),a0
[0004f7ee] 342f 0012                 move.w     18(a7),d2
[0004f7f2] 322a 0022                 move.w     34(a2),d1
[0004f7f6] 4240                      clr.w      d0
[0004f7f8] 4eb9 0006 d60a            jsr        mt_wind_calc
[0004f7fe] 4fef 0012                 lea.l      18(a7),a7
[0004f802] 6020                      bra.s      Awi_open_8
Awi_open_9:
[0004f804] 7008                      moveq.l    #8,d0
[0004f806] d043                      add.w      d3,d0
[0004f808] e748                      lsl.w      #3,d0
[0004f80a] 3540 0024                 move.w     d0,36(a2)
[0004f80e] 7203                      moveq.l    #3,d1
[0004f810] d243                      add.w      d3,d1
[0004f812] e749                      lsl.w      #3,d1
[0004f814] 3541 0026                 move.w     d1,38(a2)
[0004f818] 93c9                      suba.l     a1,a1
[0004f81a] 204a                      movea.l    a2,a0
[0004f81c] 266a 0004                 movea.l    4(a2),a3
[0004f820] 700e                      moveq.l    #14,d0
[0004f822] 4e93                      jsr        (a3)
Awi_open_8:
[0004f824] 204a                      movea.l    a2,a0
[0004f826] 4eb9 0005 0d24            jsr        Awi_oblist
[0004f82c] 204a                      movea.l    a2,a0
[0004f82e] 6100 fdec                 bsr        Awi_slider
[0004f832] 302a 0058                 move.w     88(a2),d0
[0004f836] 4a40                      tst.w      d0
[0004f838] 6b56                      bmi.s      Awi_open_11
[0004f83a] 2015                      move.l     (a5),d0
[0004f83c] 6752                      beq.s      Awi_open_11
[0004f83e] 7202                      moveq.l    #2,d1
[0004f840] c26a 0054                 and.w      84(a2),d1
[0004f844] 6712                      beq.s      Awi_open_12
[0004f846] 43ea 0058                 lea.l      88(a2),a1
[0004f84a] 2040                      movea.l    d0,a0
[0004f84c] 2640                      movea.l    d0,a3
[0004f84e] 266b 0004                 movea.l    4(a3),a3
[0004f852] 7066                      moveq.l    #102,d0
[0004f854] 4e93                      jsr        (a3)
[0004f856] 6010                      bra.s      Awi_open_13
Awi_open_12:
[0004f858] 43ea 0058                 lea.l      88(a2),a1
[0004f85c] 7065                      moveq.l    #101,d0
[0004f85e] 2055                      movea.l    (a5),a0
[0004f860] 2655                      movea.l    (a5),a3
[0004f862] 266b 0004                 movea.l    4(a3),a3
[0004f866] 4e93                      jsr        (a3)
Awi_open_13:
[0004f868] 2055                      movea.l    (a5),a0
[0004f86a] 2028 0014                 move.l     20(a0),d0
[0004f86e] 6720                      beq.s      Awi_open_11
[0004f870] 302a 0058                 move.w     88(a2),d0
[0004f874] 2268 0014                 movea.l    20(a0),a1
[0004f878] 204c                      movea.l    a4,a0
[0004f87a] 4eb9 0004 a3be            jsr        Aob_offset
[0004f880] 2055                      movea.l    (a5),a0
[0004f882] 3028 0034                 move.w     52(a0),d0
[0004f886] d154                      add.w      d0,(a4)
[0004f888] 3228 0036                 move.w     54(a0),d1
[0004f88c] d36c 0002                 add.w      d1,2(a4)
Awi_open_11:
[0004f890] 3014                      move.w     (a4),d0
[0004f892] 6a12                      bpl.s      Awi_open_14
[0004f894] 4241                      clr.w      d1
[0004f896] 3941 0002                 move.w     d1,2(a4)
[0004f89a] 3881                      move.w     d1,(a4)
[0004f89c] 7030                      moveq.l    #48,d0
[0004f89e] 3940 0006                 move.w     d0,6(a4)
[0004f8a2] 3940 0004                 move.w     d0,4(a4)
Awi_open_14:
[0004f8a6] 4eb9 0004 b286            jsr        Awi_diaend
[0004f8ac] 7002                      moveq.l    #2,d0
[0004f8ae] 2079 0010 1f12            movea.l    ACSblk,a0
[0004f8b4] 2268 023c                 movea.l    572(a0),a1
[0004f8b8] c069 000e                 and.w      14(a1),d0
[0004f8bc] 672e                      beq.s      Awi_open_15
[0004f8be] 3f2a 002a                 move.w     42(a2),-(a7)
[0004f8c2] 3f2a 0028                 move.w     40(a2),-(a7)
[0004f8c6] 3f2a 0026                 move.w     38(a2),-(a7)
[0004f8ca] 3f2a 0024                 move.w     36(a2),-(a7)
[0004f8ce] 3f2c 0006                 move.w     6(a4),-(a7)
[0004f8d2] 342c 0004                 move.w     4(a4),d2
[0004f8d6] 322c 0002                 move.w     2(a4),d1
[0004f8da] 3014                      move.w     (a4),d0
[0004f8dc] 2079 000d 99d6            movea.l    _globl,a0
[0004f8e2] 4eb9 0006 c564            jsr        mt_graf_growbox
[0004f8e8] 4fef 000a                 lea.l      10(a7),a7
Awi_open_15:
[0004f8ec] 3f2a 002a                 move.w     42(a2),-(a7)
[0004f8f0] 3f2a 0028                 move.w     40(a2),-(a7)
[0004f8f4] 2079 000d 99d6            movea.l    _globl,a0
[0004f8fa] 342a 0026                 move.w     38(a2),d2
[0004f8fe] 322a 0024                 move.w     36(a2),d1
[0004f902] 3003                      move.w     d3,d0
[0004f904] 4eb9 0006 d140            jsr        mt_wind_open
[0004f90a] 584f                      addq.w     #4,a7
[0004f90c] 2079 0010 1f12            movea.l    ACSblk,a0
[0004f912] 2268 0280                 movea.l    640(a0),a1
[0004f916] 0c51 0300                 cmpi.w     #$0300,(a1)
[0004f91a] 6f0c                      ble.s      Awi_open_16
[0004f91c] 0c51 0400                 cmpi.w     #$0400,(a1)
[0004f920] 6c06                      bge.s      Awi_open_16
[0004f922] 204a                      movea.l    a2,a0
[0004f924] 6100 fcf6                 bsr        Awi_slider
Awi_open_16:
[0004f928] 204a                      movea.l    a2,a0
[0004f92a] 6100 eb56                 bsr        Awi_setontop
[0004f92e] 97cb                      suba.l     a3,a3
[0004f930] 49ef 0012                 lea.l      18(a7),a4
[0004f934] 603c                      bra.s      Awi_open_17
Awi_open_20:
[0004f936] 7004                      moveq.l    #4,d0
[0004f938] c0ab 0002                 and.l      2(a3),d0
[0004f93c] 6734                      beq.s      Awi_open_17
[0004f93e] 41ed 0184                 lea.l      388(a5),a0
[0004f942] 224c                      movea.l    a4,a1
[0004f944] 720f                      moveq.l    #15,d1
Awi_open_18:
[0004f946] 12d8                      move.b     (a0)+,(a1)+
[0004f948] 51c9 fffc                 dbf        d1,Awi_open_18
[0004f94c] 38bc 4724                 move.w     #$4724,(a4)
[0004f950] 2079 0010 1f12            movea.l    ACSblk,a0
[0004f956] 3950 0002                 move.w     (a0),2(a4)
[0004f95a] 3943 0006                 move.w     d3,6(a4)
[0004f95e] 2279 000d 99d6            movea.l    _globl,a1
[0004f964] 204c                      movea.l    a4,a0
[0004f966] 7210                      moveq.l    #16,d1
[0004f968] 3013                      move.w     (a3),d0
[0004f96a] 4eb9 0006 a818            jsr        mt_appl_write
[0004f970] 600e                      bra.s      Awi_open_19
Awi_open_17:
[0004f972] 204b                      movea.l    a3,a0
[0004f974] 4eb9 0005 4250            jsr        Ash_nextdd
[0004f97a] 2648                      movea.l    a0,a3
[0004f97c] 200b                      move.l     a3,d0
[0004f97e] 66b6                      bne.s      Awi_open_20
Awi_open_19:
[0004f980] 286a 0014                 movea.l    20(a2),a4
[0004f984] 4eb9 0004 6d70            jsr        Aev_mess
[0004f98a] 302a 001c                 move.w     28(a2),d0
[0004f98e] 6a3a                      bpl.s      Awi_open_21
[0004f990] 7208                      moveq.l    #8,d1
[0004f992] 204c                      movea.l    a4,a0
[0004f994] 70ff                      moveq.l    #-1,d0
[0004f996] 4eb9 0004 aeca            jsr        Aob_findflag
[0004f99c] 3540 001c                 move.w     d0,28(a2)
[0004f9a0] 4a40                      tst.w      d0
[0004f9a2] 6a1a                      bpl.s      Awi_open_22
[0004f9a4] 222a 0018                 move.l     24(a2),d1
[0004f9a8] 6714                      beq.s      Awi_open_22
[0004f9aa] 2041                      movea.l    d1,a0
[0004f9ac] 70ff                      moveq.l    #-1,d0
[0004f9ae] 7208                      moveq.l    #8,d1
[0004f9b0] 4eb9 0004 aeca            jsr        Aob_findflag
[0004f9b6] 807c 1000                 or.w       #$1000,d0
[0004f9ba] 3540 001c                 move.w     d0,28(a2)
Awi_open_22:
[0004f9be] 302a 001c                 move.w     28(a2),d0
[0004f9c2] 6f06                      ble.s      Awi_open_21
[0004f9c4] 357c ffff 001e            move.w     #$FFFF,30(a2)
Awi_open_21:
[0004f9ca] 4eb9 0004 b33c            jsr        Awi_diastart
Awi_open_1:
[0004f9d0] 4240                      clr.w      d0
Awi_open_5:
[0004f9d2] 4fef 0022                 lea.l      34(a7),a7
[0004f9d6] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0004f9da] 4e75                      rts

Awi_register:
[0004f9dc] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0004f9e0] 4fef ffe8                 lea.l      -24(a7),a7
[0004f9e4] 2a48                      movea.l    a0,a5
[0004f9e6] 45f9 000d 3dc8            lea.l      Aroot_wi,a2
[0004f9ec] 41ea 0194                 lea.l      404(a2),a0
[0004f9f0] 43d7                      lea.l      (a7),a1
[0004f9f2] 22d8                      move.l     (a0)+,(a1)+
[0004f9f4] 22d8                      move.l     (a0)+,(a1)+
[0004f9f6] 302d 0020                 move.w     32(a5),d0
[0004f9fa] 6b1a                      bmi.s      Awi_register_1
[0004f9fc] 7204                      moveq.l    #4,d1
[0004f9fe] c26d 0056                 and.w      86(a5),d1
[0004fa02] 6718                      beq.s      Awi_register_2
[0004fa04] 026d fffb 0056            andi.w     #$FFFB,86(a5)
[0004fa0a] 204d                      movea.l    a5,a0
[0004fa0c] 226d 0010                 movea.l    16(a5),a1
[0004fa10] 4e91                      jsr        (a1)
[0004fa12] 4a40                      tst.w      d0
[0004fa14] 6706                      beq.s      Awi_register_2
Awi_register_1:
[0004fa16] 70ff                      moveq.l    #-1,d0
[0004fa18] 6000 01a8                 bra        Awi_register_3
Awi_register_2:
[0004fa1c] 026d f7ff 0056            andi.w     #$F7FF,86(a5)
[0004fa22] 202d 0014                 move.l     20(a5),d0
[0004fa26] 660e                      bne.s      Awi_register_4
[0004fa28] 41ea ffe8                 lea.l      -24(a2),a0
[0004fa2c] 4eb9 0004 9a5c            jsr        Aob_create
[0004fa32] 2b48 0014                 move.l     a0,20(a5)
Awi_register_4:
[0004fa36] 362d 0020                 move.w     32(a5),d3
[0004fa3a] 3003                      move.w     d3,d0
[0004fa3c] e548                      lsl.w      #2,d0
[0004fa3e] 41f9 0010 6bb6            lea.l      gemmap,a0
[0004fa44] 218d 0000                 move.l     a5,0(a0,d0.w)
[0004fa48] 322d 0054                 move.w     84(a5),d1
[0004fa4c] c27c 0100                 and.w      #$0100,d1
[0004fa50] 6716                      beq.s      Awi_register_5
[0004fa52] 4267                      clr.w      -(a7)
[0004fa54] 4267                      clr.w      -(a7)
[0004fa56] 4267                      clr.w      -(a7)
[0004fa58] 7401                      moveq.l    #1,d2
[0004fa5a] 3f02                      move.w     d2,-(a7)
[0004fa5c] 3003                      move.w     d3,d0
[0004fa5e] 7218                      moveq.l    #24,d1
[0004fa60] 4eb9 0007 1656            jsr        wind_set
[0004fa66] 504f                      addq.w     #8,a7
Awi_register_5:
[0004fa68] 4267                      clr.w      -(a7)
[0004fa6a] 4267                      clr.w      -(a7)
[0004fa6c] 2f2d 004a                 move.l     74(a5),-(a7)
[0004fa70] 7202                      moveq.l    #2,d1
[0004fa72] 3003                      move.w     d3,d0
[0004fa74] 4eb9 0007 1656            jsr        wind_set
[0004fa7a] 504f                      addq.w     #8,a7
[0004fa7c] 4267                      clr.w      -(a7)
[0004fa7e] 4267                      clr.w      -(a7)
[0004fa80] 2f2d 004e                 move.l     78(a5),-(a7)
[0004fa84] 7203                      moveq.l    #3,d1
[0004fa86] 3003                      move.w     d3,d0
[0004fa88] 4eb9 0007 1656            jsr        wind_set
[0004fa8e] 504f                      addq.w     #8,a7
[0004fa90] 302d 0058                 move.w     88(a5),d0
[0004fa94] 4a40                      tst.w      d0
[0004fa96] 6b56                      bmi.s      Awi_register_6
[0004fa98] 2012                      move.l     (a2),d0
[0004fa9a] 6752                      beq.s      Awi_register_6
[0004fa9c] 7202                      moveq.l    #2,d1
[0004fa9e] c26d 0054                 and.w      84(a5),d1
[0004faa2] 6712                      beq.s      Awi_register_7
[0004faa4] 43ed 0058                 lea.l      88(a5),a1
[0004faa8] 2040                      movea.l    d0,a0
[0004faaa] 2640                      movea.l    d0,a3
[0004faac] 266b 0004                 movea.l    4(a3),a3
[0004fab0] 7066                      moveq.l    #102,d0
[0004fab2] 4e93                      jsr        (a3)
[0004fab4] 6010                      bra.s      Awi_register_8
Awi_register_7:
[0004fab6] 43ed 0058                 lea.l      88(a5),a1
[0004faba] 7065                      moveq.l    #101,d0
[0004fabc] 2052                      movea.l    (a2),a0
[0004fabe] 2652                      movea.l    (a2),a3
[0004fac0] 266b 0004                 movea.l    4(a3),a3
[0004fac4] 4e93                      jsr        (a3)
Awi_register_8:
[0004fac6] 2052                      movea.l    (a2),a0
[0004fac8] 2028 0014                 move.l     20(a0),d0
[0004facc] 6720                      beq.s      Awi_register_6
[0004face] 302d 0058                 move.w     88(a5),d0
[0004fad2] 2268 0014                 movea.l    20(a0),a1
[0004fad6] 41d7                      lea.l      (a7),a0
[0004fad8] 4eb9 0004 a3be            jsr        Aob_offset
[0004fade] 2052                      movea.l    (a2),a0
[0004fae0] 3028 0034                 move.w     52(a0),d0
[0004fae4] d157                      add.w      d0,(a7)
[0004fae6] 3228 0036                 move.w     54(a0),d1
[0004faea] d36f 0002                 add.w      d1,2(a7)
Awi_register_6:
[0004faee] 3017                      move.w     (a7),d0
[0004faf0] 6a12                      bpl.s      Awi_register_9
[0004faf2] 4241                      clr.w      d1
[0004faf4] 3f41 0002                 move.w     d1,2(a7)
[0004faf8] 3e81                      move.w     d1,(a7)
[0004fafa] 7030                      moveq.l    #48,d0
[0004fafc] 3f40 0006                 move.w     d0,6(a7)
[0004fb00] 3f40 0004                 move.w     d0,4(a7)
Awi_register_9:
[0004fb04] 4eb9 0004 b286            jsr        Awi_diaend
[0004fb0a] 47f9 0010 1f12            lea.l      ACSblk,a3
[0004fb10] 7002                      moveq.l    #2,d0
[0004fb12] 2053                      movea.l    (a3),a0
[0004fb14] 2268 023c                 movea.l    572(a0),a1
[0004fb18] c069 000e                 and.w      14(a1),d0
[0004fb1c] 6730                      beq.s      Awi_register_10
[0004fb1e] 3f2d 002a                 move.w     42(a5),-(a7)
[0004fb22] 3f2d 0028                 move.w     40(a5),-(a7)
[0004fb26] 3f2d 0026                 move.w     38(a5),-(a7)
[0004fb2a] 3f2d 0024                 move.w     36(a5),-(a7)
[0004fb2e] 3f2f 000e                 move.w     14(a7),-(a7)
[0004fb32] 342f 000e                 move.w     14(a7),d2
[0004fb36] 322f 000c                 move.w     12(a7),d1
[0004fb3a] 302f 000a                 move.w     10(a7),d0
[0004fb3e] 2079 000d 99d6            movea.l    _globl,a0
[0004fb44] 4eb9 0006 c564            jsr        mt_graf_growbox
[0004fb4a] 4fef 000a                 lea.l      10(a7),a7
Awi_register_10:
[0004fb4e] 2053                      movea.l    (a3),a0
[0004fb50] 2268 0280                 movea.l    640(a0),a1
[0004fb54] 0c51 0300                 cmpi.w     #$0300,(a1)
[0004fb58] 6f0c                      ble.s      Awi_register_11
[0004fb5a] 0c51 0400                 cmpi.w     #$0400,(a1)
[0004fb5e] 6c06                      bge.s      Awi_register_11
[0004fb60] 204d                      movea.l    a5,a0
[0004fb62] 6100 fab8                 bsr        Awi_slider
Awi_register_11:
[0004fb66] 204d                      movea.l    a5,a0
[0004fb68] 6100 e918                 bsr        Awi_setontop
[0004fb6c] 9bcd                      suba.l     a5,a5
[0004fb6e] 49ef 0008                 lea.l      8(a7),a4
[0004fb72] 6038                      bra.s      Awi_register_12
Awi_register_15:
[0004fb74] 7004                      moveq.l    #4,d0
[0004fb76] c0ad 0002                 and.l      2(a5),d0
[0004fb7a] 6730                      beq.s      Awi_register_12
[0004fb7c] 41ea 019c                 lea.l      412(a2),a0
[0004fb80] 224c                      movea.l    a4,a1
[0004fb82] 720f                      moveq.l    #15,d1
Awi_register_13:
[0004fb84] 12d8                      move.b     (a0)+,(a1)+
[0004fb86] 51c9 fffc                 dbf        d1,Awi_register_13
[0004fb8a] 38bc 4724                 move.w     #$4724,(a4)
[0004fb8e] 2053                      movea.l    (a3),a0
[0004fb90] 3950 0002                 move.w     (a0),2(a4)
[0004fb94] 3943 0006                 move.w     d3,6(a4)
[0004fb98] 2279 000d 99d6            movea.l    _globl,a1
[0004fb9e] 204c                      movea.l    a4,a0
[0004fba0] 7210                      moveq.l    #16,d1
[0004fba2] 3015                      move.w     (a5),d0
[0004fba4] 4eb9 0006 a818            jsr        mt_appl_write
[0004fbaa] 600e                      bra.s      Awi_register_14
Awi_register_12:
[0004fbac] 204d                      movea.l    a5,a0
[0004fbae] 4eb9 0005 4250            jsr        Ash_nextdd
[0004fbb4] 2a48                      movea.l    a0,a5
[0004fbb6] 200d                      move.l     a5,d0
[0004fbb8] 66ba                      bne.s      Awi_register_15
Awi_register_14:
[0004fbba] 4eb9 0004 6d70            jsr        Aev_mess
[0004fbc0] 4240                      clr.w      d0
Awi_register_3:
[0004fbc2] 4fef 0018                 lea.l      24(a7),a7
[0004fbc6] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0004fbca] 4e75                      rts

Awi_backdrop:
[0004fbcc] 2f0a                      move.l     a2,-(a7)
[0004fbce] 2448                      movea.l    a0,a2
[0004fbd0] 302a 0020                 move.w     32(a2),d0
[0004fbd4] 6f1c                      ble.s      Awi_backdrop_1
[0004fbd6] 322a 0056                 move.w     86(a2),d1
[0004fbda] c27c 0400                 and.w      #$0400,d1
[0004fbde] 6612                      bne.s      Awi_backdrop_1
[0004fbe0] 4267                      clr.w      -(a7)
[0004fbe2] 4267                      clr.w      -(a7)
[0004fbe4] 4267                      clr.w      -(a7)
[0004fbe6] 4267                      clr.w      -(a7)
[0004fbe8] 7219                      moveq.l    #25,d1
[0004fbea] 4eb9 0007 1656            jsr        wind_set
[0004fbf0] 504f                      addq.w     #8,a7
Awi_backdrop_1:
[0004fbf2] 4240                      clr.w      d0
[0004fbf4] 245f                      movea.l    (a7)+,a2
[0004fbf6] 4e75                      rts

Awi_modal:
[0004fbf8] 7007                      moveq.l    #7,d0
[0004fbfa] 41f9 0010 6db6            lea.l      modwins,a0
[0004fc00] 6010                      bra.s      Awi_modal_1
Awi_modal_3:
[0004fc02] 3200                      move.w     d0,d1
[0004fc04] e549                      lsl.w      #2,d1
[0004fc06] 2430 1000                 move.l     0(a0,d1.w),d2
[0004fc0a] 6704                      beq.s      Awi_modal_2
[0004fc0c] 2042                      movea.l    d2,a0
[0004fc0e] 4e75                      rts
Awi_modal_2:
[0004fc10] 5340                      subq.w     #1,d0
Awi_modal_1:
[0004fc12] 4a40                      tst.w      d0
[0004fc14] 6aec                      bpl.s      Awi_modal_3
[0004fc16] 91c8                      suba.l     a0,a0
[0004fc18] 4e75                      rts

Awi_up_modal:
[0004fc1a] 2f0a                      move.l     a2,-(a7)
[0004fc1c] 2f0b                      move.l     a3,-(a7)
[0004fc1e] 554f                      subq.w     #2,a7
[0004fc20] 6100 ffd6                 bsr.w      Awi_modal
[0004fc24] 2448                      movea.l    a0,a2
[0004fc26] 200a                      move.l     a2,d0
[0004fc28] 6700 0150                 beq        Awi_up_modal_1
[0004fc2c] 42a7                      clr.l      -(a7)
[0004fc2e] 42a7                      clr.l      -(a7)
[0004fc30] 42a7                      clr.l      -(a7)
[0004fc32] 486f 000c                 pea.l      12(a7)
[0004fc36] 720a                      moveq.l    #10,d1
[0004fc38] 4240                      clr.w      d0
[0004fc3a] 4eb9 0007 14ea            jsr        wind_get
[0004fc40] 4fef 0010                 lea.l      16(a7),a7
[0004fc44] 302a 0020                 move.w     32(a2),d0
[0004fc48] b057                      cmp.w      (a7),d0
[0004fc4a] 672e                      beq.s      Awi_up_modal_2
[0004fc4c] 4267                      clr.w      -(a7)
[0004fc4e] 4267                      clr.w      -(a7)
[0004fc50] 4267                      clr.w      -(a7)
[0004fc52] 4267                      clr.w      -(a7)
[0004fc54] 720a                      moveq.l    #10,d1
[0004fc56] 4eb9 0007 1656            jsr        wind_set
[0004fc5c] 504f                      addq.w     #8,a7
[0004fc5e] 006a 0010 0056            ori.w      #$0010,86(a2)
[0004fc64] 43ea 0024                 lea.l      36(a2),a1
[0004fc68] 204a                      movea.l    a2,a0
[0004fc6a] 266a 0086                 movea.l    134(a2),a3
[0004fc6e] 4e93                      jsr        (a3)
[0004fc70] 204a                      movea.l    a2,a0
[0004fc72] 6100 e80e                 bsr        Awi_setontop
[0004fc76] 6000 0102                 bra        Awi_up_modal_1
Awi_up_modal_2:
[0004fc7a] 47f9 0010 1f12            lea.l      ACSblk,a3
[0004fc80] 7010                      moveq.l    #16,d0
[0004fc82] 2053                      movea.l    (a3),a0
[0004fc84] 2268 023c                 movea.l    572(a0),a1
[0004fc88] c069 000e                 and.w      14(a1),d0
[0004fc8c] 6600 00d4                 bne        Awi_up_modal_3
[0004fc90] 3228 0264                 move.w     612(a0),d1
[0004fc94] 3028 0262                 move.w     610(a0),d0
[0004fc98] 41ea 0034                 lea.l      52(a2),a0
[0004fc9c] 4eb9 0005 ef64            jsr        Aob_within
[0004fca2] 4a40                      tst.w      d0
[0004fca4] 6600 00d4                 bne        Awi_up_modal_1
[0004fca8] 2053                      movea.l    (a3),a0
[0004fcaa] 3028 000c                 move.w     12(a0),d0
[0004fcae] 906a 0028                 sub.w      40(a2),d0
[0004fcb2] 3228 0262                 move.w     610(a0),d1
[0004fcb6] 342a 0028                 move.w     40(a2),d2
[0004fcba] e242                      asr.w      #1,d2
[0004fcbc] 9242                      sub.w      d2,d1
[0004fcbe] b041                      cmp.w      d1,d0
[0004fcc0] 6c02                      bge.s      Awi_up_modal_4
[0004fcc2] 600e                      bra.s      Awi_up_modal_5
Awi_up_modal_4:
[0004fcc4] 2053                      movea.l    (a3),a0
[0004fcc6] 3028 0262                 move.w     610(a0),d0
[0004fcca] 322a 0028                 move.w     40(a2),d1
[0004fcce] e241                      asr.w      #1,d1
[0004fcd0] 9041                      sub.w      d1,d0
Awi_up_modal_5:
[0004fcd2] 3540 0024                 move.w     d0,36(a2)
[0004fcd6] 2053                      movea.l    (a3),a0
[0004fcd8] 3228 000a                 move.w     10(a0),d1
[0004fcdc] d268 000e                 add.w      14(a0),d1
[0004fce0] 926a 002a                 sub.w      42(a2),d1
[0004fce4] 3428 0264                 move.w     612(a0),d2
[0004fce8] 302a 002a                 move.w     42(a2),d0
[0004fcec] e240                      asr.w      #1,d0
[0004fcee] 9440                      sub.w      d0,d2
[0004fcf0] b242                      cmp.w      d2,d1
[0004fcf2] 6c02                      bge.s      Awi_up_modal_6
[0004fcf4] 600e                      bra.s      Awi_up_modal_7
Awi_up_modal_6:
[0004fcf6] 2053                      movea.l    (a3),a0
[0004fcf8] 3228 0264                 move.w     612(a0),d1
[0004fcfc] 302a 002a                 move.w     42(a2),d0
[0004fd00] e240                      asr.w      #1,d0
[0004fd02] 9240                      sub.w      d0,d1
Awi_up_modal_7:
[0004fd04] 3541 0026                 move.w     d1,38(a2)
[0004fd08] 2053                      movea.l    (a3),a0
[0004fd0a] 3028 0008                 move.w     8(a0),d0
[0004fd0e] b06a 0024                 cmp.w      36(a2),d0
[0004fd12] 6f02                      ble.s      Awi_up_modal_8
[0004fd14] 6004                      bra.s      Awi_up_modal_9
Awi_up_modal_8:
[0004fd16] 302a 0024                 move.w     36(a2),d0
Awi_up_modal_9:
[0004fd1a] 3540 0024                 move.w     d0,36(a2)
[0004fd1e] 2053                      movea.l    (a3),a0
[0004fd20] 3228 000a                 move.w     10(a0),d1
[0004fd24] b26a 0026                 cmp.w      38(a2),d1
[0004fd28] 6f02                      ble.s      Awi_up_modal_10
[0004fd2a] 6004                      bra.s      Awi_up_modal_11
Awi_up_modal_10:
[0004fd2c] 322a 0026                 move.w     38(a2),d1
Awi_up_modal_11:
[0004fd30] 3541 0026                 move.w     d1,38(a2)
[0004fd34] 026a fffe 0056            andi.w     #$FFFE,86(a2)
[0004fd3a] 204a                      movea.l    a2,a0
[0004fd3c] 4eb9 0005 080a            jsr        Awi_cleanup
[0004fd42] 3f2a 002a                 move.w     42(a2),-(a7)
[0004fd46] 3f2a 0028                 move.w     40(a2),-(a7)
[0004fd4a] 3f2a 0026                 move.w     38(a2),-(a7)
[0004fd4e] 3f2a 0024                 move.w     36(a2),-(a7)
[0004fd52] 7205                      moveq.l    #5,d1
[0004fd54] 302a 0020                 move.w     32(a2),d0
[0004fd58] 4eb9 0007 1656            jsr        wind_set
[0004fd5e] 504f                      addq.w     #8,a7
[0004fd60] 6018                      bra.s      Awi_up_modal_1
Awi_up_modal_3:
[0004fd62] 7004                      moveq.l    #4,d0
[0004fd64] 2053                      movea.l    (a3),a0
[0004fd66] 2268 023c                 movea.l    572(a0),a1
[0004fd6a] c069 000e                 and.w      14(a1),d0
[0004fd6e] 670a                      beq.s      Awi_up_modal_1
[0004fd70] 7207                      moveq.l    #7,d1
[0004fd72] 7002                      moveq.l    #2,d0
[0004fd74] 4eb9 0007 284a            jsr        Bconout
Awi_up_modal_1:
[0004fd7a] 544f                      addq.w     #2,a7
[0004fd7c] 265f                      movea.l    (a7)+,a3
[0004fd7e] 245f                      movea.l    (a7)+,a2
[0004fd80] 4e75                      rts

Awi_set_modal:
[0004fd82] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0004fd86] 554f                      subq.w     #2,a7
[0004fd88] 2648                      movea.l    a0,a3
[0004fd8a] 45f9 0010 6db6            lea.l      modwins,a2
[0004fd90] 4a40                      tst.w      d0
[0004fd92] 6768                      beq.s      Awi_set_modal_1
[0004fd94] 4243                      clr.w      d3
[0004fd96] 6012                      bra.s      Awi_set_modal_2
Awi_set_modal_5:
[0004fd98] 3003                      move.w     d3,d0
[0004fd9a] e548                      lsl.w      #2,d0
[0004fd9c] 2232 0000                 move.l     0(a2,d0.w),d1
[0004fda0] 6606                      bne.s      Awi_set_modal_3
[0004fda2] 258b 0000                 move.l     a3,0(a2,d0.w)
[0004fda6] 6008                      bra.s      Awi_set_modal_4
Awi_set_modal_3:
[0004fda8] 5243                      addq.w     #1,d3
Awi_set_modal_2:
[0004fdaa] b67c 0008                 cmp.w      #$0008,d3
[0004fdae] 6de8                      blt.s      Awi_set_modal_5
Awi_set_modal_4:
[0004fdb0] b67c 0008                 cmp.w      #$0008,d3
[0004fdb4] 6606                      bne.s      Awi_set_modal_6
[0004fdb6] 70ff                      moveq.l    #-1,d0
[0004fdb8] 6000 0074                 bra.w      Awi_set_modal_7
Awi_set_modal_6:
[0004fdbc] 4a43                      tst.w      d3
[0004fdbe] 6608                      bne.s      Awi_set_modal_8
[0004fdc0] 4240                      clr.w      d0
[0004fdc2] 4eb9 0004 fe36            jsr        Awi_show_menu
Awi_set_modal_8:
[0004fdc8] 42a7                      clr.l      -(a7)
[0004fdca] 42a7                      clr.l      -(a7)
[0004fdcc] 42a7                      clr.l      -(a7)
[0004fdce] 486f 000c                 pea.l      12(a7)
[0004fdd2] 720a                      moveq.l    #10,d1
[0004fdd4] 4240                      clr.w      d0
[0004fdd6] 4eb9 0007 14ea            jsr        wind_get
[0004fddc] 4fef 0010                 lea.l      16(a7),a7
[0004fde0] 302b 0020                 move.w     32(a3),d0
[0004fde4] 6f0e                      ble.s      Awi_set_modal_9
[0004fde6] 3217                      move.w     (a7),d1
[0004fde8] b240                      cmp.w      d0,d1
[0004fdea] 6708                      beq.s      Awi_set_modal_9
[0004fdec] 204b                      movea.l    a3,a0
[0004fdee] 226b 006e                 movea.l    110(a3),a1
[0004fdf2] 4e91                      jsr        (a1)
Awi_set_modal_9:
[0004fdf4] 204b                      movea.l    a3,a0
[0004fdf6] 6100 e68a                 bsr        Awi_setontop
[0004fdfa] 6030                      bra.s      Awi_set_modal_10
Awi_set_modal_1:
[0004fdfc] 302b 0056                 move.w     86(a3),d0
[0004fe00] c07c 0400                 and.w      #$0400,d0
[0004fe04] 6726                      beq.s      Awi_set_modal_10
[0004fe06] 7607                      moveq.l    #7,d3
[0004fe08] 6012                      bra.s      Awi_set_modal_11
Awi_set_modal_14:
[0004fe0a] 3003                      move.w     d3,d0
[0004fe0c] e548                      lsl.w      #2,d0
[0004fe0e] b7f2 0000                 cmpa.l     0(a2,d0.w),a3
[0004fe12] 6606                      bne.s      Awi_set_modal_12
[0004fe14] 42b2 0000                 clr.l      0(a2,d0.w)
[0004fe18] 6006                      bra.s      Awi_set_modal_13
Awi_set_modal_12:
[0004fe1a] 5343                      subq.w     #1,d3
Awi_set_modal_11:
[0004fe1c] 4a43                      tst.w      d3
[0004fe1e] 6aea                      bpl.s      Awi_set_modal_14
Awi_set_modal_13:
[0004fe20] 4a43                      tst.w      d3
[0004fe22] 6608                      bne.s      Awi_set_modal_10
[0004fe24] 7001                      moveq.l    #1,d0
[0004fe26] 4eb9 0004 fe36            jsr        Awi_show_menu
Awi_set_modal_10:
[0004fe2c] 4240                      clr.w      d0
Awi_set_modal_7:
[0004fe2e] 544f                      addq.w     #2,a7
[0004fe30] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0004fe34] 4e75                      rts

Awi_show_menu:
[0004fe36] 48e7 1c20                 movem.l    d3-d5/a2,-(a7)
[0004fe3a] 3239 0010 75ec            move.w     _ACSv_wmenu,d1
[0004fe40] 6700 01b4                 beq        Awi_show_menu_1
[0004fe44] 2439 000d 3dc8            move.l     Aroot_wi,d2
[0004fe4a] 6700 01aa                 beq        Awi_show_menu_1
[0004fe4e] 2042                      movea.l    d2,a0
[0004fe50] 2228 005e                 move.l     94(a0),d1
[0004fe54] 6700 01a0                 beq        Awi_show_menu_1
[0004fe58] 2441                      movea.l    d1,a2
[0004fe5a] 4a40                      tst.w      d0
[0004fe5c] 6700 00a2                 beq        Awi_show_menu_2
[0004fe60] 6100 fd96                 bsr        Awi_modal
[0004fe64] 2008                      move.l     a0,d0
[0004fe66] 6600 018e                 bne        Awi_show_menu_1
[0004fe6a] 4eb9 0005 f57c            jsr        A_isModDia
[0004fe70] 4a40                      tst.w      d0
[0004fe72] 6600 0182                 bne        Awi_show_menu_1
[0004fe76] 2279 000d 99d6            movea.l    _globl,a1
[0004fe7c] 4240                      clr.w      d0
[0004fe7e] 91c8                      suba.l     a0,a0
[0004fe80] 4eb9 0006 b362            jsr        mt_menu_bar
[0004fe86] 3a2a 0002                 move.w     2(a2),d5
[0004fe8a] 48c5                      ext.l      d5
[0004fe8c] 2805                      move.l     d5,d4
[0004fe8e] d884                      add.l      d4,d4
[0004fe90] d885                      add.l      d5,d4
[0004fe92] e78c                      lsl.l      #3,d4
[0004fe94] 3832 4800                 move.w     0(a2,d4.l),d4
[0004fe98] 48c4                      ext.l      d4
[0004fe9a] 2404                      move.l     d4,d2
[0004fe9c] d482                      add.l      d2,d2
[0004fe9e] d484                      add.l      d4,d2
[0004fea0] e78a                      lsl.l      #3,d2
[0004fea2] 3432 2802                 move.w     2(a2,d2.l),d2
[0004fea6] 48c2                      ext.l      d2
[0004fea8] 2202                      move.l     d2,d1
[0004feaa] d281                      add.l      d1,d1
[0004feac] d282                      add.l      d2,d1
[0004feae] e789                      lsl.l      #3,d1
[0004feb0] 3232 1802                 move.w     2(a2,d1.l),d1
[0004feb4] 48c1                      ext.l      d1
[0004feb6] 2001                      move.l     d1,d0
[0004feb8] d080                      add.l      d0,d0
[0004feba] d081                      add.l      d1,d0
[0004febc] e788                      lsl.l      #3,d0
[0004febe] 0272 fff7 080a            andi.w     #$FFF7,10(a2,d0.l)
[0004fec4] 322a 0032                 move.w     50(a2),d1
[0004fec8] 48c1                      ext.l      d1
[0004feca] 2001                      move.l     d1,d0
[0004fecc] d080                      add.l      d0,d0
[0004fece] d081                      add.l      d1,d0
[0004fed0] e788                      lsl.l      #3,d0
[0004fed2] 3632 0800                 move.w     0(a2,d0.l),d3
[0004fed6] 6016                      bra.s      Awi_show_menu_3
Awi_show_menu_4:
[0004fed8] 3203                      move.w     d3,d1
[0004feda] 48c1                      ext.l      d1
[0004fedc] 2001                      move.l     d1,d0
[0004fede] d080                      add.l      d0,d0
[0004fee0] d081                      add.l      d1,d0
[0004fee2] e788                      lsl.l      #3,d0
[0004fee4] 0272 fff7 080a            andi.w     #$FFF7,10(a2,d0.l)
[0004feea] 3632 0800                 move.w     0(a2,d0.l),d3
Awi_show_menu_3:
[0004feee] b67c 0002                 cmp.w      #$0002,d3
[0004fef2] 66e4                      bne.s      Awi_show_menu_4
[0004fef4] 3579 000d 3d9e 0044       move.w     menu_width,68(a2)
[0004fefc] 6000 00e8                 bra        Awi_show_menu_5
Awi_show_menu_2:
[0004ff00] 6100 fcf6                 bsr        Awi_modal
[0004ff04] 2008                      move.l     a0,d0
[0004ff06] 660c                      bne.s      Awi_show_menu_6
[0004ff08] 4eb9 0005 f57c            jsr        A_isModDia
[0004ff0e] 4a40                      tst.w      d0
[0004ff10] 6700 00e4                 beq        Awi_show_menu_1
Awi_show_menu_6:
[0004ff14] 2279 000d 99d6            movea.l    _globl,a1
[0004ff1a] 4240                      clr.w      d0
[0004ff1c] 91c8                      suba.l     a0,a0
[0004ff1e] 4eb9 0006 b362            jsr        mt_menu_bar
[0004ff24] 3a2a 0002                 move.w     2(a2),d5
[0004ff28] 48c5                      ext.l      d5
[0004ff2a] 2805                      move.l     d5,d4
[0004ff2c] d884                      add.l      d4,d4
[0004ff2e] d885                      add.l      d5,d4
[0004ff30] e78c                      lsl.l      #3,d4
[0004ff32] 3832 4800                 move.w     0(a2,d4.l),d4
[0004ff36] 48c4                      ext.l      d4
[0004ff38] 2404                      move.l     d4,d2
[0004ff3a] d482                      add.l      d2,d2
[0004ff3c] d484                      add.l      d4,d2
[0004ff3e] e78a                      lsl.l      #3,d2
[0004ff40] 3432 2802                 move.w     2(a2,d2.l),d2
[0004ff44] 48c2                      ext.l      d2
[0004ff46] 2202                      move.l     d2,d1
[0004ff48] d281                      add.l      d1,d1
[0004ff4a] d282                      add.l      d2,d1
[0004ff4c] e789                      lsl.l      #3,d1
[0004ff4e] 3232 1802                 move.w     2(a2,d1.l),d1
[0004ff52] 48c1                      ext.l      d1
[0004ff54] 2001                      move.l     d1,d0
[0004ff56] d080                      add.l      d0,d0
[0004ff58] d081                      add.l      d1,d0
[0004ff5a] e788                      lsl.l      #3,d0
[0004ff5c] 0072 0008 080a            ori.w      #$0008,10(a2,d0.l)
[0004ff62] 3a2a 0002                 move.w     2(a2),d5
[0004ff66] 48c5                      ext.l      d5
[0004ff68] 2805                      move.l     d5,d4
[0004ff6a] d884                      add.l      d4,d4
[0004ff6c] d885                      add.l      d5,d4
[0004ff6e] e78c                      lsl.l      #3,d4
[0004ff70] 3832 4800                 move.w     0(a2,d4.l),d4
[0004ff74] 48c4                      ext.l      d4
[0004ff76] 2404                      move.l     d4,d2
[0004ff78] d482                      add.l      d2,d2
[0004ff7a] d484                      add.l      d4,d2
[0004ff7c] e78a                      lsl.l      #3,d2
[0004ff7e] 3432 2802                 move.w     2(a2,d2.l),d2
[0004ff82] 48c2                      ext.l      d2
[0004ff84] 2202                      move.l     d2,d1
[0004ff86] d281                      add.l      d1,d1
[0004ff88] d282                      add.l      d2,d1
[0004ff8a] e789                      lsl.l      #3,d1
[0004ff8c] 3232 1802                 move.w     2(a2,d1.l),d1
[0004ff90] 48c1                      ext.l      d1
[0004ff92] 2001                      move.l     d1,d0
[0004ff94] d080                      add.l      d0,d0
[0004ff96] d081                      add.l      d1,d0
[0004ff98] e788                      lsl.l      #3,d0
[0004ff9a] 0272 fffe 080a            andi.w     #$FFFE,10(a2,d0.l)
[0004ffa0] 356a 005c 0044            move.w     92(a2),68(a2)
[0004ffa6] 362a 0032                 move.w     50(a2),d3
[0004ffaa] 3203                      move.w     d3,d1
[0004ffac] 48c1                      ext.l      d1
[0004ffae] 2001                      move.l     d1,d0
[0004ffb0] d080                      add.l      d0,d0
[0004ffb2] d081                      add.l      d1,d0
[0004ffb4] e788                      lsl.l      #3,d0
[0004ffb6] 0272 fffe 080a            andi.w     #$FFFE,10(a2,d0.l)
[0004ffbc] 6012                      bra.s      Awi_show_menu_7
Awi_show_menu_8:
[0004ffbe] 3203                      move.w     d3,d1
[0004ffc0] 48c1                      ext.l      d1
[0004ffc2] 2001                      move.l     d1,d0
[0004ffc4] d080                      add.l      d0,d0
[0004ffc6] d081                      add.l      d1,d0
[0004ffc8] e788                      lsl.l      #3,d0
[0004ffca] 0072 0008 080a            ori.w      #$0008,10(a2,d0.l)
Awi_show_menu_7:
[0004ffd0] 3203                      move.w     d3,d1
[0004ffd2] 48c1                      ext.l      d1
[0004ffd4] 2001                      move.l     d1,d0
[0004ffd6] d080                      add.l      d0,d0
[0004ffd8] d081                      add.l      d1,d0
[0004ffda] e788                      lsl.l      #3,d0
[0004ffdc] 3632 0800                 move.w     0(a2,d0.l),d3
[0004ffe0] b67c 0002                 cmp.w      #$0002,d3
[0004ffe4] 66d8                      bne.s      Awi_show_menu_8
Awi_show_menu_5:
[0004ffe6] 2279 000d 99d6            movea.l    _globl,a1
[0004ffec] 7001                      moveq.l    #1,d0
[0004ffee] 204a                      movea.l    a2,a0
[0004fff0] 4eb9 0006 b362            jsr        mt_menu_bar
Awi_show_menu_1:
[0004fff6] 4cdf 0438                 movem.l    (a7)+,d3-d5/a2
[0004fffa] 4e75                      rts

Awi_ropen:
[0004fffc] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00050000] 2448                      movea.l    a0,a2
[00050002] 286a 005e                 movea.l    94(a2),a4
[00050006] 23c8 0010 6bb6            move.l     a0,gemmap
[0005000c] 426a 0020                 clr.w      32(a2)
[00050010] 47f9 0010 1f12            lea.l      ACSblk,a3
[00050016] 200c                      move.l     a4,d0
[00050018] 6762                      beq.s      Awi_ropen_1
[0005001a] 2053                      movea.l    (a3),a0
[0005001c] 41e8 021f                 lea.l      543(a0),a0
[00050020] 4eb9 0004 36d6            jsr        Ast_create
[00050026] 362c 0002                 move.w     2(a4),d3
[0005002a] 48c3                      ext.l      d3
[0005002c] 2403                      move.l     d3,d2
[0005002e] d482                      add.l      d2,d2
[00050030] d483                      add.l      d3,d2
[00050032] e78a                      lsl.l      #3,d2
[00050034] 3434 2802                 move.w     2(a4,d2.l),d2
[00050038] 48c2                      ext.l      d2
[0005003a] 2202                      move.l     d2,d1
[0005003c] d281                      add.l      d1,d1
[0005003e] d282                      add.l      d2,d1
[00050040] e789                      lsl.l      #3,d1
[00050042] 3234 1802                 move.w     2(a4,d1.l),d1
[00050046] 48c1                      ext.l      d1
[00050048] 2001                      move.l     d1,d0
[0005004a] d080                      add.l      d0,d0
[0005004c] d081                      add.l      d1,d0
[0005004e] e788                      lsl.l      #3,d0
[00050050] 2988 080c                 move.l     a0,12(a4,d0.l)
[00050054] 204c                      movea.l    a4,a0
[00050056] 4eb9 0004 975e            jsr        Ame_namefix
[0005005c] 2279 000d 99d6            movea.l    _globl,a1
[00050062] 7001                      moveq.l    #1,d0
[00050064] 204c                      movea.l    a4,a0
[00050066] 4eb9 0006 b362            jsr        mt_menu_bar
[0005006c] 33ec 0044 000d 3d9e       move.w     68(a4),menu_width
[00050074] 33fc 0001 0010 75ec       move.w     #$0001,_ACSv_wmenu
Awi_ropen_1:
[0005007c] 7004                      moveq.l    #4,d0
[0005007e] c06a 0056                 and.w      86(a2),d0
[00050082] 6718                      beq.s      Awi_ropen_2
[00050084] 026a fffb 0056            andi.w     #$FFFB,86(a2)
[0005008a] 204a                      movea.l    a2,a0
[0005008c] 226a 0010                 movea.l    16(a2),a1
[00050090] 4e91                      jsr        (a1)
[00050092] 4a40                      tst.w      d0
[00050094] 6706                      beq.s      Awi_ropen_2
[00050096] 70ff                      moveq.l    #-1,d0
[00050098] 6000 009e                 bra        Awi_ropen_3
Awi_ropen_2:
[0005009c] 286a 0014                 movea.l    20(a2),a4
[000500a0] 200c                      move.l     a4,d0
[000500a2] 676e                      beq.s      Awi_ropen_4
[000500a4] 2053                      movea.l    (a3),a0
[000500a6] 3968 0008 0010            move.w     8(a0),16(a4)
[000500ac] 2053                      movea.l    (a3),a0
[000500ae] 3968 000a 0012            move.w     10(a0),18(a4)
[000500b4] 2053                      movea.l    (a3),a0
[000500b6] 3968 000c 0014            move.w     12(a0),20(a4)
[000500bc] 2053                      movea.l    (a3),a0
[000500be] 3968 000e 0016            move.w     14(a0),22(a4)
[000500c4] 4267                      clr.w      -(a7)
[000500c6] 4267                      clr.w      -(a7)
[000500c8] 2f00                      move.l     d0,-(a7)
[000500ca] 720e                      moveq.l    #14,d1
[000500cc] 4240                      clr.w      d0
[000500ce] 4eb9 0007 1656            jsr        wind_set
[000500d4] 504f                      addq.w     #8,a7
[000500d6] 2053                      movea.l    (a3),a0
[000500d8] 3f28 000e                 move.w     14(a0),-(a7)
[000500dc] 3f28 000c                 move.w     12(a0),-(a7)
[000500e0] 3f28 000a                 move.w     10(a0),-(a7)
[000500e4] 3f28 0008                 move.w     8(a0),-(a7)
[000500e8] 3f28 000e                 move.w     14(a0),-(a7)
[000500ec] 3f28 000c                 move.w     12(a0),-(a7)
[000500f0] 3428 000a                 move.w     10(a0),d2
[000500f4] 3228 0008                 move.w     8(a0),d1
[000500f8] 7003                      moveq.l    #3,d0
[000500fa] 2079 000d 99d6            movea.l    _globl,a0
[00050100] 4eb9 0006 bde4            jsr        mt_form_dial
[00050106] 4fef 000c                 lea.l      12(a7),a7
[0005010a] 33fc 0001 0010 75ea       move.w     #$0001,_ACSv_wwork
Awi_ropen_4:
[00050112] 426a 0034                 clr.w      52(a2)
[00050116] 426a 0036                 clr.w      54(a2)
[0005011a] 2053                      movea.l    (a3),a0
[0005011c] 3028 0008                 move.w     8(a0),d0
[00050120] d068 000c                 add.w      12(a0),d0
[00050124] 3540 0038                 move.w     d0,56(a2)
[00050128] 2053                      movea.l    (a3),a0
[0005012a] 3228 000a                 move.w     10(a0),d1
[0005012e] d268 000e                 add.w      14(a0),d1
[00050132] 3541 003a                 move.w     d1,58(a2)
[00050136] 4240                      clr.w      d0
Awi_ropen_3:
[00050138] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0005013c] 4e75                      rts

Awi_closed:
[0005013e] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00050142] 4fef ffe8                 lea.l      -24(a7),a7
[00050146] 2448                      movea.l    a0,a2
[00050148] 6100 faae                 bsr        Awi_modal
[0005014c] 2008                      move.l     a0,d0
[0005014e] 670a                      beq.s      Awi_closed_1
[00050150] 6100 faa6                 bsr        Awi_modal
[00050154] b5c8                      cmpa.l     a0,a2
[00050156] 6600 01ce                 bne        Awi_closed_2
Awi_closed_1:
[0005015a] 362a 0020                 move.w     32(a2),d3
[0005015e] 357c ffff 0020            move.w     #$FFFF,32(a2)
[00050164] 7002                      moveq.l    #2,d0
[00050166] c06a 0056                 and.w      86(a2),d0
[0005016a] 6706                      beq.s      Awi_closed_3
[0005016c] 4eb9 0004 b286            jsr        Awi_diaend
Awi_closed_3:
[00050172] 70ff                      moveq.l    #-1,d0
[00050174] 3540 0052                 move.w     d0,82(a2)
[00050178] 3540 001e                 move.w     d0,30(a2)
[0005017c] 3540 001c                 move.w     d0,28(a2)
[00050180] 2079 0010 1f12            movea.l    ACSblk,a0
[00050186] b5e8 0240                 cmpa.l     576(a0),a2
[0005018a] 6606                      bne.s      Awi_closed_4
[0005018c] 4eb9 0004 4a26            jsr        Adr_unselect
Awi_closed_4:
[00050192] 47f9 000d 99d6            lea.l      _globl,a3
[00050198] 4a43                      tst.w      d3
[0005019a] 6624                      bne.s      Awi_closed_5
[0005019c] 4267                      clr.w      -(a7)
[0005019e] 4267                      clr.w      -(a7)
[000501a0] 4267                      clr.w      -(a7)
[000501a2] 4267                      clr.w      -(a7)
[000501a4] 720e                      moveq.l    #14,d1
[000501a6] 4240                      clr.w      d0
[000501a8] 4eb9 0007 1656            jsr        wind_set
[000501ae] 504f                      addq.w     #8,a7
[000501b0] 2253                      movea.l    (a3),a1
[000501b2] 4240                      clr.w      d0
[000501b4] 91c8                      suba.l     a0,a0
[000501b6] 4eb9 0006 b362            jsr        mt_menu_bar
[000501bc] 6000 0156                 bra        Awi_closed_6
Awi_closed_5:
[000501c0] 49f9 000d 3dc8            lea.l      Aroot_wi,a4
[000501c6] 302a 0056                 move.w     86(a2),d0
[000501ca] c07c 0500                 and.w      #$0500,d0
[000501ce] 662a                      bne.s      Awi_closed_7
[000501d0] 2214                      move.l     (a4),d1
[000501d2] 6726                      beq.s      Awi_closed_7
[000501d4] 342a 0058                 move.w     88(a2),d2
[000501d8] 6b12                      bmi.s      Awi_closed_8
[000501da] 43ea 0058                 lea.l      88(a2),a1
[000501de] 2041                      movea.l    d1,a0
[000501e0] 2a41                      movea.l    d1,a5
[000501e2] 2a6d 0004                 movea.l    4(a5),a5
[000501e6] 7067                      moveq.l    #103,d0
[000501e8] 4e95                      jsr        (a5)
[000501ea] 600e                      bra.s      Awi_closed_7
Awi_closed_8:
[000501ec] 224a                      movea.l    a2,a1
[000501ee] 7064                      moveq.l    #100,d0
[000501f0] 2054                      movea.l    (a4),a0
[000501f2] 2a54                      movea.l    (a4),a5
[000501f4] 2a6d 0004                 movea.l    4(a5),a5
[000501f8] 4e95                      jsr        (a5)
Awi_closed_7:
[000501fa] 4a43                      tst.w      d3
[000501fc] 6f00 0116                 ble        Awi_closed_6
[00050200] 7002                      moveq.l    #2,d0
[00050202] 2079 0010 1f12            movea.l    ACSblk,a0
[00050208] 2268 023c                 movea.l    572(a0),a1
[0005020c] c069 000e                 and.w      14(a1),d0
[00050210] 6770                      beq.s      Awi_closed_9
[00050212] 322a 0058                 move.w     88(a2),d1
[00050216] 6b2c                      bmi.s      Awi_closed_10
[00050218] 2414                      move.l     (a4),d2
[0005021a] 6728                      beq.s      Awi_closed_10
[0005021c] 2a42                      movea.l    d2,a5
[0005021e] 202d 0014                 move.l     20(a5),d0
[00050222] 6720                      beq.s      Awi_closed_10
[00050224] 3001                      move.w     d1,d0
[00050226] 226d 0014                 movea.l    20(a5),a1
[0005022a] 41d7                      lea.l      (a7),a0
[0005022c] 4eb9 0004 a3be            jsr        Aob_offset
[00050232] 2054                      movea.l    (a4),a0
[00050234] 3028 0034                 move.w     52(a0),d0
[00050238] d157                      add.w      d0,(a7)
[0005023a] 3228 0036                 move.w     54(a0),d1
[0005023e] d36f 0002                 add.w      d1,2(a7)
[00050242] 6012                      bra.s      Awi_closed_11
Awi_closed_10:
[00050244] 4240                      clr.w      d0
[00050246] 3f40 0002                 move.w     d0,2(a7)
[0005024a] 3e80                      move.w     d0,(a7)
[0005024c] 7230                      moveq.l    #48,d1
[0005024e] 3f41 0006                 move.w     d1,6(a7)
[00050252] 3f41 0004                 move.w     d1,4(a7)
Awi_closed_11:
[00050256] 3f2a 002a                 move.w     42(a2),-(a7)
[0005025a] 3f2a 0028                 move.w     40(a2),-(a7)
[0005025e] 3f2a 0026                 move.w     38(a2),-(a7)
[00050262] 3f2a 0024                 move.w     36(a2),-(a7)
[00050266] 3f2f 000e                 move.w     14(a7),-(a7)
[0005026a] 2053                      movea.l    (a3),a0
[0005026c] 342f 000e                 move.w     14(a7),d2
[00050270] 322f 000c                 move.w     12(a7),d1
[00050274] 302f 000a                 move.w     10(a7),d0
[00050278] 4eb9 0006 c5f0            jsr        mt_graf_shrinkbox
[0005027e] 4fef 000a                 lea.l      10(a7),a7
Awi_closed_9:
[00050282] 2053                      movea.l    (a3),a0
[00050284] 3003                      move.w     d3,d0
[00050286] 4eb9 0006 d1ba            jsr        mt_wind_close
[0005028c] 6100 e1dc                 bsr        Awi_ontop
[00050290] b5c8                      cmpa.l     a0,a2
[00050292] 6606                      bne.s      Awi_closed_12
[00050294] 91c8                      suba.l     a0,a0
[00050296] 6100 e1ea                 bsr        Awi_setontop
Awi_closed_12:
[0005029a] 2053                      movea.l    (a3),a0
[0005029c] 3003                      move.w     d3,d0
[0005029e] 4eb9 0006 d214            jsr        mt_wind_delete
[000502a4] 4240                      clr.w      d0
[000502a6] 204a                      movea.l    a2,a0
[000502a8] 6100 fad8                 bsr        Awi_set_modal
[000502ac] 9bcd                      suba.l     a5,a5
[000502ae] 45ef 0008                 lea.l      8(a7),a2
[000502b2] 6038                      bra.s      Awi_closed_13
Awi_closed_16:
[000502b4] 7004                      moveq.l    #4,d0
[000502b6] c0ad 0002                 and.l      2(a5),d0
[000502ba] 6730                      beq.s      Awi_closed_13
[000502bc] 41ec 01ac                 lea.l      428(a4),a0
[000502c0] 224a                      movea.l    a2,a1
[000502c2] 720f                      moveq.l    #15,d1
Awi_closed_14:
[000502c4] 12d8                      move.b     (a0)+,(a1)+
[000502c6] 51c9 fffc                 dbf        d1,Awi_closed_14
[000502ca] 34bc 4726                 move.w     #$4726,(a2)
[000502ce] 2079 0010 1f12            movea.l    ACSblk,a0
[000502d4] 3550 0002                 move.w     (a0),2(a2)
[000502d8] 3543 0006                 move.w     d3,6(a2)
[000502dc] 2253                      movea.l    (a3),a1
[000502de] 204a                      movea.l    a2,a0
[000502e0] 7210                      moveq.l    #16,d1
[000502e2] 3015                      move.w     (a5),d0
[000502e4] 4eb9 0006 a818            jsr        mt_appl_write
[000502ea] 600e                      bra.s      Awi_closed_15
Awi_closed_13:
[000502ec] 204d                      movea.l    a5,a0
[000502ee] 4eb9 0005 4250            jsr        Ash_nextdd
[000502f4] 2a48                      movea.l    a0,a5
[000502f6] 200d                      move.l     a5,d0
[000502f8] 66ba                      bne.s      Awi_closed_16
Awi_closed_15:
[000502fa] 4eb9 0004 6d70            jsr        Aev_mess
[00050300] 2079 0010 1f12            movea.l    ACSblk,a0
[00050306] 2068 023c                 movea.l    572(a0),a0
[0005030a] 41e8 0038                 lea.l      56(a0),a0
[0005030e] 4eb9 0004 9898            jsr        Amo_new
Awi_closed_6:
[00050314] 4a43                      tst.w      d3
[00050316] 6b0e                      bmi.s      Awi_closed_2
[00050318] 3003                      move.w     d3,d0
[0005031a] e548                      lsl.w      #2,d0
[0005031c] 41f9 0010 6bb6            lea.l      gemmap,a0
[00050322] 42b0 0000                 clr.l      0(a0,d0.w)
Awi_closed_2:
[00050326] 4fef 0018                 lea.l      24(a7),a7
[0005032a] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0005032e] 4e75                      rts

Awi_delete:
[00050330] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00050334] 2448                      movea.l    a0,a2
[00050336] 006a 0100 0056            ori.w      #$0100,86(a2)
[0005033c] 2279 0010 1f12            movea.l    ACSblk,a1
[00050342] b1e9 0240                 cmpa.l     576(a1),a0
[00050346] 6604                      bne.s      Awi_delete_1
[00050348] 4269 0246                 clr.w      582(a1)
Awi_delete_1:
[0005034c] 204a                      movea.l    a2,a0
[0005034e] 4eb9 0005 8928            jsr        CheckPcHelp
[00050354] 204a                      movea.l    a2,a0
[00050356] 4eb9 0005 869e            jsr        CheckSTGuide
[0005035c] 204a                      movea.l    a2,a0
[0005035e] 6100 e1d0                 bsr        Awi_icondelete
[00050362] 7664                      moveq.l    #100,d3
[00050364] 600a                      bra.s      Awi_delete_2
Awi_delete_4:
[00050366] 204a                      movea.l    a2,a0
[00050368] 226a 0072                 movea.l    114(a2),a1
[0005036c] 4e91                      jsr        (a1)
[0005036e] 5343                      subq.w     #1,d3
Awi_delete_2:
[00050370] 302a 0020                 move.w     32(a2),d0
[00050374] 6b04                      bmi.s      Awi_delete_3
[00050376] 4a43                      tst.w      d3
[00050378] 6eec                      bgt.s      Awi_delete_4
Awi_delete_3:
[0005037a] 4a43                      tst.w      d3
[0005037c] 6e0c                      bgt.s      Awi_delete_5
[0005037e] 026a f7ff 0056            andi.w     #$F7FF,86(a2)
[00050384] 204a                      movea.l    a2,a0
[00050386] 6100 fdb6                 bsr        Awi_closed
Awi_delete_5:
[0005038a] 47f9 000d 3dc8            lea.l      Aroot_wi,a3
[00050390] 302a 0058                 move.w     88(a2),d0
[00050394] 6b14                      bmi.s      Awi_delete_6
[00050396] 2213                      move.l     (a3),d1
[00050398] 6710                      beq.s      Awi_delete_6
[0005039a] 43ea 0058                 lea.l      88(a2),a1
[0005039e] 2041                      movea.l    d1,a0
[000503a0] 2841                      movea.l    d1,a4
[000503a2] 286c 0004                 movea.l    4(a4),a4
[000503a6] 7065                      moveq.l    #101,d0
[000503a8] 4e94                      jsr        (a4)
Awi_delete_6:
[000503aa] 206a 009e                 movea.l    158(a2),a0
[000503ae] 4eb9 0004 371c            jsr        Ast_delete
[000503b4] 206a 009a                 movea.l    154(a2),a0
[000503b8] 4eb9 0004 371c            jsr        Ast_delete
[000503be] 206a 004e                 movea.l    78(a2),a0
[000503c2] 4eb9 0004 371c            jsr        Ast_delete
[000503c8] 206a 004a                 movea.l    74(a2),a0
[000503cc] 4eb9 0004 371c            jsr        Ast_delete
[000503d2] 206a 005a                 movea.l    90(a2),a0
[000503d6] 4eb9 0004 a094            jsr        Aic_delete
[000503dc] 206a 005e                 movea.l    94(a2),a0
[000503e0] 4eb9 0004 9b7c            jsr        Aob_delete
[000503e6] 206a 0018                 movea.l    24(a2),a0
[000503ea] 4eb9 0004 9b7c            jsr        Aob_delete
[000503f0] 206a 0014                 movea.l    20(a2),a0
[000503f4] 4eb9 0004 9b7c            jsr        Aob_delete
[000503fa] b5d3                      cmpa.l     (a3),a2
[000503fc] 6608                      bne.s      Awi_delete_7
[000503fe] 4293                      clr.l      (a3)
[00050400] 4eb9 0004 640a            jsr        Aev_quit
Awi_delete_7:
[00050406] 4243                      clr.w      d3
[00050408] 47f9 0010 6fea            lea.l      _ACSv_winds,a3
[0005040e] 49eb 0604                 lea.l      1540(a3),a4
[00050412] 6036                      bra.s      Awi_delete_8
Awi_delete_13:
[00050414] 3003                      move.w     d3,d0
[00050416] e548                      lsl.w      #2,d0
[00050418] b5f3 0000                 cmpa.l     0(a3,d0.w),a2
[0005041c] 662a                      bne.s      Awi_delete_9
[0005041e] 42b3 0000                 clr.l      0(a3,d0.w)
[00050422] b654                      cmp.w      (a4),d3
[00050424] 6612                      bne.s      Awi_delete_10
Awi_delete_11:
[00050426] 3014                      move.w     (a4),d0
[00050428] 5354                      subq.w     #1,(a4)
[0005042a] 4a40                      tst.w      d0
[0005042c] 6f0a                      ble.s      Awi_delete_10
[0005042e] 3014                      move.w     (a4),d0
[00050430] e548                      lsl.w      #2,d0
[00050432] 2233 0000                 move.l     0(a3,d0.w),d1
[00050436] 67ee                      beq.s      Awi_delete_11
Awi_delete_10:
[00050438] 203c 0000 00a2            move.l     #$000000A2,d0
[0005043e] 204a                      movea.l    a2,a0
[00050440] 4eb9 0004 8140            jsr        Ax_recycle
[00050446] 6006                      bra.s      Awi_delete_12
Awi_delete_9:
[00050448] 5243                      addq.w     #1,d3
Awi_delete_8:
[0005044a] b654                      cmp.w      (a4),d3
[0005044c] 6fc6                      ble.s      Awi_delete_13
Awi_delete_12:
[0005044e] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00050452] 4e75                      rts

Awi_topped:
[00050454] 3f03                      move.w     d3,-(a7)
[00050456] 2f0a                      move.l     a2,-(a7)
[00050458] 2448                      movea.l    a0,a2
[0005045a] 362a 0020                 move.w     32(a2),d3
[0005045e] 4a43                      tst.w      d3
[00050460] 6f2e                      ble.s      Awi_topped_1
[00050462] 6100 f794                 bsr        Awi_modal
[00050466] 2008                      move.l     a0,d0
[00050468] 6706                      beq.s      Awi_topped_2
[0005046a] 6100 f7ae                 bsr        Awi_up_modal
[0005046e] 6020                      bra.s      Awi_topped_1
Awi_topped_2:
[00050470] 4eb9 0004 b286            jsr        Awi_diaend
[00050476] 4267                      clr.w      -(a7)
[00050478] 4267                      clr.w      -(a7)
[0005047a] 4267                      clr.w      -(a7)
[0005047c] 4267                      clr.w      -(a7)
[0005047e] 720a                      moveq.l    #10,d1
[00050480] 3003                      move.w     d3,d0
[00050482] 4eb9 0007 1656            jsr        wind_set
[00050488] 504f                      addq.w     #8,a7
[0005048a] 204a                      movea.l    a2,a0
[0005048c] 6100 dff4                 bsr        Awi_setontop
Awi_topped_1:
[00050490] 245f                      movea.l    (a7)+,a2
[00050492] 361f                      move.w     (a7)+,d3
[00050494] 4e75                      rts

Awi_fulled:
[00050496] 48e7 0038                 movem.l    a2-a4,-(a7)
[0005049a] 5d4f                      subq.w     #6,a7
[0005049c] 2448                      movea.l    a0,a2
[0005049e] 302a 0020                 move.w     32(a2),d0
[000504a2] 6f00 021e                 ble        Awi_fulled_1
[000504a6] 266a 0014                 movea.l    20(a2),a3
[000504aa] 49ea 0024                 lea.l      36(a2),a4
[000504ae] 41ea 002c                 lea.l      44(a2),a0
[000504b2] 7201                      moveq.l    #1,d1
[000504b4] c26a 0056                 and.w      86(a2),d1
[000504b8] 673e                      beq.s      Awi_fulled_2
[000504ba] 3890                      move.w     (a0),(a4)
[000504bc] 3968 0002 0002            move.w     2(a0),2(a4)
[000504c2] 3968 0004 0004            move.w     4(a0),4(a4)
[000504c8] 3968 0006 0006            move.w     6(a0),6(a4)
[000504ce] 302b 0010                 move.w     16(a3),d0
[000504d2] b06a 0044                 cmp.w      68(a2),d0
[000504d6] 660a                      bne.s      Awi_fulled_3
[000504d8] 322b 0012                 move.w     18(a3),d1
[000504dc] b26a 0046                 cmp.w      70(a2),d1
[000504e0] 6706                      beq.s      Awi_fulled_4
Awi_fulled_3:
[000504e2] 006a 0010 0056            ori.w      #$0010,86(a2)
Awi_fulled_4:
[000504e8] 376a 0044 0010            move.w     68(a2),16(a3)
[000504ee] 376a 0046 0012            move.w     70(a2),18(a3)
[000504f4] 6000 0138                 bra        Awi_fulled_5
Awi_fulled_2:
[000504f8] 3094                      move.w     (a4),(a0)
[000504fa] 316c 0002 0002            move.w     2(a4),2(a0)
[00050500] 316c 0004 0004            move.w     4(a4),4(a0)
[00050506] 316c 0006 0006            move.w     6(a4),6(a0)
[0005050c] 7008                      moveq.l    #8,d0
[0005050e] c06a 0054                 and.w      84(a2),d0
[00050512] 6732                      beq.s      Awi_fulled_6
[00050514] 2079 0010 1f12            movea.l    ACSblk,a0
[0005051a] 38a8 0008                 move.w     8(a0),(a4)
[0005051e] 2079 0010 1f12            movea.l    ACSblk,a0
[00050524] 3968 000a 0002            move.w     10(a0),2(a4)
[0005052a] 2079 0010 1f12            movea.l    ACSblk,a0
[00050530] 3968 000c 0004            move.w     12(a0),4(a4)
[00050536] 2079 0010 1f12            movea.l    ACSblk,a0
[0005053c] 3968 000e 0006            move.w     14(a0),6(a4)
[00050542] 6000 00c4                 bra        Awi_fulled_7
Awi_fulled_6:
[00050546] 302a 0048                 move.w     72(a2),d0
[0005054a] 807c ff00                 or.w       #$FF00,d0
[0005054e] 322a 0048                 move.w     72(a2),d1
[00050552] e041                      asr.w      #8,d1
[00050554] 3400                      move.w     d0,d2
[00050556] 4642                      not.w      d2
[00050558] d56b 0014                 add.w      d2,20(a3)
[0005055c] c16b 0014                 and.w      d0,20(a3)
[00050560] 3001                      move.w     d1,d0
[00050562] 4640                      not.w      d0
[00050564] d16b 0016                 add.w      d0,22(a3)
[00050568] c36b 0016                 and.w      d1,22(a3)
[0005056c] 2f39 000d 99d6            move.l     _globl,-(a7)
[00050572] 486c 0006                 pea.l      6(a4)
[00050576] 486c 0004                 pea.l      4(a4)
[0005057a] 3f2b 0016                 move.w     22(a3),-(a7)
[0005057e] 3f2b 0014                 move.w     20(a3),-(a7)
[00050582] 4267                      clr.w      -(a7)
[00050584] 43ef 0016                 lea.l      22(a7),a1
[00050588] 41ef 0016                 lea.l      22(a7),a0
[0005058c] 322a 0022                 move.w     34(a2),d1
[00050590] 4240                      clr.w      d0
[00050592] 3400                      move.w     d0,d2
[00050594] 4eb9 0006 d60a            jsr        mt_wind_calc
[0005059a] 4fef 0012                 lea.l      18(a7),a7
[0005059e] 3014                      move.w     (a4),d0
[000505a0] d06c 0004                 add.w      4(a4),d0
[000505a4] 2079 0010 1f12            movea.l    ACSblk,a0
[000505aa] 3228 0008                 move.w     8(a0),d1
[000505ae] d268 000c                 add.w      12(a0),d1
[000505b2] b041                      cmp.w      d1,d0
[000505b4] 6f04                      ble.s      Awi_fulled_8
[000505b6] 38a8 0008                 move.w     8(a0),(a4)
Awi_fulled_8:
[000505ba] 2eaa 005e                 move.l     94(a2),(a7)
[000505be] 6718                      beq.s      Awi_fulled_9
[000505c0] 2057                      movea.l    (a7),a0
[000505c2] 3228 0002                 move.w     2(a0),d1
[000505c6] 48c1                      ext.l      d1
[000505c8] 2001                      move.l     d1,d0
[000505ca] d080                      add.l      d0,d0
[000505cc] d081                      add.l      d1,d0
[000505ce] e788                      lsl.l      #3,d0
[000505d0] 3430 0816                 move.w     22(a0,d0.l),d2
[000505d4] d56c 0006                 add.w      d2,6(a4)
Awi_fulled_9:
[000505d8] 202a 0018                 move.l     24(a2),d0
[000505dc] 670a                      beq.s      Awi_fulled_10
[000505de] 2040                      movea.l    d0,a0
[000505e0] 3228 0016                 move.w     22(a0),d1
[000505e4] d36c 0006                 add.w      d1,6(a4)
Awi_fulled_10:
[000505e8] 302c 0002                 move.w     2(a4),d0
[000505ec] d06c 0006                 add.w      6(a4),d0
[000505f0] 2079 0010 1f12            movea.l    ACSblk,a0
[000505f6] 3228 000a                 move.w     10(a0),d1
[000505fa] d268 000e                 add.w      14(a0),d1
[000505fe] b041                      cmp.w      d1,d0
[00050600] 6f06                      ble.s      Awi_fulled_7
[00050602] 3968 000a 0002            move.w     10(a0),2(a4)
Awi_fulled_7:
[00050608] 356b 0010 0044            move.w     16(a3),68(a2)
[0005060e] 356b 0012 0046            move.w     18(a3),70(a2)
[00050614] 302b 0010                 move.w     16(a3),d0
[00050618] 6606                      bne.s      Awi_fulled_11
[0005061a] 322b 0012                 move.w     18(a3),d1
[0005061e] 6706                      beq.s      Awi_fulled_12
Awi_fulled_11:
[00050620] 006a 0010 0056            ori.w      #$0010,86(a2)
Awi_fulled_12:
[00050626] 426b 0010                 clr.w      16(a3)
[0005062a] 426b 0012                 clr.w      18(a3)
Awi_fulled_5:
[0005062e] 0a6a 0001 0056            eori.w     #$0001,86(a2)
[00050634] 204a                      movea.l    a2,a0
[00050636] 4eb9 0005 0d24            jsr        Awi_oblist
[0005063c] 3f2c 0006                 move.w     6(a4),-(a7)
[00050640] 3f2c 0004                 move.w     4(a4),-(a7)
[00050644] 3f2c 0002                 move.w     2(a4),-(a7)
[00050648] 3f14                      move.w     (a4),-(a7)
[0005064a] 7205                      moveq.l    #5,d1
[0005064c] 302a 0020                 move.w     32(a2),d0
[00050650] 4eb9 0007 1656            jsr        wind_set
[00050656] 504f                      addq.w     #8,a7
[00050658] 2079 0010 1f12            movea.l    ACSblk,a0
[0005065e] 2268 0280                 movea.l    640(a0),a1
[00050662] 0c51 0300                 cmpi.w     #$0300,(a1)
[00050666] 6f0c                      ble.s      Awi_fulled_13
[00050668] 0c51 0400                 cmpi.w     #$0400,(a1)
[0005066c] 6c06                      bge.s      Awi_fulled_13
[0005066e] 204a                      movea.l    a2,a0
[00050670] 6100 efaa                 bsr        Awi_slider
Awi_fulled_13:
[00050674] 7010                      moveq.l    #16,d0
[00050676] c06a 0056                 and.w      86(a2),d0
[0005067a] 6720                      beq.s      Awi_fulled_14
[0005067c] 7240                      moveq.l    #64,d1
[0005067e] 2079 0010 1f12            movea.l    ACSblk,a0
[00050684] 2268 023c                 movea.l    572(a0),a1
[00050688] c269 000e                 and.w      14(a1),d1
[0005068c] 670e                      beq.s      Awi_fulled_14
[0005068e] 322a 0020                 move.w     32(a2),d1
[00050692] 3010                      move.w     (a0),d0
[00050694] 204c                      movea.l    a4,a0
[00050696] 4eb9 0005 5058            jsr        Aev_WmRedraw
Awi_fulled_14:
[0005069c] 4eb9 0004 6d70            jsr        Aev_mess
[000506a2] 7010                      moveq.l    #16,d0
[000506a4] c06a 0056                 and.w      86(a2),d0
[000506a8] 6718                      beq.s      Awi_fulled_1
[000506aa] 026a fffd 0056            andi.w     #$FFFD,86(a2)
[000506b0] 43ea 0024                 lea.l      36(a2),a1
[000506b4] 204a                      movea.l    a2,a0
[000506b6] 266a 006a                 movea.l    106(a2),a3
[000506ba] 4e93                      jsr        (a3)
[000506bc] 4eb9 0004 b33c            jsr        Awi_diastart
Awi_fulled_1:
[000506c2] 5c4f                      addq.w     #6,a7
[000506c4] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[000506c8] 4e75                      rts

Awi_sized:
[000506ca] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[000506ce] 2448                      movea.l    a0,a2
[000506d0] 302a 0020                 move.w     32(a2),d0
[000506d4] 6f00 00e0                 ble        Awi_sized_1
[000506d8] 026a fffe 0056            andi.w     #$FFFE,86(a2)
[000506de] 47ea 0024                 lea.l      36(a2),a3
[000506e2] 362b 0004                 move.w     4(a3),d3
[000506e6] 382b 0006                 move.w     6(a3),d4
[000506ea] 3691                      move.w     (a1),(a3)
[000506ec] 3769 0002 0002            move.w     2(a1),2(a3)
[000506f2] 41f9 0010 6baa            lea.l      wi_minw,a0
[000506f8] 3010                      move.w     (a0),d0
[000506fa] b069 0004                 cmp.w      4(a1),d0
[000506fe] 6f02                      ble.s      Awi_sized_2
[00050700] 6004                      bra.s      Awi_sized_3
Awi_sized_2:
[00050702] 3029 0004                 move.w     4(a1),d0
Awi_sized_3:
[00050706] 3740 0004                 move.w     d0,4(a3)
[0005070a] 3228 0002                 move.w     2(a0),d1
[0005070e] b269 0006                 cmp.w      6(a1),d1
[00050712] 6f02                      ble.s      Awi_sized_4
[00050714] 6004                      bra.s      Awi_sized_5
Awi_sized_4:
[00050716] 3229 0006                 move.w     6(a1),d1
Awi_sized_5:
[0005071a] 3741 0006                 move.w     d1,6(a3)
[0005071e] 204a                      movea.l    a2,a0
[00050720] 4eb9 0005 0d24            jsr        Awi_oblist
[00050726] b66b 0004                 cmp.w      4(a3),d3
[0005072a] 6610                      bne.s      Awi_sized_6
[0005072c] b86b 0006                 cmp.w      6(a3),d4
[00050730] 660a                      bne.s      Awi_sized_6
[00050732] 7010                      moveq.l    #16,d0
[00050734] c06a 0056                 and.w      86(a2),d0
[00050738] 6700 007c                 beq.w      Awi_sized_1
Awi_sized_6:
[0005073c] 3f2b 0006                 move.w     6(a3),-(a7)
[00050740] 3f2b 0004                 move.w     4(a3),-(a7)
[00050744] 3f2b 0002                 move.w     2(a3),-(a7)
[00050748] 3f13                      move.w     (a3),-(a7)
[0005074a] 7205                      moveq.l    #5,d1
[0005074c] 302a 0020                 move.w     32(a2),d0
[00050750] 4eb9 0007 1656            jsr        wind_set
[00050756] 504f                      addq.w     #8,a7
[00050758] 2079 0010 1f12            movea.l    ACSblk,a0
[0005075e] 2268 0280                 movea.l    640(a0),a1
[00050762] 0c51 0300                 cmpi.w     #$0300,(a1)
[00050766] 6f0c                      ble.s      Awi_sized_7
[00050768] 0c51 0400                 cmpi.w     #$0400,(a1)
[0005076c] 6c06                      bge.s      Awi_sized_7
[0005076e] 204a                      movea.l    a2,a0
[00050770] 6100 eeaa                 bsr        Awi_slider
Awi_sized_7:
[00050774] 7010                      moveq.l    #16,d0
[00050776] c06a 0056                 and.w      86(a2),d0
[0005077a] 673a                      beq.s      Awi_sized_1
[0005077c] 7240                      moveq.l    #64,d1
[0005077e] 2079 0010 1f12            movea.l    ACSblk,a0
[00050784] 2268 023c                 movea.l    572(a0),a1
[00050788] c269 000e                 and.w      14(a1),d1
[0005078c] 6710                      beq.s      Awi_sized_8
[0005078e] 322a 0020                 move.w     32(a2),d1
[00050792] 3010                      move.w     (a0),d0
[00050794] 204b                      movea.l    a3,a0
[00050796] 4eb9 0005 5058            jsr        Aev_WmRedraw
[0005079c] 6018                      bra.s      Awi_sized_1
Awi_sized_8:
[0005079e] 026a fffd 0056            andi.w     #$FFFD,86(a2)
[000507a4] 43ea 0024                 lea.l      36(a2),a1
[000507a8] 204a                      movea.l    a2,a0
[000507aa] 266a 006a                 movea.l    106(a2),a3
[000507ae] 4e93                      jsr        (a3)
[000507b0] 4eb9 0004 b33c            jsr        Awi_diastart
Awi_sized_1:
[000507b6] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[000507ba] 4e75                      rts

Awi_moved:
[000507bc] 2f0a                      move.l     a2,-(a7)
[000507be] 2448                      movea.l    a0,a2
[000507c0] 302a 0020                 move.w     32(a2),d0
[000507c4] 6f40                      ble.s      Awi_moved_1
[000507c6] 026a fffe 0056            andi.w     #$FFFE,86(a2)
[000507cc] 3551 0024                 move.w     (a1),36(a2)
[000507d0] 3569 0002 0026            move.w     2(a1),38(a2)
[000507d6] 3569 0004 0028            move.w     4(a1),40(a2)
[000507dc] 3569 0006 002a            move.w     6(a1),42(a2)
[000507e2] 4eb9 0005 080a            jsr        Awi_cleanup
[000507e8] 3f2a 002a                 move.w     42(a2),-(a7)
[000507ec] 3f2a 0028                 move.w     40(a2),-(a7)
[000507f0] 3f2a 0026                 move.w     38(a2),-(a7)
[000507f4] 3f2a 0024                 move.w     36(a2),-(a7)
[000507f8] 7205                      moveq.l    #5,d1
[000507fa] 302a 0020                 move.w     32(a2),d0
[000507fe] 4eb9 0007 1656            jsr        wind_set
[00050804] 504f                      addq.w     #8,a7
Awi_moved_1:
[00050806] 245f                      movea.l    (a7)+,a2
[00050808] 4e75                      rts

Awi_cleanup:
[0005080a] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[0005080e] 4fef ffe8                 lea.l      -24(a7),a7
[00050812] 2448                      movea.l    a0,a2
[00050814] 302a 0056                 move.w     86(a2),d0
[00050818] c07c 0800                 and.w      #$0800,d0
[0005081c] 6600 04fc                 bne        Awi_cleanup_1
[00050820] 362a 0020                 move.w     32(a2),d3
[00050824] 266a 0014                 movea.l    20(a2),a3
[00050828] 286a 0018                 movea.l    24(a2),a4
[0005082c] 2a6a 005e                 movea.l    94(a2),a5
[00050830] 322a 0048                 move.w     72(a2),d1
[00050834] 827c ff00                 or.w       #$FF00,d1
[00050838] 3f41 0002                 move.w     d1,2(a7)
[0005083c] 342a 0048                 move.w     72(a2),d2
[00050840] e042                      asr.w      #8,d2
[00050842] 3e82                      move.w     d2,(a7)
[00050844] 7020                      moveq.l    #32,d0
[00050846] c06a 0022                 and.w      34(a2),d0
[0005084a] 671a                      beq.s      Awi_cleanup_2
[0005084c] 4641                      not.w      d1
[0005084e] d36b 0014                 add.w      d1,20(a3)
[00050852] 302f 0002                 move.w     2(a7),d0
[00050856] c16b 0014                 and.w      d0,20(a3)
[0005085a] 4642                      not.w      d2
[0005085c] d56b 0016                 add.w      d2,22(a3)
[00050860] 3217                      move.w     (a7),d1
[00050862] c36b 0016                 and.w      d1,22(a3)
Awi_cleanup_2:
[00050866] 4246                      clr.w      d6
[00050868] 200d                      move.l     a5,d0
[0005086a] 6712                      beq.s      Awi_cleanup_3
[0005086c] 342d 0002                 move.w     2(a5),d2
[00050870] 48c2                      ext.l      d2
[00050872] 2202                      move.l     d2,d1
[00050874] d281                      add.l      d1,d1
[00050876] d282                      add.l      d2,d1
[00050878] e789                      lsl.l      #3,d1
[0005087a] 3c35 1816                 move.w     22(a5,d1.l),d6
Awi_cleanup_3:
[0005087e] 200c                      move.l     a4,d0
[00050880] 6704                      beq.s      Awi_cleanup_4
[00050882] dc6c 0016                 add.w      22(a4),d6
Awi_cleanup_4:
[00050886] 3f6a 0024 000e            move.w     36(a2),14(a7)
[0005088c] 3f6a 0026 000c            move.w     38(a2),12(a7)
[00050892] 3e2a 0028                 move.w     40(a2),d7
[00050896] 382a 002a                 move.w     42(a2),d4
[0005089a] 4def 0006                 lea.l      6(a7),a6
[0005089e] 2f39 000d 99d6            move.l     _globl,-(a7)
[000508a4] 486f 0008                 pea.l      8(a7)
[000508a8] 4856                      pea.l      (a6)
[000508aa] 302b 0016                 move.w     22(a3),d0
[000508ae] d046                      add.w      d6,d0
[000508b0] 3f00                      move.w     d0,-(a7)
[000508b2] 3f2b 0014                 move.w     20(a3),-(a7)
[000508b6] 4267                      clr.w      -(a7)
[000508b8] 43ef 001a                 lea.l      26(a7),a1
[000508bc] 41ef 001c                 lea.l      28(a7),a0
[000508c0] 4242                      clr.w      d2
[000508c2] 322a 0022                 move.w     34(a2),d1
[000508c6] 4240                      clr.w      d0
[000508c8] 4eb9 0006 d60a            jsr        mt_wind_calc
[000508ce] 4fef 0012                 lea.l      18(a7),a7
[000508d2] be56                      cmp.w      (a6),d7
[000508d4] 6c04                      bge.s      Awi_cleanup_5
[000508d6] 3007                      move.w     d7,d0
[000508d8] 6002                      bra.s      Awi_cleanup_6
Awi_cleanup_5:
[000508da] 3016                      move.w     (a6),d0
Awi_cleanup_6:
[000508dc] 3e00                      move.w     d0,d7
[000508de] b86f 0004                 cmp.w      4(a7),d4
[000508e2] 6c04                      bge.s      Awi_cleanup_7
[000508e4] 3204                      move.w     d4,d1
[000508e6] 6004                      bra.s      Awi_cleanup_8
Awi_cleanup_7:
[000508e8] 322f 0004                 move.w     4(a7),d1
Awi_cleanup_8:
[000508ec] 3801                      move.w     d1,d4
[000508ee] 2079 0010 1f12            movea.l    ACSblk,a0
[000508f4] be68 000c                 cmp.w      12(a0),d7
[000508f8] 6c04                      bge.s      Awi_cleanup_9
[000508fa] 3007                      move.w     d7,d0
[000508fc] 600a                      bra.s      Awi_cleanup_10
Awi_cleanup_9:
[000508fe] 2079 0010 1f12            movea.l    ACSblk,a0
[00050904] 3028 000c                 move.w     12(a0),d0
Awi_cleanup_10:
[00050908] 3e00                      move.w     d0,d7
[0005090a] 2079 0010 1f12            movea.l    ACSblk,a0
[00050910] b868 000e                 cmp.w      14(a0),d4
[00050914] 6c04                      bge.s      Awi_cleanup_11
[00050916] 3204                      move.w     d4,d1
[00050918] 600a                      bra.s      Awi_cleanup_12
Awi_cleanup_11:
[0005091a] 2079 0010 1f12            movea.l    ACSblk,a0
[00050920] 3228 000e                 move.w     14(a0),d1
Awi_cleanup_12:
[00050924] 3801                      move.w     d1,d4
[00050926] 2079 0010 1f12            movea.l    ACSblk,a0
[0005092c] be68 0012                 cmp.w      18(a0),d7
[00050930] 6c06                      bge.s      Awi_cleanup_13
[00050932] 3028 0012                 move.w     18(a0),d0
[00050936] 6002                      bra.s      Awi_cleanup_14
Awi_cleanup_13:
[00050938] 3007                      move.w     d7,d0
Awi_cleanup_14:
[0005093a] 3e00                      move.w     d0,d7
[0005093c] 2079 0010 1f12            movea.l    ACSblk,a0
[00050942] b868 0014                 cmp.w      20(a0),d4
[00050946] 6c06                      bge.s      Awi_cleanup_15
[00050948] 3228 0014                 move.w     20(a0),d1
[0005094c] 6002                      bra.s      Awi_cleanup_16
Awi_cleanup_15:
[0005094e] 3204                      move.w     d4,d1
Awi_cleanup_16:
[00050950] 3801                      move.w     d1,d4
[00050952] 3a39 0010 6fe4            move.w     $00106FE4,d5
[00050958] 9a6f 0008                 sub.w      8(a7),d5
[0005095c] 3039 0010 6fe2            move.w     virt_desk,d0
[00050962] d079 0010 6fe6            add.w      $00106FE6,d0
[00050968] 9047                      sub.w      d7,d0
[0005096a] 342f 000e                 move.w     14(a7),d2
[0005096e] b440                      cmp.w      d0,d2
[00050970] 6c02                      bge.s      Awi_cleanup_17
[00050972] 600e                      bra.s      Awi_cleanup_18
Awi_cleanup_17:
[00050974] 3439 0010 6fe2            move.w     virt_desk,d2
[0005097a] d479 0010 6fe6            add.w      $00106FE6,d2
[00050980] 9447                      sub.w      d7,d2
Awi_cleanup_18:
[00050982] 3f42 000e                 move.w     d2,14(a7)
[00050986] 3039 0010 6fe4            move.w     $00106FE4,d0
[0005098c] d079 0010 6fe8            add.w      $00106FE8,d0
[00050992] 9044                      sub.w      d4,d0
[00050994] 322f 000c                 move.w     12(a7),d1
[00050998] b240                      cmp.w      d0,d1
[0005099a] 6c02                      bge.s      Awi_cleanup_19
[0005099c] 600e                      bra.s      Awi_cleanup_20
Awi_cleanup_19:
[0005099e] 3239 0010 6fe4            move.w     $00106FE4,d1
[000509a4] d279 0010 6fe8            add.w      $00106FE8,d1
[000509aa] 9244                      sub.w      d4,d1
Awi_cleanup_20:
[000509ac] 3f41 000c                 move.w     d1,12(a7)
[000509b0] 3039 0010 6fe2            move.w     virt_desk,d0
[000509b6] b06f 000e                 cmp.w      14(a7),d0
[000509ba] 6f02                      ble.s      Awi_cleanup_21
[000509bc] 6004                      bra.s      Awi_cleanup_22
Awi_cleanup_21:
[000509be] 302f 000e                 move.w     14(a7),d0
Awi_cleanup_22:
[000509c2] 3f40 000e                 move.w     d0,14(a7)
[000509c6] 3239 0010 6fe4            move.w     $00106FE4,d1
[000509cc] b26f 000c                 cmp.w      12(a7),d1
[000509d0] 6f02                      ble.s      Awi_cleanup_23
[000509d2] 6004                      bra.s      Awi_cleanup_24
Awi_cleanup_23:
[000509d4] 322f 000c                 move.w     12(a7),d1
Awi_cleanup_24:
[000509d8] 3f41 000c                 move.w     d1,12(a7)
[000509dc] 2f39 000d 99d6            move.l     _globl,-(a7)
[000509e2] 486f 0008                 pea.l      8(a7)
[000509e6] 4856                      pea.l      (a6)
[000509e8] 3f04                      move.w     d4,-(a7)
[000509ea] 3f07                      move.w     d7,-(a7)
[000509ec] 3f01                      move.w     d1,-(a7)
[000509ee] 43ef 001a                 lea.l      26(a7),a1
[000509f2] 41ef 001c                 lea.l      28(a7),a0
[000509f6] 342f 0020                 move.w     32(a7),d2
[000509fa] 322a 0022                 move.w     34(a2),d1
[000509fe] 7001                      moveq.l    #1,d0
[00050a00] 4eb9 0006 d60a            jsr        mt_wind_calc
[00050a06] 4fef 0012                 lea.l      18(a7),a7
[00050a0a] 9d6f 0004                 sub.w      d6,4(a7)
[00050a0e] 302f 0002                 move.w     2(a7),d0
[00050a12] c16f 000a                 and.w      d0,10(a7)
[00050a16] 322f 0008                 move.w     8(a7),d1
[00050a1a] 9245                      sub.w      d5,d1
[00050a1c] 9257                      sub.w      (a7),d1
[00050a1e] 5341                      subq.w     #1,d1
[00050a20] c257                      and.w      (a7),d1
[00050a22] d245                      add.w      d5,d1
[00050a24] d246                      add.w      d6,d1
[00050a26] 3f41 0008                 move.w     d1,8(a7)
[00050a2a] 7420                      moveq.l    #32,d2
[00050a2c] c46a 0022                 and.w      34(a2),d2
[00050a30] 6708                      beq.s      Awi_cleanup_25
[00050a32] c156                      and.w      d0,(a6)
[00050a34] 3817                      move.w     (a7),d4
[00050a36] c96f 0004                 and.w      d4,4(a7)
Awi_cleanup_25:
[00050a3a] 200d                      move.l     a5,d0
[00050a3c] 6700 008e                 beq        Awi_cleanup_26
[00050a40] 342d 0002                 move.w     2(a5),d2
[00050a44] 48c2                      ext.l      d2
[00050a46] 2202                      move.l     d2,d1
[00050a48] d281                      add.l      d1,d1
[00050a4a] d282                      add.l      d2,d1
[00050a4c] e789                      lsl.l      #3,d1
[00050a4e] 3a35 1802                 move.w     2(a5,d1.l),d5
[00050a52] 3e05                      move.w     d5,d7
[00050a54] 48c7                      ext.l      d7
[00050a56] 2807                      move.l     d7,d4
[00050a58] d884                      add.l      d4,d4
[00050a5a] d887                      add.l      d7,d4
[00050a5c] e78c                      lsl.l      #3,d4
[00050a5e] 0c75 0003 4802            cmpi.w     #$0003,2(a5,d4.l)
[00050a64] 662a                      bne.s      Awi_cleanup_27
[00050a66] 3bad 0048 4802            move.w     72(a5),2(a5,d4.l)
[00050a6c] 3a2d 0004                 move.w     4(a5),d5
[00050a70] 3805                      move.w     d5,d4
[00050a72] 48c4                      ext.l      d4
[00050a74] 2404                      move.l     d4,d2
[00050a76] d482                      add.l      d2,d2
[00050a78] d484                      add.l      d4,d2
[00050a7a] e78a                      lsl.l      #3,d2
[00050a7c] 3e35 2802                 move.w     2(a5,d2.l),d7
[00050a80] 48c7                      ext.l      d7
[00050a82] 2207                      move.l     d7,d1
[00050a84] d281                      add.l      d1,d1
[00050a86] d287                      add.l      d7,d1
[00050a88] e789                      lsl.l      #3,d1
[00050a8a] 3bb5 1800 2802            move.w     0(a5,d1.l),2(a5,d2.l)
Awi_cleanup_27:
[00050a90] 322d 0002                 move.w     2(a5),d1
[00050a94] 48c1                      ext.l      d1
[00050a96] 2001                      move.l     d1,d0
[00050a98] d080                      add.l      d0,d0
[00050a9a] d081                      add.l      d1,d0
[00050a9c] e788                      lsl.l      #3,d0
[00050a9e] 00b5 00ff 0000 080c       ori.l      #$00FF0000,12(a5,d0.l)
[00050aa6] 302f 000a                 move.w     10(a7),d0
[00050aaa] 2079 0010 1f12            movea.l    ACSblk,a0
[00050ab0] 3428 0012                 move.w     18(a0),d2
[00050ab4] 3202                      move.w     d2,d1
[00050ab6] d241                      add.w      d1,d1
[00050ab8] d242                      add.w      d2,d1
[00050aba] 9041                      sub.w      d1,d0
[00050abc] 3b40 0010                 move.w     d0,16(a5)
[00050ac0] 322f 0008                 move.w     8(a7),d1
[00050ac4] 9246                      sub.w      d6,d1
[00050ac6] 5341                      subq.w     #1,d1
[00050ac8] 3b41 0012                 move.w     d1,18(a5)
Awi_cleanup_26:
[00050acc] 356f 000a 0034            move.w     10(a7),52(a2)
[00050ad2] 356f 0008 0036            move.w     8(a7),54(a2)
[00050ad8] 3556 0038                 move.w     (a6),56(a2)
[00050adc] 356f 0004 003a            move.w     4(a7),58(a2)
[00050ae2] 200c                      move.l     a4,d0
[00050ae4] 6700 0086                 beq        Awi_cleanup_28
[00050ae8] 7240                      moveq.l    #64,d1
[00050aea] 2079 0010 1f12            movea.l    ACSblk,a0
[00050af0] 2268 023c                 movea.l    572(a0),a1
[00050af4] c269 000e                 and.w      14(a1),d1
[00050af8] 6760                      beq.s      Awi_cleanup_29
[00050afa] 342c 0014                 move.w     20(a4),d2
[00050afe] b456                      cmp.w      (a6),d2
[00050b00] 6c58                      bge.s      Awi_cleanup_29
[00050b02] 4bef 0010                 lea.l      16(a7),a5
[00050b06] 302a 0038                 move.w     56(a2),d0
[00050b0a] 2079 0010 1f12            movea.l    ACSblk,a0
[00050b10] 3228 0012                 move.w     18(a0),d1
[00050b14] d241                      add.w      d1,d1
[00050b16] 9041                      sub.w      d1,d0
[00050b18] 6f02                      ble.s      Awi_cleanup_30
[00050b1a] 6002                      bra.s      Awi_cleanup_31
Awi_cleanup_30:
[00050b1c] 4240                      clr.w      d0
Awi_cleanup_31:
[00050b1e] d06a 0034                 add.w      52(a2),d0
[00050b22] 3a80                      move.w     d0,(a5)
[00050b24] 3b6a 0036 0002            move.w     54(a2),2(a5)
[00050b2a] 2079 0010 1f12            movea.l    ACSblk,a0
[00050b30] 3028 0012                 move.w     18(a0),d0
[00050b34] d040                      add.w      d0,d0
[00050b36] 3b40 0004                 move.w     d0,4(a5)
[00050b3a] 3b6c 0016 0006            move.w     22(a4),6(a5)
[00050b40] 204d                      movea.l    a5,a0
[00050b42] 322a 0020                 move.w     32(a2),d1
[00050b46] 2279 0010 1f12            movea.l    ACSblk,a1
[00050b4c] 3011                      move.w     (a1),d0
[00050b4e] 4eb9 0005 5058            jsr        Aev_WmRedraw
[00050b54] 006a 0010 0056            ori.w      #$0010,86(a2)
Awi_cleanup_29:
[00050b5a] 426c 0010                 clr.w      16(a4)
[00050b5e] 302c 0016                 move.w     22(a4),d0
[00050b62] 4440                      neg.w      d0
[00050b64] 3940 0012                 move.w     d0,18(a4)
[00050b68] 3956 0014                 move.w     (a6),20(a4)
Awi_cleanup_28:
[00050b6c] 3a2b 0014                 move.w     20(a3),d5
[00050b70] 9a56                      sub.w      (a6),d5
[00050b72] ca6f 0002                 and.w      2(a7),d5
[00050b76] 302b 0010                 move.w     16(a3),d0
[00050b7a] 3205                      move.w     d5,d1
[00050b7c] 4441                      neg.w      d1
[00050b7e] b041                      cmp.w      d1,d0
[00050b80] 6c04                      bge.s      Awi_cleanup_32
[00050b82] 3741 0010                 move.w     d1,16(a3)
Awi_cleanup_32:
[00050b86] 382b 0016                 move.w     22(a3),d4
[00050b8a] 986f 0004                 sub.w      4(a7),d4
[00050b8e] c857                      and.w      (a7),d4
[00050b90] 302b 0012                 move.w     18(a3),d0
[00050b94] 3204                      move.w     d4,d1
[00050b96] 4441                      neg.w      d1
[00050b98] b041                      cmp.w      d1,d0
[00050b9a] 6c04                      bge.s      Awi_cleanup_33
[00050b9c] 3741 0012                 move.w     d1,18(a3)
Awi_cleanup_33:
[00050ba0] 2f39 000d 99d6            move.l     _globl,-(a7)
[00050ba6] 486a 002a                 pea.l      42(a2)
[00050baa] 486a 0028                 pea.l      40(a2)
[00050bae] 302f 0010                 move.w     16(a7),d0
[00050bb2] d046                      add.w      d6,d0
[00050bb4] 3f00                      move.w     d0,-(a7)
[00050bb6] 3f16                      move.w     (a6),-(a7)
[00050bb8] 322f 0018                 move.w     24(a7),d1
[00050bbc] 9246                      sub.w      d6,d1
[00050bbe] 3f01                      move.w     d1,-(a7)
[00050bc0] 43ea 0026                 lea.l      38(a2),a1
[00050bc4] 41ea 0024                 lea.l      36(a2),a0
[00050bc8] 342f 001c                 move.w     28(a7),d2
[00050bcc] 322a 0022                 move.w     34(a2),d1
[00050bd0] 4240                      clr.w      d0
[00050bd2] 4eb9 0006 d60a            jsr        mt_wind_calc
[00050bd8] 4fef 0012                 lea.l      18(a7),a7
[00050bdc] 302a 0022                 move.w     34(a2),d0
[00050be0] c07c 0800                 and.w      #$0800,d0
[00050be4] 6700 0094                 beq        Awi_cleanup_34
[00050be8] 7220                      moveq.l    #32,d1
[00050bea] c26a 0054                 and.w      84(a2),d1
[00050bee] 6600 008a                 bne        Awi_cleanup_34
[00050bf2] 4247                      clr.w      d7
[00050bf4] 4a45                      tst.w      d5
[00050bf6] 6f20                      ble.s      Awi_cleanup_35
[00050bf8] 342b 0010                 move.w     16(a3),d2
[00050bfc] 48c2                      ext.l      d2
[00050bfe] 2002                      move.l     d2,d0
[00050c00] eb88                      lsl.l      #5,d0
[00050c02] 9082                      sub.l      d2,d0
[00050c04] e588                      lsl.l      #2,d0
[00050c06] d082                      add.l      d2,d0
[00050c08] e788                      lsl.l      #3,d0
[00050c0a] 4480                      neg.l      d0
[00050c0c] 3205                      move.w     d5,d1
[00050c0e] 48c1                      ext.l      d1
[00050c10] 4eb9 0007 773a            jsr        _ldiv
[00050c16] 2e00                      move.l     d0,d7
Awi_cleanup_35:
[00050c18] be6a 003c                 cmp.w      60(a2),d7
[00050c1c] 671c                      beq.s      Awi_cleanup_36
[00050c1e] 3547 003c                 move.w     d7,60(a2)
[00050c22] 4a43                      tst.w      d3
[00050c24] 6f14                      ble.s      Awi_cleanup_36
[00050c26] 4267                      clr.w      -(a7)
[00050c28] 4267                      clr.w      -(a7)
[00050c2a] 4267                      clr.w      -(a7)
[00050c2c] 3f07                      move.w     d7,-(a7)
[00050c2e] 7208                      moveq.l    #8,d1
[00050c30] 3003                      move.w     d3,d0
[00050c32] 4eb9 0007 1656            jsr        wind_set
[00050c38] 504f                      addq.w     #8,a7
Awi_cleanup_36:
[00050c3a] 3216                      move.w     (a6),d1
[00050c3c] 48c1                      ext.l      d1
[00050c3e] 2001                      move.l     d1,d0
[00050c40] eb88                      lsl.l      #5,d0
[00050c42] 9081                      sub.l      d1,d0
[00050c44] e588                      lsl.l      #2,d0
[00050c46] d081                      add.l      d1,d0
[00050c48] e788                      lsl.l      #3,d0
[00050c4a] 322b 0014                 move.w     20(a3),d1
[00050c4e] 48c1                      ext.l      d1
[00050c50] 4eb9 0007 773a            jsr        _ldiv
[00050c56] 2e00                      move.l     d0,d7
[00050c58] be6a 0040                 cmp.w      64(a2),d7
[00050c5c] 671c                      beq.s      Awi_cleanup_34
[00050c5e] 3547 0040                 move.w     d7,64(a2)
[00050c62] 4a43                      tst.w      d3
[00050c64] 6f14                      ble.s      Awi_cleanup_34
[00050c66] 4267                      clr.w      -(a7)
[00050c68] 4267                      clr.w      -(a7)
[00050c6a] 4267                      clr.w      -(a7)
[00050c6c] 3f07                      move.w     d7,-(a7)
[00050c6e] 720f                      moveq.l    #15,d1
[00050c70] 3003                      move.w     d3,d0
[00050c72] 4eb9 0007 1656            jsr        wind_set
[00050c78] 504f                      addq.w     #8,a7
Awi_cleanup_34:
[00050c7a] 302a 0022                 move.w     34(a2),d0
[00050c7e] c07c 0100                 and.w      #$0100,d0
[00050c82] 6700 0096                 beq        Awi_cleanup_1
[00050c86] 7240                      moveq.l    #64,d1
[00050c88] c26a 0054                 and.w      84(a2),d1
[00050c8c] 6600 008c                 bne        Awi_cleanup_1
[00050c90] 4247                      clr.w      d7
[00050c92] 4a44                      tst.w      d4
[00050c94] 6f20                      ble.s      Awi_cleanup_37
[00050c96] 342b 0012                 move.w     18(a3),d2
[00050c9a] 48c2                      ext.l      d2
[00050c9c] 2002                      move.l     d2,d0
[00050c9e] eb88                      lsl.l      #5,d0
[00050ca0] 9082                      sub.l      d2,d0
[00050ca2] e588                      lsl.l      #2,d0
[00050ca4] d082                      add.l      d2,d0
[00050ca6] e788                      lsl.l      #3,d0
[00050ca8] 4480                      neg.l      d0
[00050caa] 3204                      move.w     d4,d1
[00050cac] 48c1                      ext.l      d1
[00050cae] 4eb9 0007 773a            jsr        _ldiv
[00050cb4] 2e00                      move.l     d0,d7
Awi_cleanup_37:
[00050cb6] be6a 003e                 cmp.w      62(a2),d7
[00050cba] 671c                      beq.s      Awi_cleanup_38
[00050cbc] 3547 003e                 move.w     d7,62(a2)
[00050cc0] 4a43                      tst.w      d3
[00050cc2] 6f14                      ble.s      Awi_cleanup_38
[00050cc4] 4267                      clr.w      -(a7)
[00050cc6] 4267                      clr.w      -(a7)
[00050cc8] 4267                      clr.w      -(a7)
[00050cca] 3f07                      move.w     d7,-(a7)
[00050ccc] 7209                      moveq.l    #9,d1
[00050cce] 3003                      move.w     d3,d0
[00050cd0] 4eb9 0007 1656            jsr        wind_set
[00050cd6] 504f                      addq.w     #8,a7
Awi_cleanup_38:
[00050cd8] 322f 0004                 move.w     4(a7),d1
[00050cdc] 48c1                      ext.l      d1
[00050cde] 2001                      move.l     d1,d0
[00050ce0] eb88                      lsl.l      #5,d0
[00050ce2] 9081                      sub.l      d1,d0
[00050ce4] e588                      lsl.l      #2,d0
[00050ce6] d081                      add.l      d1,d0
[00050ce8] e788                      lsl.l      #3,d0
[00050cea] 322b 0016                 move.w     22(a3),d1
[00050cee] 48c1                      ext.l      d1
[00050cf0] 4eb9 0007 773a            jsr        _ldiv
[00050cf6] 2e00                      move.l     d0,d7
[00050cf8] be6a 0042                 cmp.w      66(a2),d7
[00050cfc] 671c                      beq.s      Awi_cleanup_1
[00050cfe] 3547 0042                 move.w     d7,66(a2)
[00050d02] 4a43                      tst.w      d3
[00050d04] 6f14                      ble.s      Awi_cleanup_1
[00050d06] 4267                      clr.w      -(a7)
[00050d08] 4267                      clr.w      -(a7)
[00050d0a] 4267                      clr.w      -(a7)
[00050d0c] 3f07                      move.w     d7,-(a7)
[00050d0e] 7210                      moveq.l    #16,d1
[00050d10] 3003                      move.w     d3,d0
[00050d12] 4eb9 0007 1656            jsr        wind_set
[00050d18] 504f                      addq.w     #8,a7
Awi_cleanup_1:
[00050d1a] 4fef 0018                 lea.l      24(a7),a7
[00050d1e] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[00050d22] 4e75                      rts

Awi_oblist:
[00050d24] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[00050d28] 4fef ffee                 lea.l      -18(a7),a7
[00050d2c] 2848                      movea.l    a0,a4
[00050d2e] 45ef 000c                 lea.l      12(a7),a2
[00050d32] 4252                      clr.w      (a2)
[00050d34] 47ef 000a                 lea.l      10(a7),a3
[00050d38] 4253                      clr.w      (a3)
[00050d3a] 3f7c ffff 0006            move.w     #$FFFF,6(a7)
[00050d40] 3f7c ffff 0004            move.w     #$FFFF,4(a7)
[00050d46] 4245                      clr.w      d5
[00050d48] 302c 0056                 move.w     86(a4),d0
[00050d4c] c07c 0800                 and.w      #$0800,d0
[00050d50] 6600 0240                 bne        Awi_oblist_1
[00050d54] 2a6c 0014                 movea.l    20(a4),a5
[00050d58] 220d                      move.l     a5,d1
[00050d5a] 6700 0236                 beq        Awi_oblist_1
[00050d5e] 7208                      moveq.l    #8,d1
[00050d60] c26c 0054                 and.w      84(a4),d1
[00050d64] 6700 0196                 beq        Awi_oblist_2
[00050d68] 2f39 000d 99d6            move.l     _globl,-(a7)
[00050d6e] 4853                      pea.l      (a3)
[00050d70] 4852                      pea.l      (a2)
[00050d72] 3f2c 002a                 move.w     42(a4),-(a7)
[00050d76] 3f2c 0028                 move.w     40(a4),-(a7)
[00050d7a] 3f2c 0026                 move.w     38(a4),-(a7)
[00050d7e] 43ef 001a                 lea.l      26(a7),a1
[00050d82] 41ef 001a                 lea.l      26(a7),a0
[00050d86] 342c 0024                 move.w     36(a4),d2
[00050d8a] 322c 0022                 move.w     34(a4),d1
[00050d8e] 7001                      moveq.l    #1,d0
[00050d90] 4eb9 0006 d60a            jsr        mt_wind_calc
[00050d96] 4fef 0012                 lea.l      18(a7),a7
[00050d9a] 3c2d 0002                 move.w     2(a5),d6
[00050d9e] 4247                      clr.w      d7
[00050da0] 4a46                      tst.w      d6
[00050da2] 6f00 00d4                 ble        Awi_oblist_3
[00050da6] 3206                      move.w     d6,d1
[00050da8] 48c1                      ext.l      d1
[00050daa] 2001                      move.l     d1,d0
[00050dac] d080                      add.l      d0,d0
[00050dae] d081                      add.l      d1,d0
[00050db0] e788                      lsl.l      #3,d0
[00050db2] 3835 0810                 move.w     16(a5,d0.l),d4
[00050db6] 3f44 0010                 move.w     d4,16(a7)
[00050dba] 3435 0812                 move.w     18(a5,d0.l),d2
[00050dbe] 3f42 000e                 move.w     d2,14(a7)
[00050dc2] 3e82                      move.w     d2,(a7)
[00050dc4] 6000 00a4                 bra        Awi_oblist_4
Awi_oblist_11:
[00050dc8] 303c 0080                 move.w     #$0080,d0
[00050dcc] 3406                      move.w     d6,d2
[00050dce] 48c2                      ext.l      d2
[00050dd0] 2202                      move.l     d2,d1
[00050dd2] d281                      add.l      d1,d1
[00050dd4] d282                      add.l      d2,d1
[00050dd6] e789                      lsl.l      #3,d1
[00050dd8] c075 1808                 and.w      8(a5,d1.l),d0
[00050ddc] 6600 007c                 bne.w      Awi_oblist_5
[00050de0] 3604                      move.w     d4,d3
[00050de2] d675 1814                 add.w      20(a5,d1.l),d3
[00050de6] b652                      cmp.w      (a2),d3
[00050de8] 6f1e                      ble.s      Awi_oblist_6
[00050dea] bc6d 0002                 cmp.w      2(a5),d6
[00050dee] 6718                      beq.s      Awi_oblist_6
[00050df0] 302f 0010                 move.w     16(a7),d0
[00050df4] 9044                      sub.w      d4,d0
[00050df6] d640                      add.w      d0,d3
[00050df8] 382f 0010                 move.w     16(a7),d4
[00050dfc] 3007                      move.w     d7,d0
[00050dfe] d06f 000e                 add.w      14(a7),d0
[00050e02] d157                      add.w      d0,(a7)
[00050e04] 3e2f 000e                 move.w     14(a7),d7
Awi_oblist_6:
[00050e08] 3206                      move.w     d6,d1
[00050e0a] 48c1                      ext.l      d1
[00050e0c] 2001                      move.l     d1,d0
[00050e0e] d080                      add.l      d0,d0
[00050e10] d081                      add.l      d1,d0
[00050e12] e788                      lsl.l      #3,d0
[00050e14] be75 0816                 cmp.w      22(a5,d0.l),d7
[00050e18] 6c04                      bge.s      Awi_oblist_7
[00050e1a] 3e35 0816                 move.w     22(a5,d0.l),d7
Awi_oblist_7:
[00050e1e] 3206                      move.w     d6,d1
[00050e20] 48c1                      ext.l      d1
[00050e22] 2001                      move.l     d1,d0
[00050e24] d080                      add.l      d0,d0
[00050e26] d081                      add.l      d1,d0
[00050e28] e788                      lsl.l      #3,d0
[00050e2a] b875 0810                 cmp.w      16(a5,d0.l),d4
[00050e2e] 6608                      bne.s      Awi_oblist_8
[00050e30] 3435 0812                 move.w     18(a5,d0.l),d2
[00050e34] b457                      cmp.w      (a7),d2
[00050e36] 6716                      beq.s      Awi_oblist_9
Awi_oblist_8:
[00050e38] 3206                      move.w     d6,d1
[00050e3a] 48c1                      ext.l      d1
[00050e3c] 2001                      move.l     d1,d0
[00050e3e] d080                      add.l      d0,d0
[00050e40] d081                      add.l      d1,d0
[00050e42] e788                      lsl.l      #3,d0
[00050e44] 3b84 0810                 move.w     d4,16(a5,d0.l)
[00050e48] 3b97 0812                 move.w     (a7),18(a5,d0.l)
[00050e4c] 7a01                      moveq.l    #1,d5
Awi_oblist_9:
[00050e4e] b652                      cmp.w      (a2),d3
[00050e50] 6f02                      ble.s      Awi_oblist_10
[00050e52] 3483                      move.w     d3,(a2)
Awi_oblist_10:
[00050e54] 3803                      move.w     d3,d4
[00050e56] d86f 0010                 add.w      16(a7),d4
Awi_oblist_5:
[00050e5a] 3206                      move.w     d6,d1
[00050e5c] 48c1                      ext.l      d1
[00050e5e] 2001                      move.l     d1,d0
[00050e60] d080                      add.l      d0,d0
[00050e62] d081                      add.l      d1,d0
[00050e64] e788                      lsl.l      #3,d0
[00050e66] 3c35 0800                 move.w     0(a5,d0.l),d6
Awi_oblist_4:
[00050e6a] 4a46                      tst.w      d6
[00050e6c] 6e00 ff5a                 bgt        Awi_oblist_11
[00050e70] 3017                      move.w     (a7),d0
[00050e72] d06f 000e                 add.w      14(a7),d0
[00050e76] de40                      add.w      d0,d7
Awi_oblist_3:
[00050e78] 302d 0014                 move.w     20(a5),d0
[00050e7c] b052                      cmp.w      (a2),d0
[00050e7e] 671e                      beq.s      Awi_oblist_12
[00050e80] 3f40 0006                 move.w     d0,6(a7)
[00050e84] 322c 0048                 move.w     72(a4),d1
[00050e88] 827c ff00                 or.w       #$FF00,d1
[00050e8c] c352                      and.w      d1,(a2)
[00050e8e] 3b52 0014                 move.w     (a2),20(a5)
[00050e92] 322c 0022                 move.w     34(a4),d1
[00050e96] c27c 0800                 and.w      #$0800,d1
[00050e9a] 6702                      beq.s      Awi_oblist_12
[00050e9c] 7a01                      moveq.l    #1,d5
Awi_oblist_12:
[00050e9e] 202c 005e                 move.l     94(a4),d0
[00050ea2] 6716                      beq.s      Awi_oblist_13
[00050ea4] 2040                      movea.l    d0,a0
[00050ea6] 3428 0002                 move.w     2(a0),d2
[00050eaa] 48c2                      ext.l      d2
[00050eac] 2202                      move.l     d2,d1
[00050eae] d281                      add.l      d1,d1
[00050eb0] d282                      add.l      d2,d1
[00050eb2] e789                      lsl.l      #3,d1
[00050eb4] 3630 1816                 move.w     22(a0,d1.l),d3
[00050eb8] 9753                      sub.w      d3,(a3)
Awi_oblist_13:
[00050eba] 202c 0018                 move.l     24(a4),d0
[00050ebe] 6708                      beq.s      Awi_oblist_14
[00050ec0] 2040                      movea.l    d0,a0
[00050ec2] 3228 0016                 move.w     22(a0),d1
[00050ec6] 9353                      sub.w      d1,(a3)
Awi_oblist_14:
[00050ec8] be53                      cmp.w      (a3),d7
[00050eca] 6c04                      bge.s      Awi_oblist_15
[00050ecc] 3013                      move.w     (a3),d0
[00050ece] 6002                      bra.s      Awi_oblist_16
Awi_oblist_15:
[00050ed0] 3007                      move.w     d7,d0
Awi_oblist_16:
[00050ed2] 322c 0048                 move.w     72(a4),d1
[00050ed6] e041                      asr.w      #8,d1
[00050ed8] 827c ff00                 or.w       #$FF00,d1
[00050edc] c041                      and.w      d1,d0
[00050ede] 3680                      move.w     d0,(a3)
[00050ee0] 342d 0016                 move.w     22(a5),d2
[00050ee4] b440                      cmp.w      d0,d2
[00050ee6] 6714                      beq.s      Awi_oblist_2
[00050ee8] 3f42 0004                 move.w     d2,4(a7)
[00050eec] 3b40 0016                 move.w     d0,22(a5)
[00050ef0] 322c 0022                 move.w     34(a4),d1
[00050ef4] c27c 0800                 and.w      #$0800,d1
[00050ef8] 6702                      beq.s      Awi_oblist_2
[00050efa] 7a01                      moveq.l    #1,d5
Awi_oblist_2:
[00050efc] 362c 003c                 move.w     60(a4),d3
[00050f00] 3f6c 003e 0002            move.w     62(a4),2(a7)
[00050f06] 204c                      movea.l    a4,a0
[00050f08] 6100 f900                 bsr        Awi_cleanup
[00050f0c] 4a45                      tst.w      d5
[00050f0e] 6600 0078                 bne.w      Awi_oblist_17
[00050f12] 7008                      moveq.l    #8,d0
[00050f14] c06c 0054                 and.w      84(a4),d0
[00050f18] 673c                      beq.s      Awi_oblist_18
[00050f1a] 322c 0022                 move.w     34(a4),d1
[00050f1e] c27c 0800                 and.w      #$0800,d1
[00050f22] 6712                      beq.s      Awi_oblist_19
[00050f24] 342f 0006                 move.w     6(a7),d2
[00050f28] b452                      cmp.w      (a2),d2
[00050f2a] 6c0a                      bge.s      Awi_oblist_19
[00050f2c] 0c6c 03e8 003c            cmpi.w     #$03E8,60(a4)
[00050f32] 6602                      bne.s      Awi_oblist_19
[00050f34] 7a01                      moveq.l    #1,d5
Awi_oblist_19:
[00050f36] 4a45                      tst.w      d5
[00050f38] 664e                      bne.s      Awi_oblist_17
[00050f3a] 302c 0022                 move.w     34(a4),d0
[00050f3e] c07c 0100                 and.w      #$0100,d0
[00050f42] 6744                      beq.s      Awi_oblist_17
[00050f44] 322f 0004                 move.w     4(a7),d1
[00050f48] b253                      cmp.w      (a3),d1
[00050f4a] 6c3c                      bge.s      Awi_oblist_17
[00050f4c] 0c6c 03e8 003e            cmpi.w     #$03E8,62(a4)
[00050f52] 6634                      bne.s      Awi_oblist_17
[00050f54] 6030                      bra.s      Awi_oblist_20
Awi_oblist_18:
[00050f56] 302c 0022                 move.w     34(a4),d0
[00050f5a] c07c 0800                 and.w      #$0800,d0
[00050f5e] 670c                      beq.s      Awi_oblist_21
[00050f60] 322c 003c                 move.w     60(a4),d1
[00050f64] 6604                      bne.s      Awi_oblist_22
[00050f66] 4a43                      tst.w      d3
[00050f68] 6702                      beq.s      Awi_oblist_21
Awi_oblist_22:
[00050f6a] 7a01                      moveq.l    #1,d5
Awi_oblist_21:
[00050f6c] 4a45                      tst.w      d5
[00050f6e] 6618                      bne.s      Awi_oblist_17
[00050f70] 302c 0022                 move.w     34(a4),d0
[00050f74] c07c 0100                 and.w      #$0100,d0
[00050f78] 670e                      beq.s      Awi_oblist_17
[00050f7a] 322c 003e                 move.w     62(a4),d1
[00050f7e] 6606                      bne.s      Awi_oblist_20
[00050f80] 342f 0002                 move.w     2(a7),d2
[00050f84] 6702                      beq.s      Awi_oblist_17
Awi_oblist_20:
[00050f86] 7a01                      moveq.l    #1,d5
Awi_oblist_17:
[00050f88] 4a45                      tst.w      d5
[00050f8a] 6706                      beq.s      Awi_oblist_1
[00050f8c] 006c 0010 0056            ori.w      #$0010,86(a4)
Awi_oblist_1:
[00050f92] 4fef 0012                 lea.l      18(a7),a7
[00050f96] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[00050f9a] 4e75                      rts

Awi_iconify:
[00050f9c] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00050fa0] 2448                      movea.l    a0,a2
[00050fa2] 3600                      move.w     d0,d3
[00050fa4] 322a 0020                 move.w     32(a2),d1
[00050fa8] 6f12                      ble.s      Awi_iconify_1
[00050faa] 342a 0056                 move.w     86(a2),d2
[00050fae] c47c 0c00                 and.w      #$0C00,d2
[00050fb2] 6608                      bne.s      Awi_iconify_1
[00050fb4] 6100 d4d6                 bsr        Awi_iconcreate
[00050fb8] 4a40                      tst.w      d0
[00050fba] 6606                      bne.s      Awi_iconify_2
Awi_iconify_1:
[00050fbc] 4240                      clr.w      d0
[00050fbe] 6000 01b6                 bra        Awi_iconify_3
Awi_iconify_2:
[00050fc2] 2079 0010 1f12            movea.l    ACSblk,a0
[00050fc8] b5e8 0240                 cmpa.l     576(a0),a2
[00050fcc] 660c                      bne.s      Awi_iconify_4
[00050fce] 4eb9 0004 4a26            jsr        Adr_unselect
[00050fd4] 4eb9 0004 6d70            jsr        Aev_mess
Awi_iconify_4:
[00050fda] 70ff                      moveq.l    #-1,d0
[00050fdc] 3540 0052                 move.w     d0,82(a2)
[00050fe0] 3540 001e                 move.w     d0,30(a2)
[00050fe4] 3540 001c                 move.w     d0,28(a2)
[00050fe8] 72fe                      moveq.l    #-2,d1
[00050fea] c26a 0056                 and.w      86(a2),d1
[00050fee] 827c 0800                 or.w       #$0800,d1
[00050ff2] 3541 0056                 move.w     d1,86(a2)
[00050ff6] 4a43                      tst.w      d3
[00050ff8] 6706                      beq.s      Awi_iconify_5
[00050ffa] 006a 1000 0056            ori.w      #$1000,86(a2)
Awi_iconify_5:
[00051000] 7008                      moveq.l    #8,d0
[00051002] 43ea 0024                 lea.l      36(a2),a1
[00051006] 41ea 002c                 lea.l      44(a2),a0
[0005100a] 4eb9 0007 6f44            jsr        memcpy
[00051010] 47f9 000d 99d6            lea.l      _globl,a3
[00051016] 2053                      movea.l    (a3),a0
[00051018] 302a 0020                 move.w     32(a2),d0
[0005101c] 4eb9 0006 d1ba            jsr        mt_wind_close
[00051022] 70ff                      moveq.l    #-1,d0
[00051024] 3f00                      move.w     d0,-(a7)
[00051026] 3f00                      move.w     d0,-(a7)
[00051028] 3f00                      move.w     d0,-(a7)
[0005102a] 3f00                      move.w     d0,-(a7)
[0005102c] 721a                      moveq.l    #26,d1
[0005102e] 302a 0020                 move.w     32(a2),d0
[00051032] 4eb9 0007 1656            jsr        wind_set
[00051038] 504f                      addq.w     #8,a7
[0005103a] 70ff                      moveq.l    #-1,d0
[0005103c] 3f00                      move.w     d0,-(a7)
[0005103e] 3f00                      move.w     d0,-(a7)
[00051040] 2053                      movea.l    (a3),a0
[00051042] 3400                      move.w     d0,d2
[00051044] 3200                      move.w     d0,d1
[00051046] 302a 0020                 move.w     32(a2),d0
[0005104a] 4eb9 0006 d140            jsr        mt_wind_open
[00051050] 584f                      addq.w     #4,a7
[00051052] 7219                      moveq.l    #25,d1
[00051054] 302a 0020                 move.w     32(a2),d0
[00051058] 4eb9 0007 1656            jsr        wind_set
[0005105e] 49f9 0010 6bb6            lea.l      gemmap,a4
[00051064] 302a 0020                 move.w     32(a2),d0
[00051068] e548                      lsl.w      #2,d0
[0005106a] 41ec 0834                 lea.l      2100(a4),a0
[0005106e] 2a70 0000                 movea.l    0(a0,d0.w),a5
[00051072] 486d 0016                 pea.l      22(a5)
[00051076] 486d 0014                 pea.l      20(a5)
[0005107a] 486d 0012                 pea.l      18(a5)
[0005107e] 486d 0010                 pea.l      16(a5)
[00051082] 7204                      moveq.l    #4,d1
[00051084] 302a 0020                 move.w     32(a2),d0
[00051088] 4eb9 0007 14ea            jsr        wind_get
[0005108e] 4fef 0010                 lea.l      16(a7),a7
[00051092] 206d 0024                 movea.l    36(a5),a0
[00051096] 302d 0014                 move.w     20(a5),d0
[0005109a] 9068 0016                 sub.w      22(a0),d0
[0005109e] e240                      asr.w      #1,d0
[000510a0] 3140 0012                 move.w     d0,18(a0)
[000510a4] 322d 0016                 move.w     22(a5),d1
[000510a8] 9268 0018                 sub.w      24(a0),d1
[000510ac] 9268 0020                 sub.w      32(a0),d1
[000510b0] e241                      asr.w      #1,d1
[000510b2] 3141 0014                 move.w     d1,20(a0)
[000510b6] 3028 0020                 move.w     32(a0),d0
[000510ba] 6720                      beq.s      Awi_iconify_6
[000510bc] 3428 001e                 move.w     30(a0),d2
[000510c0] 671a                      beq.s      Awi_iconify_6
[000510c2] 322d 0014                 move.w     20(a5),d1
[000510c6] 9242                      sub.w      d2,d1
[000510c8] e241                      asr.w      #1,d1
[000510ca] 3141 001a                 move.w     d1,26(a0)
[000510ce] 3028 0014                 move.w     20(a0),d0
[000510d2] d068 0018                 add.w      24(a0),d0
[000510d6] 3140 001c                 move.w     d0,28(a0)
[000510da] 6014                      bra.s      Awi_iconify_7
Awi_iconify_6:
[000510dc] 302d 0014                 move.w     20(a5),d0
[000510e0] e240                      asr.w      #1,d0
[000510e2] 3140 001a                 move.w     d0,26(a0)
[000510e6] 322d 0016                 move.w     22(a5),d1
[000510ea] e241                      asr.w      #1,d1
[000510ec] 3141 001c                 move.w     d1,28(a0)
Awi_iconify_7:
[000510f0] 4a43                      tst.w      d3
[000510f2] 6700 0080                 beq        Awi_iconify_8
[000510f6] 4eb9 0004 4a26            jsr        Adr_unselect
[000510fc] 7601                      moveq.l    #1,d3
[000510fe] 606e                      bra.s      Awi_iconify_9
Awi_iconify_12:
[00051100] 3003                      move.w     d3,d0
[00051102] e548                      lsl.w      #2,d0
[00051104] 2a74 0000                 movea.l    0(a4,d0.w),a5
[00051108] 220d                      move.l     a5,d1
[0005110a] 6760                      beq.s      Awi_iconify_10
[0005110c] b66a 0020                 cmp.w      32(a2),d3
[00051110] 675a                      beq.s      Awi_iconify_10
[00051112] 342d 0056                 move.w     86(a5),d2
[00051116] c47c 0800                 and.w      #$0800,d2
[0005111a] 6716                      beq.s      Awi_iconify_11
[0005111c] 204d                      movea.l    a5,a0
[0005111e] 6100 d410                 bsr        Awi_icondelete
[00051122] 7008                      moveq.l    #8,d0
[00051124] 43ed 002c                 lea.l      44(a5),a1
[00051128] 41ed 0024                 lea.l      36(a5),a0
[0005112c] 4eb9 0007 6f44            jsr        memcpy
Awi_iconify_11:
[00051132] 3003                      move.w     d3,d0
[00051134] e548                      lsl.w      #2,d0
[00051136] 41ec 0220                 lea.l      544(a4),a0
[0005113a] 218d 0000                 move.l     a5,0(a0,d0.w)
[0005113e] 42b4 0000                 clr.l      0(a4,d0.w)
[00051142] 302d 0020                 move.w     32(a5),d0
[00051146] 2053                      movea.l    (a3),a0
[00051148] 4eb9 0006 d1ba            jsr        mt_wind_close
[0005114e] 2053                      movea.l    (a3),a0
[00051150] 302d 0020                 move.w     32(a5),d0
[00051154] 4eb9 0006 d214            jsr        mt_wind_delete
[0005115a] 3b7c ffff 0020            move.w     #$FFFF,32(a5)
[00051160] 006d 0800 0056            ori.w      #$0800,86(a5)
[00051166] 4eb9 0004 6d70            jsr        Aev_mess
Awi_iconify_10:
[0005116c] 5243                      addq.w     #1,d3
Awi_iconify_9:
[0005116e] b67c 0080                 cmp.w      #$0080,d3
[00051172] 6d8c                      blt.s      Awi_iconify_12
Awi_iconify_8:
[00051174] 7001                      moveq.l    #1,d0
Awi_iconify_3:
[00051176] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0005117a] 4e75                      rts

Awi_uniconify:
[0005117c] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00051180] 2448                      movea.l    a0,a2
[00051182] 200a                      move.l     a2,d0
[00051184] 6700 00a4                 beq        Awi_uniconify_1
[00051188] 322a 0056                 move.w     86(a2),d1
[0005118c] c27c 0800                 and.w      #$0800,d1
[00051190] 6700 0098                 beq        Awi_uniconify_1
[00051194] 6100 d39a                 bsr        Awi_icondelete
[00051198] 4a40                      tst.w      d0
[0005119a] 6700 008e                 beq        Awi_uniconify_1
[0005119e] 7008                      moveq.l    #8,d0
[000511a0] 43ea 002c                 lea.l      44(a2),a1
[000511a4] 41ea 0024                 lea.l      36(a2),a0
[000511a8] 4eb9 0007 6f44            jsr        memcpy
[000511ae] 3f2a 0032                 move.w     50(a2),-(a7)
[000511b2] 3f2a 0030                 move.w     48(a2),-(a7)
[000511b6] 3f2a 002e                 move.w     46(a2),-(a7)
[000511ba] 3f2a 002c                 move.w     44(a2),-(a7)
[000511be] 721b                      moveq.l    #27,d1
[000511c0] 302a 0020                 move.w     32(a2),d0
[000511c4] 4eb9 0007 1656            jsr        wind_set
[000511ca] 504f                      addq.w     #8,a7
[000511cc] 4eb9 0004 b286            jsr        Awi_diaend
[000511d2] 4267                      clr.w      -(a7)
[000511d4] 4267                      clr.w      -(a7)
[000511d6] 4267                      clr.w      -(a7)
[000511d8] 4267                      clr.w      -(a7)
[000511da] 720a                      moveq.l    #10,d1
[000511dc] 302a 0020                 move.w     32(a2),d0
[000511e0] 4eb9 0007 1656            jsr        wind_set
[000511e6] 504f                      addq.w     #8,a7
[000511e8] 026a f7ff 0056            andi.w     #$F7FF,86(a2)
[000511ee] 7208                      moveq.l    #8,d1
[000511f0] 70ff                      moveq.l    #-1,d0
[000511f2] 206a 0014                 movea.l    20(a2),a0
[000511f6] 4eb9 0004 aeca            jsr        Aob_findflag
[000511fc] 3540 001c                 move.w     d0,28(a2)
[00051200] 4a40                      tst.w      d0
[00051202] 6a1a                      bpl.s      Awi_uniconify_2
[00051204] 222a 0018                 move.l     24(a2),d1
[00051208] 6714                      beq.s      Awi_uniconify_2
[0005120a] 2041                      movea.l    d1,a0
[0005120c] 70ff                      moveq.l    #-1,d0
[0005120e] 7208                      moveq.l    #8,d1
[00051210] 4eb9 0004 aeca            jsr        Aob_findflag
[00051216] 807c 1000                 or.w       #$1000,d0
[0005121a] 3540 001c                 move.w     d0,28(a2)
Awi_uniconify_2:
[0005121e] 357c ffff 001e            move.w     #$FFFF,30(a2)
[00051224] 4eb9 0004 b33c            jsr        Awi_diastart
Awi_uniconify_1:
[0005122a] 302a 0056                 move.w     86(a2),d0
[0005122e] c07c 1000                 and.w      #$1000,d0
[00051232] 673a                      beq.s      Awi_uniconify_3
[00051234] 7601                      moveq.l    #1,d3
[00051236] 45f9 0010 6dd6            lea.l      icnmap,a2
[0005123c] 602a                      bra.s      Awi_uniconify_4
Awi_uniconify_6:
[0005123e] 3003                      move.w     d3,d0
[00051240] e548                      lsl.w      #2,d0
[00051242] 2672 0000                 movea.l    0(a2,d0.w),a3
[00051246] 220b                      move.l     a3,d1
[00051248] 671c                      beq.s      Awi_uniconify_5
[0005124a] 026b f7ff 0056            andi.w     #$F7FF,86(a3)
[00051250] 204b                      movea.l    a3,a0
[00051252] 226b 000c                 movea.l    12(a3),a1
[00051256] 4e91                      jsr        (a1)
[00051258] 3003                      move.w     d3,d0
[0005125a] e548                      lsl.w      #2,d0
[0005125c] 42b2 0000                 clr.l      0(a2,d0.w)
[00051260] 4eb9 0004 6d70            jsr        Aev_mess
Awi_uniconify_5:
[00051266] 5243                      addq.w     #1,d3
Awi_uniconify_4:
[00051268] b67c 0080                 cmp.w      #$0080,d3
[0005126c] 6dd0                      blt.s      Awi_uniconify_6
Awi_uniconify_3:
[0005126e] 7001                      moveq.l    #1,d0
[00051270] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00051274] 4e75                      rts

Awi_service:
[00051276] 2f0a                      move.l     a2,-(a7)
[00051278] 2448                      movea.l    a0,a2
[0005127a] 3200                      move.w     d0,d1
[0005127c] 5541                      subq.w     #2,d1
[0005127e] 6702                      beq.s      Awi_service_1
[00051280] 600a                      bra.s      Awi_service_2
Awi_service_1:
[00051282] 204a                      movea.l    a2,a0
[00051284] 6100 f0aa                 bsr        Awi_delete
[00051288] 7001                      moveq.l    #1,d0
[0005128a] 6002                      bra.s      Awi_service_3
Awi_service_2:
[0005128c] 4240                      clr.w      d0
Awi_service_3:
[0005128e] 245f                      movea.l    (a7)+,a2
[00051290] 4e75                      rts

Awi_dialog:
[00051292] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[00051296] 4fef ffd6                 lea.l      -42(a7),a7
[0005129a] 2448                      movea.l    a0,a2
[0005129c] 49f9 0010 1f12            lea.l      ACSblk,a4
[000512a2] 4bf9 000d 99d6            lea.l      _globl,a5
[000512a8] 302a 0056                 move.w     86(a2),d0
[000512ac] c07c 0800                 and.w      #$0800,d0
[000512b0] 6600 007a                 bne.w      Awi_dialog_1
[000512b4] 3239 000d 5026            move.w     a_dialog_active,d1
[000512ba] 672c                      beq.s      Awi_dialog_2
[000512bc] 242a 0014                 move.l     20(a2),d2
[000512c0] 676a                      beq.s      Awi_dialog_1
[000512c2] 41d7                      lea.l      (a7),a0
[000512c4] 4eb9 0005 f4e8            jsr        Act_save
[000512ca] 2054                      movea.l    (a4),a0
[000512cc] 214a 0258                 move.l     a2,600(a0)
[000512d0] 206a 0014                 movea.l    20(a2),a0
[000512d4] 4eb9 0005 f8ee            jsr        A_dialog
[000512da] 3600                      move.w     d0,d3
[000512dc] 41d7                      lea.l      (a7),a0
[000512de] 4eb9 0005 f532            jsr        Act_restore
[000512e4] 6000 0320                 bra        Awi_dialog_3
Awi_dialog_2:
[000512e8] 302a 0020                 move.w     32(a2),d0
[000512ec] 6a2e                      bpl.s      Awi_dialog_4
[000512ee] 2054                      movea.l    (a4),a0
[000512f0] 3f28 000e                 move.w     14(a0),-(a7)
[000512f4] 3f28 000c                 move.w     12(a0),-(a7)
[000512f8] 3428 000a                 move.w     10(a0),d2
[000512fc] 3228 0008                 move.w     8(a0),d1
[00051300] 4240                      clr.w      d0
[00051302] 2055                      movea.l    (a5),a0
[00051304] 4eb9 0006 d0c6            jsr        mt_wind_create
[0005130a] 584f                      addq.w     #4,a7
[0005130c] 3800                      move.w     d0,d4
[0005130e] 4a40                      tst.w      d0
[00051310] 6b00 008e                 bmi        Awi_dialog_5
[00051314] 2055                      movea.l    (a5),a0
[00051316] 4eb9 0006 d214            jsr        mt_wind_delete
Awi_dialog_4:
[0005131c] 202a 0014                 move.l     20(a2),d0
[00051320] 670a                      beq.s      Awi_dialog_1
[00051322] 322a 0056                 move.w     86(a2),d1
[00051326] c27c 0400                 and.w      #$0400,d1
[0005132a] 6706                      beq.s      Awi_dialog_6
Awi_dialog_1:
[0005132c] 70fd                      moveq.l    #-3,d0
[0005132e] 6000 02d8                 bra        Awi_dialog_7
Awi_dialog_6:
[00051332] 7001                      moveq.l    #1,d0
[00051334] 204a                      movea.l    a2,a0
[00051336] 6100 ea4a                 bsr        Awi_set_modal
[0005133a] 5240                      addq.w     #1,d0
[0005133c] 6762                      beq.s      Awi_dialog_5
[0005133e] 41d7                      lea.l      (a7),a0
[00051340] 4eb9 0005 f4e8            jsr        Act_save
[00051346] 2054                      movea.l    (a4),a0
[00051348] 214a 0258                 move.l     a2,600(a0)
[0005134c] 026a bfff 0022            andi.w     #$BFFF,34(a2)
[00051352] 42a7                      clr.l      -(a7)
[00051354] 42a7                      clr.l      -(a7)
[00051356] 42a7                      clr.l      -(a7)
[00051358] 486f 0034                 pea.l      52(a7)
[0005135c] 720a                      moveq.l    #10,d1
[0005135e] 4240                      clr.w      d0
[00051360] 4eb9 0007 14ea            jsr        wind_get
[00051366] 4fef 0010                 lea.l      16(a7),a7
[0005136a] 302a 0020                 move.w     32(a2),d0
[0005136e] 6b0e                      bmi.s      Awi_dialog_8
[00051370] b06f 0028                 cmp.w      40(a7),d0
[00051374] 6708                      beq.s      Awi_dialog_8
[00051376] 204a                      movea.l    a2,a0
[00051378] 6100 f0da                 bsr        Awi_topped
[0005137c] 602e                      bra.s      Awi_dialog_9
Awi_dialog_8:
[0005137e] 006a 0100 0056            ori.w      #$0100,86(a2)
[00051384] 204a                      movea.l    a2,a0
[00051386] 226a 000c                 movea.l    12(a2),a1
[0005138a] 4e91                      jsr        (a1)
[0005138c] 4a40                      tst.w      d0
[0005138e] 6716                      beq.s      Awi_dialog_10
[00051390] 41d7                      lea.l      (a7),a0
[00051392] 4eb9 0005 f532            jsr        Act_restore
[00051398] 4240                      clr.w      d0
[0005139a] 204a                      movea.l    a2,a0
[0005139c] 6100 e9e4                 bsr        Awi_set_modal
Awi_dialog_5:
[000513a0] 70fe                      moveq.l    #-2,d0
[000513a2] 6000 0264                 bra        Awi_dialog_7
Awi_dialog_10:
[000513a6] 026a feff 0056            andi.w     #$FEFF,86(a2)
Awi_dialog_9:
[000513ac] 302a 0058                 move.w     88(a2),d0
[000513b0] 4a40                      tst.w      d0
[000513b2] 6b18                      bmi.s      Awi_dialog_11
[000513b4] 2039 000d 3dc8            move.l     Aroot_wi,d0
[000513ba] 6710                      beq.s      Awi_dialog_11
[000513bc] 43ea 0058                 lea.l      88(a2),a1
[000513c0] 2040                      movea.l    d0,a0
[000513c2] 2640                      movea.l    d0,a3
[000513c4] 266b 0004                 movea.l    4(a3),a3
[000513c8] 7065                      moveq.l    #101,d0
[000513ca] 4e93                      jsr        (a3)
Awi_dialog_11:
[000513cc] 006a 0400 0056            ori.w      #$0400,86(a2)
[000513d2] 2f15                      move.l     (a5),-(a7)
[000513d4] 2054                      movea.l    (a4),a0
[000513d6] 4868 0266                 pea.l      614(a0)
[000513da] 4868 02ca                 pea.l      714(a0)
[000513de] 2248                      movea.l    a0,a1
[000513e0] 43e9 0264                 lea.l      612(a1),a1
[000513e4] 41e8 0262                 lea.l      610(a0),a0
[000513e8] 4eb9 0006 c978            jsr        mt_graf_mkstate
[000513ee] 4fef 000c                 lea.l      12(a7),a7
Awi_dialog_21:
[000513f2] 47ef 0018                 lea.l      24(a7),a3
[000513f6] 2054                      movea.l    (a4),a0
[000513f8] 4268 0268                 clr.w      616(a0)
[000513fc] 76ff                      moveq.l    #-1,d3
[000513fe] 7010                      moveq.l    #16,d0
[00051400] 4eb9 0005 1e1c            jsr        Awi_update
[00051406] 2f15                      move.l     (a5),-(a7)
[00051408] 2054                      movea.l    (a4),a0
[0005140a] 4868 02cc                 pea.l      716(a0)
[0005140e] 4868 02ce                 pea.l      718(a0)
[00051412] 4868 0266                 pea.l      614(a0)
[00051416] 4868 02ca                 pea.l      714(a0)
[0005141a] 4868 0264                 pea.l      612(a0)
[0005141e] 2028 0232                 move.l     562(a0),d0
[00051422] 7210                      moveq.l    #16,d1
[00051424] e2a0                      asr.l      d1,d0
[00051426] 7400                      moveq.l    #0,d2
[00051428] 3400                      move.w     d0,d2
[0005142a] e3aa                      lsl.l      d1,d2
[0005142c] 7800                      moveq.l    #0,d4
[0005142e] 3828 0234                 move.w     564(a0),d4
[00051432] 8484                      or.l       d4,d2
[00051434] 2f02                      move.l     d2,-(a7)
[00051436] 4267                      clr.w      -(a7)
[00051438] 4267                      clr.w      -(a7)
[0005143a] 4267                      clr.w      -(a7)
[0005143c] 4267                      clr.w      -(a7)
[0005143e] 4267                      clr.w      -(a7)
[00051440] 7001                      moveq.l    #1,d0
[00051442] 3f00                      move.w     d0,-(a7)
[00051444] 3f00                      move.w     d0,-(a7)
[00051446] 3f28 0264                 move.w     612(a0),-(a7)
[0005144a] 3f28 0262                 move.w     610(a0),-(a7)
[0005144e] 3f00                      move.w     d0,-(a7)
[00051450] 3f28 02c8                 move.w     712(a0),-(a7)
[00051454] 2248                      movea.l    a0,a1
[00051456] 43e9 0262                 lea.l      610(a1),a1
[0005145a] 204b                      movea.l    a3,a0
[0005145c] 2c54                      movea.l    (a4),a6
[0005145e] 342e 02c6                 move.w     710(a6),d2
[00051462] 322e 02d0                 move.w     720(a6),d1
[00051466] 7037                      moveq.l    #55,d0
[00051468] 4eb9 0006 af70            jsr        mt_evnt_multi
[0005146e] 4fef 0032                 lea.l      50(a7),a7
[00051472] 3800                      move.w     d0,d4
[00051474] 2054                      movea.l    (a4),a0
[00051476] 3228 0266                 move.w     614(a0),d1
[0005147a] 3028 02ce                 move.w     718(a0),d0
[0005147e] 4eb9 0004 1e3e            jsr        nkc_gemks2n
[00051484] 2054                      movea.l    (a4),a0
[00051486] 3140 02ce                 move.w     d0,718(a0)
[0005148a] 7020                      moveq.l    #32,d0
[0005148c] 4eb9 0005 1e1c            jsr        Awi_update
[00051492] 7010                      moveq.l    #16,d0
[00051494] c044                      and.w      d4,d0
[00051496] 671c                      beq.s      Awi_dialog_12
[00051498] 204b                      movea.l    a3,a0
[0005149a] 4eb9 0005 3ade            jsr        Aev_message
[000514a0] 0c53 0029                 cmpi.w     #$0029,(a3)
[000514a4] 660e                      bne.s      Awi_dialog_12
[000514a6] 76ff                      moveq.l    #-1,d3
[000514a8] 7020                      moveq.l    #32,d0
[000514aa] 4eb9 0005 1e1c            jsr        Awi_update
[000514b0] 6000 011e                 bra        Awi_dialog_13
Awi_dialog_12:
[000514b4] 7002                      moveq.l    #2,d0
[000514b6] c044                      and.w      d4,d0
[000514b8] 6712                      beq.s      Awi_dialog_14
[000514ba] 2054                      movea.l    (a4),a0
[000514bc] 3228 02cc                 move.w     716(a0),d1
[000514c0] 3028 02ca                 move.w     714(a0),d0
[000514c4] 4eb9 0004 69f2            jsr        evbutton
[000514ca] 3600                      move.w     d0,d3
Awi_dialog_14:
[000514cc] 7001                      moveq.l    #1,d0
[000514ce] c044                      and.w      d4,d0
[000514d0] 670a                      beq.s      Awi_dialog_15
[000514d2] 91c8                      suba.l     a0,a0
[000514d4] 4eb9 0004 6522            jsr        evkeybrd
[000514da] 3600                      move.w     d0,d3
Awi_dialog_15:
[000514dc] 2f15                      move.l     (a5),-(a7)
[000514de] 2054                      movea.l    (a4),a0
[000514e0] 4868 0266                 pea.l      614(a0)
[000514e4] 4868 02ca                 pea.l      714(a0)
[000514e8] 2248                      movea.l    a0,a1
[000514ea] 43e9 0264                 lea.l      612(a1),a1
[000514ee] 41e8 0262                 lea.l      610(a0),a0
[000514f2] 4eb9 0006 c978            jsr        mt_graf_mkstate
[000514f8] 4fef 000c                 lea.l      12(a7),a7
[000514fc] 2054                      movea.l    (a4),a0
[000514fe] 3028 02ca                 move.w     714(a0),d0
[00051502] 6612                      bne.s      Awi_dialog_16
[00051504] 7204                      moveq.l    #4,d1
[00051506] c244                      and.w      d4,d1
[00051508] 6706                      beq.s      Awi_dialog_17
[0005150a] 4eb9 0004 63f4            jsr        Aev_unhidepointer
Awi_dialog_17:
[00051510] 4eb9 0004 6bf0            jsr        evmouse
Awi_dialog_16:
[00051516] 4eb9 0004 7ef6            jsr        Ax_release
[0005151c] 6100 da7c                 bsr        Awi_lateupdate
[00051520] 2054                      movea.l    (a4),a0
[00051522] 2179 000d 3dc8 0258       move.l     Aroot_wi,600(a0)
[0005152a] 2054                      movea.l    (a4),a0
[0005152c] 2068 02ac                 movea.l    684(a0),a0
[00051530] 4e90                      jsr        (a0)
[00051532] 2054                      movea.l    (a4),a0
[00051534] 3028 0268                 move.w     616(a0),d0
[00051538] 6722                      beq.s      Awi_dialog_18
[0005153a] b67c ffff                 cmp.w      #$FFFF,d3
[0005153e] 6600 0090                 bne        Awi_dialog_13
[00051542] 222a 0014                 move.l     20(a2),d1
[00051546] 6700 0088                 beq        Awi_dialog_13
[0005154a] 2041                      movea.l    d1,a0
[0005154c] 70ff                      moveq.l    #-1,d0
[0005154e] 7202                      moveq.l    #2,d1
[00051550] 4eb9 0004 aeca            jsr        Aob_findflag
[00051556] 3600                      move.w     d0,d3
[00051558] 6000 0076                 bra.w      Awi_dialog_13
Awi_dialog_18:
[0005155c] 4a43                      tst.w      d3
[0005155e] 6b68                      bmi.s      Awi_dialog_19
[00051560] 3003                      move.w     d3,d0
[00051562] c07c 1000                 and.w      #$1000,d0
[00051566] 6736                      beq.s      Awi_dialog_20
[00051568] 3803                      move.w     d3,d4
[0005156a] c87c 0fff                 and.w      #$0FFF,d4
[0005156e] 7205                      moveq.l    #5,d1
[00051570] 3004                      move.w     d4,d0
[00051572] 48c0                      ext.l      d0
[00051574] 2400                      move.l     d0,d2
[00051576] d482                      add.l      d2,d2
[00051578] d480                      add.l      d0,d2
[0005157a] e78a                      lsl.l      #3,d2
[0005157c] 206a 0018                 movea.l    24(a2),a0
[00051580] c270 2808                 and.w      8(a0,d2.l),d1
[00051584] 5b41                      subq.w     #5,d1
[00051586] 6640                      bne.s      Awi_dialog_19
[00051588] 226a 0014                 movea.l    20(a2),a1
[0005158c] 3231 2820                 move.w     32(a1,d2.l),d1
[00051590] c27c 8000                 and.w      #$8000,d1
[00051594] 673a                      beq.s      Awi_dialog_13
[00051596] 2031 2818                 move.l     24(a1,d2.l),d0
[0005159a] 6734                      beq.s      Awi_dialog_13
[0005159c] 602a                      bra.s      Awi_dialog_19
Awi_dialog_20:
[0005159e] 7005                      moveq.l    #5,d0
[000515a0] 3403                      move.w     d3,d2
[000515a2] 48c2                      ext.l      d2
[000515a4] 2202                      move.l     d2,d1
[000515a6] d281                      add.l      d1,d1
[000515a8] d282                      add.l      d2,d1
[000515aa] e789                      lsl.l      #3,d1
[000515ac] 206a 0014                 movea.l    20(a2),a0
[000515b0] c070 1808                 and.w      8(a0,d1.l),d0
[000515b4] 5b40                      subq.w     #5,d0
[000515b6] 6610                      bne.s      Awi_dialog_19
[000515b8] 3830 1820                 move.w     32(a0,d1.l),d4
[000515bc] c87c 8000                 and.w      #$8000,d4
[000515c0] 670e                      beq.s      Awi_dialog_13
[000515c2] 2030 1818                 move.l     24(a0,d1.l),d0
[000515c6] 6708                      beq.s      Awi_dialog_13
Awi_dialog_19:
[000515c8] 302a 0020                 move.w     32(a2),d0
[000515cc] 6a00 fe24                 bpl        Awi_dialog_21
Awi_dialog_13:
[000515d0] 2054                      movea.l    (a4),a0
[000515d2] 4268 0268                 clr.w      616(a0)
[000515d6] 302a 0020                 move.w     32(a2),d0
[000515da] 6b08                      bmi.s      Awi_dialog_22
[000515dc] 204a                      movea.l    a2,a0
[000515de] 226a 0072                 movea.l    114(a2),a1
[000515e2] 4e91                      jsr        (a1)
Awi_dialog_22:
[000515e4] 4240                      clr.w      d0
[000515e6] 204a                      movea.l    a2,a0
[000515e8] 6100 e798                 bsr        Awi_set_modal
[000515ec] 026a fbff 0056            andi.w     #$FBFF,86(a2)
[000515f2] 41d7                      lea.l      (a7),a0
[000515f4] 4eb9 0005 f532            jsr        Act_restore
[000515fa] 4eb9 0004 6d70            jsr        Aev_mess
[00051600] 4eb9 0004 6d70            jsr        Aev_mess
Awi_dialog_3:
[00051606] 3003                      move.w     d3,d0
Awi_dialog_7:
[00051608] 4fef 002a                 lea.l      42(a7),a7
[0005160c] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[00051610] 4e75                      rts

Awi_doform:
[00051612] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00051616] 2848                      movea.l    a0,a4
[00051618] 2a49                      movea.l    a1,a5
[0005161a] 95ca                      suba.l     a2,a2
[0005161c] 264a                      movea.l    a2,a3
[0005161e] 76fe                      moveq.l    #-2,d3
[00051620] 226c 0008                 movea.l    8(a4),a1
[00051624] 204d                      movea.l    a5,a0
[00051626] 4e91                      jsr        (a1)
[00051628] 2448                      movea.l    a0,a2
[0005162a] 200a                      move.l     a2,d0
[0005162c] 6760                      beq.s      Awi_doform_1
[0005162e] 2279 0010 1f12            movea.l    ACSblk,a1
[00051634] 3229 000c                 move.w     12(a1),d1
[00051638] b26a 0038                 cmp.w      56(a2),d1
[0005163c] 6f06                      ble.s      Awi_doform_2
[0005163e] 026a f1ff 0022            andi.w     #$F1FF,34(a2)
Awi_doform_2:
[00051644] 2079 0010 1f12            movea.l    ACSblk,a0
[0005164a] 3028 000e                 move.w     14(a0),d0
[0005164e] b06a 003a                 cmp.w      58(a2),d0
[00051652] 6f06                      ble.s      Awi_doform_3
[00051654] 026a fe3f 0022            andi.w     #$FE3F,34(a2)
Awi_doform_3:
[0005165a] 2079 0010 1f12            movea.l    ACSblk,a0
[00051660] 3028 000e                 move.w     14(a0),d0
[00051664] b06a 003a                 cmp.w      58(a2),d0
[00051668] 6f10                      ble.s      Awi_doform_4
[0005166a] 3228 000c                 move.w     12(a0),d1
[0005166e] b26a 0038                 cmp.w      56(a2),d1
[00051672] 6f06                      ble.s      Awi_doform_4
[00051674] 026a ffdb 0022            andi.w     #$FFDB,34(a2)
Awi_doform_4:
[0005167a] 026a 9fff 0022            andi.w     #$9FFF,34(a2)
[00051680] 204a                      movea.l    a2,a0
[00051682] 6100 fc0e                 bsr        Awi_dialog
[00051686] 3600                      move.w     d0,d3
[00051688] 204a                      movea.l    a2,a0
[0005168a] 6100 eca4                 bsr        Awi_delete
Awi_doform_1:
[0005168e] b67c ffff                 cmp.w      #$FFFF,d3
[00051692] 6c30                      bge.s      Awi_doform_5
[00051694] 206c 0014                 movea.l    20(a4),a0
[00051698] 4eb9 0004 9a5c            jsr        Aob_create
[0005169e] 2648                      movea.l    a0,a3
[000516a0] 200b                      move.l     a3,d0
[000516a2] 6712                      beq.s      Awi_doform_6
[000516a4] 4eb9 0005 f8ee            jsr        A_dialog
[000516aa] 3600                      move.w     d0,d3
[000516ac] 204b                      movea.l    a3,a0
[000516ae] 4eb9 0004 9b7c            jsr        Aob_delete
[000516b4] 600e                      bra.s      Awi_doform_5
Awi_doform_6:
[000516b6] 41f9 000d 3ff8            lea.l      $000D3FF8,a0
[000516bc] 7001                      moveq.l    #1,d0
[000516be] 4eb9 0005 17fe            jsr        Awi_alert
Awi_doform_5:
[000516c4] 3003                      move.w     d3,d0
[000516c6] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[000516ca] 4e75                      rts

Awi_diaabort:
[000516cc] 2079 0010 1f12            movea.l    ACSblk,a0
[000516d2] 317c 0001 0268            move.w     #$0001,616(a0)
[000516d8] 4e75                      rts

Awi_shadow:
[000516da] 2f0a                      move.l     a2,-(a7)
[000516dc] 514f                      subq.w     #8,a7
[000516de] 2448                      movea.l    a0,a2
[000516e0] 302a 0020                 move.w     32(a2),d0
[000516e4] 6a04                      bpl.s      Awi_shadow_1
[000516e6] 7001                      moveq.l    #1,d0
[000516e8] 603c                      bra.s      Awi_shadow_2
Awi_shadow_1:
[000516ea] 486f 0004                 pea.l      4(a7)
[000516ee] 486f 0008                 pea.l      8(a7)
[000516f2] 486f 000a                 pea.l      10(a7)
[000516f6] 486f 000c                 pea.l      12(a7)
[000516fa] 720b                      moveq.l    #11,d1
[000516fc] 302a 0020                 move.w     32(a2),d0
[00051700] 4eb9 0007 14ea            jsr        wind_get
[00051706] 4fef 0010                 lea.l      16(a7),a7
[0005170a] 302a 0056                 move.w     86(a2),d0
[0005170e] c07c 2000                 and.w      #$2000,d0
[00051712] 660c                      bne.s      Awi_shadow_3
[00051714] 322f 0004                 move.w     4(a7),d1
[00051718] 660a                      bne.s      Awi_shadow_4
[0005171a] 342f 0006                 move.w     6(a7),d2
[0005171e] 6604                      bne.s      Awi_shadow_4
Awi_shadow_3:
[00051720] 7001                      moveq.l    #1,d0
[00051722] 6002                      bra.s      Awi_shadow_2
Awi_shadow_4:
[00051724] 4240                      clr.w      d0
Awi_shadow_2:
[00051726] 504f                      addq.w     #8,a7
[00051728] 245f                      movea.l    (a7)+,a2
[0005172a] 4e75                      rts

_init_alert:
[0005172c] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00051730] 514f                      subq.w     #8,a7
[00051732] 2448                      movea.l    a0,a2
[00051734] 2010                      move.l     (a0),d0
[00051736] 6700 00bc                 beq        _init_alert_1
[0005173a] 006a 0020 0056            ori.w      #$0020,86(a2)
[00051740] 47f9 0010 6bae            lea.l      timer1,a3
[00051746] 4eb9 0007 2c9c            jsr        Ash_gettimer
[0005174c] 2680                      move.l     d0,(a3)
[0005174e] 90ab 0004                 sub.l      4(a3),d0
[00051752] b0bc 0000 0258            cmp.l      #$00000258,d0
[00051758] 6f00 009a                 ble        _init_alert_1
[0005175c] 2753 0004                 move.l     (a3),4(a3)
[00051760] 7605                      moveq.l    #5,d3
[00051762] 601c                      bra.s      _init_alert_2
_init_alert_4:
[00051764] 303c 0080                 move.w     #$0080,d0
[00051768] 3403                      move.w     d3,d2
[0005176a] 48c2                      ext.l      d2
[0005176c] 2202                      move.l     d2,d1
[0005176e] d281                      add.l      d1,d1
[00051770] d282                      add.l      d2,d1
[00051772] e789                      lsl.l      #3,d1
[00051774] 206a 0014                 movea.l    20(a2),a0
[00051778] c070 1808                 and.w      8(a0,d1.l),d0
[0005177c] 6708                      beq.s      _init_alert_3
[0005177e] 5243                      addq.w     #1,d3
_init_alert_2:
[00051780] b67c 000d                 cmp.w      #$000D,d3
[00051784] 6fde                      ble.s      _init_alert_4
_init_alert_3:
[00051786] 3203                      move.w     d3,d1
[00051788] 48c1                      ext.l      d1
[0005178a] 2001                      move.l     d1,d0
[0005178c] d080                      add.l      d0,d0
[0005178e] d081                      add.l      d1,d0
[00051790] e788                      lsl.l      #3,d0
[00051792] 206a 0014                 movea.l    20(a2),a0
[00051796] 0070 0080 0808            ori.w      #$0080,8(a0,d0.l)
[0005179c] 5343                      subq.w     #1,d3
[0005179e] 3203                      move.w     d3,d1
[000517a0] 48c1                      ext.l      d1
[000517a2] 2001                      move.l     d1,d0
[000517a4] d080                      add.l      d0,d0
[000517a6] d081                      add.l      d1,d0
[000517a8] e788                      lsl.l      #3,d0
[000517aa] 206a 0014                 movea.l    20(a2),a0
[000517ae] 0270 ff7f 0808            andi.w     #$FF7F,8(a0,d0.l)
[000517b4] 226a 0014                 movea.l    20(a2),a1
[000517b8] 41d7                      lea.l      (a7),a0
[000517ba] 7002                      moveq.l    #2,d0
[000517bc] 4eb9 0004 a3be            jsr        Aob_offset
[000517c2] 302a 0034                 move.w     52(a2),d0
[000517c6] d157                      add.w      d0,(a7)
[000517c8] 322a 0036                 move.w     54(a2),d1
[000517cc] d36f 0002                 add.w      d1,2(a7)
[000517d0] 43d7                      lea.l      (a7),a1
[000517d2] 204a                      movea.l    a2,a0
[000517d4] 286a 006a                 movea.l    106(a2),a4
[000517d8] 4e94                      jsr        (a4)
[000517da] b67c 0005                 cmp.w      #$0005,d3
[000517de] 6614                      bne.s      _init_alert_1
[000517e0] 2079 0010 1f12            movea.l    ACSblk,a0
[000517e6] 317c 0001 0268            move.w     #$0001,616(a0)
[000517ec] 7000                      moveq.l    #0,d0
[000517ee] 2740 0004                 move.l     d0,4(a3)
[000517f2] 2680                      move.l     d0,(a3)
_init_alert_1:
[000517f4] 4240                      clr.w      d0
[000517f6] 504f                      addq.w     #8,a7
[000517f8] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[000517fc] 4e75                      rts

Awi_alert:
[000517fe] 48e7 1e3c                 movem.l    d3-d6/a2-a5,-(a7)
[00051802] 4fef ffd8                 lea.l      -40(a7),a7
[00051806] 3a00                      move.w     d0,d5
[00051808] 2f48 0024                 move.l     a0,36(a7)
[0005180c] 4eb9 0007 69b0            jsr        strlen
[00051812] 7209                      moveq.l    #9,d1
[00051814] b280                      cmp.l      d0,d1
[00051816] 6200 0592                 bhi        Awi_alert_1
[0005181a] 41f9 000d 2bae            lea.l      _W_ALERT,a0
[00051820] 2279 000d 2bb6            movea.l    $000D2BB6,a1
[00051826] 4e91                      jsr        (a1)
[00051828] 2648                      movea.l    a0,a3
[0005182a] 200b                      move.l     a3,d0
[0005182c] 6700 0580                 beq        Awi_alert_2
[00051830] 2279 0010 1f12            movea.l    ACSblk,a1
[00051836] 2229 03e0                 move.l     992(a1),d1
[0005183a] 671a                      beq.s      Awi_alert_3
[0005183c] 246b 004a                 movea.l    74(a3),a2
[00051840] 2041                      movea.l    d1,a0
[00051842] 4eb9 0004 36d6            jsr        Ast_create
[00051848] 2748 004a                 move.l     a0,74(a3)
[0005184c] 2008                      move.l     a0,d0
[0005184e] 6600 0090                 bne        Awi_alert_4
[00051852] 6000 0096                 bra        Awi_alert_5
Awi_alert_3:
[00051856] 246b 004a                 movea.l    74(a3),a2
[0005185a] 206f 0024                 movea.l    36(a7),a0
[0005185e] 1028 0001                 move.b     1(a0),d0
[00051862] 4880                      ext.w      d0
[00051864] 907c 0031                 sub.w      #$0031,d0
[00051868] 670a                      beq.s      Awi_alert_6
[0005186a] 5340                      subq.w     #1,d0
[0005186c] 6720                      beq.s      Awi_alert_7
[0005186e] 5340                      subq.w     #1,d0
[00051870] 6736                      beq.s      Awi_alert_8
[00051872] 604e                      bra.s      Awi_alert_9
Awi_alert_6:
[00051874] 2079 0010 1f12            movea.l    ACSblk,a0
[0005187a] 2268 023c                 movea.l    572(a0),a1
[0005187e] 2069 0170                 movea.l    368(a1),a0
[00051882] 4eb9 0004 36d6            jsr        Ast_create
[00051888] 2748 004a                 move.l     a0,74(a3)
[0005188c] 604c                      bra.s      Awi_alert_10
Awi_alert_7:
[0005188e] 2079 0010 1f12            movea.l    ACSblk,a0
[00051894] 2268 023c                 movea.l    572(a0),a1
[00051898] 2069 0174                 movea.l    372(a1),a0
[0005189c] 4eb9 0004 36d6            jsr        Ast_create
[000518a2] 2748 004a                 move.l     a0,74(a3)
[000518a6] 6032                      bra.s      Awi_alert_10
Awi_alert_8:
[000518a8] 2079 0010 1f12            movea.l    ACSblk,a0
[000518ae] 2268 023c                 movea.l    572(a0),a1
[000518b2] 2069 0178                 movea.l    376(a1),a0
[000518b6] 4eb9 0004 36d6            jsr        Ast_create
[000518bc] 2748 004a                 move.l     a0,74(a3)
[000518c0] 6018                      bra.s      Awi_alert_10
Awi_alert_9:
[000518c2] 2079 0010 1f12            movea.l    ACSblk,a0
[000518c8] 2268 023c                 movea.l    572(a0),a1
[000518cc] 2069 017c                 movea.l    380(a1),a0
[000518d0] 4eb9 0004 36d6            jsr        Ast_create
[000518d6] 2748 004a                 move.l     a0,74(a3)
Awi_alert_10:
[000518da] 202b 004a                 move.l     74(a3),d0
[000518de] 670a                      beq.s      Awi_alert_5
Awi_alert_4:
[000518e0] 204a                      movea.l    a2,a0
[000518e2] 4eb9 0004 371c            jsr        Ast_delete
[000518e8] 6004                      bra.s      Awi_alert_11
Awi_alert_5:
[000518ea] 274a 004a                 move.l     a2,74(a3)
Awi_alert_11:
[000518ee] 7010                      moveq.l    #16,d0
[000518f0] 2079 0010 1f12            movea.l    ACSblk,a0
[000518f6] 2268 023c                 movea.l    572(a0),a1
[000518fa] c069 000e                 and.w      14(a1),d0
[000518fe] 673e                      beq.s      Awi_alert_12
[00051900] 7202                      moveq.l    #2,d1
[00051902] 206b 0014                 movea.l    20(a3),a0
[00051906] 2268 01ec                 movea.l    492(a0),a1
[0005190a] 3341 0010                 move.w     d1,16(a1)
[0005190e] 206b 0014                 movea.l    20(a3),a0
[00051912] 2268 01d4                 movea.l    468(a0),a1
[00051916] 3341 0010                 move.w     d1,16(a1)
[0005191a] 206b 0014                 movea.l    20(a3),a0
[0005191e] 2268 01bc                 movea.l    444(a0),a1
[00051922] 3341 0010                 move.w     d1,16(a1)
[00051926] 206b 0014                 movea.l    20(a3),a0
[0005192a] 2268 01a4                 movea.l    420(a0),a1
[0005192e] 3341 0010                 move.w     d1,16(a1)
[00051932] 206b 0014                 movea.l    20(a3),a0
[00051936] 2268 018c                 movea.l    396(a0),a1
[0005193a] 3341 0010                 move.w     d1,16(a1)
Awi_alert_12:
[0005193e] 7602                      moveq.l    #2,d3
[00051940] 6018                      bra.s      Awi_alert_13
Awi_alert_14:
[00051942] 3203                      move.w     d3,d1
[00051944] 48c1                      ext.l      d1
[00051946] 2001                      move.l     d1,d0
[00051948] d080                      add.l      d0,d0
[0005194a] d081                      add.l      d1,d0
[0005194c] e788                      lsl.l      #3,d0
[0005194e] 206b 0014                 movea.l    20(a3),a0
[00051952] 0070 0080 0808            ori.w      #$0080,8(a0,d0.l)
[00051958] 5243                      addq.w     #1,d3
Awi_alert_13:
[0005195a] b67c 000d                 cmp.w      #$000D,d3
[0005195e] 6fe2                      ble.s      Awi_alert_14
[00051960] 206f 0024                 movea.l    36(a7),a0
[00051964] 1028 0001                 move.b     1(a0),d0
[00051968] 4880                      ext.w      d0
[0005196a] 907c 0030                 sub.w      #$0030,d0
[0005196e] b07c 0004                 cmp.w      #$0004,d0
[00051972] 6276                      bhi.s      Awi_alert_15
[00051974] d040                      add.w      d0,d0
[00051976] 303b 0006                 move.w     $0005197E(pc,d0.w),d0
[0005197a] 4efb 0002                 jmp        $0005197E(pc,d0.w)
J44:
[0005197e] 000a                      dc.w $000a   ; Awi_alert_16-J44
[00051980] 0020                      dc.w $0020   ; Awi_alert_17-J44
[00051982] 002c                      dc.w $002c   ; Awi_alert_18-J44
[00051984] 0038                      dc.w $0038   ; Awi_alert_19-J44
[00051986] 0044                      dc.w $0044   ; Awi_alert_20-J44
Awi_alert_16:
[00051988] 2079 0010 1f12            movea.l    ACSblk,a0
[0005198e] 3028 0012                 move.w     18(a0),d0
[00051992] d040                      add.w      d0,d0
[00051994] 226b 0014                 movea.l    20(a3),a1
[00051998] 9169 0160                 sub.w      d0,352(a1)
[0005199c] 604c                      bra.s      Awi_alert_15
Awi_alert_17:
[0005199e] 206b 0014                 movea.l    20(a3),a0
[000519a2] 0268 ff7f 0050            andi.w     #$FF7F,80(a0)
[000519a8] 6040                      bra.s      Awi_alert_15
Awi_alert_18:
[000519aa] 206b 0014                 movea.l    20(a3),a0
[000519ae] 0268 ff7f 0068            andi.w     #$FF7F,104(a0)
[000519b4] 6034                      bra.s      Awi_alert_15
Awi_alert_19:
[000519b6] 206b 0014                 movea.l    20(a3),a0
[000519ba] 0268 ff7f 0038            andi.w     #$FF7F,56(a0)
[000519c0] 6028                      bra.s      Awi_alert_15
Awi_alert_20:
[000519c2] 206b 0014                 movea.l    20(a3),a0
[000519c6] 0268 ff7f 0140            andi.w     #$FF7F,320(a0)
[000519cc] 26bc 0000 0001            move.l     #$00000001,(a3)
[000519d2] 4eb9 0007 2c9c            jsr        Ash_gettimer
[000519d8] 23c0 0010 6bb2            move.l     d0,timer2
[000519de] 23c0 0010 6bae            move.l     d0,timer1
[000519e4] 006b 0020 0056            ori.w      #$0020,86(a3)
Awi_alert_15:
[000519ea] 2079 0010 1f12            movea.l    ACSblk,a0
[000519f0] 2828 0232                 move.l     562(a0),d4
[000519f4] 217c 0000 014d 0232       move.l     #$0000014D,562(a0)
[000519fc] 246f 0024                 movea.l    36(a7),a2
[00051a00] 524a                      addq.w     #1,a2
[00051a02] 6002                      bra.s      Awi_alert_21
Awi_alert_23:
[00051a04] 524a                      addq.w     #1,a2
Awi_alert_21:
[00051a06] 705b                      moveq.l    #91,d0
[00051a08] 204a                      movea.l    a2,a0
[00051a0a] 4eb9 0007 68ce            jsr        strchr
[00051a10] 2448                      movea.l    a0,a2
[00051a12] 200a                      move.l     a2,d0
[00051a14] 6708                      beq.s      Awi_alert_22
[00051a16] 0c2a 005d 0001            cmpi.b     #$5D,1(a2)
[00051a1c] 67e6                      beq.s      Awi_alert_23
Awi_alert_22:
[00051a1e] 200a                      move.l     a2,d0
[00051a20] 6722                      beq.s      Awi_alert_24
[00051a22] 41ea 0001                 lea.l      1(a2),a0
[00051a26] 2e88                      move.l     a0,(a7)
[00051a28] 6002                      bra.s      Awi_alert_25
Awi_alert_27:
[00051a2a] 5297                      addq.l     #1,(a7)
Awi_alert_25:
[00051a2c] 705b                      moveq.l    #91,d0
[00051a2e] 2057                      movea.l    (a7),a0
[00051a30] 4eb9 0007 68ce            jsr        strchr
[00051a36] 2e88                      move.l     a0,(a7)
[00051a38] 670c                      beq.s      Awi_alert_26
[00051a3a] 0c28 005d 0001            cmpi.b     #$5D,1(a0)
[00051a40] 67e8                      beq.s      Awi_alert_27
[00051a42] 6002                      bra.s      Awi_alert_26
Awi_alert_24:
[00051a44] 4297                      clr.l      (a7)
Awi_alert_26:
[00051a46] 200a                      move.l     a2,d0
[00051a48] 6700 0364                 beq        Awi_alert_2
[00051a4c] 2217                      move.l     (a7),d1
[00051a4e] 6700 035e                 beq        Awi_alert_2
[00051a52] 7610                      moveq.l    #16,d3
[00051a54] 6014                      bra.s      Awi_alert_28
Awi_alert_29:
[00051a56] 43f9 000d 3fdb            lea.l      $000D3FDB,a1
[00051a5c] 3003                      move.w     d3,d0
[00051a5e] 206b 0014                 movea.l    20(a3),a0
[00051a62] 4eb9 0004 afe0            jsr        Aob_puttext
[00051a68] 5243                      addq.w     #1,d3
Awi_alert_28:
[00051a6a] b67c 0014                 cmp.w      #$0014,d3
[00051a6e] 6fe6                      ble.s      Awi_alert_29
[00051a70] 2057                      movea.l    (a7),a0
[00051a72] 4228 ffff                 clr.b      -1(a0)
[00051a76] 7c04                      moveq.l    #4,d6
[00051a78] 7610                      moveq.l    #16,d3
[00051a7a] 524a                      addq.w     #1,a2
Awi_alert_32:
[00051a7c] 4bef 0004                 lea.l      4(a7),a5
[00051a80] 707c                      moveq.l    #124,d0
[00051a82] 204a                      movea.l    a2,a0
[00051a84] 4eb9 0007 68ce            jsr        strchr
[00051a8a] 2848                      movea.l    a0,a4
[00051a8c] 200c                      move.l     a4,d0
[00051a8e] 6620                      bne.s      Awi_alert_30
[00051a90] 701e                      moveq.l    #30,d0
[00051a92] 224a                      movea.l    a2,a1
[00051a94] 204d                      movea.l    a5,a0
[00051a96] 4eb9 0007 6a1a            jsr        strncpy
[00051a9c] 422d 001e                 clr.b      30(a5)
[00051aa0] 224d                      movea.l    a5,a1
[00051aa2] 3003                      move.w     d3,d0
[00051aa4] 206b 0014                 movea.l    20(a3),a0
[00051aa8] 4eb9 0004 afe0            jsr        Aob_puttext
[00051aae] 602a                      bra.s      Awi_alert_31
Awi_alert_30:
[00051ab0] 5346                      subq.w     #1,d6
[00051ab2] 4214                      clr.b      (a4)
[00051ab4] 701e                      moveq.l    #30,d0
[00051ab6] 224a                      movea.l    a2,a1
[00051ab8] 204d                      movea.l    a5,a0
[00051aba] 4eb9 0007 6a1a            jsr        strncpy
[00051ac0] 422d 001e                 clr.b      30(a5)
[00051ac4] 224d                      movea.l    a5,a1
[00051ac6] 3003                      move.w     d3,d0
[00051ac8] 206b 0014                 movea.l    20(a3),a0
[00051acc] 4eb9 0004 afe0            jsr        Aob_puttext
[00051ad2] 18bc 007c                 move.b     #$7C,(a4)
[00051ad6] 45ec 0001                 lea.l      1(a4),a2
Awi_alert_31:
[00051ada] 5243                      addq.w     #1,d3
[00051adc] 200c                      move.l     a4,d0
[00051ade] 669c                      bne.s      Awi_alert_32
[00051ae0] 2057                      movea.l    (a7),a0
[00051ae2] 117c 005d ffff            move.b     #$5D,-1(a0)
[00051ae8] bc7c 0003                 cmp.w      #$0003,d6
[00051aec] 6f04                      ble.s      Awi_alert_33
[00051aee] 7203                      moveq.l    #3,d1
[00051af0] 6002                      bra.s      Awi_alert_34
Awi_alert_33:
[00051af2] 3206                      move.w     d6,d1
Awi_alert_34:
[00051af4] 3c01                      move.w     d1,d6
[00051af6] 4a41                      tst.w      d1
[00051af8] 6f00 008c                 ble        Awi_alert_35
[00051afc] 2079 0010 1f12            movea.l    ACSblk,a0
[00051b02] c3e8 0014                 muls.w     20(a0),d1
[00051b06] 226b 0014                 movea.l    20(a3),a1
[00051b0a] 9369 0016                 sub.w      d1,22(a1)
[00051b0e] 3006                      move.w     d6,d0
[00051b10] 2079 0010 1f12            movea.l    ACSblk,a0
[00051b16] c1e8 0014                 muls.w     20(a0),d0
[00051b1a] 226b 0014                 movea.l    20(a3),a1
[00051b1e] 9169 002e                 sub.w      d0,46(a1)
[00051b22] 3006                      move.w     d6,d0
[00051b24] 2079 0010 1f12            movea.l    ACSblk,a0
[00051b2a] c1e8 0014                 muls.w     20(a0),d0
[00051b2e] 226b 0014                 movea.l    20(a3),a1
[00051b32] 9169 0166                 sub.w      d0,358(a1)
[00051b36] 3006                      move.w     d6,d0
[00051b38] 2079 0010 1f12            movea.l    ACSblk,a0
[00051b3e] c1e8 0014                 muls.w     20(a0),d0
[00051b42] 226b 0014                 movea.l    20(a3),a1
[00051b46] 9169 017e                 sub.w      d0,382(a1)
[00051b4a] 3006                      move.w     d6,d0
[00051b4c] 2079 0010 1f12            movea.l    ACSblk,a0
[00051b52] c1e8 0014                 muls.w     20(a0),d0
[00051b56] 226b 0014                 movea.l    20(a3),a1
[00051b5a] 9169 020a                 sub.w      d0,522(a1)
[00051b5e] 3006                      move.w     d6,d0
[00051b60] 2079 0010 1f12            movea.l    ACSblk,a0
[00051b66] c1e8 0014                 muls.w     20(a0),d0
[00051b6a] 226b 0014                 movea.l    20(a3),a1
[00051b6e] 9169 023a                 sub.w      d0,570(a1)
[00051b72] 3006                      move.w     d6,d0
[00051b74] 2079 0010 1f12            movea.l    ACSblk,a0
[00051b7a] c1e8 0014                 muls.w     20(a0),d0
[00051b7e] 226b 0014                 movea.l    20(a3),a1
[00051b82] 9169 026a                 sub.w      d0,618(a1)
Awi_alert_35:
[00051b86] 2457                      movea.l    (a7),a2
[00051b88] 4246                      clr.w      d6
[00051b8a] 6006                      bra.s      Awi_alert_36
Awi_alert_38:
[00051b8c] 5246                      addq.w     #1,d6
[00051b8e] 45ec 0001                 lea.l      1(a4),a2
Awi_alert_36:
[00051b92] 1012                      move.b     (a2),d0
[00051b94] 6710                      beq.s      Awi_alert_37
[00051b96] 204a                      movea.l    a2,a0
[00051b98] 707c                      moveq.l    #124,d0
[00051b9a] 4eb9 0007 68ce            jsr        strchr
[00051ba0] 2848                      movea.l    a0,a4
[00051ba2] 200c                      move.l     a4,d0
[00051ba4] 66e6                      bne.s      Awi_alert_38
Awi_alert_37:
[00051ba6] 3006                      move.w     d6,d0
[00051ba8] 4a40                      tst.w      d0
[00051baa] 670c                      beq.s      Awi_alert_39
[00051bac] 5340                      subq.w     #1,d0
[00051bae] 6762                      beq.s      Awi_alert_40
[00051bb0] 5340                      subq.w     #1,d0
[00051bb2] 675e                      beq.s      Awi_alert_40
[00051bb4] 6000 01ba                 bra        Awi_alert_41
Awi_alert_39:
[00051bb8] 206b 0014                 movea.l    20(a3),a0
[00051bbc] 0068 0080 0200            ori.w      #$0080,512(a0)
[00051bc2] 206b 0014                 movea.l    20(a3),a0
[00051bc6] 0068 0080 0260            ori.w      #$0080,608(a0)
[00051bcc] 2257                      movea.l    (a7),a1
[00051bce] 5249                      addq.w     #1,a1
[00051bd0] 204d                      movea.l    a5,a0
[00051bd2] 4eb9 0007 6950            jsr        strcpy
[00051bd8] 705d                      moveq.l    #93,d0
[00051bda] 204d                      movea.l    a5,a0
[00051bdc] 4eb9 0007 68ce            jsr        strchr
[00051be2] 2448                      movea.l    a0,a2
[00051be4] 200a                      move.l     a2,d0
[00051be6] 6702                      beq.s      Awi_alert_42
[00051be8] 4210                      clr.b      (a0)
Awi_alert_42:
[00051bea] 224d                      movea.l    a5,a1
[00051bec] 7017                      moveq.l    #23,d0
[00051bee] 206b 0014                 movea.l    20(a3),a0
[00051bf2] 4eb9 0004 afe0            jsr        Aob_puttext
[00051bf8] 226b 0014                 movea.l    20(a3),a1
[00051bfc] 43e9 0228                 lea.l      552(a1),a1
[00051c00] 204d                      movea.l    a5,a0
[00051c02] 4eb9 0005 1ddc            jsr        Awi_hotkey
[00051c08] 4a45                      tst.w      d5
[00051c0a] 6f00 0164                 ble        Awi_alert_41
[00051c0e] 6000 014a                 bra        Awi_alert_43
Awi_alert_40:
[00051c12] 707c                      moveq.l    #124,d0
[00051c14] 2057                      movea.l    (a7),a0
[00051c16] 5248                      addq.w     #1,a0
[00051c18] 4eb9 0007 68ce            jsr        strchr
[00051c1e] 2448                      movea.l    a0,a2
[00051c20] 200a                      move.l     a2,d0
[00051c22] 9097                      sub.l      (a7),d0
[00051c24] 5380                      subq.l     #1,d0
[00051c26] 2257                      movea.l    (a7),a1
[00051c28] 5249                      addq.w     #1,a1
[00051c2a] 204d                      movea.l    a5,a0
[00051c2c] 4eb9 0007 6a1a            jsr        strncpy
[00051c32] 204a                      movea.l    a2,a0
[00051c34] 91d7                      suba.l     (a7),a0
[00051c36] 4235 80ff                 clr.b      -1(a5,a0.w)
[00051c3a] 224d                      movea.l    a5,a1
[00051c3c] 7015                      moveq.l    #21,d0
[00051c3e] 206b 0014                 movea.l    20(a3),a0
[00051c42] 4eb9 0004 afe0            jsr        Aob_puttext
[00051c48] 226b 0014                 movea.l    20(a3),a1
[00051c4c] 43e9 01f8                 lea.l      504(a1),a1
[00051c50] 204d                      movea.l    a5,a0
[00051c52] 4eb9 0005 1ddc            jsr        Awi_hotkey
[00051c58] 524a                      addq.w     #1,a2
[00051c5a] 707c                      moveq.l    #124,d0
[00051c5c] 204a                      movea.l    a2,a0
[00051c5e] 4eb9 0007 68ce            jsr        strchr
[00051c64] 2848                      movea.l    a0,a4
[00051c66] 200c                      move.l     a4,d0
[00051c68] 6716                      beq.s      Awi_alert_44
[00051c6a] 908a                      sub.l      a2,d0
[00051c6c] 224a                      movea.l    a2,a1
[00051c6e] 204d                      movea.l    a5,a0
[00051c70] 4eb9 0007 6a1a            jsr        strncpy
[00051c76] 204c                      movea.l    a4,a0
[00051c78] 91ca                      suba.l     a2,a0
[00051c7a] 4235 8000                 clr.b      0(a5,a0.w)
[00051c7e] 601c                      bra.s      Awi_alert_45
Awi_alert_44:
[00051c80] 224a                      movea.l    a2,a1
[00051c82] 204d                      movea.l    a5,a0
[00051c84] 4eb9 0007 6950            jsr        strcpy
[00051c8a] 705d                      moveq.l    #93,d0
[00051c8c] 204d                      movea.l    a5,a0
[00051c8e] 4eb9 0007 68ce            jsr        strchr
[00051c94] 2448                      movea.l    a0,a2
[00051c96] 200a                      move.l     a2,d0
[00051c98] 6702                      beq.s      Awi_alert_45
[00051c9a] 4210                      clr.b      (a0)
Awi_alert_45:
[00051c9c] 224d                      movea.l    a5,a1
[00051c9e] 7017                      moveq.l    #23,d0
[00051ca0] 206b 0014                 movea.l    20(a3),a0
[00051ca4] 4eb9 0004 afe0            jsr        Aob_puttext
[00051caa] 226b 0014                 movea.l    20(a3),a1
[00051cae] 43e9 0228                 lea.l      552(a1),a1
[00051cb2] 204d                      movea.l    a5,a0
[00051cb4] 4eb9 0005 1ddc            jsr        Awi_hotkey
[00051cba] bc7c 0002                 cmp.w      #$0002,d6
[00051cbe] 6644                      bne.s      Awi_alert_46
[00051cc0] 524c                      addq.w     #1,a4
[00051cc2] 705d                      moveq.l    #93,d0
[00051cc4] 204c                      movea.l    a4,a0
[00051cc6] 4eb9 0007 68ce            jsr        strchr
[00051ccc] 2448                      movea.l    a0,a2
[00051cce] 200a                      move.l     a2,d0
[00051cd0] 908c                      sub.l      a4,d0
[00051cd2] 224c                      movea.l    a4,a1
[00051cd4] 204d                      movea.l    a5,a0
[00051cd6] 4eb9 0007 6a1a            jsr        strncpy
[00051cdc] 204a                      movea.l    a2,a0
[00051cde] 91cc                      suba.l     a4,a0
[00051ce0] 4235 8000                 clr.b      0(a5,a0.w)
[00051ce4] 224d                      movea.l    a5,a1
[00051ce6] 7019                      moveq.l    #25,d0
[00051ce8] 206b 0014                 movea.l    20(a3),a0
[00051cec] 4eb9 0004 afe0            jsr        Aob_puttext
[00051cf2] 226b 0014                 movea.l    20(a3),a1
[00051cf6] 43e9 0258                 lea.l      600(a1),a1
[00051cfa] 204d                      movea.l    a5,a0
[00051cfc] 4eb9 0005 1ddc            jsr        Awi_hotkey
[00051d02] 603a                      bra.s      Awi_alert_47
Awi_alert_46:
[00051d04] 206b 0014                 movea.l    20(a3),a0
[00051d08] 3028 020c                 move.w     524(a0),d0
[00051d0c] e240                      asr.w      #1,d0
[00051d0e] 2279 0010 1f12            movea.l    ACSblk,a1
[00051d14] d069 0012                 add.w      18(a1),d0
[00051d18] d168 0208                 add.w      d0,520(a0)
[00051d1c] 206b 0014                 movea.l    20(a3),a0
[00051d20] 3028 023c                 move.w     572(a0),d0
[00051d24] e240                      asr.w      #1,d0
[00051d26] 2279 0010 1f12            movea.l    ACSblk,a1
[00051d2c] d069 0012                 add.w      18(a1),d0
[00051d30] d168 0238                 add.w      d0,568(a0)
[00051d34] 206b 0014                 movea.l    20(a3),a0
[00051d38] 0068 0080 0260            ori.w      #$0080,608(a0)
Awi_alert_47:
[00051d3e] 3005                      move.w     d5,d0
[00051d40] 5340                      subq.w     #1,d0
[00051d42] 670a                      beq.s      Awi_alert_48
[00051d44] 5340                      subq.w     #1,d0
[00051d46] 6712                      beq.s      Awi_alert_43
[00051d48] 5340                      subq.w     #1,d0
[00051d4a] 671a                      beq.s      Awi_alert_49
[00051d4c] 6022                      bra.s      Awi_alert_41
Awi_alert_48:
[00051d4e] 206b 0014                 movea.l    20(a3),a0
[00051d52] 0068 0002 0200            ori.w      #$0002,512(a0)
[00051d58] 6016                      bra.s      Awi_alert_41
Awi_alert_43:
[00051d5a] 206b 0014                 movea.l    20(a3),a0
[00051d5e] 0068 0002 0230            ori.w      #$0002,560(a0)
[00051d64] 600a                      bra.s      Awi_alert_41
Awi_alert_49:
[00051d66] 206b 0014                 movea.l    20(a3),a0
[00051d6a] 0068 0002 0260            ori.w      #$0002,608(a0)
Awi_alert_41:
[00051d70] 204b                      movea.l    a3,a0
[00051d72] 6100 f51e                 bsr        Awi_dialog
[00051d76] 3c00                      move.w     d0,d6
[00051d78] 204b                      movea.l    a3,a0
[00051d7a] 6100 e5b4                 bsr        Awi_delete
[00051d7e] 2079 0010 1f12            movea.l    ACSblk,a0
[00051d84] 2144 0232                 move.l     d4,562(a0)
[00051d88] 3006                      move.w     d6,d0
[00051d8a] 907c 0015                 sub.w      #$0015,d0
[00051d8e] 670a                      beq.s      Awi_alert_50
[00051d90] 5540                      subq.w     #2,d0
[00051d92] 670a                      beq.s      Awi_alert_51
[00051d94] 5540                      subq.w     #2,d0
[00051d96] 670a                      beq.s      Awi_alert_52
[00051d98] 600c                      bra.s      Awi_alert_53
Awi_alert_50:
[00051d9a] 7001                      moveq.l    #1,d0
[00051d9c] 6034                      bra.s      Awi_alert_54
Awi_alert_51:
[00051d9e] 7002                      moveq.l    #2,d0
[00051da0] 6030                      bra.s      Awi_alert_54
Awi_alert_52:
[00051da2] 7003                      moveq.l    #3,d0
[00051da4] 602c                      bra.s      Awi_alert_54
Awi_alert_53:
[00051da6] 4a46                      tst.w      d6
[00051da8] 6b04                      bmi.s      Awi_alert_2
Awi_alert_1:
[00051daa] 70ff                      moveq.l    #-1,d0
[00051dac] 6024                      bra.s      Awi_alert_54
Awi_alert_2:
[00051dae] 206f 0024                 movea.l    36(a7),a0
[00051db2] 0c28 0033 0001            cmpi.b     #$33,1(a0)
[00051db8] 6f06                      ble.s      Awi_alert_55
[00051dba] 117c 0031 0001            move.b     #$31,1(a0)
Awi_alert_55:
[00051dc0] 2279 000d 99d6            movea.l    _globl,a1
[00051dc6] 206f 0024                 movea.l    36(a7),a0
[00051dca] 3005                      move.w     d5,d0
[00051dcc] 4eb9 0006 be76            jsr        mt_form_alert
Awi_alert_54:
[00051dd2] 4fef 0028                 lea.l      40(a7),a7
[00051dd6] 4cdf 3c78                 movem.l    (a7)+,d3-d6/a2-a5
[00051dda] 4e75                      rts

Awi_hotkey:
[00051ddc] 2f0a                      move.l     a2,-(a7)
[00051dde] 2f0b                      move.l     a3,-(a7)
[00051de0] 45e9 0018                 lea.l      24(a1),a2
[00051de4] 2648                      movea.l    a0,a3
[00051de6] 6010                      bra.s      Awi_hotkey_1
Awi_hotkey_3:
[00051de8] 1013                      move.b     (a3),d0
[00051dea] 4880                      ext.w      d0
[00051dec] 4eb9 0007 71ee            jsr        isalnum
[00051df2] 4a40                      tst.w      d0
[00051df4] 6606                      bne.s      Awi_hotkey_2
[00051df6] 524b                      addq.w     #1,a3
Awi_hotkey_1:
[00051df8] 1013                      move.b     (a3),d0
[00051dfa] 66ec                      bne.s      Awi_hotkey_3
Awi_hotkey_2:
[00051dfc] 1013                      move.b     (a3),d0
[00051dfe] 6712                      beq.s      Awi_hotkey_4
[00051e00] 4880                      ext.w      d0
[00051e02] 4eb9 0007 7268            jsr        toupper
[00051e08] 807c 8800                 or.w       #$8800,d0
[00051e0c] 3540 000a                 move.w     d0,10(a2)
[00051e10] 6004                      bra.s      Awi_hotkey_5
Awi_hotkey_4:
[00051e12] 426a 000a                 clr.w      10(a2)
Awi_hotkey_5:
[00051e16] 265f                      movea.l    (a7)+,a3
[00051e18] 245f                      movea.l    (a7)+,a2
[00051e1a] 4e75                      rts

Awi_update:
[00051e1c] 2f0a                      move.l     a2,-(a7)
[00051e1e] 2f0b                      move.l     a3,-(a7)
[00051e20] 45f9 000d 3da0            lea.l      winupd,a2
[00051e26] 47f9 000d 99d6            lea.l      _globl,a3
[00051e2c] 3200                      move.w     d0,d1
[00051e2e] c27c 00ff                 and.w      #$00FF,d1
[00051e32] b27c 0003                 cmp.w      #$0003,d1
[00051e36] 6752                      beq.s      Awi_update_1
[00051e38] 6e10                      bgt.s      Awi_update_2
[00051e3a] 4a41                      tst.w      d1
[00051e3c] 6734                      beq.s      Awi_update_3
[00051e3e] 5341                      subq.w     #1,d1
[00051e40] 671a                      beq.s      Awi_update_4
[00051e42] 5341                      subq.w     #1,d1
[00051e44] 675e                      beq.s      Awi_update_5
[00051e46] 6000 00de                 bra        Awi_update_6
Awi_update_2:
[00051e4a] 927c 0010                 sub.w      #$0010,d1
[00051e4e] 676c                      beq.s      Awi_update_7
[00051e50] 927c 0010                 sub.w      #$0010,d1
[00051e54] 6700 0096                 beq        Awi_update_8
[00051e58] 6000 00cc                 bra        Awi_update_6
Awi_update_4:
[00051e5c] 3012                      move.w     (a2),d0
[00051e5e] 5252                      addq.w     #1,(a2)
[00051e60] 4a40                      tst.w      d0
[00051e62] 6600 00c2                 bne        Awi_update_6
[00051e66] 2053                      movea.l    (a3),a0
[00051e68] 7001                      moveq.l    #1,d0
[00051e6a] 4eb9 0006 d5b0            jsr        mt_wind_update
[00051e70] 6010                      bra.s      Awi_update_9
Awi_update_3:
[00051e72] 5352                      subq.w     #1,(a2)
[00051e74] 6600 00b0                 bne        Awi_update_6
[00051e78] 2053                      movea.l    (a3),a0
[00051e7a] 4240                      clr.w      d0
[00051e7c] 4eb9 0006 d5b0            jsr        mt_wind_update
Awi_update_9:
[00051e82] 426a 0002                 clr.w      2(a2)
[00051e86] 6000 009e                 bra        Awi_update_6
Awi_update_1:
[00051e8a] 302a 0004                 move.w     4(a2),d0
[00051e8e] 526a 0004                 addq.w     #1,4(a2)
[00051e92] 4a40                      tst.w      d0
[00051e94] 6600 0090                 bne        Awi_update_6
[00051e98] 2053                      movea.l    (a3),a0
[00051e9a] 7003                      moveq.l    #3,d0
[00051e9c] 4eb9 0006 d5b0            jsr        mt_wind_update
[00051ea2] 6012                      bra.s      Awi_update_10
Awi_update_5:
[00051ea4] 536a 0004                 subq.w     #1,4(a2)
[00051ea8] 6600 007c                 bne.w      Awi_update_6
[00051eac] 2053                      movea.l    (a3),a0
[00051eae] 7002                      moveq.l    #2,d0
[00051eb0] 4eb9 0006 d5b0            jsr        mt_wind_update
Awi_update_10:
[00051eb6] 426a 0006                 clr.w      6(a2)
[00051eba] 606a                      bra.s      Awi_update_6
Awi_update_7:
[00051ebc] 3012                      move.w     (a2),d0
[00051ebe] 6710                      beq.s      Awi_update_11
[00051ec0] 2053                      movea.l    (a3),a0
[00051ec2] 4240                      clr.w      d0
[00051ec4] 4eb9 0006 d5b0            jsr        mt_wind_update
[00051eca] 3552 0002                 move.w     (a2),2(a2)
[00051ece] 4252                      clr.w      (a2)
Awi_update_11:
[00051ed0] 302a 0004                 move.w     4(a2),d0
[00051ed4] 6750                      beq.s      Awi_update_6
[00051ed6] 2053                      movea.l    (a3),a0
[00051ed8] 7002                      moveq.l    #2,d0
[00051eda] 4eb9 0006 d5b0            jsr        mt_wind_update
[00051ee0] 356a 0004 0006            move.w     4(a2),6(a2)
[00051ee6] 426a 0004                 clr.w      4(a2)
[00051eea] 603a                      bra.s      Awi_update_6
Awi_update_8:
[00051eec] 3012                      move.w     (a2),d0
[00051eee] 6618                      bne.s      Awi_update_12
[00051ef0] 322a 0002                 move.w     2(a2),d1
[00051ef4] 6712                      beq.s      Awi_update_12
[00051ef6] 2053                      movea.l    (a3),a0
[00051ef8] 7001                      moveq.l    #1,d0
[00051efa] 4eb9 0006 d5b0            jsr        mt_wind_update
[00051f00] 34aa 0002                 move.w     2(a2),(a2)
[00051f04] 426a 0002                 clr.w      2(a2)
Awi_update_12:
[00051f08] 302a 0004                 move.w     4(a2),d0
[00051f0c] 6618                      bne.s      Awi_update_6
[00051f0e] 322a 0006                 move.w     6(a2),d1
[00051f12] 6712                      beq.s      Awi_update_6
[00051f14] 2053                      movea.l    (a3),a0
[00051f16] 7003                      moveq.l    #3,d0
[00051f18] 4eb9 0006 d5b0            jsr        mt_wind_update
[00051f1e] 356a 0006 0004            move.w     6(a2),4(a2)
[00051f24] 6090                      bra.s      Awi_update_10
Awi_update_6:
[00051f26] 265f                      movea.l    (a7)+,a3
[00051f28] 245f                      movea.l    (a7)+,a2
[00051f2a] 4e75                      rts

Awi_obfind:
[00051f2c] 48e7 1e38                 movem.l    d3-d6/a2-a4,-(a7)
[00051f30] 3c00                      move.w     d0,d6
[00051f32] 3a01                      move.w     d1,d5
[00051f34] 2449                      movea.l    a1,a2
[00051f36] 266f 0020                 movea.l    32(a7),a3
[00051f3a] 240a                      move.l     a2,d2
[00051f3c] 6702                      beq.s      Awi_obfind_1
[00051f3e] 4291                      clr.l      (a1)
Awi_obfind_1:
[00051f40] 200b                      move.l     a3,d0
[00051f42] 6704                      beq.s      Awi_obfind_2
[00051f44] 36bc ffff                 move.w     #$FFFF,(a3)
Awi_obfind_2:
[00051f48] 3028 0020                 move.w     32(a0),d0
[00051f4c] 6b52                      bmi.s      Awi_obfind_3
[00051f4e] 3028 0036                 move.w     54(a0),d0
[00051f52] 3628 0034                 move.w     52(a0),d3
[00051f56] 3828 0036                 move.w     54(a0),d4
[00051f5a] 2228 0018                 move.l     24(a0),d1
[00051f5e] 6708                      beq.s      Awi_obfind_4
[00051f60] 2241                      movea.l    d1,a1
[00051f62] 3229 0016                 move.w     22(a1),d1
[00051f66] 6002                      bra.s      Awi_obfind_5
Awi_obfind_4:
[00051f68] 4241                      clr.w      d1
Awi_obfind_5:
[00051f6a] 3400                      move.w     d0,d2
[00051f6c] 9441                      sub.w      d1,d2
[00051f6e] ba42                      cmp.w      d2,d5
[00051f70] 6d2e                      blt.s      Awi_obfind_3
[00051f72] 2428 0018                 move.l     24(a0),d2
[00051f76] 6710                      beq.s      Awi_obfind_6
[00051f78] b045                      cmp.w      d5,d0
[00051f7a] 6f0c                      ble.s      Awi_obfind_6
[00051f7c] 3240                      movea.w    d0,a1
[00051f7e] 92c1                      suba.w     d1,a1
[00051f80] ba49                      cmp.w      a1,d5
[00051f82] 6d04                      blt.s      Awi_obfind_6
[00051f84] 2842                      movea.l    d2,a4
[00051f86] 6014                      bra.s      Awi_obfind_7
Awi_obfind_6:
[00051f88] 2868 0014                 movea.l    20(a0),a4
[00051f8c] 2028 0018                 move.l     24(a0),d0
[00051f90] 6706                      beq.s      Awi_obfind_8
[00051f92] 3228 0036                 move.w     54(a0),d1
[00051f96] 6002                      bra.s      Awi_obfind_9
Awi_obfind_8:
[00051f98] 4241                      clr.w      d1
Awi_obfind_9:
[00051f9a] d841                      add.w      d1,d4
Awi_obfind_7:
[00051f9c] 200c                      move.l     a4,d0
[00051f9e] 6604                      bne.s      Awi_obfind_10
Awi_obfind_3:
[00051fa0] 91c8                      suba.l     a0,a0
[00051fa2] 6044                      bra.s      Awi_obfind_11
Awi_obfind_10:
[00051fa4] 3005                      move.w     d5,d0
[00051fa6] 9044                      sub.w      d4,d0
[00051fa8] 3f00                      move.w     d0,-(a7)
[00051faa] 2279 000d 99d6            movea.l    _globl,a1
[00051fb0] 3406                      move.w     d6,d2
[00051fb2] 9443                      sub.w      d3,d2
[00051fb4] 7264                      moveq.l    #100,d1
[00051fb6] 204c                      movea.l    a4,a0
[00051fb8] 4240                      clr.w      d0
[00051fba] 4eb9 0006 b9c6            jsr        mt_objc_find
[00051fc0] 544f                      addq.w     #2,a7
[00051fc2] 3c00                      move.w     d0,d6
[00051fc4] 220a                      move.l     a2,d1
[00051fc6] 6702                      beq.s      Awi_obfind_12
[00051fc8] 248c                      move.l     a4,(a2)
Awi_obfind_12:
[00051fca] 200b                      move.l     a3,d0
[00051fcc] 6702                      beq.s      Awi_obfind_13
[00051fce] 3686                      move.w     d6,(a3)
Awi_obfind_13:
[00051fd0] 4a46                      tst.w      d6
[00051fd2] 6b12                      bmi.s      Awi_obfind_14
[00051fd4] 3206                      move.w     d6,d1
[00051fd6] 48c1                      ext.l      d1
[00051fd8] 2001                      move.l     d1,d0
[00051fda] d080                      add.l      d0,d0
[00051fdc] d081                      add.l      d1,d0
[00051fde] e788                      lsl.l      #3,d0
[00051fe0] 41f4 0800                 lea.l      0(a4,d0.l),a0
[00051fe4] 6002                      bra.s      Awi_obfind_11
Awi_obfind_14:
[00051fe6] 91c8                      suba.l     a0,a0
Awi_obfind_11:
[00051fe8] 4cdf 1c78                 movem.l    (a7)+,d3-d6/a2-a4
[00051fec] 4e75                      rts

Awi_contstring:
[00051fee] 48e7 1e3c                 movem.l    d3-d6/a2-a5,-(a7)
[00051ff2] 4fef fff0                 lea.l      -16(a7),a7
[00051ff6] 2648                      movea.l    a0,a3
[00051ff8] 3a00                      move.w     d0,d5
[00051ffa] 3801                      move.w     d1,d4
[00051ffc] 2c02                      move.l     d2,d6
[00051ffe] 2f49 000c                 move.l     a1,12(a7)
[00052002] 3f7c 0001 000a            move.w     #$0001,10(a7)
[00052008] 4243                      clr.w      d3
[0005200a] 41f9 000d 3f84            lea.l      $000D3F84,a0
[00052010] 43d7                      lea.l      (a7),a1
[00052012] 22d8                      move.l     (a0)+,(a1)+
[00052014] 32d8                      move.w     (a0)+,(a1)+
[00052016] 43ef 000a                 lea.l      10(a7),a1
[0005201a] 204b                      movea.l    a3,a0
[0005201c] 246b 0004                 movea.l    4(a3),a2
[00052020] 302f 0034                 move.w     52(a7),d0
[00052024] 4e92                      jsr        (a2)
[00052026] 4a40                      tst.w      d0
[00052028] 670c                      beq.s      Awi_contstring_1
[0005202a] 302f 000a                 move.w     10(a7),d0
[0005202e] 6606                      bne.s      Awi_contstring_1
[00052030] 91c8                      suba.l     a0,a0
[00052032] 6000 009e                 bra        Awi_contstring_2
Awi_contstring_1:
[00052036] 4857                      pea.l      (a7)
[00052038] 43ef 000a                 lea.l      10(a7),a1
[0005203c] 3204                      move.w     d4,d1
[0005203e] 3005                      move.w     d5,d0
[00052040] 204b                      movea.l    a3,a0
[00052042] 6100 fee8                 bsr        Awi_obfind
[00052046] 584f                      addq.w     #4,a7
[00052048] 3017                      move.w     (a7),d0
[0005204a] 6b00 0082                 bmi        Awi_contstring_3
[0005204e] 48c0                      ext.l      d0
[00052050] 2200                      move.l     d0,d1
[00052052] d281                      add.l      d1,d1
[00052054] d280                      add.l      d0,d1
[00052056] e789                      lsl.l      #3,d1
[00052058] 286f 0006                 movea.l    6(a7),a4
[0005205c] d9c1                      adda.l     d1,a4
[0005205e] 0c6c 0018 0006            cmpi.w     #$0018,6(a4)
[00052064] 6606                      bne.s      Awi_contstring_4
[00052066] 2a6c 000c                 movea.l    12(a4),a5
[0005206a] 6002                      bra.s      Awi_contstring_5
Awi_contstring_4:
[0005206c] 9bcd                      suba.l     a5,a5
Awi_contstring_5:
[0005206e] 202f 000c                 move.l     12(a7),d0
[00052072] 6704                      beq.s      Awi_contstring_6
[00052074] 2040                      movea.l    d0,a0
[00052076] 208c                      move.l     a4,(a0)
Awi_contstring_6:
[00052078] 202f 003a                 move.l     58(a7),d0
[0005207c] 6704                      beq.s      Awi_contstring_7
[0005207e] 2040                      movea.l    d0,a0
[00052080] 3097                      move.w     (a7),(a0)
Awi_contstring_7:
[00052082] 200d                      move.l     a5,d0
[00052084] 6720                      beq.s      Awi_contstring_8
[00052086] 2206                      move.l     d6,d1
[00052088] e589                      lsl.l      #2,d1
[0005208a] 2f75 1800 0002            move.l     0(a5,d1.l),2(a7)
[00052090] 242d 0008                 move.l     8(a5),d2
[00052094] 6710                      beq.s      Awi_contstring_8
[00052096] 43ef 0002                 lea.l      2(a7),a1
[0005209a] 204c                      movea.l    a4,a0
[0005209c] 2442                      movea.l    d2,a2
[0005209e] 302f 0036                 move.w     54(a7),d0
[000520a2] 4e92                      jsr        (a2)
[000520a4] 3600                      move.w     d0,d3
Awi_contstring_8:
[000520a6] 4a43                      tst.w      d3
[000520a8] 6624                      bne.s      Awi_contstring_3
[000520aa] 206f 0006                 movea.l    6(a7),a0
[000520ae] b1eb 0018                 cmpa.l     24(a3),a0
[000520b2] 6604                      bne.s      Awi_contstring_9
[000520b4] 0057 1000                 ori.w      #$1000,(a7)
Awi_contstring_9:
[000520b8] 43d7                      lea.l      (a7),a1
[000520ba] 302f 0038                 move.w     56(a7),d0
[000520be] 204b                      movea.l    a3,a0
[000520c0] 246b 0004                 movea.l    4(a3),a2
[000520c4] 4e92                      jsr        (a2)
[000520c6] 4a40                      tst.w      d0
[000520c8] 6604                      bne.s      Awi_contstring_3
[000520ca] 42af 0002                 clr.l      2(a7)
Awi_contstring_3:
[000520ce] 206f 0002                 movea.l    2(a7),a0
Awi_contstring_2:
[000520d2] 4fef 0010                 lea.l      16(a7),a7
[000520d6] 4cdf 3c78                 movem.l    (a7)+,d3-d6/a2-a5
[000520da] 4e75                      rts

Awi_bubblegem:
[000520dc] 48e7 1820                 movem.l    d3-d4/a2,-(a7)
[000520e0] 2448                      movea.l    a0,a2
[000520e2] 3800                      move.w     d0,d4
[000520e4] 3601                      move.w     d1,d3
[000520e6] 42a7                      clr.l      -(a7)
[000520e8] 7425                      moveq.l    #37,d2
[000520ea] 3f02                      move.w     d2,-(a7)
[000520ec] 7013                      moveq.l    #19,d0
[000520ee] 3f00                      move.w     d0,-(a7)
[000520f0] 7224                      moveq.l    #36,d1
[000520f2] 3f01                      move.w     d1,-(a7)
[000520f4] 93c9                      suba.l     a1,a1
[000520f6] 3004                      move.w     d4,d0
[000520f8] 3203                      move.w     d3,d1
[000520fa] 7406                      moveq.l    #6,d2
[000520fc] 6100 fef0                 bsr        Awi_contstring
[00052100] 4fef 000a                 lea.l      10(a7),a7
[00052104] 2448                      movea.l    a0,a2
[00052106] 4eb9 0004 3a92            jsr        Ast_isEmpty
[0005210c] 4a40                      tst.w      d0
[0005210e] 6704                      beq.s      Awi_bubblegem_1
[00052110] 4240                      clr.w      d0
[00052112] 600c                      bra.s      Awi_bubblegem_2
Awi_bubblegem_1:
[00052114] 3203                      move.w     d3,d1
[00052116] 3004                      move.w     d4,d0
[00052118] 204a                      movea.l    a2,a0
[0005211a] 4eb9 0005 6c46            jsr        Aev_ShowBubbleGEM
Awi_bubblegem_2:
[00052120] 4cdf 0418                 movem.l    (a7)+,d3-d4/a2
[00052124] 4e75                      rts

Awi_context:
[00052126] 48e7 1e38                 movem.l    d3-d6/a2-a4,-(a7)
[0005212a] 4fef fff6                 lea.l      -10(a7),a7
[0005212e] 2648                      movea.l    a0,a3
[00052130] 3a00                      move.w     d0,d5
[00052132] 3801                      move.w     d1,d4
[00052134] 4243                      clr.w      d3
[00052136] 4857                      pea.l      (a7)
[00052138] 7427                      moveq.l    #39,d2
[0005213a] 3f02                      move.w     d2,-(a7)
[0005213c] 7014                      moveq.l    #20,d0
[0005213e] 3f00                      move.w     d0,-(a7)
[00052140] 7226                      moveq.l    #38,d1
[00052142] 3f01                      move.w     d1,-(a7)
[00052144] 43ef 0010                 lea.l      16(a7),a1
[00052148] 3005                      move.w     d5,d0
[0005214a] 3204                      move.w     d4,d1
[0005214c] 7407                      moveq.l    #7,d2
[0005214e] 6100 fe9e                 bsr        Awi_contstring
[00052152] 4fef 000a                 lea.l      10(a7),a7
[00052156] 2848                      movea.l    a0,a4
[00052158] 4eb9 0004 3a92            jsr        Ast_isEmpty
[0005215e] 4a40                      tst.w      d0
[00052160] 666a                      bne.s      Awi_context_1
[00052162] 42a7                      clr.l      -(a7)
[00052164] 3404                      move.w     d4,d2
[00052166] 3205                      move.w     d5,d1
[00052168] 2079 0010 1f12            movea.l    ACSblk,a0
[0005216e] 3c28 0012                 move.w     18(a0),d6
[00052172] 3006                      move.w     d6,d0
[00052174] e948                      lsl.w      #4,d0
[00052176] 9046                      sub.w      d6,d0
[00052178] d040                      add.w      d0,d0
[0005217a] 224c                      movea.l    a4,a1
[0005217c] 204b                      movea.l    a3,a0
[0005217e] 4eb9 0005 c7dc            jsr        Ame_strpopup
[00052184] 584f                      addq.w     #4,a7
[00052186] 2f48 0002                 move.l     a0,2(a7)
[0005218a] 226f 0006                 movea.l    6(a7),a1
[0005218e] 0c69 0018 0006            cmpi.w     #$0018,6(a1)
[00052194] 6606                      bne.s      Awi_context_2
[00052196] 2869 000c                 movea.l    12(a1),a4
[0005219a] 6002                      bra.s      Awi_context_3
Awi_context_2:
[0005219c] 99cc                      suba.l     a4,a4
Awi_context_3:
[0005219e] 200c                      move.l     a4,d0
[000521a0] 671c                      beq.s      Awi_context_4
[000521a2] 222c 0008                 move.l     8(a4),d1
[000521a6] 6716                      beq.s      Awi_context_4
[000521a8] 226f 0002                 movea.l    2(a7),a1
[000521ac] 206f 0006                 movea.l    6(a7),a0
[000521b0] 2441                      movea.l    d1,a2
[000521b2] 7015                      moveq.l    #21,d0
[000521b4] 4e92                      jsr        (a2)
[000521b6] 4a40                      tst.w      d0
[000521b8] 6704                      beq.s      Awi_context_4
[000521ba] 7601                      moveq.l    #1,d3
[000521bc] 600e                      bra.s      Awi_context_1
Awi_context_4:
[000521be] 43d7                      lea.l      (a7),a1
[000521c0] 7028                      moveq.l    #40,d0
[000521c2] 204b                      movea.l    a3,a0
[000521c4] 246b 0004                 movea.l    4(a3),a2
[000521c8] 4e92                      jsr        (a2)
[000521ca] 3600                      move.w     d0,d3
Awi_context_1:
[000521cc] 3003                      move.w     d3,d0
[000521ce] 4fef 000a                 lea.l      10(a7),a7
[000521d2] 4cdf 1c78                 movem.l    (a7)+,d3-d6/a2-a4
[000521d6] 4e75                      rts

Awi_name:
[000521d8] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[000521dc] 2448                      movea.l    a0,a2
[000521de] 3800                      move.w     d0,d4
[000521e0] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000521e6] 4a40                      tst.w      d0
[000521e8] 6706                      beq.s      Awi_name_1
[000521ea] 6100 c27e                 bsr        Awi_ontop
[000521ee] 604a                      bra.s      Awi_name_2
Awi_name_1:
[000521f0] 4243                      clr.w      d3
[000521f2] 47f9 0010 6fea            lea.l      _ACSv_winds,a3
[000521f8] 6034                      bra.s      Awi_name_3
Awi_name_7:
[000521fa] 3003                      move.w     d3,d0
[000521fc] e548                      lsl.w      #2,d0
[000521fe] 2873 0000                 movea.l    0(a3,d0.w),a4
[00052202] 220c                      move.l     a4,d1
[00052204] 6726                      beq.s      Awi_name_4
[00052206] 4a44                      tst.w      d4
[00052208] 670e                      beq.s      Awi_name_5
[0005220a] 224a                      movea.l    a2,a1
[0005220c] 206c 004a                 movea.l    74(a4),a0
[00052210] 4eb9 0004 3856            jsr        Ast_cmp
[00052216] 600c                      bra.s      Awi_name_6
Awi_name_5:
[00052218] 224a                      movea.l    a2,a1
[0005221a] 206c 004a                 movea.l    74(a4),a0
[0005221e] 4eb9 0004 38ac            jsr        Ast_icmp
Awi_name_6:
[00052224] 4a40                      tst.w      d0
[00052226] 6604                      bne.s      Awi_name_4
[00052228] 204c                      movea.l    a4,a0
[0005222a] 600e                      bra.s      Awi_name_2
Awi_name_4:
[0005222c] 5243                      addq.w     #1,d3
Awi_name_3:
[0005222e] b67c 0100                 cmp.w      #$0100,d3
[00052232] 6dc6                      blt.s      Awi_name_7
[00052234] 2079 000d 3dc8            movea.l    Aroot_wi,a0
Awi_name_2:
[0005223a] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[0005223e] 4e75                      rts

_gs_cmp:
[00052240] 2251                      movea.l    (a1),a1
[00052242] 2050                      movea.l    (a0),a0
[00052244] 4eb9 0004 38ac            jsr        Ast_icmp
[0005224a] 4e75                      rts

_gs_search:
[0005224c] 2251                      movea.l    (a1),a1
[0005224e] 4eb9 0004 38ac            jsr        Ast_icmp
[00052254] 4e75                      rts

gs_str2key:
[00052256] 48e7 1f38                 movem.l    d3-d7/a2-a4,-(a7)
[0005225a] 4fef ffe4                 lea.l      -28(a7),a7
[0005225e] 4243                      clr.w      d3
[00052260] 43f9 000d 3d9a            lea.l      init,a1
[00052266] 45e9 01f0                 lea.l      496(a1),a2
[0005226a] 47ef 0018                 lea.l      24(a7),a3
[0005226e] 16da                      move.b     (a2)+,(a3)+
[00052270] 16da                      move.b     (a2)+,(a3)+
[00052272] 16da                      move.b     (a2)+,(a3)+
[00052274] 47ef 0006                 lea.l      6(a7),a3
[00052278] 45e9 01f3                 lea.l      499(a1),a2
[0005227c] 284b                      movea.l    a3,a4
[0005227e] 7011                      moveq.l    #17,d0
gs_str2key_1:
[00052280] 18da                      move.b     (a2)+,(a4)+
[00052282] 51c8 fffc                 dbf        d0,gs_str2key_1
[00052286] 45e9 0206                 lea.l      518(a1),a2
[0005228a] 49d7                      lea.l      (a7),a4
[0005228c] 18da                      move.b     (a2)+,(a4)+
[0005228e] 18da                      move.b     (a2)+,(a4)+
[00052290] 18da                      move.b     (a2)+,(a4)+
[00052292] 18da                      move.b     (a2)+,(a4)+
[00052294] 18da                      move.b     (a2)+,(a4)+
[00052296] 18da                      move.b     (a2)+,(a4)+
[00052298] 7803                      moveq.l    #3,d4
[0005229a] 2448                      movea.l    a0,a2
[0005229c] 4245                      clr.w      d5
[0005229e] 6068                      bra.s      gs_str2key_2
gs_str2key_8:
[000522a0] 4246                      clr.w      d6
[000522a2] 6054                      bra.s      gs_str2key_3
gs_str2key_6:
[000522a4] 3006                      move.w     d6,d0
[000522a6] d040                      add.w      d0,d0
[000522a8] d046                      add.w      d6,d0
[000522aa] d040                      add.w      d0,d0
[000522ac] 41f3 0000                 lea.l      0(a3,d0.w),a0
[000522b0] 4eb9 0007 69b0            jsr        strlen
[000522b6] 2e00                      move.l     d0,d7
[000522b8] 2007                      move.l     d7,d0
[000522ba] 3206                      move.w     d6,d1
[000522bc] d241                      add.w      d1,d1
[000522be] d246                      add.w      d6,d1
[000522c0] d241                      add.w      d1,d1
[000522c2] 43f3 1000                 lea.l      0(a3,d1.w),a1
[000522c6] 204a                      movea.l    a2,a0
[000522c8] 4eb9 0007 6caa            jsr        strnicmp
[000522ce] 4a40                      tst.w      d0
[000522d0] 6624                      bne.s      gs_str2key_4
[000522d2] 1032 7800                 move.b     0(a2,d7.l),d0
[000522d6] 4880                      ext.w      d0
[000522d8] 41ef 0018                 lea.l      24(a7),a0
[000522dc] 4eb9 0007 68ce            jsr        strchr
[000522e2] 2008                      move.l     a0,d0
[000522e4] 6710                      beq.s      gs_str2key_4
[000522e6] 3006                      move.w     d6,d0
[000522e8] d040                      add.w      d0,d0
[000522ea] 3637 0000                 move.w     0(a7,d0.w),d3
[000522ee] 7201                      moveq.l    #1,d1
[000522f0] d287                      add.l      d7,d1
[000522f2] d5c1                      adda.l     d1,a2
[000522f4] 6006                      bra.s      gs_str2key_5
gs_str2key_4:
[000522f6] 5246                      addq.w     #1,d6
gs_str2key_3:
[000522f8] b846                      cmp.w      d6,d4
[000522fa] 6ea8                      bgt.s      gs_str2key_6
gs_str2key_5:
[000522fc] b846                      cmp.w      d6,d4
[000522fe] 6e08                      bgt.s      gs_str2key_2
[00052300] 1012                      move.b     (a2),d0
[00052302] 4880                      ext.w      d0
[00052304] 8640                      or.w       d0,d3
[00052306] 7a01                      moveq.l    #1,d5
gs_str2key_2:
[00052308] 4a45                      tst.w      d5
[0005230a] 6604                      bne.s      gs_str2key_7
[0005230c] 1012                      move.b     (a2),d0
[0005230e] 6690                      bne.s      gs_str2key_8
gs_str2key_7:
[00052310] 3003                      move.w     d3,d0
[00052312] c07c 0f00                 and.w      #$0F00,d0
[00052316] 6704                      beq.s      gs_str2key_9
[00052318] 867c 8000                 or.w       #$8000,d3
gs_str2key_9:
[0005231c] 3003                      move.w     d3,d0
[0005231e] 4fef 001c                 lea.l      28(a7),a7
[00052322] 4cdf 1cf8                 movem.l    (a7)+,d3-d7/a2-a4
[00052326] 4e75                      rts

Awi_gemscript:
[00052328] 48e7 103e                 movem.l    d3/a2-a6,-(a7)
[0005232c] 2a48                      movea.l    a0,a5
[0005232e] 3600                      move.w     d0,d3
[00052330] 2649                      movea.l    a1,a3
[00052332] 246f 001c                 movea.l    28(a7),a2
[00052336] 357c 0001 0006            move.w     #$0001,6(a2)
[0005233c] 49f9 000d 3fa6            lea.l      _gs_commands,a4
[00052342] 302c 002a                 move.w     42(a4),d0
[00052346] 661a                      bne.s      Awi_gemscript_1
[00052348] 43fa fef6                 lea.l      _gs_cmp(pc),a1
[0005234c] 7208                      moveq.l    #8,d1
[0005234e] 302c 0028                 move.w     40(a4),d0
[00052352] 48c0                      ext.l      d0
[00052354] 204c                      movea.l    a4,a0
[00052356] 4eb9 0007 5314            jsr        qsort
[0005235c] 397c 0001 002a            move.w     #$0001,42(a4)
Awi_gemscript_1:
[00052362] 487a fee8                 pea.l      _gs_search(pc)
[00052366] 7208                      moveq.l    #8,d1
[00052368] 302c 0028                 move.w     40(a4),d0
[0005236c] 48c0                      ext.l      d0
[0005236e] 224c                      movea.l    a4,a1
[00052370] 2053                      movea.l    (a3),a0
[00052372] 4eb9 0007 5178            jsr        bsearch
[00052378] 584f                      addq.w     #4,a7
[0005237a] 2848                      movea.l    a0,a4
[0005237c] 200c                      move.l     a4,d0
[0005237e] 671e                      beq.s      Awi_gemscript_2
[00052380] 222c 0004                 move.l     4(a4),d1
[00052384] 6714                      beq.s      Awi_gemscript_3
[00052386] 2f0a                      move.l     a2,-(a7)
[00052388] 224b                      movea.l    a3,a1
[0005238a] 2c41                      movea.l    d1,a6
[0005238c] 204d                      movea.l    a5,a0
[0005238e] 3003                      move.w     d3,d0
[00052390] 4e96                      jsr        (a6)
[00052392] 584f                      addq.w     #4,a7
[00052394] 3540 0006                 move.w     d0,6(a2)
[00052398] 6004                      bra.s      Awi_gemscript_2
Awi_gemscript_3:
[0005239a] 426a 0006                 clr.w      6(a2)
Awi_gemscript_2:
[0005239e] 302a 0006                 move.w     6(a2),d0
[000523a2] 4cdf 7c08                 movem.l    (a7)+,d3/a2-a6
[000523a6] 4e75                      rts

gs_CheckCommand:
[000523a8] 2f0a                      move.l     a2,-(a7)
[000523aa] 2f0b                      move.l     a3,-(a7)
[000523ac] 2449                      movea.l    a1,a2
[000523ae] 266f 000c                 movea.l    12(a7),a3
[000523b2] b07c 0002                 cmp.w      #$0002,d0
[000523b6] 6c04                      bge.s      gs_CheckCommand_1
[000523b8] 7002                      moveq.l    #2,d0
[000523ba] 6056                      bra.s      gs_CheckCommand_2
gs_CheckCommand_1:
[000523bc] 487a fe8e                 pea.l      _gs_search(pc)
[000523c0] 7208                      moveq.l    #8,d1
[000523c2] 3039 000d 3fce            move.w     _gs_cmd_anzahl,d0
[000523c8] 48c0                      ext.l      d0
[000523ca] 43f9 000d 3fa6            lea.l      _gs_commands,a1
[000523d0] 206a 0004                 movea.l    4(a2),a0
[000523d4] 4eb9 0007 5178            jsr        bsearch
[000523da] 584f                      addq.w     #4,a7
[000523dc] 2448                      movea.l    a0,a2
[000523de] 2253                      movea.l    (a3),a1
[000523e0] 2051                      movea.l    (a1),a0
[000523e2] 4eb9 0004 371c            jsr        Ast_delete
[000523e8] 200a                      move.l     a2,d0
[000523ea] 6608                      bne.s      gs_CheckCommand_3
[000523ec] 41f9 000d 406e            lea.l      $000D406E,a0
[000523f2] 6006                      bra.s      gs_CheckCommand_4
gs_CheckCommand_3:
[000523f4] 41f9 000d 4070            lea.l      $000D4070,a0
gs_CheckCommand_4:
[000523fa] 4eb9 0004 36d6            jsr        Ast_create
[00052400] 2253                      movea.l    (a3),a1
[00052402] 2288                      move.l     a0,(a1)
[00052404] 377c 0001 0004            move.w     #$0001,4(a3)
[0005240a] 426b 0006                 clr.w      6(a3)
[0005240e] 302b 0006                 move.w     6(a3),d0
gs_CheckCommand_2:
[00052412] 265f                      movea.l    (a7)+,a3
[00052414] 245f                      movea.l    (a7)+,a2
[00052416] 4e75                      rts

gs_GetFront:
[00052418] 2f0a                      move.l     a2,-(a7)
[0005241a] 2f0b                      move.l     a3,-(a7)
[0005241c] 2648                      movea.l    a0,a3
[0005241e] 246f 000c                 movea.l    12(a7),a2
[00052422] 2252                      movea.l    (a2),a1
[00052424] 2051                      movea.l    (a1),a0
[00052426] 4eb9 0004 371c            jsr        Ast_delete
[0005242c] 206b 004a                 movea.l    74(a3),a0
[00052430] 4eb9 0004 36d6            jsr        Ast_create
[00052436] 2252                      movea.l    (a2),a1
[00052438] 2288                      move.l     a0,(a1)
[0005243a] 357c 0001 0004            move.w     #$0001,4(a2)
[00052440] 4240                      clr.w      d0
[00052442] 265f                      movea.l    (a7)+,a3
[00052444] 245f                      movea.l    (a7)+,a2
[00052446] 4e75                      rts

gs_ToFront:
[00052448] 2f0b                      move.l     a3,-(a7)
[0005244a] 266f 0008                 movea.l    8(a7),a3
[0005244e] 6100 cc7a                 bsr        Awi_show
[00052452] 2053                      movea.l    (a3),a0
[00052454] 2050                      movea.l    (a0),a0
[00052456] 4eb9 0004 371c            jsr        Ast_delete
[0005245c] 41f9 000d 4070            lea.l      $000D4070,a0
[00052462] 4eb9 0004 36d6            jsr        Ast_create
[00052468] 2253                      movea.l    (a3),a1
[0005246a] 2288                      move.l     a0,(a1)
[0005246c] 377c 0001 0004            move.w     #$0001,4(a3)
[00052472] 4240                      clr.w      d0
[00052474] 265f                      movea.l    (a7)+,a3
[00052476] 4e75                      rts

gs_KeyPress:
[00052478] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0005247c] 2a48                      movea.l    a0,a5
[0005247e] 3600                      move.w     d0,d3
[00052480] 2849                      movea.l    a1,a4
[00052482] 266f 001c                 movea.l    28(a7),a3
[00052486] 5540                      subq.w     #2,d0
[00052488] 6d4e                      blt.s      gs_KeyPress_1
[0005248a] 70ff                      moveq.l    #-1,d0
[0005248c] d043                      add.w      d3,d0
[0005248e] 48c0                      ext.l      d0
[00052490] e588                      lsl.l      #2,d0
[00052492] 4eb9 0004 7cc8            jsr        Ax_malloc
[00052498] 2448                      movea.l    a0,a2
[0005249a] 200a                      move.l     a2,d0
[0005249c] 673a                      beq.s      gs_KeyPress_1
[0005249e] 72ff                      moveq.l    #-1,d1
[000524a0] d243                      add.w      d3,d1
[000524a2] 48c1                      ext.l      d1
[000524a4] e589                      lsl.l      #2,d1
[000524a6] 4240                      clr.w      d0
[000524a8] 4eb9 0007 712e            jsr        memset
[000524ae] 4244                      clr.w      d4
[000524b0] 602c                      bra.s      gs_KeyPress_2
gs_KeyPress_5:
[000524b2] 41f9 000d 406e            lea.l      $000D406E,a0
[000524b8] 4eb9 0004 36d6            jsr        Ast_create
[000524be] 3004                      move.w     d4,d0
[000524c0] 48c0                      ext.l      d0
[000524c2] e588                      lsl.l      #2,d0
[000524c4] 2588 0800                 move.l     a0,0(a2,d0.l)
[000524c8] 2208                      move.l     a0,d1
[000524ca] 6610                      bne.s      gs_KeyPress_3
[000524cc] 70ff                      moveq.l    #-1,d0
[000524ce] d043                      add.w      d3,d0
[000524d0] 204a                      movea.l    a2,a0
[000524d2] 4eb9 0004 418a            jsr        Ast_deleteAry
gs_KeyPress_1:
[000524d8] 7002                      moveq.l    #2,d0
[000524da] 605c                      bra.s      gs_KeyPress_4
gs_KeyPress_3:
[000524dc] 5244                      addq.w     #1,d4
gs_KeyPress_2:
[000524de] 70ff                      moveq.l    #-1,d0
[000524e0] d043                      add.w      d3,d0
[000524e2] b840                      cmp.w      d0,d4
[000524e4] 6dcc                      blt.s      gs_KeyPress_5
[000524e6] 302b 0004                 move.w     4(a3),d0
[000524ea] 2053                      movea.l    (a3),a0
[000524ec] 4eb9 0004 418a            jsr        Ast_deleteAry
[000524f2] 70ff                      moveq.l    #-1,d0
[000524f4] d043                      add.w      d3,d0
[000524f6] 3740 0004                 move.w     d0,4(a3)
[000524fa] 268a                      move.l     a2,(a3)
[000524fc] 7801                      moveq.l    #1,d4
[000524fe] 6032                      bra.s      gs_KeyPress_6
gs_KeyPress_9:
[00052500] 3004                      move.w     d4,d0
[00052502] 48c0                      ext.l      d0
[00052504] e588                      lsl.l      #2,d0
[00052506] 2074 0800                 movea.l    0(a4,d0.l),a0
[0005250a] 6100 fd4a                 bsr        gs_str2key
[0005250e] 2079 0010 1f12            movea.l    ACSblk,a0
[00052514] 3140 02ce                 move.w     d0,718(a0)
[00052518] 204d                      movea.l    a5,a0
[0005251a] 4eb9 0004 6522            jsr        evkeybrd
[00052520] 5240                      addq.w     #1,d0
[00052522] 6604                      bne.s      gs_KeyPress_7
[00052524] 7030                      moveq.l    #48,d0
[00052526] 6002                      bra.s      gs_KeyPress_8
gs_KeyPress_7:
[00052528] 7031                      moveq.l    #49,d0
gs_KeyPress_8:
[0005252a] 2053                      movea.l    (a3),a0
[0005252c] 2250                      movea.l    (a0),a1
[0005252e] 1280                      move.b     d0,(a1)
[00052530] 5244                      addq.w     #1,d4
gs_KeyPress_6:
[00052532] b644                      cmp.w      d4,d3
[00052534] 6eca                      bgt.s      gs_KeyPress_9
[00052536] 4240                      clr.w      d0
gs_KeyPress_4:
[00052538] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0005253c] 4e75                      rts

gs_GetAllCommands:
[0005253e] 48e7 1f38                 movem.l    d3-d7/a2-a4,-(a7)
[00052542] 246f 0024                 movea.l    36(a7),a2
[00052546] 49f9 000d 3fce            lea.l      _gs_cmd_anzahl,a4
[0005254c] 0c6a 0001 0004            cmpi.w     #$0001,4(a2)
[00052552] 662e                      bne.s      gs_GetAllCommands_1
[00052554] 2052                      movea.l    (a2),a0
[00052556] 2050                      movea.l    (a0),a0
[00052558] 4eb9 0007 69b0            jsr        strlen
[0005255e] 7201                      moveq.l    #1,d1
[00052560] b280                      cmp.l      d0,d1
[00052562] 661e                      bne.s      gs_GetAllCommands_1
[00052564] 2052                      movea.l    (a2),a0
[00052566] 2250                      movea.l    (a0),a1
[00052568] 1011                      move.b     (a1),d0
[0005256a] 4880                      ext.w      d0
[0005256c] 41f9 000d 4072            lea.l      $000D4072,a0
[00052572] 4eb9 0007 68ce            jsr        strchr
[00052578] 2008                      move.l     a0,d0
[0005257a] 6706                      beq.s      gs_GetAllCommands_1
[0005257c] 3614                      move.w     (a4),d3
[0005257e] 7801                      moveq.l    #1,d4
[00052580] 6008                      bra.s      gs_GetAllCommands_2
gs_GetAllCommands_1:
[00052582] 3614                      move.w     (a4),d3
[00052584] d66a 0004                 add.w      4(a2),d3
[00052588] 4244                      clr.w      d4
gs_GetAllCommands_2:
[0005258a] 3003                      move.w     d3,d0
[0005258c] 48c0                      ext.l      d0
[0005258e] e588                      lsl.l      #2,d0
[00052590] 4eb9 0004 7cc8            jsr        Ax_malloc
[00052596] 2648                      movea.l    a0,a3
[00052598] 200b                      move.l     a3,d0
[0005259a] 672a                      beq.s      gs_GetAllCommands_3
[0005259c] 4245                      clr.w      d5
[0005259e] 602e                      bra.s      gs_GetAllCommands_4
gs_GetAllCommands_7:
[000525a0] 3005                      move.w     d5,d0
[000525a2] e748                      lsl.w      #3,d0
[000525a4] 2074 00d8                 movea.l    -40(a4,d0.w),a0
[000525a8] 4eb9 0004 36d6            jsr        Ast_create
[000525ae] 3005                      move.w     d5,d0
[000525b0] 48c0                      ext.l      d0
[000525b2] e588                      lsl.l      #2,d0
[000525b4] 2788 0800                 move.l     a0,0(a3,d0.l)
[000525b8] 2208                      move.l     a0,d1
[000525ba] 6610                      bne.s      gs_GetAllCommands_5
[000525bc] 204b                      movea.l    a3,a0
[000525be] 3014                      move.w     (a4),d0
[000525c0] 4eb9 0004 418a            jsr        Ast_deleteAry
gs_GetAllCommands_3:
[000525c6] 7002                      moveq.l    #2,d0
[000525c8] 6000 00f2                 bra        gs_GetAllCommands_6
gs_GetAllCommands_5:
[000525cc] 5245                      addq.w     #1,d5
gs_GetAllCommands_4:
[000525ce] ba54                      cmp.w      (a4),d5
[000525d0] 6dce                      blt.s      gs_GetAllCommands_7
[000525d2] 4a44                      tst.w      d4
[000525d4] 661a                      bne.s      gs_GetAllCommands_8
[000525d6] 302a 0004                 move.w     4(a2),d0
[000525da] 48c0                      ext.l      d0
[000525dc] e588                      lsl.l      #2,d0
[000525de] 2252                      movea.l    (a2),a1
[000525e0] 3214                      move.w     (a4),d1
[000525e2] 48c1                      ext.l      d1
[000525e4] e589                      lsl.l      #2,d1
[000525e6] 41f3 1800                 lea.l      0(a3,d1.l),a0
[000525ea] 4eb9 0007 6f44            jsr        memcpy
gs_GetAllCommands_8:
[000525f0] 43f9 0005 7782            lea.l      _gs_strcmp,a1
[000525f6] 7204                      moveq.l    #4,d1
[000525f8] 3003                      move.w     d3,d0
[000525fa] 48c0                      ext.l      d0
[000525fc] 204b                      movea.l    a3,a0
[000525fe] 4eb9 0007 5314            jsr        qsort
[00052604] 4246                      clr.w      d6
[00052606] 7a01                      moveq.l    #1,d5
[00052608] 601c                      bra.s      gs_GetAllCommands_9
gs_GetAllCommands_11:
[0005260a] 3005                      move.w     d5,d0
[0005260c] 48c0                      ext.l      d0
[0005260e] e588                      lsl.l      #2,d0
[00052610] 2273 0800                 movea.l    0(a3,d0.l),a1
[00052614] 2073 08fc                 movea.l    -4(a3,d0.l),a0
[00052618] 4eb9 0004 38ac            jsr        Ast_icmp
[0005261e] 4a40                      tst.w      d0
[00052620] 6602                      bne.s      gs_GetAllCommands_10
[00052622] 5246                      addq.w     #1,d6
gs_GetAllCommands_10:
[00052624] 5245                      addq.w     #1,d5
gs_GetAllCommands_9:
[00052626] b645                      cmp.w      d5,d3
[00052628] 6ee0                      bgt.s      gs_GetAllCommands_11
[0005262a] 3003                      move.w     d3,d0
[0005262c] 9046                      sub.w      d6,d0
[0005262e] 48c0                      ext.l      d0
[00052630] e588                      lsl.l      #2,d0
[00052632] 4eb9 0004 7cc8            jsr        Ax_malloc
[00052638] 2848                      movea.l    a0,a4
[0005263a] 200c                      move.l     a4,d0
[0005263c] 675a                      beq.s      gs_GetAllCommands_12
[0005263e] 2093                      move.l     (a3),(a0)
[00052640] 7a01                      moveq.l    #1,d5
[00052642] 3e05                      move.w     d5,d7
[00052644] 6038                      bra.s      gs_GetAllCommands_13
gs_GetAllCommands_16:
[00052646] 3007                      move.w     d7,d0
[00052648] 48c0                      ext.l      d0
[0005264a] e588                      lsl.l      #2,d0
[0005264c] 2274 08fc                 movea.l    -4(a4,d0.l),a1
[00052650] 3205                      move.w     d5,d1
[00052652] 48c1                      ext.l      d1
[00052654] e589                      lsl.l      #2,d1
[00052656] 2073 1800                 movea.l    0(a3,d1.l),a0
[0005265a] 4eb9 0004 38ac            jsr        Ast_icmp
[00052660] 4a40                      tst.w      d0
[00052662] 6718                      beq.s      gs_GetAllCommands_14
[00052664] 3005                      move.w     d5,d0
[00052666] 48c0                      ext.l      d0
[00052668] e588                      lsl.l      #2,d0
[0005266a] 3207                      move.w     d7,d1
[0005266c] 48c1                      ext.l      d1
[0005266e] e589                      lsl.l      #2,d1
[00052670] 29b3 0800 1800            move.l     0(a3,d0.l),0(a4,d1.l)
[00052676] 5247                      addq.w     #1,d7
[00052678] 42b3 0800                 clr.l      0(a3,d0.l)
gs_GetAllCommands_14:
[0005267c] 5245                      addq.w     #1,d5
gs_GetAllCommands_13:
[0005267e] b645                      cmp.w      d5,d3
[00052680] 6f08                      ble.s      gs_GetAllCommands_15
[00052682] 3003                      move.w     d3,d0
[00052684] 9046                      sub.w      d6,d0
[00052686] be40                      cmp.w      d0,d7
[00052688] 6dbc                      blt.s      gs_GetAllCommands_16
gs_GetAllCommands_15:
[0005268a] 3003                      move.w     d3,d0
[0005268c] 204b                      movea.l    a3,a0
[0005268e] 4eb9 0004 418a            jsr        Ast_deleteAry
[00052694] 9646                      sub.w      d6,d3
[00052696] 6002                      bra.s      gs_GetAllCommands_17
gs_GetAllCommands_12:
[00052698] 284b                      movea.l    a3,a4
gs_GetAllCommands_17:
[0005269a] 4a44                      tst.w      d4
[0005269c] 670e                      beq.s      gs_GetAllCommands_18
[0005269e] 302a 0004                 move.w     4(a2),d0
[000526a2] 2052                      movea.l    (a2),a0
[000526a4] 4eb9 0004 418a            jsr        Ast_deleteAry
[000526aa] 6008                      bra.s      gs_GetAllCommands_19
gs_GetAllCommands_18:
[000526ac] 2052                      movea.l    (a2),a0
[000526ae] 4eb9 0004 7e26            jsr        Ax_free
gs_GetAllCommands_19:
[000526b4] 248c                      move.l     a4,(a2)
[000526b6] 3543 0004                 move.w     d3,4(a2)
[000526ba] 4240                      clr.w      d0
gs_GetAllCommands_6:
[000526bc] 4cdf 1cf8                 movem.l    (a7)+,d3-d7/a2-a4
[000526c0] 4e75                      rts

		.data

init:
[000d3d9a]                           dc.b $00
[000d3d9b]                           dc.b $00
cycle:
[000d3d9c]                           dc.b $00
[000d3d9d]                           dc.b $00
menu_width:
[000d3d9e]                           dc.w $ffff
winupd:
[000d3da0]                           dc.b $00
[000d3da1]                           dc.b $00
winoldupd:
[000d3da2]                           dc.b $00
[000d3da3]                           dc.b $00
msupd:
[000d3da4]                           dc.b $00
[000d3da5]                           dc.b $00
msoldupd:
[000d3da6]                           dc.b $00
[000d3da7]                           dc.b $00
exec_path:
[000d3da8]                           dc.b $00
[000d3da9]                           dc.b $00
[000d3daa]                           dc.b $00
[000d3dab]                           dc.b $00
exec_com:
[000d3dac]                           dc.b $00
[000d3dad]                           dc.b $00
[000d3dae]                           dc.b $00
[000d3daf]                           dc.b $00
empty:
[000d3db0]                           dc.w $ffff
[000d3db2]                           dc.w $ffff
[000d3db4]                           dc.w $ffff
[000d3db6]                           dc.b $00
[000d3db7]                           dc.b $14
[000d3db8]                           dc.b $00
[000d3db9]                           dc.b $20
[000d3dba]                           dc.b $00
[000d3dbb]                           dc.b $00
[000d3dbc]                           dc.b $00
[000d3dbd]                           dc.b $00
[000d3dbe]                           dc.b $00
[000d3dbf]                           dc.b $00
[000d3dc0]                           dc.b $00
[000d3dc1]                           dc.b $00
[000d3dc2]                           dc.b $00
[000d3dc3]                           dc.b $00
[000d3dc4]                           dc.b $00
[000d3dc5]                           dc.b $f0
[000d3dc6]                           dc.b $00
[000d3dc7]                           dc.b $f0
Aroot_wi:
[000d3dc8]                           dc.b $00
[000d3dc9]                           dc.b $00
[000d3dca]                           dc.b $00
[000d3dcb]                           dc.b $00
top_window:
[000d3dcc]                           dc.b $00
[000d3dcd]                           dc.b $00
[000d3dce]                           dc.b $00
[000d3dcf]                           dc.b $00
topline:
[000d3dd0]                           dc.w $ffff
[000d3dd2]                           dc.w $ffff
[000d3dd4]                           dc.w $ffff
[000d3dd6]                           dc.b $00
[000d3dd7]                           dc.b $1a
[000d3dd8]                           dc.b $00
[000d3dd9]                           dc.b $20
[000d3dda]                           dc.b $00
[000d3ddb]                           dc.b $00
[000d3ddc]                           dc.b $00
[000d3ddd]                           dc.b $00
[000d3dde]                           dc.b $00
[000d3ddf]                           dc.b $00
[000d3de0]                           dc.b $00
[000d3de1]                           dc.b $00
[000d3de2]                           dc.b $00
[000d3de3]                           dc.b $00
[000d3de4]                           dc.b $00
[000d3de5]                           dc.b $00
[000d3de6]                           dc.b $00
[000d3de7]                           dc.b $00
[000d3de8]                           dc.b $00
[000d3de9]                           dc.b $00
[000d3dea]                           dc.b $00
[000d3deb]                           dc.b $00
[000d3dec]                           dc.b $00
[000d3ded]                           dc.b $00
[000d3dee]                           dc.b $00
[000d3def]                           dc.b $00
[000d3df0]                           dc.b $00
[000d3df1]                           dc.b $00
[000d3df2]                           dc.b $00
[000d3df3]                           dc.b $00
[000d3df4]                           dc.b $00
[000d3df5]                           dc.b $00
[000d3df6]                           dc.b $00
[000d3df7]                           dc.b $00
[000d3df8]                           dc.b $00
[000d3df9]                           dc.b $00
[000d3dfa]                           dc.b $00
[000d3dfb]                           dc.b $00
[000d3dfc]                           dc.b $00
[000d3dfd]                           dc.b $00
[000d3dfe]                           dc.b $00
[000d3dff]                           dc.b $00
[000d3e00]                           dc.b $00
[000d3e01]                           dc.b $00
[000d3e02]                           dc.b $00
[000d3e03]                           dc.b $00
[000d3e04]                           dc.b $00
[000d3e05]                           dc.b $00
[000d3e06]                           dc.b $00
[000d3e07]                           dc.b $00
[000d3e08]                           dc.b $00
[000d3e09]                           dc.b $00
[000d3e0a]                           dc.b $00
[000d3e0b]                           dc.b $00
[000d3e0c]                           dc.b $00
[000d3e0d]                           dc.b $00
[000d3e0e]                           dc.b $00
[000d3e0f]                           dc.b $00
[000d3e10]                           dc.b $00
[000d3e11]                           dc.b $00
[000d3e12]                           dc.b $00
[000d3e13]                           dc.b $00
[000d3e14]                           dc.b $00
[000d3e15]                           dc.b $00
[000d3e16]                           dc.b $00
[000d3e17]                           dc.b $00
[000d3e18]                           dc.b $00
[000d3e19]                           dc.b $00
[000d3e1a]                           dc.b $00
[000d3e1b]                           dc.b $00
[000d3e1c]                           dc.b $00
[000d3e1d]                           dc.b $00
[000d3e1e]                           dc.b $00
[000d3e1f]                           dc.b $00
[000d3e20]                           dc.b $00
[000d3e21]                           dc.b $00
[000d3e22]                           dc.b $00
[000d3e23]                           dc.b $00
[000d3e24]                           dc.b $00
[000d3e25]                           dc.b $00
[000d3e26]                           dc.b $00
[000d3e27]                           dc.b $00
[000d3e28]                           dc.b $00
[000d3e29]                           dc.b $00
[000d3e2a]                           dc.b $00
[000d3e2b]                           dc.b $00
[000d3e2c]                           dc.b $00
[000d3e2d]                           dc.b $00
[000d3e2e]                           dc.b $00
[000d3e2f]                           dc.b $00
[000d3e30]                           dc.b $00
[000d3e31]                           dc.b $00
[000d3e32]                           dc.b $00
[000d3e33]                           dc.b $00
[000d3e34]                           dc.b $00
[000d3e35]                           dc.b $00
[000d3e36]                           dc.b $00
[000d3e37]                           dc.b $00
[000d3e38]                           dc.b $00
[000d3e39]                           dc.b $00
[000d3e3a]                           dc.b $00
[000d3e3b]                           dc.b $00
[000d3e3c]                           dc.b $00
[000d3e3d]                           dc.b $00
[000d3e3e]                           dc.b $00
[000d3e3f]                           dc.b $00
[000d3e40]                           dc.b $00
[000d3e41]                           dc.b $00
[000d3e42]                           dc.b $00
[000d3e43]                           dc.b $00
[000d3e44]                           dc.b $00
[000d3e45]                           dc.b $00
[000d3e46]                           dc.b $00
[000d3e47]                           dc.b $00
[000d3e48]                           dc.b $00
[000d3e49]                           dc.b $00
[000d3e4a]                           dc.b $00
[000d3e4b]                           dc.b $00
[000d3e4c]                           dc.b $00
[000d3e4d]                           dc.b $00
[000d3e4e]                           dc.b $00
[000d3e4f]                           dc.b $00
[000d3e50]                           dc.b $00
[000d3e51]                           dc.b $00
[000d3e52]                           dc.b $00
[000d3e53]                           dc.b $00
[000d3e54]                           dc.b $00
[000d3e55]                           dc.b $00
[000d3e56]                           dc.b $00
[000d3e57]                           dc.b $00
[000d3e58]                           dc.b $00
[000d3e59]                           dc.b $00
[000d3e5a]                           dc.b $00
[000d3e5b]                           dc.b $00
[000d3e5c]                           dc.b $00
[000d3e5d]                           dc.b $00
[000d3e5e]                           dc.b $00
[000d3e5f]                           dc.b $00
[000d3e60]                           dc.b $00
[000d3e61]                           dc.b $00
[000d3e62]                           dc.b $00
[000d3e63]                           dc.b $00
[000d3e64]                           dc.b $00
[000d3e65]                           dc.b $00
[000d3e66]                           dc.b $00
[000d3e67]                           dc.b $00
[000d3e68]                           dc.b $00
[000d3e69]                           dc.b $00
[000d3e6a]                           dc.b $00
[000d3e6b]                           dc.b $00
[000d3e6c]                           dc.b $00
[000d3e6d]                           dc.b $00
[000d3e6e]                           dc.b $00
[000d3e6f]                           dc.b $00
[000d3e70]                           dc.b $00
[000d3e71]                           dc.b $00
[000d3e72]                           dc.b $00
[000d3e73]                           dc.b $00
[000d3e74]                           dc.b $00
[000d3e75]                           dc.b $00
[000d3e76]                           dc.b $00
[000d3e77]                           dc.b $00
[000d3e78]                           dc.b $00
[000d3e79]                           dc.b $00
[000d3e7a]                           dc.b $00
[000d3e7b]                           dc.b $00
[000d3e7c]                           dc.b $00
[000d3e7d]                           dc.b $00
[000d3e7e]                           dc.b $00
[000d3e7f]                           dc.b $00
[000d3e80]                           dc.b $00
[000d3e81]                           dc.b $00
[000d3e82]                           dc.b $00
[000d3e83]                           dc.b $00
[000d3e84]                           dc.b $00
[000d3e85]                           dc.b $00
[000d3e86]                           dc.b $00
[000d3e87]                           dc.b $00
[000d3e88]                           dc.b $00
[000d3e89]                           dc.b $00
[000d3e8a]                           dc.b $00
[000d3e8b]                           dc.b $00
[000d3e8c]                           dc.b $00
[000d3e8d]                           dc.b $00
[000d3e8e]                           dc.b $00
[000d3e8f]                           dc.b $00
[000d3e90]                           dc.b $00
[000d3e91]                           dc.b $00
[000d3e92]                           dc.b $00
[000d3e93]                           dc.b $00
[000d3e94]                           dc.b $00
[000d3e95]                           dc.b $00
[000d3e96]                           dc.b $00
[000d3e97]                           dc.b $00
[000d3e98]                           dc.b $00
[000d3e99]                           dc.b $00
[000d3e9a]                           dc.b $00
[000d3e9b]                           dc.b $00
[000d3e9c]                           dc.b $00
[000d3e9d]                           dc.b $00
[000d3e9e]                           dc.b $00
[000d3e9f]                           dc.b $00
[000d3ea0]                           dc.b $00
[000d3ea1]                           dc.b $00
[000d3ea2]                           dc.b $00
[000d3ea3]                           dc.b $00
[000d3ea4]                           dc.b $00
[000d3ea5]                           dc.b $00
[000d3ea6]                           dc.b $00
[000d3ea7]                           dc.b $00
[000d3ea8]                           dc.b $00
[000d3ea9]                           dc.b $00
[000d3eaa]                           dc.b $00
[000d3eab]                           dc.b $00
[000d3eac]                           dc.b $00
[000d3ead]                           dc.b $00
[000d3eae]                           dc.b $00
[000d3eaf]                           dc.b $00
[000d3eb0]                           dc.b $00
[000d3eb1]                           dc.b $00
[000d3eb2]                           dc.b $00
[000d3eb3]                           dc.b $00
[000d3eb4]                           dc.b $00
[000d3eb5]                           dc.b $00
[000d3eb6]                           dc.b $00
[000d3eb7]                           dc.b $00
[000d3eb8]                           dc.b $00
[000d3eb9]                           dc.b $00
[000d3eba]                           dc.b $00
[000d3ebb]                           dc.b $00
[000d3ebc]                           dc.b $00
[000d3ebd]                           dc.b $00
[000d3ebe]                           dc.b $00
[000d3ebf]                           dc.b $00
[000d3ec0]                           dc.b $00
[000d3ec1]                           dc.b $00
[000d3ec2]                           dc.b $00
[000d3ec3]                           dc.b $00
[000d3ec4]                           dc.b $00
[000d3ec5]                           dc.b $00
[000d3ec6]                           dc.b $00
[000d3ec7]                           dc.b $00
[000d3ec8]                           dc.b $00
[000d3ec9]                           dc.b $00
[000d3eca]                           dc.b $00
[000d3ecb]                           dc.b $00
[000d3ecc]                           dc.b $00
[000d3ecd]                           dc.b $00
[000d3ece]                           dc.b $00
[000d3ecf]                           dc.b $00
[000d3ed0]                           dc.b $00
[000d3ed1]                           dc.b $00
[000d3ed2]                           dc.b $00
[000d3ed3]                           dc.b $00
[000d3ed4]                           dc.b $00
[000d3ed5]                           dc.b $00
[000d3ed6]                           dc.b $00
[000d3ed7]                           dc.b $00
[000d3ed8]                           dc.b $00
[000d3ed9]                           dc.b $00
[000d3eda]                           dc.b $00
[000d3edb]                           dc.b $00
[000d3edc]                           dc.b $00
[000d3edd]                           dc.b $00
[000d3ede]                           dc.b $00
[000d3edf]                           dc.b $00
[000d3ee0]                           dc.b $00
[000d3ee1]                           dc.b $00
[000d3ee2]                           dc.b $00
[000d3ee3]                           dc.b $00
[000d3ee4]                           dc.b $00
[000d3ee5]                           dc.b $00
[000d3ee6]                           dc.b $00
[000d3ee7]                           dc.b $00
[000d3ee8]                           dc.b $00
[000d3ee9]                           dc.b $00
[000d3eea]                           dc.b $00
[000d3eeb]                           dc.b $00
[000d3eec]                           dc.b $00
[000d3eed]                           dc.b $00
[000d3eee]                           dc.b $00
[000d3eef]                           dc.b $00
[000d3ef0]                           dc.b $00
[000d3ef1]                           dc.b $00
[000d3ef2]                           dc.b $00
[000d3ef3]                           dc.b $00
[000d3ef4]                           dc.b $00
[000d3ef5]                           dc.b $00
[000d3ef6]                           dc.b $00
[000d3ef7]                           dc.b $00
[000d3ef8]                           dc.b $00
[000d3ef9]                           dc.b $00
[000d3efa]                           dc.b $00
[000d3efb]                           dc.b $00
[000d3efc]                           dc.b $00
[000d3efd]                           dc.b $00
[000d3efe]                           dc.b $00
[000d3eff]                           dc.b $00
next:
[000d3f00]                           dc.b $00
[000d3f01]                           dc.b $00
dis_arrow_mon:
[000d3f02] 0005b212                  dc.l A_arrows
[000d3f06]                           dc.w $2209
[000d3f08]                           dc.b $00
[000d3f09]                           dc.b $01
[000d3f0a]                           dc.b $00
[000d3f0b]                           dc.b $00
[000d3f0c]                           dc.b $00
[000d3f0d]                           dc.b $00
[000d3f0e]                           dc.b $00
[000d3f0f]                           dc.b $00
[000d3f10]                           dc.b $00
[000d3f11]                           dc.b $00
[000d3f12]                           dc.b $00
[000d3f13]                           dc.b $00
[000d3f14]                           dc.b $00
[000d3f15]                           dc.b $00
[000d3f16]                           dc.b $00
[000d3f17]                           dc.b $00
[000d3f18]                           dc.b $00
[000d3f19]                           dc.b $00
[000d3f1a]                           dc.b $00
[000d3f1b]                           dc.b $00
[000d3f1c]                           dc.b $00
[000d3f1d]                           dc.b $00
[000d3f1e]                           dc.b $00
[000d3f1f]                           dc.b $00
[000d3f20]                           dc.b $00
[000d3f21]                           dc.b $00
dis_arrow_col:
[000d3f22] 0005b212                  dc.l A_arrows
[000d3f26]                           dc.w $2201
[000d3f28]                           dc.b $00
[000d3f29]                           dc.b $09
[000d3f2a]                           dc.b $00
[000d3f2b]                           dc.b $00
[000d3f2c]                           dc.b $00
[000d3f2d]                           dc.b $00
[000d3f2e]                           dc.b $00
[000d3f2f]                           dc.b $00
[000d3f30]                           dc.b $00
[000d3f31]                           dc.b $00
[000d3f32]                           dc.b $00
[000d3f33]                           dc.b $00
[000d3f34]                           dc.b $00
[000d3f35]                           dc.b $00
[000d3f36]                           dc.b $00
[000d3f37]                           dc.b $00
[000d3f38]                           dc.b $00
[000d3f39]                           dc.b $00
[000d3f3a]                           dc.b $00
[000d3f3b]                           dc.b $00
[000d3f3c]                           dc.b $00
[000d3f3d]                           dc.b $00
[000d3f3e]                           dc.b $00
[000d3f3f]                           dc.b $00
[000d3f40]                           dc.b $00
[000d3f41]                           dc.b $00
box_trans:
[000d3f42]                           dc.w $ffff
[000d3f44]                           dc.w $ffff
[000d3f46]                           dc.b $00
[000d3f47]                           dc.b $00
[000d3f48]                           dc.b $00
[000d3f49]                           dc.b $00
[000d3f4a]                           dc.b $00
[000d3f4b]                           dc.b $00
[000d3f4c]                           dc.b $00
[000d3f4d]                           dc.b $00
[000d3f4e]                           dc.b $00
[000d3f4f]                           dc.b $00
[000d3f50]                           dc.b $00
[000d3f51]                           dc.b $00
[000d3f52]                           dc.b $00
[000d3f53]                           dc.b $00
[000d3f54]                           dc.b $00
[000d3f55]                           dc.b $00
[000d3f56]                           dc.b $00
[000d3f57]                           dc.b $00
[000d3f58]                           dc.b $00
[000d3f59]                           dc.b $00
[000d3f5a]                           dc.b $00
[000d3f5b]                           dc.b $00
[000d3f5c]                           dc.w $ffff
[000d3f5e]                           dc.b $00
[000d3f5f]                           dc.b $00
[000d3f60]                           dc.b $00
[000d3f61]                           dc.b $00
[000d3f62]                           dc.b $00
[000d3f63]                           dc.b $00
[000d3f64]                           dc.b $00
[000d3f65]                           dc.b $00
[000d3f66]                           dc.b $00
[000d3f67]                           dc.b $00
[000d3f68]                           dc.b $00
[000d3f69]                           dc.b $00
[000d3f6a]                           dc.b $00
[000d3f6b]                           dc.b $00
[000d3f6c]                           dc.b $00
[000d3f6d]                           dc.b $00
[000d3f6e]                           dc.b $00
[000d3f6f]                           dc.b $00
[000d3f70]                           dc.b $00
[000d3f71]                           dc.b $00
[000d3f72]                           dc.b $00
[000d3f73]                           dc.b $00
[000d3f74]                           dc.b $00
[000d3f75]                           dc.b $00
[000d3f76]                           dc.b $00
[000d3f77]                           dc.b $00
[000d3f78]                           dc.b $00
[000d3f79]                           dc.b $00
[000d3f7a]                           dc.b $00
[000d3f7b]                           dc.b $00
[000d3f7c]                           dc.b $00
[000d3f7d]                           dc.b $00
[000d3f7e]                           dc.b $00
[000d3f7f]                           dc.b $00
[000d3f80]                           dc.b $00
[000d3f81]                           dc.b $00
[000d3f82]                           dc.b $00
[000d3f83]                           dc.b $00
[000d3f84]                           dc.w $ffff
[000d3f86]                           dc.b $00
[000d3f87]                           dc.b $00
[000d3f88]                           dc.b $00
[000d3f89]                           dc.b $00
[000d3f8a]                           dc.w $2b2d
[000d3f8c]                           dc.b $00
[000d3f8d]                           dc.b 'SHIFT',0
[000d3f93]                           dc.b 'CTRL',0
[000d3f98]                           dc.b $00
[000d3f99]                           dc.b 'ALT',0
[000d3f9d]                           dc.b $00
[000d3f9e]                           dc.b $00
[000d3f9f]                           dc.b $00
[000d3fa0]                           dc.w $0200
[000d3fa2]                           dc.w $0400
[000d3fa4]                           dc.w $0800
_gs_commands:
[000d3fa6] 000d4038                  dc.l $000d4038 ; no symbol found
[000d3faa] 00052418                  dc.l gs_GetFront
[000d3fae] 000d4041                  dc.l $000d4041 ; no symbol found
[000d3fb2] 00052448                  dc.l gs_ToFront
[000d3fb6] 000d4049                  dc.l $000d4049 ; no symbol found
[000d3fba] 000523a8                  dc.l gs_CheckCommand
[000d3fbe] 000d4056                  dc.l $000d4056 ; no symbol found
[000d3fc2] 00052478                  dc.l gs_KeyPress
[000d3fc6] 000d405f                  dc.l $000d405f ; no symbol found
[000d3fca] 0005253e                  dc.l gs_GetAllCommands
_gs_cmd_anzahl:
[000d3fce]                           dc.b $00
[000d3fcf]                           dc.b $05
_gs_sorted:
[000d3fd0]                           dc.b $00
[000d3fd1]                           dc.b $00
[000d3fd2]                           dc.b 'GEMSUFFIX',0
[000d3fdc]                           dc.w $2c00
[000d3fde]                           dc.b 'PRG',0
[000d3fe2]                           dc.b 'APP',0
[000d3fe6]                           dc.b 'GTP',0
[000d3fea]                           dc.w $1b48
[000d3fec]                           dc.w $1b65
[000d3fee]                           dc.b $00
[000d3fef]                           dc.b $1b
[000d3ff0]                           dc.w $6600
[000d3ff2]                           dc.b '[end]',0
[000d3ff8]                           dc.b '[4][Das Erzeugen eines|Dialoges ist fehlgeschlagen!][Abbrechen]',0
[000d4038]                           dc.b 'GetFront',0
[000d4041]                           dc.b 'ToFront',0
[000d4049]                           dc.b 'CheckCommand',0
[000d4056]                           dc.b 'KeyPress',0
[000d405f]                           dc.b 'GetAllCommands',0
[000d406e]                           dc.w $3000
[000d4070]                           dc.w $3100
[000d4072]                           dc.w $3031
[000d4074]                           dc.b $00
		.even

	.bss

wi_minw: ds.w 1
wi_minh: ds.w 1
timer1: ds.l 1
timer2: ds.l 1
gemmap: ds.b 512
modwins: ds.w 16
icnmap: ds.w 256
_WIconText: ds.l 1
_WWorkIcon: ds.l 1
_WIcon: ds.l 1
virt_desk: ds.w 4

	.globl _ACSv_winds
_ACSv_winds: ds.b 1024
	.globl _ACSv_wiicons
_ACSv_wiicons: ds.w 256

_ACSv_wwork: ds.w 1

	.globl _ACSv_wmenu
_ACSv_wmenu: ds.w 1

	.globl _Wmax_wi
_Wmax_wi: ds.w 1
